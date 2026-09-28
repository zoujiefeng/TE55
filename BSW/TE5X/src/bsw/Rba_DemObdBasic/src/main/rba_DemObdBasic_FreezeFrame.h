

#ifndef RBA_DEMOBDBASIC_FREEZEFRAME_H
#define RBA_DEMOBDBASIC_FREEZEFRAME_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_FF_SetNewTimeId(uint16_least LocId);
void rba_DemObdBasic_FF_CopyFF(Dem_EventIdType EventId, uint8* dest, uint16 destSize, const uint8* src);
uint16_least rba_DemObdBasic_FF_GetFFLocation(void);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

