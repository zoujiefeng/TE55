# 1 "bsw\\Bfx\\src\\Bfx_TstParityEven_u32_u8.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Bfx\\src\\Bfx_TstParityEven_u32_u8.c"
# 12 "bsw\\Bfx\\src\\Bfx_TstParityEven_u32_u8.c"
# 1 ".\\output\\inc/Bfx.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h"
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
# 17 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Types.h" 1






typedef unsigned long long Bfx_uint64;
# 18 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 1 ".\\output\\inc/Bfx_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h" 1
# 151 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h"
# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 31 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 32 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h" 2
    extern boolean Bfx_GetBit_u32u8_u8(uint32 Data, uint8 BitPn);

# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 36 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 37 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 155 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h" 2
# 2 ".\\output\\inc/Bfx_Cfg.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h" 1
# 103 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u16u8_Inl(uint16* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBit_u32u8_Inl(uint32* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBit_u8u8_Inl(uint8* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBitMask_u16u16_Inl(uint16* Data, uint16 Mask);
static __inline__ void Bfx_Prv_ClrBitMask_u32u32_Inl(uint32* Data, uint32 Mask);
static __inline__ void Bfx_Prv_ClrBitMask_u8u8_Inl(uint8* Data, uint8 Mask);
static __inline__ void Bfx_Prv_ClrBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_CopyBit_u16u8u16u8_Inl(uint16* DestinationData, uint8 DestinationPosition, uint16 SourceData,
                                                                                                 uint8 SourcePosition);
static __inline__ void Bfx_Prv_CopyBit_u32u8u32u8_Inl(uint32* DestinationData, uint8 DestinationPosition, uint32 SourceData,
                                                                                                 uint8 SourcePosition);
static __inline__ void Bfx_Prv_CopyBit_u8u8u8u8_Inl(uint8* DestinationData, uint8 DestinationPosition, uint8 SourceData,
                                                                                                 uint8 SourcePosition);
static __inline__ void Bfx_Prv_CopyBit_u64u8u64u8_Inl(Bfx_uint64* DestinationData, uint8 DestinationPosition,
                                                                          Bfx_uint64 SourceData, uint8 SourcePosition);
