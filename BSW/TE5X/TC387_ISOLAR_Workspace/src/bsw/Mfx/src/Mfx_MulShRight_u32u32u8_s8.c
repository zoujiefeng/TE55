


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

/*** MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION ***/
#if (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint8 Mfx_MulShRight_u32u32u8_s8(uint32 x_value, uint32 y_value, uint8 shift)
    {
        return (Mfx_Prv_MulShRight_u32u32u8_s8_Inl(x_value, y_value, shift));
    }

    #if (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_MULSHRIGHT_U32U32U8_S8_LOCATION ***/
#endif

/*********************************************************************************************************************/



