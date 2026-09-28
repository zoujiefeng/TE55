#ifndef __GTMM_UPDATE_FREQ_AND_DUTY_H_
#define __GTMM_UPDATE_FREQ_AND_DUTY_H_

#include "IfxGtm_Pwm.h"


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
IFX_INLINE void GtmM_Pwm_updateDuty(IfxGtm_Pwm *pwm, float32 requestDuty, uint8 u8StartCh, uint8 u8MaxChNum);
IFX_INLINE void GtmM_Pwm_updateSlaveChannelDuty(IfxGtm_Pwm *pwm, IfxGtm_Pwm_SyncChannelIndex configIndex, float32 requestDuty);

IFX_INLINE void GtmM_Pwm_Set_0_Duty(IfxGtm_Pwm *pwm, uint8 u8StartCh, uint8 u8MaxChNum);

/** \brief Enable Synchronous update of all configured channels in AGC/TGC0/TGC1
 * \param pwm PWM handle
 * \return None
 */
IFX_INLINE void GtmM_Pwm_enableChannelsSyncUpdate(IfxGtm_Pwm *pwm);

/** \brief Disable Synchronous update of all configured channels in AGC/TGC0/TGC1
 * \param pwm PWM handle
 * \return None
 */
IFX_INLINE void GtmM_Pwm_disableChannelsSyncUpdate(IfxGtm_Pwm *pwm);

/*******************************************************************************
 ****  Exported Function Definitions
 ******************************************************************************/
IFX_INLINE void GtmM_Pwm_updateSlaveChannelDuty(IfxGtm_Pwm *pwm, IfxGtm_Pwm_SyncChannelIndex configIndex, float32 requestDuty)
{
   IfxGtm_Pwm_Channel *channel = &pwm->channels[configIndex];

   /* Duty in ticks = period * (duty in percent / 100%) */
   uint32              dutyTicks = (uint32)((float32)(((float32)pwm->periodTicks * requestDuty * 0.01f) + (float32)0.5f));

   /* Subtract from period for center aligned */
   if (pwm->alignment != IfxGtm_Pwm_Alignment_edge)
   {
      dutyTicks          = pwm->periodTicks - dutyTicks;
      channel->dutyTicks = dutyTicks;
   }
   /* Offset by phase to account for phase shift in sync channel edge aligned (phaseticks = 0 for base channel) */
   else
   {
      dutyTicks         += channel->phaseTicks;
      channel->dutyTicks = dutyTicks;
      dutyTicks          = (dutyTicks <= pwm->periodTicks) ? dutyTicks : dutyTicks - pwm->periodTicks;
   }

   /* Update shadow register */
   *channel->registers.SR0 = 0;
   *channel->registers.SR1 = dutyTicks;
}

IFX_INLINE void GtmM_Pwm_updateDuty(IfxGtm_Pwm *pwm, float32 requestDuty, uint8 u8StartCh, uint8 u8MaxChNum)
{
   uint8 u8Index;
   /* 1. Disable update from shadow register */
   GtmM_Pwm_disableChannelsSyncUpdate(pwm);

   /* 2. Loop over all channels and update duty */    
   if(TRUE == pwm->syncUpdateEnabled)
   {
      if(0 == u8StartCh)
      {
         IfxGtm_Pwm_updateChannelDuty(pwm, (IfxGtm_Pwm_SyncChannelIndex)u8StartCh, requestDuty);
      }
      else
      {
         GtmM_Pwm_updateSlaveChannelDuty(pwm, (IfxGtm_Pwm_SyncChannelIndex)u8StartCh, requestDuty);
      }

      for(u8Index = u8StartCh + 1; u8Index < u8MaxChNum; u8Index++)
      {
         GtmM_Pwm_updateSlaveChannelDuty(pwm, (IfxGtm_Pwm_SyncChannelIndex)u8Index, requestDuty);
      }
   }
   else
   {
      for(u8Index = u8StartCh; u8Index < u8MaxChNum; u8Index++)
      {
         IfxGtm_Pwm_updateChannelDuty(pwm, (IfxGtm_Pwm_SyncChannelIndex)u8Index, requestDuty);
      }
   }

   /* 3. Enable update from shadow register */
   GtmM_Pwm_enableChannelsSyncUpdate(pwm);
}

IFX_INLINE void GtmM_Pwm_Set_0_Duty(IfxGtm_Pwm *pwm, uint8 u8StartCh, uint8 u8MaxChNum)
{
   uint8 configIndex = 0;
   IfxGtm_Pwm_Channel *channel = &pwm->channels[configIndex];

   /* 1. Disable update from shadow register */
   GtmM_Pwm_disableChannelsSyncUpdate(pwm);

   /* 2. Loop over all channels and update duty */
   if(0 == u8StartCh)
   {
      IfxGtm_Pwm_updateChannelDuty(pwm, (IfxGtm_Pwm_SyncChannelIndex)u8StartCh, 0.0f);
   }
   else
   {
      channel = &pwm->channels[u8StartCh];
      
      /* Update shadow register */
      *channel->registers.SR0 = 0xFFFF;
      *channel->registers.SR1 = 0x0;
   }

   for (configIndex = u8StartCh + 1; configIndex < u8MaxChNum; configIndex++)
   {
      channel = &pwm->channels[configIndex];
      
      /* Update shadow register */
      *channel->registers.SR0 = 0xFFFF;
      *channel->registers.SR1 = 0x0;
   }

   /* 3. Enable update from shadow register */
   GtmM_Pwm_enableChannelsSyncUpdate(pwm);
}

IFX_INLINE void GtmM_Pwm_enableChannelsSyncUpdate(IfxGtm_Pwm *pwm)
{
    IfxGtm_Pwm_GlobalControl *globalctrl = &pwm->globalControl;

    /* Enable UPEN in TGC0/1 or AGC if all channels are in one control unit */
    if (pwm->globalControl.reg1 == NULL_PTR)
    {
        *globalctrl->reg0 = pwm->globalControl.upenMask0 & (uint32)IFXGTM_PWM_UPEN_ENABLE_VALUE;
    }
    /* Enable UPEN in TGC0,1 if all channels not in one control unit */
    else
    {
        *globalctrl->reg0 = pwm->globalControl.upenMask0 & (uint32)IFXGTM_PWM_UPEN_ENABLE_VALUE;
        *globalctrl->reg1 = pwm->globalControl.upenMask1 & (uint32)IFXGTM_PWM_UPEN_ENABLE_VALUE;
    }
}


IFX_INLINE void GtmM_Pwm_disableChannelsSyncUpdate(IfxGtm_Pwm *pwm)
{
    IfxGtm_Pwm_GlobalControl *globalctrl = &pwm->globalControl;

    /* Disable UPEN in TGC0/1 or AGC if all channels are in one control unit */
    if (pwm->globalControl.reg1 == NULL_PTR)
    {
        *globalctrl->reg0 = pwm->globalControl.upenMask0 & (uint32)IFXGTM_PWM_UPEN_ENABLE_VALUE;
    }
    /* Disable UPEN in TGC0,1 if all channels not in one control unit */
    else
    {
        *globalctrl->reg0 = pwm->globalControl.upenMask0 & (uint32)IFXGTM_PWM_UPEN_ENABLE_VALUE;
        *globalctrl->reg1 = pwm->globalControl.upenMask1 & (uint32)IFXGTM_PWM_UPEN_ENABLE_VALUE;
    }
}


#endif /* __GTMM_UPDATE_FREQ_AND_DUTY_H_ */

