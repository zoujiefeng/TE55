


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

/*** MFX_CFG_CONVERTP2_U32_U16_LOCATION ***/
#if (MFX_CFG_CONVERTP2_U32_U16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_CONVERTP2_U32_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_CONVERTP2_U32_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_CONVERTP2_U32_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint16 Mfx_ConvertP2_u32_u16(uint32 x, sint16 a, sint16 c)
    {
        return (Mfx_Prv_ConvertP2_u32_u16_Inl(x, a, c));
    }

    #if (MFX_CFG_CONVERTP2_U32_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_CONVERTP2_U32_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_CONVERTP2_U32_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_CONVERTP2_U32_U16_LOCATION ***/
#endif

/*********************************************************************************************************************/



