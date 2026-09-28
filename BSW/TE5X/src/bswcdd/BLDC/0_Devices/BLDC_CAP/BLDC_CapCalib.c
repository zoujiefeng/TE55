/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC_CapCalib.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
/* HALL Detection */
#define BLDC_CALIB_START_SEC_CONST_BOOL
#include "BLDC_MemMap.h" 
CONST(boolean, BLDC_CALIB) BLDC_bHallInvalidFltTestOnC     = FALSE;
CONST(boolean, BLDC_CALIB) BLDC_bHallUndefFltTestOnC       = FALSE;
CONST(boolean, BLDC_CALIB) BLDC_bP5vAD2SOverVolFltTestOnC  = FALSE;
CONST(boolean, BLDC_CALIB) BLDC_bP5vAD2SUnderVolFltTestOnC = FALSE;
CONST(boolean, BLDC_CALIB) BLDC_bOilPressShortGndFltTestOnC = FALSE;
CONST(boolean, BLDC_CALIB) BLDC_bOilPressShortVccFltTestOnC = FALSE;
#define BLDC_CALIB_STOP_SEC_CONST_BOOL
#include "BLDC_MemMap.h" 

/* Mid Point Detection */
#define BLDC_CALIB_START_SEC_CONST_16
#include "BLDC_MemMap.h" 
CONST(uint16, BLDC_CALIB) BLDC_ku16TgtDutyRisingTimC = 20000;
CONST(uint16, BLDC_CALIB) BLDC_ku16MidPotRcvTimC     = 20;
CONST(uint16, BLDC_CALIB) BLDC_ku16MidPotFltConfirmC = 6;
CONST(uint16, BLDC_CALIB) BLDC_ku16MidPotFltIncStepC = 2;
#define BLDC_CALIB_STOP_SEC_CONST_16
#include "BLDC_MemMap.h" 

#define BLDC_CALIB_START_SEC_CONST_UNSPECIFIED
#include "BLDC_MemMap.h" 
CONST(float32, BLDC_CALIB) BLDC_kf32LVThdHighC = 24.0f;
CONST(float32, BLDC_CALIB) BLDC_kf32LVThdLowC  = 6.5f;
CONST(float32, BLDC_CALIB) BLDC_kf32P5vAD2SOverVolC  = 6.0f;
CONST(float32, BLDC_CALIB) BLDC_kf32P5vAD2SUnderVolC = 4.0f;
CONST(float32, BLDC_CALIB) BLDC_kf32MidPotShrtGndDutyC    = 0.02f;
CONST(float32, BLDC_CALIB) BLDC_kf32MidPotShrtVccDutyC    = 0.95f;
CONST(float32, BLDC_CALIB) BLDC_kf32MidPotTgtHighC        = 0.6f;
CONST(float32, BLDC_CALIB) BLDC_kf32MidPotTgtLowC         = 0.2f;
CONST(float32, BLDC_CALIB) BLDC_kf32TgtDutyDeltMaxC       = 0.2f;
CONST(float32, BLDC_CALIB) BLDC_kf32MidPotMaxMonitorDutyC = 0.95f;
CONST(float32, BLDC_CALIB) BLDC_kf32MidPotMinMonitorDutyC = 0.02f;
CONST(float32, BLDC_CALIB) BLDC_kf32MotorSpeedC           = 3500.0f;
#define BLDC_CALIB_STOP_SEC_CONST_UNSPECIFIED
#include "BLDC_MemMap.h" 

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/



/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



