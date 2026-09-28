


#ifndef MFX_STAT_INL_H
#define MFX_STAT_INL_H


/*
 **********************************************************************************************************************
 *
 * List of services
 *
 * Mfx_Prv_Abs_s16_s16_Inl
 * Mfx_Prv_Abs_s16_u16_Inl
 * Mfx_Prv_Abs_s32_s16_Inl
 * Mfx_Prv_Abs_s32_s32_Inl
 * Mfx_Prv_Abs_s32_s8_Inl
 * Mfx_Prv_Abs_s32_u16_Inl
 * Mfx_Prv_Abs_s32_u32_Inl
 * Mfx_Prv_Abs_s32_u8_Inl
 * Mfx_Prv_Abs_s8_s8_Inl
 * Mfx_Prv_Abs_s8_u8_Inl
 * Mfx_Prv_AbsP2_s16_s16_Inl
 * Mfx_Prv_AbsP2_s16_u16_Inl
 * Mfx_Prv_AbsP2_s32_s32_Inl
 * Mfx_Prv_AbsP2_s32_u32_Inl
 * Mfx_Prv_Max_s16_Inl
 * Mfx_Prv_Max_s32_Inl
 * Mfx_Prv_Max_s8_Inl
 * Mfx_Prv_Max_u16_Inl
 * Mfx_Prv_Max_u32_Inl
 * Mfx_Prv_Max_u8_Inl
 * Mfx_Prv_Min_s16_Inl
 * Mfx_Prv_Min_s32_Inl
 * Mfx_Prv_Min_s8_Inl
 * Mfx_Prv_Min_u16_Inl
 * Mfx_Prv_Min_u32_Inl
 * Mfx_Prv_Min_u8_Inl
 * Mfx_Prv_Minmax_s16_Inl
 * Mfx_Prv_Minmax_s32_Inl
 * Mfx_Prv_Minmax_s8_Inl
 * Mfx_Prv_Minmax_u16_Inl
 * Mfx_Prv_Minmax_u32_Inl
 * Mfx_Prv_Minmax_u8_Inl
 *
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */

