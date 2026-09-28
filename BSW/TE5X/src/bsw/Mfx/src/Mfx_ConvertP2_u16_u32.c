


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

/*** MFX_CFG_CONVERTP2_U16_U32_LOCATION ***/
#if (MFX_CFG_CONVERTP2_U16_U32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_CONVERTP2_U16_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_CONVERTP2_U16_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_CONVERTP2_U16_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint32 Mfx_ConvertP2_u16_u32(uint16 x, sint16 a, sint16 c)
    {
        return (Mfx_Prv_ConvertP2_u16_u32_Inl(x, a, c));
    }

    #if (MFX_CFG_CONVERTP2_U16_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_CONVERTP2_U16_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_CONVERTP2_U16_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_CONVERTP2_U16_U32_LOCATION ***/
#endif

/*********************************************************************************************************************/



