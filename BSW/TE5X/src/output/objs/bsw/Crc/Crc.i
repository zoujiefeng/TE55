# 1 "bsw\\Crc\\Crc.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Crc\\Crc.c"







# 1 "bsw\\Crc\\Crc.h" 1
# 11 "bsw\\Crc\\Crc.h"
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
# 12 "bsw\\Crc\\Crc.h" 2

# 1 "bsw\\Crc\\Crc_Cfg.h" 1
# 97 "bsw\\Crc\\Crc_Cfg.h"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 84 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 98 "bsw\\Crc\\Crc_Cfg.h" 2

extern const uint8 CRC_8_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 103 "bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 84 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 107 "bsw\\Crc\\Crc_Cfg.h" 2

extern const uint8 CRC_8H2F_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 112 "bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 75 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 116 "bsw\\Crc\\Crc_Cfg.h" 2

extern const uint16 CRC_16_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 79 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 121 "bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 125 "bsw\\Crc\\Crc_Cfg.h" 2

extern const uint32 CRC_32_REV_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 130 "bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 134 "bsw\\Crc\\Crc_Cfg.h" 2

extern const uint32 CRC_32P4_REV_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 139 "bsw\\Crc\\Crc_Cfg.h" 2
# 14 "bsw\\Crc\\Crc.h" 2
# 30 "bsw\\Crc\\Crc.h"
typedef union
{
    const uint8* b8Ptr;
    const uint16* b16Ptr;
}Crc_DataType;
# 59 "bsw\\Crc\\Crc.h"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 60 "bsw\\Crc\\Crc.h" 2

extern void Crc_GetVersionInfo(Std_VersionInfoType * const VersionInfo);
extern uint8 Crc_CalculateCRC8(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall);
extern uint8 Crc_CalculateCRC8H2F(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall);
extern uint16 Crc_CalculateCRC16(const uint8* Crc_DataPtr, uint32 Crc_Length, uint16 Crc_StartValue16, boolean Crc_IsFirstCall);
extern uint32 Crc_CalculateCRC32(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall);
extern uint32 Crc_CalculateCRC32P4(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall);


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 52 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 53 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 70 "bsw\\Crc\\Crc.h" 2
# 9 "bsw\\Crc\\Crc.c" 2
# 17 "bsw\\Crc\\Crc.c"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 18 "bsw\\Crc\\Crc.c" 2
# 31 "bsw\\Crc\\Crc.c"
void Crc_GetVersionInfo(Std_VersionInfoType * const VersionInfo)
{
    if(VersionInfo != ((void *)0))
    {

         VersionInfo->vendorID = (6U);
         VersionInfo->moduleID = (201U);
         VersionInfo->sw_major_version = (8U);
         VersionInfo->sw_minor_version = (0U);
         VersionInfo->sw_patch_version = (0U);
    }
}
# 70 "bsw\\Crc\\Crc.c"
uint8 Crc_CalculateCRC8(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall)
{
    uint32 index;
    uint8 result = Crc_StartValue8;
    uint8 crcTemp;
    if(Crc_DataPtr != ((void *)0))
    {
        crcTemp = (Crc_IsFirstCall != (0 != 0)) ? ((uint8)(0xFFU)) : (Crc_StartValue8^ (0xFFU));

        for (index = 0U; index < Crc_Length; ++index)
        {

            crcTemp ^= ((uint8)Crc_DataPtr[index]) ;

            crcTemp = CRC_8_Tbl[crcTemp];
        }
        result = crcTemp ^ (0xFFU);
    }

    return (result);
}
# 118 "bsw\\Crc\\Crc.c"
uint8 Crc_CalculateCRC8H2F(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall)
{
    uint32 index;
    uint8 result = Crc_StartValue8;
    uint8 crcTemp;
    if(Crc_DataPtr != ((void *)0))
    {
        crcTemp = (Crc_IsFirstCall != (0 != 0)) ? ((uint8)(0xFFU)) : (Crc_StartValue8^ (0xFFU));

        for (index = 0U; index < Crc_Length; ++index)
        {

            crcTemp ^= ((uint8)Crc_DataPtr[index]) ;

            crcTemp = CRC_8H2F_Tbl[crcTemp];
        }
        result = crcTemp ^ (0xFFU);
    }

    return (result);
}
# 167 "bsw\\Crc\\Crc.c"
uint16 Crc_CalculateCRC16(const uint8* Crc_DataPtr, uint32 Crc_Length, uint16 Crc_StartValue16, boolean Crc_IsFirstCall)
{
    uint32 index;
    uint16 result = Crc_StartValue16;
    uint16 crcTemp;
    if(Crc_DataPtr != ((void *)0))
    {
        crcTemp = (Crc_IsFirstCall != (0 != 0)) ? ((uint16)(0xFFFFU)) : (Crc_StartValue16^ (0U));

        for (index = 0U; index < Crc_Length; ++index)
        {

            crcTemp ^= ((uint16)Crc_DataPtr[index]) << (8U);

            crcTemp = (crcTemp << ((8U))) ^ CRC_16_Tbl[(crcTemp >> (8U)) & (0xFFU)];
        }
        result = crcTemp ^ (0U);
    }

    return (result);
}
# 220 "bsw\\Crc\\Crc.c"
uint32 Crc_CalculateCRC32(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall)
{
    uint32 index;
    uint32 result = Crc_StartValue32;
    uint32 crcTemp;
    if(Crc_DataPtr != ((void *)0))
    {
        crcTemp = (Crc_IsFirstCall != (0 != 0)) ? ((uint32)(0xFFFFFFFFUL)) : (Crc_StartValue32^ (0xFFFFFFFFUL));

        for (index = 0U; index < Crc_Length; ++index)
        {

            crcTemp ^= ((uint32)Crc_DataPtr[index]) ;

            crcTemp = (crcTemp >> ((8U))) ^ CRC_32_REV_Tbl[(crcTemp ) & (0xFFU)];
        }
        result = crcTemp ^ (0xFFFFFFFFUL);
    }

    return (result);
}
# 273 "bsw\\Crc\\Crc.c"
uint32 Crc_CalculateCRC32P4(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall)
{
    uint32 index;
    uint32 result = Crc_StartValue32;
    uint32 crcTemp;
    if(Crc_DataPtr != ((void *)0))
    {
        crcTemp = (Crc_IsFirstCall != (0 != 0)) ? ((uint32)(0xFFFFFFFFUL)) : (Crc_StartValue32^ (0xFFFFFFFFUL));

        for (index = 0U; index < Crc_Length; ++index)
        {

            crcTemp ^= ((uint32)Crc_DataPtr[index]) ;

            crcTemp = (crcTemp >> ((8U))) ^ CRC_32P4_REV_Tbl[(crcTemp ) & (0xFFU)];
        }
        result = crcTemp ^ (0xFFFFFFFFUL);
    }

    return (result);
}



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 52 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 53 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 298 "bsw\\Crc\\Crc.c" 2
