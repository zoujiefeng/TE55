# 1 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"



# 1 ".\\output\\inc/MAIN_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_Cfg.h" 1
# 2 ".\\output\\inc/MAIN_Cfg.h" 2
# 5 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c" 2
# 1 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h" 1






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
# 8 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h" 2




typedef enum{
    eMAIN_REC_BUF_IDX_MCU1 = 0,
    eMAIN_REC_BUF_IDX_MCU2,
    eMAIN_REC_BUF_IDX_ACM,
    eMAIN_REC_BUF_IDX_EPS,
    eMAIN_REC_BUF_IDX_PDU,
    eMAIN_REC_BUF_NUM
}MAIN_REC_BUF_INDEX;
# 32 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
extern void MAIN_REC_vidClrErrCode(const uint8 ku8BufNum);
# 42 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
extern void MAIN_REC_vidSetErrCode(const uint8 ku8BufNum, const uint8 u8ErrCod);
# 52 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
extern uint8 MAIN_REC_u8RdErrCode(const uint8 ku8BufNum);
# 6 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c" 2
# 1 ".\\output\\inc/InvtAssert.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\Assert\\InvtAssert.h" 1



void InvtAssert_vidFailed(const char *file, int line, const char *expr);
# 2 ".\\output\\inc/InvtAssert.h" 2
# 7 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c" 2




typedef struct MAIN_RECBufAttr MAIN_RECBufAttr;
typedef struct MAIN_RECBufCfg MAIN_RECBufCfg;

struct MAIN_RECBufAttr{
    uint8 u8ErrorNum;
    uint8 u8ReadIndex;
    uint8 u8WriteIndex;
};

struct MAIN_RECBufCfg{
    uint8 u8BufSize;
    uint8 *pau8ErrCodeBuf;
    MAIN_RECBufAttr *ptBufAttr;
};
# 38 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
static uint8 MAIN_au8Mcu1RollCodeBuf[(20u)] = {0};
static uint8 MAIN_au8Mcu2RollCodeBuf[(20u)] = {0};
static uint8 MAIN_au8ACMRollCodeBuf[(20u)] = {0};
static uint8 MAIN_au8EPSRollCodeBuf[(20u)] = {0};
static uint8 MAIN_au8PDURollCodeBuf[(20u)] = {0};

static MAIN_RECBufAttr MAIN_atRECBufAttr[eMAIN_REC_BUF_NUM] = {{0}};




static const MAIN_RECBufCfg MAIN_aktRECBufCfg[] = {
    {
        .u8BufSize = sizeof(MAIN_au8Mcu1RollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8Mcu1RollCodeBuf[0],
        .ptBufAttr = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_MCU1]
    },
    {
        .u8BufSize = sizeof(MAIN_au8Mcu2RollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8Mcu2RollCodeBuf[0],
        .ptBufAttr = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_MCU2]
    },
    {
        .u8BufSize = sizeof(MAIN_au8ACMRollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8ACMRollCodeBuf[0],
        .ptBufAttr = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_ACM]
    },
    {
        .u8BufSize = sizeof(MAIN_au8EPSRollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8EPSRollCodeBuf[0],
        .ptBufAttr = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_EPS]
    },
    {
        .u8BufSize = sizeof(MAIN_au8PDURollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8PDURollCodeBuf[0],
        .ptBufAttr = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_PDU]
    },
};

typedef char static_assert_array_size_mismatch[(sizeof(MAIN_aktRECBufCfg) / sizeof((MAIN_aktRECBufCfg)[0]) == (eMAIN_REC_BUF_NUM)) ? 1 : -1];
# 90 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
void MAIN_REC_vidClrErrCode(const uint8 ku8BufNum)
{
   uint8 u8LocIdx;

   for (u8LocIdx = 0; u8LocIdx < MAIN_aktRECBufCfg[ku8BufNum].u8BufSize; u8LocIdx++)
   {
      MAIN_aktRECBufCfg[ku8BufNum].pau8ErrCodeBuf[u8LocIdx] = 0;
   }

   MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ErrorNum = 0;
   MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex = 0;
}
# 111 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
void MAIN_REC_vidSetErrCode(const uint8 ku8BufNum, const uint8 u8ErrCod)
{
   uint8 u8TempIndex;
   if (0 != u8ErrCod)
   {
      if (MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex < MAIN_aktRECBufCfg[ku8BufNum].u8BufSize)
      {
         u8TempIndex = MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex;
         MAIN_aktRECBufCfg[ku8BufNum].pau8ErrCodeBuf[u8TempIndex] = u8ErrCod;
         MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex = u8TempIndex + 1;
         MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ErrorNum = u8TempIndex + 1;
      }
   }
}
# 134 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
uint8 MAIN_REC_u8RdErrCode(const uint8 ku8BufNum)
{
   uint8 u8LocErrCod;

   if((MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ReadIndex >= MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ErrorNum)
   || (MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ReadIndex >= MAIN_aktRECBufCfg[ku8BufNum].u8BufSize))
   {
      MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ReadIndex = 0;
   }

   u8LocErrCod = MAIN_aktRECBufCfg[ku8BufNum].pau8ErrCodeBuf[MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ReadIndex];

   MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ReadIndex++;

   return u8LocErrCod;
}
