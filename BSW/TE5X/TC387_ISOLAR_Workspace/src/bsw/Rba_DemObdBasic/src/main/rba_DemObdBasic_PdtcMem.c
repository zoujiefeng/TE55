

#include "rba_DemObdBasic_Prv.h"

#include "Dem_EventStatus.h"
#include "Dem_NvmCallbacks.h"
#include "Dem_Mapping.h"

#if(DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEMORY == DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEM_ON)
#include "rba_DemObdBasic_ProjectExtension.h"
#endif

#define DEM_START_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"

DEM_ARRAY_DEFINE(rba_DemObdBasic_PdtcMemType, rba_DemObdBasic_PdtcMem, DEM_CFG_PERMANENT_MEMORY_SIZE);

#define DEM_STOP_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

static boolean rba_DemObdBasic_GlobalIgnitionCycleTrigger = FALSE;

void Dem_SignalEndOfOBDIgnitionCycle(void)
{
#ifndef DEM_OPCYC_OBD_IgnitionCycle
    rba_DemObdBasic_GlobalIgnitionCycleTrigger = TRUE;
#endif
}

static Dem_EventIdType rba_DemObdBasic_PdtcMem_GetEventId (uint16_least LocId)
{
    return (rba_DemObdBasic_PdtcMem[LocId].EventId);
}

static void rba_DemObdBasic_PdtcMem_SetEventId(uint16_least LocId, Dem_EventIdType EventId)
{
    rba_DemObdBasic_PdtcMem[LocId].EventId = EventId;
}

static uint8 rba_DemObdBasic_PdtcMem_GetState (uint16_least LocId)
{
    return (rba_DemObdBasic_PdtcMem[LocId].state & OBD_PDTC_LOCID_STATE_MASK);
}

static void rba_DemObdBasic_PdtcMem_SetState (uint16_least LocId, uint8 state)
{
    /* automatically delete the PFC and OK cycle flags at state change */
    rba_DemObdBasic_PdtcMem[LocId].state = state;
}

static boolean rba_DemObdBasic_PdtcMem_IsPfcCycleSet (uint16_least LocId)
{
    return (    (rba_DemObdBasic_PdtcMem_GetState(LocId) == OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A)
            && ((rba_DemObdBasic_PdtcMem[LocId].state & OBD_PDTC_LOCID_PFC_CYCLE_BITMASK) == OBD_PDTC_LOCID_PFC_CYCLE_BITMASK)
    );
}

static void rba_DemObdBasic_PdtcMem_SetPfcCycle (uint16_least LocId)
{
    rba_DemObdBasic_PdtcMem[LocId].state |= (uint8)OBD_PDTC_LOCID_PFC_CYCLE_BITMASK;
}

static boolean rba_DemObdBasic_PdtcMem_IsOkCycleSet (uint16_least LocId)
{
    return
            (  (rba_DemObdBasic_PdtcMem_GetState(LocId) == OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A)
                    && ((rba_DemObdBasic_PdtcMem[LocId].state & OBD_PDTC_LOCID_OK_CYCLE_BITMASK) == OBD_PDTC_LOCID_OK_CYCLE_BITMASK)
            );
}

static void rba_DemObdBasic_PdtcMem_SetOkCycle (uint16_least LocId)
{
    rba_DemObdBasic_PdtcMem[LocId].state |= (uint8)OBD_PDTC_LOCID_OK_CYCLE_BITMASK;
}

static boolean rba_DemObdBasic_PdtcMem_IsTestFailedThisDCY (uint16_least LocId)
{
    return ((rba_DemObdBasic_PdtcMem[LocId].state & OBD_PDTC_LOCID_TESTFAILED_BITMASK) == OBD_PDTC_LOCID_TESTFAILED_BITMASK);
}

static void rba_DemObdBasic_PdtcMem_SetTestFailedThisDCY (uint16_least LocId, boolean setOrReset)
{
    if (setOrReset)
    {
        rba_DemObdBasic_PdtcMem[LocId].state |= OBD_PDTC_LOCID_TESTFAILED_BITMASK;
    }
    else
    {
        rba_DemObdBasic_PdtcMem[LocId].state &= (~OBD_PDTC_LOCID_TESTFAILED_BITMASK);
    }
}

