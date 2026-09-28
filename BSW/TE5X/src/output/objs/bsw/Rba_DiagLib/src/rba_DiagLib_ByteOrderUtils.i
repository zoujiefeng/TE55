# 1 "bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.c"


# 1 ".\\output\\inc/rba_DiagLib.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h"
# 1 ".\\output\\inc/rba_DiagLib_Bits8.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits8.h" 1





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
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits8.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits8.h" 2







static __inline__ uint8 rba_DiagLib_Bit8Mask(uint8 pos, uint8 len)
{
    uint8 bit2shift = 1;
    return (((bit2shift << len) - 1u) << pos);
}

static __inline__ void rba_DiagLib_Bit8SetBitMask(uint8 *buffer, uint8 bitMask)
{
    *buffer |= bitMask;
}

static __inline__ void rba_DiagLib_Bit8ClearBitMask(uint8 *buffer, uint8 bitMask)
{
    *buffer &= ((uint8) (~bitMask));
}

static __inline__ void rba_DiagLib_Bit8MergeBitmask(uint8 *buffer, uint8 value)
{
    *buffer &= value;
}

static __inline__ void rba_DiagLib_Bit8SetBit(uint8 *buffer, uint8 bit_position)
{
    uint8 bit2shift = 1;
    *buffer |= ((uint8) (bit2shift << bit_position));
}

static __inline__ void rba_DiagLib_Bit8ClearBit(uint8 *buffer, uint8 bit_position)
{
    uint8 bit2shift = 1;
    *buffer &= ((uint8) (~((uint8) (bit2shift << bit_position))));
}

static __inline__ void rba_DiagLib_Bit8OverwriteBit(uint8 *buffer, uint8 bit_position, boolean will_bit_be_set)
{
    if (will_bit_be_set)
    {
        rba_DiagLib_Bit8SetBit(buffer, bit_position);
    }
    else
    {
        rba_DiagLib_Bit8ClearBit(buffer, bit_position);
    }
}

static __inline__ uint8 rba_DiagLib_Bit8GetSingleBit(uint8 value, uint8 bit_position)
{
    return (uint8) ((value >> (bit_position)) & 1u);
}
static __inline__ boolean rba_DiagLib_Bit8IsBitSet(uint8 value, uint8 bit_position)
{
    return (boolean) (rba_DiagLib_Bit8GetSingleBit(value, bit_position) != 0u);
}

static __inline__ uint8 rba_DiagLib_Bit8GetBits(uint8 value, uint8 bit_position, uint8 number_of_bits)
{
    uint8 bit2shift = 1;
    value = value >> bit_position;
    value = value % ((uint8) (bit2shift << number_of_bits));
    return value;
}

static __inline__ void rba_DiagLib_Bit8ClearBits(uint8 *value, uint8 bit_position, uint8 number_of_bits)
{
    uint8 bit2shift = 1;
    *value &= ((uint8) (~((uint8) ((((uint8) (bit2shift << number_of_bits)) - 1u) << bit_position))));
}

static __inline__ void rba_DiagLib_Bit8OverwriteBits(uint8 *value, uint8 bit_position, uint8 number_of_bits, uint8 newValue)
{
    uint8 bit2shift = 1;
    rba_DiagLib_Bit8ClearBits(value, bit_position, number_of_bits);
    *value |= ((uint8) ((newValue % ((uint8) (bit2shift << number_of_bits))) << bit_position));
}

static __inline__ void rba_DiagLib_Bit8ClearAll(uint8 *buffer)
{
    *buffer = 0u;
}
# 2 ".\\output\\inc/rba_DiagLib_Bits8.h" 2
# 12 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h" 2
# 1 ".\\output\\inc/rba_DiagLib_Bits16.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits16.h" 1





# 1 ".\\output\\inc/Std_Types.h" 1
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits16.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits16.h" 2







static __inline__ uint16 rba_DiagLib_Bit16Mask(uint8 pos, uint8 len)
{
    uint16 bit2shift = 1;
    return (((bit2shift << len) - 1u) << pos);
}

static __inline__ void rba_DiagLib_Bit16SetBitMask(uint16 *buffer, uint16 bitMask)
{
    *buffer |= bitMask;
}

