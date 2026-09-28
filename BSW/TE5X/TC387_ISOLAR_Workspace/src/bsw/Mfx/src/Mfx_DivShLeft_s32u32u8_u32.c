


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

/*** MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION ***/
#if (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint32 Mfx_DivShLeft_s32u32u8_u32(sint32 x_value, uint32 y_value, uint8 shift)
    {
        return (Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(x_value, y_value, shift));
    }

    #if (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_DIVSHLEFT_S32U32U8_U32_LOCATION ***/
#endif

/*********************************************************************************************************************/