static boolean rba_DemObdBasic_PdtcMem_IsTestCompleteThisDCY (uint16_least LocId)
{
    return ((rba_DemObdBasic_PdtcMem[LocId].state & OBD_PDTC_LOCID_TESTCOMPLETE_BITMASK) == OBD_PDTC_LOCID_TESTCOMPLETE_BITMASK);
}


static void rba_DemObdBasic_PdtcMem_SetTestCompleteThisDCY (uint16_least LocId, boolean setOrReset)
{
    if (setOrReset)
    {
        rba_DemObdBasic_PdtcMem[LocId].state |= OBD_PDTC_LOCID_TESTCOMPLETE_BITMASK;
    }
    else
    {
        rba_DemObdBasic_PdtcMem[LocId].state &= (~OBD_PDTC_LOCID_TESTCOMPLETE_BITMASK);
    }
}

static void rba_DemObdBasic_PdtcMem_ResetHealingConditions (uint16_least LocId)
{
    rba_DemObdBasic_PdtcMem[LocId].state &= (uint8)(~OBD_PDTC_LOCID_HEALING_MASK);
}


static boolean rba_DemObdBasic_PdtcMem_IsEventIdStored (uint16_least LocId, Dem_EventIdType EventId)
{
#if (DEM_CFG_EVCOMB == DEM_CFG_EVCOMB_ONSTORAGE)
    return (Dem_DtcIdFromEventId(rba_DemObdBasic_PdtcMem_GetEventId(LocId)) == Dem_DtcIdFromEventId(EventId));
#else
    return (rba_DemObdBasic_PdtcMem_GetEventId(LocId) == EventId);
#endif
}

static boolean rba_DemObdBasic_PdtcMem_LocIsEmpty(uint16_least LocId)
{
    return (rba_DemObdBasic_PdtcMem_GetState(LocId) == OBD_PDTC_LOCID_STATE_EMPTY);
}

static boolean rba_DemObdBasic_PdtcMem_LocIsVisibleServ0A(uint16_least LocId)
{
    return ((rba_DemObdBasic_PdtcMem_GetState(LocId) == OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A)
            ||  (rba_DemObdBasic_PdtcMem_GetState(LocId) == OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A));
}

static void rba_DemObdBasic_PdtcMem_ClearLocation (uint16_least LocId)
{
    DEM_MEMSET(&rba_DemObdBasic_PdtcMem[LocId], 0, DEM_SIZEOF_TYPE(rba_DemObdBasic_PdtcMemType));
    Dem_NvMClearBlockByWrite(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
}

void rba_DemObdBasic_PdtcMem_ClearAllPDTC(void)
{
   uint8 LocId = 0;
   for(LocId = 0; LocId < 6; LocId++)
   {
      DEM_MEMSET(&rba_DemObdBasic_PdtcMem[LocId], 0, DEM_SIZEOF_TYPE(rba_DemObdBasic_PdtcMemType));
   }
   Dem_NvMClearBlockByWrite(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
}

void rba_DemObdBasic_PdtcMem_InitCheckNvM(void)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;
    Dem_NvmResultType NvmResult;

    if(Dem_NvMIsInvalidateAllNVMBlocksRequested())
    {
        /* Zero the RAM content of this particular OBD location */
        DEM_MEMSET( &rba_DemObdBasic_PdtcMem[0], 0x00, (DEM_SIZEOF_TYPE(rba_DemObdBasic_PdtcMemType) * DEM_CFG_PERMANENT_MEMORY_SIZE));
        Dem_NvMClearBlockByInvalidate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
    }
    else
    {
        /* get the Result of the NvM-Read (NvM_ReadAll) */
        NvmResult = Dem_NvmGetStatus (DEM_NVM_ID_OBD_PERMANENT_MEMORY);

        /* Data read successfully */
        if (NvmResult == DEM_NVM_SUCCESS)
        {

            for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
                    rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
                    rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
            )
            {
                PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);
                /* Check if eventid stored in the location is valid */
                if((!Dem_isEventIdValid(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt))) &&
                        (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_EMPTY))
                {
                    NvmResult = DEM_NVM_FAILED;
                }
            }
        }

        if(NvmResult != DEM_NVM_SUCCESS)
        {
            /* Zero the RAM content of this particular OBD location */
            DEM_MEMSET( &rba_DemObdBasic_PdtcMem[0], 0x00, (DEM_SIZEOF_TYPE(rba_DemObdBasic_PdtcMemType) * DEM_CFG_PERMANENT_MEMORY_SIZE));
            Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
        }
    }
}

