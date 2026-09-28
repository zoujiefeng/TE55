

#ifndef RBA_DEMOBDBASIC_RATIO_H
#define RBA_DEMOBDBASIC_RATIO_H

#include "rba_DemObdBasic_Types.h"

#if DEM_CFG_OBD_IUMPR

#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"
/* creation of the config table for all IUMPR ratios and first initialization of it */
extern const rba_DemObdBasic_RatioConfigType rba_DemObdBasic_RatioConfig[DEM_CFG_NUM_ALL_IUMPR_RATIOS];
/* BSW-12813 */
extern const uint16 rba_DemObdBasic_GroupRatiosNum[DEM_CFG_NUM_ALL_IUMPR_GROUPS];
/* END BSW-12813 */

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

DEM_INLINE uint8 rba_DemObdBasic_Ratio_GetRatioGroup(Dem_RatioIdType idxRatio)
{
    return (rba_DemObdBasic_RatioConfig[idxRatio].group);
}

DEM_INLINE uint8 rba_DemObdBasic_Ratio_GetRatioDenGroup(Dem_RatioIdType idxRatio)
{
    return (rba_DemObdBasic_RatioConfig[idxRatio].denGroup);
}

DEM_INLINE uint8 rba_DemObdBasic_Ratio_GetRatioKind(Dem_RatioIdType idxRatio)
{
    return (rba_DemObdBasic_RatioConfig[idxRatio].type);
}

DEM_INLINE Dem_EventIdType rba_DemObdBasic_Ratio_GetEvent(Dem_RatioIdType idxRatio)
{
    return (rba_DemObdBasic_RatioConfig[idxRatio].eventRef);
}

#if DEM_CFG_IUMPR_FIM
DEM_INLINE FiM_FunctionIdType rba_DemObdBasic_Ratio_GetFID(Dem_RatioIdType idxRatio)
{
    return (rba_DemObdBasic_RatioConfig[idxRatio].fid);
}
#endif

/* BSW-12813 */
DEM_INLINE uint16 rba_DemObdBasic_Group_GetRatiosNum(uint8 idxGroup)
{
    return (rba_DemObdBasic_GroupRatiosNum[idxGroup]);
}
/* END BSW-12813 */

/********************         Masks for different bits in the status of individual ratios      ************************/
#define DEM_RATIO_STSMASK_NUMER_LOCKED      (0x01u) /* Numerator incrementation locked due to fault                            */
#define DEM_RATIO_STSMASK_DENOM_LOCKED      (0x02u) /* Denominator incrementation locked due to fault                          */
#define DEM_RATIO_STSMASK_PHYACT_COND       (0x04u) /* Physical activation condition for denominator fulfilled                 */
#define DEM_RATIO_STSMASK_NUM_RLS           (0x08u) /* Fault detection condition fulfilled (or event tested, if observer kind) */
#define DEM_RATIO_STSMASK_NUMER_INCD        (0x10u) /* Numerator incremented in the current driving cycle                      */
#define DEM_RATIO_STSMASK_DENOM_INCD        (0x20u) /* Denominator incremented in the current driving cycle                    */
#define DEM_RATIO_STSMASK_FAULT_INH         (0x40u) /* Ratio inhibited due to a tester visible fault                           */

void rba_DemObdBasic_Ratio_Init(void);
void rba_DemObdBasic_Ratio_StartDrivingCycle(void);
void rba_DemObdBasic_Ratio_UpdateRatios(uint16 numRatiosToScan, boolean updtMinRatio);
Dem_RatioIdType rba_DemObdBasic_Ratio_GetMinRatioIdxForGroup(uint8 group);

#endif

#endif

