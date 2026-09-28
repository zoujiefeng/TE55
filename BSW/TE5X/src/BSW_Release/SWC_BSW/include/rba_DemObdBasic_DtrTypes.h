/* BSW-8793 */
#ifndef RBA_DEMOBDBASIC_DTRTYPES_H
#define RBA_DEMOBDBASIC_DTRTYPES_H

#include "Dem_Types.h"
#include "Dem_Cfg.h"

#if DEM_CFG_OBD_DTR


#define DTR_ZERO 0U

#define DEM_DTR_DEBOUNCEDIR_CHECK_REQUIRED        0u
#define DEM_DTR_DEBOUNCEDIR_CHECK_NOTREQUIRED     1u
#define DEM_DTR_DEBOUNCEDIR_CHECK_INVALID         255u

/* Macro definitions for Dtr visibility status */
#define DEM_DTRSTATUS_VISIBLE     0u
#define DEM_DTRSTATUS_INVISIBLE   1u

#define DEM_DTR_TID_INVALID              0u

/* [$DD_BSWCODE 17277] */
typedef struct
{
    uint32 ObdmidMaskRunTime[DEM_NUM_OF_OBDMIDMASK];
    uint16 TestValue_u16[DEM_CFG_NUM_ALL_DTRS];
    uint16 LowLimitValue_u16[DEM_CFG_NUM_ALL_DTRS];
    uint16 UppLimitValue_u16[DEM_CFG_NUM_ALL_DTRS];
    uint8  DtrStatus_u8[DEM_CFG_NUM_ALL_DTRS];
} rba_DemObdBasic_DtrDataType;

/* [$DD_BSWCODE 17278] */
typedef struct
{
   sint32 denominator_s32;
   sint32 numerator0_s32;
   sint32 numerator1_s32;
   uint8 ObdMid_u8;
   uint8 ObdTid_u8;
   uint8 UaSId_u8;
   uint8 updateKind_u8;
   Dem_EventIdType EventIdRef;
}rba_DemObdBasic_DtrConfigType;

/* [$DD_BSWCODE 17276] */
typedef struct
{
    uint8 ObdMid_u8;
    Dem_DtrIdType Offset_u16;
}rba_DemObdBasic_DtrOffsetType;


#endif /* DEM_CFG_OBD_DTR */

#endif /* RBA_DEMOBDBASIC_DTRTYPES_H */
/* END BSW-8793 */
