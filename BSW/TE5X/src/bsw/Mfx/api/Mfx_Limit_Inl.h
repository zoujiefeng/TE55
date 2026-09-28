

#ifndef MFX_LIMIT_INL_H
#define MFX_LIMIT_INL_H


/*
 **********************************************************************************************************************
 *
 * List of services
 *
 * Mfx_Prv_ConvertP2_s16_s32_Inl
 * Mfx_Prv_ConvertP2_s16_s8_Inl
 * Mfx_Prv_ConvertP2_s32_s16_Inl
 * Mfx_Prv_ConvertP2_s8_s16_Inl
 * Mfx_Prv_ConvertP2_u16_u32_Inl
 * Mfx_Prv_ConvertP2_u16_u8_Inl
 * Mfx_Prv_ConvertP2_u32_u16_Inl
 * Mfx_Prv_ConvertP2_u8_u16_Inl
 * Mfx_Prv_Limit_s16_Inl
 * Mfx_Prv_Limit_s32_Inl
 * Mfx_Prv_Limit_s8_Inl
 * Mfx_Prv_Limit_u16_Inl
 * Mfx_Prv_Limit_u32_Inl
 * Mfx_Prv_Limit_u8_Inl
 *
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */

LOCAL_INLINE sint32 Mfx_Prv_ConvertP2_s16_s32_Inl(sint16 x, sint16 a, sint16 c);
LOCAL_INLINE sint8 Mfx_Prv_ConvertP2_s16_s8_Inl(sint16 x, sint16 a, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_ConvertP2_s32_s16_Inl(sint32 x, sint16 a, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_ConvertP2_s8_s16_Inl(sint8 x, sint16 a, sint16 c);
LOCAL_INLINE uint32 Mfx_Prv_ConvertP2_u16_u32_Inl(uint16 x, sint16 a, sint16 c);
LOCAL_INLINE uint8 Mfx_Prv_ConvertP2_u16_u8_Inl(uint16 x, sint16 a, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_ConvertP2_u32_u16_Inl(uint32 x, sint16 a, sint16 c);
LOCAL_INLINE uint16 Mfx_Prv_ConvertP2_u8_u16_Inl(uint8 x, sint16 a, sint16 c);
LOCAL_INLINE sint16 Mfx_Prv_Limit_s16_Inl(sint16 value, sint16 min_value, sint16 max_value);
LOCAL_INLINE sint32 Mfx_Prv_Limit_s32_Inl(sint32 value, sint32 min_value, sint32 max_value);
LOCAL_INLINE sint8 Mfx_Prv_Limit_s8_Inl(sint8 value, sint8 min_value, sint8 max_value);
LOCAL_INLINE uint16 Mfx_Prv_Limit_u16_Inl(uint16 value, uint16 min_value, uint16 max_value);
LOCAL_INLINE uint32 Mfx_Prv_Limit_u32_Inl(uint32 value, uint32 min_value, uint32 max_value);
LOCAL_INLINE uint8 Mfx_Prv_Limit_u8_Inl(uint8 value, uint8 min_value, uint8 max_value);

/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */

/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_s16_s32
 *
 * \brief Converts an input of type signed 16-bit to signed 32-bit with a specified radix as provided by the user
 *
 * Function returns a valid 32-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -15 <= (c - a) <= 31
 *
 * \param   sint16 x          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint32            The routine converts a scaled 16-bit integer to a scaled 32-bit integer. The function
 *                            returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated to
 *                            boundary values in the event of underflow or
 * \return                    overflow. If it is necessary to round the result of this equation, it is rounded toward
 *                            zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_S16_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_ConvertP2_s16_s32_Inl(sint16 x, sint16 a, sint16 c)
{
    sint32 res_s32;
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) a - (sint32) c;

    /* Negative input has to be negated and then shifted as right shifting of negative value will lead to loss of data
     Example : x = MINSINT16 , shift_s32 = -3
     res_s32 = (0xFFFF 8000 >> 3) => res_s32 = (0x1FFF F000)  536866816 which is incorrect */
    if(shift_s32 >= 0)
    {
        if (x < 0)
        {
            tmp_u32 = (((uint32) (-x)) >> ((uint32)(shift_s32)));
            /* Product is negated to retain the sign */
            res_s32 = -((sint32) tmp_u32 );
        }
        else
        {
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
            Re-cast back to 'signed' after shifting */
            tmp_u32 = ((uint32) x) >> ((uint32)(shift_s32));
            res_s32 = (sint32) (tmp_u32);
        }
    }
    else
    {
        shift_s32 = -shift_s32;
        tmp_u32 = ((uint32) x )<< ((uint32)(shift_s32));
        res_s32 = (sint32)(tmp_u32);

        /* To check whether overflow/underflow occurred due to left shift of the product
        Examples:
        Valid Range                  Overflow condition positive        Overflow condition negative
        x = 56  a = 5 c = 2             x = MAXSINT16 a = -9  c = 12       x = -256 a = -10  c = 12
        x = 0x0000 0038 shift_s32 = -3  x = 0x0000 7FFF   shift_s32 = 21   x = 0xFFFF FF00   shift_s32 = 22
        res_s32 = 0x0000 0007           res_s32 = 0xFFE0 0000              res_s32 = 0xC000 0000
        tmp_s32   = 0x0000 0038         tmp_s32   = 0x0000 07FF (!= x)     tmp_s32   = 0x0000 0300 (!= x)
        res_s32 = 0x0000 0007           res_s32 = MAXSINT32                res_s32 = MINSINT32
        */

        /* Shift back and check whether the product remains unchanged */
        tmp_u32 = ((uint32)(res_s32) >> ((uint32)(shift_s32)));

        if(res_s32 < 0L) // If the number was signed
        {
            // Patch in the sign bits:
            tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shift_s32));
        }

        tmp_s32 = (sint32)tmp_u32;

        /* If it changed then an overflow/underflow has occured */
        if (tmp_s32 != x)
        {
            /* Overflow or underflow check. */
            if (x < 0)
            {
                res_s32 = (sint32) MFX_MINSINT32; /* underflow Saturation */
            }
            else
            {
                res_s32 = (sint32) MFX_MAXSINT32; /* Overflow Saturation */
            }
        }
    }

    return (res_s32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_s16_s8
 *
 * \brief Converts an input of type signed 16-bit to signed 8-bit with a specified radix as provided by the user
 *
 * Function returns a valid 8-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -15 <= (c - a) <= 7
 *
 * \param   sint16 x          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint8             The routine converts a scaled 16-bit integer to a scaled 8-bit integer.
 * \return                    The function returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated to
 * \return                    boundary values in the event of underflow oroverflow. If it is necessary to round the
 * \return                    result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_S16_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_ConvertP2_s16_s8_Inl(sint16 x, sint16 a, sint16 c)
{
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* Negative input has to be negated and then shifted as right shifting of negative value will lead to loss of data
     Example : x = MINSINT16, shift_s32 = -3 to illustrate the negation done before shifting
     tmp_s32 = (0xFFFF 8000 >> 3) =>  tmp_s32 = 0x1FFF F000 = 536866816 which is incorrect */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (x < 0)
        {
            tmp_u32 = ((uint32) (-(x))) >> ((uint32)(shift_s32));
            /* Product is negated to retain the sign */
            tmp_s32 = -((sint32)tmp_u32 );
        }
        else
        {
            tmp_u32 = ((uint32) x) >> (uint32)(shift_s32);
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
            Re-cast back to 'signed' after shifting */
            tmp_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 =  ((uint32) x << ((uint32)(shift_s32)));
        tmp_s32 = (sint32)tmp_u32;
    }

    /* Saturation check (ternary operator avoided to facilitate SAT optimization) */
    if (tmp_s32 > (sint32) MFX_MAXSINT8)
    {
        tmp_s32 = (sint32) MFX_MAXSINT8; /* overflow saturation */
    }
    if (tmp_s32 < (sint32) MFX_MINSINT8)
    {
        tmp_s32 = (sint32) MFX_MINSINT8; /* underflow saturation */
    }

    return ((sint8) tmp_s32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_s32_s16
 *
 * \brief Converts an input of type signed 32-bit to signed 16-bit with a specified radix as provided by the user
 *
 * Function returns a valid 16-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -31 <= (c - a) <= 15
 *
 * \param   sint32 x          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  sint16            The routine converts a scaled 32-bit integer to a scaled 16-bit integer.
 * \return                    The function returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated
 * \return                    to boundary values in the event of underflow or overflow. If it is necessary to
 * \return                    round the result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_ConvertP2_s32_s16_Inl(sint32 x, sint16 a, sint16 c)
{
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of data
     Example : x = MINSINT16, shift_s32 = -3
     tmp_s32 = (0xFFFF 8000 >> 3) =>  tmp_s32 = (0x1FFF F000) = 536866816, which is incorrect*/
    if (x < 0)
    {
        /* Saturation check, A sure case for underflow */

        if (((shift_s32) >= 0) && (x <= MFX_MINSINT16))
        {
            tmp_s32 = (sint32) MFX_MINSINT16; /* Underflow saturation */
        }
        else
        {
            /* Input is negated to retain the sign */
            if(shift_s32 < 0)
            {
                shift_s32 = -shift_s32;
                tmp_u32 = (((uint32) (-(x))) >> (uint32)(shift_s32));
                tmp_s32 = -((sint32) tmp_u32);
            }
            else
            {
                tmp_u32 = (((uint32) (-(x))) << (uint32)(shift_s32));
                tmp_s32 = -((sint32) tmp_u32 );
            }
        }
    }
    else
    {
        /* Saturation check, A sure case for overflow*/
        if (((shift_s32) >= 0) && (x >= MFX_MAXSINT16))
        {
            tmp_s32 = (sint32) MFX_MAXSINT16; /* Overflow saturation */
        }
        else
        {
            /* Input is negated to retain the sign */
            if(shift_s32 < 0)
            {
                shift_s32 = -shift_s32;
                tmp_u32 = (((uint32) x) >> (uint32)(shift_s32));
                tmp_s32 = (sint32)tmp_u32;
            }
            else
            {   tmp_u32 = (((uint32) x) << ((uint32)(shift_s32)));
                tmp_s32 = (sint32) tmp_u32;
            }
        }
    }

    /* Saturation check (ternary operator avoided to facilitate SAT optimization) */
    if (tmp_s32 > (sint32) MFX_MAXSINT16)
    {
        tmp_s32 = (sint32) MFX_MAXSINT16; /*overflow saturation*/
    }
    if (tmp_s32 < (sint32) MFX_MINSINT16)
    {
        tmp_s32 = (sint32) MFX_MINSINT16; /*underflow saturation*/
    }

    return ((sint16) tmp_s32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_s8_s16
 *
 * \brief Converts an input of type signed 8-bit to signed 16-bit with a specified radix as provided by the user
 *
 * Function returns a valid 16-bit converted value. Otherwise a saturated result will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -7 <= (c - a) <= 15
 *
 * \param   sint8  x        Integer value of the fixed-point operand.
 * \param   sint16 a        Radix point position of the fixed point operand.
 * \param   sint16 c        Radix point position of the fixed point result.
 * \return  sint16          The routine converts a scaled 8-bit integer to a scaled 16-bit integer.
 * \return                  The function returns the integer value of the fixed point conversion (C), determined
 * \return                  according to the above return-value equation. Return-value shall be saturated to
 * \return                  boundary values in the event of underflow or overflow. If it is necessary to round the
 * \return                  result of this equation, it is rounded toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_S8_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_ConvertP2_s8_s16_Inl(sint8 x, sint16 a, sint16 c)
{
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* Negative Product has to be negated and then shifted as right shifting of negative value will lead to loss of data
     Example : x = -120 = 0x88, shift_s32 = -4
     tmp_s32 = 0xFFFF FF88 >> 4 => tmp_s32 = 0x0FFF FFF8 = 268435448, which is incorrect. */

    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (x < 0)
        {
            /* Product is negated to retain the sign */
            tmp_u32 = (((uint32) (-(x))) >> ((uint32)(shift_s32)));
            tmp_s32 = -((sint32)tmp_u32 );
        }
        else
        {
            /* Type cast the product to 'unsigned' before shifting (to avoid MISRA warning).
            Re-cast back to 'signed' after shifting */
            tmp_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
            tmp_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = (((uint32) x) << ((uint32)(shift_s32)));
        tmp_s32 = (sint32)tmp_u32;
    }

    /* Saturation check (ternary operator avoided to facilitate SAT optimization) */
    if (tmp_s32 > (sint32) MFX_MAXSINT16)
    {
        tmp_s32 = (sint32) MFX_MAXSINT16; /* overflow saturation */
    }
    if (tmp_s32 < (sint32) MFX_MINSINT16)
    {
        tmp_s32 = (sint32) MFX_MINSINT16; /* underflow saturation */
    }

    return ((sint16) tmp_s32);
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_u16_u32
 *
 * \brief Converts an input of type unsigned 16-bit to unsigned 32-bit with a specified radix as provided by the user
 *
 * Function returns a valid 32-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -15 <= (c - a) <= 31
 *
 * \param   uint16 x          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint32            The routine converts a scaled 16-bit integer to a scaled 32-bit integer.The function
 *                            returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated to
 *                            boundary values in the event of underflow or
 * \return                    overflow. If it is necessary to round the result of this equation, it is rounded
 *                            toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_U16_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_ConvertP2_u16_u32_Inl(uint16 x, sint16 a, sint16 c)
{
    sint32 shift_s32;
    uint32 res_u32;
    uint32 tmp_s32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* x is type casted to uint32 and then shifted */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) x) >> (uint32)(shift_s32));
    }
    else
    {
        res_u32 = (((uint32) x) << (uint32)(shift_s32));

        /* To check whether overflow/underflow occurred due to left shift of the product */
        /*
        Examples:
        Valid Range                       Overflow condition
        x = 56  a = 5 c = 2                x = MAXUINT16=0xFFFF a = -9  c = 12
        x = 0x0000 0038  shift_s32 = -3    x = 0x0000 FFFF   shift_s32 = 18
        res_s32 = 0x0000 0007              res_s32 = 0xFFFC 0000
        tmp_s32   = 0x0000 0038            tmp_s32   = 0x0000 3FFF (!= x)
        res_s32 = 0x0000 0007              res_s32 = MAXUINT32
        */

        /* Shift back and check whether the product remains unchanged */
        tmp_s32 = ((res_u32) >> (uint32)(shift_s32));

        /* If it remains changed then an overflow/underflow has occured */
        if (tmp_s32 != x)
        {
            res_u32 = (uint32) MFX_MAXUINT32; /* Overflow Saturation */
        }
    }

    return ((uint32) (res_u32));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_u16_u8
 *
 * \brief Converts an input of type unsigned 16-bit to unsigned 8-bit with a specified radix as provided by the user
 *
 * Function returns a valid 8-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -15 <= (c - a) <= 7
 *
 * \param   uint16 x          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint8             The routine converts a scaled 16-bit integer to a scaled 32-bit integer.The function
 *                            returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated to
 *                            boundary values in the event of underflow or
 * \return                    overflow. If it is necessary to round the result of this equation, it is rounded
 *                            toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_U16_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_ConvertP2_u16_u8_Inl(uint16 x, sint16 a, sint16 c)
{
    uint32 tmp_u32;
    sint32 shift_s32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* x is type casted to uint32 to avoid MISRA warnings */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        tmp_u32 = (((uint32) x) >> (uint32)(shift_s32));
    }
    else
    {
        tmp_u32 = (((uint32) x) << (uint32)(shift_s32));
    }
    /* Overflow check */
    if (tmp_u32 > MFX_MAXUINT8_U)
    {
        tmp_u32 = MFX_MAXUINT8_U; /* overflow saturation */
    }

    return ((uint8) (tmp_u32));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_u32_u16
 *
 * \brief Converts an input of type unsigned 32-bit to unsigned 16-bit with a specified radix as provided by the user
 *
 * Function returns a valid 16-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -31 <= (c - a) <= 15
 *
 * \param   uint32 x          Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint16            The routine converts a scaled 16-bit integer to a scaled 32-bit integer.The function
 *                            returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated to
 *                            boundary values in the event of underflow or
 * \return                    overflow. If it is necessary to round the result of this equation, it is rounded
 *                            toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_ConvertP2_u32_u16_Inl(uint32 x, sint16 a, sint16 c)
{
    uint32 tmp_u32;
    sint32 shift_s32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* Overflow check, A sure case of overflow */
    if (((shift_s32) >= 0) && (x >= (uint32) MFX_MAXUINT16))
    {
        tmp_u32 = MFX_MAXUINT16; /* overflow saturation */
    }
    else
    {
        /*  x is type casted to uint32 and then shifted */
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
        }
        else
        {
            tmp_u32 = (((uint32) x) << ((uint32)(shift_s32)));
        }
    }

    /* Overflow Check */
    if (tmp_u32 >  MFX_MAXUINT16_U)
    {
        tmp_u32 =  MFX_MAXUINT16_U; /* overflow saturation */
    }

    return ((uint16) (tmp_u32));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Prv_ConvertP2_u8_u16
 *
 * \brief Converts an input of type unsigned 8-bit to unsigned 16-bit with a specified radix as provided by the user
 *
 * Function returns a valid 16-bit converted value. Otherwise a saturated value will be returned.
 *
 * Equation:
 * Result = 2^(c-a) * x
 * Valid range: -7 <= (c - a) <= 15
 *
 * \param   uint8 x           Integer value of the fixed-point operand.
 * \param   sint16 a          Radix point position of the fixed point operand.
 * \param   sint16 c          Radix point position of the fixed point result.
 * \return  uint16            The routine converts a scaled 16-bit integer to a scaled 32-bit integer.The function
 *                            returns the integer value of the fixed point conversion (C), determined
 * \return                    according to the above return-value equation. Return-value shall be saturated to boundary
 *                            values in the event of underflow or
 * \return                    overflow. If it is necessary to round the result of this equation, it is rounded
 *                            toward zero.
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_CONVERTP2_U8_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_ConvertP2_u8_u16_Inl(uint8 x, sint16 a, sint16 c)
{
    uint32 tmp_s32;
    sint32 shift_s32;

    /* Calculate the number of shifts for scaling */
    shift_s32 = (sint32) c - (sint32) a;

    /* x is type casted to uint32 to avoid MISRA warnings */
    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        tmp_s32 = ((uint32) (x) >> ((uint32)(shift_s32)));
    }
    else
    {
        tmp_s32 = ((uint32) (x) << ((uint32)(shift_s32)));
    }

    /* Overflow Check */
    if (tmp_s32 > (uint32) MFX_MAXUINT16)
    {
        tmp_s32 = (uint32) MFX_MAXUINT16; /* overflow saturation */
    }

    return ((uint16) (tmp_s32));
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Limit_s16
 *
 * \brief Limits a sint16 input value to lower or upper limit
 *
 * Case 1: If min_value less than or equal to max_value
 * Function returns input value if it is between lower an upper limit. Otherwise a limited value will be returned.
 * Case 2: If min_value greater than max_value
 * Default return value is Input value
 *
 * \param   sint16 value      Input value
 * \param   sint16 min_value  Lower limit
 * \param   sint16 max_value  Upper limit
 * \return  sint16            Return Input value if it is between min_value and max_value. If Input value is greater
 * \return                    than upper limit max_value will be returned. If Input value is less than lower limit
 * \return                    min_value will be returned. If min_value greater than max_value
 * \return                    then the default return value is Input value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_LIMIT_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Limit_s16_Inl(sint16 value, sint16 min_value, sint16 max_value)
{
    #if (MFX_ENABLED_AR_VERSION == MFX_AR42)
	return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));
    #elif (MFX_ENABLED_AR_VERSION == MFX_AR44)
    return ((value <= min_value) ? (min_value) : ((value >= max_value) ? (max_value) : (value)));
    #endif
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Limit_s32
 *
 * \brief Limits an sint32 input value to lower or upper limit
 *
 * Case 1: If min_value less than or equal to max_value
 * Function returns input value if it is between lower an upper limit. Otherwise a limited value will be returned.
 * Case 2: If min_value greater than max_value
 * Default return value is Input value
 *
 * \param  sint32 x_value     Input value
 * \param  sint32 min_value   Lower limit
 * \param  sint32 max_value   Upper limit
 * \return sint32             Return Input value if it is between min_value and max_value. If Input value is greater
 * \return                    than upper limit max_value will be returned. If Input value is less than lower limit
 * \return                    min_value will be returned. If min_value greater than max_value
 * \return                    then the default return value is Input value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_LIMIT_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Limit_s32_Inl(sint32 value, sint32 min_value, sint32 max_value)
{
    #if (MFX_ENABLED_AR_VERSION == MFX_AR42)
	return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));
    #elif (MFX_ENABLED_AR_VERSION == MFX_AR44)
    return ((value <= min_value) ? (min_value) : ((value >= max_value) ? (max_value) : (value)));
    #endif
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Limit_s8
 *
 * \brief Limits an sint8 input value to lower or upper limit
 *
 * Case 1: If min_value less than or equal to max_value
 * Function returns input value if it is between lower an upper limit. Otherwise a limited value will be returned.
 * Case 2: If min_value greater than max_value
 * Default return value is Input value
 *
 * \param   sint8 value      Input value
 * \param   sint8 min_value  Lower limit
 * \param   sint8 max_value  Upper limit
 * \return  sint8            Return Input value if it is between min_value and max_value. If Input value is greater
 * \return                   than upper limit max_value will be returned. If Input value is less than lower limit
 * \return                   min_value will be returned. If min_value greater than max_value
 * \return                   then the default return value is Input value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_LIMIT_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Limit_s8_Inl(sint8 value, sint8 min_value, sint8 max_value)
{
    #if (MFX_ENABLED_AR_VERSION == MFX_AR42)
	return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));
    #elif (MFX_ENABLED_AR_VERSION == MFX_AR44)
    return ((value <= min_value) ? (min_value) : ((value >= max_value) ? (max_value) : (value)));
    #endif
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Limit_u16
 *
 * \brief Limits an uint16 input value to lower or upper limit
 *
 * Case 1: If min_value less than or equal to max_value
 * Function returns input value if it is between lower an upper limit. Otherwise a limited value will be returned.
 * Case 2: If min_value greater than max_value
 * Default return value is Input value
 *
 * \param   uint16 value      Input value
 * \param   uint16 min_value  Lower limit
 * \param   uint16 max_value  Upper limit
 * \return  uint16            Return Input value if it is between min_value and max_value. If Input value is greater
 * \return                    than upper limit max_value will be returned. If Input value is less than lower limit
 * \return                    min_value will be returned. If min_value greater than max_value
 * \return                    then the default return value is Input value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_LIMIT_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Limit_u16_Inl(uint16 value, uint16 min_value, uint16 max_value)
{
    #if (MFX_ENABLED_AR_VERSION == MFX_AR42)
	return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));
    #elif (MFX_ENABLED_AR_VERSION == MFX_AR44)
    return ((value <= min_value) ? (min_value) : ((value >= max_value) ? (max_value) : (value)));
    #endif
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Limit_u32
 *
 * \brief Limits an uint32 input value to lower or upper limit
 *
 * Case 1: If min_value less than or equal to max_value
 * Function returns input value if it is between lower an upper limit. Otherwise a limited value will be returned.
 * Case 2: If min_value greater than max_value
 * Default return value is Input value
 *
 * \param  uint32 x_value     Input value
 * \param  uint32 min_value   Lower limit
 * \param  uint32 max_value   Upper limit
 * \return uint32             Return Input value if it is between min_value and max_value. If Input value is greater
 * \return                    than upper limit max_value will be returned. If Input value is less than lower limit
 * \return                    min_value will be returned. If min_value greater than max_value
 * \return                    then the default return value is Input value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_LIMIT_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Limit_u32_Inl(uint32 value, uint32 min_value, uint32 max_value)
{
    #if (MFX_ENABLED_AR_VERSION == MFX_AR42)
	return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));
    #elif (MFX_ENABLED_AR_VERSION == MFX_AR44)
    return ((value <= min_value) ? (min_value) : ((value >= max_value) ? (max_value) : (value)));
    #endif
}
#endif


