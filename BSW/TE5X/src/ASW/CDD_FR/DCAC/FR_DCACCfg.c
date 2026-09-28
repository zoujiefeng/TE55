/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "FR_DCACCfg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint32 FR_au32BufCtr[FR_CFG_MAX_NUM - 1];
static FR_UserHead FR_xUserHeadRamBlock;
static FR_BufIndex FR_atBufIndex[6];

static volatile uint8 FR_u8OverflowProtectBuf1[100];
static FR_InputBuf    FR_tInputBuf;
static volatile uint8 FR_u8OverflowProtectBuf2[100];

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void FR_vidUpdateBufAddr(void);
static inline void FR_vidUpdateBufCtr(void);

#include "FR_DCACCallout.h"

static volatile const uint8 FR_InputEventSize1 = sizeof(FR_InputEvent1);
static volatile const uint8 FR_InputEventSize2 = sizeof(FR_InputEvent2);
static volatile const uint8 FR_InputEventSize3 = sizeof(FR_InputEvent3);

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
#ifdef FR_SAMPLE_PERIOD_1
   FR_EVENT_FUNC_ENTITY(1)
#endif
#ifdef FR_SAMPLE_PERIOD_2
   FR_EVENT_FUNC_ENTITY(2)
#endif
#ifdef FR_SAMPLE_PERIOD_3
   FR_EVENT_FUNC_ENTITY(3)
#endif
#ifdef FR_SAMPLE_PERIOD_4
   FR_EVENT_FUNC_ENTITY(4)
#endif
#ifdef FR_SAMPLE_PERIOD_5
   FR_EVENT_FUNC_ENTITY(5)
#endif
#ifdef FR_SAMPLE_PERIOD_6
   FR_EVENT_FUNC_ENTITY(6)
#endif

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
static const FR_BufCfg FR_aktBufCfgGroup[FR_CFG_MAX_NUM] = {
#ifdef FR_SAMPLE_PERIOD_1
   FR_INPUT_BUF_CFG_ENTITY(1),
#endif
#ifdef FR_SAMPLE_PERIOD_2
   FR_INPUT_BUF_CFG_ENTITY(2),
#endif
#ifdef FR_SAMPLE_PERIOD_3
   FR_INPUT_BUF_CFG_ENTITY(3),
#endif
#ifdef FR_SAMPLE_PERIOD_4
   FR_INPUT_BUF_CFG_ENTITY(4),
#endif
#ifdef FR_SAMPLE_PERIOD_5
   FR_INPUT_BUF_CFG_ENTITY(5),
#endif
#ifdef FR_SAMPLE_PERIOD_6
   FR_INPUT_BUF_CFG_ENTITY(6),
#endif
};

static const FR_UserHeadCfg FR_ktUserHeadCfg = {
   .pvUserBlockHandle      = &FR_xUserHeadRamBlock,
   .u16UserBlockSizeByByte = FR_HEAD_USER_SIZE,
   .u16HeadSize            = FR_HEAD_SIZE
};

static const FR_BankUserIf FR_ktUserIf = {
   .vidGetUserHeadInfo     = FR_vidGetUserHeadInfoCallout,
   .vidGetExtDataOfFixHead = FR_vidGetExtDataOfFixHead,

   .bFaultIsOccurred       = FR_bFaultIsOccurredCallout,
   .bExtStoreCondIsMet     = FR_bExtStoreCondIsMetCallout,
   .bUpdateReqIsAllowed    = FR_bUpdateReqIsAllowedCallout
};

