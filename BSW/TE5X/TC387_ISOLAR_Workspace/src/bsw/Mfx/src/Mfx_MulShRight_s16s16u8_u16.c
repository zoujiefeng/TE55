


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

/*** MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION ***/
#if (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint16 Mfx_MulShRight_s16s16u8_u16(sint16 x_value, sint16 y_value, uint8 shift)
    {
        return (Mfx_Prv_MulShRight_s16s16u8_u16_Inl(x_value, y_value, shift));
    }

    #if (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_MULSHRIGHT_S16S16U8_U16_LOCATION ***/
#endif

/*********************************************************************************************************************/



