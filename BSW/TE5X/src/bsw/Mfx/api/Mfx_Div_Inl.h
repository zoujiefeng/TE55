


#ifndef MFX_DIV_INL_H
#define MFX_DIV_INL_H


/*
 **********************************************************************************************************************
 *
 * List of services
 *
 * Mfx_Prv_Div_s16s16_s16_Inl
 * Mfx_Prv_Div_s16s16_s8_Inl
 * Mfx_Prv_Div_s16s16_u16_Inl
 * Mfx_Prv_Div_s16s16_u8_Inl
 * Mfx_Prv_Div_s16u16_s16_Inl
 * Mfx_Prv_Div_s16u16_s8_Inl
 * Mfx_Prv_Div_s16u16_u16_Inl
 * Mfx_Prv_Div_s16u16_u8_Inl
 * Mfx_Prv_Div_s32s16_s16_Inl
 * Mfx_Prv_Div_s32s32_s16_Inl
 * Mfx_Prv_Div_s32s32_s32_Inl
 * Mfx_Prv_Div_s32s32_s8_Inl
 * Mfx_Prv_Div_s32s32_u16_Inl
 * Mfx_Prv_Div_s32s32_u32_Inl
 * Mfx_Prv_Div_s32s32_u8_Inl
 * Mfx_Prv_Div_s32u16_u16_Inl
 * Mfx_Prv_Div_s32u32_s16_Inl
 * Mfx_Prv_Div_s32u32_s32_Inl
 * Mfx_Prv_Div_s32u32_s8_Inl
 * Mfx_Prv_Div_s32u32_u16_Inl
 * Mfx_Prv_Div_s32u32_u32_Inl
 * Mfx_Prv_Div_s32u32_u8_Inl
 * Mfx_Prv_Div_s8s8_s8_Inl
 * Mfx_Prv_Div_s8s8_u8_Inl
 * Mfx_Prv_Div_s8u8_s8_Inl
 * Mfx_Prv_Div_s8u8_u8_Inl
 * Mfx_Prv_Div_u16s16_s16_Inl
 * Mfx_Prv_Div_u16s16_s8_Inl
 * Mfx_Prv_Div_u16s16_u16_Inl
 * Mfx_Prv_Div_u16s16_u8_Inl
 * Mfx_Prv_Div_u16u16_s16_Inl
 * Mfx_Prv_Div_u16u16_s8_Inl
 * Mfx_Prv_Div_u16u16_u16_Inl
 * Mfx_Prv_Div_u16u16_u8_Inl
 * Mfx_Prv_Div_u32s32_s16_Inl
 * Mfx_Prv_Div_u32s32_s32_Inl
 * Mfx_Prv_Div_u32s32_s8_Inl
 * Mfx_Prv_Div_u32s32_u16_Inl
 * Mfx_Prv_Div_u32s32_u32_Inl
 * Mfx_Prv_Div_u32s32_u8_Inl
 * Mfx_Prv_Div_u32u16_u16_Inl
 * Mfx_Prv_Div_u32u16_u32_Inl
 * Mfx_Prv_Div_u32u32_s16_Inl
 * Mfx_Prv_Div_u32u32_s32_Inl
 * Mfx_Prv_Div_u32u32_s8_Inl
 * Mfx_Prv_Div_u32u32_u16_Inl
 * Mfx_Prv_Div_u32u32_u32_Inl
 * Mfx_Prv_Div_u32u32_u8_Inl
 * Mfx_Prv_Div_u8s8_s8_Inl
 * Mfx_Prv_Div_u8s8_u8_Inl
 * Mfx_Prv_Div_u8u8_s8_Inl
 * Mfx_Prv_Div_u8u8_u8_Inl
 * Mfx_Prv_DivP2_s16s16_s16_Inl
 * Mfx_Prv_DivP2_s16s16_u16_Inl
 * Mfx_Prv_DivP2_s16u16_s16_Inl
 * Mfx_Prv_DivP2_s16u16_u16_Inl
 * Mfx_Prv_DivP2_s32s32_s32_Inl
 * Mfx_Prv_DivP2_s32s32_u32_Inl
 * Mfx_Prv_DivP2_s32u32_s32_Inl
 * Mfx_Prv_DivP2_s32u32_u32_Inl
 * Mfx_Prv_DivP2_u16s16_s16_Inl
 * Mfx_Prv_DivP2_u16s16_u16_Inl
 * Mfx_Prv_DivP2_u16u16_s16_Inl
 * Mfx_Prv_DivP2_u16u16_u16_Inl
 * Mfx_Prv_DivP2_u32s32_s32_Inl
 * Mfx_Prv_DivP2_u32s32_u32_Inl
 * Mfx_Prv_DivP2_u32u32_s32_Inl
 * Mfx_Prv_DivP2_u32u32_u32_Inl
 * Mfx_Prv_DivShLeft_s16s16u8_s16_Inl
 * Mfx_Prv_DivShLeft_s16u16u8_s16_Inl
 * Mfx_Prv_DivShLeft_s32s32u8_s16_Inl
 * Mfx_Prv_DivShLeft_s32s32u8_s32_Inl
 * Mfx_Prv_DivShLeft_s32s32u8_s8_Inl
 * Mfx_Prv_DivShLeft_s32s32u8_u16_Inl
 * Mfx_Prv_DivShLeft_s32s32u8_u32_Inl
 * Mfx_Prv_DivShLeft_s32s32u8_u8_Inl
 * Mfx_Prv_DivShLeft_s32u32u8_s16_Inl
 * Mfx_Prv_DivShLeft_s32u32u8_s32_Inl
 * Mfx_Prv_DivShLeft_s32u32u8_s8_Inl
 * Mfx_Prv_DivShLeft_s32u32u8_u16_Inl
 * Mfx_Prv_DivShLeft_s32u32u8_u32_Inl
 * Mfx_Prv_DivShLeft_s32u32u8_u8_Inl
 * Mfx_Prv_DivShLeft_u16u16u8_u16_Inl
 * Mfx_Prv_DivShLeft_u16u16u8_u8_Inl
 * Mfx_Prv_DivShLeft_u32s32u8_s16_Inl
 * Mfx_Prv_DivShLeft_u32s32u8_s32_Inl
 * Mfx_Prv_DivShLeft_u32s32u8_s8_Inl
 * Mfx_Prv_DivShLeft_u32s32u8_u16_Inl
 * Mfx_Prv_DivShLeft_u32s32u8_u32_Inl
 * Mfx_Prv_DivShLeft_u32s32u8_u8_Inl
 * Mfx_Prv_DivShLeft_u32u32u8_s16_Inl
 * Mfx_Prv_DivShLeft_u32u32u8_s32_Inl
 * Mfx_Prv_DivShLeft_u32u32u8_s8_Inl
 * Mfx_Prv_DivShLeft_u32u32u8_u16_Inl
 * Mfx_Prv_DivShLeft_u32u32u8_u32_Inl
 * Mfx_Prv_DivShLeft_u32u32u8_u8_Inl
 * Mfx_Prv_DivShLeft_u8u8u8_u8_Inl
 * Mfx_Prv_Mod_s16_Inl
 * Mfx_Prv_Mod_s32_Inl
 * Mfx_Prv_Mod_s32s32_s16_Inl
 * Mfx_Prv_Mod_s32s32_s8_Inl
 * Mfx_Prv_Mod_s8_Inl
 * Mfx_Prv_Mod_u16_Inl
 * Mfx_Prv_Mod_u32_Inl
 * Mfx_Prv_Mod_u32u32_u16_Inl
 * Mfx_Prv_Mod_u32u32_u8_Inl
 * Mfx_Prv_Mod_u8_Inl
 * Mfx_Prv_RDiv_s16s16_s16_Inl
 * Mfx_Prv_RDiv_s16s16_s8_Inl
 * Mfx_Prv_RDiv_s16s16_u16_Inl
 * Mfx_Prv_RDiv_s16s16_u8_Inl
 * Mfx_Prv_RDiv_s16u16_s16_Inl
 * Mfx_Prv_RDiv_s16u16_s8_Inl
 * Mfx_Prv_RDiv_s16u16_u16_Inl
 * Mfx_Prv_RDiv_s16u16_u8_Inl
 * Mfx_Prv_RDiv_s32s16_s16_Inl
 * Mfx_Prv_RDiv_s32s32_s16_Inl
 * Mfx_Prv_RDiv_s32s32_s32_Inl
 * Mfx_Prv_RDiv_s32s32_s8_Inl
 * Mfx_Prv_RDiv_s32s32_u16_Inl
 * Mfx_Prv_RDiv_s32s32_u32_Inl
 * Mfx_Prv_RDiv_s32s32_u8_Inl
 * Mfx_Prv_RDiv_s32u16_u16_Inl
 * Mfx_Prv_RDiv_s32u32_s16_Inl
 * Mfx_Prv_RDiv_s32u32_s32_Inl
 * Mfx_Prv_RDiv_s32u32_s8_Inl
 * Mfx_Prv_RDiv_s32u32_u16_Inl
 * Mfx_Prv_RDiv_s32u32_u32_Inl
 * Mfx_Prv_RDiv_s32u32_u8_Inl
 * Mfx_Prv_RDiv_s8s8_s8_Inl
 * Mfx_Prv_RDiv_s8s8_u8_Inl
 * Mfx_Prv_RDiv_s8u8_s8_Inl
 * Mfx_Prv_RDiv_s8u8_u8_Inl
 * Mfx_Prv_RDiv_u16s16_s16_Inl
 * Mfx_Prv_RDiv_u16s16_s8_Inl
 * Mfx_Prv_RDiv_u16s16_u16_Inl
 * Mfx_Prv_RDiv_u16s16_u8_Inl
 * Mfx_Prv_RDiv_u16u16_s16_Inl
 * Mfx_Prv_RDiv_u16u16_s8_Inl
 * Mfx_Prv_RDiv_u16u16_u16_Inl
 * Mfx_Prv_RDiv_u16u16_u8_Inl
 * Mfx_Prv_RDiv_u32s32_s16_Inl
 * Mfx_Prv_RDiv_u32s32_s32_Inl
 * Mfx_Prv_RDiv_u32s32_s8_Inl
 * Mfx_Prv_RDiv_u32s32_u16_Inl
 * Mfx_Prv_RDiv_u32s32_u32_Inl
 * Mfx_Prv_RDiv_u32s32_u8_Inl
 * Mfx_Prv_RDiv_u32u16_u16_Inl
 * Mfx_Prv_RDiv_u32u16_u32_Inl
 * Mfx_Prv_RDiv_u32u32_s16_Inl
 * Mfx_Prv_RDiv_u32u32_s32_Inl
 * Mfx_Prv_RDiv_u32u32_s8_Inl
 * Mfx_Prv_RDiv_u32u32_u16_Inl
 * Mfx_Prv_RDiv_u32u32_u32_Inl
 * Mfx_Prv_RDiv_u32u32_u8_Inl
 * Mfx_Prv_RDiv_u8s8_s8_Inl
 * Mfx_Prv_RDiv_u8s8_u8_Inl
 * Mfx_Prv_RDiv_u8u8_s8_Inl
 * Mfx_Prv_RDiv_u8u8_u8_Inl
 *
 * Internal services:
 * Mfx_Prv_Div_u64u32_u32_Inl
 * Mfx_Prv_Div_s64s32_s32_Inl
 * Mfx_Prv_Div_s64s32_u32_Inl
 * Mfx_Prv_Div_s64u32_s32_Inl
 * Mfx_Prv_Div_s64u32_u32_Inl
 * Mfx_Prv_Div_NoOvf_s32s32_s16_Inl
 * Mfx_Prv_Div_NoOvf_s32s32_s8_Inl
 * Mfx_Prv_Div_NoOvf_s32s32_u16_Inl
 * Mfx_Prv_Div_NoOvf_s32s32_u8_Inl
 * Mfx_Prv_Div_u32u32_ux_Inl
 *
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */

LOCAL_INLINE sint16 Mfx_Prv_Div_NoOvf_s32s32_s16_Inl(sint32 x_value, sint32 y_value);

LOCAL_INLINE sint8 Mfx_Prv_Div_NoOvf_s32s32_s8_Inl(sint32 x_value, sint32 y_value);

LOCAL_INLINE uint16 Mfx_Prv_Div_NoOvf_s32s32_u16_Inl(sint32 x_value, sint32 y_value);

LOCAL_INLINE uint8 Mfx_Prv_Div_NoOvf_s32s32_u8_Inl(sint32 x_value, sint32 y_value);