static __inline__ void rba_DiagLib_Bit16ClearBitMask(uint16 *buffer, uint16 bitMask)
{
    *buffer &= ((uint16) (~bitMask));
}

static __inline__ void rba_DiagLib_Bit16MergeBitmask(uint16 *buffer, uint16 value)
{
    *buffer &= value;
}

static __inline__ void rba_DiagLib_Bit16SetBit(uint16 *buffer, uint8 bit_position)
{
    uint16 bit2shift = 1;
    *buffer |= ((uint16) (bit2shift << bit_position));
}

static __inline__ void rba_DiagLib_Bit16ClearBit(uint16 *buffer, uint8 bit_position)
{
    uint16 bit2shift = 1;
    *buffer &= ((uint16) (~((uint16) (bit2shift << bit_position))));
}

static __inline__ void rba_DiagLib_Bit16OverwriteBit(uint16 *buffer, uint8 bit_position, boolean will_bit_be_set)
{
    if (will_bit_be_set)
    {
        rba_DiagLib_Bit16SetBit(buffer, bit_position);
    }
    else
    {
        rba_DiagLib_Bit16ClearBit(buffer, bit_position);
    }
}

static __inline__ uint16 rba_DiagLib_Bit16GetSingleBit(uint16 value, uint8 bit_position)
{
    return (uint16) ((value >> bit_position) & 1u);
}

static __inline__ boolean rba_DiagLib_Bit16IsBitSet(uint16 value, uint8 bit_position)
{
    return (boolean) (rba_DiagLib_Bit16GetSingleBit(value, bit_position) != 0u);
}

static __inline__ uint16 rba_DiagLib_Bit16GetBits(uint16 value, uint8 bit_position, uint8 number_of_bits)
{
    uint16 bit2shift = 1;
    value = value >> bit_position;
    value = value % ((uint16) (bit2shift << number_of_bits));
    return value;
}

static __inline__ void rba_DiagLib_Bit16ClearBits(uint16 *value, uint8 bit_position, uint8 number_of_bits)
{
    uint16 bit2shift = 1;
    *value &= ((uint16) (~((uint16) ((((uint16) (bit2shift << number_of_bits)) - 1u) << bit_position))));
}

static __inline__ void rba_DiagLib_Bit16OverwriteBits(uint16 *value, uint8 bit_position, uint8 number_of_bits, uint16 newValue)
{
    uint16 bit2shift = 1;
    rba_DiagLib_Bit16ClearBits(value, bit_position, number_of_bits);
    *value |= ((uint16) ((newValue % ((uint16) (bit2shift << number_of_bits))) << bit_position));
}

static __inline__ void rba_DiagLib_Bit16ClearAll(uint16 *buffer)
{
    *buffer = 0u;
}
# 2 ".\\output\\inc/rba_DiagLib_Bits16.h" 2
# 13 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h" 2
# 1 ".\\output\\inc/rba_DiagLib_Bits32.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits32.h" 1





# 1 ".\\output\\inc/Std_Types.h" 1
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits32.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_Bits32.h" 2







static __inline__ uint32 rba_DiagLib_Bit32Mask(uint8 pos, uint8 len)
{
    uint32 bit2shift = 1;
    return (((bit2shift << len) - 1u) << pos);
}

static __inline__ void rba_DiagLib_Bit32SetBitMask(uint32 *buffer, uint32 bitMask)
{
    *buffer |= bitMask;
}

static __inline__ void rba_DiagLib_Bit32ClearBitMask(uint32 *buffer, uint32 bitMask)
{
    *buffer &= ((uint32) (~bitMask));
}

static __inline__ void rba_DiagLib_Bit32MergeBitmask(uint32 *buffer, uint32 value)
{
    *buffer &= value;
}

static __inline__ void rba_DiagLib_Bit32SetBit(uint32 *buffer, uint8 bit_position)
{
    uint32 bit2shift = 1;
    *buffer |= ((uint32) (bit2shift << bit_position));
}

static __inline__ void rba_DiagLib_Bit32ClearBit(uint32 *buffer, uint8 bit_position)
{
    uint32 bit2shift = 1;
    *buffer &= ((uint32) (~((uint32) (bit2shift << bit_position))));
}

