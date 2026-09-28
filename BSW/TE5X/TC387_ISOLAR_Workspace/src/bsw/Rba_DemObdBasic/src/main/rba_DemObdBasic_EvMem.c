

#include "rba_DemObdBasic_Prv.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"
#include "Dem_Cfg_Events_DataStructures.h"

/* BSW-12998 */
#if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
#define RBA_DEMOBDBASIC_FF_MAXOBDFFHEALEDID (0xFFFFu)
#endif
/* END BSW-12998 */

/* Optimization to avoid copy of whole memory location only to retrieve EventId for location or ObdFF */
static Std_ReturnType rba_DemObdBasic_EvMem_GetEventIdAndStatusOfReaderCopy(Dem_EventIdType* EventId, uint16_least* Status, uint16_least LocId)
{
    Std_ReturnType retval;

    if (!Dem_EvMemIsEventMemLocIdValid(LocId))
    {
        return E_NOT_OK;
    }

    Dem_EvMemReaderCopiesEnterLock();
    {
        /* Critical section */
        LocId = Dem_EvMemLocId2ReaderCopyLocId(LocId);

        *Status = Dem_EvMemGetEventMemStatus(LocId);
        if (Dem_EvMemIsStored(*Status))
        {
            *EventId = Dem_EvMemGetEventMemEventId(LocId);
            retval = E_OK;
        }
        else
        {
            retval = E_NOT_OK;
        }
    }
    Dem_EvMemReaderCopiesExitLock();

    return retval;
}

static void rba_DemObdBasic_EvMem_StatusNotificationMilVisible(uint16_least LocId, Dem_EventIdType EventId)
{
    if (rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(EventId)))
    {
        rba_DemObdBasic_EvMem_SetMilCounter(LocId, DEM_OBD_MIL_HEALING_CYCLES);
        rba_DemObdBasic_Mil_Request(TRUE);
        rba_DemObdBasic_Event_SetWarningIndicator(EventId, TRUE);
        rba_DemObdBasic_PdtcMem_StoreNewEventId(EventId);
    }
    else
    {
        rba_DemObdBasic_EvMem_SetMilCounter(LocId, 0);
    }
}

boolean rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(uint16_least Status)
{
    return ((Status & DEM_EVMEM_STSMASK_CONFIRMED ) == DEM_EVMEM_STSMASK_CONFIRMED);
}

boolean rba_DemObdBasic_EvMem_GetNextFilteredDtcId(Dem_DTCFilterState* dtcFilter_p, Dem_DtcIdType* dtcId)
{
    uint16_least currentEvMemLoc;
    Dem_EventIdType eventId = 0;
    boolean dtcFound = FALSE;
    uint16_least evmemStatus;

    /*For filtering OBD services loop through Event Memory locationand set the matching DTC fot this particular DTC*/
    while(Dem_EvMemEventMemoryLocIteratorIsValid(&(dtcFilter_p->obdFilter.evMemLocIt), DEM_CFG_EVMEM_MEMID_PRIMARY))
    {
        currentEvMemLoc = dtcFilter_p->obdFilter.evMemLocIt;

        /*Iterate to the next location*/
        Dem_EvMemEventMemoryLocIteratorNext(&(dtcFilter_p->obdFilter.evMemLocIt), DEM_CFG_EVMEM_MEMID_PRIMARY);

        /*check if the EvMem loc is not empty*/
        if (rba_DemObdBasic_EvMem_GetEventIdAndStatusOfReaderCopy(&eventId, &evmemStatus, currentEvMemLoc) == E_OK)
        {
            /*Get the Dtc id for this particular location*/
            /*MR12 RULE 9.1 VIOLATION: the variable "eventId" is intialized within the function "rba_DemObdBasic_EvMem_GetEventIdAndStatusOfReaderCopy"*/
            *dtcId = Dem_DtcIdFromEventId(eventId);

            if(Dem_isDtcIdValid(*dtcId))
            {
                //Check if the filter matches
                if (Dem_DTCFilterMatches(dtcFilter_p, *dtcId))
                {
                    dtcFound = TRUE;
                    break;
                }
            }
        }
    }
    return dtcFound;
}

