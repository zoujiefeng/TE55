/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC_Device.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Constant Declarations
 ******************************************************************************/
extern const BLDC_TimerDriver BLDC_GtmTDriver[];
extern const BLDC_HalModule   BLDC_CapHalModule;
extern const BLDC_AppFunc     BLDC_xCapAswFunc;

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
const BLDC_Device BLDC_axDeviceSet[eBLDC_DEV_MAX_NUM] = {
   {
      .u8DeviceID   = eBLDC_DEV_GTM_DRV8340_INDEX,
      .ptAppFunc    = &BLDC_xCapAswFunc,
      .ptTimerDrv   = &BLDC_GtmTDriver[eBLDC_DEV_GTM_DRV8340_INDEX],   /* MCU Timer driver */
      .ptHalModule  = &BLDC_CapHalModule,                              /* External hardware interface. PORT / ADC */
      .ptGeneModule = &BLDC_xGeneModule,
   },
   {
      .u8DeviceID   = eBLDC_DEV_GTM_TLE9180_INDEX,
      .ptAppFunc    = &BLDC_xCapAswFunc,
      .ptTimerDrv   = &BLDC_GtmTDriver[eBLDC_DEV_GTM_TLE9180_INDEX],   /* MCU Timer driver */
      .ptHalModule  = &BLDC_CapHalModule,                              /* External hardware interface. PORT / ADC */
      .ptGeneModule = &BLDC_xGeneModule,
   }
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/