LOCAL_INLINE sint16 Mfx_Prv_Abs_s16_s16_Inl(sint16 x_value);
LOCAL_INLINE uint16 Mfx_Prv_Abs_s16_u16_Inl(sint16 x_value);
LOCAL_INLINE sint16 Mfx_Prv_Abs_s32_s16_Inl(sint32 x_value);
LOCAL_INLINE sint32 Mfx_Prv_Abs_s32_s32_Inl(sint32 x_value);
LOCAL_INLINE sint8 Mfx_Prv_Abs_s32_s8_Inl(sint32 x_value);
LOCAL_INLINE uint16 Mfx_Prv_Abs_s32_u16_Inl(sint32 x_value);
LOCAL_INLINE uint32 Mfx_Prv_Abs_s32_u32_Inl(sint32 x_value);
LOCAL_INLINE uint8 Mfx_Prv_Abs_s32_u8_Inl(sint32 x_value);
LOCAL_INLINE sint8 Mfx_Prv_Abs_s8_s8_Inl(sint8 x_value);
LOCAL_INLINE uint8 Mfx_Prv_Abs_s8_u8_Inl(sint8 x_value);
LOCAL_INLINE sint16 Mfx_Prv_AbsP2_s16_s16_Inl(sint16 x, sint16 a, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_AbsP2_s16_u16_Inl(sint16 x, sint16 a, sint16 c);
LOCAL_INLINE sint32 Mfx_Prv_AbsP2_s32_s32_Inl(sint32 x, sint16 a, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_AbsP2_s32_u32_Inl(sint32 x, sint16 a, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_Max_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Max_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Max_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Max_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Max_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Max_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Min_s16_Inl(sint16 x_value, sint16 y_value);
LOCAL_INLINE sint32 Mfx_Prv_Min_s32_Inl(sint32 x_value, sint32 y_value);
LOCAL_INLINE sint8 Mfx_Prv_Min_s8_Inl(sint8 x_value, sint8 y_value);
LOCAL_INLINE uint16 Mfx_Prv_Min_u16_Inl(uint16 x_value, uint16 y_value);
LOCAL_INLINE uint32 Mfx_Prv_Min_u32_Inl(uint32 x_value, uint32 y_value);
LOCAL_INLINE uint8 Mfx_Prv_Min_u8_Inl(uint8 x_value, uint8 y_value);
LOCAL_INLINE sint16 Mfx_Prv_Minmax_s16_Inl(sint16 value, sint16 minmax_value);
LOCAL_INLINE sint32 Mfx_Prv_Minmax_s32_Inl(sint32 value, sint32 minmax_value);
LOCAL_INLINE sint8 Mfx_Prv_Minmax_s8_Inl(sint8 value, sint8 minmax_value);
LOCAL_INLINE uint16 Mfx_Prv_Minmax_u16_Inl(uint16 value, uint16 minmax_value);
LOCAL_INLINE uint32 Mfx_Prv_Minmax_u32_Inl(uint32 value, uint32 minmax_value);
LOCAL_INLINE uint8 Mfx_Prv_Minmax_u8_Inl(uint8 value, uint8 minmax_value);

/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */

/**
 **********************************************************************************************************************
 * Mfx_Abs_s16_s16
 *
 * \brief Absolute value of sint16 operand with sint16 saturation.
 *
 * \param   sint16  x_value
 * \return  sint16
 * \retval  Absolute value of x_value saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Abs_s16_s16_Inl(sint16 x_value)
{
    return (Mfx_Prv_Abs_s32_s16_Inl(x_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s16_u16
 *
 * \brief Absolute value of sint16 operand with uint16 saturation.
 *
 * \param   sint16  x_value
 * \return  uint16
 * \retval  Absolute value of x_value saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Abs_s16_u16_Inl(sint16 x_value)
{
    return (Mfx_Prv_Abs_s32_u16_Inl(x_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s32_s16
 *
 * \brief Absolute value of sint32 operand with sint16 saturation.
 *
 * \param   sint32  x_value
 * \return  sint16
 * \retval  Absolute value of x_value saturated to sint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Abs_s32_s16_Inl(sint32 x_value)
{
    sint16 result_s16;


    if (x_value >= 0L)
    {
        result_s16 = ((sint16) ((x_value  > ((sint32)MFX_MAXSINT16)) ? MFX_MAXSINT16 : ((sint16)(x_value))));
    }
    else
    {
        result_s16 = ((sint16) ((x_value <= ((sint32)MFX_MINSINT16)) ? MFX_MAXSINT16 : ((sint16)(-x_value))));
    }

    return result_s16;
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s32_s32
 *
 * \brief Absolute value of sint32 operand with sint32 saturation.
 *
 * \param  sint32   x_value
 * \return sint32
 * \retval Absolute value of x_value saturated to sint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Abs_s32_s32_Inl(sint32 x_value)
{
    sint32 result_s32;


    if (x_value >= 0L)
    {
        result_s32 = x_value;
    }
    else
    {
        /* Saturation for the min value */
        result_s32 = ((x_value == MFX_MINSINT32) ? MFX_MAXSINT32 : -x_value);
    }

    return (result_s32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s32_s8
 *
 * \brief Absolute value of sint32 operand with sint8 saturation.
 *
 * \param   sint32   x_value
 * \return  sint8
 * \retval  Absolute value of x_value saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Abs_s32_s8_Inl(sint32 x_value)
{
    sint8 result_s8;


    if(x_value < 0)
    {
        /* Input underflow */
        if (x_value <= (sint32)MFX_MINSINT8)
        {
            result_s8 = MFX_MAXSINT8;
        }
        else
        {
            result_s8 = (sint8)(-x_value);
        }
    }
    else
    {
        /* Input overflow */
        if (x_value > (sint32)MFX_MAXSINT8)
        {
            result_s8 = MFX_MAXSINT8;
        }
        else
        {
            result_s8 = (sint8)(x_value);
        }
    }

   return result_s8;
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s32_u16
 *
 * \brief Absolute value of a sint32 operand with uint16 saturation.
 *
 * \param   sint32  x_value
 * \return  uint16
 * \return  Absolute value of x_value saturated to uint16
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Abs_s32_u16_Inl(sint32 x_value)
{
    uint16 result_u16;


    if(x_value < 0)
    {
        /* Input underflow */
        if (x_value <= (sint32)(-MFX_MAXUINT16))
        {
            result_u16 = MFX_MAXUINT16;
        }
        else
        {
            result_u16 = (uint16)(-x_value);
        }
    }
    else
    {
        /* Input overflow */
        if (x_value > (sint32)MFX_MAXUINT16)
        {
            result_u16 = MFX_MAXUINT16;
        }
        else
        {
            result_u16 = (uint16)(x_value);
        }
    }

   return result_u16;
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s32_u32
 *
 * \brief Absolute value of sint32 operand with uint32 saturation.
 *
 * \param   sint32  x_value
 * \return  Absolute value of x_value saturated to uint32
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Abs_s32_u32_Inl(sint32 x_value)
{
    uint32 result_u32;


    if(x_value < 0)
    {
        result_u32 = ((x_value != MFX_MINSINT32) ? (uint32)(-x_value) : 0x80000000uL) ;
    }
    else
    {
        result_u32 = ((uint32)(x_value));
    }

    return result_u32;
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s32_u8
 *
 * \brief Absolute value of a sint32 operand with uint8 saturation.
 *
 * \param   sint32  x_value
 * \return  uint8
 * \retval  Absolute value of x_value saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Abs_s32_u8_Inl(sint32 x_value)
{
    sint32 result_s32;


    if (x_value >= 0L)
    {
        result_s32 = ((x_value >= ((sint32)MFX_MAXUINT8)) ? ((sint32)MFX_MAXUINT8) : x_value);
    }
    else
    {
        result_s32 = ((x_value <= ((sint32)(-MFX_MAXUINT8))) ? ((sint32)MFX_MAXUINT8) : -x_value);
    }

    return (uint8)result_s32;
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s8_s8
 *
 * \brief Absolute value of a sint8 operand with sint8 saturation.
 *
 * \param   sint8  x_value
 * \return  sint8
 * \retval  Absolute value of x_value saturated to sint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S8_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Abs_s8_s8_Inl(sint8 x_value)
{
    return (Mfx_Prv_Abs_s32_s8_Inl(x_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Abs_s8_u8
 *
 * \brief Absolute value of a sint8 operand with uint8 saturation.
 *
 * \param   sint8  x_value
 * \return  uint8
 * \retval  Absolute value of x_value saturated to uint8
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABS_S8_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Abs_s8_u8_Inl(sint8 x_value)
{
    return (Mfx_Prv_Abs_s32_u8_Inl(x_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_AbsP2_s16_s16_Inl
 *
 * \brief   Absolute value of sint16 operand with sint16 saturation with the specified radix given by the user.
 *
 * Equation to be implemented
 *
 * Result = 2^(c-a) * |x|
 * Valid range: -15 <= (c - a) <= 15
 *
 * \param   sint16  x      Integer value of the fixed point operand.
 * \param   sint16  a      Radix point position of the fixed point operand.
 * \param   sint16  c      Radix point position of the fixed point result.
 * \return  sint16
 * \retval  The routine takes the absolute value of two 16-bit integers with scaling factors set by input parameters.
 * \retval  The function returns the integer value of the fixed point absolute value (C), determined according to the
 *          above
 * \retval  return-value equation. Return-value shall be saturated to boundary values in the event of underflow or
 *          overflow.
 * \retval  If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSP2_S16_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_AbsP2_s16_s16_Inl(sint16 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    sint32 shift_s32;
        
    shift_s32 = (sint32) c - (sint32) a;
    
    /*Gives absolute value for all values other than MINSINT16 */
    if (x < 0)
    {
        x = (-(x));
    }

    /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
     Re-cast back to 'signed' after shifting */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) ((uint16) x)) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) ((uint16) x)) << ((uint32)(shift_s32)));
    } 
    
    /* Overflow check */
    if (res_u32 > (uint32) MFX_MAXSINT16)
    {
        res_u32 = (uint32) MFX_MAXSINT16; /*Overflow Saturation*/
    }

    return ((sint16) res_u32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_AbsP2_s16_u16_Inl
 *
 * \brief   Absolute value of sint16 operand with uint16 saturation, with the specified radix given by the user.
 *
 * Equation to be implemented
 *
 * Result = 2^(c-a) * |x|
 * Valid range: -15 <= (c - a) <= 15
 *
 * \param   sint16  x      Integer value of the fixed point operand.
 * \param   sint16  a      Radix point position of the fixed point operand.
 * \param   sint16  c      Radix point position of the fixed point result.
 * \return  uint16
 * \retval  The routine takes the absolute value of two 16-bit integers with scaling factors set by input parameters.
 * \retval  The function returns the integer value of the fixed point absolute value (C), determined according to the
 *          above
 * \retval  return-value equation. Return-value shall be saturated to boundary values in the event of underflow or
 *          overflow.
 * \retval  If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSP2_S16_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_AbsP2_s16_u16_Inl(sint16 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    sint32 shift_s32;
    
    shift_s32 = (sint32) c - (sint32) a;
    
    /* Gives absolute value for all values other than MINSINT16 */
    if (x < 0)
    {
        x = (-(x));
    }

    /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
     Re-cast back to 'signed' after shifting */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) ((uint16) x)) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) ((uint16) x)) << ((uint32)(shift_s32)));
    }

    if (res_u32 > (uint32) MFX_MAXUINT16)
    {
        res_u32 = (uint32) MFX_MAXUINT16; /*Overflow Saturation*/
    }

    return ((uint16) res_u32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_AbsP2_s32_s32_Inl
 *
 * \brief   Absolute value of sint32 operand with sint32 saturation with the specified radix given by the user.
 *
 * Equation to be implemented
 *
 * Result = 2^(c-a) * |x|
 * Valid range: -31 <= (c - a) <= 31
 *
 * \param   sint32  x      Integer value of the fixed point operand.
 * \param   sint16  a      Radix point position of the fixed point operand.
 * \param   sint16  c      Radix point position of the fixed point result.
 * \return  sint32
 * \retval  The routine takes the absolute value of two 32-bit integers with scaling factors set by input parameters.
 * \retval  The function returns the integer value of the fixed point absolute value (C), determined according to the
 *          above
 * \retval  return-value equation. Return-value shall be saturated to boundary values in the event of underflow or
 *          overflow.
 * \retval  If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSP2_S32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_AbsP2_s32_s32_Inl(sint32 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    uint32 tmp_u32;
    sint32 shift_s32;

    shift_s32 = (sint32) c - (sint32) a;

    /* Gives absolute value for all values other than MINSINT32 */
    if (x < 0)
    {
        x = (-(x));
    }

    /*Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
     Re-cast back to 'signed' after shifting*/
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) x) << ((uint32)(shift_s32)));
    
        /* To check whether overflow/underflow occurred due to left shift of the product*/
        /*
        Examples:
        Valid Range               Overflow condition
        x = 56  a = 5 c = 2          x = MAXSINT16 a = -9  c = 12
        x = 0x0000 0038  shift_s32 = -3   x = 0x0000 7FFF   shift_s32 = 21
        res_s32 = 0x0000 0007        res_s32 = 0xFFE0 0000
        tmp_u32   = 0x0000 0038        tmp_u32   = 0x0000 07FF (!= x)
        res_s32 = 0x0000 0007        res_s32 = MAXSINT32
        */
    
        /* Shift back and check whether the product remains unchanged */
        tmp_u32 = ((res_u32) >> (uint32)(shift_s32));

        /* If it changed then an overflow/underflow has occured */
        if (tmp_u32 != (uint32) x)
        {
            res_u32 = (uint32) MFX_MAXSINT32; /*Overflow Saturation*/
        }
    }

    /* Saturation check */
    if (res_u32 > MFX_MAXSINT32_U)
    {
        res_u32 = MFX_MAXSINT32_U; /*Overflow Saturation*/
    }

    return ((sint32) res_u32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_AbsP2_s32_u32_Inl
 *
 * \brief   Absolute value of sint32 operand with uint32 saturation with the specified radix given by the user.
 *
 * Equation to be implemented
 *
 * Result = 2^(c-a) * |x|
 * Valid range: -31 <= (c - a) <= 31
 *
 * \param   sint32  x      Integer value of the fixed point operand.
 * \param   sint16  a      Radix point position of the fixed point operand.
 * \param   sint16  c      Radix point position of the fixed point result.
 * \return  uint32
 * \retval  The routine takes the absolute value of two 32-bit integers with scaling factors set by input parameters.
 * \retval  The function returns the integer value of the fixed point absolute value (C), determined according to the
 *          above
 * \retval  return-value equation. Return-value shall be saturated to boundary values in the event of underflow or
 *          overflow.
 * \retval  If it is necessary to round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_ABSP2_S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_AbsP2_s32_u32_Inl(sint32 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    uint32 tmp_u32;
    sint32 shift_s32;

    shift_s32 = (sint32) c - (sint32) a;

    /* Gives absolute value for all values other than MINSINT32 */
    if (x < 0)
    {
        x = (-(x));
    }

    /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
     Re-cast back to 'signed' after shifting*/
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) x) << ((uint32)(shift_s32)));
        
        /* To check whether overflow/underflow occurred due to left shift of the product */
        /*
        Examples:
        Valid Range               Overflow condition
        x = 56  a = 5 c = 2          x = MAXSINT16 a = -9  c = 12
        x = 0x0000 0038  shift_s32 = -3   x = 0x0000 7FFF   shift_s32 = 21
        res_s32 = 0x0000 0007        res_s32 = 0xFFE0 0000
        tmp_u32   = 0x0000 0038        tmp_u32   = 0x0000 07FF (!= x)
        res_s32 = 0x0000 0007        res_s32 = MAXSINT32
        */
    
        /* If it changed then an overflow/underflow has occured */
        tmp_u32 = ((res_u32) >> ((uint32)(shift_s32)));

        /* Saturation check */
        if (tmp_u32 != (uint32) x)
        {
            res_u32 = MFX_MAXUINT32; /*Overflow Saturation*/
        }
    }

    return (res_u32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Max_s16
 *
 * \brief Returns the maximum of two sint16 variables
 *
 * \param   value    First value for compare
 * \param   y_value    Second value for comparebase
 * \return  sint16
 * \retval  Maximum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MAX_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Max_s16_Inl(sint16 x_value, sint16 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Max_s32
 *
 * Returns the maximum of two sint32 variables
 *
 * \param   sint32  x_value    First value for compare
 * \param   sint32  y_value    Second value for comparebase
 * \return  sint32
 * \retval  Maximum value
 **********************************************************************************************************************
*/
#ifndef MFX_PRV_MAX_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Max_s32_Inl(sint32 x_value, sint32 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_max_value
 *
 * \brief Returns the maximum of two sint8 variables
 *
 * \param   sint8   value    First value for compare
 * \param   sint8   y_s8    Second value for comparebase
 * \return  sint8
 * \retval  Maximum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MAX_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Max_s8_Inl(sint8 x_value, sint8 y_value)
{
    return ((x_value > y_value) ?  x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_max_value
 *
 * \brief Returns the maximum of two uint16 variables
 *
 * \param   x_u16    First value for compare
 * \param   y_u16    Second value for comparebase
 * \return  uint16
 * \retval  Maximum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MAX_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Max_u16_Inl(uint16 x_value, uint16 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_min_value
 *
 * \brief Returns the minimum of two uint32 variables
 *
 * \param   uint32  x_value     First value for compare
 * \param   uint32  y_value     Second value for comparebase
 * \return  uint32
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MAX_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Max_u32_Inl(uint32 x_value, uint32 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_min_value
 *
 * \brief Returns the minimum of two uint8 variables
 *
 * \param   uint8   value     First value for compare
 * \param   uint8   y_value     Second value for comparebase
 * \return  uint8
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MAX_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Max_u8_Inl(uint8 x_value, uint8 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Min_s16
 *
 * \brief Returns the minimum of two sint16 variables
 *
 * \param   sint16  value     First value for compare
 * \param   sint16  y_value     Second value for comparebase
 * \return  sint16
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MIN_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Min_s16_Inl(sint16 x_value, sint16 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Min_s32
 *
 * \brief Returns the minimum of two sint32 variables
 *
 * \param   sint32  x_value     First value for compare
 * \param   sint32  y_value     Second value for comparebase
 * \return  sint32
 * \retval  Minimum value
 *
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MIN_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Min_s32_Inl(sint32 x_value, sint32 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_min_value
 *
 * \brief Returns the minimum of two sint8 variables
 *
 * \param   sint8   value     First value for compare
 * \param   sint8   y_value     Second value for comparebase
 * \return  sint8
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MIN_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Min_s8_Inl(sint8 x_value, sint8 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Min_u16
 *
 * \brief Returns the minimum of two uint16 variables
 *
 * \param   uint16    value     First value for compare
 * \param   uint16    y_value     Second value for comparebase
 * \return  uint16
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MIN_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Min_u16_Inl(uint16 x_value, uint16 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_min_value
 *
 * \brief Returns the minimum of two uint32 variables
 *
 * \param   uint32  x_value     First value for compare
 * \param   uint32  y_value     Second value for comparebase
 * \return  uint32
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MIN_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Min_u32_Inl(uint32 x_value, uint32 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_min_value
 *
 * \brief Returns the minimum of two uint8 variables
 *
 * \param   uint8   value     First value for compare
 * \param   uint8   y_value     Second value for comparebase
 * \return  uint8
 * \retval  Minimum value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MIN_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Min_u8_Inl(uint8 x_value, uint8 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Minmax_s16
 *
 * \brief The routine returns limits of a value to a minimum or a maximum that depends on the sign of the minmax_value.
 *
 * \param   sint16   value          First value for compare
 * \param   sint16   minmax_value   Second value for comparebase
 * \return  sint16
 * \retval  The routine limits a value to a minimum or a maximum that depends on the sign of the minmax_value.
 * \retval  minmax_value if minmax_value >= 0 and value > minmax_value
 * \retval  minmax_value if minmax_value < 0 and value < minmax_value
 * \retval  value in the other cases
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MINMAX_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Minmax_s16_Inl(sint16 value, sint16 minmax_value)
{
    sint16 res_s16;

    if(minmax_value < 0)
    {
        res_s16 = Mfx_Prv_Max_s16_Inl(value,minmax_value);
    }
    else
    {
        res_s16 = Mfx_Prv_Min_s16_Inl(value,minmax_value);
    }

    return(res_s16);
}
#endif



/**
 **********************************************************************************************************************
 * Mfx_Minmax_s32
 *
 * \brief The routine returns limits of a value to a minimum or a maximum that depends on the sign of the minmax_value.
 *
 * \param   sint32   value          First value for compare
 * \param   sint32   minmax_value   Second value for comparebase
 * \return  sint32
 * \retval  The routine limits a value to a minimum or a maximum that depends on the sign of the minmax_value.
 * \retval  minmax_value if minmax_value >= 0 and value > minmax_value
 * \retval  minmax_value if minmax_value < 0 and value < minmax_value
 * \retval  value in the other cases
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MINMAX_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Minmax_s32_Inl(sint32 value, sint32 minmax_value)
{
    sint32 res_s32;

    if(minmax_value < 0)
    {
        res_s32 = Mfx_Prv_Max_s32_Inl(value , minmax_value);
    }
    else
    {
        res_s32 = Mfx_Prv_Min_s32_Inl(value , minmax_value);
    }

    return(res_s32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Minmax_s8
 *
 * \brief The routine returns limits of a value to a minimum or a maximum that depends on the sign of the minmax_value.
 *
 * \param   sint8   value          First value for compare
 * \param   sint8   minmax_value   Second value for comparebase
 * \return  sint8
 * \retval  The routine limits a value to a minimum or a maximum that depends on the sign of the minmax_value.
 * \retval  minmax_value if minmax_value >= 0 and value > minmax_value
 * \retval  minmax_value if minmax_value < 0 and value < minmax_value
 * \retval  value in the other cases
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MINMAX_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Minmax_s8_Inl(sint8 value, sint8 minmax_value)
{
    sint8 res_s8;

    if(minmax_value < 0)
    {
        res_s8 = Mfx_Prv_Max_s8_Inl(value , minmax_value);
    }
    else
    {
        res_s8 = Mfx_Prv_Min_s8_Inl(value , minmax_value);
    }

    return (res_s8);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Minmax_u16
 *
 * \brief The routine returns limits of a value to a minimum or a maximum that depends on the sign of the minmax_value.
 *
 * \param   uint16   value          First value for compare
 * \param   uint16   minmax_value   Second value for comparebase
 * \return  uint16
 * \retval  The routine limits a value to a minimum or a maximum that depends on the sign of the minmax_value.
 * \retval  minmax_value if minmax_value >= 0 and value > minmax_value
 * \retval  minmax_value if minmax_value < 0 and value < minmax_value
 * \retval  value in the other cases
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MINMAX_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Minmax_u16_Inl(uint16 value, uint16 minmax_value)
{
    return (Mfx_Prv_Min_u16_Inl(value , minmax_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Minmax_u32
 *
 * \brief The routine returns limits of a value to a minimum or a maximum that depends on the sign of the minmax_value.
 *
 * \param   uint32   value          First value for compare
 * \param   uint32   minmax_value   Second value for comparebase
 * \return  uint32
 * \retval  The routine limits a value to a minimum or a maximum that depends on the sign of the minmax_value.
 * \retval  minmax_value if minmax_value >= 0 and value > minmax_value
 * \retval  minmax_value if minmax_value < 0 and value < minmax_value
 * \retval  value in the other cases
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MINMAX_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Minmax_u32_Inl(uint32 value, uint32 minmax_value)
{
    return (Mfx_Prv_Min_u32_Inl(value , minmax_value));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Minmax_u8
 *
 * \brief The routine returns limits of a value to a minimum or a maximum that depends on the sign of the minmax_value.
 *
 * \param   uint8   value          First value for compare
 * \param   uint8   minmax_value   Second value for comparebase
 * \return  uint8
 * \retval  The routine limits a value to a minimum or a maximum that depends on the sign of the minmax_value.
 * \retval  minmax_value if minmax_value >= 0 and value > minmax_value
 * \retval  minmax_value if minmax_value < 0 and value < minmax_value
 * \retval  value in the other cases
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_MINMAX_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Minmax_u8_Inl(uint8 value, uint8 minmax_value)
{
    return (Mfx_Prv_Min_u8_Inl(value , minmax_value));
}
#endif




/* MFX_STAT_INL_H */
#endif
