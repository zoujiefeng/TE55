


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

/*** MFX_CFG_MUL_S16U16_S32_LOCATION ***/
#if (MFX_CFG_MUL_S16U16_S32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_MUL_S16U16_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_MUL_S16U16_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_MUL_S16U16_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint32 Mfx_Mul_s16u16_s32(sint16 x_value, uint16 y_value)
    {
        return (Mfx_Prv_Mul_s16u16_s32_Inl(x_value, y_value));
    }

    #if (MFX_CFG_MUL_S16U16_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_MUL_S16U16_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_MUL_S16U16_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_MUL_S16U16_S32_LOCATION ***/
#endif

/*********************************************************************************************************************/