void rba_DemObdBasic_PdtcMem_StoreNewEventId (Dem_EventIdType EventId)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;
    uint16_least PdtcLocItPrio = OBD_PDTC_STORAGE_PRIO_UNDEF;
    uint16_least PdtcLocFound = OBD_PDTC_LOC_INVALID;

#if(DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEMORY == DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEM_ON)
    if(rba_DemObdBasic_IsPermanentDTCStorageDisabled())
    {
        return;
    }
#endif

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_EMPTY)
        {
            if (PdtcLocItPrio < OBD_PDTC_STORAGE_PRIO_EMPTY)
            {
                PdtcLocFound = PdtcLocIt;
                PdtcLocItPrio = OBD_PDTC_STORAGE_PRIO_EMPTY;
            }
        }
        else
        {
            if (rba_DemObdBasic_PdtcMem_IsEventIdStored(PdtcLocIt, EventId))
            {
                if (     (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON)
                        || (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A)
                )
                {
                    /* do not store PDTC again */
                    PdtcLocFound = OBD_PDTC_LOC_INVALID;
                    break;
                }
                else
                {
                    if (PdtcLocItPrio < OBD_PDTC_STORAGE_PRIO_STORED)
                    {
                        PdtcLocFound = PdtcLocIt;
                        PdtcLocItPrio = OBD_PDTC_STORAGE_PRIO_STORED;
                    }
                }
            }
        }
    }

    if (PdtcLocFound != OBD_PDTC_LOC_INVALID)
    {
        rba_DemObdBasic_PdtcMem_SetEventId(PdtcLocFound, EventId);

        if(PdtcLocItPrio == OBD_PDTC_STORAGE_PRIO_STORED)
        {
            rba_DemObdBasic_PdtcMem_SetState(PdtcLocFound, OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A);
        }
        else
        {
#if (DEM_CFG_OBD_PDTC_VISIBILITY == DEM_CFG_OBD_PDTC_VISIBILITY_END_OF_CYCLE)
            rba_DemObdBasic_PdtcMem_SetState(PdtcLocFound, OBD_PDTC_LOCID_STATE_MILON);
#else
            rba_DemObdBasic_PdtcMem_SetState(PdtcLocFound, OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A);
#endif
        }

        Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
    }
}

void rba_DemObdBasic_PdtcMem_Clear (void)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;
    uint16_least LocId;

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        /* if PDTC is illuminating the Mil -> move to shadow memory */
        if (       (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A)
                || (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON)
        )
        {

            LocId = Dem_EvMemGetEventMemoryLocIdOfEvent(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt), DEM_CFG_EVMEM_MEMID_PRIMARY);

			/* EventId deleted from failure memory OR Event Newly Reported during Clear is not confirmed */
            if ((!Dem_EvMemIsEventMemLocIdValid(LocId)) || ((Dem_EvMemGetEventMemStatus(LocId) & DEM_EVMEM_STSMASK_CONFIRMED) != DEM_EVMEM_STSMASK_CONFIRMED))
            {
                rba_DemObdBasic_PdtcMem_SetState(PdtcLocIt, OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A);
                Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
            }
        }
    }
}

boolean rba_DemObdBasic_PdtcMem_IsEvtPdtc (Dem_EventIdType EventId)
{
    /* Note: this function does not consider event combination, as it is called by EvMem (event combination already considered).
     * If event combination shall be considered, use rba_DemObdBasic_PdtcMem_IsPdtc */

    boolean PdtcFound = FALSE;
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (!rba_DemObdBasic_PdtcMem_LocIsEmpty(PdtcLocIt))
        {
            if (rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt) == EventId)
            {
                PdtcFound = TRUE;
                break;
            }
        }
    }
    return PdtcFound;
}

