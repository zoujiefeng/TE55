
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "GtmM.h"
#include "GtmM_DtmCtrl.h"
#include "GtmM_UpdateDuty.h"
#include "GtmM_PhaseShiftControl.h"

#include "BLDC_GtmPrvType.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC_Device.h"
#include "BLDC_UDrvGtm.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void BLDC_vidUDrvGtmSetPwmDuty(const BLDC_TimerDriver * const kpktDrv, float32 f32Duty);
static void BLDC_vidUDrvGtmSetPwmFreq(const BLDC_TimerDriver * const kpktDrv, float32 f32Freq);
static void BLDC_vidUDrvGtmSetSingleChPhase(const BLDC_TimerDriver * const kpktDrv, float32 f32Phase, uint8 u8ChIndex);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define BLDC_UDRV_GTM_CFG_NUM   (eBLDC_DEV_GTM_END_INDEX - eBLDC_DEV_GTM_START_INDEX)

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static GtmM_Driver gGtmM_xBLDCDriver[BLDC_UDRV_GTM_CFG_NUM];

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
extern const UDrv_GtmCfgHandle UDrvCfg_xGtmCfg_DRV8340;
extern const UDrv_GtmCfgHandle UDrvCfg_xGtmCfg_TLE9180;

const BLDC_TimerDriver BLDC_GtmTDriver[BLDC_UDRV_GTM_CFG_NUM] = {
   {
      .pvCommDrv           = (void *)&gGtmM_xBLDCDriver[0],          /* Common hardware driver, CCU6 or GTM */
      .pkvCfgHandle        = (const void *)&UDrvCfg_xGtmCfg_DRV8340,        /* pwm state list */

      .vidIntHwInit        = BLDC_vidUDrvIntHwInit,
      .vidIntTrigEnable    = BLDC_vidUDrvGtmIntTrigEnable,
      
      .vidPwmDisable       = BLDC_vidUDrvGtmPwmDisable,
      .vidSetPwmDuty       = BLDC_vidUDrvGtmSetPwmDuty,
      .vidSetPwmFreq       = BLDC_vidUDrvGtmSetPwmFreq,
      .vidSetPwmOutState   = BLDC_vidUDrvGtmSetPwmOutState,
      .vidSetSingleChPhase = BLDC_vidUDrvGtmSetSingleChPhase
   },
   {
      .pvCommDrv           = (void *)&gGtmM_xBLDCDriver[1],          /* Common hardware driver, CCU6 or GTM */
      .pkvCfgHandle        = (const void *)&UDrvCfg_xGtmCfg_TLE9180,        /* pwm state list */

      .vidIntHwInit        = BLDC_vidUDrvIntHwInit,
      .vidIntTrigEnable    = BLDC_vidUDrvGtmIntTrigEnable,
      
      .vidPwmDisable       = BLDC_vidUDrvGtmPwmDisable,
      .vidSetPwmDuty       = BLDC_vidUDrvGtmSetPwmDuty,
      .vidSetPwmFreq       = BLDC_vidUDrvGtmSetPwmFreq,
      .vidSetPwmOutState   = BLDC_vidUDrvGtmSetPwmOutState,
      .vidSetSingleChPhase = BLDC_vidUDrvGtmSetSingleChPhase
   }
};

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/* Device common apis */
void BLDC_vidUDrvIntHwInit(const BLDC_TimerDriver * const kpktDrv)
{
   uint8 u8SubCh;
   
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const UDrv_GtmCfgHandle *pkxCfgHandle = (const UDrv_GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   /* Gtm Init */      
   GtmM_vidPwmDeviceInit(pkxCfgHandle->pkxPwmInitApi, pDriver);
   
   u8SubCh = (pDriver->channels->timerCh) % 4;
   GtmM_vidSetDtmUpMode(pDriver->dtm, GtmM_Dtm_UpdateMode_SRTriggerByIn0Eage + u8SubCh);
}

void BLDC_vidUDrvGtmSetPwmOutState(const BLDC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index)
{
   uint32 u32DtmOutState;
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const UDrv_GtmCfgHandle *pkxCfgHandle = (const UDrv_GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   const UDrvCfg_GenHallCtrlList *pkxList = (const UDrvCfg_GenHallCtrlList *)(pkxCfgHandle->pvHallCtrlList);

   if(0 == u8Dir)
   {
      u32DtmOutState = pkxList->pxForwardList[u8Index].PwmState.U;
   }
   else
   {
      u32DtmOutState = pkxList->pxBackwardList[u8Index].PwmState.U;
   }
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, u32DtmOutState);
}

void BLDC_vidUDrvGtmPwmDisable(const BLDC_TimerDriver * const kpktDrv)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const UDrv_GtmCfgHandle *pkxCfgHandle = (const UDrv_GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   const UDrvCfg_GenHallCtrlList *pkxList = (const UDrvCfg_GenHallCtrlList *)(pkxCfgHandle->pvHallCtrlList);
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, pkxList->u32PWMOffState);
}

void BLDC_vidUDrvGtmIntTrigEnable(const BLDC_TimerDriver * const kpktDrv, boolean bEnable)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   uint8 u8HwChIdx;

   if(TRUE == pDriver->bExtTrigEnable)
   {
      u8HwChIdx = GtmM_u8GetHwChannelWithCfgIdx(pDriver, pDriver->u8ExtTrigChIdx);

      GtmM_vidSetDtmChState(&(pDriver->pwm), u8HwChIdx, TRUE);
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/* Pwm common apis */
static void BLDC_vidUDrvGtmSetPwmDuty(const BLDC_TimerDriver * const kpktDrv, float32 f32Duty)
{
   /* Gtm Init */
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   
   pDriver->f32Duty = f32Duty;

   GtmM_Pwm_updateDuty(&(pDriver->pwm), pDriver->f32Duty, BLDC_UDRV_GTM_PWM1_INDEX, BLDC_UDRV_GTM_MAX_PWM_CH_NUM);
}

static void BLDC_vidUDrvGtmSetPwmFreq(const BLDC_TimerDriver * const kpktDrv, float32 f32Freq)
{
   /* Gtm Init */
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   
   pDriver->f32Frequency = f32Freq;

   IfxGtm_Pwm_updateFrequency(&(pDriver->pwm), pDriver->f32Frequency);
}

static void BLDC_vidUDrvGtmSetSingleChPhase(const BLDC_TimerDriver * const kpktDrv, float32 f32Phase, uint8 u8ChIndex)
{
   /* Gtm Init */
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   
   pDriver->phases[u8ChIndex] = f32Phase;
   GtmM_Pwm_updateChannelPhase(&(pDriver->pwm), pDriver->phases, u8ChIndex);
}

