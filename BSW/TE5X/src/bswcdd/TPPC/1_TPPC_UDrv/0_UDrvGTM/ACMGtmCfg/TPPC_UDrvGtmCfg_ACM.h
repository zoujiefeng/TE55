#ifndef __TPPC_UDRV_GTM_CFG_H_
#define __TPPC_UDRV_GTM_CFG_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_UDrvGtmGeneDef.h"

/*******************************************************************************
 ****  Exported Macro Definitions (User Config)
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions (User Config)
 ******************************************************************************/
#define TPPC_UDRV_CFG_INDEX                        0

#define TPPC_UDRV_GTM_ENABLE_INT                   0     /* 1: GTM trigger interrupt */

#define TPPC_UDRV_GTM_CFG_ADC_TRIG_ENABLE          TRUE
#define TPPC_UDRV_GTM_CFG_ADC_TRIG_GROUP           IfxGtm_Trig_AdcGroup_8
#define TPPC_UDRV_GTM_CFG_ADC_TRIG_SOURCE          IfxGtm_Trig_AdcTrig_2
#define TPPC_UDRV_GTM_CFG_ADC_TRIG_CLUSTER         IfxGtm_Trig_AdcTrigSource_tom3
#define TPPC_UDRV_GTM_CFG_ADC_TRIG_CHANNEL         IfxGtm_Trig_AdcTrigChannel_4

#define TPPC_UDRV_GTM_CFG_GTM_CLUSTER              IfxGtm_Cluster_3

/* PWM1 : TOM3_1 */
#define TPPC_UDRV_GTM_CFG_OUT_PORT_PWM1            &IfxGtm_TOM3_1_TOUT131_P22_5_OUT
#define TPPC_UDRV_GTM_CFG_OUT_PORT_PWM1_N          &IfxGtm_TOM3_1N_TOUT135_P22_9_OUT

/* PWM1 : TOM3_2 */
#define TPPC_UDRV_GTM_CFG_OUT_PORT_PWM2            &IfxGtm_TOM3_2_TOUT132_P22_6_OUT
#define TPPC_UDRV_GTM_CFG_OUT_PORT_PWM2_N          &IfxGtm_TOM3_2N_TOUT136_P22_10_OUT

/* PWM1 : TOM3_3 */
#define TPPC_UDRV_GTM_CFG_OUT_PORT_PWM3            &IfxGtm_TOM3_3_TOUT133_P22_7_OUT
#define TPPC_UDRV_GTM_CFG_OUT_PORT_PWM3_N          &IfxGtm_TOM3_3N_TOUT137_P22_11_OUT

#define TPPC_UDRV_GTM_CFG_OUT_PORT_DTM_TRIG        NULL_PTR
#define TPPC_UDRV_GTM_CFG_OUT_PORT_DTM_TRIG_N      NULL_PTR

#define TPPC_UDRV_GTM_CFG_OUT_PORT_ADC_TRIG        NULL_PTR
#define TPPC_UDRV_GTM_CFG_OUT_PORT_ADC_TRIG_N      NULL_PTR

/* Group0: 0/1/2/3 */
/* Group1: 4/5/6/7 */
/* Group2: 8/9/10/11 */
/* Group3: 12/13/14/15 */
#define TPPC_UDRV_GTM_CFG_CHANNEL_PWM1             GTM_CHANNEL_1
#define TPPC_UDRV_GTM_CFG_CHANNEL_PWM2             GTM_CHANNEL_2
#define TPPC_UDRV_GTM_CFG_CHANNEL_PWM3             GTM_CHANNEL_3
#define TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED         GTM_CHANNEL_0

#define TPPC_UDRV_GTM_CFG_CHANNEL_DTM_TRIG         GTM_CHANNEL_0
#define TPPC_UDRV_GTM_CFG_CHANNEL_ADC_TRIG         GTM_CHANNEL_4

