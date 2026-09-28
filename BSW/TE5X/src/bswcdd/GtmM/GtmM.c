
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "GtmM.h"
#include "GtmM_DtmCtrl.h"

#include "Os_DisableInterrupts.h"
#include "Icu_17_TimerIp_Cfg.h"
#include "Icu_17_TimerIp.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/
void GtmM_vidInitExcitionInternalLink(void);
/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
 
/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void GtmM_vidPwmDeviceInit(const GtmM_PwmDeviceInitApi *pInit, GtmM_Driver *pDriver)
{   
   IfxGtm_Pwm_Config xPwmConfig;                  /* Main PWM config structure                          */
   IfxGtm_Pwm_ChannelConfig xPwmChConfig[6];      /* Array containing configuration for PWM Channels    */
   IfxGtm_Pwm_DtmConfig xPwmDtmConfig[6];         /* Array Containing Dead Time Values for PWM Channels */
   IfxGtm_Pwm_OutputConfig xPwmOutPinConfig[6];   /* Array Containing configuration of Output Pins      */
   IfxGtm_Pwm_InterruptConfig xPwmIntConfig;      /* Interrupt Configuration of Master Channel          */
   GtmM_AdcTrigConfig xAdcTrigConfig;
   uint8 u8LocIndex;

   /* 1. Default values of control structure */

   /* 1. Configuration structure initialization
   * If the configuration structure is located in the RAM, the initConfig API would be handy to initialize the
   * elements to their default values
   */
   IfxGtm_Pwm_initConfig(&xPwmConfig, &MODULE_GTM);

   /* 2. Output configuration */
   pInit->vidPushPwmOutPinUserConfig(&xPwmOutPinConfig[0]);

   /* 3. Dead-time configuration */
   pInit->vidPushPwmDtmUserConfig(&xPwmDtmConfig[0]);

   /* 4. Interrupt configuration */
   pInit->vidPushPwmIntUserConfig(&xPwmIntConfig);

   /* 5. Channel configuration */
   pInit->vidPushPwmChannalUserConfig(&xPwmChConfig[0]);

   /* 6. Overall configurations */
   pInit->vidPushPwmUserConfig(&xPwmConfig);
   
   /* 7. Link driver */
   pInit->vidLinkPwmConfigAndPwmChConfig(&xPwmConfig, &xPwmChConfig[0]);
   pInit->vidLinkPwmChConfigAndOutPinConfig(&xPwmChConfig[0], &xPwmOutPinConfig[0]);
   pInit->vidLinkPwmChConfigAndDtmConfig(&xPwmChConfig[0], &xPwmDtmConfig[0]);
   pInit->vidLinkPwmConfigAndIntConfig(&xPwmChConfig[0], &xPwmIntConfig);
   pInit->vidUpdateGtmMDriver(pDriver);
   
   /* 8. Call the init function */
   IfxGtm_Pwm_init(&pDriver->pwm, pDriver->channels, &xPwmConfig);

   /* 9. Init DTM */
   pDriver->dtm = GtmM_vidDtmInit(&pDriver->pwm, &xPwmConfig);

   /* 10. Init ADC Trigger */
   pInit->vidPushPwmAdcTrigConfig(&xAdcTrigConfig);
   if(TRUE == xAdcTrigConfig.bAdcTrigEnable)
   {
      IfxGtm_Trig_toEVadc(xPwmConfig.gtmSFR, xAdcTrigConfig.eAdcGroup,
                          xAdcTrigConfig.eAdcTrig,
                          xAdcTrigConfig.eAdcTrigSource,
                          xAdcTrigConfig.eAdcTrigChannel);

      pDriver->u8ExtTrigChIdx = xAdcTrigConfig.u8AdcTrigChIndex;
   }
   pDriver->bExtTrigEnable = xAdcTrigConfig.bAdcTrigEnable;
   
   /* 11. Store the current duty values, dead-times and phases for runtime calls */
   if(NULL_PTR != pDriver->dutyCycles)
   {
      for(u8LocIndex = 0; u8LocIndex < xPwmConfig.numChannels; u8LocIndex++)
      {
         pDriver->dutyCycles[u8LocIndex] = (xPwmConfig.channels)[u8LocIndex].duty;
      }
   }
   if(NULL_PTR != pDriver->deadTimes)
   {
      for(u8LocIndex = 0; u8LocIndex < xPwmConfig.numChannels; u8LocIndex++)
      {
         pDriver->deadTimes[u8LocIndex] = (xPwmConfig.channels)[u8LocIndex].dtm->deadTime;
      }
   }
   if(NULL_PTR != pDriver->phases)
   {
      for(u8LocIndex = 0; u8LocIndex < xPwmConfig.numChannels; u8LocIndex++)
      {
         pDriver->phases[u8LocIndex] = (xPwmConfig.channels)[u8LocIndex].phase;
      }
   }
}

void GtmM_vidTimerStart(GtmM_Driver *pDriver)
{
   IfxGtm_Pwm_startSyncedChannels(&(pDriver->pwm));
}

void GtmM_vidTimerStop(GtmM_Driver *pDriver)
{
   IfxGtm_Pwm_stopSyncedChannels(&(pDriver->pwm));
}

/****************************************************************************************************
*
* !FuncName    : GtmM_vidInitExcitionInternalLink
* !Description : Implement GTM TOM to TIM internal dasiy chain.
* !Brief       : TOM[i]CH[n]->TIM[i]CH[n]
* !Time        : November 18 2024
*****************************************************************************************************
* !LastAuthor  : GYT
*****************************************************************************************************/
void GtmM_vidInitExcitionInternalLink(void)
{
   /* Select the same group TOM to Tim */
   GTM_CFG.B.SRC_IN_MUX = 1u;
   /* TIM Aux input source select */
   GTM_TIM0_IN_SRC.U = 0x00020000U;
   GTM_TIM1_IN_SRC.U = 0x02000000U;
}

/****************************************************************************************************
*
* !FuncName    : GtmM_vidClearPendingInterrupts
* !Description : Clear all pending interrupts.
* !Brief       : 
* !Time        : December 23 2025
*****************************************************************************************************
* !LastAuthor  : LWW
*****************************************************************************************************/
void GtmM_vidClearPendingInterrupts(volatile Ifx_GTM_TIM_CH_IRQ_NOTIFY *irqNotifyReg)
{
   if (irqNotifyReg != NULL)
   {
      irqNotifyReg->U = 0x3fUL;
   }
}

void GtmM_vid_Disable_GTMTIM2SR4_ISR(void)
{
   Os_Disable_GTMTIM2SR4_ISR();
}

void GtmM_vid_Disable_GTMTIM3SR6_ISR(void)
{
   Os_Disable_GTMTIM3SR6_ISR();
}

void GtmM_vid_Enable_GTMTIM2SR4_ISR(void)
{
   Os_Enable_GTMTIM2SR4_ISR();
}

void GtmM_vid_Enable_GTMTIM3SR6_ISR(void)
{
   Os_Enable_GTMTIM3SR6_ISR();
}

void GtmM_vid_ACM_Icu_Mode_Cfg(void)
{
   GTM_TIM2_CH4_ECTRL.B.EFLT_CTR_FE = 1;
   GTM_TIM2_CH4_CTRL.B.FLT_CTR_FE = 0;
}

void GtmM_vid_EPS_Icu_Mode_Cfg(void)
{
   GTM_TIM3_CH6_ECTRL.B.EFLT_CTR_FE = 1;
   GTM_TIM3_CH6_CTRL.B.FLT_CTR_FE = 0;
}



/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