boolean rba_DemObdBasic_PdtcMem_IsPdtc (Dem_DtcIdType DtcId)
{
    boolean PdtcFound = FALSE;
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (!rba_DemObdBasic_PdtcMem_LocIsEmpty(PdtcLocIt))
        {
            if (Dem_DtcIdFromEventId(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt)) == DtcId)
            {
                PdtcFound = TRUE;
                break;
            }
        }
    }
    return PdtcFound;
}


boolean rba_DemObdBasic_PdtcMem_IsPdtcServ0A(Dem_DtcIdType DtcId)
{
    boolean PdtcFound = FALSE;
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (rba_DemObdBasic_PdtcMem_LocIsVisibleServ0A(PdtcLocIt))
        {
            if (Dem_DtcIdFromEventId(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt)) == DtcId)
            {
                PdtcFound = TRUE;
                break;
            }
        }
    }
    return PdtcFound;
}

boolean rba_DemObdBasic_PdtcMem_GetNextFilteredDtcId(rba_DemObdBasic_PdtcMemIterator* pdtcLocIt, Dem_DtcIdType* dtcId)
{
    uint16_least PdtcLocId;
    boolean dtcFound = FALSE;

    while(rba_DemObdBasic_PdtcMem_LocIteratorIsValid(pdtcLocIt))
    {
        PdtcLocId = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(pdtcLocIt);

        //Iterate to the next Loc
        rba_DemObdBasic_PdtcMem_LocIteratorNext(pdtcLocIt);

        if(!rba_DemObdBasic_PdtcMem_LocIsEmpty (PdtcLocId))
        {
            if (rba_DemObdBasic_PdtcMem_LocIsVisibleServ0A(PdtcLocId))
            {
                //This portion can be optimised with the above call
                *dtcId = Dem_DtcIdFromEventId(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocId));
                dtcFound = TRUE;
                break;
            }
        }
    }
    return dtcFound;
}

static void rba_DemObdBasic_PdtcMem_UpdateVisibility (void)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON)
        {
            /* enable mode visibility for service $0A */
            rba_DemObdBasic_PdtcMem_SetState(PdtcLocIt, OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A);
            Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
        }
    }
}


