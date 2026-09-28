#ifndef __TPPC_CALIB_H_
#define __TPPC_CALIB_H_

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
 ****  Private Type Definitions
 ******************************************************************************/
/* Calib type definition */
typedef struct TPPC_tBoolCalibSet{
   boolean bHallInvalidFltTestOnC;
   boolean bHallUndefFltTestOnC;
   boolean bP5vAD2SOverVolFltTestOnC;
   boolean bP5vAD2SUnderVolFltTestOnC;
   boolean bOilPressShortGndFltTestOnC;
   boolean bOilPressShortVccFltTestOnC;
}TPPC_tBoolCalibSet;

typedef struct TPPC_tUint16CalibSet{
   uint16 u16TgtDutyRisingTimC;
   uint16 u16MidPotRcvTimC;
   uint16 u16MidPotFltConfirmC;
   uint16 u16MidPotFltIncStepC;
}TPPC_tUint16CalibSet;

typedef struct TPPC_tFloatCalibSet{
   float32 f32LVThdHighC;
   float32 f32LVThdLowC;
   float32 f32P5vAD2SOverVolC;
   float32 f32P5vAD2SUnderVolC;
   float32 f32MidPotShrtGndDutyC;
   float32 f32MidPotShrtVccDutyC;
   float32 f32MidPotTgtHighC;
   float32 f32MidPotTgtLowC;
   float32 f32TgtDutyDeltMaxC;
   float32 f32MidPotMaxMonitorDutyC;
   float32 f32MidPotMinMonitorDutyC;
   float32 f32MotorSpeedC;
}TPPC_tFloatCalibSet;

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
#define TPPC_CALIB_START_SEC_CONST_BOOL
#include "TPPC_MemMap.h" 
#define TPPC_CALIB_STOP_SEC_CONST_BOOL
#include "TPPC_MemMap.h" 

#define TPPC_CALIB_START_SEC_CONST_16
#include "TPPC_MemMap.h" 
extern CONST(uint8, TPPC_CALIB) TPPC_ku8AscRecoverCntMaxC;
#define TPPC_CALIB_STOP_SEC_CONST_16
#include "TPPC_MemMap.h" 

#define TPPC_CALIB_START_SEC_CONST_UNSPECIFIED
#include "TPPC_MemMap.h" 
#define TPPC_CALIB_STOP_SEC_CONST_UNSPECIFIED
#include "TPPC_MemMap.h" 

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

#endif /* __TPPC_CALIB_H_ */

