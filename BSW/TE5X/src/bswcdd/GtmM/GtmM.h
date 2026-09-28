#ifndef __GTMM_H_
#define __GTMM_H_


#include "IfxGtm_Pwm.h"
#include "IfxGtm_Trig.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define GTMM_CMU_FREQ                         100000000U                       /* CMU CLK: 100M */

#define GTMM_PWM_DUTY_MAX(u32PwmFreq)        (GTMM_CMU_FREQ / u32PwmFreq)      /* Max Cm0(Cnt) */

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
typedef struct GtmM_Driver
{
   IfxGtm_Pwm               pwm;             /* PWM Driver handle                                     */
   Ifx_GTM_CDTM_DTM         *dtm;            /* Dtm handle                                            */
   IfxGtm_Pwm_Channel       *channels;       /* Array containing channel data after configuration     */
   float32                  *dutyCycles;     /* Duty Cycle values to hold                             */
   float32                  *phases;         /* Phase Shift values to hold                            */
   IfxGtm_Pwm_DeadTime      *deadTimes;      /* Dead Time values to hold                              */
   float32                  f32Frequency;    /* PWM switching frequency in Hz                         */
   float32                  f32Duty;         /* PWM switching frequency in Hz                         */
   boolean                  bExtTrigEnable;  /* PWM channel to trigger external peripherals           */
   uint8                    u8ExtTrigChIdx;  /* PWM channel to trigger external peripherals           */
} GtmM_Driver, *PGtmM_Driver;

typedef struct GtmM_AdcTrigConfig{
   IfxGtm_Trig_AdcGroup        eAdcGroup;
   IfxGtm_Trig_AdcTrig         eAdcTrig;
   IfxGtm_Trig_AdcTrigSource   eAdcTrigSource;
   IfxGtm_Trig_AdcTrigChannel  eAdcTrigChannel;
   boolean                     bAdcTrigEnable;
   uint8                       u8AdcTrigChIndex;
}GtmM_AdcTrigConfig, *PGtmM_AdcTrigConfig;

typedef struct GtmM_PwmDeviceInitApi{
   /* 2. Output configuration */
   void (*vidPushPwmUserConfig) (IfxGtm_Pwm_Config *config);
   void (*vidPushPwmOutPinUserConfig) (IfxGtm_Pwm_OutputConfig *config);
   void (*vidPushPwmChannalUserConfig) (IfxGtm_Pwm_ChannelConfig *config);
   void (*vidPushPwmDtmUserConfig) (IfxGtm_Pwm_DtmConfig *config);
   void (*vidPushPwmIntUserConfig) (IfxGtm_Pwm_InterruptConfig *config);
   void (*vidPushPwmAdcTrigConfig) (GtmM_AdcTrigConfig *config);

   /* 7. Link driver */
   void (*vidLinkPwmConfigAndPwmChConfig) (IfxGtm_Pwm_Config *config, IfxGtm_Pwm_ChannelConfig *Driver);
   void (*vidLinkPwmChConfigAndOutPinConfig) (IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_OutputConfig *Driver);
   void (*vidLinkPwmChConfigAndDtmConfig) (IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_DtmConfig *Driver);
   void (*vidLinkPwmConfigAndIntConfig) (IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_InterruptConfig *Driver);

   void (*vidUpdateGtmMDriver) (GtmM_Driver *pGtmMDriver);
}GtmM_PwmDeviceInitApi, *PGtmM_PwmDeviceInitApi;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void GtmM_vidPwmDeviceInit(const GtmM_PwmDeviceInitApi *pInit, GtmM_Driver *pDriver);
extern void GtmM_vidTimerStart(GtmM_Driver *pDriver);
extern void GtmM_vidTimerStop(GtmM_Driver *pDriver);
extern void GtmM_vidClearPendingInterrupts(volatile Ifx_GTM_TIM_CH_IRQ_NOTIFY *irqNotifyReg);
extern void GtmM_vid_Disable_GTMTIM2SR4_ISR(void);
extern void GtmM_vid_Disable_GTMTIM3SR6_ISR(void);
extern void GtmM_vid_Enable_GTMTIM2SR4_ISR(void);
extern void GtmM_vid_Enable_GTMTIM3SR6_ISR(void);
extern void GtmM_vid_ACM_Icu_Mode_Cfg(void);
extern void GtmM_vid_EPS_Icu_Mode_Cfg(void);


IFX_INLINE uint8 GtmM_u8GetHwChannelWithCfgIdx(GtmM_Driver *pDriver, uint8 u8CfgIdx);

/*******************************************************************************
 ****  Exported Function Definitions
 ******************************************************************************/
IFX_INLINE uint8 GtmM_u8GetHwChannelWithCfgIdx(GtmM_Driver *pDriver, uint8 u8CfgIdx)
{
   return pDriver->channels[u8CfgIdx].timerCh;
}

#endif /* __GTMM_H_ */