void rba_DemObdBasic_PdtcMem_Init (void)
{
    boolean EventFound = FALSE;
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;
    uint16_least EvMemLocId;
    uint16_least EvMemLocIdStatus = 0;
    uint16_least EvMemMemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */

    /* plausibility check for entries */
    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (     (  (!Dem_isEventIdValid(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt)))
                &&  (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_EMPTY)
        )
                || (     (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_EMPTY)
                        && (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_MILON)
                        && (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A)
                        && (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A)
                )
        )
        {
            rba_DemObdBasic_PdtcMem_ClearLocation(PdtcLocIt);
        }
    }

    /* update visibility of permanent DTCs if necessary */
    rba_DemObdBasic_PdtcMem_UpdateVisibility();

    /* plausibility check for MIL ON events that are not stored in failure memory*/
    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);
        EventFound = FALSE;

        if (        (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON)
                ||  (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A)
        )
        {
            for (   Dem_EvMemEventMemoryLocIteratorNew    (&EvMemLocId, EvMemMemId);
                    Dem_EvMemEventMemoryLocIteratorIsValid(&EvMemLocId, EvMemMemId);
                    Dem_EvMemEventMemoryLocIteratorNext   (&EvMemLocId, EvMemMemId))
            {
                if (Dem_DtcIdFromEventId(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt)) == Dem_DtcIdFromEventId(Dem_EvMemGetEventMemEventId(EvMemLocId)))
                {
                    EvMemLocIdStatus = Dem_EvMemGetEventMemStatus(EvMemLocId);
                    /* MR12 RULE 10.4 VIOLATION: It is ensured that this conversion does not cause any issues, the definition is necessary in this way because it would otherwise cause more MISRA warnings in other places */
                    if((EvMemLocIdStatus & DEM_EVMEM_STSMASK_CONFIRMED) == DEM_EVMEM_STSMASK_CONFIRMED) /* set the found flag only if the confirmed bit is set */
                    {
                        EventFound = TRUE;
                        break;
                    }
                }
            }

            if (!EventFound)
            {
                /* Set PDTC state to OFF if event is not stored in failure memory */
                rba_DemObdBasic_PdtcMem_SetState(PdtcLocIt, OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A);
                Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
            }
            else
            {
                /* if the MIL counter was reset it is assumed that a powerloss happened and we have to restore an consistant state again */
                if(rba_DemObdBasic_EvMem_GetMilCounter(EvMemLocId) == 0)
                {
                    /* MR12 RULE 10.4 VIOLATION: It is ensured that this conversion does not cause any issues, the definition is necessary in this way because it would otherwise cause more MISRA warnings in other places */
                    if((EvMemLocIdStatus & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING) /* if the pending bit is set the MIL counter should be 3 */
                    {
                        rba_DemObdBasic_EvMem_SetMilCounter(EvMemLocId, DEM_OBD_MIL_HEALING_CYCLES);
                        rba_DemObdBasic_Mil_Request(TRUE);
                    }else /* implicitly the following is given "if ((EvMemLocIdStatus & DEM_EVMEM_STSMASK_PENDING) == 0)" */
                          /* if the pending bit is not set/was lost the MIL counter should be set to 2 */
                    {
                        rba_DemObdBasic_EvMem_SetMilCounter(EvMemLocId, DEM_OBD_MIL_HEALING_CYCLES-1);
                        rba_DemObdBasic_Mil_Request(TRUE);
                    }
                    Dem_EvMem_ResetEvent_ForOBDConsistency(EvMemLocId);
                }
                /* for plausibility reset the warning indicator request */
                rba_DemObdBasic_Event_SetWarningIndicator(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt), TRUE);
            }
        }
    }

    /* event is in failure memory, illuminates the MIL and is not marked as PDTC */
    for (   Dem_EvMemEventMemoryLocIteratorNew    (&EvMemLocId, EvMemMemId);
            Dem_EvMemEventMemoryLocIteratorIsValid(&EvMemLocId, EvMemMemId);
            Dem_EvMemEventMemoryLocIteratorNext   (&EvMemLocId, EvMemMemId))
    {
        EvMemLocIdStatus = Dem_EvMemGetEventMemStatus(EvMemLocId);

        if (Dem_EvMemIsStored(EvMemLocIdStatus))
        {
            if (rba_DemObdBasic_Mil_IsEvMemLocRequestingMil(EvMemLocId, EvMemMemId))
            {
                rba_DemObdBasic_PdtcMem_StoreNewEventId(Dem_EvMemGetEventMemEventId(EvMemLocId));
            }
        }
    }
}


void rba_DemObdBasic_PdtcMem_HandleIgnitionCycle (void)
{
    rba_DemObdBasic_PdtcMem_UpdateVisibility();
}


void rba_DemObdBasic_PdtcMem_StartDrivingCycle (void)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;
    uint16_least EvMemLocId, EvMemLocIdStatus;
    uint16_least EvMemMemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */
#if (DEM_CFG_EVCOMB == DEM_CFG_EVCOMB_ONSTORAGE)
    Dem_EventIdListIterator EventIt;
#endif
    boolean anyEventMilOn = FALSE;

    /********************************************************/
    /**** UPDATE STATUS OF CURRENT PERMANENT DTC ENTRIES ****/
    /********************************************************/
    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        anyEventMilOn = FALSE;

        /* check if PDTC should be deleted after MIL healing (normal operation) */
        if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A)
        {
#if (DEM_CFG_EVCOMB == DEM_CFG_EVCOMB_ONSTORAGE)
            for ( Dem_EventIdListIteratorNewFromDtcId(&EventIt, Dem_DtcIdFromEventId(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt)));
                    Dem_EventIdListIteratorIsValid(&EventIt);
                    Dem_EventIdListIteratorNext(&EventIt)
            )
            {
                /* Event combination type 1: all events mapped to the DTC shall be be healed */
                /* MR12 RULE 13.5 VIOLATION: The function "rba_DemObdBasic_Event_IsRequestingMil" does not cause any sideeffects */
                anyEventMilOn = (anyEventMilOn) || (rba_DemObdBasic_Event_IsRequestingMil(Dem_EventIdListIteratorCurrent(&EventIt)));
            }