static __inline__ void rba_DiagLib_Bit32OverwriteBit(uint32 *buffer, uint8 bit_position, boolean will_bit_be_set)
{
    if (will_bit_be_set)
    {
        rba_DiagLib_Bit32SetBit(buffer, bit_position);
    }
    else
    {
        rba_DiagLib_Bit32ClearBit(buffer, bit_position);
    }
}

static __inline__ uint32 rba_DiagLib_Bit32GetSingleBit(uint32 value, uint8 bit_position)
{
    return (uint32) ((value >> bit_position) & 1u);
}

static __inline__ boolean rba_DiagLib_Bit32IsBitSet(uint32 value, uint8 bit_position)
{
    return (boolean) (rba_DiagLib_Bit32GetSingleBit(value, bit_position) != 0u);
}

static __inline__ uint32 rba_DiagLib_Bit32GetBits(uint32 value, uint8 bit_position, uint8 number_of_bits)
{
    uint32 bit2shift = 1;
    value = value >> bit_position;
    value = value % ((uint32) (bit2shift << number_of_bits));
    return value;
}

static __inline__ void rba_DiagLib_Bit32ClearBits(uint32 *value, uint8 bit_position, uint8 number_of_bits)
{
    uint32 bit2shift = 1;
    *value &= ((uint32) (~((uint32) ((((uint32) (bit2shift << number_of_bits)) - 1u) << bit_position))));
}

static __inline__ void rba_DiagLib_Bit32OverwriteBits(uint32 *value, uint8 bit_position, uint8 number_of_bits, uint32 newValue)
{
    uint32 bit2shift = 1;
    rba_DiagLib_Bit32ClearBits(value, bit_position, number_of_bits);
    *value |= ((uint32) ((newValue % ((uint32) (bit2shift << number_of_bits))) << bit_position));
}

static __inline__ void rba_DiagLib_Bit32ClearAll(uint32 *buffer)
{
    *buffer = 0u;
}
# 2 ".\\output\\inc/rba_DiagLib_Bits32.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h" 2
# 1 ".\\output\\inc/rba_DiagLib_ByteOrderUtils.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h" 1





# 1 ".\\output\\inc/Std_Types.h" 1
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h" 2
# 1 ".\\output\\inc/rba_BswSrv.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv_Cfg.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2
# 69 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2
extern void* rba_BswSrv_MemCopy(void* xDest_pv, const void* xSrc_pcv, uint32 numBytes_u32);
extern void* rba_BswSrv_MemSet(void* xDest_pv, sint32 xPattern_s32, uint32 numBytes_u32);
extern sint32 rba_BswSrv_MemCompare(const void* xSrc1_pcv, const void* xSrc2_pcv, uint32 numBytes_u32);

# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv_MemMap.h" 1
# 75 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2



static __inline__ uint32 rba_BswSrv_CountLeadingZero32(uint32 Input_u32);
static __inline__ uint32 rba_BswSrv_ByteOrderSwap32(uint32 Input_u32);
static __inline__ uint16 rba_BswSrv_ByteOrderSwap16(uint16 Input_u16);

