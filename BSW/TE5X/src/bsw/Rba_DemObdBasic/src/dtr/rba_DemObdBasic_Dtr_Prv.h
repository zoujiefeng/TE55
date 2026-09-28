/* BSW-8793 */
#ifndef RBA_DEMOBDBASIC_DTR_PRV_H
#define RBA_DEMOBDBASIC_DTR_PRV_H
#include "rba_DemObdBasic_Cfg_Dtr.h"


#if DEM_CFG_OBD_DTR

#define DEM_START_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"
extern rba_DemObdBasic_DtrDataType rba_DemObdBasic_DtrData;
#define DEM_STOP_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"


#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"
extern const uint32 rba_DemObdBasic_ObdmidMask[DEM_NUM_OF_OBDMIDMASK];
extern const rba_DemObdBasic_DtrOffsetType rba_DemObdBasic_DtrOffset[DEM_CFG_NUM_OF_OBDMIDS+1u];
extern const rba_DemObdBasic_DtrConfigType rba_DemObdBasic_DtrConfig[DEM_CFG_NUM_ALL_DTRS];
extern const Dem_DtrIdType rba_DemObdBasic_ObdmId2DtrId[DEM_CFG_NUM_ALL_DTRS];
#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

extern void rba_DemObdBasic_ClearAllDtr(void);

extern void rba_DemObdBasic_Dtr_InitCheckNvm(void);

extern void rba_DemObdBasic_Dtr_Shutdown(void);


#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"


/***************         Access macros to abstract the structure of the Dtr data        **********************/
#define rba_DemObdBasic_Dtr_ObdmidRuntimeMasks(idx_u8)           (rba_DemObdBasic_DtrData.ObdmidMaskRunTime[idx_u8])

#define rba_DemObdBasic_Dtr_DtrStatus(DtrId)                     (rba_DemObdBasic_DtrData.DtrStatus_u8[DtrId])

#define rba_DemObdBasic_Dtr_DtrTestValue(DtrId)                  (rba_DemObdBasic_DtrData.TestValue_u16[DtrId])

#define rba_DemObdBasic_Dtr_DtrLowLimitValue(DtrId)              (rba_DemObdBasic_DtrData.LowLimitValue_u16[DtrId])

#define rba_DemObdBasic_Dtr_DtrUppLimitValue(DtrId)              (rba_DemObdBasic_DtrData.UppLimitValue_u16[DtrId])


/***************         Access inline functions to abstract the configurations of DTR        **********************/

DEM_INLINE uint8 rba_DemObdBasic_Dtr_GetDtrObdMid(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].ObdMid_u8);
}

DEM_INLINE uint16 rba_DemObdBasic_Dtr_GetDtrEventIdRef(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].EventIdRef);
}

DEM_INLINE uint8 rba_DemObdBasic_Dtr_GetDtrUpdateKind(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].updateKind_u8);
}

DEM_INLINE uint8 rba_DemObdBasic_Dtr_GetDtrObdTid(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].ObdTid_u8);
}

DEM_INLINE uint8 rba_DemObdBasic_Dtr_GetDtrUaSId(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].UaSId_u8);
}

DEM_INLINE sint32 rba_DemObdBasic_Dtr_GetDtrNum1(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].numerator1_s32);
}

DEM_INLINE sint32 rba_DemObdBasic_Dtr_GetDtrNum0(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].numerator0_s32);
}

DEM_INLINE sint32 rba_DemObdBasic_Dtr_GetDtrDen0(Dem_DtrIdType DtrId)
{
    return (rba_DemObdBasic_DtrConfig[DtrId].denominator_s32);
}

DEM_INLINE uint32 rba_DemObdBasic_Dtr_GetObdmidConfigMask(uint8 index)
{
    return (rba_DemObdBasic_ObdmidMask[index]);
}

DEM_INLINE Dem_DtrIdType rba_DemObdBasic_Dtr_GetDtrIdFromTIDIndex(uint16 index)
{
    return (rba_DemObdBasic_ObdmId2DtrId[index]);
}

DEM_INLINE uint8 rba_DemObdBasic_Dtr_GetObdmidForOffset(uint16 index)
{
    return (rba_DemObdBasic_DtrOffset[index].ObdMid_u8);
}

DEM_INLINE uint16 rba_DemObdBasic_Dtr_GetOffset(uint16 index)
{
    return (rba_DemObdBasic_DtrOffset[index].Offset_u16);
}


#endif /* DEM_CFG_OBD_DTR */
#endif /* RBA_DEMOBDBASIC_DTR_PRV_H */
/* END BSW-8793 */
