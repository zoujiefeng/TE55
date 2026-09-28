

#ifndef MFX_SAT_INL_H
#define MFX_SAT_INL_H


/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
 */


LOCAL_INLINE sint16 Mfx_Prv_Sat_s32_s16_Inl(sint32 x_value);
LOCAL_INLINE sint8 Mfx_Prv_Sat_s32_s8_Inl(sint32 x_value);
LOCAL_INLINE uint8 Mfx_Prv_Sat_s32_u8_Inl(sint32 x_value);
LOCAL_INLINE uint16 Mfx_Prv_Sat_s32_u16_Inl(sint32 x_value);
LOCAL_INLINE uint32 Mfx_Prv_Sat_s32_u32_Inl(sint32 x_value);
LOCAL_INLINE sint16 Mfx_Prv_Sat_u32_s16_Inl(uint32 x_value);
LOCAL_INLINE sint32 Mfx_Prv_Sat_u32_s32_Inl(uint32 x_value);
LOCAL_INLINE sint8 Mfx_Prv_Sat_u32_s8_Inl(uint32 x_value);
LOCAL_INLINE uint16 Mfx_Prv_Sat_u32_u16_Inl(uint32 x_value);
LOCAL_INLINE uint8 Mfx_Prv_Sat_u32_u8_Inl(uint32 x_value);

/*********************************************************************************************************************/


/*
 **********************************************************************************************************************
 * Implementations
 **********************************************************************************************************************
 */


#ifndef MFX_PRV_SAT_S32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sat_s32_s16_Inl(sint32 x_value)
{
    sint16 res_s16;

    if (x_value <= MFX_MAXSINT16)
    {
        if (x_value >= MFX_MINSINT16)
        {
            res_s16 = (sint16)x_value;
        }
        else
        {
            res_s16 = MFX_MINSINT16;
        }
    }
    else
    {
        res_s16 = MFX_MAXSINT16;
    }

    return(res_s16);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_S32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sat_s32_s8_Inl(sint32 x_value)
{
    sint8 res_s8;

    if (x_value <= MFX_MAXSINT8)
    {
        if (x_value >= MFX_MINSINT8)
        {
            res_s8 = (sint8)x_value;
        }
        else
        {
            res_s8 = MFX_MINSINT8;
        }
    }
    else
    {
        res_s8 = MFX_MAXSINT8;
    }

    return(res_s8);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_S32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sat_s32_u8_Inl(sint32 x_value)
{
    uint8 res_u8;

    if (x_value <= MFX_MAXUINT8)
    {
        if (x_value >= MFX_MINUINT8)
        {
            res_u8 = (uint8)x_value;
        }
        else
        {
            res_u8 = MFX_MINUINT8_U;
        }
    }
    else
    {
        res_u8 = MFX_MAXUINT8_U;
    }

    return(res_u8);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_S32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sat_s32_u16_Inl(sint32 x_value)
{
    uint16 res_u16;

    if (x_value <= MFX_MAXUINT16)
    {
        if (x_value >= MFX_MINUINT16)
        {
            res_u16 = (uint16)x_value;
        }
        else
        {
            res_u16 = MFX_MINUINT16_U;
        }
    }
    else
    {
        res_u16 = MFX_MAXUINT16_U;
    }

    return(res_u16);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_S32_U32_INL_REMAPPED
LOCAL_INLINE uint32 Mfx_Prv_Sat_s32_u32_Inl(sint32 x_value)
{
    uint32 res_u32;

    res_u32 = (x_value >= 0L) ? (uint32)x_value : MFX_MINUINT32;

    return(res_u32);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_U32_S16_INL_REMAPPED
LOCAL_INLINE sint16 Mfx_Prv_Sat_u32_s16_Inl(uint32 x_value)
{
	sint16 res_s16;

    res_s16 = (x_value <= MFX_MAXSINT16_U) ? (sint16)x_value : MFX_MAXSINT16;

    return(res_s16);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_U32_S32_INL_REMAPPED
LOCAL_INLINE sint32 Mfx_Prv_Sat_u32_s32_Inl(uint32 x_value)
{
	sint32 res_s32;

    res_s32 = (x_value <= MFX_MAXSINT32_U) ? (sint32)x_value : MFX_MAXSINT32;

    return(res_s32);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_U32_S8_INL_REMAPPED
LOCAL_INLINE sint8 Mfx_Prv_Sat_u32_s8_Inl(uint32 x_value)
{
	sint8 res_s8;

    res_s8 = (x_value <= MFX_MAXSINT8_U) ? (sint8)x_value : MFX_MAXSINT8;

    return(res_s8);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_U32_U16_INL_REMAPPED
LOCAL_INLINE uint16 Mfx_Prv_Sat_u32_u16_Inl(uint32 x_value)
{
	uint16 res_u16;

    res_u16 = (x_value <= MFX_MAXUINT16_U) ? (uint16)x_value : MFX_MAXUINT16_U;

    return(res_u16);
}
#endif

/*********************************************************************************************************************/

#ifndef MFX_PRV_SAT_U32_U8_INL_REMAPPED
LOCAL_INLINE uint8 Mfx_Prv_Sat_u32_u8_Inl(uint32 x_value)
{
	uint8 res_u8;

    res_u8 = (x_value <= MFX_MAXUINT8_U) ? (uint8)x_value : MFX_MAXUINT8_U;

    return(res_u8);
}
#endif


#endif /* MFX_SAT_INL_H */
