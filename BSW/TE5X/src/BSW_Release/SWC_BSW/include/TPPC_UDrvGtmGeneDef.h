#ifndef __GTM_GENE_DEF_H_
#define __GTM_GENE_DEF_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "GtmM.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct GtmCfg_GenHallCtrlList{
   uint8  u8CurListIndex;
   uint8  u8NextListIndex;
   union{
      uint32 U;
      struct{
         uint32 DTMnCh1ACfg :4;
         uint32 DTMnCh1BCfg :4;
         uint32 DTMnCh2ACfg :4;
         uint32 DTMnCh2BCfg :4;
         uint32 DTMnCh3ACfg :4;
         uint32 DTMnCh3BCfg :4;
         uint32 DTMnCh4ACfg :4;
         uint32 DTMnCh4BCfg :4;
      }B;
   }PwmState;
}GtmCfg_GenHallCtrlList;

typedef struct GtmCfg_GenPwmCtrlList{
   const GtmCfg_GenHallCtrlList *pxBackwardList;
   const GtmCfg_GenHallCtrlList *pxForwardList;
   uint32  u32PWMOnState;
   uint32  u32PWMOffState;
   uint32  u32LowAscState;
   uint32  u32HighAscState;
}GtmCfg_GenPwmCtrlList;

typedef struct GtmCfgHandle{
   uint8 u8DtmTrigChannel;
   uint8 u8Pwm1Channel;
   uint8 u8Pwm2Channel;
   uint8 u8Pwm3Channel;
   const GtmCfg_GenPwmCtrlList * pkxPwmCtrlList;
   const GtmM_PwmDeviceInitApi * pkxPwmInitApi;
}GtmCfgHandle;


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
#define GTM_TIME_NS_TO_S(f32ns)                              ((float32)(f32ns) / 1000000000.0f)   
#define GTM_TIME_NS_TO_MS(f32ns)                             ((float32)(f32ns) / 1000000.0f)   
#define GTM_TIME_NS_TO_US(f32ns)                             ((float32)(f32ns) / 1000.0f)   
#define GTM_TIME_S_TO_CNT_TICKS(f32s, f32CmuFreq)            (uint32)((float32)(f32s)  * (float32)f32CmuFreq)
#define GTM_TIME_ANGLE_TO_CNT_TICKS(f32Angle, f32CmuFreq)    (uint32)(((float32)(f32Angle) / 360.0f)  * (float32)f32CmuFreq)

/* GTM sub module channel definitions */
#define GTM_CHANNEL_0         0    /* IfxGtm_Pwm_SubModule_Ch_0  */
#define GTM_CHANNEL_1         1    /* IfxGtm_Pwm_SubModule_Ch_1  */
#define GTM_CHANNEL_2         2    /* IfxGtm_Pwm_SubModule_Ch_2  */
#define GTM_CHANNEL_3         3    /* IfxGtm_Pwm_SubModule_Ch_3  */
#define GTM_CHANNEL_4         4    /* IfxGtm_Pwm_SubModule_Ch_4  */
#define GTM_CHANNEL_5         5    /* IfxGtm_Pwm_SubModule_Ch_5  */
#define GTM_CHANNEL_6         6    /* IfxGtm_Pwm_SubModule_Ch_6  */
#define GTM_CHANNEL_7         7    /* IfxGtm_Pwm_SubModule_Ch_7  */
#define GTM_CHANNEL_8         8    /* IfxGtm_Pwm_SubModule_Ch_8  */
#define GTM_CHANNEL_9         9    /* IfxGtm_Pwm_SubModule_Ch_9  */
#define GTM_CHANNEL_10        10   /* IfxGtm_Pwm_SubModule_Ch_10 */
#define GTM_CHANNEL_11        11   /* IfxGtm_Pwm_SubModule_Ch_11 */
#define GTM_CHANNEL_12        12   /* IfxGtm_Pwm_SubModule_Ch_12 */
#define GTM_CHANNEL_13        13   /* IfxGtm_Pwm_SubModule_Ch_13 */
#define GTM_CHANNEL_14        14   /* IfxGtm_Pwm_SubModule_Ch_14 */
#define GTM_CHANNEL_15        15   /* IfxGtm_Pwm_SubModule_Ch_15 */

/* PWM active state */
#define GTM_PWM_ACTIVE_LOW        0    /* Ifx_ActiveState_low  */
#define GTM_PWM_ACTIVE_HIGH       1    /* Ifx_ActiveState_high */

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __GTM_GENE_DEF_H_ */

