


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

/*** MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION ***/
#if (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint16 Mfx_DivShLeft_s16u16u8_s16(sint16 x_value, uint16 y_value, uint8 shift)
    {
        return (Mfx_Prv_DivShLeft_s16u16u8_s16_Inl(x_value, y_value, shift));
    }

    #if (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_DIVSHLEFT_S16U16U8_S16_LOCATION ***/
#endif

/*********************************************************************************************************************/