#define FR_START_SEC_FIX_CFG_CONST_32
#include "FR_MemMap.h"
const FR_BankUserCfg FR_ktDCACBankUserCfg = {
   .u8BufNum                = FR_CFG_MAX_NUM,
   .u16BufTotalSize         = FR_EVENT_BUF_SIZE,
   .f32RunTimeBeforeFault_S = FR_RUN_TIME_BEFORE_FAULT_IN_SECOND,

   .pvInputBuf              = (void *)&FR_tInputBuf,
   .patIndexSet             = &FR_atBufIndex[0],

   .pktBufCfgSet            = &FR_aktBufCfgGroup[0],
   .pktBankUserIf           = &FR_ktUserIf,
   .pktUserHeadCfg          = &FR_ktUserHeadCfg
};
#define FR_STOP_SEC_FIX_CFG_CONST_32
#include "FR_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline void FR_vidUpdateBufAddr(void)
{
   uint32 u32TempAddr = 0;
#ifdef FR_SAMPLE_PERIOD_1
   FR_atBufIndex[0].u32BufAddr = u32TempAddr;
   u32TempAddr = (uint32)&(FR_tInputBuf.tSet.atBuf1[0]);
#endif
#ifdef FR_SAMPLE_PERIOD_2
   FR_atBufIndex[1].u32BufAddr = (uint32)&(FR_tInputBuf.tSet.atBuf2[0]) - u32TempAddr;
#endif
#ifdef FR_SAMPLE_PERIOD_3
   FR_atBufIndex[2].u32BufAddr = (uint32)&(FR_tInputBuf.tSet.atBuf3[0]) - u32TempAddr;
#endif
#ifdef FR_SAMPLE_PERIOD_4
   FR_atBufIndex[3].u32BufAddr = (uint32)&(FR_tInputBuf.tSet.atBuf4[0]) - u32TempAddr;
#endif
#ifdef FR_SAMPLE_PERIOD_5
   FR_atBufIndex[4].u32BufAddr = (uint32)&(FR_tInputBuf.tSet.atBuf5[0]) - u32TempAddr;
#endif
#ifdef FR_SAMPLE_PERIOD_6
   FR_atBufIndex[5].u32BufAddr = (uint32)&(FR_tInputBuf.tSet.atBuf6[0]) - u32TempAddr;
#endif
}

static inline void FR_vidUpdateBufCtr(void)
{
#ifdef FR_SAMPLE_PERIOD_1
   FR_atBufIndex[0].u32BufCtr = 0;
#endif
#ifdef FR_SAMPLE_PERIOD_2
   FR_atBufIndex[1].u32BufCtr = FR_au32BufCtr[0];
#endif
#ifdef FR_SAMPLE_PERIOD_3
   FR_atBufIndex[2].u32BufCtr = FR_au32BufCtr[1];
#endif
#ifdef FR_SAMPLE_PERIOD_4
   FR_atBufIndex[3].u32BufCtr = FR_au32BufCtr[2];
#endif
#ifdef FR_SAMPLE_PERIOD_5
   FR_atBufIndex[4].u32BufCtr = FR_au32BufCtr[3];
#endif
#ifdef FR_SAMPLE_PERIOD_6
   FR_atBufIndex[5].u32BufCtr = FR_au32BufCtr[4];
#endif
}

static inline void FR_vidUpdateBufCtr_1_(void)
{
#ifdef FR_SAMPLE_PERIOD_2
   FR_au32BufCtr[0]++;
#endif
#ifdef FR_SAMPLE_PERIOD_3
   FR_au32BufCtr[1]++;
#endif
#ifdef FR_SAMPLE_PERIOD_4
   FR_au32BufCtr[2]++;
#endif
#ifdef FR_SAMPLE_PERIOD_5
   FR_au32BufCtr[3]++;
#endif
#ifdef FR_SAMPLE_PERIOD_6
   FR_au32BufCtr[4]++;
#endif
}

static inline void FR_vidUpdateBufCtr_2_(void)
{
#ifdef FR_SAMPLE_PERIOD_2
   FR_au32BufCtr[0] = 0;
#endif
}

static inline void FR_vidUpdateBufCtr_3_(void)
{
#ifdef FR_SAMPLE_PERIOD_3
   FR_au32BufCtr[1] = 0;
#endif
}

static inline void FR_vidUpdateBufCtr_4_(void)
{
#ifdef FR_SAMPLE_PERIOD_4
   FR_au32BufCtr[2] = 0;
#endif
}

static inline void FR_vidUpdateBufCtr_5_(void)
{
#ifdef FR_SAMPLE_PERIOD_5
   FR_au32BufCtr[3] = 0;
#endif
}

static inline void FR_vidUpdateBufCtr_6_(void)
{
#ifdef FR_SAMPLE_PERIOD_6
   FR_au32BufCtr[4] = 0;
#endif
}
