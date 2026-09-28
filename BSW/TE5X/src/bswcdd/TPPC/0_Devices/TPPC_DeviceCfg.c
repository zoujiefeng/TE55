/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_Device.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
void TPPC_vidDebug(void);
void TPPC_vidModuleInit(const TPPC_Device * const kpktDev);
void TPPC_vidStartTimer(const TPPC_Device * const kpktDev, boolean bStartCmd);
void TPPC_vidStartPwmOutput(const TPPC_Device * const kpktDev, boolean bStartCmd);
void TPPC_vidSetPwmFreq(const TPPC_Device * const kpktDev, float32 f32Freq);
void TPPC_vidSetPwmBcDuty(const TPPC_Device * const kpktDev, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);

/*******************************************************************************
 ****  Global Constant Declarations
 ******************************************************************************/
extern const TPPC_TimerDriver TPPC_GtmTDriver[];
extern const TPPC_GeneModule  TPPC_xGeneModule;

extern const TPPC_AppFunc     TPPC_xACMAswFunc;
extern const TPPC_AppFunc     TPPC_xEPSAswFunc;

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
const TPPC_Device TPPC_axDeviceSet[eTPPC_DEV_MAX_NUM] = {
   {
      .u8DeviceID        = eTPPC_DEV_GTM_ACM_INDEX,
      .pktAppFunc        = &TPPC_xACMAswFunc,
      .pktTimerDrv       = &TPPC_GtmTDriver[eTPPC_DEV_GTM_ACM_INDEX],   /* MCU Timer driver */

      .vidDebug          = TPPC_vidDebug,
      .vidModuleInit     = TPPC_vidModuleInit,
      .vidStartPwmOutput = TPPC_vidStartPwmOutput,
      .vidStartTimer     = TPPC_vidStartTimer,
      .vidSetPwmBcDuty   = TPPC_vidSetPwmBcDuty,
      .vidSetPwmFreq     = TPPC_vidSetPwmFreq
   },
   {
      .u8DeviceID        = eTPPC_DEV_GTM_EPS_INDEX,
      .pktAppFunc        = &TPPC_xEPSAswFunc,
      .pktTimerDrv       = &TPPC_GtmTDriver[eTPPC_DEV_GTM_EPS_INDEX],   /* MCU Timer driver */

      .vidDebug          = TPPC_vidDebug,
      .vidModuleInit     = TPPC_vidModuleInit,
      .vidStartPwmOutput = TPPC_vidStartPwmOutput,
      .vidStartTimer     = TPPC_vidStartTimer,
      .vidSetPwmBcDuty   = TPPC_vidSetPwmBcDuty,
      .vidSetPwmFreq     = TPPC_vidSetPwmFreq
   }
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/


