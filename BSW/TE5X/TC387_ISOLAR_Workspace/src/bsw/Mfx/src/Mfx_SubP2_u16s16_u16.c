


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

/*** MFX_CFG_SUBP2_U16S16_U16_LOCATION ***/
#if (MFX_CFG_SUBP2_U16S16_U16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_SUBP2_U16S16_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_SUBP2_U16S16_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_SUBP2_U16S16_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint16 Mfx_SubP2_u16s16_u16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
    {
        return (Mfx_Prv_SubP2_u16s16_u16_Inl(x, y, a, b, c));
    }

    #if (MFX_CFG_SUBP2_U16S16_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_SUBP2_U16S16_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_SUBP2_U16S16_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_SUBP2_U16S16_U16_LOCATION ***/
#endif

/*********************************************************************************************************************/



