# 1 "bsw\\Rba_MemLib\\src\\rba_MemLib.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Rba_MemLib\\src\\rba_MemLib.c"


# 1 ".\\output\\inc/rba_MemLib.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h" 1





# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h" 2
# 1 ".\\output\\inc/rba_MemLib_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\rba_MemLib_Cfg.h" 1
# 2 ".\\output\\inc/rba_MemLib_Cfg.h" 2
# 8 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h" 2
# 32 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_GetTimerUs(void);
# 54 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_ConvertTimerTicksToUs(uint32 tiTicks_u32);
# 65 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_CalcDiffInTimerTicks(uint32 tiCurr_u32, uint32 tiRef_u32);
# 81 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_MemCopy(uint8 const *src_pcu8, uint8 *dst_pu8, uint32 length_u32);
# 90 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_MemSet(uint8 * dst_pu8, uint8 value_u8, uint32 length_u32);
# 102 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ boolean rba_MemLib_MemCompareBfr(uint8 const * bfr1_pcu8, uint8 const * bfr2_pcu8, uint32 length_u32);
# 113 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ boolean rba_MemLib_MemCompareValue(uint8 const * bfr_pcu8, uint8 value_u8, uint32 length_u32);
# 126 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_Max(uint32 a_u32, uint32 b_u32);






static __inline__ uint32 rba_MemLib_Min(uint32 a_u32, uint32 b_u32);
# 143 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_LimHigh(uint32 val_u32, uint32 thres_u32, uint32 LimRes_u32);
# 154 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_LimLow(uint32 val_u32, uint32 thres_u32, uint32 LimRes_u32);
# 165 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_MemCopyU8U8(uint8 const * src_pcu8, uint8 * dst_pu8, uint32 length_u32);
# 174 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_MemCopyU32U32(uint32 const * src_pcu32, uint32 * dst_pu32, uint32 length_u32);
# 184 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_Cnv4ByteBigEndToNative_u32(uint8 const * input_pcu8);
# 194 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_Cnv3ByteBigEndToNative_u32(uint8 const * input_pcu8);
# 204 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint16 rba_MemLib_Cnv2ByteBigEndToNative_u16(uint8 const * input_pcu8);
# 214 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_Cnv4ByteLtlEndToNative_u32(uint8 const* input_pcu8);
# 224 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint32 rba_MemLib_Cnv3ByteLtlEndToNative_u32(uint8 const * input_pcu8);
# 234 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ uint16 rba_MemLib_Cnv2ByteLtlEndToNative_u16(uint8 const* input_pcu8);
# 248 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_CnvNativeToBigEnd4Byte(uint32 input_u32, uint8 * output_pu8);
# 258 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_CnvNativeToBigEnd3Byte(uint32 input_u32, uint8 * output_pu8);
# 268 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_CnvNativeToBigEnd2Byte(uint16 input_u16, uint8 * output_pu8);
# 278 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_CnvNativeToLtlEnd4Byte(uint32 input_u32, uint8 *output_pu8);
# 288 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_CnvNativeToLtlEnd3Byte(uint32 input_u32, uint8 * output_pu8);
# 298 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
static __inline__ void rba_MemLib_CnvNativeToLtlEnd2Byte(uint16 input_u16, uint8 *output_pu8);
# 320 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
# 1 ".\\output\\inc/rba_MemLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 1
# 41 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 42 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_MemLib_MemMap.h" 2
# 321 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h" 2


extern void rba_MemLib_UpdateTimerUs(void);
# 334 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
extern uint32 rba_MemLib_GetRandom_u32(uint16 nrRange_u16);







extern void rba_MemLib_SetRandomSeed(uint32 nrSeed_u32);






extern boolean rba_MemLib_IsRandomSeeded(void);




# 1 ".\\output\\inc/rba_MemLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 1
# 45 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 46 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_MemLib_MemMap.h" 2
# 355 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h" 2
# 401 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h"
# 1 ".\\output\\inc/rba_MemLib_Inl.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h" 1





