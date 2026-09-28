

#ifndef RBA_DEMOBDBASIC_PIDTYPES_H
#define RBA_DEMOBDBASIC_PIDTYPES_H

#include "Std_Types.h"
#include "Dem_Cfg.h"

typedef struct
{
    uint8 pid30;
/* BSW-13093 */ /* [$DD_BSWCODE 30824] */
#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||\
      (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU))
    uint32 pid21Cnt_u32;
#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU)
    boolean pid21CntSet_b;
#endif
#endif

#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||\
     ((DEM_CFG_OBD_PID31_CENTRAL != DEM_CFG_OBD_PID31_CENTRAL_OFF) &&\
      (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU)))
    uint32 pid31Cnt_u32;
#else
    uint32 pid31Cnt_u32;
#endif

#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||\
     ((DEM_CFG_OBD_PID4D_CENTRAL != DEM_CFG_OBD_PID4D_CENTRAL_OFF) &&\
      (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU)))
    uint32 pid4DCnt_u32;
#endif

#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||\
     ((DEM_CFG_OBD_PID4E_CENTRAL != DEM_CFG_OBD_PID4E_CENTRAL_OFF) &&\
      (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU)))
    uint32 pid4ECnt_u32;
#endif
/* END BSW-13093 */
} rba_DemObdBasic_PidDataType;

/***************         Access macros to abstract the structure of the data in NvM block        **********************/
/* Access to rba_DemObdBas_PidDataType */
#define rba_DemObdBasic_PidNv  (Dem_GenericNvData.pidData.pidBasicData)

#endif //RBA_DEMOBDBASIC_PIDTYPES_H
