


/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */

#define SRVLIBS

#include "Mfx.h"


/*
 **********************************************************************************************************************
 * Implementation
 **********************************************************************************************************************
 */

/*** MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION ***/
#if (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint32 Mfx_RMulDiv_s32s32u32_s32(sint32 x_value, sint32 y_value, uint32 z_value)
    {
        return (Mfx_Prv_RMulDiv_s32s32u32_s32_Inl(x_value, y_value, z_value));
    }

    #if (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_RMULDIV_S32S32U32_S32_LOCATION ***/
#endif

/*********************************************************************************************************************/



