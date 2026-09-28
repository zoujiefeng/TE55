

#ifndef RBA_DEMOBDBASIC_IUMPR_H
#define RBA_DEMOBDBASIC_IUMPR_H

#include "rba_DemObd_Types.h"
#include "rba_DemObdBasic_DemNvData.h"

#if DEM_CFG_OBD_IUMPR

void rba_DemObdBasic_Iumpr_Init(void);
void rba_DemObdBasic_Iumpr_InitCheckNvm(void);
void rba_DemObdBasic_Iumpr_StartDrivingCycle(void);
void rba_DemObdBasic_Iumpr_StartObdIgnitionCycle(void);
void rba_DemObdBasic_Iumpr_MainFunction(void);
void rba_DemObdBasic_Iumpr_Shutdown(void);

uint16 rba_DemObdBasic_Iumpr_GetGenDenomCntr(void);
uint16 rba_DemObdBasic_Iumpr_GetIgnCycCntr(void);

#else

#define rba_DemObdBasic_Iumpr_Init()
#define rba_DemObdBasic_Iumpr_InitCheckNvm()
#define rba_DemObdBasic_Iumpr_StartDrivingCycle()
#define rba_DemObdBasic_Iumpr_StartObdIgnitionCycle()
#define rba_DemObdBasic_Iumpr_MainFunction()
#define rba_DemObdBasic_Iumpr_Shutdown()

#endif

#endif

