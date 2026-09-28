
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "GtmM.h"
#include "GtmM_DtmCtrl.h"
#include "GtmM_UpdateDuty.h"
#include "GtmM_PhaseShiftControl.h"

#include "TPPC_GtmPrvType.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_Device.h"
#include "TPPC_UDrvGtm.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
/* Device common apis */
static void TPPC_vidIntHwInit(const TPPC_TimerDriver * const kpktDrv);
static void TPPC_vidStartTimer(const TPPC_TimerDriver * const kpktDrv, boolean bStartCmd);
static void TPPC_vidSetPwmOutState(const TPPC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index);
static void TPPC_vidPwmEnable(const TPPC_TimerDriver * const kpktDrv);
static void TPPC_vidPwmDisable(const TPPC_TimerDriver * const kpktDrv);
static void TPPC_vidPwmDisableImmediately(const TPPC_TimerDriver * const kpktDrv);
static void TPPC_vidTrigLowAsc(const TPPC_TimerDriver * const kpktDrv);
static void TPPC_vidTrigHighAsc(const TPPC_TimerDriver * const kpktDrv);
static void TPPC_vidIntTrigEnable(const TPPC_TimerDriver * const kpktDrv, boolean bEnable);
static void TPPC_vidSetPwmDuty(const TPPC_TimerDriver * const kpktDrv, const TPPC_Duty *const kpktDuty);
static void TPPC_vidSetPwmFreq(const TPPC_TimerDriver * const kpktDrv, float32 f32Freq);
static void TPPC_vidSetSingleChPhase(const TPPC_TimerDriver * const kpktDrv, float32 f32Phase, uint8 u8ChIndex);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define TPPC_UDRV_GTM_CFG_NUM   (eTPPC_DEV_GTM_END_INDEX - eTPPC_DEV_GTM_START_INDEX)

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static GtmM_Driver gGtmM_xTPPCDriver[TPPC_UDRV_GTM_CFG_NUM];

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
extern const GtmCfgHandle UDrvCfg_xGtmCfg_ACM;
extern const GtmCfgHandle UDrvCfg_xGtmCfg_EPS;

const TPPC_TimerDriver TPPC_GtmTDriver[TPPC_UDRV_GTM_CFG_NUM] = {
   {
      .pvCommDrv           = (void *)&gGtmM_xTPPCDriver[0],          /* Common hardware driver, CCU6 or GTM */
      .pkvCfgHandle        = (const void *)&UDrvCfg_xGtmCfg_ACM,   /* pwm state list */

      .vidIntHwInit        = TPPC_vidIntHwInit,
      .vidIntTrigEnable    = TPPC_vidIntTrigEnable,
      .vidStartTimer       = TPPC_vidStartTimer,
      
      .vidTrigLowAsc       = TPPC_vidTrigLowAsc,
      .vidTrigHighAsc      = TPPC_vidTrigHighAsc,
      .vidPwmEnable        = TPPC_vidPwmEnable,
      .vidPwmDisable       = TPPC_vidPwmDisable,
      .vidPwmDisableImmediately = TPPC_vidPwmDisableImmediately,
      .vidSetPwmDuty       = TPPC_vidSetPwmDuty,
      .vidSetPwmFreq       = TPPC_vidSetPwmFreq,
      .vidSetPwmOutState   = TPPC_vidSetPwmOutState,
      .vidSetSingleChPhase = TPPC_vidSetSingleChPhase
   },
   {
      .pvCommDrv           = (void *)&gGtmM_xTPPCDriver[1],          /* Common hardware driver, CCU6 or GTM */
      .pkvCfgHandle        = (const void *)&UDrvCfg_xGtmCfg_EPS,   /* pwm state list */

      .vidIntHwInit        = TPPC_vidIntHwInit,
      .vidIntTrigEnable    = TPPC_vidIntTrigEnable,
      .vidStartTimer       = TPPC_vidStartTimer,
      
      .vidTrigLowAsc       = TPPC_vidTrigLowAsc,
      .vidTrigHighAsc      = TPPC_vidTrigHighAsc,
      .vidPwmEnable        = TPPC_vidPwmEnable,
      .vidPwmDisable       = TPPC_vidPwmDisable,
      .vidPwmDisableImmediately = TPPC_vidPwmDisableImmediately,
      .vidSetPwmDuty       = TPPC_vidSetPwmDuty,
      .vidSetPwmFreq       = TPPC_vidSetPwmFreq,
      .vidSetPwmOutState   = TPPC_vidSetPwmOutState,
      .vidSetSingleChPhase = TPPC_vidSetSingleChPhase
   }
};

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
#define  TPPC_START_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"
/**********************************************************************
 * Function name    :  TPPC_vidIntHwInit
 * Description      :  Init timer device
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidIntHwInit(const TPPC_TimerDriver * const kpktDrv)
{   
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   /* Gtm Init */      
   GtmM_vidPwmDeviceInit(pkxCfgHandle->pkxPwmInitApi, pDriver);

   GtmM_vidSetDtmUpMode(pDriver->dtm, GtmM_Dtm_UpdateMode_SRTriggerByIn0Eage + pkxCfgHandle->u8DtmTrigChannel);
}

