


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

/*** MFX_CFG_ABSDIFF_U32U32_S16_LOCATION ***/
#if (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint16 Mfx_Absdiff_u32u32_s16(uint32 x_value, uint32 y_value)
    {
        return (Mfx_Prv_Absdiff_u32u32_s16_Inl(x_value, y_value));
    }

    #if (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_ABSDIFF_U32U32_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_ABSDIFF_U32U32_S16_LOCATION ***/
#endif

/*********************************************************************************************************************/



