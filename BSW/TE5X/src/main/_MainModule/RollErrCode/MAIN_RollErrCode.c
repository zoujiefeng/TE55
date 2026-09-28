/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_Cfg.h"
#include "MAIN_RollErrCode.h"
#include "InvtAssert.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct MAIN_RECBufAttr MAIN_RECBufAttr;
typedef struct MAIN_RECBufCfg  MAIN_RECBufCfg;

struct MAIN_RECBufAttr{
    uint8  u8ErrorNum;
    uint8  u8ReadIndex;
    uint8  u8WriteIndex;
};

struct MAIN_RECBufCfg{
    uint8  u8BufSize;
    uint8 *pau8ErrCodeBuf;
    MAIN_RECBufAttr *ptBufAttr;
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MAIN_REC_MCU1_BUF_SIZE       (20u)
#define MAIN_REC_MCU2_BUF_SIZE       (20u)
#define MAIN_REC_ACM_BUF_SIZE        (20u)
#define MAIN_REC_EPS_BUF_SIZE        (20u)
#define MAIN_REC_PDU_BUF_SIZE        (20u)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint8 MAIN_au8Mcu1RollCodeBuf[MAIN_REC_MCU1_BUF_SIZE] = {0};
static uint8 MAIN_au8Mcu2RollCodeBuf[MAIN_REC_MCU2_BUF_SIZE] = {0};
static uint8 MAIN_au8ACMRollCodeBuf[MAIN_REC_ACM_BUF_SIZE]   = {0};
static uint8 MAIN_au8EPSRollCodeBuf[MAIN_REC_EPS_BUF_SIZE]   = {0};
static uint8 MAIN_au8PDURollCodeBuf[MAIN_REC_PDU_BUF_SIZE]   = {0};

static MAIN_RECBufAttr MAIN_atRECBufAttr[eMAIN_REC_BUF_NUM]   = {{0}};

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
static const MAIN_RECBufCfg MAIN_aktRECBufCfg[] = {
    {
        .u8BufSize      = sizeof(MAIN_au8Mcu1RollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8Mcu1RollCodeBuf[0],
        .ptBufAttr      = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_MCU1]
    },
    {
        .u8BufSize      = sizeof(MAIN_au8Mcu2RollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8Mcu2RollCodeBuf[0],
        .ptBufAttr      = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_MCU2]
    },
    {
        .u8BufSize      = sizeof(MAIN_au8ACMRollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8ACMRollCodeBuf[0],
        .ptBufAttr      = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_ACM]
    },
    {
        .u8BufSize      = sizeof(MAIN_au8EPSRollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8EPSRollCodeBuf[0],
        .ptBufAttr      = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_EPS]
    },
    {
        .u8BufSize      = sizeof(MAIN_au8PDURollCodeBuf),
        .pau8ErrCodeBuf = &MAIN_au8PDURollCodeBuf[0],
        .ptBufAttr      = &MAIN_atRECBufAttr[eMAIN_REC_BUF_IDX_PDU]
    },
};

ASSERT_ARRAY_SIZE(MAIN_aktRECBufCfg, eMAIN_REC_BUF_NUM);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/******************************************************************************
*  
* !FuncName    : MAIN_REC_vidClrErrCode  
* !Description : Clear error code.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void MAIN_REC_vidClrErrCode(const uint8 ku8BufNum)
{
   uint8 u8LocIdx;

   for (u8LocIdx = 0; u8LocIdx < MAIN_aktRECBufCfg[ku8BufNum].u8BufSize; u8LocIdx++)
   {
      MAIN_aktRECBufCfg[ku8BufNum].pau8ErrCodeBuf[u8LocIdx] = 0;
   }

   MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ErrorNum   = 0;
   MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex = 0;
}

/******************************************************************************
*  
* !FuncName    : MAIN_REC_vidSetErrCode  
* !Description : Set MCU error code, for Tx signal of CAN.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void MAIN_REC_vidSetErrCode(const uint8 ku8BufNum, const uint8 u8ErrCod)
{
   uint8 u8TempIndex;
   if (0 != u8ErrCod)
   {
      if (MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex < MAIN_aktRECBufCfg[ku8BufNum].u8BufSize)
      {
         u8TempIndex = MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex;
         MAIN_aktRECBufCfg[ku8BufNum].pau8ErrCodeBuf[u8TempIndex] = u8ErrCod;
         MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8WriteIndex     = u8TempIndex + 1;
         MAIN_aktRECBufCfg[ku8BufNum].ptBufAttr->u8ErrorNum       = u8TempIndex + 1;
      }
   }
}

/******************************************************************************
*  
* !FuncName    : MAIN_REC_u8RdErrCode  
* !Description : Read MCU error code for CAN Tx signal.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
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

