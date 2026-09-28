


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

/*** MFX_CFG_RDIV_U16U16_U8_LOCATION ***/
#if (MFX_CFG_RDIV_U16U16_U8_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_RDIV_U16U16_U8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_RDIV_U16U16_U8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_RDIV_U16U16_U8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint8 Mfx_RDiv_u16u16_u8(uint16 x_value, uint16 y_value)
    {
        return (Mfx_Prv_RDiv_u16u16_u8_Inl(x_value, y_value));
    }

    #if (MFX_CFG_RDIV_U16U16_U8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_RDIV_U16U16_U8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_RDIV_U16U16_U8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_RDIV_U16U16_U8_LOCATION ***/
#endif

/*********************************************************************************************************************/



