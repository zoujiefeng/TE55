#ifndef __GTMM_DTM_SHUTOFF_H_
#define __GTMM_DTM_SHUTOFF_H_

#include "IfxGtm_Dtm.h"

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
typedef enum
{
   GtmM_DTM_PWM_1OFF_2OFF_3OFF = 0,
   GtmM_DTM_PWM_1OFF_2OFF_3ON  = 1,
   GtmM_DTM_PWM_1OFF_2ON_3OFF  = 2,
   GtmM_DTM_PWM_1OFF_2ON_3ON   = 3,
   GtmM_DTM_PWM_1ON_2OFF_3OFF  = 4,
   GtmM_DTM_PWM_1ON_2OFF_3ON   = 5,
   GtmM_DTM_PWM_1ON_2ON_3OFF   = 6,
   GtmM_DTM_PWM_1ON_2ON_3ON    = 7
}GtmM_DtmPwmStatus;
   
typedef enum
{
   GtmM_Dtm_UpdateMode_SRNotUsed,            /**< \brief Inverse Dead Time */
   GtmM_Dtm_UpdateMode_SoftReset,            /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
   GtmM_Dtm_UpdateMode_DtmInSignalEdge,      /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
   GtmM_Dtm_UpdateMode_ResetByShutoffSignal, /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
   GtmM_Dtm_UpdateMode_SRTriggerByIn0Eage,   /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
   GtmM_Dtm_UpdateMode_SRTriggerByIn1Eage,   /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
   GtmM_Dtm_UpdateMode_SRTriggerByIn2Eage,   /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
   GtmM_Dtm_UpdateMode_SRTriggerByIn3Eage,   /**< \brief Special Function as selected by O1Fx (x = 0 to 3) */
} GtmM_Dtm_UpdateMode;

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

extern Ifx_GTM_CDTM_DTM * GtmM_pxDtmModulePtr;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void GtmM_vidSetPwmChState(uint8 u8Mask, uint8 u8State);
extern void GtmM_vidDtmUpdateReg(void);

IFX_INLINE void GtmM_vidDtmInitOutState(Ifx_GTM_CDTM_DTM *Dtm, uint32 u32InitState);

IFX_INLINE void GtmM_vidDtmInitOutState(Ifx_GTM_CDTM_DTM *Dtm, uint32 u32InitState)
{
   Dtm->CH_CTRL2.U = u32InitState;
   Dtm->CH_CTRL2_SR.U = u32InitState;
}

extern Ifx_GTM_CDTM_DTM * GtmM_vidDtmInit(IfxGtm_Pwm *pwm, IfxGtm_Pwm_Config *config);
extern Ifx_GTM_CDTM_DTM * GtmM_pxGetDtmFromCh(IfxGtm_Pwm *pwm, IfxGtm_Pwm_Config *config, uint8 u8ChIndex);
extern void GtmM_vidSetDtmCtrl(Ifx_GTM_CDTM_DTM *dtm, uint32 u32State);
extern void GtmM_vidSetDtmCtrlSR(Ifx_GTM_CDTM_DTM *dtm, uint32 u32State);
extern void GtmM_vidSetDtmUpMode(Ifx_GTM_CDTM_DTM *dtm, GtmM_Dtm_UpdateMode eMode);
extern void GtmM_vidSetDtmChState(IfxGtm_Pwm *pwm, uint8 u8ChIdx, boolean bEnable);

#endif /* __GTMM_DTM_SHUTOFF_H_ */