/**
 **********************************************************************************************************************
 * Mfx_Limit_u8
 *
 * \brief Limits an uint8 input value to lower or upper limit
 *
 * Case 1: If min_value less than or equal to max_value
 * Function returns input value if it is between lower an upper limit. Otherwise a limited value will be returned.
 * Case 2: If min_value greater than max_value
 * Default return value is Input value
 *
 * \param  uint8 value      Input value
 * \param  uint8 min_value  Lower limit
 * \param  uint8 max_value  Upper limit
 * \return uint8            Return Input value if it is between min_value and max_value. If Input value is greater
 * \return                  than upper limit max_value will be returned. If Input value is less than lower limit
 * \return                  min_value will be returned. If min_value greater than max_value
 * \return                  then the default return value is Input value
 **********************************************************************************************************************
 */
#ifndef MFX_PRV_LIMIT_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Limit_u8_Inl(uint8 value, uint8 min_value, uint8 max_value)
{
    #if (MFX_ENABLED_AR_VERSION == MFX_AR42)
	return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));
    #elif (MFX_ENABLED_AR_VERSION == MFX_AR44)
    return ((value <= min_value) ? (min_value) : ((value >= max_value) ? (max_value) : (value)));
    #endif
}
#endif




/* MFX_LIMIT_INL_H */
#endif
