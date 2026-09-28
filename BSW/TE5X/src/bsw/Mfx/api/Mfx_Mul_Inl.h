

#ifndef MFX_MUL_INL_H
#define MFX_MUL_INL_H

/*
 **********************************************************************************************************************
 *
 * List of services
 *
 * Mfx_Prv_Mul_s16s16_s16_Inl
 * Mfx_Prv_Mul_s16s16_s32_Inl
 * Mfx_Prv_Mul_s16s16_s8_Inl
 * Mfx_Prv_Mul_s16s16_u16_Inl
 * Mfx_Prv_Mul_s16s16_u8_Inl
 * Mfx_Prv_Mul_s16u16_s16_Inl
 * Mfx_Prv_Mul_s16u16_s32_Inl
 * Mfx_Prv_Mul_s16u16_u16_Inl
 * Mfx_Prv_Mul_s32s32_s16_Inl
 * Mfx_Prv_Mul_s32s32_s32_Inl
 * Mfx_Prv_Mul_s32s32_s8_Inl
 * Mfx_Prv_Mul_s32s32_u16_Inl
 * Mfx_Prv_Mul_s32s32_u32_Inl
 * Mfx_Prv_Mul_s32s32_u8_Inl
 * Mfx_Prv_Mul_s32u16_s32_Inl
 * Mfx_Prv_Mul_s8s8_s8_Inl
 * Mfx_Prv_Mul_s8s8_u8_Inl
 * Mfx_Prv_Mul_s8u8_s8_Inl
 * Mfx_Prv_Mul_s8u8_u8_Inl
 * Mfx_Prv_Mul_u16s16_s16_Inl
 * Mfx_Prv_Mul_u16s16_s32_Inl
 * Mfx_Prv_Mul_u16s16_s8_Inl
 * Mfx_Prv_Mul_u16s16_u16_Inl
 * Mfx_Prv_Mul_u16s16_u8_Inl
 * Mfx_Prv_Mul_u16u16_s16_Inl
 * Mfx_Prv_Mul_u16u16_s8_Inl
 * Mfx_Prv_Mul_u16u16_u16_Inl
 * Mfx_Prv_Mul_u16u16_u32_Inl
 * Mfx_Prv_Mul_u16u16_u8_Inl
 * Mfx_Prv_Mul_u32s32_s16_Inl
 * Mfx_Prv_Mul_u32s32_s32_Inl
 * Mfx_Prv_Mul_u32s32_s8_Inl
 * Mfx_Prv_Mul_u32s32_u16_Inl
 * Mfx_Prv_Mul_u32s32_u32_Inl
 * Mfx_Prv_Mul_u32s32_u8_Inl
 * Mfx_Prv_Mul_u32u16_u32_Inl
 * Mfx_Prv_Mul_u32u32_s16_Inl
 * Mfx_Prv_Mul_u32u32_s32_Inl
 * Mfx_Prv_Mul_u32u32_s8_Inl
 * Mfx_Prv_Mul_u32u32_u16_Inl
 * Mfx_Prv_Mul_u32u32_u32_Inl
 * Mfx_Prv_Mul_u32u32_u8_Inl
 * Mfx_Prv_Mul_u8s8_s8_Inl
 * Mfx_Prv_Mul_u8s8_u8_Inl
 * Mfx_Prv_Mul_u8u8_s8_Inl
 * Mfx_Prv_Mul_u8u8_u8_Inl
 * Mfx_Prv_MulDiv_s16s16s16_s16_Inl
 * Mfx_Prv_MulDiv_s16s16u16_s16_Inl
 * Mfx_Prv_MulDiv_s16u16s16_s16_Inl
 * Mfx_Prv_MulDiv_s16u16s16_u16_Inl
 * Mfx_Prv_MulDiv_s16u16u16_s16_Inl
 * Mfx_Prv_MulDiv_s16u16u16_u16_Inl
 * Mfx_Prv_MulDiv_s32s32s16_s16_Inl
 * Mfx_Prv_MulDiv_s32s32s32_s16_Inl
 * Mfx_Prv_MulDiv_s32s32s32_s32_Inl
 * Mfx_Prv_MulDiv_s32s32s32_u16_Inl
 * Mfx_Prv_MulDiv_s32s32u32_s32_Inl
 * Mfx_Prv_MulDiv_s32u32s32_s32_Inl
 * Mfx_Prv_MulDiv_s32u32u32_s32_Inl
 * Mfx_Prv_MulDiv_u16s16s16_s16_Inl
 * Mfx_Prv_MulDiv_u16s16s16_u16_Inl
 * Mfx_Prv_MulDiv_u16s16u16_s16_Inl
 * Mfx_Prv_MulDiv_u16s16u16_u16_Inl
 * Mfx_Prv_MulDiv_u16u16u16_u16_Inl
 * Mfx_Prv_MulDiv_u32s32s32_s32_Inl
 * Mfx_Prv_MulDiv_u32s32s32_u32_Inl
 * Mfx_Prv_MulDiv_u32s32u32_s32_Inl
 * Mfx_Prv_MulDiv_u32s32u32_u32_Inl
 * Mfx_Prv_MulDiv_u32u32s32_u32_Inl
 * Mfx_Prv_MulDiv_u32u32u16_u16_Inl
 * Mfx_Prv_MulDiv_u32u32u32_u16_Inl
 * Mfx_Prv_MulDiv_u32u32u32_u32_Inl
 * Mfx_Prv_MulP2_s16s16_s16_Inl
 * Mfx_Prv_MulP2_s16s16_u16_Inl
 * Mfx_Prv_MulP2_s32s32_s32_Inl
 * Mfx_Prv_MulP2_s32s32_u32_Inl
 * Mfx_Prv_MulP2_u16s16_s16_Inl
 * Mfx_Prv_MulP2_u16s16_u16_Inl
 * Mfx_Prv_MulP2_u16u16_s16_Inl
 * Mfx_Prv_MulP2_u16u16_u16_Inl
 * Mfx_Prv_MulP2_u32s32_s32_Inl
 * Mfx_Prv_MulP2_u32s32_u32_Inl
 * Mfx_Prv_MulP2_u32u32_s32_Inl
 * Mfx_Prv_MulP2_u32u32_u32_Inl
 * Mfx_Prv_MulShRight_s16s16u8_s16_Inl
 * Mfx_Prv_MulShRight_s16s16u8_s8_Inl
 * Mfx_Prv_MulShRight_s16s16u8_u16_Inl
 * Mfx_Prv_MulShRight_s16s16u8_u8_Inl
 * Mfx_Prv_MulShRight_s32s32u8_s16_Inl
 * Mfx_Prv_MulShRight_s32s32u8_s32_Inl
 * Mfx_Prv_MulShRight_s32s32u8_s8_Inl
 * Mfx_Prv_MulShRight_s32s32u8_u16_Inl
 * Mfx_Prv_MulShRight_s32s32u8_u32_Inl
 * Mfx_Prv_MulShRight_s32s32u8_u8_Inl
 * Mfx_Prv_MulShRight_u32s32u8_s16_Inl
 * Mfx_Prv_MulShRight_u32s32u8_s32_Inl
 * Mfx_Prv_MulShRight_u32s32u8_s8_Inl
 * Mfx_Prv_MulShRight_u32s32u8_u16_Inl
 * Mfx_Prv_MulShRight_u32s32u8_u32_Inl
 * Mfx_Prv_MulShRight_u32s32u8_u8_Inl
 * Mfx_Prv_MulShRight_u32u32u8_s16_Inl
 * Mfx_Prv_MulShRight_u32u32u8_s32_Inl
 * Mfx_Prv_MulShRight_u32u32u8_s8_Inl
 * Mfx_Prv_MulShRight_u32u32u8_u16_Inl
 * Mfx_Prv_MulShRight_u32u32u8_u32_Inl
 * Mfx_Prv_MulShRight_u32u32u8_u8_Inl
 * Mfx_Prv_RMulDiv_s16s16s16_s16_Inl
 * Mfx_Prv_RMulDiv_s16s16u16_s16_Inl
 * Mfx_Prv_RMulDiv_s16u16s16_s16_Inl
 * Mfx_Prv_RMulDiv_s16u16s16_u16_Inl
 * Mfx_Prv_RMulDiv_s16u16u16_s16_Inl
 * Mfx_Prv_RMulDiv_s16u16u16_u16_Inl
 * Mfx_Prv_RMulDiv_s32s32s16_s16_Inl
 * Mfx_Prv_RMulDiv_s32s32s32_s16_Inl
 * Mfx_Prv_RMulDiv_s32s32s32_s32_Inl
 * Mfx_Prv_RMulDiv_s32s32s32_u16_Inl
 * Mfx_Prv_RMulDiv_s32s32u32_s32_Inl
 * Mfx_Prv_RMulDiv_s32u32s32_s32_Inl
 * Mfx_Prv_RMulDiv_s32u32u32_s32_Inl
 * Mfx_Prv_RMulDiv_u16s16s16_s16_Inl
 * Mfx_Prv_RMulDiv_u16s16s16_u16_Inl
 * Mfx_Prv_RMulDiv_u16s16u16_s16_Inl
 * Mfx_Prv_RMulDiv_u16s16u16_u16_Inl
 * Mfx_Prv_RMulDiv_u16u16u16_u16_Inl
 * Mfx_Prv_RMulDiv_u32s32s32_s32_Inl
 * Mfx_Prv_RMulDiv_u32s32s32_u32_Inl
 * Mfx_Prv_RMulDiv_u32s32u32_s32_Inl
 * Mfx_Prv_RMulDiv_u32s32u32_u32_Inl
 * Mfx_Prv_RMulDiv_u32u32s32_u32_Inl
 * Mfx_Prv_RMulDiv_u32u32u16_u16_Inl
 * Mfx_Prv_RMulDiv_u32u32u32_u16_Inl
 * Mfx_Prv_RMulDiv_u32u32u32_u32_Inl
 *
 * Internal services:
 * Mfx_Prv_RightShift_s64u8_s64_Inl
 * Mfx_Prv_ShRight_s32u8_s32_Inl
 * Mfx_Prv_Mul_u32u32_u64_Inl
 * Mfx_Prv_Mul_u32s32_s64_Inl
 * Mfx_Prv_Mul_s32s32_s64_Inl
 *
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */

