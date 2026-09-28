

#ifndef RBA_DEMOBDASIC_MIL_H
#define RBA_DEMOBDASIC_MIL_H

#include "rba_DemObdBasic_Types.h"

#define DEM_OBD_MIL_HEALING_CYCLES  3 /* min. 3 driving cycle with MilOn */


#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_Mil_Init(void);
void rba_DemObdBasic_Mil_Request(boolean state);
void rba_DemObdBasic_Mil_Clear(void);
void rba_DemObdBasic_Mil_CheckIndicatorState(void);
void rba_DemObdBasic_Mil_StartDrivingCycle(void);

boolean rba_DemObdBasic_Mil_IsEvtRequestingMil(Dem_EventIdType EventId);
boolean rba_DemObdBasic_Mil_IsEvMemLocRequestingMil(uint16_least LocId, uint16_least MemId);

Dem_IndicatorStatusType rba_DemObdBasic_Mil_GetIndicatorStatusInternal(void);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"
#endif