static __inline__ boolean Bfx_Prv_GetBit_u16u8_u8_Inl(uint16 Data, uint8 BitPn);
static __inline__ boolean Bfx_Prv_GetBit_u32u8_u8_Inl(uint32 Data, uint8 BitPn);
static __inline__ boolean Bfx_Prv_GetBit_u8u8_u8_Inl(uint8 Data, uint8 BitPn);
static __inline__ boolean Bfx_Prv_GetBit_u64u8_u8_Inl(Bfx_uint64 Data, uint8 BitPn);
static __inline__ uint16 Bfx_Prv_GetBits_u16u8u8_u16_Inl(uint16 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ uint32 Bfx_Prv_GetBits_u32u8u8_u32_Inl(uint32 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ uint8 Bfx_Prv_GetBits_u8u8u8_u8_Inl(uint8 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ Bfx_uint64 Bfx_Prv_GetBits_u64u8u8_u64_Inl(Bfx_uint64 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ void Bfx_Prv_PutBit_u16u8u8_Inl(uint16* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBit_u32u8u8_Inl(uint32* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBit_u8u8u8_Inl(uint8* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBit_u64u8u8_Inl(Bfx_uint64* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBits_u16u8u8u16_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint16 Pattern);
static __inline__ void Bfx_Prv_PutBits_u32u8u8u32_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint32 Pattern);
static __inline__ void Bfx_Prv_PutBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Pattern);
static __inline__ void Bfx_Prv_PutBits_u64u8u8u64_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, Bfx_uint64 Pattern);
static __inline__ void Bfx_Prv_PutBitsMask_u16u16u16_Inl(uint16* Data, uint16 Pattern, uint16 Mask);
static __inline__ void Bfx_Prv_PutBitsMask_u32u32u32_Inl(uint32* Data, uint32 Pattern, uint32 Mask);
static __inline__ void Bfx_Prv_PutBitsMask_u8u8u8_Inl(uint8* Data, uint8 Pattern, uint8 Mask);
static __inline__ void Bfx_Prv_PutBitsMask_u64u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Pattern, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_RotBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_SetBit_u16u8_Inl(uint16* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBit_u32u8_Inl(uint32* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBit_u8u8_Inl(uint8* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBitMask_u16u16_Inl(uint16* Data, uint16 Mask);
static __inline__ void Bfx_Prv_SetBitMask_u32u32_Inl(uint32* Data, uint32 Mask);
static __inline__ void Bfx_Prv_SetBitMask_u8u8_Inl(uint8* Data, uint8 Mask);
static __inline__ void Bfx_Prv_SetBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_SetBits_u16u8u8u8_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_SetBits_u32u8u8u8_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_SetBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_SetBits_u64u8u8u8_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_ShiftBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ToggleBitMask_u16u16_Inl(uint16* Data, uint16 Mask);
static __inline__ void Bfx_Prv_ToggleBitMask_u32u32_Inl(uint32* Data, uint32 Mask);
static __inline__ void Bfx_Prv_ToggleBitMask_u8u8_Inl(uint8* Data, uint8 Mask);
static __inline__ void Bfx_Prv_ToggleBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_ToggleBits_u16_Inl(uint16* Data);
static __inline__ void Bfx_Prv_ToggleBits_u32_Inl(uint32* Data);
static __inline__ void Bfx_Prv_ToggleBits_u8_Inl(uint8* Data);
static __inline__ void Bfx_Prv_ToggleBits_u64_Inl(Bfx_uint64* Data);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u16u16_u8_Inl(uint16 Data, uint16 Mask);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u32u32_u8_Inl(uint32 Data, uint32 Mask);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u8u8_u8_Inl(uint8 Data, uint8 Mask);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u16u16_u8_Inl(uint16 Data, uint16 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u32u32_u8_Inl(uint32 Data, uint32 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u8u8_u8_Inl(uint8 Data, uint8 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask);
static __inline__ boolean Bfx_Prv_TstParityEven_u16_u8_Inl(uint16 Data);
static __inline__ boolean Bfx_Prv_TstParityEven_u32_u8_Inl(uint32 Data);
static __inline__ boolean Bfx_Prv_TstParityEven_u8_u8_Inl(uint8 Data);
static __inline__ boolean Bfx_Prv_TstParityEven_u64_u8_Inl(Bfx_uint64 Data);
# 207 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u16u8_Inl(uint16* Data, uint8 BitPn)
{

    *Data &= ((uint16)(~(uint16)(1uL << BitPn)));
}
# 228 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u32u8_Inl(uint32* Data, uint8 BitPn)
{

    *Data &= ((uint32)(~(1uL << BitPn)));
}
# 249 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u8u8_Inl(uint8* Data, uint8 BitPn)
{

    *Data &= ((uint8)(~(uint8)(1u << BitPn)));
}
# 270 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn)
{

    *Data &= ((Bfx_uint64)(~(1uLL << BitPn)));
}
# 290 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u16u16_Inl(uint16* Data, uint16 Mask)
{
    *Data &= ((uint16)(~Mask));
}
# 309 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u32u32_Inl(uint32* Data, uint32 Mask)
{
    *Data &= ((uint32)(~Mask));
}
# 328 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u8u8_Inl(uint8* Data, uint8 Mask)
{
    *Data &= ((uint8)(~Mask));
}
# 347 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask)
{
    *Data &= ((Bfx_uint64)(~Mask));
}
# 370 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u16u8u16u8_Inl(uint16* DestinationData, uint8 DestinationPosition, uint16 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u16u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u16u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 394 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u32u8u32u8_Inl(uint32* DestinationData, uint8 DestinationPosition, uint32 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u32u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u32u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 418 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u8u8u8u8_Inl(uint8* DestinationData, uint8 DestinationPosition, uint8 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u8u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u8u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 441 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u64u8u64u8_Inl(Bfx_uint64* DestinationData, uint8 DestinationPosition,
                                                                           Bfx_uint64 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u64u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u64u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 465 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u16u8_u8_Inl(uint16 Data, uint8 BitPn)
{
    return ((((Data) & ((uint16) (1uL << BitPn))) != 0u));
}
# 487 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u32u8_u8_Inl(uint32 Data, uint8 BitPn)
{
    return (((Data) & ((uint32)(1uL << BitPn))) != 0uL);
}
# 509 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u8u8_u8_Inl(uint8 Data, uint8 BitPn)
{
    return (((Data) & ((uint8)(1uL << BitPn))) != 0u);
}
# 531 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u64u8_u8_Inl(Bfx_uint64 Data, uint8 BitPn)
{
    return (((Data) & ((Bfx_uint64)(1uLL << BitPn))) != 0uLL);
}
# 553 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ uint16 Bfx_Prv_GetBits_u16u8u8_u16_Inl(uint16 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((uint16)((Data >> BitStartPn) & ((0xffffu) >> (16uL - BitLn))));
}
# 575 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ uint32 Bfx_Prv_GetBits_u32u8u8_u32_Inl(uint32 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((Data >> BitStartPn) & ((0xffffffffuL) >> (32uL - BitLn)));
}
# 597 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ uint8 Bfx_Prv_GetBits_u8u8u8_u8_Inl(uint8 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((uint8)((Data >> BitStartPn) & ((0xffu) >> (8uL - BitLn))));
}
# 618 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ Bfx_uint64 Bfx_Prv_GetBits_u64u8u8_u64_Inl(Bfx_uint64 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((Data >> BitStartPn) & ((0xFFFFFFFFFFFFFFFFuLL) >> (64uLL - BitLn)));
}
# 641 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u16u8u8_Inl(uint16* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((uint16)~(1uL << BitPn))) | ((uint16)((uint16)tmp_u8 << BitPn)));
}
# 667 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u32u8u8_Inl(uint32* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((uint32)~(1uL << BitPn))) | ((uint32)((uint32)tmp_u8 << BitPn)));
}
# 693 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u8u8u8_Inl(uint8* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((uint8)~(1uL <<BitPn))) | ((uint8)(tmp_u8 << BitPn)));
}
# 719 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u64u8u8_Inl(Bfx_uint64* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((Bfx_uint64)~(1uLL << BitPn))) | ((Bfx_uint64)((Bfx_uint64)tmp_u8 << BitPn)));
}
# 747 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u16u8u8u16_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint16 Pattern)
{

    *Data = (((uint16) (~(uint16) (((0xffffu) >> (16uL - BitLn)) << BitStartPn))) & *Data) |
                                                (uint16)((((0xffffu) >> (16uL - BitLn)) & Pattern) << BitStartPn);
}
# 773 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u32u8u8u32_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint32 Pattern)
{

    *Data = (((uint32) (~(uint32)(((0xffffffffuL) >> (32uL - BitLn)) << BitStartPn))) & *Data) |
                                                (uint32)((((0xffffffffuL) >> (32uL - BitLn)) & Pattern) << BitStartPn);
}
# 799 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Pattern)
{

    *Data = (((uint8) (~(uint8)(((0xffu) >> (8uL - BitLn)) << BitStartPn))) & *Data) | (uint8)((((0xffu)
                                                                            >> (8uL - BitLn)) & Pattern) << BitStartPn);
}
# 825 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u64u8u8u64_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, Bfx_uint64 Pattern)
{

    *Data = (((Bfx_uint64) (~(Bfx_uint64)(((0xFFFFFFFFFFFFFFFFuLL) >> (64uLL - BitLn)) << BitStartPn))) & *Data) |
                                           (Bfx_uint64)((((0xFFFFFFFFFFFFFFFFuLL) >> (64uLL - BitLn)) & Pattern) << BitStartPn);
}
# 848 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u16u16u16_Inl(uint16* Data, uint16 Pattern, uint16 Mask)
{
    *Data = (*Data & ((uint16)~(Mask)) ) | (Pattern & Mask);
}
# 869 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u32u32u32_Inl(uint32* Data, uint32 Pattern, uint32 Mask)
{
    *Data = (*Data & (~(Mask)) ) | (Pattern & Mask);
}
# 890 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u8u8u8_Inl(uint8* Data, uint8 Pattern, uint8 Mask)
{
    *Data = (*Data & ((uint8)~(Mask)) ) | (Pattern & Mask);
}
# 911 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u64u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Pattern, Bfx_uint64 Mask)
{
    *Data = (*Data & (~(Mask)) ) | (Pattern & Mask);
}
# 931 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data = ((uint16) (*Data << ShiftCnt) | (uint16) (*Data >> (16u - ShiftCnt)));
}
# 951 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data = (*Data << ShiftCnt) | (*Data >> (32u - ShiftCnt));
}
# 971 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data = ((uint8) (*Data << ShiftCnt) | (uint8) (*Data >> (8u - ShiftCnt)));
}
# 991 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data = (*Data << ShiftCnt) | (*Data >> (64u - ShiftCnt));
}
# 1011 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data = ((uint16) (*Data >> ShiftCnt) | (uint16) (*Data << (16u - ShiftCnt)));
}
# 1031 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data = (*Data >> ShiftCnt) | (*Data << (32u - ShiftCnt));
}
# 1051 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data = ((uint8) (*Data >> ShiftCnt) | (uint8) (*Data << (8u - ShiftCnt)));
}
# 1071 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data = (*Data >> ShiftCnt) | (*Data << (64u - ShiftCnt));
}
# 1090 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u16u8_Inl(uint16* Data, uint8 BitPn)
{
    *Data |= ((uint16) (1uL << BitPn));
}
# 1110 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u32u8_Inl(uint32* Data, uint8 BitPn)
{
    *Data |= ((uint32)(1uL << BitPn));
}
# 1129 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u8u8_Inl(uint8* Data, uint8 BitPn)
{
    *Data |= ((uint8)(1uL << BitPn));
}
# 1149 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn)
{
    *Data |= ((Bfx_uint64)(1uLL << BitPn));
}
# 1168 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u16u16_Inl(uint16* Data, uint16 Mask)
{
    *Data |= Mask;
}
# 1187 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u32u32_Inl(uint32* Data, uint32 Mask)
{
    *Data |= Mask;
}
# 1206 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u8u8_Inl(uint8* Data, uint8 Mask)
{
    *Data |= Mask;
}
# 1225 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask)
{
    *Data |= Mask;
}
# 1246 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u16u8u8u8_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    uint16 mask_u16;



    mask_u16 = (uint16) ((0xffffu) >> BitStartPn);
    mask_u16 = (uint16) (mask_u16 << (16u - BitLn));
    mask_u16 = (uint16) (mask_u16 >> (16u - BitStartPn - BitLn));


    *Data |= mask_u16;


    if (Status == 0u)
    {
        *Data ^= mask_u16;
    }
}
# 1282 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u32u8u8u8_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    uint32 mask_u32;



    mask_u32 = (uint32) ((0xffffffffuL) >> BitStartPn);
    mask_u32 = (uint32) (mask_u32 << (32u - BitLn));
    mask_u32 = (uint32) (mask_u32 >> (32u - BitStartPn - BitLn));


    *Data |= mask_u32;


    if (Status == 0u)
    {
        *Data ^= mask_u32;
    }
}
# 1319 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    uint8 mask_u8;



    mask_u8 = (uint8) ((0xffu) >> BitStartPn);
    mask_u8 = (uint8) (mask_u8 << (8u - BitLn));
    mask_u8 = (uint8) (mask_u8 >> (8u - BitStartPn - BitLn));


    *Data |= mask_u8;


    if (Status == 0u)
    {
        *Data ^= mask_u8;
    }
}
# 1355 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u64u8u8u8_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    Bfx_uint64 mask_u64;



    mask_u64 = (Bfx_uint64) ((0xFFFFFFFFFFFFFFFFuLL) >> BitStartPn);
    mask_u64 = (Bfx_uint64) (mask_u64 << (64u - BitLn));
    mask_u64 = (Bfx_uint64) (mask_u64 >> (64u - BitStartPn - BitLn));


    *Data |= mask_u64;


    if (Status == 0u)
    {
        *Data ^= mask_u64;
    }
}
# 1390 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1409 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1428 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1447 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1466 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1485 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1504 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1523 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1542 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u16u16_Inl(uint16* Data, uint16 Mask)
{
    *Data ^= Mask;
}
# 1561 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u32u32_Inl(uint32* Data, uint32 Mask)
{
    *Data ^= Mask;
}
# 1579 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u8u8_Inl(uint8* Data, uint8 Mask)
{
    *Data ^= Mask;
}
# 1598 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask)
{
    *Data ^= Mask;
}
# 1616 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u16_Inl(uint16* Data)
{
    *Data ^= 0xFFFFu;
}
# 1634 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u32_Inl(uint32* Data)
{
    *Data ^= 0xFFFFFFFFuL;
}
# 1652 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u8_Inl(uint8* Data)
{
    *Data ^= 0xFFu;
}
# 1670 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u64_Inl(Bfx_uint64* Data)
{
    *Data ^= 0xFFFFFFFFFFFFFFFFuLL;
}
# 1691 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u16u16_u8_Inl(uint16 Data, uint16 Mask)
{
    return((Data & Mask) != 0uL);
}
# 1712 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u32u32_u8_Inl(uint32 Data, uint32 Mask)
{
    return ((Data & Mask) != 0uL);
}
# 1733 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u8u8_u8_Inl(uint8 Data, uint8 Mask)
{
    return ((Data & Mask) != 0uL);
}
# 1754 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask)
{
    return ((Data & Mask) != 0uLL);
}
# 1775 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u16u16_u8_Inl(uint16 Data, uint16 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1796 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u32u32_u8_Inl(uint32 Data, uint32 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1817 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u8u8_u8_Inl(uint8 Data, uint8 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1838 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1856 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
 static __inline__ boolean Bfx_Prv_TstParityEven_u16_u8_Inl(uint16 Data)
{
     uint16 tmp0_u16;
     uint16 tmp1_u16;
     boolean res_b;

     tmp0_u16 = Data;

     tmp1_u16 = (tmp0_u16 >> 8U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp1_u16 = (tmp0_u16 >> 4U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp1_u16 = (tmp0_u16 >> 2U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp1_u16 = (tmp0_u16 >> 1U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp0_u16 = (tmp0_u16 & 0x1U);
     res_b = (boolean)((tmp0_u16 == 0u) ? (1 != 0) : (0 != 0));

     return (res_b);
}
# 1895 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstParityEven_u32_u8_Inl(uint32 Data)
{
    uint32 tmp0_u32;
    uint32 tmp1_u32;
    boolean res_b;

    tmp0_u32 = Data;

    tmp1_u32 = (tmp0_u32 >> 16UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 8UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 4UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 2UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 1UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp0_u32 = (tmp0_u32 & 0x1UL);
    res_b = (boolean)((tmp0_u32 == 0uL) ? (1 != 0) : (0 != 0));

    return (res_b);
}
# 1937 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstParityEven_u8_u8_Inl(uint8 Data)
{
    uint8 tmp0_u8;
    uint8 tmp1_u8;
    boolean res_b;

    tmp0_u8 = Data;

    tmp1_u8 = (tmp0_u8 >> 4U);
    tmp0_u8 = (tmp0_u8 ^ tmp1_u8);

    tmp1_u8 = (tmp0_u8 >> 2U);
    tmp0_u8 = (tmp0_u8 ^ tmp1_u8);

    tmp1_u8 = (tmp0_u8 >> 1U);
    tmp0_u8 = (tmp0_u8 ^ tmp1_u8);

    tmp0_u8 = (tmp0_u8 & 0x1U);
    res_b = (boolean)((tmp0_u8 == 0u) ? (1 != 0) : (0 != 0));

    return (res_b);
}
# 1973 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstParityEven_u64_u8_Inl(Bfx_uint64 Data)
{
        Bfx_uint64 tmp0_u64;
        Bfx_uint64 tmp1_u64;
        boolean res_b;

        tmp0_u64 = Data;

        tmp1_u64 = (tmp0_u64 >> 32ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 16ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 8ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 4ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 2ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 1ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp0_u64 = (tmp0_u64 & 0x1ULL);
        res_b = (boolean)((tmp0_u64 == 0uLL) ? (1 != 0) : (0 != 0));

        return (res_b);
}
# 40 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 79 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h"
# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
    extern void Bfx_GetVersionInfo(Std_VersionInfoType* versionInfo);

# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 2 ".\\output\\inc/Bfx.h" 2
# 13 "bsw\\Bfx\\src\\Bfx_TstParityEven_u32_u8.c" 2
