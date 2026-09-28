


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

/*** MFX_CFG_ABSP2_S32_U32_LOCATION ***/
#if (MFX_CFG_ABSP2_S32_U32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_ABSP2_S32_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_ABSP2_S32_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_ABSP2_S32_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint32 Mfx_AbsP2_s32_u32(sint32 x, sint16 a, sint16 c)
    {
        return (Mfx_Prv_AbsP2_s32_u32_Inl(x, a, c));
    }

    #if (MFX_CFG_ABSP2_S32_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_ABSP2_S32_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_ABSP2_S32_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_ABSP2_S32_U32_LOCATION ***/
#endif

/*********************************************************************************************************************/



