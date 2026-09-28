


#ifndef MFX_SUB_INL_H
#define MFX_SUB_INL_H


/*
 **********************************************************************************************************************
 *
 * List of services
 *
 * Mfx_Prv_AbsDiff_s16s16_s16_Inl
 * Mfx_Prv_AbsDiff_s16s16_s8_Inl
 * Mfx_Prv_AbsDiff_s16s16_u16_Inl
 * Mfx_Prv_AbsDiff_s16s16_u8_Inl
 * Mfx_Prv_AbsDiff_s32s32_s16_Inl
 * Mfx_Prv_AbsDiff_s32s32_s32_Inl
 * Mfx_Prv_AbsDiff_s32s32_s8_Inl
 * Mfx_Prv_AbsDiff_s32s32_u16_Inl
 * Mfx_Prv_AbsDiff_s32s32_u32_Inl
 * Mfx_Prv_AbsDiff_s32s32_u8_Inl
 * Mfx_Prv_AbsDiff_s8s8_s8_Inl
 * Mfx_Prv_AbsDiff_s8s8_u8_Inl
 * Mfx_Prv_AbsDiff_u16s16_s16_Inl
 * Mfx_Prv_AbsDiff_u16s16_s8_Inl
 * Mfx_Prv_AbsDiff_u16s16_u16_Inl
 * Mfx_Prv_AbsDiff_u16s16_u8_Inl
 * Mfx_Prv_AbsDiff_u16u16_s16_Inl
 * Mfx_Prv_AbsDiff_u16u16_s8_Inl
 * Mfx_Prv_AbsDiff_u16u16_u16_Inl
 * Mfx_Prv_AbsDiff_u16u16_u8_Inl
 * Mfx_Prv_Absdiff_u32s32_s16_Inl
 * Mfx_Prv_Absdiff_u32s32_s32_Inl
 * Mfx_Prv_Absdiff_u32s32_s8_Inl
 * Mfx_Prv_AbsDiff_u32s32_u16_Inl
 * Mfx_Prv_AbsDiff_u32s32_u32_Inl
 * Mfx_Prv_AbsDiff_u32s32_u8_Inl
 * Mfx_Prv_Absdiff_u32u32_s16_Inl
 * Mfx_Prv_Absdiff_u32u32_s32_Inl
 * Mfx_Prv_Absdiff_u32u32_s8_Inl
 * Mfx_Prv_AbsDiff_u32u32_u16_Inl
 * Mfx_Prv_AbsDiff_u32u32_u32_Inl
 * Mfx_Prv_AbsDiff_u32u32_u8_Inl
 * Mfx_Prv_AbsDiff_u8s8_s8_Inl
 * Mfx_Prv_AbsDiff_u8s8_u8_Inl
 * Mfx_Prv_AbsDiff_u8u8_s8_Inl
 * Mfx_Prv_AbsDiff_u8u8_u8_Inl
 * Mfx_Prv_AbsDiffP2_s16s16_s16_Inl
 * Mfx_Prv_AbsDiffP2_s16s16_u16_Inl
 * Mfx_Prv_AbsDiffP2_u16s16_s16_Inl
 * Mfx_Prv_AbsDiffP2_u16s16_u16_Inl
 * Mfx_Prv_AbsDiffP2_u16u16_s16_Inl
 * Mfx_Prv_AbsDiffP2_u16u16_u16_Inl
 * Mfx_Prv_Sub_s16s16_s16_Inl
 * Mfx_Prv_Sub_s16s16_s8_Inl
 * Mfx_Prv_Sub_s16s16_u16_Inl
 * Mfx_Prv_Sub_s16s16_u8_Inl
 * Mfx_Prv_Sub_s16u16_s16_Inl
 * Mfx_Prv_Sub_s16u16_s8_Inl
 * Mfx_Prv_Sub_s16u16_u16_Inl
 * Mfx_Prv_Sub_s16u16_u8_Inl
 * Mfx_Prv_Sub_s32s32_s16_Inl
 * Mfx_Prv_Sub_s32s32_s32_Inl
 * Mfx_Prv_Sub_s32s32_s8_Inl
 * Mfx_Prv_Sub_s32s32_u16_Inl
 * Mfx_Prv_Sub_s32s32_u32_Inl
 * Mfx_Prv_Sub_s32s32_u8_Inl
 * Mfx_Prv_Sub_s32u32_s16_Inl
 * Mfx_Prv_Sub_s32u32_s32_Inl
 * Mfx_Prv_Sub_s32u32_s8_Inl
 * Mfx_Prv_Sub_s32u32_u16_Inl
 * Mfx_Prv_Sub_s32u32_u32_Inl
 * Mfx_Prv_Sub_s32u32_u8_Inl
 * Mfx_Prv_Sub_s8s8_s8_Inl
 * Mfx_Prv_Sub_s8s8_u8_Inl
 * Mfx_Prv_Sub_s8u8_s8_Inl
 * Mfx_Prv_Sub_s8u8_u8_Inl
 * Mfx_Prv_Sub_u16s16_s16_Inl
 * Mfx_Prv_Sub_u16s16_s8_Inl
 * Mfx_Prv_Sub_u16s16_u16_Inl
 * Mfx_Prv_Sub_u16s16_u8_Inl
 * Mfx_Prv_Sub_u16u16_s16_Inl
 * Mfx_Prv_Sub_u16u16_s8_Inl
 * Mfx_Prv_Sub_u16u16_u16_Inl
 * Mfx_Prv_Sub_u16u16_u8_Inl
 * Mfx_Prv_Sub_u32s32_s16_Inl
 * Mfx_Prv_Sub_u32s32_s32_Inl
 * Mfx_Prv_Sub_u32s32_s8_Inl
 * Mfx_Prv_Sub_u32s32_u16_Inl
 * Mfx_Prv_Sub_u32s32_u32_Inl
 * Mfx_Prv_Sub_u32s32_u8_Inl
 * Mfx_Prv_Sub_u32u32_s16_Inl
 * Mfx_Prv_Sub_u32u32_s32_Inl
 * Mfx_Prv_Sub_u32u32_s8_Inl
 * Mfx_Prv_Sub_u32u32_u16_Inl
 * Mfx_Prv_Sub_u32u32_u32_Inl
 * Mfx_Prv_Sub_u32u32_u8_Inl
 * Mfx_Prv_Sub_u8s8_s8_Inl
 * Mfx_Prv_Sub_u8s8_u8_Inl
 * Mfx_Prv_Sub_u8u8_s8_Inl
 * Mfx_Prv_Sub_u8u8_u8_Inl
 * Mfx_Prv_SubP2_s16s16_s16_Inl
 * Mfx_Prv_SubP2_s16s16_u16_Inl
 * Mfx_Prv_SubP2_s16u16_s16_Inl
 * Mfx_Prv_SubP2_s16u16_u16_Inl
 * Mfx_Prv_SubP2_s32s32_s32_Inl
 * Mfx_Prv_SubP2_s32s32_u32_Inl
 * Mfx_Prv_SubP2_s32u32_s32_Inl
 * Mfx_Prv_SubP2_s32u32_u32_Inl
 * Mfx_Prv_SubP2_u16s16_s16_Inl
 * Mfx_Prv_SubP2_u16s16_u16_Inl
 * Mfx_Prv_SubP2_u16u16_s16_Inl
 * Mfx_Prv_SubP2_u16u16_u16_Inl
 * Mfx_Prv_SubP2_u32s32_s32_Inl
 * Mfx_Prv_SubP2_u32s32_u32_Inl
 * Mfx_Prv_SubP2_u32u32_s32_Inl
 * Mfx_Prv_SubP2_u32u32_u32_Inl
 *
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */

LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_AbsDiff_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_AbsDiff_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_s8s8_s8_Inl(sint8  x_value, sint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_s8s8_u8_Inl(sint8  x_value, sint8  y_value);
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Absdiff_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Absdiff_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Absdiff_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_AbsDiff_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Absdiff_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Absdiff_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Absdiff_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_AbsDiff_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u8s8_s8_Inl(uint8  x_value, sint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u8s8_u8_Inl(uint8  x_value, sint8  y_value);
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u8u8_s8_Inl(uint8  x_value, uint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_AbsDiffP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiffP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_AbsDiffP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiffP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_AbsDiffP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AbsDiffP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_Sub_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_s16u16_s8_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_s16u16_u8_Inl(sint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Sub_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Sub_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_s32u32_s16_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Sub_s32u32_s32_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_s32u32_s8_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_s32u32_u16_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Sub_s32u32_u32_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_s32u32_u8_Inl(sint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_s8s8_u8_Inl(sint8  x_value, sint8  y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_s8u8_u8_Inl(sint8  x_value, uint8  y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Sub_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Sub_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Sub_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Sub_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Sub_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Sub_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_u8s8_s8_Inl(uint8  x_value, sint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Sub_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Sub_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_SubP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_SubP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_SubP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_SubP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_SubP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_SubP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE sint32 Mfx_Prv_SubP2_s32u32_s32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_SubP2_s32u32_u32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE sint16 Mfx_Prv_SubP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_SubP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_SubP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_SubP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_SubP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_SubP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE sint32 Mfx_Prv_SubP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_SubP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);

/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s16s16_s16
 *
 * absolute difference of sint16 and sint16 saturated to sint16.
 *
 * Calculates the difference between a signed 16-bit and a signed 16-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed 16-bit variable
 * \return  sint16   abs(x_value - y_value)       Result,    signed 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s16((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s16s16_s8
 *
 * absolute difference of sint16 and sint16 saturated to sint8.
 *
 * Calculates the difference between a signed 16-bit and a signed 16-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8    abs(x_value - y_value)       Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s16s16_u16
 *
 * absolute difference of sint16 and sint16 saturated to uint16.
 *
 * \param   sint16   x_value                      Operand 1, signed     16-bit variable
 * \param   sint16   y_value                      Operand 2, signed     16-bit variable
 * \return  uint16   abs(x_value - y_value)       Result,    unsigned   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u16((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s16s16_u8
 *
 * absolute difference of sint16 and sint16 saturated to uint8.
 *
 * \param   sint16   x_value                      Operand 1, signed     16-bit variable
 * \param   sint16   y_value                      Operand 2, signed     16-bit variable
 * \return  uint8    abs(x_value - y_value)       Result,    unsigned   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s32s32_s16
 *
 * absolute difference of sint32 and sint32 saturated to sint16.
 *
 * Calculates the difference between a signed 32-bit and a signed 32-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   abs(x_value - y_value)       Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint16 res_s16;


    res_s16 = Mfx_Prv_Sub_s32s32_s16_Inl(x_value, y_value);

    if(res_s16 < 0)
    {
        /* Limitation and absolut value; abs(MFX_MINSINT16) = MFX_MAXSINT16 + 1 */
        res_s16 = ((res_s16 == MFX_MINSINT16) ? MFX_MAXSINT16 : (-res_s16));
    }

    return (res_s16);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s32s32_s32
 *
 * absolute difference of sint32 and sint32 saturated to sint32.
 *
 * Calculates the difference between a signed 32-bit and a signed 32-bit variable to a signed 32-bit result.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   abs(x_value - y_value)       Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_AbsDiff_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;


    res_s32 = Mfx_Prv_Sub_s32s32_s32_Inl(x_value, y_value);

    if(res_s32 < 0)
    {
        /* Limitation and absolut value; abs(MFX_MINSINT32) = MFX_MAXSINT32 + 1 */
        res_s32 = ((res_s32 == MFX_MINSINT32) ? MFX_MAXSINT32 : (-res_s32));
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s32s32_s8
 *
 * absolute difference of sint32 and sint32 saturated to sint8.
 *
 * Calculates the difference between a signed 32-bit and a signed 32-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    abs(x_value - y_value)       Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint8 res_s8;


    res_s8 = Mfx_Prv_Sub_s32s32_s8_Inl(x_value, y_value);

    if(res_s8 < 0)
    {
        /* Limitation */
        res_s8 = ((res_s8 == MFX_MINSINT8) ? MFX_MAXSINT8 : (-res_s8));
    }

    return (res_s8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s32s32_u16
 *
 * absolute difference of sint32 and sint32 saturated to uint16.
 *
 * Calculates the difference between a signed 32-bit and a signed 32-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows (underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   abs(x_value - y_value)       Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;

    if(x_value >= y_value)
    {
        tmp_s32 =  (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }
    else
    {
        tmp_s32 = (y_value - x_value);
        res_u32 = ((uint32)tmp_s32);
    }

    /* Limitation */
    res_u32 = (res_u32 > MFX_MAXUINT16_U) ? (MFX_MAXUINT16_U) : (res_u32);

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s32s32_u32
 *
 * absolute difference of sint32 and sint32 saturated to uint32.
 *
 * Calculates the difference between a signed 32-bit and a signed 32-bit variable to a unsigned 32-bit result.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows (underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   abs(x_value - y_value)       Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AbsDiff_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    if(x_value >= y_value)
    {
        tmp_s32 =  (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }
    else
    {
        tmp_s32 = (y_value - x_value);
        res_u32 = ((uint32)tmp_s32);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s32s32_u8
 *
 * absolute difference of sint32 and sint32 saturated to uint8.
 *
 * Calculates the difference between a signed 32-bit and a signed 32-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    abs(x_value - y_value)       Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    if(x_value >= y_value)
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }
    else
    {
        tmp_s32 = (y_value - x_value);
        res_u32 = ((uint32)tmp_s32);
    }

    /* Limitation */
    res_u32 = (res_u32 > MFX_MAXUINT8_U) ? (MFX_MAXUINT8_U) : (res_u32);

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s8s8_s8
 *
 * absolute difference of sint8 and sint8 saturated to sint8.
 *
 * Calculates the difference between a signed 8-bit and a signed 8-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   sint8   x_value                      Operand 1, signed      8-bit variable
 * \param   sint8   y_value                      Operand 2, signed      8-bit variable
 * \return  sint8   abs(x_value - y_value)       Result,    signed      8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_s8s8_s8_Inl(sint8  x_value, sint8  y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_s8s8_u8
 *
 * absolute difference of sint8 and sint8 saturated to uint8.
 *
 * Calculates the difference between a signed 8-bit and a signed 8-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   sint8   x_value                      Operand 1, signed    8-bit variable
 * \param   sint8   y_value                      Operand 2, signed    8-bit variable
 * \return  uint8   abs(x_value - y_value)       Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_S8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_s8s8_u8_Inl(sint8  x_value, sint8  y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16s16_s16
 *
 * absolute difference of uint16 and sint16 saturated to sint16.
 *
 * Calculates the difference between a unsigned 16-bit and a signed 16-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   abs(x_value - y_value)       Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s16((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16s16_s8
 *
 * absolute difference of uint16 and sint16 saturated to sint8.
 *
 * Calculates the difference between a unsigned 16-bit and a signed 16-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8    abs(x_value - y_value)       Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16s16_u16
 *
 * absolute difference of uint16 and sint16 saturated to uint16.
 *
 * Calculates the difference between a unsigned 16-bit and a signed 16-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   abs(x_value - y_value)       Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u16((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16s16_u8
 *
 * absolute difference of uint16 and sint16 saturated to uint8.
 *
 * Calculates the difference between a unsigned 16-bit and a signed 16-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8    abs(x_value - y_value)       Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16u16_s16
 *
 * absolute difference of uint16 and uint16 saturated to sint16.
 *
 * Calculates the difference between a unsigned 16-bit and a unsigned 16-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   abs(x_value - y_value)       Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiff_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Absdiff_u32u32_s16((uint32)x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16u16_s8
 *
 * absolute difference of uint16 and uint16 saturated to sint8.
 *
 * Calculates the difference between a unsigned 16-bit and a unsigned 16-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint8    abs(x_value - y_value)       Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Absdiff_u32u32_s8((uint32)x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16u16_u16
 *
 * absolute difference of uint16 and uint16 saturated to uint16.
 *
 * \param   uint16   x_value                      Operand 1, unsigned  16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned  16-bit variable
 * \return  uint16   abs(x_value - y_value)       Result,    unsigned  16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_AbsDiff_u32u32_u16((uint32)x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u16u16_u8
 *
 * absolute difference of uint16 and uint16 saturated to uint8.
 *
 * Calculates the difference between a unsigned 16-bit and a unsigned 16-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8    abs(x_value - y_value)       Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_AbsDiff_u32u32_u8((uint32)x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32s32_s16
 *
 * absolute difference of uint32 and sint32 saturated to sint16.
 *
 * Calculates the difference between a unsigned 32-bit and a signed 32-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   abs(x_value - y_value)       Result,    signed 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Absdiff_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    sint16 res_s16;


    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_s16 = Mfx_Prv_Sub_u32s32_s16_Inl(x_value, y_value);
    }
    else
    {
        res_s16 = Mfx_Prv_Sub_s32u32_s16_Inl(y_value, x_value);
    }

    return (res_s16);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32s32_s32
 *
 * absolute difference of uint32 and sint32 saturated to sint32.
 *
 * Calculates the difference between a unsigned 32-bit and a signed 32-bit variable to a signed 32-bit result.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   abs(x_value - y_value)       Result,    signed 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Absdiff_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;


    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_s32 = Mfx_Prv_Sub_u32s32_s32_Inl(x_value, y_value);
    }
    else
    {
        res_s32 = Mfx_Prv_Sub_s32u32_s32_Inl(y_value, x_value);
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32s32_s8
 *
 * absolute difference of uint32 and sint32 saturated to sint8.
 *
 * Calculates the difference between a unsigned 32-bit and a signed 32-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    abs(x_value - y_value)       Result,    signed 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Absdiff_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint8 res_s8;


    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_s8 = Mfx_Prv_Sub_u32s32_s8_Inl(x_value, y_value);
    }
    else
    {
        res_s8 = Mfx_Prv_Sub_s32u32_s8_Inl(y_value, x_value);
    }

    return (res_s8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32s32_u16
 *
 * absolute difference of uint32 and sint32 saturated to uint16.
 *
 * Calculates the difference between a unsigned 32-bit and a signed 32-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   abs(x_value - y_value)       Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint16 res_u16;

    if( (y_value <= 0) || (x_value >= ((uint32) y_value) ))
    {
        res_u16 = Mfx_Prv_Sub_u32s32_u16_Inl(x_value, y_value);
    }
    else
    {
        res_u16 = Mfx_Prv_Sub_s32u32_u16_Inl(y_value, x_value);
    }

    return (res_u16);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32s32_u32
 *
 * absolute difference of uint32 and sint32 saturated to uint32.
 *
 * Calculates the difference between a unsigned 32-bit and a signed 32-bit variable to a unsigned 32-bit result.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   abs(x_value - y_value)       Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AbsDiff_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_u32 = Mfx_Prv_Sub_u32s32_u32_Inl(x_value, y_value);
    }
    else
    {
        res_u32 = Mfx_Prv_Sub_s32u32_u32_Inl(y_value, x_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32s32_u8
 *
 * absolute difference of uint32 and sint32 saturated to uint8.
 *
 * Calculates the difference between a unsigned 32-bit and a signed 32-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    abs(x_value - y_value)       Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint8 res_u8;

    if( (y_value <= 0) || (x_value >= ((uint32) y_value) ) )
    {
        res_u8 = Mfx_Prv_Sub_u32s32_u8_Inl(x_value, y_value);
    }
    else
    {
        res_u8 = Mfx_Prv_Sub_s32u32_u8_Inl(y_value, x_value);
    }

    return (res_u8);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Absdiff_u32u32_s16
 *
 * absolute difference of uint32 and uint32 saturated to sint16.
 *
 * Calculates the difference between a unsigned 32-bit and a unsigned 32-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   abs(x_value - y_value)       Result,    signed 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Absdiff_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    if (res_u32 > (uint32)MFX_MAXSINT16)
    {
        res_u32 = (uint32)MFX_MAXSINT16;
    }

    return ((sint16)res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Absdiff_u32u32_s32
 *
 * absolute difference of uint32 and uint32 saturated to sint32.
 *
 * Calculates the difference between a unsigned 32-bit and a unsigned 32-bit variable to a signed 32-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   abs(x_value - y_value)       Result,    signed 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Absdiff_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    if (res_u32 > (uint32)MFX_MAXSINT32)
    {
        res_u32 = (uint32)MFX_MAXSINT32;
    }

    return ((sint32)res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Absdiff_u32u32_s8
 *
 * absolute difference of uint32 and uint32 saturated to sint8.
 *
 * Calculates the difference between a unsigned 32-bit and a unsigned 32-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8    abs(x_value - y_value)       Result,    signed 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Absdiff_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    if (res_u32 > (uint32)MFX_MAXSINT8)
    {
        res_u32 = (uint32)MFX_MAXSINT8;
    }

    return ((sint8)res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32u32_u16
 *
 * absolute difference of uint32 and uint32 saturated to uint16.
 *
 * Calculates the difference between a unsigned 32-bit and a unsigned 32-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint16   abs(x_value - y_value)       Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiff_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    /* Limitation */
    res_u32 = (res_u32 > MFX_MAXUINT16_U) ? (MFX_MAXUINT16_U) : (res_u32);

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32u32_u32
 *
 * absolute difference of uint32 and uint32 saturated to uint32.
 *
 * Calculates the difference between a unsigned 32-bit and a unsigned 32-bit variable to a unsigned 32-bit result.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint32   abs(x_value - y_value)       Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AbsDiff_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u32u32_u8
 *
 * absolute difference of uint32 and uint32 saturated to uint8.
 *
 * Calculates the difference between a unsigned 32-bit and a unsigned 32-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8    abs(x_value - y_value)       Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    /* Limitation */
    res_u32 = (res_u32 > MFX_MAXUINT8_U) ? (MFX_MAXUINT8_U) : (res_u32);

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u8s8_s8
 *
 * absolute difference of uint8 and sint8 saturated to sint8.
 *
 * Calculates the difference between a unsigned 8-bit and a signed 8-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned    8-bit variable
 * \param   sint8   y_value                      Operand 2, signed      8-bit variable
 * \return  sint8   abs(x_value - y_value)       Result,    signed      8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u8s8_s8_Inl(uint8  x_value, sint8  y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u8s8_u8
 *
 * absolute difference of uint8 and sint8 saturated to uint8.
 *
 * Calculates the difference between a unsigned 8-bit and a signed 8-bit variable to a unsigned 8-bit result.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows (underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   sint8   y_value                      Operand 2, signed    8-bit variable
 * \return  uint8   abs(x_value - y_value)       Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u8s8_u8_Inl(uint8  x_value, sint8  y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u8u8_s8
 *
 * absolute difference of uint8 and uint8 saturated to sint8.
 *
 * Calculates the difference between a unsigned 8-bit and a unsigned 8-bit variable to a signed 8-bit result.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows (underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned    8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned    8-bit variable
 * \return  sint8   abs(x_value - y_value)       Result,    signed      8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_AbsDiff_u8u8_s8_Inl(uint8  x_value, uint8  y_value)
{
    return (Mfx_Absdiff_u32u32_s8((uint32)x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_AbsDiff_u8u8_u8
 *
 * absolute difference of uint8 and uint8 saturated to uint8.
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned  8-bit variable
 * \return  uint8   abs(x_value - y_value)       Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFF_U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_AbsDiff_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_AbsDiff_u32u32_u8((uint32)x_value, (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AbsDiffP2_s16s16_s16_Inl
 *
 * Absolute difference of sint16 and sint16 saturated to sint16, and at radix specified by the user.
 *
 * Calculates the difference between a signed 16-bit and a signed 16-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * Equation:
 * result = a >= b: 2^(c-a) * |x - (y * 2^(a-b))|
 * a < b : 2^(c-b) * |(x * 2^(b-a)) - y|
 *
 * Valid Range:
 * 0 <= |a - b| <= 15
 * (c - b) <= 15, (a - c) <= 15,  a >= b
 * (c - a) <= 15, (b - c) <= 15,  a < b
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable.
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable.
 * \param   sint16   a                            Operand 2, signed   16-bit variable.
 * \param   sint16   b                            Operand 2, signed   16-bit variable.
 * \param   sint16   c                            Operand 2, signed   16-bit variable.
 * \return  sint16                                Result,    signed   16-bit.
 * \retval  The routine subtracts and takes the absolute value of two 16-bit integers with scaling factors set by input
 * \retval  parameters. The function returns the integer value of the fixed point absolute difference (C), determined
 *          according
 * \retval  to the above return-value equation. Return-value shall be saturated to boundary values in the event of
 *          underflow or
 * \retval  overflow. If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFFP2_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiffP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 xTmp_s32;
    sint32 yTmp_s32;
    sint32 absres_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b, compute: 2^(c-a) * |x - (y * 2^(a-b))| */
    if (a >= b)
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) a - (sint32) b;

        /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of
           data Example : y = MINSINT16 ,  shift_s32 = -3
           yTmp_s32 = (0xFFFF 8000 >> 3) => yTmp_s32 = (0x1FFF F000) = 536866816, which is incorrect */
        if (y < 0)
        {
            /* Input y is negated to retain the sign, and to remove MISRA warnings */
            tmp_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)tmp_u32);
        }
        else
        {
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
             Re-cast back to 'signed' after shifting */
            tmp_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)tmp_u32;
        }

        /* X Stored in a temporary variable to generalize next scaling operation */
        xTmp_s32 = (sint32) x;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32). */
        shift_s32 = (sint32) a;
    }
    /* Here a < b ,compute: 2^(c-b) * |(x * 2^(b-a)) - y| */
    else
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) b - (sint32) a;

        /* Scaling of positive and negative numbers are to be done seperately */
        if (x < 0)
        {
            /* Input x is negated to retain the sign, and to remove MISRA warnings */
            tmp_u32 = (((uint32) (-(x))) << (uint32)(shift_s32));
            xTmp_s32 = -((sint32)tmp_u32);
        }
        else
        {
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
             Re-cast back to 'signed' after shifting */
            tmp_u32 = (((uint32) x) << (uint32)(shift_s32));
            xTmp_s32 = (sint32)tmp_u32;
        }

        /* Y Stored in a temporary variable to generalize next scaling operation */
        yTmp_s32 = (sint32) y;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) b;
    }

    /* Mfx_AbsDiff_s32s32_s32_Inl calculates absolute value of difference between xTmp_s32 & yTmp_s32 */
    absres_s32 = Mfx_Prv_AbsDiff_s32s32_s32_Inl(xTmp_s32, yTmp_s32);

    /* Mfx_ConvertP2_s32_s16_Inl performs 2^(c-shift_s32)* absres_s32 and returns sint16 value */
    return (Mfx_Prv_ConvertP2_s32_s16_Inl(absres_s32, (sint16) shift_s32, c));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AbsDiffP2_s16s16_u16_Inl
 *
 * absolute difference of sint16 and sint16 saturated to uint16, and at radix specified by the user.
 *
 * Calculates the difference between a signed 16-bit and a signed 16-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 * Equation:
 * result = a >= b: 2^(c-a) * |x - (y * 2^(a-b))|
 * a < b : 2^(c-b) * |(x * 2^(b-a)) - y|
 *
 * Valid Range:
 * 0 <= |a - b| <= 15
 * (c - b) <= 15, (a - c) <= 15,  a >= b
 * (c - a) <= 15, (b - c) <= 15,  a < b
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable.
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable.
 * \param   sint16   a                            Operand 2, signed   16-bit variable.
 * \param   sint16   b                            Operand 2, signed   16-bit variable.
 * \param   sint16   c                            Operand 2, signed   16-bit variable.
 * \return  uint16                                Result,    unsigned 16-bit.
 * \retval  The routine subtracts and takes the absolute value of two 16-bit integers with scaling factors set by input
 * \retval  parameters. The function returns the integer value of the fixed point absolute difference (C), determined
 *          according
 * \retval  to the above return-value equation. Return-value shall be saturated to boundary values in the event of
 *          underflow or
 * \retval  overflow. If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFFP2_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiffP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 xTmp_s32;
    sint32 yTmp_s32;
    uint32 absres_u32;
    sint32 shift_s32;

    /* If a >= b, compute: 2^(c-a) * |x - (y * 2^(a-b))| */
    if (a >= b)
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) a - (sint32) b;

        /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of
           data Example : y = MINSINT16, shift_s32 = -3
           yTmp_s32 = (0xFFFF 8000 >> 3) => yTmp_s32 = (0x1FFF F000) = 536866816 which is incorrect */
        if (y < 0)
        {
            /* Input y is negated to retain the sign, and to remove MISRA warnings */
            absres_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)absres_u32);
        }
        else
        {
            /* Input y is typecasted to remove MISRA warnings */
            absres_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)absres_u32;
        }

        /* X Stored in a temporary variable to generalize next scaling operation */
        xTmp_s32 = (sint32) x;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) a;
    }
    /* If a < b, compute: 2^(c-b) * |(x * 2^(b-a)) - y| */
    else
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) b - (sint32) a;

        /* Scaling of positive and negative numbers are to be done seperately */
        if (x < 0)
        {
            /* Input x is negated to retain the sign, and to remove MISRA warnings */
            absres_u32 = (((uint32) (-(x))) << (uint32)(shift_s32));
            xTmp_s32 = -((sint32)absres_u32);
        }
        else
        {
            /* Input y is typecasted to remove MISRA warnings */
            absres_u32 = (((uint32) x) << (uint32)(shift_s32));
            xTmp_s32 = (sint32)absres_u32;
        }

        /* Y Stored in a temporary variable to generalize next scaling operation */
        yTmp_s32 = (sint32) y;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) b;
    }

    /* Mfx_AbsDiff_s32s32_u32_Inl calculates absolute value of difference between xTmp_s32 & yTmp_s32 */
    absres_u32 = Mfx_Prv_AbsDiff_s32s32_u32_Inl(xTmp_s32, yTmp_s32);

    /* Mfx_ConvertP2_u32_u16_Inl performs 2^(c-shift_s32)* absres_u32 and returns uint16 value */
    return (Mfx_Prv_ConvertP2_u32_u16_Inl(absres_u32, (sint16) shift_s32, c));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AbsDiffP2_u16s16_s16_Inl
 *
 * absolute difference of uint16 and sint16 saturated to sint16, and at radix specified by the user.
 *
 * Calculates the difference between a unsigned 16-bit and a signed 16-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 * Equation:
 * result = a >= b: 2^(c-a) * |x - (y * 2^(a-b))|
 * a < b : 2^(c-b) * |(x * 2^(b-a)) - y|
 *
 * Valid Range:
 * 0 <= |a - b| <= 15
 * (c - b) <= 15, (a - c) <= 15,  a >= b
 * (c - a) <= 15, (b - c) <= 15,  a < b
 *
 *
 * \param   uint16   x_value                      Operand 1, unsigned   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \param   sint16   a                            Operand 2, signed   16-bit variable
 * \param   sint16   b                            Operand 2, signed   16-bit variable
 * \param   sint16   c                            Operand 2, signed   16-bit variable
 * \return  sint16                                Result,    signed   16-bit,
 * \retval  The routine subtracts and takes the absolute value of two 16-bit integers with scaling factors set by input
 * \retval  parameters. The function returns the integer value of the fixed point absolute difference (C), determined
 *          according
 * \retval  to the above return-value equation. Return-value shall be saturated to boundary values in the event of
 *          underflow or
 * \retval  overflow. If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFFP2_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiffP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    sint32 yTmp_s32;
    sint32 absres_s32;
    sint32 shift_s32;

    /* Here a >= b, compute: 2^(c-a) * |x - (y * 2^(a-b))| */
    if (a >= b)
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) a - (sint32) b;

        /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of
           data Example : y = MINSINT16 , shift_s32 = -3
           yTmp_s32 = (0xFFFF 8000 >> 3) => yTmp_s32 = (0x1FFF F000) = 536866816 which is incorrect */
        if (y < 0)
        {
            /* Input y is negated to retain the sign, and to remove MISRA warnings */
            xTmp_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)xTmp_u32);
        }
        else
        {
            /* Input y is typecasted to remove MISRA warnings */
            xTmp_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)xTmp_u32;
        }

        /* XTmp_u32 will hold value of x type casted to uint32 */
        xTmp_u32 = (uint32) x;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) a;
    }
    /* Here a < b , compute: 2^(c-b) * |(x * 2^(b-a)) - y| */
    else
    {
        /* Input x is typecasted to remove MISRA warnings. */
        shift_s32 = (sint32)b - (sint32)a;
        xTmp_u32 = (((uint32) x) << (uint32)shift_s32);

        /* Y Stored in a temporary variable to generalize next scaling operation */
        yTmp_s32 = (sint32) y;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) b;
    }

    /* Mfx_AbsDiff_u32s32_s32_Inl calculates absolute value of difference between xTmp_u32 & yTmp_s32 */
    absres_s32 = Mfx_Prv_Absdiff_u32s32_s32_Inl(xTmp_u32, yTmp_s32);

    /* Mfx_ConvertP2_s32_s16_Inl performs 2^(c-shift_s32)* absres_s32 and returns sint16 value */
    return (Mfx_Prv_ConvertP2_s32_s16_Inl(absres_s32, (sint16) shift_s32, c));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AbsDiffP2_u16s16_u16_Inl
 *
 * absolute difference of uint16 and sint16 saturated to uint16, and at radix specified by the user.
 *
 * Calculates the difference between a unsigned 16-bit and a signed 16-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 *
 *     res = a >= b: 2^(c-a) * |x - (y * 2^(a-b))|
 * a < b : 2^(c-b) * |(x * 2^(b-a)) - y|
 * Valid range:
 * 0 = |a - b| = 15
 * (c - b) = 15, (a - c) = 15,  a >= b
 * (c - a) = 15, (b - c) = 15, a < b
 *
 * \param   uint16   x_value                      Operand 1, unsigned  16-bit variable
 * \param   sint16   y_value                      Operand 2, signed    16-bit variable
 * \param   sint16   a                            Operand 2, signed    16-bit variable
 * \param   sint16   b                            Operand 2, signed    16-bit variable
 * \param   sint16   c                            Operand 2, signed    16-bit variable
 * \return  uint16                                Result,    unsigned  16-bit,
 * \retval  The routine subtracts and takes the absolute value of two 16-bit integers with scaling factors set by input
 * \retval  parameters. The function returns the integer value of the fixed point absolute difference (C), determined
 *          according
 * \retval  to the above return-value equation. Return-value shall be saturated to boundary values in the event of
 *          underflow or
 * \retval  overflow. If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFFP2_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiffP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    sint32 yTmp_s32;
    uint32 absres_u32;
    sint32 shift_s32;

    /* Here a >= b, compute: 2^(c-a) * |x - (y * 2^(a-b))| */
    if (a >= b)
    {
        /* Radix of the inputs are made equal */
        shift_s32 = (sint32) a - (sint32) b;

        /* YTmp_s32 will hold value of (y * 2^(a-b)) */

        /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of
           data Example : y = MINSINT16 , shift_s32 = -3
           yTmp_s32 = (0xFFFF 8000 >> 3) => yTmp_s32 = (0x1FFF F000) = 536866816 which is incorrect */
        if (y < 0)
        {
            /* Input y is negated to retain the sign, and to remove MISRA warnings */
            absres_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)absres_u32);
        }
        else
        {
            /* Input y is typecasted to remove MISRA warnings */
            absres_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)absres_u32;
        }

        /* X Stored in a temporary variable to generalize next scaling operation */
        xTmp_u32 = (uint32) x;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) a;
    }
    /* If a < b ,compute: 2^(c-b) * |(x * 2^(b-a)) - y| */
    else
    {
        /* Calculate the number of shifts for scaling */
        shift_s32 = (sint32) b - (sint32) a;

        /* Input x is typecasted to remove MISRA warnings */
        xTmp_u32 = (((uint32) x) << (uint32)(shift_s32));

        /* Y Stored in a temporary variable to generalize next scaling operation */
        yTmp_s32 = (sint32) y;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) b;
    }
    /* Mfx_AbsDiff_u32s32_u32_Inl calculates absolute value of difference between xTmp_u32 & yTmp_s32 */
    absres_u32 = Mfx_Prv_AbsDiff_u32s32_u32_Inl(xTmp_u32, yTmp_s32);

    /* Mfx_ConvertP2_u32_u16_Inl performs 2^(c-shift_s32)* absres_u32 and returns uint16 value */
    return (Mfx_Prv_ConvertP2_u32_u16_Inl(absres_u32, (sint16) shift_s32, c));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AbsDiffP2_u16u16_s16_Inl
 *
 * absolute difference of uint16 and uint16 saturated to sint16, and at radix specified by the user.
 *
 * Calculates the difference between a unsigned 16-bit and a unsigned 16-bit variable to a signed 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 *     res = a >= b: 2^(c-a) * |x - (y * 2^(a-b))|
 * a < b : 2^(c-b) * |(x * 2^(b-a)) - y|
 * Valid range:
 * 0 = |a - b| = 15
 * (c - b) = 15, (a - c) = 15,  a >= b
 * (c - a) = 15, (b - c) = 15, a < b
 *
 * \param   uint16   x_value                      Operand 1, unsigned  16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned  16-bit variable
 * \param   sint16   a                            Operand 2, signed    16-bit variable
 * \param   sint16   b                            Operand 2, signed    16-bit variable
 * \param   sint16   c                            Operand 2, signed    16-bit variable
 * \return  sint16                                Result,    signed    16-bit,
 * \retval  The routine subtracts and takes the absolute value of two 16-bit integers with scaling factors set by input
 * \retval  parameters. The function returns the integer value of the fixed point absolute difference (C), determined
 *          according
 * \retval  to the above return-value equation. Return-value shall be saturated to boundary values in the event of
 *          underflow or
 * \retval  overflow. If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFFP2_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsDiffP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    uint32 yTmp_u32;
    uint32 absres_u32;
    sint32 shift_s32;

    /* If a >= b, compute: 2^(c-a) * |x - (y * 2^(a-b))| */
    if (a >= b)
    {
        shift_s32 = (sint32)a - (sint32)b;
        /* Input y is typecasted to remove MISRA warnings */
        yTmp_u32 = ((uint32) y << (uint32)shift_s32);

        /* X Stored in a temporary variable to generalize next scaling operation */
        xTmp_u32 = (uint32) x;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) a;
    }
    /* If a < b ,compute: 2^(c-b) * |(x * 2^(b-a)) - y| */
    else
    {
        shift_s32 = (sint32)b - (sint32)a;
        /* Input x is typecasted to remove MISRA warnings */
        xTmp_u32 = (((uint32) x) << (uint32)shift_s32);

        /* Y Stored in a temporary variable to generalize next scaling operation */
        yTmp_u32 = (uint32) y;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) b;
    }

    /* Mfx_AbsDiff_u32u32_u32_Inl calculates absolute value of difference between xTmp_u32 & yTmp_u32 */
    absres_u32 = Mfx_Prv_AbsDiff_u32u32_u32_Inl(xTmp_u32, yTmp_u32);

    /* Shift to get output to required radix */
    shift_s32 = (sint32) c - shift_s32;

    /* Below method is to detect cases where overflown data can still fall into valid range
     for example: if  absres_u32=503316464=0x1DFF FFF0 & shift_s32=6 then actual result=0x0000 0007 7FFF FC00
     This result cannot be stored in uint32 hence we should have used uint64 variable, but since the
     shifted value is not used for any further computation it is not necessary to actually store the
     result. Thus  absres_u32 = 2147482624 = 0x7FFF FC00 which is a case of overflow. */
    if (((shift_s32) >= 0) && (absres_u32 >= (uint32) MFX_MAXSINT16))
    {
        absres_u32 = (uint32) MFX_MAXSINT16; /* Overflow saturation */
    }
    else
    {
        /* Here absres_u32*(2^ shift_s32) is calculated */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            absres_u32 = ((absres_u32) >> (uint32)(shift_s32));
        }
        else
        {
            absres_u32 = ((absres_u32) << (uint32)(shift_s32));
        }
    }

    /* Overflow Check */
    if (absres_u32 > (uint32) MFX_MAXSINT16)
    {
        absres_u32 = (uint32) MFX_MAXSINT16; /* Overflow saturation */
    }

    return ((sint16) absres_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AbsDiffP2_u16u16_u16_Inl
 *
 * absolute difference of uint16 and uint16 saturated to uint16, and at radix specified by the user.
 *
 * Calculates the difference between a unsigned 16-bit and a unsigned 16-bit variable to a unsigned 16-bit result.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows (underflows).
 *
 *     res = a >= b: 2^(c-a) * |x - (y * 2^(a-b))|
 * a < b : 2^(c-b) * |(x * 2^(b-a)) - y|
 *
 * Valid range:
 * 0 = |a - b| = 15
 * (c - b) = 15, (a - c) = 15,  a >= b
 * (c - a) = 15, (b - c) = 15, a < b
 *
 * \param   uint16   x_value                      Operand 1, unsigned  16-bit variable.
 * \param   uint16   y_value                      Operand 2, unsigned  16-bit variable.
 * \param   sint16   a                            Operand 2, signed    16-bit variable.
 * \param   sint16   b                            Operand 2, signed    16-bit variable.
 * \param   sint16   c                            Operand 2, signed    16-bit variable.
 * \return  uint16                                Result,    unsigned  16-bit.
 * \retval  The routine subtracts and takes the absolute value of two 16-bit integers with scaling factors set by input
 * \retval  parameters. The function returns the integer value of the fixed point absolute difference (C), determined
 *          according
 * \retval  to the above return-value equation. Return-value shall be saturated to boundary values in the event of
 *          underflow or
 * \retval  overflow. If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSDIFFP2_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsDiffP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    uint32 yTmp_u32;
    uint32 absres_u32;
    sint32 shift_s32;

    /* Here a >= b, compute: 2^(c-a) * |x - (y * 2^(a-b))| */
    if (a >= b)
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* Input y is typecasted to remove MISRA warnings */
        yTmp_u32 = (((uint32) y) << (uint32)shift_s32);

        /* X Stored in a temporary variable to generalize next scaling operation */
        xTmp_u32 = (uint32) x;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) a;
    }
    /* Here a < b , compute: 2^(c-b) * |(x * 2^(b-a)) - y| */
    else
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* Input x is typecasted to remove MISRA warnings */
        xTmp_u32 = (((uint32) x) << (uint32)shift_s32);

        /* Y Stored in a temporary variable to generalize next scaling operation */
        yTmp_u32 = (uint32) y;

        /* 2^(c-a) and 2^(c-b) can be combined as 2^(c-shift_s32) */
        shift_s32 = (sint32) b;
    }

    /* Mfx_AbsDiff_u32u32_u32_Inl calculates absolute value of difference between xTmp_u32 & yTmp_u32 */
    absres_u32 = Mfx_Prv_AbsDiff_u32u32_u32_Inl(xTmp_u32, yTmp_u32);

    /* Mfx_ConvertP2_u32_u16_Inl performs 2^(c-shift_s32)* absres_u32 and returns uint16 value */
    return (Mfx_Prv_ConvertP2_u32_u16_Inl(absres_u32, (sint16) shift_s32, c));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16s16_s16
 *
 * sint16 sint16 substraction with sint16 saturation.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16s16_s8
 *
 * sint16 sint16 substraction with sint8 saturation.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16s16_u16
 *
 * sint16 sint16 substraction with sint8 saturation.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16s16_u8
 *
 * sint16 sint16 substraction with sint8 saturation.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16u16_s16
 *
 * sint16 uint16 substraction with sint16 saturation.
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16u16_s8
 *
 * sint16 uint16 substraction with sint8 saturation.
 *
 * Substract a unsigned 16-bit variable from a signed 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_s16u16_s8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16u16_u16
 *
 * sint16 uint16 substraction with uint16 saturation.
 *
 * Substract a unsigned 16-bit variable from a signed 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s16u16_u8
 *
 * sint16 uint16 substraction with uint8 saturation.
 *
 * Substract a unsigned 16-bit variable from a signed 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_s16u16_u8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32s32_s16
 *
 * sint32 sint32 substraction with sint16 saturation.
 *
 * Substract a signed 32-bit variable from a signed 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = (x_value - y_value);

    if( (x_value >= 0L) && (y_value <= 0L) )
    {
        /* Overflow */
        if( x_value > (MFX_MAXSINT32 + y_value) )
        {
            res_s32 = (sint32) MFX_MAXSINT16;
        }
    }

    if( (x_value < 0L) && (y_value > 0L) )
    {
        /* Underflow */
        if( x_value < (MFX_MINSINT32 + y_value) )
        {
            res_s32 = (sint32) MFX_MINSINT16;
        }
    }

    /* Limitation */
    if(res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) MFX_MAXSINT16;
    }
    if(res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) MFX_MINSINT16;
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32s32_s32
 *
 * sint32 sint32 substraction with sint32 saturation.
 *
 * Substract a signed 32-bit variable from a signed 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value - y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Sub_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = (x_value - y_value);

    if( (x_value >= 0L) && (y_value <= 0L) )
    {
        /* Overflow */
        if( x_value > (MFX_MAXSINT32 + y_value) )
        {
            res_s32 = MFX_MAXSINT32;
        }
    }

    if( (x_value < 0L) && (y_value > 0L) )
    {
        /* Underflow */
        if( x_value < (MFX_MINSINT32 + y_value) )
        {
            res_s32 = MFX_MINSINT32;
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32s32_s8
 *
 * sint32 sint32 substraction with sint8 saturation.
 *
 * Substract a signed 32-bit variable from a signed 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = (x_value - y_value);

    if( (x_value >= 0L) && (y_value <= 0L) )
    {
        /* Overflow */
        if( x_value > (MFX_MAXSINT32 + y_value) )
        {
            res_s32 = (sint32) MFX_MAXSINT8;
        }
    }

    if( (x_value < 0L) && (y_value > 0L) )
    {
        /* Underflow */
        if( x_value < (MFX_MINSINT32 + y_value) )
        {
            res_s32 = (sint32) MFX_MINSINT8;
        }
    }

    /* Limitation */
    if(res_s32 > (sint32) MFX_MAXSINT8)
    {
        res_s32 = (sint32) MFX_MAXSINT8;
    }

    if(res_s32 < (sint32) MFX_MINSINT8)
    {
        res_s32 = (sint32) MFX_MINSINT8;
    }

    return ((sint8) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32s32_u16
 *
 * sint32 sint32 substraction with uint16 saturation.
 *
 * Substract a signed 32-bit variable from a signed 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;

    /* Limitation */
    if (x_value <= y_value)
    {
        res_u32 = (uint32) MFX_MINUINT16;
    }
    /* Regular */
    else
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);

        /* Limitation */
        if(res_u32 > (uint32) MFX_MAXUINT16)
        {
            res_u32 = (uint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32s32_u32
 *
 * sint32 sint32 substraction with uint32 saturation.
 *
 * Substract a signed 32-bit variable from a signed 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32    (x_value - y_value)         Result,    unsigned  32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Sub_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;

    /* Limitation */
    if (x_value <= y_value)
    {
        res_u32 = MFX_MINUINT32;
    }
    /* Regular */
    else
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32s32_u8
 *
 * sint32 sint32 substraction with uint8 saturation.
 *
 * Substract a signed 32-bit variable from a signed 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    /* Limitation */
    if (x_value <= y_value)
    {
        res_u32 = (uint32) MFX_MINUINT8;
    }
    /* Regular */
    else
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);

        /* Limitation */
        if(res_u32 > (uint32) MFX_MAXUINT8)
        {
            res_u32 = (uint32) MFX_MAXUINT8;
        }
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32u32_s16
 *
 * sint32 uint32 substraction with sint16 saturation.
 *
 * Substract a unsigned 32-bit variable from a signed 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_s32u32_s16_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    /* Operand positive */
    if(x_value >= 0L)
    {
        /* Underflow */
        if( ( ((uint32) x_value) + ((uint32) MFX_MAXSINT16) + 1UL ) < y_value )
        {
            res_s32 = (sint32) MFX_MINSINT16;
        }
        /* Regular */
        else
        {
            if( y_value <= (uint32) MFX_MAXSINT32 )
            {
                res_s32 = ( x_value - ((sint32) y_value) );
            }
            else
            {
                tmp_u32 = (y_value - MFX_MAXSINT32_U);
                res_s32 = ( x_value - MFX_MAXSINT32 - ((sint32)tmp_u32) );
            }

            /* Limitation */
            if(res_s32 > (sint32) MFX_MAXSINT16)
            {
                res_s32 = (sint32) MFX_MAXSINT16;
            }
        }
    }
    /* Operand negative */
    else
    {
        /* Underflow */
        res_s32 = (x_value - MFX_MINSINT32);
        if( y_value >= ((uint32)res_s32) )
        {
            res_s32 = (sint32) MFX_MINSINT16;
        }
        /* Regular */
        else
        {
            res_s32 = ( x_value - ((sint32) y_value) );

            /* Limitation */
            if(res_s32 < (sint32) MFX_MINSINT16)
            {
                res_s32 = (sint32) MFX_MINSINT16;
            }
        }
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32u32_s32
 *
 * sint32 uint32 substraction with sint32 saturation.
 *
 * Substract a unsigned 32-bit variable from a signed 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   (x_value - y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Sub_s32u32_s32_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    /* Operand positive */
    if(x_value >= 0)
    {
        /* Underflow (MFX_MAXSINT32 + 1 == -MFX_MINSINT32) */
        if( ( ((uint32) x_value) + ((uint32) MFX_MAXSINT32) + 1UL ) < y_value )
        {
            res_s32 = MFX_MINSINT32;
        }
        /* Regular */
        else
        {
            if( y_value <= MFX_MAXSINT32_U )
            {
                res_s32 = ( x_value - ((sint32) y_value) );
            }
            else
            {
                tmp_u32 = (y_value - MFX_MAXSINT32_U);
                res_s32 = ( x_value - MFX_MAXSINT32 - ((sint32)tmp_u32) );
            }
        }
    }
    /* Operand negative */
    else
    {
        /* Underflow */
        res_s32 = (x_value - MFX_MINSINT32);
        if( y_value >= ((uint32)res_s32 ) )
        {
            res_s32 = MFX_MINSINT32;
        }
        /* Regular */
        else
        {
            res_s32 = ( x_value - ((sint32) y_value) );
        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32u32_s8
 *
 * sint32 uint32 substraction with sint8 saturation.
 *
 * Substract a unsigned 32-bit variable from a signed 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_s32u32_s8_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    /* Operand positive */
    if(x_value >= 0)
    {
        /* Underflow */
        if( ( ((uint32) x_value) + ((uint32) MFX_MAXSINT8) + 1UL ) < y_value )
        {
            res_s32 = (sint32) MFX_MINSINT8;
        }
        /* Regular */
        else
        {
            if( y_value <= MFX_MAXSINT32_U )
            {
                res_s32 = ( x_value - ((sint32) y_value) );
            }
            else
            {
                tmp_u32 =  (y_value - ((uint32) MFX_MAXSINT32));
                res_s32 = ( x_value - MFX_MAXSINT32 - ((sint32)tmp_u32) );
            }

            /* Limitation */
            if(res_s32 > (sint32) MFX_MAXSINT8)
            {
                res_s32 = (sint32) MFX_MAXSINT8;
            }
        }
    }
    /* Operand negative */
    else
    {
        /* Underflow */
        res_s32 = (x_value - MFX_MINSINT32);
        if( y_value >= ((uint32)res_s32 ) )
        {
            res_s32 = (sint32) MFX_MINSINT8;
        }
        /* Regular */
        else
        {
            res_s32 = ( x_value - ((sint32) y_value) );

            /* Limitation */
            if(res_s32 < (sint32) MFX_MINSINT8)
            {
                res_s32 = (sint32) MFX_MINSINT8;
            }
        }
    }

    return ((sint8) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32u32_u16
 *
 * sint32 uint32 substraction with uint16 saturation.
 *
 * Substract a unsigned 32-bit variable from a signed 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_s32u32_u16_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    /* Limitation */
    if( (x_value < 0L) || (((uint32) x_value) < y_value) )
    {
        res_u32 = (uint32) MFX_MINUINT16;
    }
    /* Regular */
    else
    {
        res_u32 = (((uint32) x_value) - y_value);

        /* Limitation */
        if(res_u32 > (uint32) MFX_MAXUINT16)
        {
            res_u32 = (uint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32u32_u32
 *
 * sint32 uint32 substraction with uint32 saturation.
 *
 * Substract a unsigned 32-bit variable from a signed 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint32    (x_value - y_value)         Result,    unsigned  32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Sub_s32u32_u32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    /* Limitation */
    if( (x_value < 0) || (((uint32) x_value) < y_value) )
    {
        res_u32 = MFX_MINUINT32;
    }
    /* Regular */
    else
    {
        res_u32 = (((uint32) x_value) - y_value);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s32u32_u8
 *
 * sint32 uint32 substraction with uint8 saturation.
 *
 * Substract a unsigned 32-bit variable from a signed 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_s32u32_u8_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    /* Limitation */
    if( (x_value < 0L) || (((uint32) x_value) < y_value) )
    {
        res_u32 = (uint32) MFX_MINUINT8;
    }
    /* Regular */
    else
    {
        res_u32 = (((uint32) x_value) - y_value);

        /* Limitation */
        if(res_u32 > (uint32) MFX_MAXUINT8)
        {
            res_u32 = (uint32) MFX_MAXUINT8;
        }
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s8s8_s8
 *
 * sint8 sint8 substraction with sint8 saturation.
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   sint8   y_value                      Operand 2, signed   8-bit variable
 * \return  sint8   (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Sub_s16s16_s8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s8s8_u8
 *
 * sint8 sint8 substraction with uint8 saturation.
 *
 * Substract a signed 8-bit variable from a signed 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   sint8   y_value                      Operand 2, signed   8-bit variable
 * \return  uint8   (x_value - y_value)          Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_s8s8_u8_Inl(sint8  x_value, sint8  y_value)
{
    return (Mfx_Sub_s16s16_u8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s8u8_s8
 *
 * sint8 uint8 substraction with sint8 saturation.
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned 8-bit variable
 * \return  sint8   (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_s16u16_s8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_s8u8_u8
 *
 * sint8 uint8 substraction with uint8 saturation.
 *
 * Substract a unsigned 8-bit variable from a signed 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint8   x_value                      Operand 1, signed   8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned 8-bit variable
 * \return  uint8   (x_value - y_value)          Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_S8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_s8u8_u8_Inl(sint8  x_value, uint8  y_value)
{
    return (Mfx_Sub_s16u16_u8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16s16_s16
 *
 * uint16 sint16 substraction with sint16 saturation.
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16s16_s8
 *
 * uint16 sint16 substraction with sint8 saturation.
 *
 * Substract a signed 16-bit variable from a unsigned 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16s16_u16
 *
 * uint16 sint16 substraction with uint16 saturation.
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16s16_u8
 *
 * uint16 sint16 substraction with uint8 saturation.
 *
 * Substract a signed 16-bit variable from a unsigned 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16u16_s16
 *
 * uint16 uint16 substraction with sint16 saturation.
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16s16_s8
 *
 * uint16 uint16 substraction with sint8 saturation.
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16u16_u16
 *
 * uint16 sint16 substraction with uint16 saturation.
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u16u16_u8
 *
 * uint16 sint16 substraction with uint8 saturation.
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32s32_s16
 *
 * uint32 sint32 substraction with sint16 saturation.
 *
 * Substract a signed 32-bit variable from a unsigned 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    /* Because of x being uint32, only an overflow might occur. */

    if (y_value <= 0L)
    {
        /* If the result exceeds the value range of sint16, it is saturated to MFX_MAXSINT16.
         Overflow occurs if result of subtraction is smaller than x, thus MFX_MAXSINT16 is returned.
         e.g. MFX_MAXUINT32 - (-100) = 99 */
        if ((res_u32 > (uint32) MFX_MAXSINT16) || (res_u32 < x_value))
        {
            res_u32 = (uint32) MFX_MAXSINT16;
        }
    }

    /* Y is positive; */
    else
    {
        /* Positive result expected; */
        if ((uint32) y_value < x_value)
        {
            /* If the result of subtraction exceeds value range of sint16, is is saturated to MFX_MAXSINT16. */
            if (res_u32 > (uint32) MFX_MAXSINT16)
            {
                res_u32 = (uint32) MFX_MAXSINT16;
            }
        }
        /* Negative result expected;*/
        else
        {
            /* If the result of subtraction exceeds value range of sint16, it is saturated to MFX_MINSINT16. */
            if ((sint32) res_u32 < (sint32) MFX_MINSINT16)
            {
                res_u32 = (uint32) MFX_MINSINT16_U;
            }
        }
    }

    return ((sint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32s32_s32
 *
 * uint32 sint32 substraction with sint32 saturation.
 *
 * Substract a signed 32-bit variable from a unsigned 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value - y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Sub_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - ((uint32) y_value));

    /* Because of x being uint32, only an overflow might occur. */

    if (y_value <= 0L)
    {
        /* An overflow might occur if the result of subtraction is smaller than x, then MFX_MAXSINT32 is returned.
         e.g. MFX_MAXUINT32 - (-MFX_MAXSINT32) = 0x7FFFFFFE;
         If the result of subtraction exceeds the value range of sint32, then it is saturated to MFX_MAXSINT32.
         e.g. 0x80000000 - (-100) = 0x80000064; */
        if ((res_u32 > (uint32) MFX_MAXSINT32) || (res_u32 < x_value))
        {
            res_u32 = (uint32) MFX_MAXSINT32;
        }
    }
    /* Y is positive; */
    else
    {
        /* If y is smaller than x, but the result is greater than MFX_MAXSINT32, then it is saturated to MFX_MAXSINT32
         e.g. MFX_MAXUINT32 - 100 = -101; */
        if ((((uint32) y_value) < x_value) && (res_u32 > (uint32) MFX_MAXSINT32))
        {
            res_u32 = (uint32) MFX_MAXSINT32;
        }

    }

    return ((sint32) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32s32_s8
 *
 * uint32 sint32 substraction with sint8 saturation.
 *
 * Substract a signed 32-bit variable from a unsigned 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    /* Because of x being uint32, only an overflow might occur. */

    if (y_value <= 0L)
    {
        /* If the result exceeds the value range of sint8, it is saturated to MFX_MAXSINT8.
         Overflow occurs if result of subtraction is smaller than x, thus MFX_MAXSINT8 is returned. */
        if ((res_u32 > (uint32) MFX_MAXSINT8) || (res_u32 < x_value))
        {
            res_u32 = (uint32) MFX_MAXSINT8;
        }
    }
    /* Y is positive; */
    else
    {
        /* Positive result expected; */
        if ((uint32) y_value < x_value)
        {
            /* If the result of subtraction exceeds value range of sint8, it is saturated to MFX_MAXSINT8. */
            if (res_u32 > (uint32) MFX_MAXSINT8)
            {
                res_u32 = (uint32) MFX_MAXSINT8;
            }
        }
        /* Negative result expected;*/
        else
        {
            /* If the result of subtraction exceeds value range of sint8, it is saturated to MFX_MINSINT8. */
            if ((sint32) res_u32 < (sint32) MFX_MINSINT8)
            {
                res_u32 = (uint32) MFX_MINSINT8_U;
            }
        }
    }

    return ((sint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32s32_u16
 *
 * uint32 sint32 substraction with uint16 saturation.
 *
 * Substract a signed 32-bit variable from a unsigned 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    if (y_value >= 0L)
    {
        /* If the result of subtraction is greater than x (there was an underflow), then MFX_MINUINT16 is returned.
         e.g. MFX_MINUINT32 - MFX_MAXSINT32 = 0x80000001[2147483649] or 50 - 200 = 0xffffff6a[4294967146]; */
        if (res_u32 > x_value)
        {
            res_u32 = (uint32) MFX_MINUINT16;
        }
        else
        {
            /* Saturation to MFX_MAXUINT16, if the result was greater than MFX_MAXUINT16. */
            if (res_u32 > (uint32) MFX_MAXUINT16)
            {
                res_u32 = (uint32) MFX_MAXUINT16;
            }
        }
    }
    /* Case y is negative; */
    else
    {
        /* If the result of subtraction is smaller than x (there was an overflow), then MFX_MAXUINT16 is returned.
         e.g. MFX_MAXUINT32 - (-3) = 2;
         Saturation to MFX_MAXUINT16, if the result was greater than MFX_MAXUINT16. */
        if ((res_u32 < x_value) || (res_u32 > (uint32) MFX_MAXUINT16))
        {
            res_u32 = (uint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32s32_u32
 *
 * uint32 sint32 substraction with uint32 saturation.
 *
 * Substract a signed 32-bit variable from a unsigned 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32    (x_value - y_value)         Result,    unsigned  32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Sub_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    if (y_value >= 0L)
    {
        /* If result of subtraction is greater than x (there was an underflow), then MFX_MINUINT32 is returned.
         e.g. MFX_MINUINT32 - MFX_MAXSINT32 = 0x80000001[2147483649] or 50 - 200 = 0xFFFFFF6A[4294967146]; */
        if (res_u32 > x_value)
        {
            res_u32 = MFX_MINUINT32;
        }
    }
    /* Case y is negative; */
    else
    {
        /* If the result of subtraction is smaller than x (there was an overflow), then MFX_MAXUINT32 is returned.
         e.g. MFX_MAXUINT32 - MFX_MINSINT32 = 4; */
        if (res_u32 < x_value)
        {
            res_u32 = MFX_MAXUINT32;
        }
    }
    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32s32_u8
 *
 * uint32 sint32 substraction with uint8 saturation.
 *
 * Substract a signed 32-bit variable from a unsigned 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    if (y_value >= 0L)
    {
        /* If the result of subtraction is greater than x (there was an underflow), then MFX_MINUINT8 is returned.
         e.g. MFX_MINUINT32 - MFX_MAXSINT32 = 0x80000001[2147483649] or 50 - 200 = 0xffffff6a[4294967146]; */
        if (res_u32 > x_value)
        {
            res_u32 = (uint32) MFX_MINUINT8;
        }
        else
        {
            /* Saturation to MFX_MAXUINT8, if result was greater than MFX_MAXUINT8. */
            if (res_u32 > (uint32) MFX_MAXUINT8)
            {
                res_u32 = (uint32) MFX_MAXUINT8;
            }
        }
    }
    /* Case y is negative; */
    else
    {
        /* If the result of subtraction is smaler than x (there was an overflow), then MFX_MAXUINT8 is returned.
         e.g. MFX_MAXUINT32 - (-1) = 0;
         Saturation to MFX_MAXUINT8, if result was greater than MFX_MAXUINT8. */
        if ((res_u32 < x_value) || (res_u32 > (uint32) MFX_MAXUINT8))
        {
            res_u32 = (uint32) MFX_MAXUINT8;
        }
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32u32_s16
 *
 * uint32 uint32 substraction with sint16 saturation.
 *
 * Substract a unsigned 32-bit variable from a unsigned 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   (x_value - y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sub_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    tmp_u32 = (x_value - y_value);
    res_s32 = (sint32)tmp_u32 ;

    /* Positive result expected: overflow occurs if x is greater than y, but the result of subtraction negative,
     then MFX_MAXSINT16 is returned.  e.g. MFX_MAXUINT32 - MFX_MINUINT32 = -1[0xffffffff];
     If the result of subtraction exceeds the value range of sint16, it is saturated to MFX_MAXSINT16. */
    if (((res_s32 < 0L) && (x_value > y_value)) || (res_s32 > (sint32) MFX_MAXSINT16))
    {
        res_s32 = (sint32) MFX_MAXSINT16;
    }

    /* Negative result expected: underflow occurs if x is smaller than y, but the result of subtraction is positive,
     then MFX_MINSINT16 is returned.  e.g. MFX_MINUINT32 - MFX_MAXUINT32 = 1;
     If the result of subtraction exceeds the value range of sint16, it is saturated to MFX_MINSINT16. */
    if (((res_s32 > 0L) && (x_value < y_value)) || (res_s32 < (sint32) MFX_MINSINT16))
    {
        res_s32 = (sint32) MFX_MINSINT16;
    }

    return ((sint16) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32u32_s32
 *
 * uint32 uint32 substraction with sint32 saturation.
 *
 * Substract a unsigned 32-bit variable from a unsigned 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   (x_value - y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Sub_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    tmp_u32 = (x_value - y_value);
    res_s32 = (sint32)tmp_u32;

    /* Overflow occurs if x is greater than y, but the result of subtraction negative,
       then MFX_MAXSINT32 is returned. */
    /* MAXUINT32 - MINUINT32 = -1 [0xFFFFFFFF] --- (MAXSINT32+100)[0x80000063] - 50 = -2147483599 [0x80000031]; */
    if ((res_s32 < 0L) && (x_value > y_value)) /* Positive result expected; */
    {
        res_s32 = MFX_MAXSINT32;
    }

    /* Underflow occurs if x is smaller than y, but the result of subtraction is positive,
       then MFX_MINSINT32 is returned. */
    /* MINUINT32 - MAXUINT32 = 0x1  --- 50[0x32] - (MAXSINT32+100)[0x80000063] = 0x7fffffcf; */
    if ((res_s32 > 0L) && (x_value < y_value)) /* Negative result expected; */
    {
        res_s32 = MFX_MINSINT32;
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32u32_s8
 *
 * uint32 uint32 substraction with sint8 saturation.
 *
 * Substract a unsigned 32-bit variable from a unsigned 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8    (x_value - y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    tmp_u32 = (x_value - y_value);
    res_s32 = (sint32)tmp_u32;

    /* Overflow occurs if x is greater than y, but the result of subtraction is smaller than zero,
       then MFX_MAXSINT8 is returned. e.g. MFX_MAXUINT32 - MFX_MINUINT32 = -1[0xFFFFFFFF];
       If the result of subtraction exceeds the value range of sint8, it is saturated to MFX_MAXSINT8. */
    if (((res_s32 < 0L) && (x_value > y_value)) || (res_s32 > (sint32) MFX_MAXSINT8))
    {
        res_s32 = (sint32) MFX_MAXSINT8;
    }
    /* Underflow occurs if x is smaller than y, but the result of subtraction is greater than zero,
       then MFX_MINSINT8 is returned. e.g.  MFX_MINUINT32 - MFX_MAXUINT32 = 1;
       If the result of subtraction exceeds the value range of sint8, it is saturated to MFX_MINSINT8. */
    if (((res_s32 > 0L) && (x_value < y_value)) || (res_s32 < (sint32) MFX_MINSINT8))
    {
        res_s32 = (sint32) MFX_MINSINT8;
    }

    return ((sint8) res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32u32_u16
 *
 * uint32 uint32 substraction with uint16 saturation.
 *
 * Substract a unsigned 32-bit variable from a unsigned 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint16   (x_value - y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sub_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value - y_value;

    /* If result of subtraction is greater than x (there was an underflow), then MFX_MINUINT16 is returned. */
    if (res_u32 > x_value)
    {
        res_u32 = (uint32) MFX_MINUINT16;
    }
    else
    {
        /* Saturation to MFX_MAXUINT16 if value range of uint16 is exceeded. */
        if (res_u32 > (uint32) MFX_MAXUINT16)
        {
            res_u32 = (uint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32u32_u32
 *
 * uint32 uint32 substraction with uint32 saturation.
 *
 * Substract a unsigned 32-bit variable from a unsigned 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXUINT32 (MFX_MINUINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint32    (x_value - y_value)         Result,    unsigned  32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Sub_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value - y_value;

    /* If result of subtraction is greater than x (there was an underflow), then MFX_MINUINT32 is returned. */
    if (res_u32 > x_value)
    {
        res_u32 = MFX_MINUINT32;
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u32u32_u8
 *
 * uint32 uint32 substraction with uint8 saturation.
 *
 * Substract a unsigned 32-bit variable from a unsigned 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8    (x_value - y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value - y_value;

    /* If result of subtraction is greater than x (there was an underflow), then MFX_MINUINT8 is returned. */
    if (res_u32 > x_value)
    {
        res_u32 = (uint32) MFX_MINUINT8;
    }
    else
    {
        /* Saturation to MFX_MAXUINT8 if value range of uint8 is exceeded. */
        if (res_u32 > (uint32) MFX_MAXUINT8)
        {
            res_u32 = (uint32) MFX_MAXUINT8;
        }
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u8s8_s8
 *
 * uint8 sint8 substraction with sint8 saturation.
 *
 * Substract a signed 8-bit variable from a unsigned 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned 8-bit variable
 * \param   sint8   y_value                      Operand 2, signed   8-bit variable
 * \return  sint8   (x_value - y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_u8s8_s8_Inl(uint8  x_value, sint8  y_value)
{
    return (Mfx_Sub_u16s16_s8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u8s8_u8
 *
 * uint8 sint8 substraction with uint8 saturation.
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   sint8   y_value                      Operand 2, signed    8-bit variable
 * \return  uint8   (x_value - y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Sub_u16s16_u8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u8u8_s8
 *
 * uint8 sint8 substraction with uint8 saturation.
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned  8-bit variable
 * \return  sint8   (x_value - y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sub_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_u16u16_s8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Sub_u8u8_u8
 *
 * uint8 sint8 substraction with uint8 saturation.
 *
 * \param   uint8   x_value                      Operand 1, unsigned  8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned  8-bit variable
 * \return  uint8   (x_value - y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUB_U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sub_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_u16u16_u8(x_value, y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s16s16_s16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint16   x                  Operand 1, signed   16-bit variable
 * \param   sint16   y                  Operand 2, signed   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  sint16   result_s32         Result,   signed   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_SubP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* Right shifting a negative variable is not equal to division of negative variable
       So the variable is made positive before right shift(or left shift in this case),
       then the sign is applied back */

    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (result_s32 < 0)
        {
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            /* Right shift on negative result. */
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
        result_s32 = (sint32)tmp_u32;
    }

    if (result_s32 > MFX_MAXSINT16) /* Overflow */
    {
        result_s32 = MFX_MAXSINT16;
    }
    if (result_s32 < MFX_MINSINT16) /* Underflow */
    {
        result_s32 = MFX_MINSINT16;
    }

    return ((sint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s16s16_u16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint16   x                  Operand 1, signed   16-bit variable
 * \param   sint16   y                  Operand 2, signed   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  uint16   result_s32         Result,   unsigned   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_SubP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;
        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;
        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    if (result_s32 < 0) /* Underflow */
    {
        result_s32 = (sint32) MFX_MINUINT16;
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) MFX_MAXUINT16) /* Overflow */
        {
            result_s32 = (sint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s16u16_s16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint16   x                  Operand 1, signed   16-bit variable
 * \param   uint16   y                  Operand 2, unsigned   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  sint16   result_s32         Result,   signed   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_SubP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = (sint32)b - (sint32)a;
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;
        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = (sint32)a - (sint32)b;
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;
        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* Right shifting a negative variable is not equal to division of negative variable */
    /* So the variable is made positive before right shift(or left shift in this case),
     then the sign is applied back */
    if (result_s32 < 0)
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = (((uint32) (-result_s32)) << (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        /* The result may exceed MFX_MINSINT32
         Example: when x = -32768, y = 65535, a = 0, b = 0, c = 15
         the result will be -3221192704 */
        if ((result_s32 < MFX_MINSINT16) || (result_s32 > 0)) /* Underflow */
        {
            result_s32 = MFX_MINSINT16;
        }
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        if (result_s32 > MFX_MAXSINT16) /* Overflow */
        {
            result_s32 = MFX_MAXSINT16;
        }
    }

    return ((sint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s16u16_u16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint16   x                  Operand 1, signed   16-bit variable
 * \param   uint16   y                  Operand 2, unsigned   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  uint16   result_s32         Result,   unsigned   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_SubP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;
        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;
        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    if (result_s32 < 0) /* Underflow */
    {
        result_s32 = (sint32) MFX_MINUINT16;
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) MFX_MAXUINT16) /* Overflow */
        {
            result_s32 = (sint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s32s32_s32
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint32   x                  Operand 1, signed   32-bit variable
 * \param   sint32   y                  Operand 2, signed   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  sint32   result_s64.s64s.l  Result,    signed   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_SubP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = FALSE;
        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;
        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]
       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the inputs and the radix of the result */
    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* Multiply (for normalizing the radices of the inputs) and add (with -y) to make use of "madd" instruction
     (which is optimistic than left shifting and subtracting)
     Below statement can achieve max value of
     S32max        S32min scalemax
     (2^31 - 1) - ((-2^31)2^31) = 2^62 + 2^31 - 1  and min value of
     S32min  scalemax  S32max
     ((-2^31)2^31) - (2^31 - 1) = -(2^62 + 2^31 - 1)  which are in proper range */
    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32 )) + (var_s64.s64);

    /* Right shifting a negative variable is not equal to division
       So the variable is made positive before right shifting(or left shifting ),
       then applied the sign back */
    if (result_s64.s64s.h < 0)
    {
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = TRUE;
    }

    if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
    {
        shift2_s32 = -shift2_s32;
        /* Get the bits that will be lost as a result of right shift from high 32-bits */
        tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
        var_s64.s64s.h = (sint32)tmp_u32;
        var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
        tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

        /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
         (result_s64.s64s.h > 0) then there is an overflow and no further calculation has to be done.*/
        if (result_s64.s64s.h == 0)
        {
            /* Get the bits that will be lost as a result of left shift from low32bits */
            tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l;
        }
    }

    /* Saturation check */
    if ((result_s64.s64s.h > 0) || (result_s64.s64s.l > (uint32) MFX_MAXSINT32))
    {
        if (isResultNegative_b == TRUE) /* Underflow */
        {
            result_s64.s64s.l = (uint32) MFX_MINSINT32_U;
        }
        else /* Overflow */
        {
            result_s64.s64s.l = (uint32) MFX_MAXSINT32;
        }
    }
    if (isResultNegative_b == TRUE)
    {
        result_s64.s64 = -(result_s64.s64);
    }

    return ((sint32) result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s32s32_u32
 *
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint32   x                  Operand 1, signed   32-bit variable
 * \param   sint32   y                  Operand 2, signed   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  uint32   result_s64.s64s.l  Result,    unsigned   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_SubP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
        a < b: 2^(c-b) * [(x * 2^(b-a)) - y]

        shift1_s32 holds the difference in the radix of inputs
        shift2_s32 holds the difference between the greatest radix
        of the input and the radix of the result */
    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }
    /* Multiplied and added (with -y) to make use of "madd" instruction
     and is optimized than left shift and subtraction .
     Below statement can achieve max value of
     S32max        S32min scalemax
     (2^31 - 1) - ((-2^31)2^31) = 2^62 + 2^31 - 1  and min value of
     S32min  scalemax  S32max
     ((-2^31)2^31) - (2^31 - 1) = -(2^62 + 2^31 - 1)  which are in proper range */
    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    if (result_s64.s64s.h < 0) /* Underflow check */
    {
        result_s64.s64s.l = (uint32) MFX_MINUINT32;
    }
    else
    {

        if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
        {
            shift2_s32 = -shift2_s32;
            /* Get the bits that will be lost as a result of right shift from high32bits */
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var_s64.s64s.h = (sint32)tmp_u32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

            /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
             (result_s64.s64s.h > 0) there is an overflow and no further calculation has to be done.*/
            if (result_s64.s64s.h == 0)
            {
                /* Get the bits that will be lost as a result of left shift from low32bits */
                tmp_u32 =  (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if (result_s64.s64s.h > 0) /* 32 bit overflow check */
        {
            result_s64.s64s.l = (uint32) MFX_MAXUINT32;
        }
    }

    return (result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s32u32_s32
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint32   x                  Operand 1, signed   32-bit variable
 * \param   uint32   y                  Operand 2, unsigned   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  sint32   result_s64.s64s.l  Result,    signed   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_SubP2_s32u32_s32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = FALSE;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]

       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the input and the radix of the result */
    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* Multiplied and added (with -y) to make use of "madd" instruction
     and is optimized than left shift and subtraction */
    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    /* Right shifting a negative variable is not equal to division
       So the variable is made positive before right shifting(or left shifting in this case),
       then applied the sign back */
    if (result_s64.s64s.h < 0)
    {
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = TRUE;
    }

    if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
    {
        shift2_s32 = -shift2_s32;
        /* Get the bits that will be lost as a result of right shift from high32bits */
        tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
        var_s64.s64s.h = (sint32)tmp_u32;
        var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
        tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

        /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
         (result_s64.s64s.h > 0) there is an overflow/underflow and no further calculation has to be done.*/
        if (result_s64.s64s.h == 0)
        {
            /* Get the bits that will be lost as a result of left shift from low32bits */
            tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l;
        }
    }

    if ((result_s64.s64s.h != 0) || (result_s64.s64s.l > (uint32) MFX_MAXSINT32)) /* Overflow & underflow check */
    {
        if (isResultNegative_b == TRUE) /* Underflow check */
        {
            result_s64.s64s.l = (uint32) MFX_MINSINT32_U;
        }
        else
        {
            result_s64.s64s.l = (uint32) MFX_MAXSINT32;
        }
    }

    if (isResultNegative_b == TRUE) /* Sign check */
    {
        result_s64.s64 = -(result_s64.s64);
    }

    return ((sint32) result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_s32u32_u32
 *
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint32   x                  Operand 1, signed   32-bit variable
 * \param   uint32   y                  Operand 2, unsigned   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  uint32   result_s64.s64s.l  Result,    unsigned   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_S32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_SubP2_s32u32_u32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]
       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the input and the radix of the result */
    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* Multiplied and added (with -y) to make use of "madd" instruction
     and is optimized than left shift and subtraction */
    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    if (result_s64.s64s.h < 0) /* Underflow check */
    {
        result_s64.s64s.l = (uint32) MFX_MINUINT32;
    }
    else
    {
        if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
        {
            shift2_s32 = -shift2_s32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            /* Get the bits that will be lost as a result of right shift from high32bits */
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

            /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
             (result_s64.s64s.h > 0) there is an overflow and no further calculation has to be done.*/
            if (result_s64.s64s.h == 0)
            {
                /* Get the bits that will be lost as a result of left shift from low32bits */
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if (result_s64.s64s.h > 0) /* 32 bit overflow check */
        {
            result_s64.s64s.l = (uint32) MFX_MAXUINT32;
        }
    }

    return (result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u16s16_s16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint16   x                  Operand 1, unsigned   16-bit variable
 * \param   sint16   y                  Operand 2, signed   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  sint16   result_s32         Result,   signed   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_SubP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* The value of (x.2^(b-a) - y) can exceed sint32 range but still within uint32 range when
     y is negative
     Example:
     x = 65535, y = -32768, a = 0, b = 15,c = 0
    (x.2^(b-a) - y) = 2147483648 */
    if ((result_s32 < 0) && (y > 0))
    {
        /* Right shifting a negative variable is not equal to division of negative variable
           So the variable is made positive before right shift(or left shift in this case),
           then the sign is applied back */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = (((uint32) (-result_s32)) << (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }

        if (result_s32 < (sint32) MFX_MINSINT16) /* Underflow */
        {
            result_s32 = (sint32) MFX_MINSINT16;
        }
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        /* The result can overflow sint32 range but still within uint32 range
         Example:
         x = 65535, y = -32768, a = 0, b = 0, c = 31
         result_s32 = (65535 - (-32768)) * 2^(31) = 3221192704 */
        if ((uint32) result_s32 > (uint32) MFX_MAXSINT16) /* Overflow */
        {
            result_s32 = (sint32) MFX_MAXSINT16;
        }
    }

    return ((sint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u16s16_u16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint16   x                  Operand 1, unsigned   16-bit variable
 * \param   sint16   y                  Operand 2, signed   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  uint16   result_s32         Result,   unsigned   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_SubP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = (sint32)b - (sint32)a;
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* The value of (x.2^(b-a) - y) can exceed sint32 range but still within uint32 range when
     y is negative
     Example:
     x = 65535, y = -32768, a = 0, b = 15,c = 0
     (x.2^(b-a) - y) = 2147483648 */
    if ((result_s32 < 0) && (y > 0)) /* Underflow check */
    {
        result_s32 = (sint32) MFX_MINUINT16;
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        /* The result can overflow sint32 range but still within uint32 range
         Example:
         x = 65535, y = -32768, a = 0, b = 0, c = 15
         result_s32 = (65535 - (-32768)) * 2^(15) = 3221192704 */
        if ((uint32) result_s32 > (uint32) MFX_MAXUINT16) /* Overflow */
        {
            result_s32 = (sint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u16u16_s16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint16   x                  Operand 1, unsigned   16-bit variable
 * \param   uint16   y                  Operand 2, unsigned   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  sint16   result_s32         Result,   signed   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_SubP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* Right shifting a negative variable is not equal to division of negative variable
       So the variable is made positive before right shift(or left shift in this case),
     then the sign is applied back */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (result_s32 < 0)
        {
            /* Right shift on negative result. */
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
        result_s32 = (sint32)tmp_u32;
    }

    if (result_s32 > MFX_MAXSINT16) /* Overflow */
    {
        result_s32 = MFX_MAXSINT16;
    }
    if (result_s32 < MFX_MINSINT16) /* Underflow */
    {
        result_s32 = MFX_MINSINT16;
    }

    return ((sint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u16u16_u16
 *
 * The routine subtracts (fixed point subtraction) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint16   x                  Operand 1, unsigned   16-bit variable
 * \param   uint16   y                  Operand 2, unsigned   16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  uint16   result_s32         Result,   unsigned   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_SubP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;
    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
     a < b: 2^(c-b) * [(x * 2^(b-a)) - y] */

    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of
         input y(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);
        /* In Fixed-point subtraction, the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of
         input x(which is of higher radix) and subtracted */
        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    if (result_s32 < 0) /* Underflow */
    {
        result_s32 = (sint32) MFX_MINUINT16;
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) MFX_MAXUINT16) /* Overflow */
        {
            result_s32 = (sint32) MFX_MAXUINT16;
        }
    }

    return ((uint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u32s32_s32
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x                  Operand 1, unsigned   32-bit variable
 * \param   sint32   y                  Operand 2, signed   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  sint32   result_s64.s64s.l  Result,    signed   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_SubP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = FALSE;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]
       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the input and the radix of the result */
    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* When x = 2^32 - 1, y = -2^31, a = 0, b = 31
     (x.2^(b-a) - y) = 2^63 which exceeds sint64 range. The result will overflow sint32 range
     even when there is a right shift of 31. */
    if ((x == MFX_MAXUINT32) && (y == MFX_MINSINT32) && (shift1_s32 == 31) && (a < b))
    {
        result_s64.s64s.l = (uint32) MFX_MAXSINT32;
    }
    else
    {
        /* Multiplied and added (with -y) to make use of "madd" instruction
         and is optimized than left shift and subtraction .
         Below statement can achieve max value of
         U32max   scalemax     S32min
         (2^32 - 2)2^31     -  (-2^31) = (2^32 - 1)2^31  and min value of
         U32min    U32max      scalemax
         0    -  ( (2^32 - 1) * (2^31) ) = -(2^32 - 1)2^31  which are in proper range */
        tmp_u32 = ( 1uL << (uint32)shift1_s32);
        result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

        /* Right shifting a negative variable is not equal to division
          So the variable is made positive before right shifting(or left shifting in this case),
          then applied the sign back */
        if (result_s64.s64s.h < 0)
        {
            result_s64.s64 = -(result_s64.s64);
            isResultNegative_b = TRUE;
        }
        if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
        {
            shift2_s32 = -shift2_s32;
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            /* Get the bits that will be lost as a result of right shift from high32bits */
            var_s64.s64s.h = (sint32)tmp_u32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));
            /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
             (result_s64.s64s.h > 0) there is an overflow/underflow and no further calculation has to be done.*/
            if (result_s64.s64s.h == 0)
            {
                /* Get the bits that will be lost as a result of left shift from low32bits */
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32 ;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if ((result_s64.s64s.h != 0) || (result_s64.s64s.l > (uint32) MFX_MAXSINT32)) /* Overflow & underflow check */
        {
            if (isResultNegative_b == TRUE) /* Underflow check */
            {
                result_s64.s64s.l = (uint32) MFX_MINSINT32_U;
            }
            else
            {
                result_s64.s64s.l = (uint32) MFX_MAXSINT32;
            }
        }
        if (isResultNegative_b == TRUE)
        {
            result_s64.s64 = -(result_s64.s64);
        }
    }

    return ((sint32) result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u32s32_u32
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x                  Operand 1, unsigned   32-bit variable
 * \param   sint32   y                  Operand 2, signed   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  uint32   result_s64.s64s.l  Result,   unsigned   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_SubP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;

        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]
       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the input and the radix of the result */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* When x = 2^32 - 1, y = -2^31, a = 0, b = 31
      (x.2^(b-a) - y) = 2^63 which exceeds sint64 range. The result will overflow uint32 range
       even when there is a right shift of 31. */
    if ((x == MFX_MAXUINT32) && (y == MFX_MINSINT32) && (shift1_s32 == 31) && (a < b))
    {
        result_s64.s64s.l = (uint32) MFX_MAXUINT32;
    }
    else
    {
        /* Multiplied and added (with -y) to make use of "madd" instruction
         and is optimized than left shift and subtraction .
         Below statement can achieve max value of
         U32max   scalemax     S32min
         (2^32 - 2)2^31     -  (-2^31) = (2^32 - 1)2^31  and min value of
         U32min    U32max      scalemax
         0    -  ( (2^32 - 1) * (2^31) ) = -(2^32 - 1)2^31  which are in proper range */
        tmp_u32 = ( 1uL << (uint32)shift1_s32);
        result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

        if (result_s64.s64s.h < 0) /* Underflow check */
        {
            result_s64.s64s.l = (uint32) MFX_MINUINT32;
        }
        else
        {

            if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
            {
                /* Get the bits that will be lost as a result of right shift from high32bits */
                shift2_s32 = -shift2_s32;
                tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
                var_s64.s64s.h = (sint32)tmp_u32;
                var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
                result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
                tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
            }
            else
            {
                var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

                /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
                 (result_s64.s64s.h > 0) there is an overflow and no further calculation has to be done.*/
                if (result_s64.s64s.h == 0)
                {

                    /* Get the bits that will be lost as a result of left shift from low32bits */
                    tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                    result_s64.s64s.h = (sint32)tmp_u32;
                    result_s64.s64s.l = var_s64.s64s.l;

                }
            }

            if (result_s64.s64s.h != 0) /* 32 bit overflow check */
            {
                result_s64.s64s.l = (uint32) MFX_MAXUINT32;
            }
        }
    }

    return (result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u32u32_s32
 *
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x                  Operand 1, unsigned   32-bit variable
 * \param   uint32   y                  Operand 2, unsigned   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  sint32   result_s64.s64s.l  Result,    signed   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_SubP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = FALSE;
        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;
        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]

       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the input and the radix of the result */
    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* Multiplied and added (with -y) to make use of "madd" instruction
     and is optimized than left shift and subtraction .
     Below statement can achieve max value of
     U32max   scalemax     U32min
     (2^32 - 1)2^31     -  (0) = (2^32 - 1)2^31  and min value of
     U32min    U32max      scalemax
     0    -  ( (2^32 - 1) * (2^31) ) = -(2^32 - 1)2^31  which are in proper range */
    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    /* Right shifting a negative variable is not equal to division
     So the variable is made positive before right shifting(or left shifting in this case),
     then applied the sign back */
    if (result_s64.s64s.h < 0)
    {
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = TRUE;
    }

    if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
    {
        shift2_s32 = -shift2_s32;
        /* Get the bits that will be lost as a result of right shift from high32bits */
        tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
        var_s64.s64s.h = (sint32)tmp_u32;
        var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
        tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

        /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
         (result_s64.s64s.h != 0) there is an overflow or underflow and no further calculation has to be done.*/
        if (result_s64.s64s.h == 0)
        {
            /* Get the bits that will be lost as a result of left shift from low32bits */
            tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l;
        }
    }

    if ((result_s64.s64s.h > 0) || (result_s64.s64s.l > (uint32) MFX_MAXSINT32)) /* Overflow & underflow check */
    {
        if (isResultNegative_b == TRUE) /* Underflow check */
        {
            result_s64.s64s.l = (uint32) MFX_MINSINT32_U;
        }
        else
        {
            result_s64.s64s.l = (uint32) MFX_MAXSINT32;
        }
    }
    if (isResultNegative_b == TRUE) /* Sign check */
    {
        result_s64.s64 = -(result_s64.s64);
    }

    return ((sint32) result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_SubP2_u32u32_u32
 *
 * The routine subtracts (fixed point subtraction) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x                  Operand 1, unsigned   32-bit variable
 * \param   uint32   y                  Operand 2, unsigned   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  uint32   result_s64.s64s.l  Result,    unsigned   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine subtracts two 16-bit integers with scaling factors set by input parame-ters.
 * \retval The function returns the integer value of the fixed point difference (C), determined
 *  according to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_SUBP2_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_SubP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u var_s64;
        /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
		Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x - (y * 2^(a-b))],
       a < b: 2^(c-b) * [(x * 2^(b-a)) - y]
       shift1_s32 holds the difference in the radix of inputs
       shift2_s32 holds the difference between the greatest radix
       of the input and the radix of the result */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }

    /* Multiplied and added (with -y) to make use of "madd" instruction
     and is optimized than left shift and subtraction .
     Below statement can achieve max value of
     U32max   scalemax     U32min
     (2^32 - 1)2^31     -  (0) = (2^32 - 1)2^31  and min value of
     U32min    U32max      scalemax
     0    -  ( (2^32 - 1) * (2^31) ) = -(2^32 - 1)2^31  which are in proper range */
    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    if (result_s64.s64s.h < 0) /* Underflow check */
    {
        result_s64.s64s.l = (uint32) MFX_MINUINT32;
    }
    else
    {
        if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
        {
            shift2_s32 = -shift2_s32;
            /* Get the bits that will be lost as a result of right shift from high32bits */
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var_s64.s64s.h = (sint32)tmp_u32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

            /* If there is a left shift (shift2_s32 > 0) and the internal result is big enough
            (result_s64.s64s.h > 0) there is an overflow and no further calculation has to be done.*/
            if (result_s64.s64s.h == 0)
            {
                /* Get the bits that will be lost as a result of left shift from low32bits */
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if (result_s64.s64s.h > 0) /* 32 bit overflow check */
        {
            result_s64.s64s.l = (uint32) MFX_MAXUINT32;
        }
    }

    return (result_s64.s64s.l);
}
#endif



/* MFX_SUB_INL_H */
#endif
