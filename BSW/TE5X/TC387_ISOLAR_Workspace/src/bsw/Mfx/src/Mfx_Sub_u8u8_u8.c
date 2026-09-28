


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

/*** MFX_CFG_SUB_U8U8_U8_LOCATION ***/
#if (MFX_CFG_SUB_U8U8_U8_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_SUB_U8U8_U8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_SUB_U8U8_U8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_SUB_U8U8_U8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint8 Mfx_Sub_u8u8_u8(uint8 x_value, uint8 y_value)
    {
        return (Mfx_Prv_Sub_u8u8_u8_Inl(x_value, y_value));
    }

    #if (MFX_CFG_SUB_U8U8_U8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_SUB_U8U8_U8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_SUB_U8U8_U8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_SUB_U8U8_U8_LOCATION ***/
#endif

/*********************************************************************************************************************/