#else
            /* Event combination type 2 or no combination: each PDTC is healed separately */
            anyEventMilOn = rba_DemObdBasic_Event_IsRequestingMil(rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt));
#endif

            if (!anyEventMilOn)
            {
                rba_DemObdBasic_PdtcMem_ClearLocation(PdtcLocIt);
            }
        }

        /* check if PDTC should be deleted if failure memory has been cleared
         * (healing conditions: 1 DCY with "test passed" and PFC cycle has been set) */
        if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A)
        {
            /* check healing conditions */
            if (rba_DemObdBasic_PdtcMem_IsTestFailedThisDCY(PdtcLocIt))
            {
                rba_DemObdBasic_PdtcMem_ResetHealingConditions(PdtcLocIt);
            }
            else
            {
                if (!rba_DemObdBasic_PdtcMem_IsOkCycleSet(PdtcLocIt))
                {
                    if (rba_DemObdBasic_PdtcMem_IsTestCompleteThisDCY(PdtcLocIt))
                    {
                        rba_DemObdBasic_PdtcMem_SetOkCycle(PdtcLocIt);
                    }
                }
            }
        }

        /* reset status bits "this driving cycle" */
        rba_DemObdBasic_PdtcMem_SetTestFailedThisDCY(PdtcLocIt, FALSE);
        rba_DemObdBasic_PdtcMem_SetTestCompleteThisDCY(PdtcLocIt, FALSE);
        Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
    }


    /********************************************************/
    /******** CHECK IF OTHER DTCS SHALL BE PERMANENT ********/
    /* use case: more events in EvMem than PdtcMem size     */
    /*           and healing of some of them at DCY start   */
    /********************************************************/
    for (Dem_EvMemEventMemoryLocIteratorNew    (&EvMemLocId, EvMemMemId);
            Dem_EvMemEventMemoryLocIteratorIsValid(&EvMemLocId, EvMemMemId);
            Dem_EvMemEventMemoryLocIteratorNext   (&EvMemLocId, EvMemMemId))
    {
        EvMemLocIdStatus = Dem_EvMemGetEventMemStatus(EvMemLocId);

        if (Dem_EvMemIsStored(EvMemLocIdStatus))
        {
            if (rba_DemObdBasic_Mil_IsEvMemLocRequestingMil(EvMemLocId, EvMemMemId))
            {
                rba_DemObdBasic_PdtcMem_StoreNewEventId(Dem_EvMemGetEventMemEventId(EvMemLocId));
            }
        }
    }
}

void rba_DemObdBasic_PdtcMem_StartPFCCycle (void)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
     uint16_least PdtcLocIt;

     /********************************************************/
     /**** UPDATE STATUS OF CURRENT PERMANENT DTC ENTRIES ****/
     /********************************************************/
     for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
             rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
             rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
     )
     {
         PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

         /* check if PDTC should be deleted if failure memory has been cleared
          * (healing conditions: 1 DCY with "test passed" and PFC cycle has been set) */
         if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) == OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A)
         {
             /* check healing conditions */
             if (!rba_DemObdBasic_PdtcMem_IsTestFailedThisDCY(PdtcLocIt))
             {
                 if (!rba_DemObdBasic_PdtcMem_IsPfcCycleSet(PdtcLocIt))
                 {
                     rba_DemObdBasic_PdtcMem_SetPfcCycle(PdtcLocIt);
                     Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
                 }

                 /* delete PDTC if general denominator has been set and monitoring has report PASSED
                  * (in any DC after clearing the failure memory) */
                 if (rba_DemObdBasic_PdtcMem_IsPfcCycleSet(PdtcLocIt) && rba_DemObdBasic_PdtcMem_IsOkCycleSet(PdtcLocIt))
                 {
                     rba_DemObdBasic_PdtcMem_ClearLocation(PdtcLocIt);
                 }
             }
         }
     }
}

void rba_DemObdBasic_PdtcMem_DeleteEvent (Dem_EventIdType EventId)
{
    /* Note: this function does not consider event combination, as it is called by EvMem (event combination already considered). */

    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;

    for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
            rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
    )
    {
        PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

        if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_EMPTY)
        {
            if (rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt) == EventId)
            {
                rba_DemObdBasic_PdtcMem_ClearLocation(PdtcLocIt);
                break;
            }
        }
    }

    rba_DemObdBasic_Mil_CheckIndicatorState();
}