boolean rba_DemObdBasic_EvMem_IsClearAllowedForEvMemEntries(void)
{
    uint16_least LocIdIt;
    Dem_EventIdType eventId = 0;
    uint16_least evmemStatus = 0;
    boolean FullClearAllowed = TRUE;
    Dem_DtcIdType dtcId;

    for (Dem_EvMemEventMemoryLocIteratorNew(&LocIdIt, DEM_CFG_EVMEM_MEMID_PRIMARY);
            Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, DEM_CFG_EVMEM_MEMID_PRIMARY);
            Dem_EvMemEventMemoryLocIteratorNext(&LocIdIt, DEM_CFG_EVMEM_MEMID_PRIMARY))
    {
        if (rba_DemObdBasic_EvMem_GetEventIdAndStatusOfReaderCopy(&eventId, &evmemStatus, LocIdIt) == E_OK)
        {
            dtcId = Dem_DtcIdFromEventId(eventId);

            if((Dem_isDtcIdValid(dtcId)) && (rba_DemObdBasic_Dtc_IsEmissionRelated(dtcId)))
            {
                if((rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(evmemStatus)) ||
                        ((evmemStatus & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING))
                {
                    if(!Dem_EvtClearEventAllowed(eventId))
                    {
                        FullClearAllowed = FALSE;
                        break;
                    }
                }
            }
        }
    }

    return FullClearAllowed;
}

/* BSW-12998 */
#if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
boolean rba_DemObdBasic_EvMem_SetFFNewHealedId(uint16_least LocId)
{
    uint16_least LocIdIt;
    uint16_least evmemStatus = 0;
    boolean isHealedIdUpdated = FALSE;
    boolean retVal = FALSE;
    uint16 maxHealedId_u16 = 0u;
    uint16 healedId_u16 = 0u;
    uint8 obdMilCounter = 0u;
    uint16_least MemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */
	
	/* [$DD_BSWCODE 40506] */
    for (Dem_EvMemEventMemoryLocIteratorNew(&LocIdIt, MemId);
            Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, MemId);
            Dem_EvMemEventMemoryLocIteratorNext(&LocIdIt, MemId))
    {
        evmemStatus = Dem_EvMemGetEventMemStatus(LocIdIt);
        obdMilCounter = rba_DemObdBasic_EvMem_GetMilCounter(LocIdIt);

        if ((obdMilCounter == 0) && !Dem_EvMemIsTestFailedTFC(evmemStatus))
        {
            healedId_u16 = rba_DemObdBasic_EvMem_GetFFHealedId(LocIdIt);
            if (maxHealedId_u16 < healedId_u16)
            {
                maxHealedId_u16 = healedId_u16;
            }
            isHealedIdUpdated = TRUE;
        }

    }

    /* overflow */ /* [$DD_BSWCODE 40523] */
    if (maxHealedId_u16 >= RBA_DEMOBDBASIC_FF_MAXOBDFFHEALEDID)
    {
        for (   Dem_EvMemEventMemoryLocIteratorNew    (&LocIdIt, MemId);
                Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, MemId);
                Dem_EvMemEventMemoryLocIteratorNext   (&LocIdIt, MemId))
        {
            evmemStatus = Dem_EvMemGetEventMemStatus(LocIdIt);
            obdMilCounter = rba_DemObdBasic_EvMem_GetMilCounter(LocIdIt);

            if ((obdMilCounter == 0) && !Dem_EvMemIsTestFailedTFC(evmemStatus))
            {
                rba_DemObdBasic_EvMem_SetFFHealedId(LocIdIt, 0);
            }
        }
        maxHealedId_u16 = 0;
        isHealedIdUpdated = TRUE;
    }

    if (isHealedIdUpdated == TRUE)
    {
        rba_DemObdBasic_EvMem_SetFFHealedId(LocId, maxHealedId_u16 + 1u);
        retVal = TRUE;
    }
    return retVal;
}
#endif
/* END BSW-12998 */