#define TPPC_USE_DEFAULT_PARAM                     TRUE
#define TPPC_UDRV_GTM_PWM_FREQ                     6000U                          /* 6K */
#define TPPC_UDRV_GTM_PWM_DEADTIME                 GTM_TIME_NS_TO_S(2500)         /* 2500 ns */

/*******************************************************************************
 ****  Private Macro Definitions (Fixed Parameter)
 ******************************************************************************/
/* PWM polarity definitions */
#define TPPC_UDRV_GTM_PWM_ACTIVE_STATE             GTM_PWM_ACTIVE_HIGH
#define TPPC_UDRV_GTM_PWM_INACTIVE_STATE           GTM_PWM_ACTIVE_LOW

#define TPPC_UDRV_GTM_NOT_USED_ACTIVE_STATE        GTM_PWM_ACTIVE_HIGH

/* DTM control val definitions */
#define TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL    0x00000000
#define TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_HIGH  0x00000006
#define TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_LOW   0x00000002

#define TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL  0x00000000
#define TPPC_UDRV_GTM_DTM_CTRL2_INVERT_OUTPUT_VAL  0x00000001

#define TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_DIS_VAL   0x00000000
#define TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL   0x00000008

#if (TPPC_UDRV_GTM_NOT_USED_ACTIVE_STATE == GTM_PWM_ACTIVE_HIGH)
#define TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE     TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_LOW
#else
#define TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE     TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_HIGH
#endif

#define TPPC_UDRV_GTM_DTM_PWM_STATE(Pwm1AState, Pwm1BState, Pwm2AState, Pwm2BState, Pwm3AState, Pwm3BState) \
                                      (0 | (Pwm1AState << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3)) \
                                         | (Pwm1BState << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3) + 4)) \
                                         | (Pwm2AState << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3)) \
                                         | (Pwm2BState << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3) + 4)) \
                                         | (Pwm3AState << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3)) \
                                         | (Pwm3BState << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3) + 4)) \
                                         | (TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << ((TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3)) \
                                         | (TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << (((TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3) + 4)))

#define TPPC_UDRV_GTM_DTM_INVERT_STATE(Pwm1AIsInverted, Pwm1BIsInverted, Pwm2AIsInverted, Pwm2BIsInverted, Pwm3AIsInverted, Pwm3BIsInverted) \
                                      (0 | (Pwm1AIsInverted << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3)) \
                                         | (Pwm1BIsInverted << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3) + 4)) \
                                         | (Pwm2AIsInverted << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3)) \
                                         | (Pwm2BIsInverted << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3) + 4)) \
                                         | (Pwm3AIsInverted << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3)) \
                                         | (Pwm3BIsInverted << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3) + 4)) \
                                         | (TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << ((TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3)) \
                                         | (TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << (((TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3) + 4)))

#define TPPC_UDRV_GTM_DTM_DEADTIME_STATE(Pwm1ADtISEnable, Pwm1BDtISEnable, Pwm2ADtISEnable, Pwm2BDtISEnable, Pwm3ADtISEnable, Pwm3BDtISEnable) \
                                      (0 | (Pwm1ADtISEnable << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3)) \
                                         | (Pwm1BDtISEnable << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM1 % 4) << 3) + 4)) \
                                         | (Pwm2ADtISEnable << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3)) \
                                         | (Pwm2BDtISEnable << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM2 % 4) << 3) + 4)) \
                                         | (Pwm3ADtISEnable << ((TPPC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3)) \
                                         | (Pwm3BDtISEnable << (((TPPC_UDRV_GTM_CFG_CHANNEL_PWM3 % 4) << 3) + 4)) \
                                         | (TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << ((TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3)) \
                                         | (TPPC_UDRV_GTM_DTM_NOT_USED_CONST_STATE << (((TPPC_UDRV_GTM_CFG_CHANNEL_NOT_USED % 4) << 3) + 4)))


#endif /* __TPPC_UDRV_GTM_CFG_H_ */

