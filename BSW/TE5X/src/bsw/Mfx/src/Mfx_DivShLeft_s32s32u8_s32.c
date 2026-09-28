


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

/*** MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION ***/
#if (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint32 Mfx_DivShLeft_s32s32u8_s32(sint32 x_value, sint32 y_value, uint8 shift)
    {
        return (Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(x_value, y_value, shift));
    }

    #if (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_DIVSHLEFT_S32S32U8_S32_LOCATION ***/
#endif

/*********************************************************************************************************************/