void rba_DemObdBasic_PdtcMem_MainFunction (void)
{
    rba_DemObdBasic_PdtcMemIterator PdtcIt;
    uint16_least PdtcLocIt;
    Dem_EventIdType eventId;
    boolean TestFailedTFCSincePreinit = FALSE;
    boolean TestCompleteTFCSincePreinit = TRUE;

#if (DEM_CFG_EVCOMB == DEM_CFG_EVCOMB_ONSTORAGE)
    Dem_EventIdListIterator eventIt;
#endif

    if(!Dem_GetEvMemLock())
    {

        if(rba_DemObdBasic_GlobalIgnitionCycleTrigger == TRUE)
        {
            rba_DemObdBasic_PdtcMem_HandleIgnitionCycle();
            rba_DemObdBasic_GlobalIgnitionCycleTrigger = FALSE;
        }

        for ( rba_DemObdBasic_PdtcMem_LocIteratorNew(&PdtcIt);
                rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&PdtcIt);
                rba_DemObdBasic_PdtcMem_LocIteratorNext(&PdtcIt)
        )
        {
            PdtcLocIt = rba_DemObdBasic_PdtcMem_LocIteratorCurrent(&PdtcIt);

            TestFailedTFCSincePreinit = FALSE;
            TestCompleteTFCSincePreinit = TRUE;

            if (rba_DemObdBasic_PdtcMem_GetState(PdtcLocIt) != OBD_PDTC_LOCID_STATE_EMPTY)
            {

                /***** Update of "TestComplete this driving cycle" and "TestFailed this driving cycle" *****/
                eventId = rba_DemObdBasic_PdtcMem_GetEventId(PdtcLocIt);

#if (DEM_CFG_EVCOMB == DEM_CFG_EVCOMB_ONSTORAGE)
                /*
                 * TFTFC = TFTFC[1] || TFTFC[2] || ... || TFTFC[n]
                 * TCTFC = TFTFC || (TCTFC[1] && TCTFC[2] && ... && TCTFC[n])
                 */
                for (   Dem_EventIdListIteratorNewFromDtcId(&eventIt, Dem_DtcIdFromEventId(eventId));
                        Dem_EventIdListIteratorIsValid(&eventIt);
                        Dem_EventIdListIteratorNext(&eventIt)
                    )
                {
                    if(!Dem_EvtIsSuppressed(Dem_EventIdListIteratorCurrent(&eventIt)))
                    {
                        if (Dem_EvtGetTestFailedTFCSincePreinit(Dem_EventIdListIteratorCurrent(&eventIt)))
                        {
                            TestFailedTFCSincePreinit = TRUE;
                            TestCompleteTFCSincePreinit = TRUE;
                            break;
                        }

                        TestCompleteTFCSincePreinit = TestCompleteTFCSincePreinit && Dem_EvtGetTestCompleteTFCSincePreinit(Dem_EventIdListIteratorCurrent(&eventIt));
                    }
                }
#else
                TestFailedTFCSincePreinit = Dem_EvtGetTestFailedTFCSincePreinit(eventId);
                TestCompleteTFCSincePreinit = Dem_EvtGetTestCompleteTFCSincePreinit(eventId);
#endif

                if (!rba_DemObdBasic_PdtcMem_IsTestCompleteThisDCY(PdtcLocIt))
                {
                    if (TestCompleteTFCSincePreinit)
                    {
                        rba_DemObdBasic_PdtcMem_SetTestCompleteThisDCY(PdtcLocIt, TRUE);
                        Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
                    }
                }

                if (!rba_DemObdBasic_PdtcMem_IsTestFailedThisDCY(PdtcLocIt))
                {
                    if (TestFailedTFCSincePreinit)
                    {
                        rba_DemObdBasic_PdtcMem_SetTestFailedThisDCY(PdtcLocIt, TRUE);
                        Dem_NvMWriteBlockImmediate(DEM_NVM_ID_OBD_PERMANENT_MEMORY);
                    }
                }
            }
        }
    }
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"