/* --- Mil Counter --- */
void rba_DemObdBasic_EvMem_SetMilCounter(uint16_least LocId, uint8 counter)
{
    Dem_EvMemEventMemory[LocId].ObdMilCounter = counter;
    Dem_EvMemSetEventMemStatus(LocId, Dem_EvMemGetEventMemStatus(LocId) & (~DEM_EVMEM_STSMASK_READER_COPY_CURRENT));
    Dem_NvMWriteBlockOnShutdown(Dem_EvMemGetNvmIdFromLocId(LocId));
}

uint8 rba_DemObdBasic_EvMem_GetMilCounter(uint16_least LocId)
{
    return Dem_EvMemEventMemory[LocId].ObdMilCounter;
}

boolean rba_DemObdBasic_EvMem_GetIsMilResetFlag(uint16_least LocId)
{
    return Dem_EvMemEventMemory[LocId].ObdMilResetThisCycle;
}

void rba_DemObdBasic_EvMem_SetMilResetFlag(uint16_least LocId, boolean state)
{
    Dem_EvMemEventMemory[LocId].ObdMilResetThisCycle = state;
    /* BSW-12998 */ /* [$DD_BSWCODE 40507] */
    #if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
    if (state == TRUE)
    {
        rba_DemObdBasic_EvMem_SetFFNewHealedId(LocId);
    }
    #endif
    /* END BSW-12998 */
}

/* --- Freeze Frame / TimeId --- */
void rba_DemObdBasic_EvMem_SetFFTimeId(uint16_least LocId, uint32 ObdFFTimeId)
{
    Dem_EvMemEventMemory[LocId].ObdFFTimeId = ObdFFTimeId;
    Dem_EvMemSetEventMemStatus(LocId, Dem_EvMemGetEventMemStatus(LocId) & (~DEM_EVMEM_STSMASK_READER_COPY_CURRENT));
    Dem_NvMWriteBlockOnShutdown(Dem_EvMemGetNvmIdFromLocId(LocId));
}

uint32 rba_DemObdBasic_EvMem_GetFFTimeId(uint16_least LocId)
{
    return Dem_EvMemEventMemory[LocId].ObdFFTimeId;
}

void rba_DemObdBasic_EvMem_CopyFreezeFrame(Dem_EventIdType EventId, uint8* dest, uint16 destSize, const uint8* src)
{
    rba_DemObdBasic_FF_CopyFF(EventId, dest, destSize, src);
}

uint16_least rba_DemObdBasic_EvMem_GetLocationOfOBDFreezeFrame(void)
{
    return rba_DemObdBasic_FF_GetFFLocation();
}

/* BSW-12998 */ /* [$DD_BSWCODE 34698] */
#if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
boolean rba_DemObdBasic_EvMem_IsEmissionRelated(Dem_EventIdType EventId)
{
    return rba_DemObdBasic_Event_IsEmissionRelated(EventId);
}

/* [$DD_BSWCODE 40511] */
uint16 rba_DemObdBasic_EvMem_GetFFHealedId(uint16_least LocId)
{
    return Dem_EvMemEventMemory[LocId].HealedId;
}

/* [$DD_BSWCODE 40508] */
void rba_DemObdBasic_EvMem_SetFFHealedId(uint16_least LocId, uint16 ObdHealedId)
{
    Dem_EvMemEventMemory[LocId].HealedId = ObdHealedId;
}
#endif
/* END SW-12998 */

