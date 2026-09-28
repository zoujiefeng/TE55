


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

/*** MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION ***/
#if (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint16 Mfx_RMulDiv_u16s16s16_u16(uint16 x_value, sint16 y_value, sint16 z_value)
    {
        return (Mfx_Prv_RMulDiv_u16s16s16_u16_Inl(x_value, y_value, z_value));
    }

    #if (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_RMULDIV_U16S16S16_U16_LOCATION ***/
#endif

/*********************************************************************************************************************/



