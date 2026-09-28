#ifndef __BLDC_CALIB_H_
#define __BLDC_CALIB_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
#define BLDC_CALIB_START_SEC_CONST_BOOL
#include "BLDC_MemMap.h" 
extern CONST(boolean, BLDC_CALIB) BLDC_bHallInvalidFltTestOnC;
extern CONST(boolean, BLDC_CALIB) BLDC_bHallUndefFltTestOnC;
extern CONST(boolean, BLDC_CALIB) BLDC_bP5vAD2SOverVolFltTestOnC;
extern CONST(boolean, BLDC_CALIB) BLDC_bP5vAD2SUnderVolFltTestOnC;
extern CONST(boolean, BLDC_CALIB) BLDC_bOilPressShortGndFltTestOnC;
extern CONST(boolean, BLDC_CALIB) BLDC_bOilPressShortVccFltTestOnC;
#define BLDC_CALIB_STOP_SEC_CONST_BOOL
#include "BLDC_MemMap.h" 

#define BLDC_CALIB_START_SEC_CONST_16
#include "BLDC_MemMap.h" 
extern CONST(uint16, BLDC_CALIB) BLDC_ku16TgtDutyRisingTimC;
extern CONST(uint16, BLDC_CALIB) BLDC_ku16MidPotRcvTimC;
extern CONST(uint16, BLDC_CALIB) BLDC_ku16MidPotFltConfirmC;
extern CONST(uint16, BLDC_CALIB) BLDC_ku16MidPotFltIncStepC;
#define BLDC_CALIB_STOP_SEC_CONST_16
#include "BLDC_MemMap.h" 

#define BLDC_CALIB_START_SEC_CONST_UNSPECIFIED
#include "BLDC_MemMap.h" 
extern CONST(float32, BLDC_CALIB) BLDC_kf32LVThdHighC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32LVThdLowC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32P5vAD2SOverVolC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32P5vAD2SUnderVolC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MidPotShrtGndDutyC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MidPotShrtVccDutyC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MidPotTgtHighC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MidPotTgtLowC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32TgtDutyDeltMaxC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MidPotMaxMonitorDutyC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MidPotMinMonitorDutyC;
extern CONST(float32, BLDC_CALIB) BLDC_kf32MotorSpeedC;
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

#endif /* __BLDC_CALIB_H_ */

