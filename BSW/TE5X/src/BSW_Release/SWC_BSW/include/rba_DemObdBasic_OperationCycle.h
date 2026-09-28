

#ifndef RBA_DEMOBDBASIC_OPERATIONCYCLE_H
#define RBA_DEMOBDBASIC_OPERATIONCYCLE_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

boolean rba_DemObdBasic_IsDrivingCycleQualified(void);
void rba_DemObdBasic_OperationCycle_Clear(void);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

