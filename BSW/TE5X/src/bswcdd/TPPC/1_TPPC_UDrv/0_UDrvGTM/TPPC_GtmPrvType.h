#ifndef __TPPC_GTM_PRV_TYPE_H_
#define __TPPC_GTM_PRV_TYPE_H_

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
enum TPPC_UDRV_GTM_PwmChIndex{
   TPPC_UDRV_GTM_DTM_TRIG_INDEX = 0,
   TPPC_UDRV_GTM_MAX_DTM_TRIG_CH_NUM,
   TPPC_UDRV_GTM_PWM1_INDEX = TPPC_UDRV_GTM_MAX_DTM_TRIG_CH_NUM,
   TPPC_UDRV_GTM_PWM2_INDEX,
   TPPC_UDRV_GTM_PWM3_INDEX,
   TPPC_UDRV_GTM_MAX_PWM_CH_NUM,
   TPPC_UDRV_GTM_ADC_TRIG_INDEX = TPPC_UDRV_GTM_MAX_PWM_CH_NUM,
   TPPC_UDRV_GTM_MAX_CH_NUM
};

typedef struct TPPC_UdrvGtmDeadtimeCfg{
   boolean              bParamIsValid;
   IfxGtm_Pwm_DtmConfig DtmUserCfg[TPPC_UDRV_GTM_MAX_CH_NUM];
}TPPC_UdrvGtmDeadtimeCfg;

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions (User Config)
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#endif /* __TPPC_GTM_PRV_TYPE_H_ */

