


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

/*** MFX_CFG_ADDP2_U32U32_S32_LOCATION ***/
#if (MFX_CFG_ADDP2_U32U32_S32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_ADDP2_U32U32_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_ADDP2_U32U32_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_ADDP2_U32U32_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint32 Mfx_AddP2_u32u32_s32(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
    {
        return (Mfx_Prv_AddP2_u32u32_s32_Inl(x, y, a, b, c));
    }

    #if (MFX_CFG_ADDP2_U32U32_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_ADDP2_U32U32_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_ADDP2_U32U32_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_ADDP2_U32U32_S32_LOCATION ***/
#endif

/*********************************************************************************************************************/



