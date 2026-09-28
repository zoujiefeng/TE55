# 1 "bswcdd\\HARD\\HARD_Tab.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\HARD\\HARD_Tab.c"
# 33 "bswcdd\\HARD\\HARD_Tab.c"
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
# 34 "bswcdd\\HARD\\HARD_Tab.c" 2

# 1 "bswcdd\\HARD\\HARD_Tab.h" 1
# 52 "bswcdd\\HARD\\HARD_Tab.h"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 162 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section ".const" a
# 53 "bswcdd\\HARD\\HARD_Tab.h" 2



extern const sint16 HARDPTG_s16HardProfilSimu[256];




extern const uint16 HARD_u16VsiTemp5kNTCBkptC[24];
extern const uint8 HARD_u8VsiTemp5kNTCC[24];




extern const uint16 HARD_u16VsiTempCTNBkptC[19];
extern const uint8 HARD_u8VsiTempCTNC[19];




extern const uint16 HARD_u16TempCTPBkptC[22];
extern const uint8 HARD_u8TempCTPC[22];




extern const uint16 HARD_u16VsiTempNTCMotBkptC[26];
extern const uint16 HARD_u16VsiTempNTCMotC[26];


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 209 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section
# 84 "bswcdd\\HARD\\HARD_Tab.h" 2
# 36 "bswcdd\\HARD\\HARD_Tab.c" 2






# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 162 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section ".const" a
# 43 "bswcdd\\HARD\\HARD_Tab.c" 2




const sint16 HARDPTG_s16HardProfilSimu[256] =
{
   0,
   804,
   1608,
   2410,
   3212,
   4011,
   4808,
   5602,
   6393,
   7179,
   7962,
   8739,
   9512,
   10278,
   11039,
   11793,
   12539,
   13279,
   14010,
   14732,
   15446,
   16151,
   16846,
   17530,
   18204,
   18868,
   19519,
   20159,
   20787,
   21403,
   22005,
   22594,
   23170,
   23731,
   24279,
   24811,
   25329,
   25832,
   26319,
   26790,
   27245,
   27683,
   28105,
   28510,
   28898,
   29268,
   29621,
   29956,
   30273,
   30571,
   30852,
   31113,
   31356,
   31580,
   31785,
   31971,
   32137,
   32285,
   32412,
   32521,
   32609,
   32678,
   32728,
   32757,
   32767,
   32757,
   32728,
   32678,
   32609,
   32521,
   32412,
   32285,
   32137,
   31971,
   31785,
   31580,
   31356,
   31113,
   30852,
   30571,
   30273,
   29956,
   29621,
   29268,
   28898,
   28510,
   28105,
   27683,
   27245,
   26790,
   26319,
   25832,
   25329,
   24811,
   24279,
   23731,
   23170,
   22594,
   22005,
   21403,
   20787,
   20159,
   19519,
   18868,
   18204,
   17530,
   16846,
   16151,
   15446,
   14732,
   14010,
   13279,
   12539,
   11793,
   11039,
   10278,
   9512,
   8739,
   7962,
   7179,
   6393,
   5602,
   4808,
   4011,
   3212,
   2410,
   1608,
   804,
   0,
   -804,
   -1608,
   -2410,
   -3212,
   -4011,
   -4808,
   -5602,
   -6393,
   -7179,
   -7962,
   -8739,
   -9512,
   -10278,
   -11039,
   -11793,
   -12539,
   -13279,
   -14010,
   -14732,
   -15446,
   -16151,
   -16846,
   -17530,
   -18204,
   -18868,
   -19519,
   -20159,
   -20787,
   -21403,
   -22005,
   -22594,
   -23170,
   -23731,
   -24279,
   -24811,
   -25329,
   -25832,
   -26319,
   -26790,
   -27245,
   -27683,
   -28105,
   -28510,
   -28898,
   -29268,
   -29621,
   -29956,
   -30273,
   -30571,
   -30852,
   -31113,
   -31356,
   -31580,
   -31785,
   -31971,
   -32137,
   -32285,
   -32412,
   -32521,
   -32609,
   -32678,
   -32728,
   -32757,
   -32767,
   -32757,
   -32728,
   -32678,
   -32609,
   -32521,
   -32412,
   -32285,
   -32137,
   -31971,
   -31785,
   -31580,
   -31356,
   -31113,
   -30852,
   -30571,
   -30273,
   -29956,
   -29621,
   -29268,
   -28898,
   -28510,
   -28105,
   -27683,
   -27245,
   -26790,
   -26319,
   -25832,
   -25329,
   -24811,
   -24279,
   -23731,
   -23170,
   -22594,
   -22005,
   -21403,
   -20787,
   -20159,
   -19519,
   -18868,
   -18204,
   -17530,
   -16846,
   -16151,
   -15446,
   -14732,
   -14010,
   -13279,
   -12539,
   -11793,
   -11039,
   -10278,
   -9512,
   -8739,
   -7962,
   -7179,
   -6393,
   -5602,
   -4808,
   -4011,
   -3212,
   -2410,
   -1608,
   -804
};




