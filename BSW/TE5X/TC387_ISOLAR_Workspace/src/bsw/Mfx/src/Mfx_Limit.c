


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

/*** MFX_CFG_LIMIT_S16_LOCATION ***/
#if (MFX_CFG_LIMIT_S16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_LIMIT_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_LIMIT_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint16 Mfx_Limit_s16(sint16 value, sint16 min_value, sint16 max_value)
    {
        return (Mfx_Prv_Limit_s16_Inl(value, min_value, max_value));
    }

    #if (MFX_CFG_LIMIT_S16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_LIMIT_S16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_S16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_LIMIT_S16_LOCATION ***/
#endif

/*********************************************************************************************************************/

/*** MFX_CFG_LIMIT_S32_LOCATION ***/
#if (MFX_CFG_LIMIT_S32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_LIMIT_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_LIMIT_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint32 Mfx_Limit_s32(sint32 value, sint32 min_value, sint32 max_value)
    {
        return (Mfx_Prv_Limit_s32_Inl(value, min_value, max_value));
    }

    #if (MFX_CFG_LIMIT_S32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_LIMIT_S32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_S32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_LIMIT_S32_LOCATION ***/
#endif

/*********************************************************************************************************************/

/*** MFX_CFG_LIMIT_S8_LOCATION ***/
#if (MFX_CFG_LIMIT_S8_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_LIMIT_S8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_LIMIT_S8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_S8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    sint8 Mfx_Limit_s8(sint8 value, sint8 min_value, sint8 max_value)
    {
        return (Mfx_Prv_Limit_s8_Inl(value, min_value, max_value));
    }

    #if (MFX_CFG_LIMIT_S8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_LIMIT_S8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_S8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_LIMIT_S8_LOCATION ***/
#endif

/*********************************************************************************************************************/

/*** MFX_CFG_LIMIT_U16_LOCATION ***/
#if (MFX_CFG_LIMIT_U16_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_LIMIT_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_LIMIT_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint16 Mfx_Limit_u16(uint16 value, uint16 min_value, uint16 max_value)
    {
        return (Mfx_Prv_Limit_u16_Inl(value, min_value, max_value));
    }

    #if (MFX_CFG_LIMIT_U16_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_LIMIT_U16_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_U16_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_LIMIT_U16_LOCATION ***/
#endif

/*********************************************************************************************************************/

/*** MFX_CFG_LIMIT_U32_LOCATION ***/
#if (MFX_CFG_LIMIT_U32_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_LIMIT_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_LIMIT_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint32 Mfx_Limit_u32(uint32 value, uint32 min_value, uint32 max_value)
    {
        return (Mfx_Prv_Limit_u32_Inl(value, min_value, max_value));
    }

    #if (MFX_CFG_LIMIT_U32_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_LIMIT_U32_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_U32_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_LIMIT_U32_LOCATION ***/
#endif

/*********************************************************************************************************************/

/*** MFX_CFG_LIMIT_U8_LOCATION ***/
#if (MFX_CFG_LIMIT_U8_LOCATION != MFX_CFG_LOCATION_INLINE)
    #if (MFX_CFG_LIMIT_U8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_START_SEC_CODE
    #elif (MFX_CFG_LIMIT_U8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_START_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_U8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_START_SEC_CODE_FAST
    #else
        #define MFX_START_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"

    uint8 Mfx_Limit_u8(uint8 value, uint8 min_value, uint8 max_value)
    {
        return (Mfx_Prv_Limit_u8_Inl(value, min_value, max_value));
    }

    #if (MFX_CFG_LIMIT_U8_LOCATION == MFX_CFG_LOCATION_NORMAL)
        #define MFX_STOP_SEC_CODE
    #elif (MFX_CFG_LIMIT_U8_LOCATION == MFX_CFG_LOCATION_SLOW)
        #define MFX_STOP_SEC_CODE_SLOW
    #elif (MFX_CFG_LIMIT_U8_LOCATION == MFX_CFG_LOCATION_FAST)
        #define MFX_STOP_SEC_CODE_FAST
    #else
        #define MFX_STOP_SEC_CODE
    #endif
    #include "Mfx_MemMap.h"
/*** MFX_CFG_LIMIT_U8_LOCATION ***/
#endif

/*********************************************************************************************************************/