static __inline__ void rba_BswSrv_MemCopy32(uint32* xDest_pu32, const uint32* xSrc_pcu32, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemCopy16(uint16* xDest_pu16, const uint16* xSrc_pcu16, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemCopy8(uint8* xDest_pu8, const uint8* xSrc_pcu8, uint32 numBytes_u32);

static __inline__ uint32 rba_BswSrv_MemCompare32(const uint32* xSrc1_pcu32, const uint32* xSrc2_pcu32, uint32 numBytes_u32);
static __inline__ uint32 rba_BswSrv_MemCompare16(const uint16* xSrc1_pcu16, const uint16* xSrc2_pcu16, uint32 numBytes_u32);
static __inline__ uint32 rba_BswSrv_MemCompare8(const uint8* xSrc1_pcu8, const uint8* xSrc2_pcu8, uint32 numBytes_u32);

static __inline__ void rba_BswSrv_MemSet32(uint32* xDest_pu32, uint32 xPattern_u32, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemSet16(uint16* xDest_pu16, uint32 xPattern_u32, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemSet8(uint8* xDest_pu8, uint32 xPattern_u32, uint32 numBytes_u32);
# 119 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_CountLeadingZero32(uint32 Input_u32)
{
    uint32 numLeadingZero_u32;


    numLeadingZero_u32 = 32;
    while(Input_u32 != 0u)
    {
        Input_u32 >>= 1;
        numLeadingZero_u32--;
    }

    return numLeadingZero_u32;
}
# 148 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_ByteOrderSwap32(uint32 Input_u32)
{
    uint32 retVal_u32;

    retVal_u32 = (Input_u32 << 24) | ((Input_u32 & 0xFF00u) << 8) | ((Input_u32 & 0x00FF0000u) >> 8) | (Input_u32 >> 24);

    return retVal_u32;
}
# 171 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint16 rba_BswSrv_ByteOrderSwap16(uint16 Input_u16)
{
    uint16 retVal_u16;

    retVal_u16 = ((Input_u16 & 0x00FFu) << 8) | ((Input_u16 & 0xFF00u) >> 8);

    return retVal_u16;
}
# 225 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemCopy32(uint32* xDest_pu32, const uint32* xSrc_pcu32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0u; ctLoop_u32 < (numBytes_u32 / 4u); ctLoop_u32++)
    {
        *xDest_pu32 = *xSrc_pcu32;
        xDest_pu32++;
        xSrc_pcu32++;
    }

    return;
}
# 254 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemCopy16(uint16* xDest_pu16, const uint16* xSrc_pcu16, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0u; ctLoop_u32 < (numBytes_u32 / 2u); ctLoop_u32++)
    {
        *xDest_pu16 = *xSrc_pcu16;
        xDest_pu16++;
        xSrc_pcu16++;
    }

    return;
}
# 281 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemCopy8(uint8* xDest_pu8, const uint8* xSrc_pcu8, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < numBytes_u32; ctLoop_u32++)
    {
        *xDest_pu8 = *xSrc_pcu8;
        xDest_pu8++;
        xSrc_pcu8++;
    }

    return;
}
# 349 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_MemCompare32(const uint32* xSrc1_pcu32, const uint32* xSrc2_pcu32, uint32 numBytes_u32)
{
    uint32 stEqual_u32 = 0u;
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0u; ctLoop_u32 < (numBytes_u32 / 4u); ctLoop_u32++)
    {

        if (*xSrc1_pcu32++ != *xSrc2_pcu32++)
        {
            stEqual_u32 = 1u;
            break;
        }
    }
    return stEqual_u32;
}
# 383 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_MemCompare16(const uint16* xSrc1_pcu16, const uint16* xSrc2_pcu16, uint32 numBytes_u32)
{
    uint32 stEqual_u32 = 0u;
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < (numBytes_u32 / 2u); ctLoop_u32++)
    {

        if (*xSrc1_pcu16++ != *xSrc2_pcu16++)
        {
            stEqual_u32 = 1u;
            break;
        }
    }
    return stEqual_u32;
}
# 416 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_MemCompare8(const uint8* xSrc1_pcu8, const uint8* xSrc2_pcu8, uint32 numBytes_u32)
{
    uint32 stEqual_u32 = 0u;
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < numBytes_u32; ctLoop_u32++)
    {

        if (*xSrc1_pcu8++ != *xSrc2_pcu8++)
        {
            stEqual_u32 = 1u;
            break;
        }
    }
    return stEqual_u32;
}
# 478 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemSet32(uint32* xDest_pu32, uint32 xPattern_u32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < (numBytes_u32 / 4u); ctLoop_u32++)
    {
        *xDest_pu32 = xPattern_u32;
        xDest_pu32++;
    }
    return;
}
# 505 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemSet16(uint16* xDest_pu16, uint32 xPattern_u32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < (numBytes_u32 / 2u); ctLoop_u32++)
    {
        *xDest_pu16 = (uint16)xPattern_u32;
        xDest_pu16++;
    }
    return;
}
# 530 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemSet8(uint8* xDest_pu8, uint32 xPattern_u32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < numBytes_u32; ctLoop_u32++)
    {
        *xDest_pu8 = (uint8)xPattern_u32;
        xDest_pu8++;
    }
    return;
}
# 2 ".\\output\\inc/rba_BswSrv.h" 2
# 9 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h" 2