LOCAL_INLINE sint16 Mfx_Prv_Mul_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_s16s16_s32_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mul_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_s16u16_s32_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mul_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Mul_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_s32u16_s32_Inl(sint32 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mul_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_u16s16_s32_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mul_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Mul_u16u16_u32_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mul_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Mul_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Mul_u32u16_u32_Inl(uint32 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Mul_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Mul_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Mul_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Mul_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_u8s8_s8_Inl(uint8  x_value, sint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_u8s8_u8_Inl(uint8  x_value, sint8  y_value);
LOCAL_INLINE sint8 Mfx_Prv_Mul_u8u8_s8_Inl(uint8  x_value, uint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_Mul_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value);
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value);
LOCAL_INLINE sint16 Mfx_Prv_MulP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_MulP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_MulP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_MulP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_MulP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_MulP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_MulP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_MulP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_MulP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_MulP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_MulP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_MulP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_s16s16u8_s8_Inl(sint16 x_value, sint16 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_s16s16u8_u16_Inl(sint16 x_value, sint16 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_s16s16u8_u8_Inl(sint16 x_value, sint16 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_MulShRight_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_MulShRight_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_MulShRight_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_MulShRight_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint32 Mfx_Prv_MulShRight_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint32 Mfx_Prv_MulShRight_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value);
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value);
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value);
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value);

/* Internal services */
LOCAL_INLINE Mfx_sint64 Mfx_Prv_RightShift_s64u8_s64_Inl(Mfx_sint64 X_s64, uint8 Shift_u8);
LOCAL_INLINE sint32 Mfx_Prv_ShRight_s32u8_s32_Inl(sint32 x_value, uint8 shift);
LOCAL_INLINE Mfx_uint64 Mfx_Prv_Mul_u32u32_u64_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE Mfx_sint64 Mfx_Prv_Mul_u32s32_s64_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE Mfx_sint64 Mfx_Prv_Mul_s32s32_s64_Inl(sint32 x_value, sint32 y_value);

/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16s16_s16
 *
 * \brief Multiplies two sint16 variables and limits the result to a sint16 variable
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16s16_s32
 *
 * \brief Multiplies two sint16 variables and limits the result to a sint32 variable
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16S16_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_s16s16_s32_Inl(sint16 x_value, sint16 y_value)
{
    return ((sint32)x_value * (sint32)y_value);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16s16_s8
 *
 * \brief Multiplies two sint16 variables and limits the result to a sint8 variable
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16s16_u16
 *
 * \brief Multiplies two sint16 variables and limits the result to a uint16 variable
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16s16_u8
 *
 * \brief Multiplies two sint16 variables and limits the result to a uint8 variable
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16u16_s16
 *
 * \brief Multiplies two sint16 and uint16 variables and limits the result to a sint16 variable
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16u16_s32
 *
 * \brief Multiplies two sint16 and uint16 variables and limits the result to a sint32 variable
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16U16_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_s16u16_s32_Inl(sint16 x_value, uint16 y_value)
{
    return ((sint32)x_value * (sint32)y_value);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s16u16_u16
 *
 * \brief Multiplies two sint16 and uint16 variables and limits the result to a uint16 variable
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32s32_s16
 *
 * \brief Multiplies two sint32 variables and limits the result to a sint16 variable
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint16 res_s16;


    /* Unequal signs */
    if ( ((y_value < 0L) && (x_value > 0L)) || ((x_value < 0L) && (y_value > 0L)) )
    {
        /* X_value > 0  && y_value < 0 */
        if( x_value > 0L)
        {
            if ( x_value <= ( ((sint32)MFX_MINSINT16) / y_value))
            {
                res_s16 = ((sint16)x_value) * ((sint16)y_value);
            }
            else
            {
                res_s16 = MFX_MINSINT16;
            }
        }

        /* X_value < 0  && y_value < 0 */
        else
        {
            if ( x_value >= (((sint32)MFX_MINSINT16) / y_value) )
            {
                res_s16 = ((sint16)x_value) * ((sint16)y_value);
            }
            else
            {
                res_s16 = MFX_MINSINT16;
            }
        }
    }

    /* Zero */
    else if ((y_value == 0L) || (x_value == 0L))
    {
        res_s16 = 0;
    }
    /* Equal signs */
    else
    {
        /* X_value > 0  && y_value > 0 */
        if( x_value > 0)
        {
            if ( x_value <= (((sint32)MFX_MAXSINT16) / y_value))
            {
                res_s16 = ((sint16) x_value) * ((sint16) y_value);
            }
            else
            {
                res_s16 = MFX_MAXSINT16;
            }
        }

        /* X_value < 0  && y_value < 0 */
        else
        {
            if (x_value >= (((sint32)MFX_MAXSINT16) / y_value))
            {
                res_s16 = ((sint16)x_value) * ((sint16)y_value);
            }
            else
            {
                res_s16 = MFX_MAXSINT16;
            }
        }
    }

    return (res_s16);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32s32_s32
 *
 * \brief Multiplies two sint32 variables and limits the result to a sint32 variable
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;


    /* Unequal signs */
    if ( ((y_value < 0L) && (x_value > 0L)) || ((x_value < 0L) && (y_value > 0L)) )
    {
        /* X_value > 0  && y_value < 0 */
        if( x_value > 0L)
        {
            if ( y_value  >= (MFX_MINSINT32 / x_value))
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = MFX_MINSINT32;
            }
        }

        /* X_value < 0  && y_value < 0 */
        else
        {
            if ( x_value  >= (MFX_MINSINT32 / y_value))
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = MFX_MINSINT32;
            }
        }
    }

    /* Zero */
    else if ((y_value == 0L) || (x_value == 0L))
    {
        res_s32 = 0L;
    }

    /* Equal signs */
    else
    {
        /* X_value > 0  && y_value > 0 */
        if( x_value > 0)
        {
            if ( x_value <= (MFX_MAXSINT32 / y_value))
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = MFX_MAXSINT32;
            }
        }

        /* X_value < 0  && y_value < 0 */
        else
        {
            if ( x_value >= (MFX_MAXSINT32 / y_value) )
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = MFX_MAXSINT32;
            }
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32s32_s8
 *
 * \brief Multiplies 2 sint32 variables and limits the result to a sint8 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint8 res_s8;


    /* Unequal signs */
    if ( ((y_value < 0L) && (x_value > 0L)) || ( (x_value < 0L) && (y_value > 0L)) )
    {
        if( x_value > 0L)
        {
            if ( x_value <= (((sint32)MFX_MINSINT8) / y_value))
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = MFX_MINSINT8;
            }
        }
        else
        {
            if ( x_value >= (((sint32)MFX_MINSINT8) / y_value) )
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = MFX_MINSINT8;
            }
        }
    }

    /* Zero */
    else if ((y_value == 0L) || (x_value == 0L))
    {
        res_s8 = 0;
    }

    /* Equal signs */
    else
    {
        /* X_value > 0  && y_value > 0 */
        if( x_value > 0L)
        {
            if ( x_value <= (((sint32)MFX_MAXSINT8) / y_value))
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = MFX_MAXSINT8;
            }
        }

        /* X_value < 0  && y_value < 0 */
        else
        {
            if ( x_value >= ( ((sint32)MFX_MAXSINT8) / y_value) )
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = MFX_MAXSINT8;
            }
        }
    }

    return (res_s8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32s32_u16
 *
 * \brief Multiplies two sint32 variables and limits the result to an uint16 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 tmp1_u32;
    uint32 tmp2_u32;

    /* Unequal signs */
    if (((x_value >= 0L) && (y_value <= 0L)) || ((x_value <= 0L) && (y_value >= 0L)))
    {
        tmp1_u32 = 0UL;
    }

    /* Equal signs and bot operands = 0 */
    else
    {
        tmp1_u32 = (uint32)x_value;
        tmp2_u32 = (uint32)y_value;

        /* Both operands are negative, calculate the  magnitude */
        if(x_value < 0L)
        {
            tmp1_u32 = ((uint32)(0xFFFFFFFFU ^ tmp1_u32)) + 1UL;
            tmp2_u32 = ((uint32)(0xFFFFFFFFU ^ tmp2_u32)) + 1UL;
        }

         /* Calculate the result */
        if(tmp1_u32 <= (((uint32) MFX_MAXUINT16) / tmp2_u32))
        {
            tmp1_u32 *= tmp2_u32;
        }
        else
        {
            tmp1_u32 = (uint32) MFX_MAXUINT16;
        }
    }
    return ((uint16) tmp1_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32s32_u32
 *
 * \brief Multiplies two sint32 variables and limits the result to an uint32 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Mul_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 tmp1_u32;
    uint32 tmp2_u32;

    /* Unequal signs */
    if (((x_value >= 0L) && (y_value <= 0L)) || ((x_value <= 0L) && (y_value >= 0L)))
    {
        tmp1_u32 = 0UL;
    }

    /* Equal signs and bot operands = 0 */
    else
    {
        tmp1_u32 = (uint32)x_value;
        tmp2_u32 = (uint32)y_value;

        /* Both operands are negative, calculate the  magnitude */
        if(x_value < 0L)
        {
            tmp1_u32 = ((uint32)(0xFFFFFFFFU ^ tmp1_u32)) + 1UL;
            tmp2_u32 = ((uint32)(0xFFFFFFFFU ^ tmp2_u32)) + 1UL;
        }

        /* Calculate the result */
        if(tmp1_u32 <= (MFX_MAXUINT32 / tmp2_u32))
        {
            tmp1_u32 *= tmp2_u32;
        }
        else
        {
            tmp1_u32 = MFX_MAXUINT32;
        }
    }
    return (tmp1_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32s32_u8
 *
 * \brief Multiplies 2 sint32 variables and limits the result to an uint8 variable
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 tmp1_u32;
    uint32 tmp2_u32;

    /* Unequal signs */
    if (((x_value >= 0L) && (y_value <= 0L)) || ((x_value <= 0L) && (y_value >= 0L)))
    {
        tmp1_u32 = 0UL;
    }
    /* Equal signs and both operands = 0 */
    else
    {
        tmp1_u32 = (uint32)x_value;
        tmp2_u32 = (uint32)y_value;

        /* Both operands are negative, calculate the  magnitude */
        if(x_value < 0L)
        {
            tmp1_u32 = ((uint32)(0xFFFFFFFFU ^ tmp1_u32)) + 1UL;
            tmp2_u32 = ((uint32)(0xFFFFFFFFU ^ tmp2_u32)) + 1UL;
        }

         /* Calculate the result */
        if(tmp1_u32 <= (((uint32) MFX_MAXUINT8) / tmp2_u32))
        {
            tmp1_u32 *= tmp2_u32;
        }
        else
        {
            tmp1_u32 = (uint32) MFX_MAXUINT8;
        }
    }
    return ((uint8) tmp1_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32u16_s32
 *
 * \brief Multiplies a sint32 and uint16 variable and limits the result to a sint32 variable
 *
 * \param    sint32 x_value
 * \param    uint16 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S32U16_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_s32u16_s32_Inl(sint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_Mul_s32s32_s32_Inl(x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s8s8_s8
 *
 * \brief Multiplies two sint8 variables and limits the result to a sint8 variable
 *
 * \param    sint8 x_value
 * \param    sint8 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_s8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s8s8_u8
 *
 * \brief Multiplies two sint8 variables and limits the result to an uint8 variable
 *
 * \param    sint8 x_value
 * \param    sint8 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_u8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s8u8_s8
 *
 * \brief Multiplies a sint8 and uint8 variable and limits the result to a sint8 variable
 *
 * \param    sint8 x_value
 * \param    uint8 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_s16s16_s8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s8u8_u8
 *
 * \brief Multiplies a sint8 and uint8 variable and limits the result to an uint8 variable
 *
 * \param    sint8 x_value
 * \param    uint8 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_S8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_s16s16_u8((sint16)x_value, (sint16)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16s16_s16
 *
 * \brief Multiplies an uint16 and a sint16 variable and limits the result to an sint16 variable
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Mul_s16u16_s16(y_value, x_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16s16_s32
 *
 * \brief Multiplies an uint16 and a sint16 variable and limits the result to an sint32 variable
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16S16_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_u16s16_s32_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Mul_s16u16_s32(y_value, x_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16s16_s8
 *
 * \brief Multiplies an uint16 and a sint16 variable and limits the result to an sint8 variable
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16s16_u16
 *
 * \brief Multiplies an uint16 and a sint16 variable and limits the result to a uint16 variable
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16s16_u8
 *
 * \brief Multiplies an uint16 and a sint16 variable and limits the result to an uint8 variable
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value * (sint32)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16u16_s16
 *
 * \brief Multiplies an uint16 and a uint16 variable and limits the result to an sint16 variable
 *
 * \param    uint16 x_value
 * \param    uint16 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s16_Inl((uint32)x_value * (uint32)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16u16_s8
 *
 * \brief Multiplies an uint16 and a uint16 variable and limits the result to an sint8 variable
 *
 * \param    uint16 x_value
 * \param    uint16 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s8_Inl((uint32)x_value * (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u16u16_u16
 *
 * \brief Multiplies two uint16 variables and limits the result to an uint16 variable
 *
 * \param    uint16 x_value
 * \param    uint16 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u16_Inl((uint32)x_value * (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u16u16_u32
 *
 * \brief Multiplies two uint16 variables and limits the result to an uint32 variable
 *
 * \param    uint16 x_value
 * \param    uint16 y_value
 * \return   uint32
 * \retval   (x_value * y_value) saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16U16_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Mul_u16u16_u32_Inl(uint16 x_value, uint16 y_value)
{
    return ((uint32)x_value * (uint32)y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u16u16_u8
 *
 * \brief Multiplies an uint16 and a uint16 variable and limits the result to an uint8 variable
 *
 * \param    uint16 x_value
 * \param    uint16 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u8_Inl((uint32)x_value * (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32s32_s16
 *
 * \brief Multiplies an uint32 variable and a sint32 variable and limits the result to a sint16 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to a sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Mul_u32s32_s32_Inl(x_value, y_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32u32_s32
 *
 * \brief Multiplies an uint32 variable and a sint32 variable and limits the result to a sint32 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to a sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    sint32 tmp_s32;


    /* Y_value >= 0: equal signs */
    if ( y_value > 0L )
    {
        if( x_value <= ((MFX_MAXSINT32_U / (uint32)y_value)) )
        {
            res_s32 = ((sint32) x_value) * y_value;
        }
        else
        {
            res_s32 = MFX_MAXSINT32;
        }
    }

    /* Zero */
    else if ((x_value == 0UL) || (y_value == 0L))
    {
        res_s32 = 0L;
    }

    /* Y_value < 0: Unequal signs */
    else
    {
        tmp_s32 = MFX_MAXSINT32;

        /* Handle the special scenario MFX_MIN/-1 in order to avoid division overflow */
        if(y_value != -1L)
        {
            tmp_s32 = (MFX_MINSINT32 / y_value);
        }

        if ((x_value) <= ((uint32)tmp_s32))
        {
            res_s32 = ((sint32) x_value) * y_value;
        }
        else
        {
            res_s32 = MFX_MINSINT32;
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32s32_s8
 *
 * \brief Multiplies an uint32 and a sint32 variable and limits the result to a sint8 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
*/
#ifndef MFX_PRV_MUL_U32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint8 res_s8;
    sint32 tmp_s32;


    /* Y_value >= 0: equal signs */
    if ( y_value > 0L )
    {
        if(x_value <= (((uint32)MFX_MAXSINT8) / ((uint32)y_value)))
        {
            res_s8 = ((sint8) x_value) * ((sint8) y_value);
        }
        else
        {
            res_s8 = MFX_MAXSINT8;
        }
    }
    /* Zero */
    else if ((x_value == 0UL) || (y_value == 0L))
    {
        res_s8 = 0;
    }
    /* Y_value < 0: Unequal signs */
    else
    {
        tmp_s32 = (((sint32)MFX_MINSINT8) / y_value);
        if (x_value <= (uint32)tmp_s32)
        {
            res_s8 = ((sint8) x_value) * ((sint8) y_value);
        }
        else
        {
            res_s8 = MFX_MINSINT8;
        }
    }

    return (res_s8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32u32_u16
 *
 * \brief Multiplies an uint32 and a sint32 variable and limits the result to an uint16 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   uint16
 * \retval   (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if ((y_value <= 0L) || (x_value <= 0uL))
    {
        res_u32 = 0UL;
    }
    else
    {
        res_u32 = ((uint32)MFX_MAXUINT16) / ((uint32)y_value);

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * ((uint32) y_value);
        }
        else
        {
            res_u32 = (uint32)MFX_MAXUINT16;
        }
    }

    return ((uint16)res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_s32u32_u32
 *
 * \brief Multiplies an uint32 and a sint32 variable and limits the result to an uint32 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   uint32
 * \retval   (x_value * y_value) saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Mul_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if ( (y_value <= 0L) || (x_value <= 0UL) )
    {
        res_u32 = 0uL;
    }
    else
    {
        res_u32 =  MFX_MAXUINT32 / ((uint32) y_value);

        if (res_u32 >= x_value)
        {
            res_u32 =  x_value  * ((uint32) y_value);
        }
        else
        {
            res_u32 = MFX_MAXUINT32;
        }
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32s32_u8
 *
 * \brief Multiplies an uint32 and a sint32 variable and limits the result to an uint8 variable
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if ( (y_value <= 0L) || (x_value == 0UL) )
    {
        res_u32 = 0UL;
    }
    else
    {
        if ((((uint32) MFX_MAXUINT8) / ((uint32)y_value)) >= x_value)
        {
            res_u32 = x_value * ((uint32) y_value);
        }
        else
        {
            res_u32 = (uint32) MFX_MAXUINT8;
        }
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u16_u32
 *
 * \brief Multiplies a uint32 and a uint16 variabel and limits the result to a uint32 variable
 *
 * \param    uint32 x_value
 * \param    uint16 y_value
 * \return   uint32
 * \retval   (x_value * y_value) saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U16_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Mul_u32u16_u32_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_Mul_u32u32_u32_Inl(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u32_s16
 *
 * \brief Multiplies two uint32 variabels and limits the result to a sint16 variable
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \return   sint16
 * \retval   (x_value * y_value) saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Mul_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    sint16 res_s16;
    uint32 tmp_u32;


    if (y_value <= 0uL)
    {
        res_s16 = 0;
    }
    else
    {
        tmp_u32 = ( (uint32)MFX_MAXSINT16_U) / y_value;
        res_s16 = (sint16)(tmp_u32) ;

        if( ((uint32)(res_s16)) >= x_value)
        {
            res_s16 = ((sint16) x_value) * ((sint16) y_value);
        }
        else
        {
            res_s16 = MFX_MAXSINT16;
        }
    }

    return (res_s16);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u32_s32
 *
 * \brief Multiplies two uint32 variables and limits the result to a sint32 variable
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \return   sint32
 * \retval   (x_value * y_value) saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Mul_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    if (y_value <= 0uL)
    {
        res_s32 = 0L;
    }
    else
    {
        tmp_u32 = (MFX_MAXSINT32_U / y_value);
        res_s32 = ( (sint32)tmp_u32 );

        if (((uint32) res_s32) >= x_value)
        {
            res_s32 = ((sint32) x_value) * ((sint32) y_value);
        }
        else
        {
            res_s32 = MFX_MAXSINT32;
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u32_s8
 *
 * \brief Multiplies two uint32 variabels and limits the result to a sint8 variable
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    sint8 res_s8;
    uint32 tmp_u32;

    if (y_value <= 0UL)
    {
        res_s8 = 0;
    }
    else
    {
       tmp_u32 = ((uint32)MFX_MAXSINT8) / y_value;
       res_s8 = ((sint8) tmp_u32);

        if ( ((uint32) res_s8) >= x_value)
        {
            tmp_u32 = (x_value * y_value);
            res_s8 =  (sint8)tmp_u32;
        }
        else
        {
            res_s8 = MFX_MAXSINT8;
        }
    }

    return (res_s8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u32_u16
 *
 * \brief Multiplies two uint32 variabels and limits the result to an uint16 variable
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \return   uint16
 * \retval    (x_value * y_value) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Mul_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (y_value == 0UL)
    {
        res_u32 = 0UL;
    }
    else
    {
        res_u32 = ((uint32)MFX_MAXUINT16) / y_value;

        if (res_u32 >= x_value)
        {
            res_u32 =  x_value * y_value;
        }
        else
        {
            res_u32 = (uint32)MFX_MAXUINT16;
        }
    }

    return ((uint16)res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u32_u32
 *
 * \brief Multiplies 2 uint32 variables and limits the result to an uint32 variable
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \return   uint32
 * \retval   (x_value * y_value) saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Mul_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (y_value == 0UL)
    {
        res_u32 = 0;
    }
    else
    {
        res_u32 = MFX_MAXUINT32 / y_value;

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * y_value;
        }
        else
        {
            res_u32 = MFX_MAXUINT32;
        }
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u32u32_u8
 *
 * \brief Multiplies 2 uint32 variabels and limits the result to an uint8 variable
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \return   uint8
 * \retval    (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (y_value == 0uL)
    {
        res_u32 = 0UL;
    }
    else
    {
        res_u32 =  ((uint32)MFX_MAXUINT8) / y_value;

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * y_value;
        }
        else
        {
            res_u32 = (uint32)MFX_MAXUINT8;
        }
    }

    return ((uint8)res_u32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u8s8_s8
 *
 * \brief Multiplies an uint8 and a sint8 variable and limits the result to an sint8 variable
 *
 * \param    uint8 x_value
 * \param    sint8 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_s8((sint16)x_value, (sint16)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u8s8_u8
 *
 * \brief Multiplies an uint8 and a sint8 variable and limits the result to an uint8 variable
 *
 * \param    uint8 x_value
 * \param    sint8 y_value
 * \return   uint8
 * \retval   (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_u8((sint16)x_value, (sint16)y_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Mul_u8u8_s8
 *
 * \brief Multiplies an uint8 and a uint8 variable and limits the result to an sint8 variable
 *
 * \param    uint8 x_value
 * \param    uint8 y_value
 * \return   sint8
 * \retval   (x_value * y_value) saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Mul_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_u16u16_s8((uint16)x_value, (uint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Mul_u8u8_u8
 *
 * \brief Multiplies two uint8 variabels and limits the result to an uint8 variable
 *
 * \param    uint8 x_value
 * \param    uint8 y_value
 * \return   uint8
 * \retval    (x_value * y_value) saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MUL_U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Mul_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_u16u16_u8((uint16)x_value, (uint16)y_value));
}
#endif
/*********************************************************************************************************************/

#ifndef MFX_PRV_MUL_S32S32_S64_INL_REMAPPED
LOCAL_INLINE Mfx_sint64 Mfx_Prv_Mul_s32s32_s64_Inl(sint32 x_value, sint32 y_value)
{
    Mfx_sint64 res_s64;

    res_s64 = (Mfx_sint64)x_value * (Mfx_sint64)y_value;

    return (res_s64);
}
#endif

/*********************************************************************************************************************/
#ifndef MFX_PRV_MUL_U32S32_S64_INL_REMAPPED
LOCAL_INLINE Mfx_sint64 Mfx_Prv_Mul_u32s32_s64_Inl(uint32 x_value, sint32 y_value)
{
    Mfx_sint64 res_s64;

    res_s64 = (Mfx_sint64)x_value * (Mfx_sint64)y_value;

    return (res_s64);
}
#endif
/*********************************************************************************************************************/
#ifndef MFX_PRV_MUL_U32U32_U64_INL_REMAPPED
LOCAL_INLINE Mfx_uint64 Mfx_Prv_Mul_u32u32_u64_Inl(uint32 x_value, uint32 y_value)
{
    Mfx_uint64 res_u64;

    res_u64 = (Mfx_uint64)x_value * (Mfx_uint64)y_value;

    return (res_u64);
}
#endif
/*********************************************************************************************************************/
#ifndef MFX_PRV_SHRIGHT_S32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_ShRight_s32u8_s32_Inl(sint32 x_value, uint8 shift)
{
    uint32 res_u32;
    sint32 res_s32;

    res_u32 = (uint32)x_value >> shift;

    if (x_value < 0L)
    {
        res_u32 |= (0xFFFFFFFFUL << (32UL - shift));
    }

    res_s32 = (sint32)res_u32;

    return (res_s32);
}
#endif
/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s16s16s16_s16
 *
 * \brief Multiplies two sint16 variables, divides the interim value by a third one and limits the result to a sint16
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \param    sint16 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to sint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S16S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s16s16u16_s16
 *
 * \brief Multiplies two sint16 variables, divides the interim value by an uint16 and limits the result to a sint16
 *
 * \param    sint16 x_value
 * \param    sint16 y_value
 * \param    uint16 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to sint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S16S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s16u16s16_s16
 *
 * \brief Multiplies a sint16 and uint16 variable, divides the interim value by an sint16 and limits the result
 *        to a sint16
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \param    sint16 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to sint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S16U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s16u16s16_u16
 *
 * \brief Multiplies a sint16 and uint16 variable, divides the interim value by an sint16 and limits the result
 *        to a uint16
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \param    sint16 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to uint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S16U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s16u16u16_s16
 *
 * \brief Multiplies a sint16 and uint16 variable, divides the interim value by an uint16 and limits the result
 *        to a sint16
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \param    uint16 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to sint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S16U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s16u16u16_u16
 *
 * \brief Multiplies a sint16 and uint16 variable, divides the interim value by an uint16 and limits the result
 *        to a uint16
 *
 * \param    sint16 x_value
 * \param    uint16 y_value
 * \param    uint16 z_value
 * \return   uint16 ((x_value * y_value) / z_value )saturated to uint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S16U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32s32s16_s16
 *
 * \brief Multiplies two sint32 variable, divides the interim value by a sint16 and limits the result to a sint16
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \param    sint16 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to sint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32S32S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value)
{
    return (Mfx_MulDiv_s32s32s32_s16(x_value, y_value, (sint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32s32s32_s16
 *
 * \brief Multiplies two sint32 variables, divides the interim value by a third one and limits the result to a sint16
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \param    sint32 z_value
 * \return   sint16 ((x_value * y_value) / z_value )saturated to sint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_MulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32s32s32_s32
 *
 * \brief Multiplies two sint32 variables, divides the interim value by a third one and limits the result to a sint16
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \param    sint32 z_value
 * \return   sint32 ((x_value * y_value) / z_value )saturated to sint32
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_s32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64s32_s32_Inl(dividend_s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32s32s32_u16
 *
 * \brief Multiplies two sint32 variables, divides the interim value by a third one and limits the result to a sint16
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \param    sint32 z_value
 * \return   uint16 ((x_value * y_value)  /  z_value ) saturated to uint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl(Mfx_Prv_MulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32s32u32_s32
 *
 * \brief Multiplies two sint32 variables, divides the interim value by a third uint32 variable
 * \ and limits the result to sint32
 *
 * \param    sint32 x_value
 * \param    sint32 y_value
 * \param    uint32 z_value
 * \return   sint32
 * \retval   ((x_value * y_value) / z_value )saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_s32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64u32_s32_Inl(dividend_s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32u32s32_s32
 *
 * \brief Multiplies an sint32 variable with a uint32 variable, divides the interim value by a third sint32 variable
 * \ and limits the result to sint32
 *
 * \param    sint32 x_value
 * \param    uint32 y_value
 * \param    sint32 z_value
 * \return   sint32
 * \retval   ((x_value * y_value) / z_value )saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value)
{
    return (Mfx_MulDiv_u32s32s32_s32(y_value, x_value, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_s32u32u32_s32
 *
 * \brief Multiplies an sint32 variable with a uint32 variable, divides the interim value by a third uint32 variable
 * \ and limits the result to sint32
 *
 * \param    sint32 x_value
 * \param    uint32 y_value
 * \param    uint32 z_value
 * \return   sint32
 * \retval   ((x_value * y_value) / z_value )saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_S32U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value)
{
    return (Mfx_MulDiv_u32s32u32_s32(y_value, x_value, z_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_MulDiv_u16s16s16_s16
 *
 * \brief Multiplies a uint16 and sint16 variable, divides the interim value by an sint16 and limits the result
 *        to a sint16
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \param    sint16 z_value
 * \return   sint16
 * \retval   ((x_value * y_value) / z_value )saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U16S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    return (Mfx_MulDiv_s16u16s16_s16(y_value, x_value, z_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_MulDiv_u16s16s16_u16
 *
 * \brief Multiplies a uint16 and sint16 variable, divides the interim value by an sint16 and limits the result
 *        to a uint16
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \param    sint16 z_value
 * \return   uint16
 * \retval   ((x_value * y_value) / z_value )saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U16S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    return (Mfx_MulDiv_s16u16s16_u16(y_value, x_value, z_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_MulDiv_u16s16u16_s16
 *
 * \brief Multiplies a uint16 and sint16 variable, divides the interim value by an uint16 and limits the result
 *        to a sint16
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \param    uint16 z_value
 * \return   sint16
 * \retval   ((x_value * y_value) / z_value )saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U16S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    return (Mfx_MulDiv_s16u16u16_s16(y_value, x_value, z_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_MulDiv_u16s16u16_u16
 *
 * \brief Multiplies a uint16 and sint16 variable, divides the interim value by an uint16 and limits the result
 *        to a uint16
 *
 * \param    uint16 x_value
 * \param    sint16 y_value
 * \param    uint16 z_value
 * \return   uint16
 * \retval   ((x_value * y_value) / z_value ) saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U16S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    return (Mfx_MulDiv_s16u16u16_u16(y_value, x_value, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u16u16u16_u16
 *
 * \brief Multiplies two uint16 variables, divides the interim value by a uint16 and limits the result to a uint16
 *
 * \param    uint16 x_value
 * \param    uint16 y_value
 * \param    uint16 z_value
 * \return   uint16 ((x_value * y_value)  /  z_value ) saturated to uint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U16U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_u32u32_u16_Inl((uint32)x_value * (uint32)y_value, (uint32)z_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_MulDiv_u32s32s32_s32
 *
 * \brief Multiplies a uint32 variable with a sint32 variable, divides the interim value by a third sint32 variable
 * \ and limits the result to sint32
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \param    sint32 z_value
 * \return   sint32
 * \retval   ((x_value * y_value) / z_value )saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_u32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64s32_s32_Inl(dividend_s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u32s32s32_u32
 *
 * \brief Multiplies a uint32 variable with an sint32 variable, divides the interim value by a third sint32 variable
 * \ and limits the result to uint32
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \param    sint32 z_value
 * \return   uint32
 * \retval   ((x_value * y_value) / z_value )saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_u32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64s32_u32_Inl(dividend_s64, z_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_MulDiv_u32s32u32_s32
 *
 * \brief Multiplies a uint32 variable with a sint32 variable, divides the interim value by a third uint32 variable
 * \ and limits the result to sint32
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \param    uint32 z_value
 * \return   sint32
 * \retval   ((x_value * y_value) / z_value )saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_u32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64u32_s32_Inl(dividend_s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u32s32u32_u32
 *
 * \brief Multiplies a uint32 variable with an sint32 variable, divides the interim value by a third uint32 variable
 * \ and limits the result to uint32
 *
 * \param    uint32 x_value
 * \param    sint32 y_value
 * \param    uint32 z_value
 * \return   uint32
 * \retval   ((x_value * y_value) / z_value )saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    uint32 res_u32;

    if (y_value >= 0L)
    {
        res_u32 = Mfx_Prv_MulDiv_u32u32u32_u32_Inl(x_value, (uint32)y_value, z_value);
    }
    else
    {
        res_u32 = ((x_value | z_value) == 0UL) ? MFX_MAXUINT32 : 0UL;
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u32u32s32_u32
 *
 * \brief Multiplies two uint32 variables, divides the interim value by a third sint32 variable
 * \ and limits the result to uint32
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \param    sint32 z_value
 * \return   uint32
 * \retval   ((x_value * y_value) / z_value )saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value)
{
    uint32 res_u32;

    if (z_value >= 0L)
    {
        res_u32 = Mfx_Prv_MulDiv_u32u32u32_u32_Inl(x_value, y_value, (uint32)z_value);
    }
    else
    {
        res_u32 = MFX_MINUINT32;
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u32u32u16_u16
 *
 * \brief Multiplies two uint32 variables, divides the interim value by a uint16 and limits the result to a uint16
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \param    uint16 z_value
 * \return   uint16 ((x_value * y_value)  /  z_value ) saturated to uint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32U32U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value)
{
    return (Mfx_MulDiv_u32u32u32_u16(x_value, y_value, (uint32)z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u32u32u32_u16
 *
 * \brief Multiplies two uint32 variables, dividesthe interim value by a third one and limits the result to an uint16
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \param    uint32 z_value
 * \return   uint16 ((x_value * y_value)  /  z_value )saturated to uint16
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    return (Mfx_Prv_Sat_u32_u16_Inl(Mfx_Prv_MulDiv_u32u32u32_u32_Inl(x_value, y_value, z_value)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulDiv_u32u32u32_u32
 *
 * \brief Multiplies two uint32 variables, divides the interim value by a third one and limits the result to a uint32
 *
 * \param    uint32 x_value
 * \param    uint32 y_value
 * \param    uint32 z_value
 * \return   uint32 ((x_value * y_value) / z_value )saturated to uint32
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded towards 0.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULDIV_U32U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    Mfx_uint64 dividend_u64;

    dividend_u64 = Mfx_Prv_Mul_u32u32_u64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_u64u32_u32_Inl(dividend_u64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_s16s16_s16
 *
 * \brief   Multiplies 2 16-bit integers with scaling factors set by input parameters. The function
 *          returns the integer value of the fixed point multiplication(C), determined according to
 *          the return-value equation. Return-value shall be saturated to boundary values in the
 *          event of underflow or overflow. If it is necessary to round the result of this equation,
 *          it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -31 <= (c - b - a) <= 15
 *
 * \param    sint16 x       Integer value of fixed point operand.
 * \param    sint16 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   sint16         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to sint16.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 mul_s32;
    sint32 res_s32;
    sint32 temp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) b - (sint32) a;

    /* Product before scaling */
    mul_s32 = (sint32) x * (sint32) y;

    /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of dat
     Example : if mul_s32 = MINSINT16, shift_s32 = 3 then
     res_s32 = (0xFFFF 8000 >> 3) => res_s32 = 0x1FFF F000 = +536866816, which is incorrect. */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (mul_s32 < 0)
        {
            tmp_u32 = ((uint32) (-mul_s32) >> ((uint32)(shift_s32)));
            /* Product is negated to retain the sign */
            res_s32 = -((sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) mul_s32 >> ((uint32)(shift_s32)));
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
             Re-cast back to 'signed' after shifting */
            res_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) mul_s32 << ((uint32)(shift_s32)));
        res_s32 = (sint32)tmp_u32 ;

        /* To check whether overflow/underflow occurred due to left shift of the product
        Examples:
        Valid Range                Overflow condition                 Underflow condition
        mul_s32 = 56, shift_s32 = -3  mul_s32 = 8388352, shift_s32 = 12  mul_s32 = -524288 shift_s32 = 14
        mul_s32 = 0x0000 0038         mul_s32 = 0x007F FF00              mul_s32 = 0xFFF8 0000
        res_s32 = 0x0000 0007         res_s32 = 0xFFF0 0000              res_s32 = 0x0000 0000
        temp_s32= 0x0000 0038         temp_s32= 0x000F FF00(!= mul_s32)  temp_s32= 0x0000 0000 (!= mul_s32)
        res_s32 = 0x0000 0007         res_s32 = MAXSINT32                res_s32 = MINSINT32
        Shift back and check whether the product remains unchanged */

        tmp_u32 = (uint32)res_s32 >> (uint32)shift_s32;

        if(res_s32 < 0L) // If the number was signed
        {
            // Patch in the sign bits:
            tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shift_s32));
        }

        temp_s32 = (sint32)tmp_u32;

        /* If it changed then an overflow/underflow has occurred */
        if (temp_s32 != mul_s32)
        {
            /* Saturation check */
            if (mul_s32 < 0L)
            {
                res_s32 = (sint32) MFX_MINSINT16; /* Underflow Saturation */
            }
            else
            {
                res_s32 = (sint32) MFX_MAXSINT16; /* Overflow Saturation */
            }
        }
    }

    /* Saturation check (ternary operator avoided to facilitate SAT optimization) */
    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) MFX_MAXSINT16; /* Overflow saturation */
    }
    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) MFX_MINSINT16; /* Underflow saturation */
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_s16s16_u16
 *
 * \brief Multiplies 2 16-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -31 <= (c - b - a) <= 15
 *
 * \param    sint16 x       Integer value of fixed point operand
 * \param    sint16 y       Integer value of fixed point operand
 * \param    sint16 a       Radix point position of first fixed point operand
 * \param    sint16 b       Radix point position of second fixed point operand
 * \param    sint16 c       Radix point position of fixed point result
 * \return   uint16         Result
 * \retval                  2^(c-b-a) * [x * y] saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 temp_u32;
    sint32 temp_s32;
    boolean tmp_b;
    uint32 mul_u32;
    sint32 shift_s32;

    /* Uses the XOR command */
    tmp_b = ( (x > 0) != (y > 0));

    /* Negative result implies underflow */
    if (tmp_b == TRUE)
    {
        res_u32 = (uint32) MFX_MINUINT16; /* Underflow Saturation */
    }
    else
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) c - (sint32) b - (sint32) a;

        /* Product before scaling */
        temp_s32 = ((sint32) x * (sint32) y);
        mul_u32 = (uint32)temp_s32;

        /* Shift operation is performed on the product of the two Inputs */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            res_u32 = (mul_u32 >> ((uint32)(shift_s32)));
        }
        else
        {
            res_u32 = (mul_u32 << (uint32)shift_s32);

            /* To check whether overflow/underflow occurred due to left shift of the product
            Examples:
            Valid Range                   Overflow condition
            mul_u32 = 56  shift_s32 = -3      mul_u32 = 8388352 shift_s32 = 12
            mul_u32 = 0x0000 0038             mul_u32 = 0x 007F FF00
            res_s32 = 0x0000 0007             res_s32 = 0xFFF0 0000
            temp_u32 = 0x0000 0038            temp_u32   = 0x000F FF00 (!= mul_u32)
            res_s32 = 0x0000 0007             res_s32 = MAXSINT32
            */

            /* Overflow check */
            /* Data would be valid only if the reverse shift gives back the same result */
            temp_u32 = (res_u32 >> ((uint32)shift_s32));

            /* If it changed then an overflow has occurred */
            if (temp_u32 != mul_u32)
            {
                res_u32 = (uint32) MFX_MAXUINT16; /* Overflow saturation */
            }
        }

        /* Overflow check */
        if (res_u32 > (uint32) MFX_MAXUINT16)
        {
            res_u32 = (uint32) MFX_MAXUINT16; /* Overflow saturation */
        }
    }
    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_s32s32_s32
 *
 * \brief Multiplies 2 32-bit integers with scaling factors set by input parameters. The function returns the integer
 *        valueof the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -63 <= (c - b - a) <= 31
 *
 * \param    sint32 x       Integer value of fixed point operand.
 * \param    sint32 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   sint32         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to sint32.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u Res_Temp;
    sint32 shift_s32;
    sint32 flag = 0;
    uint32 tmp_u32;

    /* Product before scaling */
    Res_Temp.s64 = (Mfx_sint64) x * (Mfx_sint64) y;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a - (sint32) b;

    /* If product is negative, negate the result as further calculations are done on positive value */
    if (Res_Temp.s64s.h < 0L)
    {
        Res_Temp.s64 = -(Res_Temp.s64);
        /* Indicate the product is negative */
        flag = 1;
    }

    /* Check for Overflow w.r.t high word of the product in case of scaling-down */
    if ((shift_s32 < 0L) || (Res_Temp.s64s.h == 0L))
    {
        /* If shift value is less than -31 then shift result will be incorrect.
         To tackle this, all the bits in High word can be copied to lower word */
        if (shift_s32 < -31)
        {
            shift_s32 = (shift_s32 + 32);
            Res_Temp.s64s.l = (uint32) Res_Temp.s64s.h;
            Res_Temp.s64s.h = 0L;
        }

        /* Scaling is based on the sign of the shift value */
        if (shift_s32 < 0L)
        {
            /* A right shift operation on 64 bit data */
            shift_s32 = -shift_s32;

            /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
            Res_Temp.s64s.l = (((uint32) Res_Temp.s64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.s64s.l >>(uint32) shift_s32));
            tmp_u32 = ((uint32) Res_Temp.s64s.h >> (uint32)shift_s32);
            Res_Temp.s64s.h = (sint32) tmp_u32;
        }
        else
        {
            /* Left shifting the 64-bit result (as a combination of two 32-bit words) */
            tmp_u32 = (Res_Temp.s64s.l >> (32uL - (uint32)shift_s32));
            Res_Temp.s64s.h = (sint32)tmp_u32;
            Res_Temp.s64s.l = (Res_Temp.s64s.l << (uint32)shift_s32);
        }
    }

    /* Saturation Check */
    if ((Res_Temp.s64s.h > 0L) || (Res_Temp.s64s.l > MFX_MAXSINT32_U))
    {
        /* Distinguish Overflow or Underflow */
        if (flag == 1)
        {
            Res_Temp.s64s.l = (uint32) MFX_MINSINT32_U; /* Underflow saturation */
        }
        else
        {
            Res_Temp.s64s.l = (uint32) MFX_MAXSINT32; /* Overflow saturation */
        }
    }

    /* Correct the result if it is negative */
    if (flag == 1L)
    {
        /* Negate the number */

        Res_Temp.s64s.l = ((0xFFFFFFFFUL  ^  Res_Temp.s64s.l) + 1UL);
    }

    return ((sint32) Res_Temp.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_s32s32_u32
 *
 * \brief Multiplies 2 32-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -63 <= (c - b - a) <= 31
 *
 * \param    sint32 x       Integer value of fixed point operand.
 * \param    sint32 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   uint32         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to uint32.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u Res_Temp;
    Mfx_uint64u Res_u64;
    sint32 shift_s32;

    /* Product of the two inputs */
    Res_Temp.s64 = (Mfx_sint64) x * (Mfx_sint64) y;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a - (sint32) b;

    /* If product is negative, then it is underflow */
    if (Res_Temp.s64s.h < 0L)
    {
        Res_Temp.s64s.l = MFX_MINUINT32;
    }
    else
    {
        /* A unit64 union used to save memory space and number of instructions */
        Res_u64.u64 = (Mfx_uint64) Res_Temp.s64;

        /* Check for Overflow w.r.t high word of the product in case of scaling-down */
        if ((shift_s32 < 0L) || (Res_u64.u64s.h == 0UL))
        {
            /* If shift value is less than -31 then shift result will be incorrect.
             To tackle this, all the bits in High word can be copied to lower word */
            if ((shift_s32 < -31))
            {
                shift_s32 = shift_s32 + 32;
                Res_u64.u64s.l = Res_u64.u64s.h;
                Res_u64.u64s.h = MFX_MINUINT32;
            }

            /* Scaling is based on the sign of the shift value */
            if (shift_s32 < 0L)
            {
                /* A right shift operation on 64 bit data */
                shift_s32 = -shift_s32;

                /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
                Res_u64.u64s.l = ((Res_u64.u64s.h << (32UL - (uint32)shift_s32)) | (Res_u64.u64s.l >> (uint32)(shift_s32)));
                Res_u64.u64s.h = (Res_u64.u64s.h >> (uint32)(shift_s32));
            }
            else
            {
                /* Left shifting the 64-bit result (as a combination of two 32-bit words) */
                Res_u64.u64s.h = (Res_u64.u64s.l >> (32UL - (uint32)shift_s32));
                Res_u64.u64s.l = Res_u64.u64s.l << (uint32)(shift_s32);
            }
        }

        /* Saturation Check */
        if (Res_u64.u64s.h > 0UL)
        {
            Res_u64.u64s.l = MFX_MAXUINT32;
        }
        /* Returned result is from sint64 union hence assignment */
        Res_Temp.s64s.l = Res_u64.u64s.l;
    }

    return (Res_Temp.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u16s16_s16
 *
 * \brief Multiplies 2 16-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -31 <= (c - b - a) <= 15
 *
 * \param    uint16 x       Integer value of fixed point operand.
 * \param    sint16 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   sint16         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to sint16.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32;
    sint32 mul_s32;
    sint32 temp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    /* Shift is used multiple times hence computed in a local variable */
    shift_s32 = (sint32) c - (sint32) b - (sint32) a;

    /* Product of two inputs */
    mul_s32 = (sint32) x * (sint32) y;

    /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of dat
     Example:mul_s32 = MINSINT16, shift_s32 = -3
     res_s32 = (0xFFFF 8000 >> 3)  => res_s32 = (0x1FFF F000) = +536866816, which is incorrect. */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (mul_s32 < 0)
        {
            tmp_u32 = ((uint32) (-mul_s32) >> (uint32)(shift_s32));
            /* Product is negated to retain the sign */
            res_s32 = -((sint32) tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) mul_s32 >> (uint32)(shift_s32));
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
             Re-cast back to 'signed' after shifting */
            res_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) mul_s32 << (uint32)(shift_s32));
        res_s32 = (sint32)tmp_u32;

        /* To check whether overflow/underflow occurred due to left shift of the product */
        /*
        Examples:
        Valid Range              Overflow condition                  Underflow condition
        mul_s32 = 56  shift_s32 = -3    mul_s32 = 8388352 shift_s32 = 12        mul_s32 = -524288 shift_s32 = 14
        mul_s32 = 0x0x0000 0038    mul_s32 = 0x 007F FF00             mul_s32 = 0xFFF8 0000
        res_s32 = 0x0x0000 0007    res_s32 = 0xFFF0 0000              res_s32 = 0x 0000 0000
        temp_s32= 0x0x0000 0038    temp_s32= 0x000F FF00(!= mul_s32)  temp_s32= 0x0000 0000 (!= mul_s32)
        res_s32 = 0x0x0000 0007    res_s32 = MAXSINT32                res_s32 = MINSINT32
        */

        /* Shift back and check whether the product remains unchanged */
        tmp_u32 = ((uint32)res_s32 >> (uint32)shift_s32);

        if(res_s32 < 0L) // If the number was signed
        {
            // Patch in the sign bits:
            tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shift_s32));
        }

        temp_s32 = (sint32)tmp_u32;

        /* If it remains changed then an overflow/underflow has occurred */
        if (temp_s32 != mul_s32)
        {
            /* Saturation check */
            if (mul_s32 < 0L)
            {
                res_s32 = (sint32) MFX_MINSINT16; /* Underflow Saturation */
            }
            else
            {
                res_s32 = (sint32) MFX_MAXSINT16; /* Overflow Saturation */
            }
        }
    }

    /* Saturation check (ternary operator avoided to facilitate SAT optimization) */
    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) MFX_MAXSINT16; /* Overflow saturation */
    }
    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) MFX_MINSINT16; /* Underflow saturation */
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u16s16_u16
 *
 * \brief Multiplies 2 16-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -31 <= (c - b - a) <= 15
 *
 * \param    uint16 x       Integer value of fixed point operand.
 * \param    sint16 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   uint16         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to uint16.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 mul_u32;
    uint32 temp_u32;
    sint32 shift_s32;

    /* Since return type is uint16, y cannot be negative */
    if (y < 0)
    {
        res_u32 = (uint32) MFX_MINUINT16;
    }
    else
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) c - (sint32) b - (sint32) a;

        /* Product before scaling */
        mul_u32 = (uint32) x * (uint32) y;

        /* Scaling the result based on shift value */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            res_u32 = (mul_u32 >> (uint32)(shift_s32));
        }
        else
        {
            res_u32 = (mul_u32 << (uint32)(shift_s32));

            /* To check whether overflow/underflow occurred due to left shift of the product
            Examples:
            Valid Range                      Overflow condition
            mul_u32 = 56  shift_s32 = -3        mul_u32 = 8388352 shift_s32 = 12
            mul_u32 = 0x0000 0038               mul_u32 = 0x007F FF00   shift_s32 = 12
            res_s32 = 0x0000 0007               res_s32 = 0xFFF0 0000
            temp_u32 = 0x0000 0038              temp_u32 = 0x000F FF00 (!= mul_u32)
            res_s32 = 0x0000 0007               res_s32 = MAXSINT32
            */

            /* Shift back and check whether the product remains unchanged */
            temp_u32 = (res_u32 >> (uint32)shift_s32);

            /* If it remains changed then an overflow/underflow has occurred */
            if (temp_u32 != mul_u32)
            {
                res_u32 = (uint32) MFX_MAXUINT16; /* Overflow Saturation */
            }
        }

        /* Saturation check */
        if (res_u32 > (uint32) MFX_MAXUINT16)
        {
            res_u32 = (uint32) MFX_MAXUINT16; /* Overflow saturation */
        }
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u16u16_s16
 *
 * \brief Multiplies 2 16-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -31 <= (c - b - a) <= 15
 *
 * \param    uint16 x       Integer value of fixed point operand.
 * \param    uint16 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   sint16         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to sint16.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 mul_u32;
    uint32 temp_u32;
    sint32 shift_s32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) b - (sint32) a;

    /* Product before scaling */
    mul_u32 = (uint32) x * (uint32) y;

    /* Scaling the product based on the shift value */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = mul_u32 >> (uint32)(shift_s32);
    }
    else
    {
        res_u32 = mul_u32 << (uint32)(shift_s32);

        /* To check whether overflow/underflow occurred due to left shift of the product */
        /*
        Examples:
        Valid Range                Overflow condition
        mul_u32 = 56  shift_s32 = -3  mul_u32 = 8388352 shift_s32 = 12
        mul_u32 = 0x0000 0038         mul_u32 = 0x 007F FF00   shift_s32 = 12
        res_s32 = 0x0000 0007         res_s32 = 0xFFF0 0000
        temp_u32= 0x0000 0038         temp_u32= 0x000F FF00 (!= mul_u32)
        res_s32 = 0x0000 0007         res_s32 = MAXSINT32
        */

        /* Shift back and check whether the product remains unchanged */
        temp_u32 = (res_u32 >> (uint32)shift_s32);

        /* If it remains changed then an overflow/underflow has occurred */
        if (temp_u32 != mul_u32)
        {
            res_u32 = (uint32) MFX_MAXSINT16; /* Overflow Saturation */
        }
    }

    /* Saturation check */
    if (res_u32 > (uint32) MFX_MAXSINT16)
    {
        res_u32 = (uint32) MFX_MAXSINT16; /* Overflow saturation */
    }
    return ((sint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u16u16_u16
 *
 * \brief Multiplies 2 16-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -31 <= (c - b - a) <= 15
 *
 * \param    uint16 x       Integer value of fixed point operand.
 * \param    uint16 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   uint16         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to uint16.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 mul_u32;
    uint32 temp_u32;
    sint32 shift_s32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) b - (sint32) a;

    /* Product before scaling */
    mul_u32 = (uint32) x * (uint32) y;

    /* Scaling the product based on the shift value */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = mul_u32 >> (uint32)(shift_s32);
    }
    else
    {
        res_u32 = mul_u32 << (uint32)(shift_s32);

        /* To check whether overflow/underflow occurred due to left shift of the product */
        /*
        Example:
        Valid Range                  Overflow condition
        mul_u32 = 56  shift_s32 = -3    mul_u32 = 8388352 shift_s32 = 12
        mul_u32 = 0x0000 0038           mul_u32 = 0x 007F FF00   shift_s32 = 12
        res_s32 = 0x0000 0007           res_s32 = 0xFFF0 0000
        temp_u32 = 0x0000 0038          temp_u32 = 0x000F FF00 (!= mul_u32)
        res_s32 = 0x0000 0007           res_s32 = MAXSINT32
        */

        /* Shift back and check whether the product remains unchanged */
        temp_u32 = (res_u32) >> (uint32)(shift_s32);

        /* If it remains changed then an overflow/underflow has occured */
        if (temp_u32 != mul_u32)
        {
            res_u32 = (uint32) MFX_MAXUINT16; /* Overflow Saturation */
        }
    }

    /* Saturation check */
    if (res_u32 > (uint32) MFX_MAXUINT16)
    {
        res_u32 = (uint32) MFX_MAXUINT16; /* Overflow saturation */
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u32s32_s32
 *
 * \brief Multiplies 2 32-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -63 <= (c - b - a) <= 31
 *
 * \param    uint32 x       Integer value of fixed point operand.
 * \param    sint32 y       Integer value of fixed point operand.
 * \param    sint16 a       Radix point position of first fixed point operand.
 * \param    sint16 b       Radix point position of second fixed point operand.
 * \param    sint16 c       Radix point position of fixed point result.
 * \return   sint32         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to sint32.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u Res_Temp;
    sint32 shift_s32;
    sint32 flag = 0;
    uint32 tmp_u32;

    /* Product before scaling */
    Res_Temp.s64 = (Mfx_sint64) x * (Mfx_sint64) y;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a - (sint32) b;

    /* If product is negative, negate the result as further calculations are done on positive value */
    if (y < 0L)
    {
        Res_Temp.s64 = -(Res_Temp.s64);

        /* Indicate the product is negative */
        flag = 1L;
    }

    /* Check for Overflow w.r.t high word of the product in case of scaling-down */
    if ((shift_s32 < 0L) || (Res_Temp.s64s.h == 0L))
    {
        /* If shift value is less than -31 then shift result will be incorrect.
         To tackle this, all the bits in High word can be copied to lower word */
        if ((shift_s32 < -31))
        {
            shift_s32 = shift_s32 + 32;
            Res_Temp.s64s.l = (uint32) Res_Temp.s64s.h;
            Res_Temp.s64s.h = 0L;
        }

        /* Scaling is based on the sign of the shift value */
        if (shift_s32 < 0L)
        {
            /* A right shift operation on 64 bit data */
            shift_s32 = -shift_s32;

            /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
            Res_Temp.s64s.l = (((uint32) Res_Temp.s64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.s64s.l >> (uint32)(shift_s32)));
            tmp_u32 = ((uint32) Res_Temp.s64s.h >> (uint32)(shift_s32));
            Res_Temp.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            /* A left shift operation on 64 bit data
             Left shifting the 64-bit result (as a combination of two 32-bit words) */
             tmp_u32 = (Res_Temp.s64s.l >> (32UL - (uint32)shift_s32));
            Res_Temp.s64s.h = (sint32)tmp_u32;
            Res_Temp.s64s.l = Res_Temp.s64s.l << (uint32)(shift_s32);
        }
    }

    /* Overflow Check */
    if ((Res_Temp.s64s.h > 0L) || (Res_Temp.s64s.l > MFX_MAXSINT32_U))
    {
        /* Distinguish Overflow or Underflow */
        if (flag == 1L)
        {
            Res_Temp.s64s.l = (uint32) MFX_MINSINT32_U; /* Underflow saturation */
        }
        else
        {
            Res_Temp.s64s.l = (uint32) MFX_MAXSINT32; /* Overflow saturation */
        }
    }

    /* Correct the result if it is negative */
    if (flag == 1)
    {
        Res_Temp.s64s.l = ((0xFFFFFFFFUL  ^  Res_Temp.s64s.l) + 1UL); /* Underflow saturation */
    }

    return ((sint32) Res_Temp.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u32s32_u32
 *
 * \brief Multiplies 2 32-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -63 <= (c - b - a) <= 31
 *
 * \param    uint32 x       Integer value of fixed point operand.
 * \param    sint32 y       Integer value of fixed point operand.
 * \param    sint32 a       Radix point position of first fixed point operand.
 * \param    sint32 b       Radix point position of second fixed point operand.
 * \param    sint32 c       Radix point position of fixed point result.
 * \return   uint32         Result.
 * \retval                  2^(c-b-a) * [x * y] saturated to uint32.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_uint64u Res_Temp;
    sint32 shift_s32;

    /* Product before scaling */
    Res_Temp.u64 = (Mfx_uint64) x * (Mfx_uint64) y;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a - (sint32) b;

    /* If product is negative, then it is underflow */
    if (y < 0L)
    {
        Res_Temp.u64s.l = MFX_MINUINT32;
    }
    else
    {
        /* Check for Overflow w.r.t high word of the product in case of scaling-down */
        if ((shift_s32 < 0L) || (Res_Temp.u64s.h == 0UL))
        {
            /* If shift value is less than -31 then shift result will be incorrect.
             To tackle this, all the bits in High word can be copied to lower word */
            if ((shift_s32 < -31))
            {
                shift_s32 = shift_s32 + 32;
                Res_Temp.u64s.l = Res_Temp.u64s.h;
                Res_Temp.u64s.h = MFX_MINUINT32;
            }

            /* Scaling is based on the sign of the shift value */
            if (shift_s32 < 0L)
            {
                /* A right shift operation on 64 bit data */
                shift_s32 = -shift_s32;

                /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
                Res_Temp.u64s.l = ((Res_Temp.u64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.u64s.l >> (uint32)(shift_s32)));
                Res_Temp.u64s.h = (Res_Temp.u64s.h >> (uint32)(shift_s32));
            }
            else
            {
                /* Left shifting the 64-bit result (as a combination of two 32-bit words) */
                Res_Temp.u64s.h = (Res_Temp.u64s.l >> (32UL - (uint32)shift_s32));
                Res_Temp.u64s.l = Res_Temp.u64s.l << (uint32)(shift_s32);
            }
        }

        /* Overflow check */
        if (Res_Temp.u64s.h > 0UL)
        {
            Res_Temp.u64s.l = MFX_MAXUINT32; /* Overflow saturation */
        }
    }

    return (Res_Temp.u64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u32u32_s32
 *
 * \brief Multiplies 2 32-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -63 <= (c - b - a) <= 31
 *
 * \param    uint32 x       Integer value of fixed point operand
 * \param    uint32 y       Integer value of fixed point operand
 * \param    sint16 a       Radix point position of first fixed point operand
 * \param    sint16 b       Radix point position of second fixed point operand
 * \param    sint16 c       Radix point position of fixed point result
 * \return   sint32         Result
 * \retval                  2^(c-b-a) * [x * y] saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_uint64u Res_Temp;
    sint32 shift_s32;

    /* Product before scaling */
    Res_Temp.u64 = (Mfx_uint64) x * (Mfx_uint64) y;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a - (sint32) b;

    /* Check for Overflow w.r.t high word of the product in case of scaling-down */
    if ((shift_s32 < 0L) || (Res_Temp.u64s.h == 0UL))
    {
        /* If shift value is less than -31 then shift result will be incorrect.
         To tackle this, all the bits in High word can be copied to lower word */
        if ((shift_s32 < -31))
        {
            shift_s32 = shift_s32 + 32;
            Res_Temp.u64s.l = Res_Temp.u64s.h;
            Res_Temp.u64s.h = MFX_MINUINT32;
        }

        /* Scaling is based on the sign of the shift value */
        if (shift_s32 < 0)
        {
            /* A right shift operation on 64 bit data. */
            shift_s32 = -shift_s32;

            /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
            Res_Temp.u64s.l = ((Res_Temp.u64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.u64s.l >> (uint32)(shift_s32)));
            Res_Temp.u64s.h = (Res_Temp.u64s.h >> (uint32)(shift_s32));
        }
        else
        {
            /* Left shifting the 64-bit result (as a combination of two 32-bit words) */
            Res_Temp.u64s.h = (Res_Temp.u64s.l >> (32UL - (uint32)shift_s32));
            Res_Temp.u64s.l = Res_Temp.u64s.l << (uint32)(shift_s32);
        }
    }

    /* Overlow Check */
    if ((Res_Temp.u64s.h != 0UL) || (Res_Temp.u64s.l > MFX_MAXSINT32_U))
    {
        Res_Temp.u64s.l = MFX_MAXSINT32; /* Overflow saturation */
    }

    return ((sint32) Res_Temp.u64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_MulP2_u32u32_u32
 *
 * \brief Multiplies 2 32-bit integers with scaling factors set by input parameters. The function returns the integer
 *        value of the fixed point multiplication(C), determined according to the return-value equation.
 *        Return-value shall be saturated to boundary values in the event of underflow or overflow.
 *        If it is necessary to round the result of this equation, it is rounded towards zero.
 *
 * Equation:        2^(c-b-a) * [x * y]
 * Valid range:     -63 <= (c - b - a) <= 31
 *
 * \param    uint32 x       Integer value of fixed point operand
 * \param    uint32 y       Integer value of fixed point operand
 * \param    sint16 a       Radix point position of first fixed point operand
 * \param    sint16 b       Radix point position of second fixed point operand
 * \param    sint16 c       Radix point position of fixed point result
 * \return   uint32         Result
 * \retval                  2^(c-b-a) * [x * y] saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULP2_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_uint64u Res_Temp;
    sint32 shift_s32;

    /* Product before scaling */
    Res_Temp.u64 = (Mfx_uint64) x * (Mfx_uint64) y;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a - (sint32) b;

    /* Check for Overflow w.r.t high word of the product in case of scaling-down */
    if ((shift_s32 < 0L) || (Res_Temp.u64s.h == 0UL))
    {
        /* If shift value is less than -31 then shift result will be incorrect.
         To tackle this, all the bits in High word can be copied to lower word */
        if ((shift_s32 < -31L))
        {
            shift_s32 = shift_s32 + 32L;
            Res_Temp.u64s.l = Res_Temp.u64s.h;
            Res_Temp.u64s.h = 0L;
        }

        /* Scaling is based on the sign of the shift value */
        if (shift_s32 < 0L)
        {
            /* A right shift operation on 64 bit data */
            shift_s32 = -shift_s32;

            /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
            Res_Temp.u64s.l = ((Res_Temp.u64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.u64s.l >> (uint32)(shift_s32)));
            Res_Temp.u64s.h = (Res_Temp.u64s.h >> (uint32)(shift_s32));
        }
        else
        {
            /* Left shifting the 64-bit result (as a combination of two 32-bit words) */
            Res_Temp.u64s.h = (Res_Temp.u64s.l >> (32UL - (uint32)shift_s32));
            Res_Temp.u64s.l = Res_Temp.u64s.l << (uint32)(shift_s32);
        }
    }

    /* Overflow Check */
    if (Res_Temp.u64s.h != 0UL)
    {
        Res_Temp.u64s.l = (uint32) MFX_MAXUINT32; /* Overflow saturation */
    }

    return (Res_Temp.u64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s16s16u8_s16
 *
 * \brief Multiplies two sint16 variables and divides by 2^Shift
 *
 * Multiplies two sint16 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 30
 *
 * \param     sint16        x_value     Input operand 1
 * \param     sint16        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..30)
 * \return    sint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S16S16U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s16s16u8_s8
 *
 * \brief Multiplies two sint16 variables and divides by 2^Shift
 *
 * Multiplies two sint16 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 30
 *
 * \param     sint16        x_value     Input operand 1
 * \param     sint16        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..30)
 * \return    sint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S16S16U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_s16s16u8_s8_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s16s16u8_u16
 *
 * \brief Multiplies two sint16 variables and divides by 2^Shift
 *
 * Multiplies two sint16 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 30
 *
 * \param     sint16        x_value     Input operand 1
 * \param     sint16        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..30)
 * \return    uint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S16S16U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_s16s16u8_u16_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_u16_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s16s16u8_u8
 *
 * \brief Multiplies two sint16 variables and divides by 2^Shift
 *
 * Multiplies two sint16 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 30
 *
 * \param     sint16        x_value     Input operand 1
 * \param     sint16        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..30)
 * \return    uint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S16S16U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_s16s16u8_u8_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_u8_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s32s32u8_s16
 *
 * \brief Multiplies 2 sint32 variables and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 62
 *
 * \param     sint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..62)
 * \return    sint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S32S32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint16) (
            (tmp_s32 <= (sint32) MFX_MINSINT16) ? MFX_MINSINT16 :
                    ((tmp_s32 >= (sint32) MFX_MAXSINT16) ? MFX_MAXSINT16 : tmp_s32)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s32s32u8_s32
 *
 * \brief Multiplies 2 sint32 variables and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint32.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 62
 *
 * \param     sint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..62)
 * \return    sint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S32S32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulShRight_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);

    /* Limitation */
    tmp_s64 = (
            (tmp_s64 >= ((Mfx_sint64) MFX_MAXSINT32)) ? ((Mfx_sint64) MFX_MAXSINT32) :
                    ((tmp_s64 <= ((Mfx_sint64) MFX_MINSINT32)) ? ((Mfx_sint64) MFX_MINSINT32) : tmp_s64));

    return ((sint32) tmp_s64);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s32s32u8_s8
 *
 * \brief Multiplies 2 sint32 variables and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 62
 *
 * \param     sint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..62)
 * \return    sint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S32S32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint8) (
            (tmp_s32 <= (sint32) MFX_MINSINT8) ? MFX_MINSINT8 :
                    ((tmp_s32 >= (sint32) MFX_MAXSINT8) ? MFX_MAXSINT8 : tmp_s32)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s32s32u8_u16
 *
 * \brief Multiplies 2 sint32 variables and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 62
 *
 * \param     sint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..62)
 * \return    uint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S32S32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((uint16) (
            (tmp_s32 <= (sint32) MFX_MINUINT16) ? MFX_MINUINT16 :
                    ((tmp_s32 >= (sint32) MFX_MAXUINT16) ? MFX_MAXUINT16 : tmp_s32)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s32s32u8_u32
 *
 * \brief Multiplies 2 sint32 variables and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint32.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 62
 *
 * \param     sint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..62)
 * \return    uint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S32S32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulShRight_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);

    /* Limitation */
    tmp_s64 =
            ((tmp_s64 >= ((Mfx_sint64) MFX_MAXUINT32)) ? ((Mfx_sint64) MFX_MAXUINT32) : ((tmp_s64 <= 0) ? 0 : tmp_s64));

    return ((uint32) tmp_s64);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_s32s32u8_u8
 *
 * \brief Multiplies 2 sint32 variables and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 62
 *
 * \param     sint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..62)
 * \return    sint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_S32S32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((uint8) (
            (tmp_s32 <= (sint32) MFX_MINUINT8) ? MFX_MINUINT8 :
                    ((tmp_s32 >= (sint32) MFX_MAXUINT8) ? MFX_MAXUINT8 : tmp_s32)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32s32u8_s16
 *
 * \brief Multiplies uint32 with sint32 variable and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32S32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_u32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint16) (
            (tmp_s32 <= (sint32) MFX_MINSINT16) ? MFX_MINSINT16 :
                    ((tmp_s32 >= (sint32) MFX_MAXSINT16) ? MFX_MAXSINT16 : tmp_s32)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32s32u8_s32
 *
 * \brief Multiplies uint32 with sint32 variable and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint32.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    sint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32S32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulShRight_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);

    /* Limitation */
    tmp_s64 = (
            (tmp_s64 >= ((Mfx_sint64) MFX_MAXSINT32)) ? ((Mfx_sint64) MFX_MAXSINT32) :
                    ((tmp_s64 <= ((Mfx_sint64) MFX_MINSINT32)) ? ((Mfx_sint64) MFX_MINSINT32) : tmp_s64));

    return ((sint32) tmp_s64);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32s32u8_s8
 *
 * \brief Multiplies uint32 with sint32 variable and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    sint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32S32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_u32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint8) (
            (tmp_s32 <= (sint32) MFX_MINSINT8) ? MFX_MINSINT8 :
                    ((tmp_s32 >= (sint32) MFX_MAXSINT8) ? MFX_MAXSINT8 : tmp_s32)));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32s32u8_u16
 *
 * \brief Multiplies uint32 with sint32 variable and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32S32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32s32u8_u32_Inl(x_value, y_value, shift);

    return ((uint16) ((tmp_u32 >= (uint32) MFX_MAXUINT16) ? MFX_MAXUINT16_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32s32u8_u32
 *
 * \brief Multiplies uint32 with sint32 variable and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint32.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32S32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulShRight_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;
    uint32 res_u32;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);

    /* Limitation */
    tmp_s64 =
            ((tmp_s64 >= ((Mfx_sint64) MFX_MAXUINT32)) ? ((Mfx_sint64) MFX_MAXUINT32) : ((tmp_s64 <= 0) ? 0 : tmp_s64));
    res_u32 = ((uint32) tmp_s64);

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32s32u8_u8
 *
 * \brief Multiplies uint32 with sint32 variable and divides by 2^Shift
 *
 * Multiplies two sint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     sint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32S32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32s32u8_u32_Inl(x_value, y_value, shift);

    return ((uint8) ((tmp_u32 >= (uint32) MFX_MAXUINT8) ? MFX_MAXUINT8_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32u32u8_s16
 *
 * \brief Multiplies 2 uint32 variables and divides by 2^Shift
 *
 * Multiplies two uint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     uint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    sint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32U32U8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_MulShRight_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((sint16) ((tmp_u32 >= (uint32) MFX_MAXSINT16) ? MFX_MAXSINT16_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32u32u8_s32
 *
 * \brief Multiplies 2 uint32 variables and divides by 2^Shift
 *
 * Multiplies two uint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint32.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     uint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    sint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32U32U8_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_MulShRight_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((sint32) ((tmp_u32 >= (uint32) MFX_MAXSINT32) ? MFX_MAXSINT32_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32u32u8_s8
 *
 * \brief Multiplies 2 uint32 variables and divides by 2^Shift
 *
 * Multiplies two uint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to sint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     uint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    sint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32U32U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_MulShRight_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((sint8) ((tmp_u32 >= (uint32) MFX_MAXSINT8) ? MFX_MAXSINT8_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32u32u8_u16
 *
 * \brief Multiplies 2 uint32 variables and divides by 2^Shift
 *
 * Multiplies two uint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint16.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     uint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint16                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32U32U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_MulShRight_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((uint16) ((tmp_u32 >= (uint32) MFX_MAXUINT16) ? MFX_MAXUINT16_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32u32u8_u32
 *
 * \brief Multiplies 2 uint32 variables and divides by 2^Shift
 *
 * Multiplies two uint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint32.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     uint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint32                    (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32U32U8_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_MulShRight_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 tmp_u64;

    /* Interim tmp_s64
      No overflow: u32 * s32 = 2^31 * 2^32 = 2^63 < 2^64 = u64 */
    tmp_u64 = (((Mfx_uint64) x_value) * ((Mfx_uint64) y_value)) >> shift;

    /* Limitation */
    if (tmp_u64 >= ((Mfx_uint64) MFX_MAXUINT32))
    {
        tmp_u64 = ((Mfx_uint64) MFX_MAXUINT32);
    }

    return ((uint32) tmp_u64);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_MulShRight_u32u32u8_u8
 *
 * \brief Multiplies 2 uint32 variables and divides by 2^Shift
 *
 * Multiplies two uint32 variables. The internal result is shifted arithmetic by shift (keeping signed format).
 * This is a fast replacement of MulDiv where you would calculate (X*Y) / 2^N.
 * The output is satured to uint8.
 *
 * Restrictions:
 *  - Maximum allowed shift operand shift is 63
 *
 * \param     uint32        x_value     Input operand 1
 * \param     uint32        y_value     Input operand 2
 * \param     uint8         shift       Shift operand (0..63)
 * \return    uint8                     (X*Y) / 2^N
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MULSHRIGHT_U32U32U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_MulShRight_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((uint8) ((tmp_u32 >= (uint32) MFX_MAXUINT8) ? MFX_MAXUINT8_U : tmp_u32));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16s16s16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S16S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_s16_Inl(temp_s32, (sint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16s16u16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S16S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_s16_Inl(temp_s32, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16u16s16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S16U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_s16_Inl(temp_s32, (sint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16u16s16_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S16U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_u16_Inl(temp_s32, (sint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16u16u16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S16U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_s16_Inl(temp_s32, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16u16u16_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S16U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_u16_Inl(temp_s32, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s32s32s16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32S32S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value)
{
    return (Mfx_Prv_RMulDiv_s32s32s32_s16_Inl(x_value, y_value, (sint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s32s32s32_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return               Returns rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value);

    /* Saturation to sint16 range */
    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) MFX_MAXSINT16;
    }
    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) MFX_MINSINT16;
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s32s32s32_s32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    /* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u mulres_s64;
    sint32 temp_s32;

    /* Compute the 64 bit product of the input values X and Y. */
    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;

    /* Compute half of the divisor. */
    temp_s32 = z_value / 2;

    /* To perform a generalised addition operation, if either is negative, temp_s32 is negated. */
    if ((mulres_s64.s64s.h < 0L) != (z_value < 0L))
    {
        /* Temp_s32 is negated to do the appropriate arithmetic operation. */
        temp_s32 = -temp_s32;
    }

    /* Half of the divisor is added to the dividend to get rounded result. */
    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64s32_s32_Inl(mulres_s64.s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s32s32s32_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value);

    /* Saturation to uint16 range */
    if (res_s32 < (sint32) MFX_MINUINT16)
    {
        res_s32 = (sint32) MFX_MINUINT16;
    }
    if (res_s32 > (sint32) MFX_MAXUINT16)
    {
        res_s32 = (sint32) MFX_MAXUINT16;
    }

    return ((uint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_s32s32u32_s32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value)
{
    /* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u mulres_s64;
    sint32 temp_s32;
    uint32 temp_u32;

    /* Compute the 64 bit product of the input values X and Y. */
    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;

    /* Compute half of the divisor. */
    temp_u32 =  (z_value / 2UL);
    temp_s32 = (sint32)temp_u32;

    /* Dependent on the sign of the product temp_s32 has to be added or substracted from the product. */
    if (mulres_s64.s64s.h < 0L)
    {
        /* Temp_s32 is negated to do the appropriate arithmetic operation. */
        temp_s32 = -(temp_s32);
    }

    /* Half of the divisor is added to the dividend to get rounded result. */
    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64u32_s32_Inl(mulres_s64.s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_RMulDiv_s16u32s32_s32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value)
{
    /* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u mulres_s64;
    sint32 temp_s32;

    /* Compute the 64 bit product of the input values X and Y. */
    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;

    /* Compute half of the divisor. */
    temp_s32 = z_value / 2;

    /* To perform a generalised addition operation, if either is negative, temp_s32 is negated. */
    if ((mulres_s64.s64s.h < 0L) != (z_value < 0L))
    {
        /* Temp_s32 is negated to do the appropriate arithmetic operation. */
        temp_s32 = -temp_s32;
    }

    /* Half of the divisor is added to the dividend to get rounded result. */
    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64s32_s32_Inl(mulres_s64.s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_s32u32u32_s32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_S32U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value)
{
    /* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u mulres_s64;
    sint32 temp_s32;
    uint32 temp_u32;

    /* Compute the 64 bit product of the input values X and Y. */
    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;

    /* Compute half of the divisor. */
    temp_u32 = (z_value / 2UL);
    temp_s32 = (sint32)temp_u32;

    /* Dependent on the sign of the product temp_s32 has to be added or substracted from the product. */
    if (mulres_s64.s64s.h < 0L)
    {
        /* Temp_s32 is negated to do the appropriate arithmetic operation. */
        temp_s32 = -(temp_s32);
    }

    /* Half of the divisor is added to the dividend to get rounded result. */
    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64u32_s32_Inl(mulres_s64.s64, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u16s16s16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U16S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_s16_Inl(temp_s32, (sint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u16s16s16_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U16S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_u16_Inl(temp_s32, (sint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u16s16u16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U16S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_RMulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_s16_Inl(temp_s32, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u16s16u16_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U16S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    sint32 temp_s32;

    /* Compute the 32 bit product of the input values X and Y. */
    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_u16_Inl(temp_s32, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u16u16u16_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U16U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value)
{
    uint32 mul_u32;

    /* Compute the 32 bit product of the input values X and Y. */
    mul_u32 = (uint32) x_value * (uint32) y_value;

    return (Mfx_Prv_RDiv_u32u32_u16_Inl(mul_u32, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32s32s32_s32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    return (Mfx_Prv_RMulDiv_s32u32s32_s32_Inl(y_value, x_value, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32s32s32_u32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    /* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u mulres_s64;
    sint32 temp_s32;
    uint32 res_u32;

    /*
     If either y_value or z_value is negative then the result is negative, provided if z_value is non-zero value
     Hence the result is saturated to MFX_MINUINT32.
    */
    if (((y_value < 0L) != (z_value < 0L)) && (z_value != 0L))
    {
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        /* Compute the 64 bit product of the input values X and Y. */
        mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;

        /* Compute half of the divisor. */
        temp_s32 = (sint32) (z_value / 2);

        /* Half of the divisor is added to the dividend to get rounded result. */
        mulres_s64.s64 = mulres_s64.s64 + temp_s32;

        /* Division function called to perform the 64 bit division. */
        res_u32 = Mfx_Prv_Div_s64s32_u32_Inl(mulres_s64.s64, z_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32s32u32_s32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_RMulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    return (Mfx_Prv_RMulDiv_s32u32u32_s32_Inl(y_value, x_value, z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32s32u32_u32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    uint32 res_u32;

    /*
     If y_value is negative, since the out type is uint32 it is saturated to MINUINT32, However
     for y_value negative and x_value and z_value zero('0'), the operation is (0 / 0) hence MAXUINT32,
     hence the special condition.
     */
    if ((y_value < 0L) && (x_value != MFX_MINUINT32))
    {
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        res_u32 = Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(x_value, (uint32) y_value, z_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32u32s32_u32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value)
{
    uint32 res_u32;

    /* If z_value is negative, the result is saturated to MINUINT32. */
    if (z_value < 0L)
    {
        res_u32 = MFX_MINUINT32;
    }
    else
    {
        res_u32 = Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(x_value, y_value, (uint32) z_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32u32u16_u16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32U32U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value)
{
    return (Mfx_Prv_RMulDiv_u32u32u32_u16_Inl(x_value, y_value, (uint32) z_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_s16s16s16_s16
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_RMulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(x_value, y_value, z_value);

    if (res_u32 > (uint32) MFX_MAXUINT16)
    {
        res_u32 = (uint32) MFX_MAXUINT16;
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_RMulDiv_u32u32u32_u32
 *
 * \brief Multiplies X and Y and then divides the result by Z.
 * \brief The result is rounded off to the nearest integer value.
 *
 * \brief Return-value = x_value * y_value / z_value
 *
 * \param     x_value   First Argument, Value that will be multiplied with Y
 * \param     y_value   Second Argument, Value that will be multiplied with X
 * \param     z_value   Third Argument, Divisor, that devides product of X and Y
 * \return    Returns   Rounded and saturated result.
 * \retval This routine makes a multiplication between the two arguments and a division by the third argument.
 * \retval Return-value = x_value * y_value / z_value
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval The result after division by zero is defined by:
 * \retval If x_value*y_value >= 0 then the function returns the maximum value of the output type.
 * \retval If x_value*y_value < 0 then the function returns the minimum value of the output type.
 * \retval The result is rounded off.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RMULDIV_U32U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    /* MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_uint64u mulres_u64;
    uint32 temp_u32;

    /* Compute the 64 bit product of the input values X and Y. */
    mulres_u64.u64 = (Mfx_uint64) x_value * (Mfx_uint64) y_value;

    temp_u32 = z_value / 2UL;

    /* Half of the divisor is added to the dividend to get rounded result. */
    mulres_u64.u64 = mulres_u64.u64 + temp_u32;

    return (Mfx_Prv_Div_u64u32_u32_Inl(mulres_u64.u64, z_value));
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Prv_RightShift_s64u8_s64 !This service is only internally used!
 *
 * \brief
 * Right Shift a signed 64-bit variable by an unsigned 8-bit variable and return the result as signed 64-bit varaible.
 *
 * \param   Mfx_sint64     X_s64               Operand 1, signed 64-bit variable
 * \param   uint8          Shift_u8            Operand 2, unsigned 8-bit variable
 * \return  Mfx_sint64    (X_s64 >> Shift_u8)  Result,   signed 64-bit variable
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_RIGHTSHIFT_S64U8_S64_INL_REMAPPED
LOCAL_INLINE Mfx_sint64 Mfx_Prv_RightShift_s64u8_s64_Inl(Mfx_sint64 X_s64, uint8 Shift_u8)
{
    Mfx_sint64u Res_Temp;
    uint32 tmp_u32;

    Res_Temp.s64 = X_s64;

    if (Shift_u8 > 31U)
    {
        Shift_u8 = Shift_u8 - 32U;
        Res_Temp.s64s.l = (uint32)Res_Temp.s64s.h;

        if(Res_Temp.s64s.h < 0L)
        {
            Res_Temp.s64s.h = -1L;
        }
        else
        {
            Res_Temp.s64s.h = 0L;
        }
    }

    if (Shift_u8 > 0U)
    {
        /* Right shifting the 64-bit result (as a combination of two 32-bit words) */
        Res_Temp.s64s.l = (((uint32) Res_Temp.s64s.h << (32UL - Shift_u8)) | (Res_Temp.s64s.l >> Shift_u8));

        tmp_u32 = ((uint32) Res_Temp.s64s.h >> (uint32)Shift_u8);

        if(Res_Temp.s64s.h < 0L)
        {
            /* Patch in the sign bits */
            tmp_u32 = tmp_u32 | (0xFFFFFFFFUL << (32U - (uint32)Shift_u8));
        }

        Res_Temp.s64s.h = (sint32) tmp_u32;
    }

    return Res_Temp.s64;
}
#endif




/* MFX_MUL_INL_H */
#endif