# 1 ".\\output\\inc/Std_Types.h" 1
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
# 1 ".\\output\\inc/rba_MemLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 1
# 41 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 42 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_MemLib_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h" 2


extern void rba_MemLib_MemCopy_Provided (uint8 const * src_pcu8, uint8 * dst_pu8, uint32 length_u32);


extern void rba_MemLib_MemSet_Provided (uint8 * dst_pu8, uint8 value_u8, uint32 length_u32);


extern boolean rba_MemLib_MemCompareBfr_Provided(uint8 const * bfr1_pcu8,uint8 const * bfr2_pcu8,uint32 length_u32);


extern boolean rba_MemLib_MemCompareValue_Provided(uint8 const * bfr_pcu8, uint8 value_u8, uint32 length_u32);



# 1 ".\\output\\inc/rba_MemLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 1
# 45 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 46 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_MemLib_MemMap.h" 2
# 33 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h" 2



static __inline__ uint32 rba_MemLib_Callout_GetTimerTicks(void);
static __inline__ uint32 rba_MemLib_Callout_ConvertTimerTicksToUs(uint32 tiTicks_u32);
static __inline__ uint32 rba_MemLib_Callout_ConvertUsToTimerTicks(uint32 tiUs_u32);
# 48 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
# 1 ".\\output\\inc/rba_MemLib_Cfg_Callouts.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_Cfg_Callouts.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_Cfg_Callouts.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_Cfg_Callouts.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_Cfg_Callouts.h"
static __inline__ uint32 rba_MemLib_Callout_GetTimerTicks(void)
{
    return(0uL);
}







static __inline__ uint32 rba_MemLib_Callout_ConvertTimerTicksToUs(uint32 tiTicks_u32)
{
    (void)tiTicks_u32;
    return(0uL);
}







static __inline__ uint32 rba_MemLib_Callout_ConvertUsToTimerTicks(uint32 tiUs_u32)
{
    (void)tiUs_u32;
    return(0uL);
}
# 2 ".\\output\\inc/rba_MemLib_Cfg_Callouts.h" 2
# 49 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h" 2
# 138 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_MemCopy(uint8 const *src_pcu8, uint8 *dst_pu8, uint32 length_u32)

{
    rba_MemLib_MemCopy_Provided(src_pcu8,dst_pu8,length_u32);
}
# 157 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_MemSet(uint8 * dst_pu8, uint8 value_u8, uint32 length_u32)

{
    rba_MemLib_MemSet_Provided(dst_pu8,value_u8,length_u32);
}
# 178 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ boolean rba_MemLib_MemCompareBfr(uint8 const * bfr1_pcu8, uint8 const * bfr2_pcu8, uint32 length_u32)

{
    boolean flg;
    flg=rba_MemLib_MemCompareBfr_Provided(bfr1_pcu8,bfr2_pcu8,length_u32);
    return(flg);
}
# 203 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ boolean rba_MemLib_MemCompareValue(uint8 const * bfr_pcu8, uint8 value_u8, uint32 length_u32)

{
    boolean flg;
    flg=rba_MemLib_MemCompareValue_Provided(bfr_pcu8,value_u8,length_u32);
    return(flg);
}
# 228 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_GetTimerUs(void)
{



    return(0uL);

}
# 244 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_ConvertTimerTicksToUs(uint32 tiTicks_u32)
{
    uint32 tiDiff_u32;


    tiDiff_u32 = (tiTicks_u32 & (0x0uL));


    tiDiff_u32 = rba_MemLib_Callout_ConvertTimerTicksToUs(tiDiff_u32);

    return tiDiff_u32;
}
# 266 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_CalcDiffInTimerTicks(uint32 tiCurr_u32, uint32 tiRef_u32)
{
    uint32 tiDiff_u32;


    tiDiff_u32 = tiCurr_u32 - tiRef_u32;



    return (tiDiff_u32 & (0x0uL));
}
# 286 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_Max(uint32 a_u32, uint32 b_u32)
{
    uint32 result_u32;

    if(a_u32 > b_u32)
    {
        result_u32 = a_u32;
    }
    else
    {
        result_u32 = b_u32;
    }

    return(result_u32);
}






