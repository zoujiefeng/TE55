#ifndef __BLDC_UDRV_GTM_CFG_H_
#define __BLDC_UDRV_GTM_CFG_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC_UDrvGtmGeneDef.h"

/*******************************************************************************
 ****  Exported Macro Definitions (User Config)
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions (User Config)
 ******************************************************************************/
#define BLDC_UDRV_CFG_INDEX                        0

#define BLDC_UDRV_GTM_ENABLE_INT                   0     /* 1: GTM trigger interrupt */

#define BLDC_UDRV_GTM_CFG_ADC_TRIG_GROUP           IfxGtm_Trig_AdcGroup_8
#define BLDC_UDRV_GTM_CFG_ADC_TRIG_SOURCE          IfxGtm_Trig_AdcTrig_2
#define BLDC_UDRV_GTM_CFG_ADC_TRIG_CLUSTER         IfxGtm_Trig_AdcTrigSource_tom3
#define BLDC_UDRV_GTM_CFG_ADC_TRIG_CHANNEL         IfxGtm_Trig_AdcTrigChannel_4

#define BLDC_UDRV_GTM_CFG_GTM_CLUSTER              IfxGtm_Cluster_3

/* PWM1 : TOM3_1 */
#define BLDC_UDRV_GTM_CFG_OUT_PORT_PWM1            &IfxGtm_TOM3_1_TOUT131_P22_5_OUT
#define BLDC_UDRV_GTM_CFG_OUT_PORT_PWM1_N          &IfxGtm_TOM3_1N_TOUT135_P22_9_OUT

/* PWM1 : TOM3_2 */
#define BLDC_UDRV_GTM_CFG_OUT_PORT_PWM2            &IfxGtm_TOM3_2_TOUT132_P22_6_OUT
#define BLDC_UDRV_GTM_CFG_OUT_PORT_PWM2_N          &IfxGtm_TOM3_2N_TOUT136_P22_10_OUT

/* PWM1 : TOM3_3 */
#define BLDC_UDRV_GTM_CFG_OUT_PORT_PWM3            &IfxGtm_TOM3_3_TOUT133_P22_7_OUT
#define BLDC_UDRV_GTM_CFG_OUT_PORT_PWM3_N          &IfxGtm_TOM3_3N_TOUT137_P22_11_OUT

#define BLDC_UDRV_GTM_CFG_OUT_PORT_DTM_TRIG        NULL_PTR
#define BLDC_UDRV_GTM_CFG_OUT_PORT_DTM_TRIG_N      NULL_PTR

#define BLDC_UDRV_GTM_CFG_OUT_PORT_ADC_TRIG        NULL_PTR
#define BLDC_UDRV_GTM_CFG_OUT_PORT_ADC_TRIG_N      NULL_PTR

/* Group0: 0/1/2/3 */
/* Group1: 4/5/6/7 */
/* Group2: 8/9/10/11 */
/* Group3: 12/13/14/15 */
#define BLDC_UDRV_GTM_CFG_CHANNEL_PWM1             BLDC_UDRV_GTM_CHANNEL_1
#define BLDC_UDRV_GTM_CFG_CHANNEL_PWM2             BLDC_UDRV_GTM_CHANNEL_2
#define BLDC_UDRV_GTM_CFG_CHANNEL_PWM3             BLDC_UDRV_GTM_CHANNEL_3
#define BLDC_UDRV_GTM_CFG_CHANNEL_NOT_USED         BLDC_UDRV_GTM_CHANNEL_0

#define BLDC_UDRV_GTM_CFG_CHANNEL_DTM_TRIG         BLDC_UDRV_GTM_CHANNEL_0
#define BLDC_UDRV_GTM_CFG_CHANNEL_ADC_TRIG         BLDC_UDRV_GTM_CHANNEL_4

#define BLDC_UDRV_GTM_PWM_FREQ                     40000U                                    /* 40K */
#define BLDC_UDRV_GTM_PWM_DEADTIME                 BLDC_UDRV_GTM_TIME_NS_TO_S(300)           /* 300 ns */

/*******************************************************************************
 ****  Private Macro Definitions (Fixed Parameter)
 ******************************************************************************/
/* PWM polarity definitions */
#define BLDC_UDRV_GTM_PWM_ACTIVE_STATE             BLDC_UDRV_PWM_ACTIVE_HIGH
#define BLDC_UDRV_GTM_PWM_INACTIVE_STATE           BLDC_UDRV_PWM_ACTIVE_LOW

#define BLDC_UDRV_GTM_NOT_USED_ACTIVE_STATE        BLDC_UDRV_PWM_ACTIVE_HIGH

/* DTM control val definitions */
#define BLDC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL    0x00000000
#define BLDC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_HIGH  0x00000006
#define BLDC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_LOW   0x00000002

#define BLDC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL  0x00000000
#define BLDC_UDRV_GTM_DTM_CTRL2_INVERT_OUTPUT_VAL  0x00000001

#if (BLDC_UDRV_GTM_NOT_USED_ACTIVE_STATE == BLDC_UDRV_PWM_ACTIVE_HIGH)
#define BLDC_UDRV_GTM_DTM_NOT_USED_CONST_STATE     BLDC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_LOW
#else
#define BLDC_UDRV_GTM_DTM_NOT_USED_CONST_STATE     BLDC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_HIGH
#endif

#define BLDC_UDRV_GTM_DTM_PWM_STATE(Pwm1AState, Pwm1BState, Pwm2AState, Pwm2BState, Pwm3AState, Pwm3BState) \
                                      (0 | (Pwm1AState << ((BLDC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3)) \
                                         | (Pwm1BState << (((BLDC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3) + 4)) \
                                         | (Pwm2AState << ((BLDC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3)) \
                                         | (Pwm2BState << (((BLDC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3) + 4)) \
                                         | (Pwm3AState << ((BLDC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3)) \
                                         | (Pwm3BState << (((BLDC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3) + 4)) \
                                         | (BLDC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << ((BLDC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3)) \
                                         | (BLDC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << (((BLDC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3) + 4)))

#define BLDC_UDRV_GTM_DTM_INVERT_STATE(Pwm1AIsInverted, Pwm1BIsInverted, Pwm2AIsInverted, Pwm2BIsInverted, Pwm3AIsInverted, Pwm3BIsInverted) \
                                      (0 | (Pwm1AIsInverted << ((BLDC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3)) \
                                         | (Pwm1BIsInverted << (((BLDC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3) + 4)) \
                                         | (Pwm2AIsInverted << ((BLDC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3)) \
                                         | (Pwm2BIsInverted << (((BLDC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3) + 4)) \
                                         | (Pwm3AIsInverted << ((BLDC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3)) \
                                         | (Pwm3BIsInverted << (((BLDC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3) + 4)) \
                                         | (BLDC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << ((BLDC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3)) \
                                         | (BLDC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << (((BLDC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3) + 4)))

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/


#endif /* __BLDC_UDRV_GTM_CFG_H_ */

