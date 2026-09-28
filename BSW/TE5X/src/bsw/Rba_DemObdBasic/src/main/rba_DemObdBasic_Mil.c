

#include "rba_DemObdBasic_Prv.h"

#include "Dem_EvMemBase.h"

#if (DEM_CFG_SUPPORT_OBD_DEACTIVATION == DEM_CFG_SUPPORT_OBD_DEACTIVATION_ON )
#include "rba_DemObdBasic_ProjectExtension.h"
#endif

#define DEM_START_SEC_VAR_INIT
#include "Dem_MemMap.h"

static Dem_IndicatorStatusType rba_DemObdBasic_Mil = DEM_INDICATOR_OFF;

#define DEM_STOP_SEC_VAR_INIT
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_Mil_Init(void)
{
    rba_DemObdBasic_Mil_CheckIndicatorState();
}

void rba_DemObdBasic_Mil_Request(boolean state)
{
    if (state == TRUE)
    {
        rba_DemObdBasic_Mil = DEM_INDICATOR_CONTINUOUS;
    }
    else
    {
        rba_DemObdBasic_Mil = DEM_INDICATOR_OFF;
    }
}

void rba_DemObdBasic_Mil_Clear(void)
{
    rba_DemObdBasic_Mil_CheckIndicatorState();
}

void rba_DemObdBasic_Mil_CheckIndicatorState(void)
{
    uint16_least MemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */
    uint16_least LocId, LocIdStatus;
    boolean MilOn = FALSE;

    for (Dem_EvMemEventMemoryLocIteratorNew(&LocId, MemId); Dem_EvMemEventMemoryLocIteratorIsValid(&LocId, MemId);
            Dem_EvMemEventMemoryLocIteratorNext(&LocId, MemId))
    {
        LocIdStatus = Dem_EvMemGetEventMemStatus(LocId);
        if (Dem_EvMemIsStored(LocIdStatus))
        {
            /* MR12 RULE 13.5 VIOLATION: the function "rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd" does not have any persistent side effects */
            if ((rba_DemObdBasic_EvMem_GetMilCounter(LocId) > 0)
                    && rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(LocIdStatus))
            {
                MilOn = TRUE;
                break;
            }
        }
    }
    rba_DemObdBasic_Mil_Request(MilOn);
}

void rba_DemObdBasic_Mil_StartDrivingCycle(void)
{
    uint16_least MemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */
    uint16_least LocId, LocIdStatus;

    for (Dem_EvMemEventMemoryLocIteratorNew(&LocId, MemId); Dem_EvMemEventMemoryLocIteratorIsValid(&LocId, MemId);
            Dem_EvMemEventMemoryLocIteratorNext(&LocId, MemId))
    {
        LocIdStatus = Dem_EvMemGetEventMemStatus(LocId);

        rba_DemObdBasic_EvMem_SetMilResetFlag(LocId, FALSE);

        /* MR12 RULE 13.5 VIOLATION: the function "rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd" does not have any persistent side effects */
        if (Dem_EvMemIsStored(LocIdStatus)
                && rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(LocIdStatus))
        {
            if (rba_DemObdBasic_EvMem_GetMilCounter(LocId) > 0)
            {
                /* Failed this failure cycle (== OBD driving cycle)? */
                if (Dem_EvMemIsTestFailedTFC(LocIdStatus))
                {
                    rba_DemObdBasic_EvMem_SetMilCounter(LocId, DEM_OBD_MIL_HEALING_CYCLES);
                }
                /* Completed this failure cycle (== OBD driving cycle)? */
                else if (Dem_EvMemIsTestCompleteTFC(LocIdStatus))
                {
                    /* test passed in last driving cycle -> decrement MIL healing counter */
                    rba_DemObdBasic_EvMem_SetMilCounter(LocId, rba_DemObdBasic_EvMem_GetMilCounter(LocId) - 1);

                    if ((rba_DemObdBasic_EvMem_GetMilCounter(LocId) == 0)
                            && (!Dem_EvtIsWIRExternal(Dem_EvMemGetEventMemEventId(LocId))))
                    {
                        /* Event is no more illuminating the mil -> reset warning indicator bit*/
                        rba_DemObdBasic_Event_SetWarningIndicator(Dem_EvMemGetEventMemEventId(LocId), FALSE);
                        rba_DemObdBasic_EvMem_SetMilResetFlag(LocId, TRUE);
                    }
                }
                else
                {
                    /* do nothing if event not tested */
                }
            }
        }
    }
    rba_DemObdBasic_Mil_CheckIndicatorState();
}

boolean rba_DemObdBasic_Mil_IsEvtRequestingMil(Dem_EventIdType EventId)
{
    uint16_least MemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */
    uint16_least LocId;

    LocId = Dem_EvMemGetEventMemoryLocIdOfEvent(EventId, MemId);

    /* MR12 RULE 13.5 VIOLATION: the function "rba_DemObdBasic_Mil_IsEvMemLocRequestingMil" does not have any persistent side effects */
    return (Dem_EvMemIsEventMemLocIdValid(LocId)) && (rba_DemObdBasic_Mil_IsEvMemLocRequestingMil(LocId, MemId));
}

boolean rba_DemObdBasic_Mil_IsEvMemLocRequestingMil(uint16_least LocId, uint16_least MemId)
{
    boolean MilRequest = FALSE;
    uint16_least LocIdStatus;

    if (MemId == DEM_CFG_EVMEM_MEMID_PRIMARY) /* for now only primary memory supported */
    {
        LocIdStatus = Dem_EvMemGetEventMemStatus(LocId);

        /* MR12 RULE 13.5 VIOLATION: the functions "rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd","rba_DemObdBasic_EvMem_GetMilCounter","Dem_EvMemIsStored" do not have any persistent side effects */
        if (Dem_EvMemIsStored(LocIdStatus) && (rba_DemObdBasic_EvMem_GetMilCounter(LocId) > 0)
                && rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(LocIdStatus))
        {
            MilRequest = TRUE;
        }
    }
    return MilRequest;
}

Dem_IndicatorStatusType rba_DemObdBasic_Mil_GetIndicatorStatusInternal(void)
{
    return rba_DemObdBasic_Mil;
}

Dem_IndicatorStatusType rba_DemObdBasic_Mil_GetIndicatorStatusExternal(void)
{
    Dem_IndicatorStatusType retVal = rba_DemObdBasic_Mil_GetIndicatorStatusInternal();

#if (DEM_CFG_SUPPORT_OBD_DEACTIVATION == DEM_CFG_SUPPORT_OBD_DEACTIVATION_ON )
    /*This is project specific and if this callback returns TRUE, then MIL output is disabled*/
    if (rba_DemObdBasic_IsObdDeactivatedByVariant())
    {
        retVal = DEM_INDICATOR_OFF;
    }
#endif

    return retVal;
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

