

#ifndef RBA_DEMOBDBASIC_EVENT_H
#define RBA_DEMOBDBASIC_EVENT_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_Event_SetWarningIndicator(Dem_EventIdType EventId, boolean setOrReset);

#if(DEM_CFG_OBDCOMMONMILDEB == DEM_CFG_OBDCOMMONMILDEB_ON)
Dem_EventIdType rba_DemObdBasic_Event_GetMilRepEvent(Dem_EventIdType EventId);
#endif

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