# 1 ".\\output\\inc/rba_DiagLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_DiagLib_MemMap.h" 2
# 12 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h" 2
# 36 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h"
static __inline__ uint16 rba_DiagLib_ByteOrderUtils_SwapByteOrderS(uint16 val)
{
    return rba_BswSrv_ByteOrderSwap16(val);
}

static __inline__ uint32 rba_DiagLib_ByteOrderUtils_SwapByteOrderL(uint32 val)
{
    return rba_BswSrv_ByteOrderSwap32(val);
}

static __inline__ boolean rba_DiagLib_ByteOrderUtils_IsBigEndian(void)
{
    boolean isBigEndian = (1 != 0);

    isBigEndian = (0 != 0);

    return isBigEndian;
}

static __inline__ uint16 rba_DiagLib_ByteOrderUtils_Htons(uint16 val)
{
    uint16 ret = val;

    ret = rba_DiagLib_ByteOrderUtils_SwapByteOrderS(val);

    return ret;
}

static __inline__ uint32 rba_DiagLib_ByteOrderUtils_Htonl(uint32 val)
{
    uint32 ret = val;

    ret = rba_DiagLib_ByteOrderUtils_SwapByteOrderL(val);

    return ret;
}

static __inline__ uint16 rba_DiagLib_ByteOrderUtils_Ntohs(uint16 val)
{
    uint16 ret = val;

    ret = rba_DiagLib_ByteOrderUtils_SwapByteOrderS(val);

    return ret;
}

static __inline__ uint32 rba_DiagLib_ByteOrderUtils_Ntohl(uint32 val)
{
    uint32 ret = val;

    ret = rba_DiagLib_ByteOrderUtils_SwapByteOrderL(val);

    return ret;
}



boolean rba_DiagLib_ByteOrderUtils_Dummy(void);


# 1 ".\\output\\inc/rba_DiagLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_DiagLib_MemMap.h" 2
# 97 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.h" 2
# 2 ".\\output\\inc/rba_DiagLib_ByteOrderUtils.h" 2
# 15 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h" 2
# 1 ".\\output\\inc/rba_DiagLib_MemUtils.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_MemUtils.h" 1





# 1 ".\\output\\inc/Std_Types.h" 1
# 7 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_MemUtils.h" 2
# 1 ".\\output\\inc/rba_BswSrv.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_MemUtils.h" 2






# 1 ".\\output\\inc/rba_DiagLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_DiagLib_MemMap.h" 2
# 15 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_MemUtils.h" 2





static __inline__ void rba_DiagLib_MemUtils_MemCpy(uint8* xDest_p, const uint8* xSrc_pc, uint32 numBytes_s32)
{

    (void) rba_BswSrv_MemCopy(xDest_p, xSrc_pc, numBytes_s32);
}

static __inline__ void rba_DiagLib_MemUtils_MemSet(uint8* xDest_pv, sint32 xPattern_u32, uint32 numBytes_s32)
{

    (void) rba_BswSrv_MemSet(xDest_pv, xPattern_u32, numBytes_s32);
}

static __inline__ sint32 rba_DiagLib_MemUtils_MemCmp(const uint8* xSrc1_pc, const uint8* xSrc2_pc, uint32 numBytes_s32)
{

    return rba_BswSrv_MemCompare(xSrc1_pc, xSrc2_pc, numBytes_s32);
}


# 1 ".\\output\\inc/rba_DiagLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\integration\\rba_DiagLib_MemMap.h" 2
# 2 ".\\output\\inc/rba_DiagLib_MemMap.h" 2
# 40 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_MemUtils.h" 2
# 2 ".\\output\\inc/rba_DiagLib_MemUtils.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\api\\rba_DiagLib.h" 2
# 2 ".\\output\\inc/rba_DiagLib.h" 2
# 4 "bsw\\Rba_DiagLib\\src\\rba_DiagLib_ByteOrderUtils.c" 2



boolean rba_DiagLib_ByteOrderUtils_Dummy(void){
    return (1 != 0);
}
