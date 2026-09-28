

#include "rba_DemObdBasic_Prv.h"

#include "Dem_Prv_CallEvtStChngdCbk.h"

#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"

#if (DEM_CFG_OBDCOMMONMILDEB == DEM_CFG_OBDCOMMONMILDEB_ON)

/* MR12 RULE 20.7 VIOLATION: Function like MACROS need not be parenthesized  */
static DEM_ARRAY_DEFINE_CONST(Dem_EventIdType, rba_DemObdBasic_AllEvtMilRepEvents, DEM_EVENTID_ARRAYLENGTH, DEM_CFG_EVENT2DEBGROUPEVENT);

#endif

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"


boolean rba_DemObdBasic_Event_IsRequestingMil(Dem_EventIdType EventId)
{
    boolean retVal = FALSE;

    if (rba_DemObdBasic_Event_IsEmissionRelated(EventId))
    {
        retVal = rba_DemObdBasic_Mil_IsEvtRequestingMil(EventId);
    }

    return retVal;
}

void rba_DemObdBasic_Event_SetWarningIndicator(Dem_EventIdType EventId, boolean setOrReset)
{
    Dem_UdsStatusByteType statusOld, statusNew, dtcStByteOld;

    DEM_ENTERLOCK_MON();

    Dem_StatusChange_GetOldStatus(EventId, &statusOld, &dtcStByteOld);

    if (setOrReset)
    {
        Dem_EvtSt_HandleIndicatorOn(EventId);
    }
    else
    {
        Dem_UpdateISO14229WIRStatus(EventId);
    }

    statusNew = Dem_EvtGetIsoByte(EventId);

    DEM_EXITLOCK_MON();

    if (statusNew != statusOld)
    {
        Dem_CallBackTriggerOnEventStatus(EventId, statusOld, statusNew, dtcStByteOld);
    }
}

#if (DEM_CFG_OBDCOMMONMILDEB == DEM_CFG_OBDCOMMONMILDEB_ON)
/* --- Event Grouping for OBD purpose --- */
Dem_EventIdType rba_DemObdBasic_Event_GetMilRepEvent(Dem_EventIdType EventId)
{
    return rba_DemObdBasic_AllEvtMilRepEvents[EventId];
}
#endif

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