static void TPPC_vidStartTimer(const TPPC_TimerDriver * const kpktDrv, boolean bStartCmd)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);

   if(TRUE == bStartCmd)
   {
      GtmM_vidTimerStart(pDriver);
   }
   else
   {
      GtmM_vidTimerStop(pDriver);
   }
}

/**********************************************************************
 * Function name    :  TPPC_vidSetPwmOutState
 * Description      :  
 * Input parameter  :  kpktDrv : Timer driver handle
 *                     u8Dir   : 
 *                     u8Index : 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidSetPwmOutState(const TPPC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index)
{
   uint32 u32DtmOutState;
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);

   if(0 == u8Dir)
   {
      u32DtmOutState = pkxCfgHandle->pkxPwmCtrlList->pxForwardList[u8Index].PwmState.U;
   }
   else
   {
      u32DtmOutState = pkxCfgHandle->pkxPwmCtrlList->pxBackwardList[u8Index].PwmState.U;
   }
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, u32DtmOutState);
}

/**********************************************************************
 * Function name    :  TPPC_vidPwmEnable
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidPwmEnable(const TPPC_TimerDriver * const kpktDrv)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32PWMOnState);
}

/**********************************************************************
 * Function name    :  TPPC_vidPwmDisable
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidPwmDisable(const TPPC_TimerDriver * const kpktDrv)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32PWMOffState);
}

/**********************************************************************
 * Function name    :  TPPC_vidPwmDisableImmediately
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidPwmDisableImmediately(const TPPC_TimerDriver * const kpktDrv)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32PWMOffState);
   GtmM_vidSetDtmCtrl(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32PWMOffState);
}

/**********************************************************************
 * Function name    :  TPPC_vidTrigLowAsc
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidTrigLowAsc(const TPPC_TimerDriver * const kpktDrv)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32LowAscState);
   GtmM_vidSetDtmCtrl(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32LowAscState);
}

/**********************************************************************
 * Function name    :  TPPC_vidTrigHighAsc
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidTrigHighAsc(const TPPC_TimerDriver * const kpktDrv)
{
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);
   
   GtmM_vidSetDtmCtrlSR(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32HighAscState);
   GtmM_vidSetDtmCtrl(pDriver->dtm, pkxCfgHandle->pkxPwmCtrlList->u32HighAscState);
}

/**********************************************************************
 * Function name    :  TPPC_vidIntTrigEnable
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidIntTrigEnable(const TPPC_TimerDriver * const kpktDrv, boolean bEnable)
{
   uint8 u8HwChIdx;
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);

   if(TRUE == pDriver->bExtTrigEnable)
   {
      u8HwChIdx = GtmM_u8GetHwChannelWithCfgIdx(pDriver, pDriver->u8ExtTrigChIdx);

      GtmM_vidSetDtmChState(&(pDriver->pwm), u8HwChIdx, TRUE);
   }
}

/**********************************************************************
 * Function name    :  TPPC_vidSetPwmDuty
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidSetPwmDuty(const TPPC_TimerDriver * const kpktDrv, const TPPC_Duty *const kpktDuty)
{
   /* Gtm Init */
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   const GtmCfgHandle *pkxCfgHandle = (const GtmCfgHandle *)(kpktDrv->pkvCfgHandle);

   pDriver->dutyCycles[pkxCfgHandle->u8Pwm1Channel] = kpktDuty->f32Duty1;
   pDriver->dutyCycles[pkxCfgHandle->u8Pwm2Channel] = kpktDuty->f32Duty2;
   pDriver->dutyCycles[pkxCfgHandle->u8Pwm3Channel] = kpktDuty->f32Duty3;

   GtmM_Pwm_updateDuty(&(pDriver->pwm), kpktDuty->f32Duty1, pkxCfgHandle->u8Pwm1Channel, 1);
   GtmM_Pwm_updateDuty(&(pDriver->pwm), kpktDuty->f32Duty2, pkxCfgHandle->u8Pwm2Channel, 1);
   GtmM_Pwm_updateDuty(&(pDriver->pwm), kpktDuty->f32Duty3, pkxCfgHandle->u8Pwm3Channel, 1);
}

/**********************************************************************
 * Function name    :  TPPC_vidSetPwmFreq
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidSetPwmFreq(const TPPC_TimerDriver * const kpktDrv, float32 f32Freq)
{
   /* Gtm Init */
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   
   pDriver->f32Frequency = f32Freq;

   IfxGtm_Pwm_updateFrequency(&(pDriver->pwm), pDriver->f32Frequency);
}

/**********************************************************************
 * Function name    :  TPPC_vidSetSingleChPhase
 * Description      :  
 * Input parameter  :  kpktDrv   : Timer driver handle
 *                     f32Phase  : Shift phase value
 *                     u8ChIndex : Channel index
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2025/02/21       V1.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidSetSingleChPhase(const TPPC_TimerDriver * const kpktDrv, float32 f32Phase, uint8 u8ChIndex)
{
   /* Gtm Init */
   PGtmM_Driver pDriver = (PGtmM_Driver)(kpktDrv->pvCommDrv);
   
   pDriver->phases[u8ChIndex] = f32Phase;
   GtmM_Pwm_updateChannelPhase(&(pDriver->pwm), pDriver->phases, u8ChIndex);
}
#define  TPPC_STOP_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"

