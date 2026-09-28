


#ifndef MFX_ADD_INL_H
#define MFX_ADD_INL_H



/*
 **********************************************************************************************************************
 *
 * List of services
 *
 * Mfx_Prv_Add_s16s16_s16_Inl
 * Mfx_Prv_Add_s16s16_s8_Inl
 * Mfx_Prv_Add_s16s16_u16_Inl
 * Mfx_Prv_Add_s16s16_u8_Inl
 * Mfx_Prv_Add_s32s32_s16_Inl
 * Mfx_Prv_Add_s32s32_s32_Inl
 * Mfx_Prv_Add_s32s32_s8_Inl
 * Mfx_Prv_Add_s32s32_u16_Inl
 * Mfx_Prv_Add_s32s32_u32_Inl
 * Mfx_Prv_Add_s32s32_u8_Inl
 * Mfx_Prv_Add_s8s8_s8_Inl
 * Mfx_Prv_Add_s8s8_u8_Inl
 * Mfx_Prv_Add_u16s16_s16_Inl
 * Mfx_Prv_Add_u16s16_s8_Inl
 * Mfx_Prv_Add_u16s16_u16_Inl
 * Mfx_Prv_Add_u16s16_u8_Inl
 * Mfx_Prv_Add_u16u16_s16_Inl
 * Mfx_Prv_Add_u16u16_s8_Inl
 * Mfx_Prv_Add_u16u16_u16_Inl
 * Mfx_Prv_Add_u16u16_u8_Inl
 * Mfx_Prv_Add_u32s32_s16_Inl
 * Mfx_Prv_Add_u32s32_s32_Inl
 * Mfx_Prv_Add_u32s32_s8_Inl
 * Mfx_Prv_Add_u32s32_u16_Inl
 * Mfx_Prv_Add_u32s32_u32_Inl
 * Mfx_Prv_Add_u32s32_u8_Inl
 * Mfx_Prv_Add_u32u32_s16_Inl
 * Mfx_Prv_Add_u32u32_s32_Inl
 * Mfx_Prv_Add_u32u32_s8_Inl
 * Mfx_Prv_Add_u32u32_u16_Inl
 * Mfx_Prv_Add_u32u32_u32_Inl
 * Mfx_Prv_Add_u32u32_u8_Inl
 * Mfx_Prv_Add_u8s8_s8_Inl
 * Mfx_Prv_Add_u8s8_u8_Inl
 * Mfx_Prv_Add_u8u8_s8_Inl
 * Mfx_Prv_Add_u8u8_u8_Inl
 * Mfx_Prv_AddP2_s16s16_s16_Inl
 * Mfx_Prv_AddP2_s16s16_u16_Inl
 * Mfx_Prv_AddP2_s32s32_s32_Inl
 * Mfx_Prv_AddP2_s32s32_u32_Inl
 * Mfx_Prv_AddP2_u16s16_s16_Inl
 * Mfx_Prv_AddP2_u16s16_u16_Inl
 * Mfx_Prv_AddP2_u16u16_s16_Inl
 * Mfx_Prv_AddP2_u16u16_u16_Inl
 * Mfx_Prv_AddP2_u32s32_s32_Inl
 * Mfx_Prv_AddP2_u32s32_u32_Inl
 * Mfx_Prv_AddP2_u32u32_s32_Inl
 * Mfx_Prv_AddP2_u32u32_u32_Inl
 *
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */

LOCAL_INLINE sint16 Mfx_Prv_Add_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Add_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Add_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Add_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Add_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Add_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Add_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Add_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Add_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Add_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Add_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Add_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Add_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Add_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Add_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Add_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Add_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Add_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Add_u8u8_s8_Inl(uint8  x_value, uint8  y_value);
LOCAL_INLINE uint8 Mfx_Prv_Add_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_AddP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AddP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_AddP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_AddP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE sint16 Mfx_Prv_AddP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AddP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_AddP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AddP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_AddP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_AddP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE sint32 Mfx_Prv_AddP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
LOCAL_INLINE uint32 Mfx_Prv_AddP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);

/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Mfx_Add_s16s16_s16
 *
 * sint16 sint16 addition with sint16 saturation.
 *
 * Add a signed 16-bit variable to a signed 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value + y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Add_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s16s16_s8
 *
 * sint16 sint16 addition with sint8 saturation.
 *
 * Add a signed 16-bit variable to a signed 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8   (x_value + y_value)           Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s16s16_u16
 *
 * sint16 sint16 addition with uint16 saturation.
 *
 * Add a signed 16-bit variable to a signed 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value + y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Add_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s16s16_u8
 *
 * sint16 sint16 addition with uint8 saturation.
 *
 * Add a signed 16-bit variable to a signed 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint16   x_value                      Operand 1, signed   16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8   (x_value + y_value)           Result,    unsigned 8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s32s32_s16
 *
 * sint32 sint32 addition with sint16 saturation.
 *
 * Add a signed 32-bit variable to a signed 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value + y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Add_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;

    /* Both operands positive */
    if( (x_value > 0L) && (y_value > 0L) )
    {
        /* Overflow */
        if( y_value > (MFX_MAXSINT32 - x_value) )
        {
            res_s32 = (sint32) MFX_MAXSINT16;
        }
    }
    /* Both operands negative */
    if( (x_value < 0L) && (y_value < 0L) )
    {
        /* Underflow */
        if( y_value < (MFX_MINSINT32 - x_value) )
        {
            res_s32 = (sint32) MFX_MINSINT16;
        }
    }

    if (res_s32 > (sint32) MFX_MAXSINT16)
    {
        res_s32 = (sint32) MFX_MAXSINT16;
    }

    if (res_s32 < (sint32) MFX_MINSINT16)
    {
        res_s32 = (sint32) MFX_MINSINT16;
    }

    return (sint16) (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s32s32_s32
 *
 * sint32 sint32 addition with sint32 saturation.
 *
 * Add two signed 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed 32-bit variable
 * \return  sint32   (x_value + y_value)          Result,    signed 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Add_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;

    /* Both operands positive */
    if( (x_value > 0L) && (y_value > 0L) )
    {
        /* Overflow */
        if( y_value > (MFX_MAXSINT32 - x_value) )
        {
            res_s32 = MFX_MAXSINT32;
        }
    }
    /* Both operands negative */
    if( (x_value < 0L) && (y_value < 0L) )
    {
        /* Underflow */
        if( y_value < (MFX_MINSINT32 - x_value) )
        {
            res_s32 = MFX_MINSINT32;
        }
    }

    return (res_s32);
}
#endif

