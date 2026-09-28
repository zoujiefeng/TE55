

#ifndef RBA_DEMOBDBASIC_IUMPRTYPES_H
#define RBA_DEMOBDBASIC_IUMPRTYPES_H

#if DEM_CFG_OBD_IUMPR

#include "Dem_Types.h"
#include "Dem_Cfg.h"


#if DEM_CFG_IUMPR_FIM
#include "FiM_Types.h"
#endif

#define DEM_OBDIUMPR_MAXUINT16                          (0xFFFFu)
#define DEM_OBDIUMPR_MINUINT16                          (0x0000u)

/* Reverse resolution factor for the ratio [CARB requires a resolution of 0.000122/bit or approx. 1/8192 per bit] */
#define DEM_OBDIUMPR_FACT_RES_REV                       (8192u)

typedef struct
{
    Dem_EventIdType     eventRef;       /* Referenced Dem event */
    uint8               denGroup;
    uint8               group;
    uint8               type;
#if DEM_CFG_IUMPR_FIM
    FiM_FunctionIdType  fid;
#endif
} rba_DemObdBasic_RatioConfigType;

typedef uint8 rba_DemObdBasic_DenCondType;

typedef struct
{
    uint16      cntrGenDenom;
    uint16      cntrIgnCyc;

    uint16      cntrRatioNum[DEM_CFG_NUM_ALL_IUMPR_RATIOS];
    uint16      cntrRatioDenom[DEM_CFG_NUM_ALL_IUMPR_RATIOS];
    uint8       statusRatio[DEM_CFG_NUM_ALL_IUMPR_RATIOS];

    rba_DemObdBasic_DenCondType statusGenDenom;
    rba_DemObdBasic_DenCondType statusEvapDenom;
    rba_DemObdBasic_DenCondType statusColdStartDenom;
} rba_DemObdBasic_IumprNvDataType;

/***************         Access macros to abstract the structure of the data in NvM block        **********************/
/* General denominator value */
#define rba_DemObdBasic_Iumpr_GenDenom                    (rba_DemObdBasic_IumprNvData.cntrGenDenom)
/* Ignition cycle counter */
#define rba_DemObdBasic_Iumpr_IgnCycCntr                  (rba_DemObdBasic_IumprNvData.cntrIgnCyc)
/* Ratio specific numerator */
/* MR12 DIR 4.9 VIOLATION: MACRO is more efficient than function in this case */
#define rba_DemObdBasic_Iumpr_RatioNum(RatioId)           (rba_DemObdBasic_IumprNvData.cntrRatioNum[(RatioId)])
/* Ratio specific denominator */
/* MR12 DIR 4.9 VIOLATION: MACRO is more efficient than function in this case */
#define rba_DemObdBasic_Iumpr_RatioDenom(RatioId)         (rba_DemObdBasic_IumprNvData.cntrRatioDenom[(RatioId)])
/* Status of the individual ratio in the current driving cycle */
/* MR12 DIR 4.9 VIOLATION: MACRO is more efficient than function in this case */
#define rba_DemObdBasic_Iumpr_RatioSt(RatioId)            (rba_DemObdBasic_IumprNvData.statusRatio[(RatioId)])
/* Status of the General denominator condition in the current driving cycle */
#define rba_DemObdBasic_Iumpr_GenDenomStatus              (rba_DemObdBasic_IumprNvData.statusGenDenom)
/* Status of the cold start denominator in the current driving cycle */
#define rba_DemObdBasic_Iumpr_ColdStartDenomStatus        (rba_DemObdBasic_IumprNvData.statusColdStartDenom)
/* Status of the Evap denominator in the current driving cycle */
#define rba_DemObdBasic_Iumpr_EvapDenomStatus             (rba_DemObdBasic_IumprNvData.statusEvapDenom)

#endif

#endif