const uint16 HARD_u16VsiTemp5kNTCBkptC[24] =
{

   303,
   349,
   405,
   471,
   551,
   646,
   759,
   1053,
   2255,
   2551,
   2842,
   3114,
   3357,
   3562,
   3725,
   3849,
   3898,
   3938,
   3972,
   4000,
   4022,
   4040,
   4054,
   4065
};

const uint8 HARD_u8VsiTemp5kNTCC[24] =
{
   240,
   230,
   220,
   210,
   200,
   190,
   180,
   160,
   110,
   100,
   90,
   80,
   70,
   60,
   50,
   40,
   35,
   30,
   25,
   20,
   15,
   10,
   5,
   0
};




const uint16 HARD_u16VsiTempCTNBkptC[19] =
{

   540,
   638,
   757,
   900,
   1070,
   1271,
   1502,
   1906,
   3103,
   3357,
   3568,
   3736,
   3861,
   3949,
   3982,
   4008,
   4029,
   4046,
   4059
};

const uint8 HARD_u8VsiTempCTNC[19] =
{
   190,
   180,
   170,
   160,
   150,
   140,
   130,
   115,
   75,
   65,
   55,
   45,
   35,
   25,
   20,
   15,
   10,
   5,
   0
};




const uint16 HARD_u16TempCTPBkptC[22] =

{
   134,
   173,
   226,
   297,
   342,
   394,
   456,
   527,
   609,
   705,
   815,
   1084,
   1423,
   2274,
   2725,
   3134,
   3312,
   3467,
   3600,
   3711,
   3875,
   3976
};

const uint8 HARD_u8TempCTPC[22] =
{
   165,
   155,
   145,
   135,
   130,
   125,
   120,
   115,
   110,
   105,
   100,
   90,
   80,
   60,
   50,
   40,
   35,
   30,
   25,
   20,
   10,
   0
};




const uint16 HARD_u16VsiTempNTCMotBkptC[26] =
{

   36,
   95,
   132,
   156,
   225,
   247,
   272,
   300,
   331,
   366,
   405,
   498,
   615,
   944,
   1429,
   3099,
   3377,
   3601,
   3693,
   3770,
   3836,
   3891,
   3972,
   4024,
   4056,
   4074
};

const uint16 HARD_u16VsiTempNTCMotC[26] =
{
   340,
   270,
   250,
   240,
   220,
   215,
   210,
   205,
   200,
   195,
   190,
   180,
   170,
   150,
   130,
   80,
   70,
   60,
   55,
   50,
   45,
   40,
   30,
   20,
   10,
   0
};


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 209 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section
# 539 "bswcdd\\HARD\\HARD_Tab.c" 2