/*
 **********************************************************************************************************************
 * Mfx_Add_s32s32_s8
 *
 * sint32 sint32 addition with uint8 saturation.
 *
 * Add a signed 32-bit variable to a signed 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    (x_value + y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;

    /* Both operands positive */
    if( (x_value > 0L) && (y_value > 0L) )
    {
        /* Overflow */
        if( y_value > (MFX_MAXSINT32 - x_value) )
        {
            res_s32 = (sint32) MFX_MAXSINT8;
        }
    }
    /* Both operands negative */
    if( (x_value < 0L) && (y_value < 0L) )
    {
        /* Underflow */
        if( y_value < (MFX_MINSINT32 - x_value) )
        {
            res_s32 = (sint32) MFX_MINSINT8;
        }
    }

    if (res_s32 > (sint32) MFX_MAXSINT8)
    {
        res_s32 = (sint32) MFX_MAXSINT8;
    }

    if (res_s32 < (sint32) MFX_MINSINT8)
    {
        res_s32 = (sint32) MFX_MINSINT8;
    }

    return (sint8) (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s32s32_u16
 *
 * sint32 sint32 addition with uint16 saturation.
 *
 * Add a signed 32-bit variable to a signed 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value + y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Add_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;

    /* Both operands positive */
    if( (x_value > 0L) && (y_value > 0L) )
    {
        /* Overflow */
        if( y_value > (MFX_MAXSINT32 - x_value) )
        {
            res_s32 = (sint32) MFX_MAXUINT16;
        }
    }
    /* Both operands negative/ result is below the min value */
    if( ((x_value < 0L) && (y_value < 0L)) || ((res_s32 < (sint32) MFX_MINUINT16)))
    {
            res_s32 = (sint32) MFX_MINUINT16;
    }
    /* Limitation */
    if (res_s32 > (sint32) MFX_MAXUINT16)
    {
        res_s32 = (sint32) MFX_MAXUINT16;
    }

    return (uint16) (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s32s32_u32
 *
 * sint32 sint32 addition with uint32 saturation.
 *
 * Add a signed 32-bit variable to a signed 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   (x_value + y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Add_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 res_s32;

    /* Both operands negative */
    if( (x_value < 0L) && (y_value < 0L) )
    {
        res_u32 = MFX_MINUINT32;
    }
    /* Both operands positive */
    else if(  (x_value >= 0L) && (y_value >= 0L) )
    {
        res_u32 = ( ((uint32) x_value) + ((uint32) y_value) );
    }
    /* One operand negative */
    else
    {
        res_s32 = x_value + y_value;

        /* Limitation */
        res_u32 = ( res_s32 < ((sint32) MFX_MINUINT32) ) ? (MFX_MINUINT32) : ((uint32) res_s32);
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s32s32_u8
 *
 * sint32 sint32 addition with uint8 saturation.
 *
 * Add a signed 32-bit variable to a signed 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint32   x_value                      Operand 1, signed   32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    (x_value + y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;

    /* Both operands positive */
    if( (x_value > 0L) && (y_value > 0L) )
    {
        /* Overflow */
        if( y_value > (MFX_MAXSINT32 - x_value) )
        {
            res_s32 = (sint32) MFX_MAXUINT8;
        }
    }
    /* Both operands negative/ result is below the min value */
    if( ((x_value < 0L) && (y_value < 0L)) || ((res_s32 < (sint32) MFX_MINUINT8)))
    {
            res_s32 = (sint32) MFX_MINUINT8;
    }
    /* Limitation */
    if (res_s32 > (sint32) MFX_MAXUINT8)
    {
        res_s32 = (sint32) MFX_MAXUINT8;
    }

    return (uint8) (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s8s8_s8
 *
 * sint8 sint8 addition with sint8 saturation.
 *
 * Add a signed 8-bit variable to a signed 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   sint8   x_value                       Operand 1, signed   8-bit variable
 * \param   sint8   y_value                       Operand 2, signed   8-bit variable
 * \return  sint8   (x_value + y_value)           Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Add_s16s16_s8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_s8s8_u8
 *
 * sint8 sint8 addition with sint8 saturation.
 *
 * Add a signed 8-bit variable to a signed 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   sint8   x_value                       Operand 1, signed   8-bit variable
 * \param   sint8   y_value                       Operand 2, signed   8-bit variable
 * \return  uint8   (x_value + y_value)           Result,    unsigned   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_S8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Add_s16s16_u8((sint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16s16_s16
 *
 * uint16 sint16 addition with sint16 saturation.
 *
 * Add a unsigned 16-bit variable to a signed 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint16   (x_value + y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Add_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16s16_s8
 *
 * uint16 uint16 addition with sint8 saturation.
 *
 * Add a unsigned 16-bit variable to a signed 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8    (x_value + y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16s16_u16
 *
 * uint16 sint16 addition with uint16 saturation.
 *
 * Add a unsigned 16-bit variable to a signed 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint16   (x_value + y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Add_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16s16_u8
 *
 * uint16 sint16 addition with uint8 saturation.
 *
 * Add a unsigned 16-bit variable to a signed 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  uint8    (x_value + y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16S16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value + (sint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16u16_s16
 *
 * uint16 uint16 addition with sint16 saturation.
 *
 * Add a unsigned 16-bit variable to a unsigned 16-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  sint16    (x_value + y_value)         Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Add_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s16_Inl((uint32)x_value + (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16s16_s8
 *
 * uint16 uint16 addition with sint8 saturation.
 *
 * Add a unsigned 16-bit variable to a signed 16-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   sint16   y_value                      Operand 2, signed   16-bit variable
 * \return  sint8    (x_value + y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */

#ifndef MFX_PRV_ADD_U16U16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s8_Inl((uint32)x_value + (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16u16_u16
 *
 * uint16 uint16 addition with uint16 saturation.
 *
 * Add a unsigned 16-bit variable to a unsigned 16-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint16   (x_value + y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Add_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u16_Inl((uint32)x_value + (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u16u16_u8
 *
 * uint16 uint16 addition with uint8 saturation.
 *
 * Add a unsigned 16-bit variable to a unsigned 16-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint16   x_value                      Operand 1, unsigned 16-bit variable
 * \param   uint16   y_value                      Operand 2, unsigned 16-bit variable
 * \return  uint8    (x_value + y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U16U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u8_Inl((uint32)x_value + (uint32)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32s32_s16
 *
 * uint32 sint32 addition with sint16 saturation.
 *
 * Add a unsigned 32-bit variable to a signed 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint16   (x_value + y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Add_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    res_s32 = ( ((sint32) x_value) + y_value);

    /* Operand 2 positive */
    if(y_value >= 0)
    {
        /* Overflow */
        if( x_value > ((MFX_MAXSINT32_U - (uint32)y_value)) )
        {
            res_s32 = (sint32) MFX_MAXSINT16;
        }
    }
    /* Operand 2 negative */
    else
    {
        if(x_value > MFX_MAXSINT32_U)
        {
            y_value = -y_value;
            /* Overflow */
            if((x_value - (MFX_MAXSINT32_U)) > ((uint32) (y_value)))
            {
                res_s32 = (sint32) MFX_MAXSINT16;
            }
            /* Regular */
            else
            {
                tmp_u32 = (x_value-(uint32)(y_value));
                res_s32 = ((sint32)tmp_u32);
            }
        }
    }

    /* Limitation */
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
 * Mfx_Add_u32s32_s32
 *
 * uint32 sint32 addition with sint32 saturation.
 *
 * Add a unsigned 32-bit variable to a signed 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint32   (x_value + y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Add_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    res_s32 = ( ((sint32) x_value) + y_value);

    /* Operand 2 positive */
    if(y_value>=0)
    {
        /* Overflow */
        if( x_value > ( (MFX_MAXSINT32_U - (uint32)y_value)) )
        {
            res_s32 = MFX_MAXSINT32;
        }
    }
    /* Operand 2 negative */
    else
    {
        /* Checking range */
        if(x_value > MFX_MAXSINT32_U)
        {
            /* Normal case */
            if(y_value > MFX_MINSINT32)
            {

                /* Overflow */
                if( (x_value - ((uint32)MFX_MAXSINT32)) > ((uint32) (-y_value)) )
                {
                    res_s32 = MFX_MAXSINT32;
                }

                /* Regular */
                else
                {
                    tmp_u32 = (x_value-(uint32)(-y_value));
                    res_s32 = ( (sint32) tmp_u32 );
                }
            }

            /* Special case */
            else
            {
                tmp_u32 = (x_value - ((MFX_MAXSINT32_U) + 1UL));
                res_s32 = ((sint32)tmp_u32);
            }

        }
    }

    return (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32s32_s8
 *
 * uint32 sint32 addition with sint8 saturation.
 *
 * Add a unsigned 32-bit variable to a signed 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  sint8    (x_value + y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    res_s32 = ( ((sint32) x_value) + y_value);

    /* Operand 2 positive */
    if(y_value >= 0)
    {
        /* Overflow */
        if( x_value > ((MFX_MAXSINT32_U - (uint32)y_value)) )
        {
            res_s32 = (sint32) MFX_MAXSINT8;
        }
    }
    /* Operand 2 negative */
    else
    {
        if(x_value >  MFX_MAXSINT32_U)
        {
            /* Overflow */
            if( (x_value - ((uint32) MFX_MAXSINT32)) > ((uint32) (-y_value)) )
            {
                res_s32 = (sint32) MFX_MAXSINT8;
            }
            /* Regular */
            else
            {
                tmp_u32 = (x_value-(uint32)(-y_value));
                res_s32 = ( (sint32)tmp_u32);
            }
        }
    }

    if(res_s32 > (sint32) MFX_MAXSINT8)
    {
        res_s32 = (sint32) MFX_MAXSINT8;
    }

    if(res_s32 < (sint32) MFX_MINSINT8)
    {
        res_s32 = (sint32) MFX_MINSINT8;
    }

    return (sint8) (res_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32s32_u16
 *
 * uint32 sint32 addition with uint16 saturation.
 *
 * Add a unsigned 32-bit variable to a signed 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint16   (x_value + y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Add_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    res_u32 = x_value + (uint32) y_value;

    if (y_value >= 0L)
    {

        /* If the result of addition is less than y (there was an overflow), then MFX_MAXUINT16 is returned. */
        if (res_u32 < x_value)
        {
            res_u32 = (uint32) MFX_MAXUINT16;
        }

    }

    /* Y is negative */
    else
    {

        /* If x is smaller than y, the result of addition is negative, hence MFX_MAXUINT16 is returned. */
        if (x_value <= ((uint32) (-y_value)))
        {
            res_u32 = (uint32) MFX_MINUINT16;
        }

    }

    /* Saturation to MFX_MAXUINT16 if result of addition is too big. */
    if (res_u32 > (uint32) MFX_MAXUINT16)
    {
        res_u32 = (uint32) MFX_MAXUINT16;
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32s32_u32
 *
 * uint32 sint32 addition with uint32 saturation.
 *
 * Add a unsigned 32-bit variable to a signed 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint32   (x_value + y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Add_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + (uint32) y_value;

    if (y_value >= 0L)
    {

        /* If the result of addition is less than x (there was an overflow), then MFX_MAXUINT32 is returned. */
        if (res_u32 < x_value)
        {
            res_u32 = (uint32) MFX_MAXUINT32;
        }

    }

    /* Y is negative */
    else
    {

        /* If x is smaller than y, the result of addition is negative, hence MFX_MINUINT32 is returned. */
        if (x_value <= ((uint32) (-y_value)))
        {
            res_u32 = MFX_MINUINT32;
        }

    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32s32_u8
 *
 * uint32 sint32 addition with uint8 saturation.
 *
 * Add a unsigned 32-bit variable to a signed 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   sint32   y_value                      Operand 2, signed   32-bit variable
 * \return  uint8    (x_value + y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + (uint32) y_value;

    if (y_value >= 0L)
    {

        /* If the result of addition is either less than y (there was an overflow) or
         the value range of  MFX_MAXUINT8 is exceeded, then MFX_MAXUINT8 is returned. */
        if (res_u32 < x_value)
        {
            res_u32 = (uint32) MFX_MAXUINT8;
        }

    }

    /* Y is negative */
    else
    {

        /* If x is smaller than y, the result of addition is negative, hence MFX_MINUINT8 is returned. */
        if (x_value <= ((uint32) (-y_value)))
        {
            res_u32 = (uint32) MFX_MINUINT8;
        }

    }

    /* Saturation to MFX_MAXUINT8 if result of addition is too big. */
    if (res_u32 > (uint32) MFX_MAXUINT8)
    {
        res_u32 = (uint32) MFX_MAXUINT8;
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32u32_s16
 *
 * uint32 uint32 addition with sint16 saturation.
 *
 * Add a unsigned 32-bit variable to a unsigned 32-bit variable and return the result as signed 16-bit.
 * The result is limited to MFX_MAXSINT16 (MFX_MINSINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint16   (x_value + y_value)          Result,    signed   16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Add_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;

    /* Handling overflow, i.e. if result of addition is less than any of its operands, there was an overflow
     or the value range of MFX_MAXSINT16 is exceeded, then MFX_MAXSINT16 is returned. */
    if ((res_u32 < x_value) || (res_u32 > ((uint32) MFX_MAXSINT16)))
    {
        res_u32 = (uint32) MFX_MAXSINT16;
    }

    return ((sint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32u32_s32
 *
 * uint32 uint32 addition with sint32 saturation.
 *
 * Add a unsigned 32-bit variable to a unsigned 32-bit variable and return the result as signed 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint32   (x_value + y_value)          Result,    signed   32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Add_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;

    /* Handling overflow, i.e. if result of addition is less than any of its operands, there was an overflow
     or the value range of MFX_MAXSINT32 is exceeded, then MFX_MAXSINT32 is returned. */
    if ((res_u32 < x_value) || (res_u32 > ((uint32) MFX_MAXSINT32)))
    {
        res_u32 = (uint32) MFX_MAXSINT32;
    }

    return ((sint32) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32u32_s8
 *
 * uint32 uint32 addition with sint8 saturation.
 *
 * Add a unsigned 32-bit variable to a unsigned 32-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  sint8    (x_value + y_value)          Result,    signed    8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;
    res_u32 = x_value + y_value;

    /* Handling overflow, i.e. if result of addition is less than any of its operands, there was an overflow
     or the value range of MFX_MAXSINT8 is exceeded, then MFX_MAXSINT8 is returned. */
    if ((res_u32 < x_value) || (res_u32 > ((uint32) MFX_MAXSINT8)))
    {
        res_u32 = (uint32) MFX_MAXSINT8;
    }

    return ((sint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32u32_u16
 *
 * uint32 uint32 addition with uint16 saturation.
 *
 * Add a unsigned 32-bit variable to a unsigned 32-bit variable and return the result as unsigned 16-bit.
 * The result is limited to MFX_MAXUINT16 (MFX_MINUINT16) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint16   (x_value + y_value)          Result,    unsigned 16-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Add_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;
    res_u32 = x_value + y_value;

    /* Handling overflow, i.e. if result of addition is less than any of its operands, there was an overflow
     or the value range of MFX_MAXUINT16 is exceeded, then MFX_MAXUINT16 is returned. */
    if ((res_u32 < x_value) || (res_u32 > ((uint32) MFX_MAXUINT16)))
    {
        res_u32 = (uint32) MFX_MAXUINT16;
    }

    return ((uint16) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32u32_u32
 *
 * uint32 uint32 addition with uint32 saturation.
 *
 * Add a unsigned 32-bit variable to a unsigned 32-bit variable and return the result as unsigned 32-bit.
 * The result is limited to MFX_MAXSINT32 (MFX_MINSINT32) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint32   (x_value + y_value)          Result,    unsigned 32-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Add_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;

    /* Handling overflow, i.e. if result of addition is less than any of its operands
     (there was an overflow), then MAXUINT32 is returned. */
    if (res_u32 < x_value)
    {
        res_u32 = MFX_MAXUINT32;
    }

    return (res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u32u32_u8
 *
 * uint32 uint32 addition with uint8 saturation.
 *
 * Add a unsigned 32-bit variable to a unsigned 32-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint32   x_value                      Operand 1, unsigned 32-bit variable
 * \param   uint32   y_value                      Operand 2, unsigned 32-bit variable
 * \return  uint8    (x_value + y_value)          Result,    unsigned  8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U32U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;

    /* Handling overflow, i.e. if result of addition is less than any of its operands, there was an overflow
     or the value range of MFX_MAXUINT8 is exceeded, then MFX_MAXUINT8 is returned. */
    if ((res_u32 < x_value) || (res_u32 > ((uint32) MFX_MAXUINT8)))
    {
        res_u32 = (uint32) MFX_MAXUINT8;
    }

    return ((uint8) res_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u8s8_s8
 *
 * uint8 sint8 addition with sint8 saturation.
 *
 * Add a unsigned 8-bit variable to a signed 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                       Operand 1, unsigned 8-bit variable
 * \param   sint8   y_value                       Operand 2, signed   8-bit variable
 * \return  sint8   (x_value + y_value)           Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U8S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Add_u16s16_s8((uint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u8s8_u8
 *
 * uint8 sint8 addition with sint8 saturation.
 *
 * Add a unsigned 8-bit variable to a signed 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                       Operand 1, unsigned   8-bit variable
 * \param   sint8   y_value                       Operand 2, signed     8-bit variable
 * \return  uint8   (x_value + y_value)           Result,    unsigned   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U8S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Add_u16s16_u8((uint16)x_value, (sint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u8u8_s8
 *
 * uint8 uint8 addition with sint8 saturation.
 *
 * Add a unsigned 8-bit variable to a unsigned 8-bit variable and return the result as signed 8-bit.
 * The result is limited to MFX_MAXSINT8 (MFX_MINSINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                      Operand 1, unsigned 8-bit variable
 * \param   uint8   y_value                      Operand 2, unsigned 8-bit variable
 * \return  sint8   (x_value + y_value)          Result,    signed   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U8U8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Add_u8u8_s8_Inl(uint8  x_value, uint8  y_value)
{
    return (Mfx_Add_u16u16_s8((uint16)x_value, (uint16)y_value));
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Add_u8u8_u8
 *
 * uint8 uint8 addition with sint8 saturation.
 *
 * Add a unsigned 8-bit variable to a unsigned 8-bit variable and return the result as unsigned 8-bit.
 * The result is limited to MFX_MAXUINT8 (MFX_MINUINT8) prevent overflows(underflows).
 *
 * \param   uint8   x_value                       Operand 1, unsigned   8-bit variable
 * \param   uint8   y_value                       Operand 2, unsigned   8-bit variable
 * \return  uint8   (x_value + y_value)           Result,    unsigned   8-bit
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADD_U8U8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Add_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Add_u16u16_u8((uint16)x_value, (uint16)y_value));
}
#endif


/*
 ***********************************************************************************************
 * Mfx_Prv_AddP2_s16s16_s16_Inl
 *
 * The routine adds (fixed point addition) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint16   x                  Operand 1, signed     16-bit variable
 * \param   sint16   y                  Operand 2, signed     16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  sint16   result_s32         Result,   signed   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_S16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AddP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */
    if (a < b)
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of input y
         (which is of higher radix) and added */
        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of input x
         (which is of higher radix) and added */
        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) x;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* The result is scaled to the radix c. */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        /* Right shift on negative result. */
        if (result_s32 < 0)
        {
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32 ;
        }
    }
    else
    {
        tmp_u32 = ((uint32) result_s32 << ((uint32)(shift_s32)));
        result_s32 = (sint32)tmp_u32;
    }

    /* Saturate result if it overflows sint16 range */
    if (result_s32 > MFX_MAXSINT16)
    {
        result_s32 = MFX_MAXSINT16; /* Overflow */
    }
    if (result_s32 < MFX_MINSINT16)
    {
        result_s32 = MFX_MINSINT16; /* Underflow */
    }

    return ((sint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_s16s16_u16_Inl
 *
 * The routine adds (fixed point addition) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint16   x                  Operand 1, signed     16-bit variable
 * \param   sint16   y                  Operand 2, signed     16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  uint16   result_s32         Result,   unsigned   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_S16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AddP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        /* In Fixed-point addition the operands should be of same radix.
         so input x(which is of lower radix) is scaled to the radix of input y
         (which is of higher radix) and added */
        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else

    /* Here a >= b */
    {
        /* In Fixed-point addition the operands should be of same radix.
         so input y(which is of lower radix) is scaled to the radix of input x
         (which is of higher radix) and added */
        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32 );
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) x;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* Only positive results need to be taken care as expected result is of type uint16 */
    if (result_s32 >= 0)
    {

        /* The result is scaled to the radix c. */
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

        if (result_s32 > (sint32) MFX_MAXUINT16)
        {
            result_s32 = (sint32) MFX_MAXUINT16;

             /* Overflow */
        }
    }
    else /* Saturate the negative results */
    {
        result_s32 = (sint32) MFX_MINUINT16; /* Underflow */
    }

    return ((uint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_s32s32_s32_Inl
 *
 * The routine adds (fixed point addition) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   sint32   x                  Operand 1, signed   32-bit variable
 * \param   sint32   y                  Operand 2, signed   32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  sint32   result_s64.s64s.l  Result,    signed   32-bit
 * Valid range:                  0 <= |a - b| <= 31
 *                               (c - b) <= 31, (a - c) <= 31, a >= b
 *                               (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_S32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_AddP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u result_s64;
    sint32 shift1_s32;
    sint32 shift2_s32;
    sint32 var1_s32;
    sint32 var2_s32;
    boolean isResultNegative_b = FALSE;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_s32 = x;
        var2_s32 = y;
    }
    else /* Here a >= b */
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_s32 = y;
        var2_s32 = x;
    }

    /* Multiplied and added to make use of "madd" instruction. (To optimize out left shift
     and addition.) Below statement can achieve max value of
     S32max   scalemax     S32max
     (2^31 - 1)2^31     +  (2^31 - 1) = 2^62 - 1  and min value of
     S32min  scalemax     S32min
     (-2^31)2^31       +  (-2^31)    = -2^62 - 2^31 which are in proper range of sint64 */
    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (((Mfx_sint64) var1_s32 * (Mfx_sint64)tmp_u32 ) + (Mfx_sint64) var2_s32);

    /* For negative results result_s64.s64s.h will be less than zero */
    if (result_s64.s64s.h < 0)
    {
        /* Dividing or right shifting a negative 64bit variable doesn't give correct result */
        /* So the variable is made positive before division(or multiplication in this case),
         then applied the sign back */
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = TRUE;
    }
    if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
    {
        shift2_s32 = -shift2_s32;
        tmp_u32 = ((uint32) result_s64.s64s.h << (32UL - (uint32)shift2_s32));
        var1_s32 = (sint32)tmp_u32;
        tmp_u32 = (result_s64.s64s.l >> (uint32)(shift2_s32));
        var2_s32 = (sint32)tmp_u32;
        result_s64.s64s.l = ((uint32) var2_s32 | (uint32) var1_s32);
        tmp_u32 = ((uint32) result_s64.s64s.h >> ((uint32)(shift2_s32)));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else /* For left shift shift2_s32 is +ve */
    {
        tmp_u32 = (result_s64.s64s.l << (uint32)(shift2_s32));
        var2_s32 = (sint32)tmp_u32;
        if (result_s64.s64s.h == 0)
        {
            /* */
            tmp_u32 = (result_s64.s64s.l >> (32UL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32 ;
            result_s64.s64s.l = (uint32) var2_s32;
        }
    }

    /* Overflow of sint32 range */
    if (((result_s64.s64s.h) > 0) || (result_s64.s64s.l > MFX_MAXSINT32_U))
    {
        /* Check whether result is negative */
        if (isResultNegative_b == TRUE)
        {
            result_s64.s64s.l = (uint32) MFX_MINSINT32_U; /* Underflow saturation */
        }
        else
        {
            result_s64.s64s.l = (uint32) MFX_MAXSINT32; /* Overflow saturation */
        }
    }

    /* Negate if the final result is supposed to be negative */
    if (isResultNegative_b == TRUE)
    {
        result_s64.s64s.l = (uint32) (-((sint32) result_s64.s64s.l));
    }

    return ((sint32) result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_s32s32_u32_Inl
 *
 * The routine adds (fixed point addition) two 32-bit integers with scaling factors
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
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_S32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AddP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u result_s64;
    sint32 shift1_s32;
    sint32 shift2_s32;
    sint32 var1_s32;
    sint32 var2_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_s32 = x;
        var2_s32 = y;
    }
    else /* Here a >= b */
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_s32 = y;
        var2_s32 = x;
    }
    /* Multiplied and added to make use of "madd" instruction. (To optimize out left shift
     and addition.) Below statement can achieve max value of
     S32max   scalemax     S32max
     (2^31 - 1)2^31     +  (2^31 - 1) = 2^62 - 1  and min value of
     S32min  scalemax     S32min
     (-2^31)2^31       +  (-2^31)    = -2^62 - 2^31 which are in proper range of sint64 */
    tmp_u32 =  (1uL << (uint32)shift1_s32);
    result_s64.s64 = (((Mfx_sint64) var1_s32 * (Mfx_sint64)tmp_u32 ) + (Mfx_sint64) var2_s32);

    /* For negative results result_s64.s64s.h will be less than zero */
    if (result_s64.s64s.h < 0)
    {
        result_s64.s64s.l = MFX_MINUINT32;
    }
    else
    {
        if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
        {
            shift2_s32 = -shift2_s32;
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var1_s32 = (sint32)tmp_u32;
            tmp_u32 = (result_s64.s64s.l >> (uint32)(shift2_s32));
            var2_s32 = (sint32)tmp_u32 ;
            result_s64.s64s.l = ((uint32) var2_s32 | (uint32) var1_s32);
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else /* For left shift shift2_s32 is +ve */
        {
            tmp_u32 = (result_s64.s64s.l << (uint32)(shift2_s32));
            var2_s32 = (sint32)tmp_u32;
            /* Left shift only when previous overflow has not happened */
            if (result_s64.s64s.h == 0)
            {
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = (uint32) var2_s32;
            }
        }
        /* Saturate if result overflow uint32 range */
        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = MFX_MAXUINT32;
        }
    }

    return (result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u16s16_s16_Inl
 *
 * The routine adds (fixed point addition) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint16   x                  Operand 1, unsigned   16-bit variable
 * \param   sint16   y                  Operand 2, signed     16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  sint16   result_s32         Result,   signed   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U16S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AddP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here  a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of input
         y(which is of higher radix) and added */
        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of input
         x(which is of higher radix) and added */
        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) x;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    if (result_s32 >= 0)
    {
        /* The result is scaled to the radix c. */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 =  ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        /* At this point result_s32 can overflow MAXSINT32 and appears negative
         but never overflows MFX_MAXUINT32 due to input range conditions. So
         comparison made in uint32 context. */
        if (((uint32) result_s32) > ((uint32) MFX_MAXSINT16)) /* Overflow */
        {
            result_s32 = (sint32) MFX_MAXSINT16;
        }
    }
    else
    {
        /* The result is scaled to the radix c. */
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

        if (result_s32 < ((sint32) MFX_MINSINT16)) /* Underflow */
        {
            result_s32 = (sint32) MFX_MINSINT16;
        }
    }

    return ((sint16) result_s32);
}
#endif


/*
 *******************************************************************************************
 * Mfx_Prv_AddP2_u16s16_u16_Inl
 *
 * The routine adds (fixed point addition) two 16-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint16   x                  Operand 1, unsigned   16-bit variable
 * \param   sint16   y                  Operand 2, signed     16-bit variable
 * \param   sint16   a                  radix position of operand1, signed   16-bit variable
 * \param   sint16   b                  radix position of operand2, signed   16-bit variable
 * \param   sint16   c                  radix position of result ,  signed   16-bit variable
 * \return  uint16   result_s32         Result,   unsigned   16-bit
 * Valid range:                         0 <= |a - b| <= 15
 *                                      (c - b) <= 15, (a - c) <= 15, a >= b
 *                                      (c - a) <= 15, (b - c) <= 15, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U16S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AddP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of input y
         (which is of higher radix) and added */
        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32) ;
        result_s32 = result_s32 + (sint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of input x
         (which is of higher radix) and added */
        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32 );
        result_s32 = result_s32 + (sint32) x;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* Only positive results need to be taken care as expected result is of type uint16 */
    if (result_s32 >= 0)
    {
        /* The result is scaled to the radix c. */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32 ;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        /* At this point result_s32 can overflow MAXSINT32 and appears negative
         but never overflows MFX_MAXUINT32 due to input range conditions. So
         comparison made in uint32 context. */

        if (((uint32) result_s32) > ((uint32) MFX_MAXUINT16))
        {
            result_s32 = (sint32) MFX_MAXUINT16; /* Overflow */
        }
    }
    else
    {
        result_s32 = (sint32) MFX_MINUINT16; /* Underflow */
    }

    return ((uint16) result_s32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u16u16_s16_Inl
 *
 * The routine adds (fixed point addition) two 16-bit integers with scaling factors
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
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U16U16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AddP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 result_u32;
    sint32 shift_s32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of input
         y(which is of higher radix) and added */
        shift_s32 = ((sint32)b - (sint32)a);
        result_u32 = ((uint32) x << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of input x
         (which is of higher radix) and added */
        shift_s32 = ((sint32)a - (sint32)b);
        result_u32 = ((uint32) y << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) x;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    /* The result is scaled to the radix c. */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        result_u32 = (result_u32 >> (uint32)(shift_s32));
    }
    else
    {
        result_u32 = (result_u32 << (uint32)(shift_s32));
    }

    /* Saturate if result overflows sint16 range */
    if (result_u32 > (uint32) MFX_MAXSINT16)
    {
        result_u32 = (uint32) MFX_MAXSINT16; /* Overflow */
    }

    return ((sint16) result_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u16u16_u16_Inl
 *
 * The routine adds (fixed point addition) two 16-bit integers with scaling factors
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
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U16U16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AddP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 result_u32;
    sint32 shift_s32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input x(which is of lower radix) is scaled to the radix of input y
         (which is of higher radix) and added */
        shift_s32 = ((sint32)b - (sint32)a);
        result_u32 = ((uint32) x << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) y;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)b);
    }
    else
    {
        /* In Fixed-point addition the operands should be of same radix.
         So input y(which is of lower radix) is scaled to the radix of input x
         (which is of higher radix) and added */
        shift_s32 = ((sint32)a - (sint32)b);
        result_u32 = ((uint32) y << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) x;

        /* The difference in the radix between output and input is calculated */
        shift_s32 =  ((sint32)c - (sint32)a);
    }

    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        result_u32 = (result_u32 >> (uint32)(shift_s32));
    }
    else
    {
        result_u32 = (result_u32 << (uint32)(shift_s32));
    }

    /* Saturate if result overflows uint16 range */
    if (result_u32 > (uint32) MFX_MAXUINT16)
    {
        result_u32 = (uint32) MFX_MAXUINT16; /* Overflow */
    }

    return ((uint16) result_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u32s32_s32_Inl
 *
 * The routine adds (fixed point addition) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x                  Operand 1, unsigned   32-bit variable
 * \param   sint32   y                  Operand 2, signed     32-bit variable
 * \param   sint32   a                  radix position of operand1, signed   32-bit variable
 * \param   sint32   b                  radix position of operand2, signed   32-bit variable
 * \param   sint32   c                  radix position of result ,  signed   32-bit variable
 * \return  sint32   result_s64.s64s.l  Result,    signed   32-bit
 * Valid range:                         0 <= |a - b| <= 31
 *                                      (c - b) <= 31, (a - c) <= 31, a >= b
 *                                      (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.  
 ***********************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U32S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_AddP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = FALSE;
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
    Mfx_sint64u var2_s64;
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var2_s64.s64 = (Mfx_sint64) y;

    }
    else /* Here a >= b */
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (Mfx_sint64) y;
        var2_s64.s64 = (Mfx_sint64) x;
    }
    /* Multiplied and added to make use of "madd" instruction. (To optimize out left shift
     and addition.) Below statement can achieve max value of
     U32max   scalemax     S32max
     (2^32 - 1)2^31     +  (2^31 - 1) = 2^63 - 1  and min value of
     U32max  scalemax  S32min
     0    +  (2^31 * (-2^31) ) = -2^62  which are in proper range */
    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = ((result_s64.s64 * ((Mfx_sint64)tmp_u32 )) + var2_s64.s64);

    if (result_s64.s64 < 0)
    {
        /* Dividing or right shifting a negative 64bit variable doesn't give correct result
        So the variable is made positive before division(or multiplication in this case),
         then applied the sign back */
        isResultNegative_b = TRUE;
        result_s64.s64 = -(result_s64.s64);
    }

    /* If the high32 bit is > 0 then no need to shift as it results in overflow
    But the case (result_s64.s64s.h == 0) is mentioned explicitly because when
     shift2_s32, shift1_s32 are +ve, X&Y are postive max, the result will overflow sint64 limit */
    if (shift2_s32 > 0) /* left shift */
    {
        var2_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

        if (result_s64.s64s.h == 0)
        {
            /* Get the overflowed bits from low 32bit
            For eg: For a 2-bit left shift of a 32bit value, (32-2 = 30) 30-bit right shift will provide
            overflown bits */
            tmp_u32 = ((result_s64.s64s.l) >> (32uL - (uint32)shift2_s32));
            var2_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.h = var2_s64.s64s.h;
            result_s64.s64s.l = var2_s64.s64s.l;
        }
    }
    if (shift2_s32 < 0) /* right shift */
    {
        /* Get the bits that will be lost as a result of right shift from high 32-bits */
        shift2_s32 = -shift2_s32;
        var2_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        tmp_u32 = (((uint32) result_s64.s64s.h) << (32uL - (uint32)shift2_s32));
        var2_s64.s64s.h = (sint32)tmp_u32;
        result_s64.s64s.l = var2_s64.s64s.l | (uint32) var2_s64.s64s.h;
        tmp_u32 = (((uint32) result_s64.s64s.h) >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }

    /* Saturate the result in case of overflow */
    if (((result_s64.s64s.h) > 0) || (result_s64.s64s.l > (uint32) MFX_MAXSINT32))
    {
        if (isResultNegative_b == TRUE) /* If actual result is negative */
        {
            result_s64.s64s.l = (uint32) MFX_MINSINT32_U; /* Underflow saturation */
        }
        else
        {
            result_s64.s64s.l = (uint32) MFX_MAXSINT32; /* Overflow saturation */
        }
    }

    /* Negate if the final result is supposed to be negative */
    if (isResultNegative_b == TRUE)
    {
        result_s64.s64s.l = (uint32) (-((sint32) result_s64.s64s.l));
    }

    return ((sint32) result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u32s32_u32_Inl
 *
 * The routine adds (fixed point addition) two 32-bit integers with scaling factors
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
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 ****************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U32S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AddP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u var2_s64;
    /*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
	Mfx_sint64u result_s64;
    uint32 tmp_u32;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var2_s64.s64 = (Mfx_sint64) y;
    }
    else /* Here a >= b */
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (Mfx_sint64) y;
        var2_s64.s64 = (Mfx_sint64) x;
    }

    /* Multiplied and added to make use of "madd" instruction. (To optimize out left shift
     and addition.) Below statement can achieve max value of
     U32max   scalemax     S32max
     (2^32 - 1)2^31     +  (2^31 - 1) = 2^63 - 1  and min value of
     U32max  scalemax  S32min
     0    +  (2^31 * (-2^31) ) = -2^62  which are in proper range */
    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = ((result_s64.s64 * ((Mfx_sint64)tmp_u32)) + var2_s64.s64);

    /* For negative results result_s64.s64s.h will be less than zero */
    if (result_s64.s64s.h < 0)
    {
        /* If result is negative limit to MINUINT32 */
        result_s64.s64s.l = MFX_MINUINT32;
    }
    else
    {
        if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
        {
            /* Get the bits that will be lost as a result of right shift from high32bits */
            shift2_s32 = -shift2_s32;
            tmp_u32 = (((uint32) result_s64.s64s.h) << (32uL - (uint32)shift2_s32));
            var2_s64.s64s.h = (sint32)tmp_u32;
            var2_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = (var2_s64.s64s.l | (uint32) var2_s64.s64s.h);
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else /* For left shift shift2_s32 is +ve */
        {
            var2_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));
            if (result_s64.s64s.h == 0)
            {
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var2_s64.s64s.l;
            }
        }

        /* Overflow of uint32 range */
        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = MFX_MAXUINT32;
        }
    }

    return (result_s64.s64s.l);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u32u32_s32_Inl
 *
 * The routine adds (fixed point addition) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x           Operand 1, unsigned   32-bit variable
 * \param   uint32   y           Operand 2, unsigned   32-bit variable
 * \param   sint32   a           radix position of operand1, signed   32-bit variable
 * \param   sint32   b           radix position of operand2, signed   32-bit variable
 * \param   sint32   c           radix position of result ,  signed   32-bit variable
 * \return  sint32   result_u32  Result,    signed   32-bit
 * Valid range:                  0 <= |a - b| <= 31
 *                               (c - b) <= 31, (a - c) <= 31, a >= b
 *                               (c - a) <= 31, (b - c) <= 31, a < b
 * \retval The routine adds two 16-bit integers with scaling factors set by input parameters.
 * \retval The function returns the integer value of the fixed point sum (C), determined according
 * to the above return-value equation.
 * \retval Return-value shall be saturated to boundary values in the event of underflow or overflow.
 * \retval If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U32U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_AddP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    uint32 var1_u32;
    uint32 var2_u32;
    uint32 result_u32;
    uint32 highbyte_u32 = 0;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_u32 = x;
        var2_u32 = y;
    }
    else /* Here a >= b */
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_u32 = y;
        var2_u32 = x;
    }

    /* Shift1_s32 is always +ve , so left shift of var1_u32. ( Y * 2^(a-b) or  X * 2^(b-a)) */
    result_u32 = (var1_u32 << (uint32)shift1_s32);

    /* Store the overflown bits from var1_u32 */
    highbyte_u32 = (var1_u32 >> (32uL - (uint32)shift1_s32));

    /* Here [X + Y * 2^(a-b)]  or   [X * 2^(b-a)) + Y] */
    result_u32 = result_u32 + var2_u32;

    if (result_u32 < var2_u32) /* Checking overflow after addition */
    {
        highbyte_u32++;
    }
    if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
    {
        /* Get the lost bits from highbyte_u32 as a result of x right shift
         i.e., by left shifting (32 - x) times. The lost bits are moved to low 32-bits
         by ORing it with low 32bits. */
        shift2_s32 = -shift2_s32;
        var1_u32 = highbyte_u32 << (32uL - (uint32)shift2_s32);
        var2_u32 = (result_u32 >> (uint32)(shift2_s32));
        result_u32 = var2_u32 | var1_u32;
        highbyte_u32 = highbyte_u32 >> (uint32)(shift2_s32);
    }
    else /* For left shift shift2_s32 is +ve */
    {
        var2_u32 = (result_u32 << (uint32)(shift2_s32));
        /* Left shift only when no overflow has happened before */
        if (highbyte_u32 == 0U)
        {
            highbyte_u32 = (result_u32 >> (32uL - (uint32)shift2_s32));
            result_u32 = var2_u32;
        }
    }

    /* Saturate if result overflows sint32 range */
    if ((highbyte_u32 > 0U) || (result_u32 > (uint32) MFX_MAXSINT32))
    {
        result_u32 = (uint32) MFX_MAXSINT32;
    }

    return ((sint32) result_u32);
}
#endif


/*
 **********************************************************************************************************************
 * Mfx_Prv_AddP2_u32u32_u32_Inl
 *
 * The routine adds (fixed point addition) two 32-bit integers with scaling factors
 * set by input parameters.
 *
 * \param   uint32   x           Operand 1, unsigned   32-bit variable
 * \param   uint32   y           Operand 2, unsigned   32-bit variable
 * \param   sint32   a           radix position of operand1, signed   32-bit variable
 * \param   sint32   b           radix position of operand2, signed   32-bit variable
 * \param   sint32   c           radix position of result ,  signed   32-bit variable
 * \return  uint32   result_u32  Result,    unsigned   32-bit
 * Valid range:                  0 <= |a - b| <= 31
 *                               (c - b) <= 31, (a - c) <= 31, a >= b
 *                               (c - a) <= 31, (b - c) <= 31, a < b
 *  *******************************************************************************************************************
 */
#ifndef MFX_PRV_ADDP2_U32U32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AddP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    uint32 var1_u32;
    uint32 var2_u32;
    uint32 result_u32;
    uint32 highbyte_u32 = 0;

    /* Here a >= b: 2^(c-a) * [x + (y * 2^(a-b))],
     a < b : 2^(c-b) * [(x * 2^(b-a)) + y] */

    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_u32 = x;
        var2_u32 = y;
    }
    else /* Here a >= b */
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_u32 = y;
        var2_u32 = x;
    }

    /* Shift1_s32 is always +ve , so left shift of var1_u32. ( Y * 2^(a-b) or  X * 2^(b-a)) */
    result_u32 = (var1_u32 << (uint32)shift1_s32);

    /* Store the overflown bits from var1_u32 */
    highbyte_u32 = (var1_u32 >> (32uL - (uint32)shift1_s32));

    /* Here [X + Y * 2^(a-b)]  or   [X * 2^(b-a)) + Y] */
    result_u32 = result_u32 + var2_u32;

    if (result_u32 < var2_u32) /* Checking overflow after addition */
    {
        highbyte_u32++; /* Increment the highbyte if overflows */
    }
    if (shift2_s32 < 0) /* For right shift shift2_s32 is -ve */
    {
        /* Get the lost bits from highbyte_u32 as a result of x right shift
         i.e., by left shifting (32 - x) times. The lost bits are moved to low 32-bits
         by ORing it with low 32bits. */
        shift2_s32 = -shift2_s32;
        var1_u32 = highbyte_u32 << (32uL - (uint32)shift2_s32);
        var2_u32 = (result_u32 >> (uint32)(shift2_s32));
        result_u32 = var2_u32 | var1_u32;
        highbyte_u32 = highbyte_u32 >> (uint32)(shift2_s32);
    }
    else /* For left shift shift2_s32 is +ve */
    {
        var2_u32 = (result_u32 << (uint32)(shift2_s32));

        /* Left shift only when no overflow has happened before */
        if (highbyte_u32 == 0U)
        {
            highbyte_u32 = (result_u32 >> (32uL - (uint32)shift2_s32));
            result_u32 = var2_u32;
        }
    }

    if (highbyte_u32 > 0U)

    /* Overflow happens */
    {
        result_u32 = MFX_MAXUINT32;
    }

    return (result_u32);
}
#endif




/* MFX_ADD_INL_H */
#endif
