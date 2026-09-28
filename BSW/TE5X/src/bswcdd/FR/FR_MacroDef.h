#ifndef __FR_MACRO_DEF_H_
#define __FR_MACRO_DEF_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
#define FR_HEAD_SIZE          (sizeof(FR_UserHead) + 128)  /* 128 = Fix:32 + Index:96 */
#define FR_EVENT_BUF_SIZE     (FR_NVM_BANK_SIZE - FR_HEAD_SIZE)

#ifdef FR_SAMPLE_PERIOD_6

#define FR_EVENT_BUF_REMAIN_SIZE6  FR_EVENT_BUF_SIZE
#define FR_FRAME_6_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE6) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_6 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_6 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE * FR_SAMPLE_PERIOD_6 / FR_SAMPLE_PERIOD_3) +\
 (FR_FRAME_4_SIZE * FR_SAMPLE_PERIOD_6 / FR_SAMPLE_PERIOD_4) +\
 (FR_FRAME_5_SIZE * FR_SAMPLE_PERIOD_6 / FR_SAMPLE_PERIOD_5) +\
 (FR_FRAME_6_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE5  (FR_EVENT_BUF_REMAIN_SIZE6 - FR_FRAME_6_SIZE * FR_FRAME_6_NUM)
#define FR_FRAME_5_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE5) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_3) +\
 (FR_FRAME_4_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_4) +\
 (FR_FRAME_5_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE4  (FR_EVENT_BUF_REMAIN_SIZE5 - FR_FRAME_5_SIZE * FR_FRAME_5_NUM)
#define FR_FRAME_4_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE4) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_3) +\
 (FR_FRAME_4_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE3  (FR_EVENT_BUF_REMAIN_SIZE4 - FR_FRAME_4_SIZE * FR_FRAME_4_NUM)
#define FR_FRAME_3_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE3) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE2  (FR_EVENT_BUF_REMAIN_SIZE3 - FR_FRAME_3_SIZE * FR_FRAME_3_NUM)
#define FR_FRAME_2_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE2) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_2 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE1  (FR_EVENT_BUF_REMAIN_SIZE2 - FR_FRAME_2_SIZE * FR_FRAME_2_NUM)
#define FR_FRAME_1_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE1) / \
((FR_FRAME_1_SIZE)))

#elif defined FR_SAMPLE_PERIOD_5

#define FR_EVENT_BUF_REMAIN_SIZE5  FR_EVENT_BUF_SIZE
#define FR_FRAME_5_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE5) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_3) +\
 (FR_FRAME_4_SIZE * FR_SAMPLE_PERIOD_5 / FR_SAMPLE_PERIOD_4) +\
 (FR_FRAME_5_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE4  (FR_EVENT_BUF_REMAIN_SIZE5 - FR_FRAME_5_SIZE * FR_FRAME_5_NUM)
#define FR_FRAME_4_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE4) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_3) +\
 (FR_FRAME_4_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE3  (FR_EVENT_BUF_REMAIN_SIZE4 - FR_FRAME_4_SIZE * FR_FRAME_4_NUM)
#define FR_FRAME_3_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE3) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE2  (FR_EVENT_BUF_REMAIN_SIZE3 - FR_FRAME_3_SIZE * FR_FRAME_3_NUM)
#define FR_FRAME_2_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE2) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_2 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE1  (FR_EVENT_BUF_REMAIN_SIZE2 - FR_FRAME_2_SIZE * FR_FRAME_2_NUM)
#define FR_FRAME_1_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE1) / \
((FR_FRAME_1_SIZE)))

#elif defined FR_SAMPLE_PERIOD_4

#define FR_EVENT_BUF_REMAIN_SIZE4  FR_EVENT_BUF_SIZE
#define FR_FRAME_4_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE4) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE * FR_SAMPLE_PERIOD_4 / FR_SAMPLE_PERIOD_3) +\
 (FR_FRAME_4_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE3  (FR_EVENT_BUF_REMAIN_SIZE4 - FR_FRAME_4_SIZE * FR_FRAME_4_NUM)
#define FR_FRAME_3_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE3) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE2  (FR_EVENT_BUF_REMAIN_SIZE3 - FR_FRAME_3_SIZE * FR_FRAME_3_NUM)
#define FR_FRAME_2_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE2) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_2 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE1  (FR_EVENT_BUF_REMAIN_SIZE2 - FR_FRAME_2_SIZE * FR_FRAME_2_NUM)
#define FR_FRAME_1_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE1) / \
((FR_FRAME_1_SIZE)))

#elif defined FR_SAMPLE_PERIOD_3

#define FR_EVENT_BUF_REMAIN_SIZE3  FR_EVENT_BUF_SIZE
#define FR_FRAME_3_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE3) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE * FR_SAMPLE_PERIOD_3 / FR_SAMPLE_PERIOD_2) +\
 (FR_FRAME_3_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE2  (FR_EVENT_BUF_REMAIN_SIZE3 - FR_FRAME_3_SIZE * FR_FRAME_3_NUM)
#define FR_FRAME_2_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE2) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_2 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE1  (FR_EVENT_BUF_REMAIN_SIZE2 - FR_FRAME_2_SIZE * FR_FRAME_2_NUM)
#define FR_FRAME_1_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE1) / \
((FR_FRAME_1_SIZE)))

#elif defined FR_SAMPLE_PERIOD_2

#define FR_EVENT_BUF_REMAIN_SIZE2  FR_EVENT_BUF_SIZE
#define FR_FRAME_2_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE2) / \
((FR_FRAME_1_SIZE * FR_SAMPLE_PERIOD_2 / FR_SAMPLE_PERIOD_1) +\
 (FR_FRAME_2_SIZE)))

#define FR_EVENT_BUF_REMAIN_SIZE1  (FR_EVENT_BUF_REMAIN_SIZE2 - FR_FRAME_2_SIZE * FR_FRAME_2_NUM)
#define FR_FRAME_1_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE1) / \
((FR_FRAME_1_SIZE)))

#elif defined FR_SAMPLE_PERIOD_1

#define FR_EVENT_BUF_REMAIN_SIZE1  FR_EVENT_BUF_SIZE
#define FR_FRAME_1_NUM      \
((FR_EVENT_BUF_REMAIN_SIZE1) / \
((FR_FRAME_1_SIZE)))

#endif

#define __FR_INPUT_BUF_TYPE(sType, u16Period)    sType ## u16Period
#define _FR_INPUT_BUF_TYPE(sType, u16Period)     __FR_INPUT_BUF_TYPE(sType, u16Period)
#define FR_INPUT_BUF_TYPE(u8CfgId)               _FR_INPUT_BUF_TYPE(FR_InputEvent, u8CfgId)

#define __FR_FUNC_TYPE(sType, u16Period)         sType ## u16Period
#define _FR_FUNC_TYPE(sType, u16Period)          __FR_FUNC_TYPE(sType, u16Period)

#define FR_GET_EVENT_FUNC_TYPE(u8CfgId)          _FR_FUNC_TYPE(FR_vidGetCustomEvent_,  u8CfgId)
#define FR_GET_EVENT_CALLOUT_FUNC_TYPE(u8CfgId)  _FR_FUNC_TYPE(FR_vidGetEventCallout_, u8CfgId)

#define FR_EVENT_FUNC_ENTITY(u8CfgId) \
static inline void FR_vidUpdateBufCtr_##u8CfgId##_(void);\
static void FR_GET_EVENT_FUNC_TYPE(u8CfgId)(const uint32 ku32IndexInBuf);\
static void FR_GET_EVENT_FUNC_TYPE(u8CfgId)(const uint32 ku32IndexInBuf)\
{\
   FR_vidUpdateBufCtr_##u8CfgId##_();\
   FR_GET_EVENT_CALLOUT_FUNC_TYPE(u8CfgId)(ku32IndexInBuf);\
}

#define FR_INPUT_BUF_CFG_ENTITY(u8CfgId)  \
   {\
      .u16FPS            = 1000000 / FR_SAMPLE_PERIOD_##u8CfgId,\
      .u8BufId           = u8CfgId - 1,\
      .u16EventNum       = FR_FRAME_##u8CfgId##_NUM,\
      .u16EventSize      = sizeof(FR_INPUT_BUF_TYPE(u8CfgId)),\
      .u16Period_us      = FR_SAMPLE_PERIOD_##u8CfgId,\
      \
      .vidGetEvent       = FR_GET_EVENT_FUNC_TYPE(u8CfgId),\
   }

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef union FR_InputBuf{
   uint8 au8Data[FR_EVENT_BUF_SIZE];
   struct{
#ifdef FR_SAMPLE_PERIOD_1
      FR_InputEvent1 atBuf1[FR_FRAME_1_NUM];
#endif
#ifdef FR_SAMPLE_PERIOD_2
      FR_InputEvent2 atBuf2[FR_FRAME_2_NUM];
#endif
#ifdef FR_SAMPLE_PERIOD_3
      FR_InputEvent3 atBuf3[FR_FRAME_3_NUM];
#endif
#ifdef FR_SAMPLE_PERIOD_4
      FR_InputEvent4 atBuf4[FR_FRAME_4_NUM];
#endif
#ifdef FR_SAMPLE_PERIOD_5
      FR_InputEvent5 atBuf5[FR_FRAME_5_NUM];
#endif
#ifdef FR_SAMPLE_PERIOD_6
      FR_InputEvent6 atBuf6[FR_FRAME_6_NUM];
#endif
   }tSet;
}FR_InputBuf;

enum {
#ifdef FR_SAMPLE_PERIOD_1
   FR_CFG_INDEX_1 = 0,
#endif
#ifdef FR_SAMPLE_PERIOD_2
   FR_CFG_INDEX_2,
#endif
#ifdef FR_SAMPLE_PERIOD_3
   FR_CFG_INDEX_3,
#endif
#ifdef FR_SAMPLE_PERIOD_4
   FR_CFG_INDEX_4,
#endif
#ifdef FR_SAMPLE_PERIOD_5
   FR_CFG_INDEX_5,
#endif
#ifdef FR_SAMPLE_PERIOD_6
   FR_CFG_INDEX_6,
#endif
   FR_CFG_MAX_NUM
};

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

#endif /* __FR_MACRO_DEF_H_ */



