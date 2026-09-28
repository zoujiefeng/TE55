


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

/*** MFX_CFG_CONVERTP2_S32_S16_LOCATION ***/
#if (MFX_CFG_CONVERTP2_S32_S16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_CONVERTP2_S32_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_CONVERTP2_S32_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_CONVERTP2_S32_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint16 Mfx_ConvertP2_s32_s16(sint32 x, sint16 a, sint16 c)
    {
        return (Mfx_Prv_ConvertP2_s32_s16_Inl(x, a, c));
    }

    #if (MFX_CFG_CONVERTP2_S32_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_CONVERTP2_S32_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_CONVERTP2_S32_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_CONVERTP2_S32_S16_LOCATION ***/
#endif

/*********************************************************************************************************************/