boolean rba_DemObdBasic_EvMem_IsTriggerObdFreezeFrame(Dem_EventIdType EventId, uint16_least MemId,
        uint16_least StatusOld, uint16_least StatusNew)
{
    boolean trigger = FALSE;

    DEM_UNUSED_PARAM(MemId);

    if (rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(EventId)))
    {
#if(DEM_CFG_OBD_FREEZEFRAME_CAPTURE == DEM_CFG_OBD_FREEZEFRAME_CAPTURE_PENDING)
        if(((StatusNew & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING) &&
           ((StatusOld & DEM_EVMEM_STSMASK_CONFIRMED) != DEM_EVMEM_STSMASK_CONFIRMED))
        {
            trigger = Dem_EvMemIsEdgeTrigger(StatusOld, StatusNew, DEM_EVMEM_STSMASK_PENDING);
        }
#else
        if((StatusNew & DEM_EVMEM_STSMASK_CONFIRMED) == DEM_EVMEM_STSMASK_CONFIRMED)
        {
            trigger = Dem_EvMemIsEdgeTrigger(StatusOld, StatusNew, DEM_EVMEM_STSMASK_CONFIRMED);
        }
#endif
    }
    return trigger;
}

/* --- Common mil debouncing --- */
void rba_DemObdBasic_EvMem_CommonMilDebModifyFailureCounter(uint16_least LocId, uint16_least MemId,
        Dem_EventIdType EventId, uint16_least *failureCounter)
{
#if (DEM_CFG_OBDCOMMONMILDEB == DEM_CFG_OBDCOMMONMILDEB_ON)

    uint16_least LocIdIt;
    uint16_least CounterOtherEvent;
    Dem_EventIdType MilRepEventId = rba_DemObdBasic_Event_GetMilRepEvent(EventId);

    if (MilRepEventId != DEM_EVENTID_INVALID)
    {
        for ( Dem_EvMemEventMemoryLocIteratorNew (&LocIdIt, MemId);
                Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, MemId);
                Dem_EvMemEventMemoryLocIteratorNext (&LocIdIt, MemId))
        {
            if (Dem_EvMemIsStored(Dem_EvMemGetEventMemStatus(LocIdIt)))
            {
                /* MR12 RULE 13.5 VIOLATION: the function "rba_DemObdBasic_Event_GetMilRepEvent" does not have any persistent side effects */
                if ((LocId != LocIdIt) && (MilRepEventId == rba_DemObdBasic_Event_GetMilRepEvent(Dem_EvMemGetEventMemEventId(LocIdIt))))
                {
                    /* Get the fault failure counter of event of same group */
                    CounterOtherEvent = Dem_EvMemGetEventMemFailureCounter (LocIdIt);

                    /* Only pending is relevant for MIL counters*/
                    if ((CounterOtherEvent > *failureCounter)
                            && (CounterOtherEvent < Dem_EvtParam_GetFailureConfirmationThreshold(Dem_EvMemGetEventMemEventId(LocIdIt))))

                    {
                        /* take over counter value */
                        if (Dem_EvMemIsTestFailedTFC(Dem_EvMemGetEventMemStatus(LocIdIt)))
                        {
                            /* counter already incremented in this DCY -> avoid new incrementation */
                            *failureCounter = (CounterOtherEvent - 1u);
                        }
                        else
                        {
                            *failureCounter = CounterOtherEvent;
                        }
                    }
                }
            }
        }
    }
#else
    DEM_UNUSED_PARAM(LocId);
    DEM_UNUSED_PARAM(MemId);
    DEM_UNUSED_PARAM(EventId);
    *failureCounter = *failureCounter; /* MISRA */
#endif
}

