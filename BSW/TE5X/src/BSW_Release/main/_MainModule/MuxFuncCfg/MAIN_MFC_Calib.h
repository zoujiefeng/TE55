#ifndef __MAIN_MFC_CALIB_H_
#define __MAIN_MFC_CALIB_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
extern const boolean MAIN_MFC_bCanBEnaC;
extern const boolean MAIN_MFC_bCanCEnaC;
extern const boolean MAIN_MFC_bCanDEnaC;
extern const boolean MAIN_MFC_bCanFEnaC;
extern const boolean MAIN_MFC_bCanEEnaC;
extern const boolean MAIN_MFC_bCanAEnaC;
extern const boolean MAIN_MFC_bDcAcEnaC;
extern const boolean MAIN_MFC_bTestEnaC;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
extern const uint8 MAIN_MFC_u8TempSensorCfgC_MCU1;
extern const uint8 MAIN_MFC_u8TempSensorCfgC_MCU2;
extern const uint8 MAIN_MFC_u8TempSensorCfgC_ACM;
extern const uint8 MAIN_MFC_u8TempSensorCfgC_EPS;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"

/*******************************************************************************
 **** Private Variable Definitions
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

#endif /* __MAIN_MFC_CALIB_H_ */
