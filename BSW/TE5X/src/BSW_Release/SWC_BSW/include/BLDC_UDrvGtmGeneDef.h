#ifndef __BLDC_UDRV_GTM_GENE_DEF_H_
#define __BLDC_UDRV_GTM_GENE_DEF_H_


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
enum BLDC_UDRV_GTM_PwmChIndex{
   BLDC_UDRV_GTM_DTM_TRIG_INDEX = 0,
   BLDC_UDRV_GTM_MAX_DTM_TRIG_CH_NUM,
   BLDC_UDRV_GTM_PWM1_INDEX = BLDC_UDRV_GTM_MAX_DTM_TRIG_CH_NUM,
   BLDC_UDRV_GTM_PWM2_INDEX,
   BLDC_UDRV_GTM_PWM3_INDEX,
   BLDC_UDRV_GTM_MAX_PWM_CH_NUM,
   BLDC_UDRV_GTM_ADC_TRIG_INDEX = BLDC_UDRV_GTM_MAX_PWM_CH_NUM,
   BLDC_UDRV_GTM_MAX_CH_NUM
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
#define BLDC_UDRV_GTM_TIME_NS_TO_S(f32ns)                              ((float32)(f32ns) / 1000000000.0f)   
#define BLDC_UDRV_GTM_TIME_NS_TO_MS(f32ns)                             ((float32)(f32ns) / 1000000.0f)   
#define BLDC_UDRV_GTM_TIME_NS_TO_US(f32ns)                             ((float32)(f32ns) / 1000.0f)   
#define BLDC_UDRV_GTM_TIME_S_TO_CNT_TICKS(f32s, f32CmuFreq)            (uint32)((float32)(f32s)  * (float32)f32CmuFreq)
#define BLDC_UDRV_GTM_TIME_ANGLE_TO_CNT_TICKS(f32Angle, f32CmuFreq)    (uint32)(((float32)(f32Angle) / 360.0f)  * (float32)f32CmuFreq)

/* GTM sub module channel definitions */
#define BLDC_UDRV_GTM_CHANNEL_0         0    /* IfxGtm_Pwm_SubModule_Ch_0  */
#define BLDC_UDRV_GTM_CHANNEL_1         1    /* IfxGtm_Pwm_SubModule_Ch_1  */
#define BLDC_UDRV_GTM_CHANNEL_2         2    /* IfxGtm_Pwm_SubModule_Ch_2  */
#define BLDC_UDRV_GTM_CHANNEL_3         3    /* IfxGtm_Pwm_SubModule_Ch_3  */
#define BLDC_UDRV_GTM_CHANNEL_4         4    /* IfxGtm_Pwm_SubModule_Ch_4  */
#define BLDC_UDRV_GTM_CHANNEL_5         5    /* IfxGtm_Pwm_SubModule_Ch_5  */
#define BLDC_UDRV_GTM_CHANNEL_6         6    /* IfxGtm_Pwm_SubModule_Ch_6  */
#define BLDC_UDRV_GTM_CHANNEL_7         7    /* IfxGtm_Pwm_SubModule_Ch_7  */
#define BLDC_UDRV_GTM_CHANNEL_8         8    /* IfxGtm_Pwm_SubModule_Ch_8  */
#define BLDC_UDRV_GTM_CHANNEL_9         9    /* IfxGtm_Pwm_SubModule_Ch_9  */
#define BLDC_UDRV_GTM_CHANNEL_10        10   /* IfxGtm_Pwm_SubModule_Ch_10 */
#define BLDC_UDRV_GTM_CHANNEL_11        11   /* IfxGtm_Pwm_SubModule_Ch_11 */
#define BLDC_UDRV_GTM_CHANNEL_12        12   /* IfxGtm_Pwm_SubModule_Ch_12 */
#define BLDC_UDRV_GTM_CHANNEL_13        13   /* IfxGtm_Pwm_SubModule_Ch_13 */
#define BLDC_UDRV_GTM_CHANNEL_14        14   /* IfxGtm_Pwm_SubModule_Ch_14 */
#define BLDC_UDRV_GTM_CHANNEL_15        15   /* IfxGtm_Pwm_SubModule_Ch_15 */

/* PWM active state */
#define BLDC_UDRV_PWM_ACTIVE_LOW        0    /* Ifx_ActiveState_low  */
#define BLDC_UDRV_PWM_ACTIVE_HIGH       1    /* Ifx_ActiveState_high */


/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __BLDC_UDRV_GTM_GENE_DEF_H_ */

