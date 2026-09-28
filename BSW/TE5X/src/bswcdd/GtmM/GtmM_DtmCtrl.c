
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "IfxGtm_Pwm.h"
#include "GtmM_DtmCtrl.h"

/*******************************************************************************
 ****  Imported Standard Functions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef enum
{
   GtmM_Dtm_DCDC = 0,
   GtmM_Dtm_MAX_NUM
}GtmM_Dtm_ModuleIndex;

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
IFX_INLINE void GtmM_Dtm_setUpdateMode(Ifx_GTM_CDTM_DTM *dtm);
IFX_INLINE void IfxGtm_Dtm_setOutput0OcMode(Ifx_GTM_CDTM_DTM *dtm, IfxGtm_Dtm_Ch channel, uint8 OcMode);

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
Ifx_GTM_CDTM_DTM * GtmM_pxDtmModulePtr;
   
/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
Ifx_GTM_CDTM_DTM * GtmM_vidDtmInit(IfxGtm_Pwm *pwm, IfxGtm_Pwm_Config *config)
{
   IfxGtm_Pwm_ChannelConfig *channelConfig = &config->channels[0];
   IfxGtm_Pwm_SubModule_Ch   channelIndex  = channelConfig->timerCh;
   
   Ifx_GTM_CDTM_DTM *dtmSFR;
   
   if (pwm->subModule == IfxGtm_Pwm_SubModule_atom)
   {
      /* ATOM 0..7 connects to DTM 4..5 */
      dtmSFR = &pwm->clusterSFR.CDTM->DTM[(uint8)((uint8)channelIndex >> (uint8)2u) + 4u];
   }
   else    /* TOM */
   {
      /* TOM 0..7 connects to DTM 0..1 */
      dtmSFR = &pwm->clusterSFR.CDTM->DTM[(uint8)((uint8)channelIndex >> (uint8)2u)];
   }
   return dtmSFR;
}

void GtmM_vidSetDtmChState(IfxGtm_Pwm *pwm, uint8 u8ChIdx, boolean bEnable)
{
   IfxGtm_Pwm_SubModule_Ch channelIndex = u8ChIdx;
   IfxGtm_Dtm_Ch           eDtmChIdx    = (uint8)channelIndex % (IfxGtm_Dtm_Ch_3 + 1);
   Ifx_GTM_CDTM_DTM *dtmSFR;
   uint8            u8DtmPath;

   if(TRUE == bEnable)
   {
      u8DtmPath = 0;  /* Function output */
   }
   else
   {
      u8DtmPath = 1;  /* Const output */
   }
   
   if (pwm->subModule == IfxGtm_Pwm_SubModule_atom)
   {
      /* ATOM 0..7 connects to DTM 4..5 */
      dtmSFR = &pwm->clusterSFR.CDTM->DTM[(uint8)((uint8)channelIndex >> (uint8)2u) + 4u];

      IfxGtm_Dtm_setOutput0OcMode(dtmSFR, eDtmChIdx, u8DtmPath);
   }
   else
   {
      /* TOM 0..7 connects to DTM 0..1 */
      dtmSFR = &pwm->clusterSFR.CDTM->DTM[(uint8)((uint8)channelIndex >> (uint8)2u)];
      
      IfxGtm_Dtm_setOutput0OcMode(dtmSFR, eDtmChIdx, u8DtmPath);
   }
}

void GtmM_vidSetDtmCtrlSR(Ifx_GTM_CDTM_DTM *dtm, uint32 u32State)
{
   dtm->CH_CTRL2_SR.U = u32State;
}

void GtmM_vidSetDtmCtrl(Ifx_GTM_CDTM_DTM *dtm, uint32 u32State)
{
   dtm->CH_CTRL2.U = u32State;
}

void GtmM_vidSetDtmUpMode(Ifx_GTM_CDTM_DTM *dtm, GtmM_Dtm_UpdateMode eMode)
{
   dtm->CTRL.B.UPD_MODE = eMode;
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
IFX_INLINE void GtmM_Dtm_setUpdateMode(Ifx_GTM_CDTM_DTM *dtm)
{
    dtm->CTRL.B.UPD_MODE = GtmM_Dtm_UpdateMode_SoftReset;
}

IFX_INLINE void IfxGtm_Dtm_setOutput0OcMode(Ifx_GTM_CDTM_DTM *dtm, IfxGtm_Dtm_Ch channel, uint8 OcMode)
{
    uint32 shift = (8 * (uint32)channel) + 1;
    uint32 mask  = 1 << shift;

    dtm->CH_CTRL2.U = (dtm->CH_CTRL2.U & ~mask) | ((uint32)OcMode << shift);
}

