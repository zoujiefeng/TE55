/* BSW-13093 */
#ifndef RBA_DEMOBDBASIC_DISTANCETIMEPID_PRV_H
#define RBA_DEMOBDBASIC_DISTANCETIMEPID_PRV_H

#define DISTANCE_ONE_KM         1000u
#define DISTANCE_MAX            0xFFFFFFFFu

#define TIME_ONE_MINUTE         60u
#define TIME_MAX                0xFFFFu

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)
/* [$DD_BSWCODE 30796] */
void rba_DemObdBasic_DistanceTimePid_Init(void);
/* [$DD_BSWCODE 30797] */
void rba_DemObdBasic_DistanceTimePid_MainFunction(void);
#endif

#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||\
     ((DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU) &&\
      ((DEM_CFG_OBD_PID21_CENTRAL != DEM_CFG_OBD_PID21_CENTRAL_OFF) ||\
       (DEM_CFG_OBD_PID31_CENTRAL != DEM_CFG_OBD_PID31_CENTRAL_OFF)||\
       (DEM_CFG_OBD_PID4D_CENTRAL != DEM_CFG_OBD_PID4D_CENTRAL_OFF)||\
       (DEM_CFG_OBD_PID4E_CENTRAL != DEM_CFG_OBD_PID4E_CENTRAL_OFF))))
/* [$DD_BSWCODE 30795] */
void rba_DemObdBasic_DistanceTime_Pid_Clear(void);
#endif

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif
/* END BSW-13093 */
