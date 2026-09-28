

#ifndef RBA_DEMOBDBASIC_PID_H
#define RBA_DEMOBDBASIC_PID_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_Pid_Clear(void);
void rba_DemObdBasic_Pid_QualifyWarmupCycle(void);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