LOCAL_INLINE sint16 Mfx_Prv_Div_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_s16u16_s8_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_s16u16_u8_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_s32s16_s16_Inl(sint32 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Div_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_s32u16_u16_Inl(sint32 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_s32u32_s16_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Div_s32u32_s32_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_s32u32_s8_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_s32u32_u16_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_s32u32_u32_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_s32u32_u8_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Div_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_u32u16_u16_Inl(uint32 x_value, uint16 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_u32u16_u32_Inl(uint32 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Div_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Div_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Div_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_u32u32_ux_Inl(uint32 x_value, uint32 y_value, uint32 bits);
LOCAL_INLINE sint8 Mfx_Prv_Div_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Div_u8u8_s8_Inl(uint8  x_value, uint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_Div_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_DivP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_DivP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_DivP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_DivP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_DivP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_DivP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_DivP2_s32u32_s32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_DivP2_s32u32_u32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_DivP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_DivP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_DivP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_DivP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_DivP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_DivP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_DivP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_DivP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s16u16u8_s16_Inl(sint16 x_value, uint16 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s32u32u8_s16_Inl(sint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(sint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_s32u32u8_s8_Inl(sint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_s32u32u8_u16_Inl(sint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(sint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_s32u32u8_u8_Inl(sint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_u16u16u8_u16_Inl(uint16 x_value, uint16 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u16u16u8_u8_Inl(uint16 x_value, uint16 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u8u8u8_u8_Inl(uint8 x_value, uint8 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_Mod_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mod_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mod_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mod_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mod_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mod_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Mod_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mod_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mod_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mod_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s16u16_s8_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s16u16_u8_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s32s16_s16_Inl(sint32 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_RDiv_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_RDiv_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s32u16_u16_Inl(sint32 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s32u32_s16_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_RDiv_s32u32_s32_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s32u32_s8_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s32u32_u16_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_RDiv_s32u32_u32_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s32u32_u8_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_RDiv_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_RDiv_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u32u16_u16_Inl(uint32 x_value, uint16 y_value);
LOCAL_INLINE uint32 Mfx_Prv_RDiv_u32u16_u32_Inl(uint32 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_RDiv_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_RDiv_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u8u8_u8_Inl(uint8 x_value, uint8 y_value);

/* Internal services */
LOCAL_INLINE uint32 Mfx_Prv_Div_u64u32_u32_Inl(Mfx_uint64 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Div_s64s32_s32_Inl(Mfx_sint64 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_s64s32_u32_Inl(Mfx_sint64 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Div_s64u32_s32_Inl(Mfx_sint64 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Div_s64u32_u32_Inl(Mfx_sint64 x_value, uint32 y_value);

/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */

#ifndef MFX_PRV_DIV_NOOVF_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_NoOvf_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint16 res_s16;

    if (y_value != 0L)
    {
        res_s16 = Mfx_Prv_Sat_s32_s16_Inl(x_value / y_value);
    }
    else
    {
        res_s16 = (x_value >= 0L) ? MFX_MAXSINT16 : MFX_MINSINT16;
    }

    return (res_s16);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_DIV_NOOVF_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_NoOvf_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint8 res_s8;

    if (y_value != 0L)
    {
        res_s8 = Mfx_Prv_Sat_s32_s8_Inl(x_value / y_value);
    }
    else
    {
        res_s8 = (x_value >= 0L) ? MFX_MAXSINT8 : MFX_MINSINT8;
    }

    return (res_s8);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_DIV_NOOVF_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_NoOvf_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint16 res_u16;

    if (y_value != 0L)
    {
        res_u16 = Mfx_Prv_Sat_s32_u16_Inl(x_value / y_value);
    }
    else
    {
        res_u16 = (x_value >= 0L) ? MFX_MAXUINT16_U : MFX_MINUINT16_U;
    }

    return (res_u16);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_DIV_NOOVF_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_NoOvf_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint8 res_u8;

    if (y_value != 0L)
    {
        res_u8 = Mfx_Prv_Sat_s32_u8_Inl(x_value / y_value);
    }
    else
    {
        res_u8 = (x_value >= 0L) ? MFX_MAXUINT8_U : MFX_MINUINT8_U;
    }

    return (res_u8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16s16_s16
 *
 * \brief sint16 sint16 division with sint16 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a signed 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16s16_s8
 *
 * \brief sint16 sint16 division with sint8 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a signed 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s8_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16s16_u16
 *
 * \brief sint16 sint16 division with uint16 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a signed 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16s16_u8
 *
 * \brief sint16 sint16 division with uint8 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a signed 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u8_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16u16_s16
 *
 * \brief sint16 uint16 division with sint16 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16u16_s8
 *
 * \brief sint16 uint16 division with sint8 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_s16u16_s8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s8_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16u16_s16
 *
 * \brief sint16 uint16 division with uint16 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s16u16_u8
 *
 * \brief sint16 uint16 division with uint8 saturation and check on divide by zero.
 *
 * Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_s16u16_u8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u8_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u16_s16
 *
 * \brief sint32 uint16 division with sint16 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_s32s16_s16_Inl(sint32 x_value, sint16 y_value)
{
    return (Mfx_Div_s32s32_s16(x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32s32_s16
 *
 * \brief sint32 sint32 division with sint16 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a signed 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32s32_s32
 *
 * \brief sint32 sint32 division with sint32 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a signed 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Div_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;


    /* Divide by zero */
    if(y_value == 0)
    {
        /* Limitation */
        res_s32 = ( (x_value >= 0) ? (MFX_MAXSINT32) : (MFX_MINSINT32));

    }
    else
    {
        /* Special case */
        if( (y_value == -1) && (x_value == MFX_MINSINT32) )
        {
            res_s32 = MFX_MAXSINT32;
        }
        /* Regular */
        else
        {
            res_s32 = (x_value / y_value);
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32s32_s8
 *
 * \brief sint32 sint32 division with sint8 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a signed 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32s32_u16
 *
 * \brief sint32 sint32 division with uint16 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a signed 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32s32_u32
 *
 * \brief sint32 sint32 division with uint32 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a signed 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 res_s32;


    /* Divide by zero */
    if(y_value == 0)
    {
        /* Limitation */
        res_u32 = ( (x_value >= 0) ? (MFX_MAXUINT32) : (MFX_MINUINT32));
    }
    /* Special case */
    else if( (y_value == -1) && (x_value == MFX_MINSINT32) )
    {
        res_u32 = ( ((uint32) MFX_MAXSINT32) + 1UL );
    }
    /* Regular */
    else
    {
        res_s32 = (x_value / y_value);

        /* Limitation */
        res_u32 = (res_s32 < 0) ? (MFX_MINUINT32) : ((uint32) res_s32);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32s32_u8
 *
 * \brief sint32 sint32 division with uint8 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a signed 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u16_u16
 *
 * \brief sint32 uint16 division with uint16 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_s32u16_u16_Inl(sint32 x_value, uint16 y_value)
{
    return (Mfx_Div_s32s32_u16(x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u32_s16
 *
 * \brief sint32 uint32 division with sint16 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_s32u32_s16_Inl(sint32 x_value, uint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Div_s32u32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u32_s32
 *
 * \brief sint32 uint32 division with sint32 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Div_s32u32_s32_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;


    if (y_value > MFX_MAXSINT32_U)
    {
        /* Special case */
        if ((x_value == MFX_MINSINT32) && (y_value == ((uint32) MFX_MAXSINT32 + 1UL)))
        {
            res_s32 = -1;
        }
        /* Denominator too big */
        else
        {
            res_s32 = 0;
        }
    }
    else
    {
        /* Divide by zero */
        if (y_value == 0UL)
        {
            /* Limitation */
            res_s32 = (x_value < 0) ? (MFX_MINSINT32) : (MFX_MAXSINT32);
        }
        /* Regular */
        else
        {
            res_s32 = x_value / ((sint32) y_value);
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u32_s8
 *
 * \brief sint32 uint32 division with sint8 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MAXSINT8 (MINSINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_s32u32_s8_Inl(sint32 x_value, uint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_Div_s32u32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u32_u16
 *
 * \brief sint32 uint32 division with uint16 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_s32u32_u16_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    /* Divide by zero */
    if (x_value < 0)
    {
        /* Limitation */
        res_u32 = MFX_MINUINT16;
    }
    else
    {
        /* Limitation */
        res_u32 = (y_value == 0UL) ? (MFX_MAXUINT16_U) : ( ((uint32) x_value) / y_value );
        res_u32 = ( res_u32 > ((uint32) MFX_MAXUINT16) ) ? ((uint32) MFX_MAXUINT16) : (res_u32);
    }

    return ((uint16) res_u32);
}
#endif


/*
***********************************************************************************************************************
* Mfx_Div_s32u32_u32
*
* \brief sint32 uint32 division with uint32 saturation and check on divide by zero.
*
* Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit.
* The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
*
* \param   sint32   x_value                      Operand 1, signed   32-bit variable
* \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
* \return  uint32   (x_value / y_value)          Result,    unsigned 32-bit
***********************************************************************************************************************
*/
#ifndef MFX_PRV_DIV_S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_s32u32_u32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    /* Divide by zero */
    if (x_value < 0)
    {
        /* Limitation */
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        /* Limitation */
        res_u32 = (y_value == 0UL) ? (MFX_MAXUINT32) : ( ((uint32) x_value) / y_value );
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s32u32_u8
 *
 * \brief sint32 uint32 division with uint8 saturation and check on divide by zero.
 *
 * Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_s32u32_u8_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    /* Divide by zero */
    if (x_value < 0)
    {
        /* Limitation */
        res_u32 = MFX_MINUINT8;
    }
    else
    {
        /* Limitation */
        res_u32 = (y_value == 0UL) ? (MFX_MAXUINT8_U) : ( ((uint32) x_value) / y_value );
        res_u32 = ( res_u32 > ((uint32) MFX_MAXUINT8) ) ? ((uint32) MFX_MAXUINT8) : (res_u32);
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s8s8_s8
 *
 * \brief sint8 sint8 division with sint8 saturation and check on divide by zero.
 *
 * Divide a signed 8-bit variable by a signed 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint8    x_value                      Operand 1, signed  8-bit variable
 * \param   sint8    y_value                      Operand 2, signed  8-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Div_s16s16_s8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s8s8_u8
 *
 * \brief sint8 sint8 division with uint8 saturation and check on divide by zero.
 *
 * Divide a signed 8-bit variable by a signed 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint8    x_value                      Operand 1, signed    8-bit variable
 * \param   sint8    y_value                      Operand 2, signed    8-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Div_s16s16_u8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s8u8_s8
 *
 * \brief sint8 uint8 division with sint8 saturation and check on divide by zero.
 *
 * Divide a signed 8-bit variable by a unsigned 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint8    x_value                      Operand 1, signed    8-bit variable
 * \param   uint8    y_value                      Operand 2, unsigned  8-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Div_s16u16_s8((sint16)x_value, (uint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s8u8_u8
 *
 * \brief sint8 uint8 division with uint8 saturation and check on divide by zero.
 *
 * Divide a signed 8-bit variable by a unsigned 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint8    x_value                      Operand 1, signed    8-bit variable
 * \param   uint8    y_value                      Operand 2, unsigned  8-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Div_s16u16_u8((sint16)x_value, (uint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16s16_s16
 *
 * \brief uint16 sint16 division with sint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16s16_s8
 *
 * \brief uint16 sint16 division with sint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed 16-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s8_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16s16_u16
 *
 * \brief uint16 sint16 division with uint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16s16_u8
 *
 * \brief uint16 sint16 division with uint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed 16-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u8_Inl((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16u16_s16
 *
 * \brief uint16 uint16 division with sint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_s16(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16u16_s8
 *
 * \brief uint16 uint16 division with sint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_s8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16u16_u16
 *
 * \brief uint16 sint16 division with uint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    uint16 res_u16;

    if (y_value != 0U)
    {
        res_u16 = (x_value / y_value);
    }
    else
    {
        res_u16 = MFX_MAXUINT16_U;
    }

    return (res_u16);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u16u16_u8
 *
 * \brief uint16 uint16 division with uint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    uint8 res_u8;

    if (y_value != 0U)
    {
        res_u8 = Mfx_Prv_Sat_u32_u8_Inl(x_value / y_value);
    }
    else
    {
        res_u8 = MFX_MAXUINT8_U;
    }

    return (res_u8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32s32_s16
 *
 * \brief uint32 sint32 division with sint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value / y_value)            Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Div_u32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32s32_s32
 *
 * \brief uint32 sint32 division with sint32 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Div_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 yAbs_u32;
    uint32 tmp_u32;
    uint32 resAbs_u32;
    uint32 tmp1_u32;

    /*
    tmp_u32 will be 0x00000000 for a positive y_value and 0xFFFFFFFF for a negative y_value
    */
    tmp_u32 = (y_value >= 0L) ? MFX_MINUINT32 : MFX_MAXUINT32;
    yAbs_u32 = ((uint32)y_value ^ tmp_u32) - tmp_u32;

    res_s32 = MFX_MAXSINT32;
    if (yAbs_u32 > 0UL)
    {
        resAbs_u32 = (x_value / yAbs_u32);
        /*
        If the MSB is not set after division, there cannot be any sint32 overflow.
        Negate the result if y_value is negative (1st part of 2's complement).
        Note: The case of tmp_u32=|MINSINT32| and y_value=-1 is treated as overflow,
        but leads to the correct result due to the 2nd part of the 2's complement.
        */
        if ((sint32)resAbs_u32 >= 0L)
        {
            tmp1_u32 = resAbs_u32 ^ tmp_u32 ;
            res_s32 = (sint32)tmp1_u32;
        }
        /*
        We have 2 cases that should succeed here:
         - no overflow after the division: 2nd part of 2's complement
         - overflow after the division: res_s32 stays MAXSINT32 if y_value is positive,
           it gets incremented and reaches MINSINT32 if y_value is negative
        */
        res_s32 = res_s32 - (sint32)tmp_u32;
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32s32_s8
 *
 * \brief uint32 sint32 division with sint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_Div_u32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32s32_u16
 *
 * \brief uint32 sint32 division with uint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    /* Divide by zero */
    if (y_value < 0)
    {
        /* Limitation */
        res_u32 = MFX_MINUINT16;
    }
    else
    {
        /* Limitation */
        res_u32 = (y_value == 0) ? (MFX_MAXUINT16_U) : ( x_value / ((uint32) y_value) );
        res_u32 = ( res_u32 > ((uint32) MFX_MAXUINT16) ) ? ((uint32) MFX_MAXUINT16) : (res_u32);
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32s32_u32
 *
 * \brief uint32 sint32 division with uint32 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    /* Divide by zero */
    if (y_value < 0)
    {
        /* Limitation */
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        /* Limitation */
        res_u32 = (y_value == 0) ? (MFX_MAXUINT32) : ( x_value / ((uint32) y_value) );
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32s32_u8
 *
 * \brief uint32 sint32 division with uint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    /* Divide by zero */
    if (y_value < 0)
    {
        /* Limitation */
        res_u32 = MFX_MINUINT8;
    }
    else
    {
        /* Limitation */
        res_u32 = (y_value == 0) ? (MFX_MAXUINT8_U) : ( x_value / ((uint32) y_value) );
        res_u32 = ( res_u32 > ((uint32) MFX_MAXUINT8) ) ? ((uint32) MFX_MAXUINT8) : (res_u32);
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u16_u16
 *
 * \brief uint32 uint16 division with uint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_u32u16_u16_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_u16(x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u16_u32
 *
 * \brief uint32 uint16 division with uint32 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 16-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U16_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_u32u16_u32_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_u32(x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u32_s16
 *
 * \brief sint32 uint32 division with sint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Div_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    return ((sint16)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 15U));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u32_s32
 *
 * \brief sint32 uint32 division with sint32 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Div_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    return ((sint32)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 31U));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u32_s8
 *
 * \brief sint32 uint32 division with sint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    return ((sint8)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 7U));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u32_u16
 *
 * \brief uint32 uint32 division with uint16 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Div_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    return ((uint16)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 16U));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u32_u32
 *
 * \brief uint32 uint32 division with uint32 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    return (Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 32U));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u32u32_u8
 *
 * \brief uint32 uint32 division with uint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8    (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    return ((uint8)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 8U));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u8s8_s8
 *
 * \brief uint8 sint8 division with sint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 8-bit variable by a signed 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   sint8   y_value                      Operand 2, signed    8-bit variable
 * \return  sint8   (x_value / y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Div_u16s16_s8((uint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u8s8_u8
 *
 * \brief uint8 sint8 division with uint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 8-bit variable by a signed 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   sint8   y_value                      Operand 2, signed    8-bit variable
 * \return  uint8   (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Div_u16s16_u8((uint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u8u8_s8
 *
 * \brief uint8 uint8 division with sint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 8-bit variable by a unsigned 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint8    x_value                      Operand 1, unsigned 8-bit variable
 * \param   uint8    y_value                      Operand 2, unsigned 8-bit variable
 * \return  sint8    (x_value / y_value)          Result,    signed 8-bit  variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Div_u8u8_s8_Inl(uint8  x_value, uint8  y_value)
{
    return (Mfx_Div_u16u16_s8((uint16)x_value, (uint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u8u8_u8
 *
 * \brief uint8 uint8 division with uint8 saturation and check on divide by zero.
 *
 * Divide a unsigned 8-bit variable by a unsigned 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned  8-bit variable
 * \return  uint8   (x_value / y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Div_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Div_u16u16_u8((uint16)x_value, (uint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s16s16_s16
 *
 * \brief   sint16 sint16 Division with 2^n scaling with the result checked for sint16 saturation and Divide by Zero.
 * Scale a sint16 variable with 2^n and then divide with sint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint16 x          Integer value of the fixed-point operand.
 * \param   sint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    boolean flag_b = FALSE;
    uint32 tmp_u32;

    /* Divide by zero - Overflow */
    if (y == 0)
    {
        flag_b = TRUE;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            if (x < 0)
            {
                tmp_u32 = ((uint32) -x >> (uint32)(shft_s32));
                /* Shift on negative input */
                res_s32 = -((sint32) tmp_u32);
            }
            else
            {
                tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
                /* Shift on positive input */
                res_s32 = (sint32)tmp_u32;
            }
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;

            /* Overflow check after shift, but before division */
            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L) // If the number was signed
            {
                // Patch in the sign bits:
                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;


            /* No overflow or underflow, if the reverse shift reproduces the input x
             Special case:- When x= MINSINT16, y= -1, shift = 16. Here Reverse Shift
             reproduces the same input even after over-flowing. */
            if ((shft_rev_s32 != (sint32) x) || (res_s32 == MFX_MINSINT32))
            {
                /* Flag is set during overflow / underflow cases */
                flag_b = TRUE;
            }
        }
    }
    if (flag_b == FALSE)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_s32 = res_s32 / (sint32) y;
    }
    else
    {
        /* Flag is set when one of the inputs is negative */
        flag_b =  (x < 0) != (y < 0);

        /* Result limited to sint16 saturation when y=0 / overflow/underflow during shift */
        res_s32 = (flag_b == FALSE) ? MFX_MAXSINT16 : MFX_MINSINT16;
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }
    if (res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s16s16_u16
 *
 * \brief   sint16 sint16 Division with 2^n scaling with the result checked for uint16 saturation and Divide by Zero.
 * Scale a sint16 variable with 2^n and then divide with sint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint16 x          Integer value of the fixed-point operand.
 * \param   uint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    uint32 res_u32 = 0UL;
    boolean flag_b = FALSE;
    uint32 tmp_u32;

    /* Divide by zero - Overflow */
    if (y == 0)
    {
        /* To reduce run-time & code size, res_u32 is used as an overflow_flag_u32
         and also to store the return value */
        flag_b = TRUE;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            if (x < 0)
            {
                tmp_u32 = ((uint32) -x >> (uint32)(shft_s32));
                /* Shift on negative input */
                res_s32 = -((sint32)tmp_u32);
            }
            else
            {
                tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
                /* Shift on positive input */
                res_s32 = (sint32)tmp_u32;
            }
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32 ;

            /* Overflow check after shift, but before division */
            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L) // If the number was signed
            {
                // Patch in the sign bits:
                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;

            /* No overflow or underflow, if the reverse shift reproduces the input x
             Special case:- When x= MINSINT16, y= -1, shift = 16. Here Reverse Shift
             reproduces the same input even after over-flowing. */
            if ((shft_rev_s32 != (sint32) x) || (res_s32 == MFX_MINSINT32))
            {
                /* Flag is set during overflow / underflow cases */
                flag_b = TRUE;
            }
        }
    }
    if (flag_b == FALSE)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_s32 = res_s32 / (sint32) y;
    }
    else
    {
        /* Flag is set when one of the inputs is negative */
        flag_b =  (x < 0) !=  (y < 0);

        /* Result limited to sint16 saturation when y=0 / overflow/ underflow during shift */
        res_s32 = (flag_b == FALSE) ? MFX_MAXUINT16 : MFX_MINUINT16;
    }
    if (res_s32 > 0)
    {
        /* Result is stored in uint32 variable to reduce code size */
        res_u32 = (uint32) res_s32;
    }
    else
    {
        /* If either input is negative, then the result is zero */
        res_u32 = 0UL;
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16_U;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s16u16_s16
 *
 * \brief   sint16 uint16 Division with 2^n scaling with the result checked for sint16 saturation and Divide by Zero.
 * Scale a sint16 variable with 2^n and then divide with uint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint16 x          Integer value of the fixed-point operand.
 * \param   uint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow,
 *                            MAXSINT16 or MINSINT16 is the respective result.
 *                            The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31
 *
 **************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    boolean flag_b = FALSE;
    uint32 tmp_u32;

    /* Divide by zero - Overflow */
    if (y == 0UL)
    {
        flag_b = TRUE;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            if (x < 0)
            {
                tmp_u32 = ((uint32) -x >> (uint32)(shft_s32));
                /* Shift on negative input */
                res_s32 = -((sint32)tmp_u32);
            }
            else
            {
                tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
                /* Shift on positive input */
                res_s32 = (sint32)tmp_u32;
            }
        }
        else
        {
            tmp_u32 =  (((uint32) x) << ((uint32)shft_s32));
            res_s32 = (sint32)tmp_u32;

            /* Overflow check after shift, but before division */
            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L) // If the number was signed
            {
                // Patch in the sign bits:
                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;

            /* No overflow or underflow, if the reverse shift reproduces the input x */
            if (shft_rev_s32 != (sint32) x)
            {

                /* Flag is set during overflow / underflow cases */
                flag_b = TRUE;

            }
        }
    }

    if (flag_b == FALSE)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_s32 = res_s32 / (sint32) ((uint32) y);
    }
    else
    {
        /* Result limited to sint16 saturation when y=0 / overflow/underflow during shift */
        res_s32 = (x >= 0) ? MFX_MAXSINT16 : MFX_MINSINT16;
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }
    if (res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s16u16_u16
 *
 * \brief   sint16 uint16 Division with 2^n scaling with the result checked for uint16 saturation and Divide by Zero.
 * Scale a sint16 variable with 2^n and then divide with uint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint16 x          Integer value of the fixed-point operand.
 * \param   uint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32 = 0UL;
    sint32 shft_s32;
    uint32 shft_rev_u32;
    boolean flag_b = FALSE;

    /* Divide by zero - Overflow or if x is negative - overflow /underflow */
    if ((y == 0UL) || (x < 0))
    {
        flag_b = TRUE;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* Shift on positive input */
        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            res_u32 = (uint32) x >> (uint32)(shft_s32);
        }
        else
        {
            res_u32 = (uint32) x << (uint32)(shft_s32);

            /* Overflow check after shift, but before division */
            shft_rev_u32 = (res_u32 >> (uint32)shft_s32);

            /* No overflow or underflow, if the reverse shift reproduces the input x */
            if (shft_rev_u32 != (uint32) x)
            {

                /* Flag is set during overflow / underflow cases */
                flag_b = TRUE;

            }
        }
    }
    if (flag_b == FALSE)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_u32 = res_u32 / (uint32) y;
    }
    else
    {
        /* Result limited to sint16 saturation when y=0 OR overflow/underflow during shift */
        res_u32 = (uint32) ((x >= 0) ? MFX_MAXUINT16_U : MFX_MINUINT16_U);
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s32s32_s32
 *
 * \brief   sint32 sint32 Division with 2^n scaling with the result checked for sint32 saturation and Divide by Zero.
 * Scale a sint32 variable with 2^n and then divide with sint32.
 * Result is limited to MAXSINT32 or MINSINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x          Integer value of the fixed-point operand.
 * \param   sint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * Result is ((2 ^ (c + b - a) * x)/y) in the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 sign_u32 = 0UL;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (x < 0)
    {
        /* To obtain the absolute value & sign of result with respect to x */
        x = -x;
        sign_u32 = 1UL;
    }
    if (y == 0)
    {
        /* Division by zero - Overflow or underflow */
        res_s64.s64s.l = MFX_MAXSINT32_U + 1UL;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);
        if (y < 0)
        {
            /* To obtain the absolute value of y & sign_u32 of result with respect to
             x & y */
            y = -y;
            sign_u32 = sign_u32 ^ 1UL;
        }

        /* If the resultant radix > 31, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));

            /* If (2^radix * x) > 2^63, Division cannot bring back the result
             to 32-bit range. Hence x > (2^(63-radix)) results in overflow */
            if (((uint32) x) > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = MFX_MAXSINT32_U + 1UL;
            }
            else
            {
                /* If x <(2^(63-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                tmp_u32 = (((uint32) x) << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;
                /* If radix < 0, LSB will be x right-shifted '-radix' times */
                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));

                /* If radix is negative, MSB will be zero */
                res_s64.s64s.h = 0;
            }
            else
            {
                /* If 0 < radix < 31, LSB will be x left-shifted 'radix' times */
                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);

                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                tmp_u32 = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }
    }

    /* Underflow or overflow check on result of division OR when y = 0 OR when
     shifted x value exceeds 64-bits */
    if (res_s64.s64s.l > MFX_MAXSINT32_U)
    {
        /* Underflow check */
        if (sign_u32 == 1UL)
        {
            res_s64.s64s.l = MFX_MINSINT32_U;
        }
        /* Overflow check */
        else
        {
            res_s64.s64s.l = MFX_MAXSINT32_U;
        }
    }

    /* Change sign in case x or y is negative */
    if (sign_u32 == 1UL)
    {
        res_s64.s64s.l = (uint32) (-(sint32) res_s64.s64s.l);
    }

    return ((sint32) res_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s32s32_u32
 *
 * \brief   sint32 sint32 Division with 2^n scaling with the result checked for uint32 saturation and Divide by Zero.
 * Scale a sint32 variable with 2^n and then divide with sint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x          Integer value of the fixed-point operand.
 * \param   sint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    /* To obtain the absolute value & sign of x */
    if (x < 0)
    {
        x = -x;
        flag_u32 = 1UL;
    }

    /* To obtain the absolute value & sign of y. This avoids multiple comparisons &
     division for positive & negative cases */
    if (y < 0)
    {
        y = -y;
        flag_u32 = flag_u32 ^ 1UL;
    }

    /* If one of the inputs is negative, output is MINUINT32 */
    if (flag_u32 == 1UL)
    {
        res_s64.s64s.l = MFX_MINUINT32;
    }
    else if (y == 0)
    {
        /* Division by zero - Overflow */
        res_s64.s64s.l = MFX_MAXUINT32;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* If the resultant radix > 31, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));

            /* If (2^radix * x) > 2^63, Division cannot bring back the result
             to 32-bit range. Hence x > (2^(63-radix)) results in overflow */
            if (((uint32) x) > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = MFX_MAXUINT32;
            }
            else
            {
                /* If x <(2^(63-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix - 32) times */
                tmp_u32 = ((uint32) x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {

            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;
                /* If radix < 0, LSB will be x right-shifted '-radix' times */
                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));
                /* If radix is negative, MSB will be zero */
                res_s64.s64s.h = 0L;
            }
            else
            {
                /* If 0 < radix < 31, LSB will be x left-shifted 'radix' times */
                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);

                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                tmp_u32 = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32 ;
            }
        }
        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }
    }

    return (res_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s32u32_s32
 *
 * \brief   sint32 uint32 Division with 2^n scaling with the result checked for sint32 saturation and Divide by Zero.
 * Scale a sint32 variable with 2^n and then divide with uint32.
 * Result is limited to MAXSINT32 or MINSINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x          Integer value of the fixed-point operand.
 * \param   uint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivP2_s32u32_s32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 sign_u32 = 0UL;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (x < 0)
    {
        /* To obtain the absolute value & sign of result with respect to x */
        x = -x;
        sign_u32 = 1UL;
    }
    if (y == 0UL)
    {
        /* Division by zero - Overflow or underflow */
        res_s64.s64s.l = MFX_MAXSINT32_U + 1UL;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* If the resultant radix > 31, check for overflow/underflow */
        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));

            /* If (2^radix * x) > 2^63, Division cannot bring back the result
             to 32-bit range. Hence x > (2^(63-radix)) results in overflow */
            if (((uint32) x) > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = MFX_MAXSINT32_U + 1UL;
            }
            else
            {
                /* If x <(2^(63-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                tmp_u32 = ((uint32) x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {

            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;
                /* If radix < 0, LSB will be x right-shifted '-radix' times */
                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));

                /* If radix is negative, MSB will be zero */
                res_s64.s64s.h = 0;
            }
            else
            {
                /* If 0 < radix < 31, LSB will be x left-shifted 'radix' times */
                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);

                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                tmp_u32 =  ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, y);
        }
    }

    /* Underflow or overflow check on result of division OR
     when y = 0 OR when shifted x value exceeds 64-bits */
    if (res_s64.s64s.l > MFX_MAXSINT32_U)
    {
        /* Underflow check */
        if (sign_u32 == 1UL)
        {
            res_s64.s64s.l = MFX_MINSINT32_U;
        }
        /* Overflow check */
        else
        {
            res_s64.s64s.l = MFX_MAXSINT32;
        }
    }

    /* Change sign in case x is negative */
    if (sign_u32 == 1UL)
    {
        res_s64.s64s.l = (uint32) (-(sint32) res_s64.s64s.l);
    }

    return ((sint32) res_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_s32u32_u32
 *
 * \brief   sint32 uint32 Division with 2^n scaling with the result checked for uint32 saturation and Divide by Zero.
 * Scale a sint32 variable with 2^n and then divide with uint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x          Integer value of the fixed-point operand.
 * \param   uint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                        value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivP2_s32u32_u32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (x < 0)
    {
        /* Result saturates to MINUINT32 if x is negative */
        res_s64.s64s.l = MFX_MINUINT32;
    }
    else if (y == 0UL)
    {
        /* Division by zero - Overflow */
        res_s64.s64s.l = MFX_MAXUINT32;
        ;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* If the resultant radix > 32, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 32)
        {
            res_s64.s64s.l = (1UL << (64UL - (uint32)radix_s32));

            /* If (2^radix * x) >= 2^64, Division cannot bring back the result
             to 32-bit range. Hence x >= (2^(64-radix)) results in overflow */
            if (((uint32) x) >= (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = MFX_MAXUINT32;
            }
            else
            {
                /* If x <(2^(64-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                tmp_u32 =  ((uint32) x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 <= 0)
            {
                radix_s32 = -radix_s32;
                /* If radix <= 0, LSB will be x right-shifted '-radix' times */
                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));

                /* If radix is negative, MSB will be zero */
                res_s64.s64s.h = 0L;
            }
			else if(radix_s32 == 32)
            {
                /* Since the radix is 32, LSB is equal to 0 */
                res_s64.s64s.l = 0uL;
                /* Since the radix is 32, MSB is equal to x */
                res_s64.s64s.h = x;
            }
            else
            {
                /* If 0 < radix < 32, LSB will be x left-shifted 'radix' times */
                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);

                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                tmp_u32  = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, y);
        }
    }

    return (res_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u16s16_s16
 *
 * \brief   uint16 sint16 Division with 2^n scaling with the result checked for sint16 saturation and Divide by Zero.
 * Scale a uint16 variable with 2^n and then divide with sint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively

 * \param   uint16 x          Integer value of the fixed-point operand.
 * \param   sint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    /* Divide by zero - Overflow */
    if (y == 0)
    {
        flag_u32 = 1UL;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* Shift on positive input */
        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;

            /* Overflow check after shift, but before division */
            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L) // If the number was signed
            {
                // Patch in the sign bits:
                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;

            /* No overflow or underflow, if the reverse shift reproduces the input x */
            if (shft_rev_s32 != (sint32) x)
            {
                /* Flag is set during overflow / underflow cases */
                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_s32 = (sint32) res_s32 / (sint32) y;
    }
    else
    {
        /* Result limited to sint16 saturation when y=0 / overflow/underflow during shift */
        res_s32 = (y >= 0) ? MFX_MAXSINT16 : MFX_MINSINT16;
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }
    if (res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u16s16_u16
 *
 * \brief   uint16 sint16 Division with 2^n scaling with the result checked for uint16 saturation and Divide by Zero.
 * Scale a uint16 variable with 2^n and then divide with sint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint16 x          Integer value of the fixed-point operand.
 * \param   sint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32 = 0UL;
    sint32 shft_s32;
    uint32 shft_rev_u32;
    uint32 flag_u32 = 0UL;

    /* Divide by zero - Overflow */
    if (y == 0)
    {
        flag_u32 = 1UL;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* Shift on positive input */
        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            res_u32 = (uint32) x >> (uint32)(shft_s32);
        }
        else
        {
            res_u32 = (uint32) x << (uint32)(shft_s32);

            /* Overflow check after shift, but before division */
            shft_rev_u32 = (res_u32 >> (uint32)shft_s32);

            /* No overflow or underflow, if the reverse shift reproduces the input x */
            if (shft_rev_u32 != (uint32) x)
            {
                /* Flag is set during overflow / underflow cases */
                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_u32 = (uint32) res_u32 / (uint32) ((sint32) y);
    }
    if (flag_u32 == 1UL)
    {
        /* Result limited to sint16 saturation when y=0 / overflow/underflow during shift */
        res_u32 = (uint32) ((y >= 0) ? MFX_MAXUINT16_U : MFX_MINUINT16_U);
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16_U;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u16u16_s16
 *
 * \brief   uint16 uint16 Division with 2^n scaling with the result checked for sint16 saturation and Divide by Zero.
 * Scale a uint16 variable with 2^n and then divide with uint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint16 x          Integer value of the fixed-point operand.
 * \param   uint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31

 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    /* Divide by zero - Overflow */
    if (y == 0u)
    {
        flag_u32 = 1UL;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* Shift on positive input */
        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;

            /* Overflow check after shift, but before division */
            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L) // If the number was signed
            {
                // Patch in the sign bits:
                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;

            /* No overflow or underflow, if the reverse shift reproduces the input x */
            if (shft_rev_s32 != (sint32) x)
            {
                /* Flag is set during overflow / underflow cases */
                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_s32 = (sint32) res_s32 / (sint32) ((uint32) y);
    }
    else
    {
        /* Result limited to sint16 saturation when y=0 / overflow/underflow during shift */
        res_s32 = MFX_MAXSINT16;
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u16u16_u16
 *
 * \brief   uint16 uint16 Division with 2^n scaling with the result checked for uint16 saturation and Divide by Zero.
 * Scale a uint16 variable with 2^n and then divide with uint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint16 x          Integer value of the fixed-point operand.
 * \param   uint16 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 * \The result is ((2 ^ (c + b - a) * x)/y) and the valid range is -15 <= (c + b -a) <= 31
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32 = 0UL;
    sint32 shft_s32;
    uint32 shft_rev_u32;
    uint32 flag_u32 = 0UL;

    /* Divide by Zero */
    if (y == 0UL)
    {
        flag_u32 = 1UL;
    }
    else
    {
        /* Calculation of resultant radix */
        shft_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* Shift on positive input */
        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            res_u32 = (uint32) x >> (uint32)(shft_s32);
        }
        else
        {
            res_u32 = (uint32) x << (uint32)(shft_s32);

            /* Overflow check after shift, but before division */
            shft_rev_u32 = (res_u32 >> (uint32)shft_s32);

            /* No overflow or underflow, if the reverse shift reproduces the input x */
            if (shft_rev_u32 != (uint32) x)
            {
                /* Flag is set during overflow / underflow cases */
                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {
        /* 32-bit Division is required only when the result after shift is in the valid range */
        res_u32 = res_u32 / (uint32) y;
    }
    else
    {
        /* Calculation of result in case of overflow/underflow during the shift
         for example,x = 2^15 and shft_s32 = 31 */
        res_u32 = MFX_MAXUINT16_U;
    }

    /* Result limited to sint16 saturation in case of overflow or underflow after Division */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16_U;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u32s32_s32
 *
 * \brief   uint32 sint32 Division with 2^n scaling with the result checked for sint32 saturation and Divide by Zero.
 * Scale a uint32 variable with 2^n and then divide with sint32.
 * Result is limited to MAXSINT32 or MINSINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x          Integer value of the fixed-point operand.
 * \param   sint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 sign_u32 = 0UL;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (y == 0)
    {
        /* Division by zero - Overflow */
        res_s64.s64s.l = MFX_MAXSINT32;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);
        if (y < 0)
        {
            /* To obtain the absolute value of x & sign of result */
            y = -y;
            sign_u32 = 1UL;
        }

        /* If the resultant radix > 31, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));

            /* If (2^radix * x) > 2^63, Division cannot bring back the result
             to 32-bit range. Hence x > (2^(63-radix)) results in overflow */
            if (x > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = MFX_MAXSINT32_U + 1UL;
            }
            else
            {
                /* If x <(2^(63-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                tmp_u32 = (x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;
                /* If radix < 0, LSB will be x right-shifted '-radix' times */
                res_s64.s64s.l = (x >> (uint32)(radix_s32));

                /* If radix is negative, MSB will be zero */
                res_s64.s64s.h = 0;
            }
            else
            {
                /* If 0 < radix < 31, LSB will be x left-shifted 'radix' times */
                res_s64.s64s.l = (x << (uint32)radix_s32);

                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                tmp_u32 =  (x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }

        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }

        /* Underflow or overflow check on result of division OR when y = 0 OR when
         shifted x value exceeds 64-bits */
        if (res_s64.s64s.l > MFX_MAXSINT32_U)
        {
            /* Underflow check */
            if (sign_u32 == 1UL)
            {
                res_s64.s64s.l = MFX_MINSINT32_U;
            }

            /* Overflow check */
            else
            {
                res_s64.s64s.l = MFX_MAXSINT32;
            }
        }

        /* Change sign in case y is negative */
        if (sign_u32 == 1UL)
        {
            res_s64.s64s.l = (uint32) (-(sint32) res_s64.s64s.l);
        }
    }

    return ((sint32) res_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u32s32_u32
 *
 * \brief   uint32 sint32 Division with 2^n scaling with the result checked for uint32 saturation and Divide by Zero.
 * Scale a uint32 variable with 2^n and then divide with sint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x          Integer value of the fixed-point operand.
 * \param   sint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (y < 0)
    {
        /* Result is MINUINT32 if y is negative */
        res_s64.s64s.l = MFX_MINUINT32;
    }
    else if (y == 0)
    {
        /* Division by zero - Overflow or underflow */
        res_s64.s64s.l = MFX_MAXUINT32;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* If the resultant radix > 31, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 31L)
        {
            res_s64.s64s.l = (uint32) (1UL << (63UL - (uint32)radix_s32));

            /* If (2^radix * x) > 2^63, Division cannot bring back the result
             to 32-bit range. Hence x > (2^(63-radix)) results in overflow */
            if (x > res_s64.s64s.l)
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = MFX_MAXUINT32;
            }
            else
            {
                /* If x <(2^(63-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                tmp_u32 =  (x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 < 0)
            {
                /* If radix < 0, LSB will be x right-shifted '-radix' times */
                radix_s32 = -radix_s32;
                res_s64.s64s.l = (x >> (uint32)(radix_s32));
                /* If radix is negative, MSB will be zero */
                res_s64.s64s.h = 0;
            }
            else
            {
                /* If 0 < radix < 31, LSB will be x left-shifted 'radix' times */
                res_s64.s64s.l = (x << (uint32)radix_s32);
                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                tmp_u32 = (x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }
    }

    return (res_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u32u32_s32
 *
 * \brief   uint32 uint32 Division with 2^n scaling with the result checked for sint32 saturation and Divide by Zero.
 * Scale a uint32 variable with 2^n and then divide with uint32.
 * Result is limited to MAXSINT32 or MINSINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x          Integer value of the fixed-point operand.
 * \param   uint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 *                            value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_uint64u res_u64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;

    if (y == 0UL)
    {
        /* Division by zero - Overflow or underflow */
        res_u64.u64s.l = MFX_MAXSINT32;
    }
    else
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* If the resultant radix > 31, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 31L)
        {
            res_u64.u64s.l = (1UL << (63UL - (uint32)radix_s32));

            /* If (2^radix * x) > 2^63, Division cannot bring back the result
             to 32-bit range. Hence x > (2^(63-radix)) results in overflow */
            if (x > (res_u64.u64s.l))
            {
                flag_u32 = 1UL;
                res_u64.u64s.l = MFX_MAXSINT32;
            }
            else
            {
                /* If x <(2^(63-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                res_u64.u64s.h = (x << ((uint32)radix_s32 - 32UL));
                res_u64.u64s.l = 0;
            }
        }
        else
        {

            if (radix_s32 < 0)
            {
                /* If radix < 0, LSB will be x right-shifted '-radix' times */
                radix_s32 = -radix_s32;
                res_u64.u64s.l = (x >> (uint32)(radix_s32));

                /* If radix is negative, MSB will be zero */
                res_u64.u64s.h = 0;
            }
            else
            {
                /* If 0 < radix < 31, LSB will be x left-shifted 'radix' times */
                res_u64.u64s.l = (x << (uint32)radix_s32);

                /* If radix is positive, MSB will be x right-shifted (32-radix)
                 times */
                res_u64.u64s.h = (x >> (32UL - (uint32)radix_s32));
            }
        }
        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_u64.u64s.l = Mfx_Prv_Div_u64u32_u32_Inl(res_u64.u64, y);
        }
    }

    /* Underflow or overflow check on result of division OR when y = 0 OR when
     shifted x value exceeds 64-bits */
    if (res_u64.u64s.l > MFX_MAXSINT32_U)
    {
        res_u64.u64s.l = MFX_MAXSINT32;
    }

    return ((sint32) res_u64.u64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivP2_u32u32_u32
 *
 * \brief   uint32 uint32 Division with 2^n scaling with the result checked for uint32 saturation and Divide by Zero.
 * Scale a uint32 variable with 2^n and then divide with uint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x          Integer value of the fixed-point operand.
 * \param   uint32 y          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 b          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 * The result is ((2 ^ (c + b - a) * x)/y) and the valid range -31 <= (c + b -a) <= 63
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVP2_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_uint64u res_u64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;

    if (y != 0UL)
    {
        /* Calculation of resultant radix */
        radix_s32 =  (((sint32)c + (sint32)b) - (sint32)a);

        /* If the resultant radix > 32, unique check is needed whether an overflow
         can happen before division or not */
        if (radix_s32 > 32)
        {
            res_u64.u64s.l = (1UL << (64UL - (uint32)radix_s32));

            /* If (2^radix * x) >= 2^64, Division cannot bring back the result
             to 32-bit range. Hence x >= (2^(64-radix)) results in overflow */
            if (x >= (res_u64.u64s.l))
            {
                flag_u32 = 1UL;
                res_u64.u64s.l = MFX_MAXUINT32;
            }
            else
            {
                /* If x <(2^(64-radix), Division can bring back the result to 32-bits.
                 LSB will be zero & MSB will be x left-shifted by (radix-32) times */
                res_u64.u64s.h = (x << ((uint32)radix_s32 - 32UL));
                res_u64.u64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 <= 0)
            {
                /* If radix <= 0, LSB will be x right-shifted '-radix' times */
                radix_s32 = -radix_s32;
                res_u64.u64s.l = (x >> ((uint32)radix_s32));

                /* If radix is negative, MSB will be zero */
                res_u64.u64s.h = 0UL;
            }
            else if(radix_s32 == 32)
            {
                /* Since the radix is 32, LSB is equal to 0 */
                res_u64.u64s.l = 0uL;
                /* Since the radix is 32, MSB is equal to x */
                res_u64.u64s.h = x;
            }
            else
            {
                /* If 0 < radix < 32, LSB will be x left-shifted 'radix' times */
                res_u64.u64s.l = (x << (uint32)radix_s32);
                /* If radix is positive, MSB will be x right-shifted (32-radix_s32) times */
                res_u64.u64s.h = (x >> (32UL - (uint32)radix_s32));
            }
        }

        if (flag_u32 == 0UL)
        {
            /* 64-bit Division is needed only when inputs are valid */
            res_u64.u64s.l = Mfx_Prv_Div_u64u32_u32_Inl(res_u64.u64, y);
        }
    }
    /* Overflow when y = 0 */
    else
    {
        res_u64.u64s.l = MFX_MAXUINT32;
    }

    return (res_u64.u64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s16s16u8_s16
 *
 * \brief   sint16sint16 division with input shifted by uint8 and result is saturated to MAXSINT16/MINSINT16 in case of
 * overflow/underflow.
 * Shift the sint16 by uint8 and then divide with sint16.
 * Result is limited to MAXSINT16 or MINSINT16 in case of overflow or Underflow respectively
 *
 * \param   sint16 x_value    Integer value of the fixed-point operand.
 * \param   sint16 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S16S16U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_s32s32u8_s16_Inl(x_value, y_value, shift));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s16u16u8_s16
 *
 * \brief   sint16uint16 division with input shifted by uint8 and result is saturated to MAXSINT16/MINSINT16 in case of
 * overflow/underflow.
 * Shift the sint16 by uint8 and then divide with uint16.
 * Result is limited to MAXSINT16 or MINSINT16 in case of overflow or Underflow respectively
 *
 * \param   sint16 x_value    Integer value of the fixed-point operand.
 * \param   uint16 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S16U16U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s16u16u8_s16_Inl(sint16 x_value, uint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_s32u32u8_s16_Inl((sint32) x_value, (uint32) y_value, shift));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32s32u8_s16
 *
 * \brief   sint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32S32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }
    if (res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32s32u8_s32
 *
 * \brief   sint32sint32 division with input shifted by uint8 and result is saturated to MAXSINT32/MINSINT32 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with sint32.
 * Result is limited to MAXSINT32 or MINSINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32S32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32     tmp_u32;

    /* Calculation of x_value * y_value */
    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;

    /* Calculation of (x_value * y_value / z) */
    return (Mfx_Prv_Div_s64s32_s32_Inl(res_s64, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32s32u8_s8
 *
 * \brief   sint32sint32 division with input shifted by uint8 and result is saturated to MAXSINT8/MINSINT8 in case of
 overflow/underflow.
 * Shift the sint32 by uint8 and then divide with sint32.
 * Result is limited to MAXSINT8 or MINSINT8 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32S32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT8)
    {
        res_s32 = MFX_MAXSINT8;
    }
    if (res_s32 < MFX_MINSINT8)
    {
        res_s32 = MFX_MINSINT8;
    }

    return (sint8) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32s32u8_u16
 *
 * \brief   sint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32S32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32s32u8_u32
 *
 * \brief   sint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT32 in case of overflow.
 * Shift the sint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32S32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32     tmp_u32;

    /* Calculation of x_value * (1 << shift) */
    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;

    /* Calculation of (x_value * shift / z) */
    return (Mfx_Prv_Div_s64s32_u32_Inl(res_s64, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32s32u8_u8
 *
 * \brief   sint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT8/MINUINT8 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT8 or MINUINT8 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32S32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT8_U)
    {
        res_u32 = MFX_MAXUINT8;
    }

    return (uint8) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32u32u8_s16
 *
 * \brief   sint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32U32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_s32u32u8_s16_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }
    if (res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32u32u8_s32
 *
 * \brief   sint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT32/MINUINT32 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32U32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32     tmp_u32;

    /* Calculation of x_value * (1 << shift) */
    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;

    /* Calculation of (x_value << shift / y_value) */
    return (Mfx_Prv_Div_s64u32_s32_Inl(res_s64, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32u32u8_s8
 *
 * \brief   sint32uint32 division with input shifted by uint8 and result is saturated to MAXSINT8/MINSINT8 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with uint32.
 * Result is limited to MAXSINT8 or MINSINT8 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32U32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_s32u32u8_s8_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT8)
    {
        res_s32 = MFX_MAXSINT8;
    }
    if (res_s32 < MFX_MINSINT8)
    {
        res_s32 = MFX_MINSINT8;
    }

    return (sint8) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32u32u8_u16
 *
 * \brief   sint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32U32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_s32u32u8_u16_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32u32u8_u32
 *
 * \brief   sint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT32 in case of overflow.
 * Shift the sint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32U32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32     tmp_u32;
    uint32     res_u32;

    /* Limitation */
    if (x_value < 0)
    {
        res_u32 = MFX_MINUINT32;
    }

    /* Calculation of (x_value << shift)/ z */
    else
    {
        /* Calculation of x_value * (1 << shift) */
        tmp_u32 = 1UL << shift;
        res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;

        /* Calculation of (x_value << shift / y_value) */
        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(res_u64, y_value);
    }

    return (uint32) (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_s32u32u8_u8
 *
 * \brief   sint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT8/MINUINT8 in case of
 * overflow/underflow.
 * Shift the sint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT8 or MINUINT8 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_S32U32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_s32u32u8_u8_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT8_U)
    {
        res_u32 = MFX_MAXUINT8;
    }

    return (uint8) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u16u16u8_u16
 *
 * \brief   uint16uint16 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the uint16 by uint8 and then divide with uint16.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint16 x_value    Integer value of the fixed-point operand.
 * \param   uint16 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U16U16U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_u16u16u8_u16_Inl(uint16 x_value, uint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_u32u32u8_u16_Inl((uint32) x_value, (uint32) y_value, shift));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u16u16u8_u8
 *
 * \brief   uint16uint16 division with input shifted by uint8 and result is saturated to MAXUINT8/MINUINT8 in case of
 * overflow/underflow.
 * Shift the uint16 by uint8 and then divide with uint16.
 * Result is limited to MAXUINT8 or MINUINT8 in case of overflow or Underflow respectively
 *
 * \param   uint16 x_value    Integer value of the fixed-point operand.
 * \param   uint16 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U16U16U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u16u16u8_u8_Inl(uint16 x_value, uint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_u32u32u8_u8_Inl((uint32) x_value, (uint32) y_value, shift));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32s32u8_s16
 *
 * \brief   uint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   sint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32S32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }
    if (res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32s32u8_s32
 *
 * \brief   uint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT32/MINUINT32 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32S32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32     tmp_u32;

    /* Calculation of x_value * (1 << shift) */
    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;

    /* Calculation of (x_value << shift / y_value) */
    return (Mfx_Prv_Div_s64s32_s32_Inl(res_s64, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32s32u8_s8
 *
 * \brief   uint32sint32 division with input shifted by uint8 and result is saturated to MAXSINT8/MINSINT8 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with sint32.
 * Result is limited to MAXSINT8 or MINSINT8 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32S32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT8)
    {
        res_s32 = MFX_MAXSINT8;
    }
    if (res_s32 < MFX_MINSINT8)
    {
        res_s32 = MFX_MINSINT8;
    }

    return (sint8) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32s32u8_u16
 *
 * \brief   uint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32S32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32s32u8_u32
 *
 * \brief   uint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT32 in case of overflow.
 * Shift the uint32 by uint8 and then divide with sint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32S32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32     tmp_u32;
    uint32     res_u32;

    /* Result is zero if the divisor is negative */
    if (y_value < 0)
    {
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        /* Calculation of x_value * y */
        tmp_u32 = 1UL << shift;
        res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;

        /* Calculation of (x_value * y_value / z) */
        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(res_u64, (uint32) y_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32s32u8_u8
 *
 * \brief   uint32sint32 division with input shifted by uint8 and result is saturated to MAXUINT8/MINUINT8 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT8 or MINUINT8 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   sint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32S32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT8_U)
    {
        res_u32 = MFX_MAXUINT8;
    }

    return (uint8) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32u32u8_s16
 *
 * \brief   uint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  sint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32U32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_DivShLeft_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }

    return (sint16) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32u32u8_s32
 *
 * \brief   uint32uint32 division with input shifted by uint8 and result is saturated to MAXSINT32/MINSINT32 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXSINT32 or MINSINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32U32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32     tmp_u32;
    uint32     res_u32;

    /* Calculation of x_value * (1 << shift) */
    tmp_u32 = 1UL << shift;
    res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;

    /* Calculation of (x_value << shift / y_value) */
    res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(res_u64, y_value);

    /* Limitation */
    if (res_u32 > MFX_MAXSINT32_U)
    {
        res_u32 = MFX_MAXSINT32;
    }

    return (sint32)(res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32u32u8_s8
 *
 * \brief   uint32uint32 division with input shifted by uint8 and result is saturated to MAXSINT8/MINSINT8 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXSINT8 or MINSINT8 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32U32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_DivShLeft_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_s32 > MFX_MAXSINT8)
    {
        res_s32 = MFX_MAXSINT8;
    }

    return (sint8) res_s32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32u32u8_u16
 *
 * \brief   uint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT16/MINUINT16 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT16 or MINUINT16 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint16            Function returns a valid 16-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32U32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_DivShLeft_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16;
    }

    return (uint16) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32u32u8_u32
 *
 * \brief   uint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT32/MINUINT32 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT32 or MINUINT32 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint32            Function returns a valid 32-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32U32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32     tmp_u32;

    /* Calculation of x_value * (1 << shift) */
    tmp_u32 = 1UL << shift;
    res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;

    /* Calculation of (x_value << shift / y_value) */
    return (Mfx_Prv_Div_u64u32_u32_Inl(res_u64, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u32u32u8_u8
 *
 * \brief   uint32uint32 division with input shifted by uint8 and result is saturated to MAXUINT8/MINUINT8 in case of
 * overflow/underflow.
 * Shift the uint32 by uint8 and then divide with uint32.
 * Result is limited to MAXUINT8 or MINUINT8 in case of overflow or Underflow respectively
 *
 * \param   uint32 x_value    Integer value of the fixed-point operand.
 * \param   uint32 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift       Radix by which the input value is shifted.
 * \return  uint8             Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                          value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U32U32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(x_value, y_value, shift);

    /* Limitation */
    if (res_u32 > MFX_MAXUINT8_U)
    {
        res_u32 = MFX_MAXUINT8;
    }
    return (uint8) res_u32;
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_DivShLeft_u8u8u8_u8
 *
 * \brief   uint8uint8 division with input shifted by uint8 and result is saturated to MAXUINT8/MINUINT8 in case of
 * overflow/underflow.
 * Shift the uint8 by uint8 and then divide with uint8.
 * Result is limited to MAXUINT8 or MINUINT8 in case of overflow or Underflow respectively
 *
 * \param   uint8 x_value    Integer value of the fixed-point operand.
 * \param   uint8 y_value    Integer value of the fixed-point operand.
 * \param   uint8 shift      Radix by which the input value is shifted.
 * \return  uint8            Function returns a valid 8-bit result. In case of overflow or underflow, a saturated
 * \                         value will be returned. The result is rounded towards zero, if necessary.
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIVSHLEFT_U8U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_DivShLeft_u8u8u8_u8_Inl(uint8 x_value, uint8 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_u32u32u8_u8_Inl((uint32) x_value, (uint32) y_value, shift));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mod_s16
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that devides X
 * \return          Returns the remainder of the divions X / Y. The sign of the result is the same as X.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mod_s16_Inl(sint16 x_value, sint16 y_value)
{
    return ((sint16)Mfx_Prv_Mod_s32_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mod_s32
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that devides X
 * \return          Returns the remainder of the divions X / Y. The sign of the result is the same as X.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mod_s32_Inl(sint32 x_value, sint32 y_value)
{
     return ((y_value == 0) || ( (x_value == MFX_MINSINT32) && (y_value == -1) ) ) ? 0L : (x_value % y_value);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Mod_s32s32_s16
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that divides X
 * \return          Returns the remainder of the division X / Y and saturates it to sint16 range
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mod_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_Mod_s32_Inl(x_value, y_value);

    /* Negative overflow check */
    if(res_s32 < MFX_MINSINT16)
    {
        res_s32 = MFX_MINSINT16;
    }

    /* Positive overflow check */
    if(res_s32 > MFX_MAXSINT16)
    {
        res_s32 = MFX_MAXSINT16;
    }

    return((sint16)res_s32);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Mod_s32s32_s8
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that divides X
 * \return          Returns the remainder of the division X / Y and saturates it to sint8 range
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mod_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_Mod_s32_Inl(x_value, y_value);

    /* Negative overflow check */
    if(res_s32 < MFX_MINSINT8)
    {
        res_s32 = MFX_MINSINT8;
    }

    /* Positive overflow check */
    if(res_s32 > MFX_MAXSINT8)
    {
        res_s32 = MFX_MAXSINT8;
    }

    return((sint8)res_s32);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Mod_s8
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that devides X
 * \return          Returns the remainder of the divions X / Y. The sign of the result is the same as X.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mod_s8_Inl(sint8 x_value, sint8 y_value)
{
    return ((sint8)Mfx_Prv_Mod_s32_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mod_u16
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that devides X
 * \return          Returns the remainder of the divions X / Y
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mod_u16_Inl(uint16 x_value, uint16 y_value)
{
    return ((uint16)Mfx_Prv_Mod_u32_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mod_u32
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that devides X
 * \return          Returns the remainder of the divions X / Y
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Mod_u32_Inl(uint32 x_value, uint32 y_value)
{
    return (y_value == 0UL) ? 0UL : (x_value % y_value);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Mod_u32u32_u16
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that divides X
 * \return          Returns the remainder of the division X / Y and saturates it to uint16 range
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mod_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_Mod_u32_Inl(x_value, y_value);

    /* Overflow check */
    if(res_u32 > MFX_MAXUINT16_U)
    {
        res_u32 = MFX_MAXUINT16;
    }

    return((uint16)res_u32);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Mod_u32u32_u8
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that divides X
 * \return          Returns the remainder of the division X / Y and saturates it to uint8 range
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mod_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_Mod_u32_Inl(x_value, y_value);

    /* Overflow check */
    if(res_u32 > MFX_MAXUINT8_U)
    {
        res_u32 = MFX_MAXUINT8;
    }

    return((uint8)res_u32);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Mod_u8
 *
 * \brief Calculates X modulo Y. Checks if Y is zero. In this case the function returns zero.
 *
 * \param           x_value   Value that will be divided by Y
 * \param           y_value   Divisor, that devides X
 * \return          Returns the remainder of the divions X / Y
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MOD_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mod_u8_Inl(uint8 x_value, uint8 y_value)
{
    return ((uint8)Mfx_Prv_Mod_u32_Inl(x_value, y_value));
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16s16_s16
 *
 *  \brief Divide a signed 16-bit variable by a signed 16-bit variable and return the result as signed 16-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s16_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16s16_s8
 *
 *  \brief Divide a signed 16-bit variable by a signed 16-bit variable and return the result as signed 8-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16s16_u16
 *
 *  \brief Divide a signed 16-bit variable by a signed 16-bit variable and return the result as unsigned 16-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_u16_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16s16_u8
 *
 *  \brief Divide a signed 16-bit variable by a signed 16-bit variable and return the result as unsigned 8-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned 8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_u8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16u16_s16
 *
 *  \brief Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as signed 16-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_s16_Inl((sint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16u16_s8
 *
 *  \brief Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as signed 8-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s16u16_s8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_s8_Inl((sint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16u16_u16
 *
 *  \brief Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u16_Inl((sint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s16u16_u8
 *
 *  \brief Divide a signed 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 8-bit.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s16u16_u8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u8_Inl((sint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s16_s16
 *
 *  \brief Divide a signed 32-bit variable by a signed 16-bit variable and return the result as signed 16-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s32s16_s16_Inl(sint32 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s16_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s32_s16
 *
 *  \brief Divide a signed 32-bit variable by a signed 32-bit variable and return the result as signed 16-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32s32_s32_Inl(x_value, y_value);

    /* Sint16 range limitation */
    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) (MFX_MAXSINT16);
    }
    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) (MFX_MINSINT16);
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s32_s32
 *
 *  \brief Divide a signed 32-bit variable by a signed 32-bit variable and return the result as signed 32-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RDiv_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 y_tmp_u32;
    sint32 remain_s32;
    sint32 res_s32;
    sint32 incr_s32 = 1;

    if (y_value == 0)
    {
        /* Limitation */
        res_s32 = ((x_value >= 0) ? (MFX_MAXSINT32) : (MFX_MINSINT32));
    }
    else
    {
        /* Special case */
        if ((y_value == -1) && (x_value == MFX_MINSINT32))
        {
            res_s32 = MFX_MAXSINT32;
        }
        /* Regular case */
        else
        {
            res_s32 = x_value / y_value;
            remain_s32 = x_value % y_value;

            /* When x_value is -ve, remain_s32 (modulo division) is negative. */
            if (x_value < 0)
            {
                /* Making incr_s32 = -1 ceil the result in negative range */
                incr_s32 = -incr_s32;
                remain_s32 = -remain_s32;
            }

            /* Make the y_value +ve */
            if (y_value < 0)
            {
                incr_s32 = -incr_s32;
                y_tmp_u32 = (uint32) (-y_value);
            }
            else
            {
                y_tmp_u32 = (uint32) y_value;
            }

            /* Taking half of y_value and if u_value is an odd number(because of remainder) add 1 to it */
            y_tmp_u32 = (y_tmp_u32 >> 1UL) + (y_tmp_u32 & 1UL);

            /* If either of input is -ve , incr_s32 = -1. If both are negative(double negation)
             or positive (no negation) ,incr_s32 = 1
             If remainder is greater than half of y_value, increment the result by one
             If result is +ve , res_s32 = res_s32 + 1; (incr_s32 = 1)
             If result is -ve , res_s32 = res_s32 - 1; (incr_s32 = -1) */
            if (((uint32) remain_s32) >= y_tmp_u32)
            {
                res_s32 = res_s32 + incr_s32;
            }
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s32_s8
 *
 *  \brief Divide a signed 32-bit variable by a signed 32-bit variable and return the result as signed 8-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32s32_s32_Inl(x_value, y_value);

    /* Sint8 range limitation */
    if (res_s32 > (sint32) MFX_MAXSINT8)
    {
        res_s32 = (sint32) (MFX_MAXSINT8);
    }
    if (res_s32 < (sint32) MFX_MINSINT8)
    {
        res_s32 = (sint32) (MFX_MINSINT8);
    }

    return ((sint8) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s32_u16
 *
 *  \brief Divide a signed 32-bit variable by a signed 32-bit variable and return the result as unsigned 16-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned 16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_s32s32_u32_Inl(x_value, y_value);

    /* Uint16 range limitation */
    if (res_u32 > (uint32) MFX_MAXUINT16)
    {
        res_u32 = (uint32) MFX_MAXUINT16;
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s32_u32
 *
 *  \brief Divide a signed 32-bit variable by a signed 32-bit variable and return the result as unsigned 32-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned 32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RDiv_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    uint32 x_temp_u32;
    uint32 y_temp_u32;
    uint32 remain_u32;

    if (y_value == 0)
    {
        /* Limitation */
        res_u32 = ((x_value >= 0) ? (MFX_MAXUINT32) : (MFX_MINUINT32));
    }
    /* Special case */
    else if ((y_value == -1) && (x_value == MFX_MINSINT32))
    {
        res_u32 = (((uint32) MFX_MAXSINT32) + 1UL);
    }
    else
    {
        /* When either of input is -ve ,the result is saturated to MINUINT32 */
        if (((x_value <= 0) && (y_value > 0)) || ((x_value >= 0) && (y_value < 0)))
        {
            /* Avoid the case when both inputs are -ve */
            res_u32 = MFX_MINUINT32;
        }
        else /* Case when both inputs are positive or negative */
        {
            /* If x_value < 0 and y_value < 0 make it +ve */
            if (x_value < 0)
            {
                x_temp_u32 = (uint32) (-x_value);
                y_temp_u32 = (uint32) (-y_value);
            }
            else
            {
                x_temp_u32 = (uint32) (x_value);
                y_temp_u32 = (uint32) (y_value);
            }
            res_u32 = x_temp_u32 / y_temp_u32;
            remain_u32 = x_temp_u32 % y_temp_u32;

            /* Taking half of y_value and if y_value is an odd number(because of remainder), add 1 to it */
            y_temp_u32 = (y_temp_u32 >> 1UL) + (y_temp_u32 & 1UL);

            /* If remainder is greater than half of y_value, increment the result by one */
            if (remain_u32 >= y_temp_u32)
            {
                res_u32 = res_u32 + 1UL;
            }
        }
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32s32_u8
 *
 *  \brief Divide a signed 32-bit variable by a signed 32-bit variable and return the result as unsigned 8-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned 8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_s32s32_u32_Inl(x_value, y_value);

    /* Uint8 range limitation */
    if (res_u32 > (uint32) MFX_MAXUINT8)
    {
        res_u32 = (uint32) MFX_MAXUINT8;
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u16_u16
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s32u16_u16_Inl(sint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u16_Inl(x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u32_s16
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as signed 16-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_s32u32_s16_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32u32_s32_Inl(x_value, y_value);

    /* Sint16 range limitation */
    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) (MFX_MAXSINT16);
    }
    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) (MFX_MINSINT16);
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u32_s32
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as signed 32-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RDiv_s32u32_s32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 y_tmp_u32;
    uint32 x_tmp_u32;
    uint32 remain_u32;
    sint32 res_s32;
    sint32 incr_s32 = 1;

    res_s32 = Mfx_Prv_Div_s32u32_s32_Inl(x_value, y_value);

    /* No need to ceil the result if res_s32 = MFX_MAXSINT32 or res_s32 = MFX_MINSINT32. */
    if ((res_s32 < MFX_MAXSINT32) && (res_s32 > MFX_MINSINT32))
    {
        /* When x_value is -ve , make it +ve so that modulo division gives +ve results */
        if (x_value < 0)
        {
            x_tmp_u32 = (uint32) (-x_value);
            incr_s32 = -1;
        }
        else
        {
            x_tmp_u32 = (uint32) x_value;
        }

        remain_u32 = x_tmp_u32 % y_value;

        /* remainder can go to uint32 range
           Taking half of y_value and if y_value is an odd number(because of remainder) add 1 to it
           Odd numbers are separately checked because the below logic of comparing half of y_value
           with the remainder fails . Eg: 17/7 */
        y_tmp_u32 = (y_value >> 1UL) + (y_value & 1UL);

        /* If remainder is greater than half of y_value, increment the result by one
           If result is +ve , res_s32 = res_s32 + 1; (incr_s32 = 1)
           If result is -ve , res_s32 = res_s32 - 1; (incr_s32 = -1) */
        if (remain_u32 >= y_tmp_u32)
        {
            res_s32 = res_s32 + incr_s32;
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u32_s8
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as signed 8-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s32u32_s8_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32u32_s32_Inl(x_value, y_value);

    /* Sint8 range limitation */
    if (res_s32 > (sint32) MFX_MAXSINT8)
    {
        res_s32 = (sint32) (MFX_MAXSINT8);
    }
    if (res_s32 < (sint32) MFX_MINSINT8)
    {
        res_s32 = (sint32) (MFX_MINSINT8);
    }

    return ((sint8) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u32_u16
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 16-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed     32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_s32u32_u16_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    /* Direct saturation, when input is negative as the result is of type uint16 */
    if (x_value < 0)
    {
        res_u32 = (uint32) MFX_MINUINT16;
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u16_Inl((uint32) x_value, y_value);
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u32_u32
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RDiv_s32u32_u32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    /* Direct saturation, when input is negative as the result is of type uint32 */
    if (x_value < 0)
    {
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl((uint32) x_value, y_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s32u32_u8
 *
 *  \brief Divide a signed 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 8-bit.
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s32u32_u8_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    /* Direct saturation, when input is negative as the result is of type uint8 */
    if (x_value < 0)
    {
        res_u32 = (uint32) MFX_MINUINT8;
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u8_Inl((uint32) x_value, y_value);
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s8s8_s8
 *
 *  \brief Divide a signed 8-bit variable by a signed 8-bit variable and return the result as signed 8-bit.
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   sint8   y_value                      Operand 2, signed   8-bit variable
 * \return  sint8   (x_value / y_value)          Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s8s8_u8
 *
 *  \brief Divide a signed 8-bit variable by a signed 8-bit variable and return the result as unsigned 8-bit.
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   sint8   y_value                      Operand 2, signed   8-bit variable
 * \return  uint8   (x_value / y_value)           Result,   unsigned 8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_u8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s8u8_s8
 *
 *  \brief Divide a signed 8-bit variable by a unsigned 8-bit variable and return the result as signed 8-bit.
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned 8-bit variable
 * \return  sint8   (x_value / y_value)          Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_s8_Inl((sint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_s8u8_u8
 *
 *  \brief Divide a signed 8-bit variable by a unsigned 8-bit variable and return the result as unsigned 8-bit.
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned 8-bit variable
 * \return  uint8   (x_value / y_value)          Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_S8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u8_Inl((sint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16s16_s16
 *
 *  \brief Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as signed 16-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_s16_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_s8
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 8-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_s8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16s16_u16
 *
 *  \brief Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as unsigned 16-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed     16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_u16_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16s16_u8
 *
 *  \brief Divide a unsigned 16-bit variable by a signed 16-bit variable and return the result as unsigned 8-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed     16-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_u8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16u16_s16
 *
 *  \brief Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as signed 16-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned   16-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed     16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_s16_Inl((uint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16u16_s8
 *
 *  \brief Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as signed 8-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned   16-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed     8 -bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_s8_Inl((uint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16u16_u16
 *
 *  \brief Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned   16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u16_Inl((uint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u16u16_u8
 *
 *  \brief Divide a unsigned 16-bit variable by a unsigned 16-bit variable and return the result as unsigned 8-bit.
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned   16-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u8_Inl((uint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_s16
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 16-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_u32s32_s32_Inl(x_value, y_value);

    /* Sint16 range limitation */
    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) (MFX_MAXSINT16);
    }
    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) (MFX_MINSINT16);
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_s32
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 32-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RDiv_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 y_tmp_u32;
    uint32 remain_u32;
    sint32 res_s32;
    sint32 incr_s32 = 1;

    res_s32 = Mfx_Prv_Div_u32s32_s32_Inl(x_value, y_value);

    /* To avoid division cases like
     1. 4294967295 / 2 ,(2147483647.5 will be rounded to 2147483648 and overflow happens) res_s32 = MFX_MAXSINT32.
     2. MFX_MAXUINT32 / 0  = MFX_MAXSINT32 as result is of sint32 type.(For y = 0 modulo division fails .) */
    if ((res_s32 != MFX_MAXSINT32) && (res_s32 != MFX_MINSINT32))
    {

        /* When y_value is -ve,the result is negative.
          Making incr_s32 = -1 ceil the final result in negative range */
        if (y_value < 0)
        {
            incr_s32 = -1;
            y_tmp_u32 = (uint32) (-y_value);
        }
        else
        {
            y_tmp_u32 = (uint32) y_value;
        }
        /* Only when numerator is -ve, modulo division gives negative result
           In below case the result is always +ve as numerator is uint32 */
        remain_u32 = x_value % y_tmp_u32;

        /* Taking half of y_value and if y_value is an odd number(because of remainder) add 1 to it */
        y_tmp_u32 = (y_tmp_u32 >> 1UL) + (y_tmp_u32 & 1UL);

        /* If remainder is greater than half of y_value, increment the result by one
           If result is +ve , res_s32 = res_s32 + 1; (incr_s32 = 1)
           If result is -ve , res_s32 = res_s32 - 1; (incr_s32 = -1) */
        if (remain_u32 >= y_tmp_u32)
        {
            res_s32 = res_s32 + incr_s32;
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_s8
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as signed 8-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_u32s32_s32_Inl(x_value, y_value);

    /* Sint8 range limitation */
    if (res_s32 > (sint32) MFX_MAXSINT8)
    {
        res_s32 = (sint32) (MFX_MAXSINT8);
    }
    if (res_s32 < (sint32) MFX_MINSINT8)
    {
        res_s32 = (sint32) (MFX_MINSINT8);
    }

    return ((sint8) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_u16
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as unsigned 16-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed     32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    /* Direct saturation, when input is negative as the result is of type uint16 */
    if (y_value < 0)
    {
        res_u32 = (uint32) MFX_MINUINT16;
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u16_Inl(x_value, (uint32) y_value);
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_u32
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as unsigned 32-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed     32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RDiv_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    if (y_value < 0)
    {
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, (uint32) y_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32s32_u8
 *
 *  \brief Divide a unsigned 32-bit variable by a signed 32-bit variable and return the result as unsigned 8-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed     32-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    /* Direct saturation, when input is negative as the result is of type uint8 */
    if (y_value < 0)
    {
        res_u32 = (uint32) MFX_MINUINT8;
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u8_Inl(x_value, (uint32) y_value);
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u16_u16
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 16-bit variable and return the result as unsigned 16-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned   16-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u32u16_u16_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u16_Inl(x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u16_u32
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 16-bit variable and return the result as unsigned 32-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned   16-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U16_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RDiv_u32u16_u32_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u32_s16
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as signed 16-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  sint16   (x_value / y_value)          Result,    signed     16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RDiv_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);

    /* Sint16 range limitation */
    if (res_u32 > (uint32) MFX_MAXSINT16)
    {
        res_u32 = (uint32) MFX_MAXSINT16;
    }

    return ((sint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u32_s32
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  sint32   (x_value / y_value)          Result,    signed     32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RDiv_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);

    /* Sint32 range limitation */
    if (res_u32 > (uint32) MFX_MAXSINT32)
    {
        res_u32 = (uint32) MFX_MAXSINT32;
    }

    return ((sint32) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u32_s8
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as signed 8-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  sint8   (x_value / y_value)          Result,    signed     8 -bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);

    /* Sint8 range limitation */
    if (res_u32 > (uint32) MFX_MAXSINT8)
    {
        res_u32 = (uint32) MFX_MAXSINT8;
    }

    return ((sint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u32_u16
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 16-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  uint16   (x_value / y_value)          Result,    unsigned   16-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RDiv_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);

    /* Uint16 range limitation */
    if (res_u32 > (uint32) MFX_MAXUINT16)
    {
        res_u32 = (uint32) MFX_MAXUINT16;
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u32_u32
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  uint32   (x_value / y_value)          Result,    unsigned   32-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RDiv_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 y_tmp_u32;
    uint32 remain_u32;
    uint32 res_u32;

    if (y_value == 0UL)
    {
        /* Limitation */
        res_u32 = MFX_MAXUINT32;
    }
    else
    {
        res_u32 = x_value / y_value;
        remain_u32 = x_value % y_value;

        /* Taking half of y_value and if y_value is an odd number(because of remainder), add 1 to it */
        y_tmp_u32 = (y_value >> 1UL) + (y_value & 1UL);

        /* If remainder is greater than half of y_value, increment the result by one */
        if (remain_u32 >= y_tmp_u32)
        {
            res_u32 = res_u32 + 1UL;
        }
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u32u32_u8
 *
 *  \brief Divide a unsigned 32-bit variable by a unsigned 32-bit variable and return the result as unsigned 8-bit.
 *
 * \param   uint32   x_value                      Operand 1, unsigned   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned   32-bit variable
 * \return  uint8   (x_value / y_value)           Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);

    /* Uint8 range limitation */
    if (res_u32 > (uint32) MFX_MAXUINT8)
    {
        res_u32 = (uint32) MFX_MAXUINT8;
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u8s8_s8
 *
 *  \brief Divide a unsigned 8-bit variable by a signed 8-bit variable and return the result as signed 8-bit.
 *
 * \param   uint8   x_value                      Operand 1, unsigned   8-bit variable
 * \param   sint8   y_value                      Operand 2, signed     8-bit variable
 * \return  sint8   (x_value / y_value)           Result,   signed     8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_s8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u8s8_u8
 *
 *  \brief Divide a unsigned 8-bit variable by a signed 8-bit variable and return the result as unsigned 8-bit.
 *
 * \param   uint8   x_value                      Operand 1, unsigned    8-bit variable
 * \param   sint8   y_value                      Operand 2, signed      8-bit variable
 * \return  uint8   (x_value / y_value)           Result,   unsigned    8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_u8_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u8u8_s8
 *
 *  \brief Divide a unsigned 8-bit variable by a unsigned 8-bit variable and return the result as signed 8-bit.
 *
 * \param   uint8    x_value                      Operand 1, unsigned   8-bit variable
 * \param   uint8    y_value                      Operand 2, unsigned   8-bit variable
 * \return  sint8   (x_value / y_value)           Result,    signed     8 -bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_RDiv_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_s8_Inl((uint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RDiv_u8u8_u8
 *
 *  \brief Divide a unsigned 8-bit variable by a unsigned 8-bit variable and return the result as unsigned 8-bit.
 *
 * \param   uint8   x_value                      Operand 1, unsigned   8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned   8-bit variable
 * \return  uint8   (x_value / y_value)          Result,    unsigned   8-bit
 * \retval These routines make a division between the two arguments : Return-value = x_value / y_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RDIV_U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_RDiv_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u8_Inl((uint32) x_value, (uint32) y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_u64u32_u32 !This service is only internally used!
 *
 * Divide an unsigned 64-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit varaible.
 * The result is limited to EFX_MAXUINT32 (EFX_MINUINT32) to prevent overflow (underflow).
 * Note, this function is used in all other 64bit divisor variants.
 *
 * \param   Mfx_uint64   x_value               Operand 1, unsigned 64-bit variable
 * \param   sint32       y_value               Operand 2, unsigned 32-bit variable
 * \return  uint32       (x_value / y_value)   Result,  unsigned 32-bit variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_U64U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_u64u32_u32_Inl(Mfx_uint64 x_value, uint32 y_value)
{
	/* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_uint64u tmp_u64s;
    Mfx_uint64 res_u64;
    uint32 tmp_u32;
    uint8_least i = 0;

    /* Create union */
    tmp_u64s.u64 = x_value;

    /* Avoid zero divisor */
    if(y_value == 0uL)
    {
        /* Limitation of result in case of a zero divisor */
        res_u64 = MFX_MAXUINT32;
    }
    else if (y_value > 0x7FFFFFFFuL)
    {
        /* Calculate the interim result */
        tmp_u32 = tmp_u64s.u64s.h;
        res_u64 = ((Mfx_uint64) tmp_u32);

        /* Calculate the rest */
        tmp_u64s.u64 -= ((Mfx_uint64) tmp_u32) * ((Mfx_uint64) y_value);

        /* As long as the high Bytes are filled */
        while (tmp_u64s.u64s.h > 0UL)
        {
            /* Calculate the interim result */
            tmp_u32 = tmp_u64s.u64s.h;
            res_u64 += ((Mfx_uint64) tmp_u32);

            /* Calculate the rest */
            tmp_u64s.u64 -= ((Mfx_uint64) tmp_u32) * ((Mfx_uint64) y_value);
        }
        tmp_u32 = tmp_u64s.u64s.l / y_value;
        res_u64 += ((Mfx_uint64) tmp_u32);

        /* Limitation */
        res_u64 = ((res_u64 > ((Mfx_uint64) MFX_MAXUINT32)) ? ((Mfx_uint64) MFX_MAXUINT32) : res_u64);
    }
    else
    {
        /* Divide the high bytes */
        tmp_u32 = tmp_u64s.u64s.h / y_value;

        /* Calculate the interim result */
        res_u64 = tmp_u32;

        /* Calculate the rest */
        tmp_u64s.u64s.h -= tmp_u32 * y_value;
        if (res_u64 < ((Mfx_uint64) MFX_MAXUINT32))
        {
            while (i < 32u)
            {
                /* Go just one bit to the right */
                res_u64 <<= 1uLL;
                tmp_u64s.u64 <<= 1uLL;

                /* Modulo */
                tmp_u32 = tmp_u64s.u64s.h / y_value;

                /* Oddment */
                tmp_u64s.u64s.h -= tmp_u32 * y_value;

                /* New interim result */
                res_u64 = res_u64 + ((Mfx_uint64) tmp_u32);

                /* Limit further efforts in case of maximum value */
                if (res_u64 >= ((Mfx_uint64) MFX_MAXUINT32))
                {
                    i = 32;
                }
                i++;
            }
        }

        /* Limitation */
        res_u64 = ((res_u64 > ((Mfx_uint64) MFX_MAXUINT32)) ? ((Mfx_uint64) MFX_MAXUINT32) : res_u64);
    }

    return ((uint32) res_u64);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s64s32_s32 !This service is only internally used!
 *
 * \brief Mfx_sint64 sint32 division with sint32 saturation and check on divide by zero.
 *
 * Divide a signed 64-bit variable by a signed 32-bit variable and return the result as signed 32-bit variable.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32)  to prevent overflow (underflow).
 *
 * \param   Mfx_sint64   x_value                Operand 1, signed   64-bit variable
 * \param   sint32       y_value                Operand 2, signed   32-bit variable
 * \return  sint32       (x_value / y_value)    Result, signed 32-bit variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S64S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Div_s64s32_s32_Inl(Mfx_sint64 x_value, sint32 y_value)
{
    Mfx_uint64 tmp_u64;
    uint32 tmp_u32;
    uint32 div_u32;
    sint32 res_s32 = 1L;

    /* Convert the dividend  to Mfx_uint64,  Calculate the sign of the result */
    if (x_value < 0LL)
    {
        tmp_u64 = ((x_value < -MFX_MAXSINT64) ? 0x8000000000000000ULL : ((Mfx_uint64) -x_value));
        res_s32 *= -1L;
    }
    else
    {
        tmp_u64 = ((Mfx_uint64) (x_value));
    }

    /* Convert the divisor to uint32, Calculate the sign of the result */
    if (y_value < 0L)
    {
        div_u32 = ((y_value == MFX_MINSINT32) ? 0x80000000UL : ((uint32) -y_value));
        res_s32 *= -1L;
    }
    else
    {
        div_u32 = ((uint32) (y_value));
    }

    /* 64 bit  uint division, zero divisor is avoided by the Mfx_Prv_Div_u64u32_u32_Inl routine */
    tmp_u32 = Mfx_Prv_Div_u64u32_u32_Inl(tmp_u64, div_u32);

    if (tmp_u32 > ((uint32) MFX_MAXSINT32))
    {
        res_s32 = ((res_s32 == -1L) ? MFX_MINSINT32 : MFX_MAXSINT32);
    }
    else
    {
        res_s32 *= ((sint32) (tmp_u32));
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s64s32_u32 !This service is only internally used!
 *
 * \brief Mfx_sint64 sint32 division with uint32 saturation and check on divide by zero.
 *
 * Divide a signed 64-bit variable by a signed 32-bit variable and return the result as unsigned 32-bit. variable
 * The result is limited to MFX_MAXUINT32  (MFX_MINUINT32) to  prevent overflow (underflow).
 *
 * \param   Mfx_sint64   x_value                Operand 1, signed 64-bit variable
 * \param   sint32       y_value                Operand 2, signed 32-bit variable
 * \return  uint32       (x_value / y_value)    Result,  unsigned 32-bit variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S64S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_s64s32_u32_Inl(Mfx_sint64 x_value, sint32 y_value)
{
    Mfx_uint64 tmp_u64;
    uint32 div_u32;
    uint32 res_u32;

    /* Calculate if the result will be  < 0 => MFX_MINUINT32 = 0 */
    if (((x_value < 0) && (y_value >= 0)) || ((x_value >= 0) && (y_value < 0)))
    {
        res_u32 = MFX_MINUINT32;
    }
    /* Avoid zero divisor is not required,it is done by the  Mfx_Prv_Div_u64u32_u32_Inl service */
    else
    {
        /* Convert the dividend  to Mfx_uint64 */
        if (x_value <= -1LL)
        {
            tmp_u64 = ((x_value < -MFX_MAXSINT64) ? 0x8000000000000000ULL : ((Mfx_uint64) -x_value));
        }
        else
        {
            tmp_u64 = ((Mfx_uint64) (x_value));
        }

        /* Convert the divisor to uint32, Calculate the sign of the result */
        if (y_value <= -1L)
        {
            div_u32 = ((y_value == MFX_MINSINT32) ? 0x80000000UL : ((uint32) -y_value));
        }
        else
        {
            div_u32 = ((uint32) y_value);
        }

        /* 64 bit  uint division */
        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(tmp_u64, div_u32);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s64u32_s32 !This service is only internally used!
 *
 * \brief Mfx_sint64 uint32 division with sint32 saturation and check on divide by zero.
 *
 * Divide a signed 64-bit variable by a unsigned 32-bit variable and return the result as signed 32-bit varaible.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) to  prevent overflow (underflow).
 *
 * \param   Mfx_sint64   x_value               Operand 1, signed 64-bit variable
 * \param   sint32       y_value               Operand 2, unsigned 32-bit variable
 * \return  sint32       (x_value / y_value)   Result,  signed 32-bit variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S64U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Div_s64u32_s32_Inl(Mfx_sint64 x_value, uint32 y_value)
{
    Mfx_uint64 tmp_u64;
    uint32 tmp_u32;
    sint32 res_s32 = 1L;

    /* Convert the dividend  to Mfx_uint64,  Calculate the sign of the result */
    if (x_value <= -1)
    {
        tmp_u64 = ((x_value < (-MFX_MAXSINT64)) ? 0x8000000000000000ULL : ((Mfx_uint64) -x_value));
        res_s32 *= -1L;
    }
    else
    {
        tmp_u64 = ((Mfx_uint64) (x_value));
    }

    /* 64 bit  uint division, zero divisor protection is dane by Mfx_Prv_Div_u64u32_u32_Inl */
    tmp_u32 = Mfx_Prv_Div_u64u32_u32_Inl(tmp_u64, y_value);

    if (tmp_u32 > ((uint32) MFX_MAXSINT32))
    {
        res_s32 = ((res_s32 == -1L) ? MFX_MINSINT32 : MFX_MAXSINT32);
    }
    else
    {
        res_s32 *= ((sint32) tmp_u32);
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Div_s64u32_u32 !This service is only internally used!
 *
 * \brief Mfx_sint64 uint32 division with uint32 saturation and check on divide by zero.
 *
 * Divide a signed 64-bit variable by a unsigned 32-bit variable and return the result as unsigned 32-bit varaible.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) to prevent overflow (underflow).
 *
 * \param   Mfx_sint64   x_value                 Operand 1, signed 64-bit variable
 * \param   sint32       y_value                 Operand 2, unsigned 32-bit variable
 * \return  uint32       (x_value / y_value)     Result,  unsigned 32-bit variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_DIV_S64U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Div_s64u32_u32_Inl(Mfx_sint64 x_value, uint32 y_value)
{
    uint32 res_u32;

    /* Calculate if the result will be  > MFX_MAXUINT321 = 0 */
    if (x_value < 0LL)
    {
        res_u32 = MFX_MINUINT32;
    }

    /* Avoid zero divisor is not required,it is done by the  Mfx_Prv_Div_u64u32_u32_Inl service */
    else
    {
        /* 64 bit  uint division */
        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) x_value, y_value);
    }

    return (res_u32);
}
#endif

/*********************************************************************************************************************/
LOCAL_INLINE uint32 Mfx_Prv_Div_u32u32_ux_Inl(uint32 x_value, uint32 y_value, uint32 bits)
{
    uint32 res_u32;

    if ((x_value >> bits) < y_value)
    {
        res_u32 = (x_value / y_value);
    }
    else
    {
        res_u32 = (MFX_MAXUINT32 >> (32UL - bits));
    }

    return (res_u32);
}


/* MFX_DIV_INL_H */
#endif