static __inline__ uint32 rba_MemLib_Min(uint32 a_u32, uint32 b_u32)
{
    uint32 result_u32;

    if(a_u32 < b_u32)
    {
        result_u32 = a_u32;
    }
    else
    {
        result_u32 = b_u32;
    }

    return(result_u32);
}







static __inline__ uint32 rba_MemLib_LimHigh(uint32 val_u32, uint32 thres_u32, uint32 LimRes_u32)
{
    uint32 result_u32;

    if(val_u32 >= thres_u32)
    {
        result_u32 = LimRes_u32;
    }
    else
    {
        result_u32 = val_u32;
    }

    return(result_u32);
}
# 352 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_LimLow(uint32 val_u32, uint32 thres_u32, uint32 LimRes_u32)
{
    uint32 result_u32;

    if(val_u32 <= thres_u32)
    {
        result_u32 = LimRes_u32;
    }
    else
    {
        result_u32 = val_u32;
    }

    return(result_u32);
}
# 376 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_MemCopyU8U8(uint8 const * src_pcu8, uint8 * dst_pu8, uint32 length_u32)
{
    uint8 const * curSrc_pcu8;
    uint8 const * endSrc_pcu8;
    uint8 * curDst_pu8;

    endSrc_pcu8 = src_pcu8 + length_u32;
    curDst_pu8 = dst_pu8;

    for(curSrc_pcu8 = src_pcu8; curSrc_pcu8 < endSrc_pcu8; curSrc_pcu8++)
    {
        *curDst_pu8 = *curSrc_pcu8;
        curDst_pu8++;
    }
}
# 399 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_MemCopyU32U32(uint32 const * src_pcu32, uint32 * dst_pu32, uint32 length_u32)
{
    uint32 const * curSrc_pcu32;
    uint32 const * endSrc_pcu32;
    uint32 * curDst_pu32;

    endSrc_pcu32 = src_pcu32 + (length_u32 >> 2u);
    curDst_pu32 = dst_pu32;

    for(curSrc_pcu32 = src_pcu32; curSrc_pcu32 < endSrc_pcu32; curSrc_pcu32++)
    {
        *curDst_pu32 = *curSrc_pcu32;
        curDst_pu32++;
    }
}
# 425 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_Cnv4ByteBigEndToNative_u32(uint8 const * input_pcu8)
{
    uint32 output_u32;

    output_u32 = (((uint32)(input_pcu8[0])) << 24uL);
    output_u32 |= (((uint32)(input_pcu8[1])) << 16uL);
    output_u32 |= (((uint32)(input_pcu8[2])) << 8uL);
    output_u32 |= (((uint32)(input_pcu8[3])) << 0uL);


    return(output_u32);
}
# 446 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_Cnv3ByteBigEndToNative_u32(uint8 const * input_pcu8)
{
    uint32 output_u32;

    output_u32 = (((uint32)(input_pcu8[0])) << 16uL);
    output_u32 |= (((uint32)(input_pcu8[1])) << 8uL);
    output_u32 |= (((uint32)(input_pcu8[2])) << 0uL);


    return(output_u32);
}
# 466 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint16 rba_MemLib_Cnv2ByteBigEndToNative_u16(uint8 const * input_pcu8)
{
    uint32 output_u32;

    output_u32 = (((uint32)(input_pcu8[0])) << 8uL);
    output_u32 |= (((uint32)(input_pcu8[1])) << 0uL);


    return((uint16)output_u32);
}
# 485 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_CnvNativeToBigEnd4Byte(uint32 input_u32, uint8 * output_pu8)
{

    output_pu8[3] = (uint8)(input_u32 >> 0uL);
    output_pu8[2] = (uint8)(input_u32 >> 8uL);
    output_pu8[1] = (uint8)(input_u32 >> 16uL);
    output_pu8[0] = (uint8)(input_u32 >> 24uL);

    return;
}
# 504 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_CnvNativeToBigEnd3Byte(uint32 input_u32, uint8 * output_pu8)
{

    output_pu8[2] = (uint8)(input_u32 >> 0uL);
    output_pu8[1] = (uint8)(input_u32 >> 8uL);
    output_pu8[0] = (uint8)(input_u32 >> 16uL);

    return;
}
# 523 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_CnvNativeToBigEnd2Byte(uint16 input_u16, uint8 * output_pu8)
{

    output_pu8[1] = (uint8)((uint32)input_u16 >> 0uL);
    output_pu8[0] = (uint8)((uint32)input_u16 >> 8uL);

    return;
}
# 543 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_Cnv4ByteLtlEndToNative_u32(uint8 const* input_pcu8)
{
    uint32 output_u32;

    output_u32 = (((uint32)(input_pcu8[0])) << 0u);
    output_u32 |= (((uint32)(input_pcu8[1])) << 8u);
    output_u32 |= (((uint32)(input_pcu8[2])) << 16u);
    output_u32 |= (((uint32)(input_pcu8[3])) << 24u);


    return(output_u32);
}
# 564 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint32 rba_MemLib_Cnv3ByteLtlEndToNative_u32(uint8 const * input_pcu8)
{
    uint32 output_u32;

    output_u32 = (((uint32)(input_pcu8[0])) << 0u);
    output_u32 |= (((uint32)(input_pcu8[1])) << 8u);
    output_u32 |= (((uint32)(input_pcu8[2])) << 16u);


    return(output_u32);
}
# 584 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ uint16 rba_MemLib_Cnv2ByteLtlEndToNative_u16(uint8 const* input_pcu8)
{
    uint32 output_u32;

    output_u32 = (((uint32)(input_pcu8[0])) << 0uL);
    output_u32 |= (((uint32)(input_pcu8[1])) << 8uL);


    return((uint16)output_u32);
}
# 605 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_CnvNativeToLtlEnd4Byte(uint32 input_u32, uint8 *output_pu8)
{

    output_pu8[0] = (uint8)(input_u32 >> 0uL);
    output_pu8[1] = (uint8)(input_u32 >> 8uL);
    output_pu8[2] = (uint8)(input_u32 >> 16uL);
    output_pu8[3] = (uint8)(input_u32 >> 24uL);

    return;
}
# 624 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_CnvNativeToLtlEnd3Byte(uint32 input_u32, uint8 * output_pu8)
{

    output_pu8[0] = (uint8)(input_u32 >> 0uL);
    output_pu8[1] = (uint8)(input_u32 >> 8uL);
    output_pu8[2] = (uint8)(input_u32 >> 16uL);

    return;
}
# 642 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
static __inline__ void rba_MemLib_CnvNativeToLtlEnd2Byte(uint16 input_u16, uint8 *output_pu8)
{

    output_pu8[0] = (uint8)((uint32)input_u16 >> 0uL);
    output_pu8[1] = (uint8)((uint32)input_u16 >> 8uL);

    return;
}
# 2 ".\\output\\inc/rba_MemLib_Inl.h" 2
# 402 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\api\\rba_MemLib.h" 2
# 2 ".\\output\\inc/rba_MemLib.h" 2
# 4 "bsw\\Rba_MemLib\\src\\rba_MemLib.c" 2
# 1 ".\\output\\inc/rba_MemLib_Cfg.h" 1
# 5 "bsw\\Rba_MemLib\\src\\rba_MemLib.c" 2
# 28 "bsw\\Rba_MemLib\\src\\rba_MemLib.c"
# 1 ".\\output\\inc/rba_MemLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 1
# 41 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 42 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_MemLib_MemMap.h" 2
# 29 "bsw\\Rba_MemLib\\src\\rba_MemLib.c" 2
# 58 "bsw\\Rba_MemLib\\src\\rba_MemLib.c"
# 1 ".\\output\\inc/rba_MemLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 1
# 45 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 46 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\integration\\rba_MemLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_MemLib_MemMap.h" 2
# 59 "bsw\\Rba_MemLib\\src\\rba_MemLib.c" 2
