
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "GtmM_PhaseShiftControl.h"

/*******************************************************************************
 ****  Imported Standard Functions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
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
 ****  Private Macro Definitions
 ******************************************************************************/
#define GTMM_PHASE_SHIFT_WITH_PI          0
#define GTMM_PHASE_SHIFT_WITH_ANGLE       1
#define GTMM_PHASE_SHIFT_WITH_PERCENT     2
#define GTMM_PHASE_SHIFT_WITH_DECIMALS    3


#define GTMM_PHASE_SHIFT_UNIT       GTMM_PHASE_SHIFT_WITH_DECIMALS

#if (GTMM_PHASE_SHIFT_UNIT == GTMM_PHASE_SHIFT_WITH_PI)
   /* Phase in ticks = period * (phase in radian / (2 * pi)) */
#  define GTMM_PHASE_SHIFT_X_TO_TICKS(periodTicks, requestPhase)\
                                         (uint32)((float32)(((float32)periodTicks * requestPhase * IFX_ONE_OVER_TWO_PI) + (float32)0.5f))
#elif (GTMM_PHASE_SHIFT_UNIT == GTMM_PHASE_SHIFT_WITH_ANGLE)
   /* Phase in ticks = period * (phase in angle / (360.0f)) */
#  define GTMM_PHASE_SHIFT_X_TO_TICKS(periodTicks, requestPhase)\
                                         (uint32)((float32)(((float32)periodTicks * requestPhase / 360.0f) + (float32)0.5f))
#elif (GTMM_PHASE_SHIFT_UNIT == GTMM_PHASE_SHIFT_WITH_PERCENT)
   /* Phase in ticks = period * (phase in percent) */
#  define GTMM_PHASE_SHIFT_X_TO_TICKS(periodTicks, requestPhase)\
                                         (uint32)((float32)(((float32)periodTicks * requestPhase / 100.0f) + (float32)0.5f))
#elif (GTMM_PHASE_SHIFT_UNIT == GTMM_PHASE_SHIFT_WITH_DECIMALS)
   /* Phase in ticks = period * (phase in percent) */
#  define GTMM_PHASE_SHIFT_X_TO_TICKS(periodTicks, requestPhase)\
                                         (uint32)((float32)(((float32)periodTicks * requestPhase / 2.0f) + (float32)0.5f))
#endif


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

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void GtmM_Pwm_updateChannelPhase(IfxGtm_Pwm *pwm, float32 *requestPhase, uint8 chConfigIndex)
{
   IfxGtm_Pwm_Channel *channel;
   uint32              phaseTicks;
   uint32              dutyTicks;
   
   /* 1. Disable update from shadow register */
   GtmM_Pwm_disableChannelsSyncUpdate(pwm);

   /* 2. Update phase 0.4us */
   channel = &pwm->channels[(IfxGtm_Pwm_SyncChannelIndex)chConfigIndex];
   phaseTicks = GTMM_PHASE_SHIFT_X_TO_TICKS(pwm->periodTicks, requestPhase[chConfigIndex]);
   dutyTicks = (channel->dutyTicks - channel->phaseTicks) + phaseTicks;
   
   /* Copy to handle */
   channel->phaseTicks = phaseTicks;
   channel->dutyTicks  = dutyTicks;
   
   /* Update shadow register */
   *channel->registers.SR0 = phaseTicks;
   *channel->registers.SR1 = (dutyTicks <= pwm->periodTicks) ? dutyTicks : dutyTicks - pwm->periodTicks;

   /* 3. Enable update from shadow register */
   GtmM_Pwm_enableChannelsSyncUpdate(pwm);
}


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
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