/* --- Aging / Displacement --- */
boolean rba_DemObdBasic_EvMem_IsAgingOfLocationAllowed(uint16_least LocId)
{
    /* allow aging if:
     * - DTC is not OBD relevant: always (MilCounter always = 0)
     * - DTC is OBD relevant:
     *    Mil healing completed (MilCounter = 0)
     *    AND
     *    Mil was not reset during this operation cycle change
     *    AND
     *    DTC has not been detected again in current cycle (complete cycles without failure is necessary for OBD aging)
     */
    if(!rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(Dem_EvMemGetEventMemEventId(LocId))))
    {
        return TRUE;
    }else{
        return ( (rba_DemObdBasic_EvMem_GetMilCounter(LocId) == 0) &&
                 (!rba_DemObdBasic_EvMem_GetIsMilResetFlag(LocId)) &&
                 ((Dem_EvMemGetEventMemStatus(LocId) & DEM_EVMEM_STSMASK_PENDING) != DEM_EVMEM_STSMASK_PENDING));
    }
}

boolean rba_DemObdBasic_EvMem_IsDisplaceEventMemoryLocAllowed(Dem_EventIdType NewEventId, uint16_least LocId,
        uint16_least LocIdObdServ02)
{
    /* OBD displacement:
     * Emission related events that are
     * - Pending
     * - Illuminating the MIL
     * - Providing the Serv $02 freeze frame
     * and have the same or an higher priority than the new event
     * or are visible in Serv $0A (permanent) are not displaced */

    Dem_EventIdType EventId = Dem_EvMemGetEventMemEventId(LocId);
    boolean retVal = TRUE;

    if (rba_DemObdBasic_Event_IsEmissionRelated(EventId))
    {
        if (rba_DemObdBasic_PdtcMem_IsEvtPdtc(EventId))
        {
            retVal = FALSE;
        }
        else if (Dem_EvtParam_GetEventPriority(EventId) <= Dem_EvtParam_GetEventPriority(NewEventId))
        {
            /* old event has same or higher prio than new event: consider OBD criteria */

            if(LocId == LocIdObdServ02)
            {
                retVal = FALSE;
            }
            else if(rba_DemObdBasic_Mil_IsEvMemLocRequestingMil(LocId, DEM_CFG_EVMEM_MEMID_PRIMARY))
            {
                retVal = FALSE;
            }
            else if((Dem_EvMemGetEventMemStatus(LocId) & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING)
            {
                retVal = FALSE;
            }
            else
            {
                /* MISRA */
            }
        }
        else
        {
            /* MISRA */
        }
    }

    return retVal;
}

void rba_DemObdBasic_EvMem_HandleImmediateAgeing(Dem_EventIdType EventId)
{
    /* Clear Permanent memory for the Event*/
    rba_DemObdBasic_PdtcMem_DeleteEvent(EventId);
    /* Clear WIR-bit of event */
    rba_DemObdBasic_Event_SetWarningIndicator(EventId, FALSE);
}

/* --- Status Nofications --- */
void rba_DemObdBasic_EvMem_StatusNotificationPending(uint16_least LocId, Dem_EventIdType EventId)
{
    if (rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(EventId)))
    {
#if (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED)
        if (!rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(Dem_EvMemGetEventMemStatus(LocId)))
        {
            rba_DemObdBasic_FF_SetNewTimeId(LocId);
        }
#else
        DEM_UNUSED_PARAM(LocId);
#endif
    }
}


void rba_DemObdBasic_EvMem_StatusNotificationThresholdReached(uint16_least LocId, Dem_EventIdType EventId)
{
    rba_DemObdBasic_EvMem_StatusNotificationMilVisible(LocId, EventId);
}

void rba_DemObdBasic_EvMem_StatusNotificationConfirmed(uint16_least LocId, Dem_EventIdType EventId)
{
#if ((DEM_CFG_OBD_FREEZEFRAME_CAPTURE == DEM_CFG_OBD_FREEZEFRAME_CAPTURE_CONFIRMED) || (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_CONFIRMED))
    if (rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(EventId)))
    {
        rba_DemObdBasic_FF_SetNewTimeId(LocId);
    }
#else
        DEM_UNUSED_PARAM(LocId);
        DEM_UNUSED_PARAM(EventId);
#endif
}

void rba_DemObdBasic_EvMem_HandleDrivingCycleQualified(void)
{
    /* Nothing to do for now */
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

