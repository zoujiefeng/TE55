/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : FAIL                                                    */
/*                                                                            */
/* !Module          : FAIL                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : FAIL_DEF.C                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* PVCS Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* !VnrOff  : Names imposed by the customer                                   */
/* !CompReq :                                                                 */
/******************************************************************************/

#include "Std_Types.h"
#include "FAIL_Nvm.h"
#include "FAIL.h"
#include "FAIL_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define FAIL_START_SEC_CALIB_UNSPECIFIED
#include "FAIL_MemMap.h"
CONST(boolean, FAIL_CALIB) FAIL_bCanErrCheckonC = TRUE;
CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU1 = TRUE;
CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU2 = TRUE;
CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU3 = TRUE;
CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU4 = TRUE;
CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU5 = TRUE;
CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOffLowC = 14.0f;
CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOffHighC = 36.0f;
CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOnLowC = 16.0f;
CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOnHighC = 34.0f;
CONST(float32, FAIL_CALIB) FAIL_ku16UnderVolFiltTimC = 50;
CONST(float32, FAIL_CALIB) FAIL_ku16RcvVolFiltTimC = 50;
#define FAIL_STOP_SEC_CALIB_UNSPECIFIED
#include "FAIL_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define FAIL_START_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"
VAR(boolean, FAIL_VAR) FAIL_bCanErrChkDisabled;
VAR(boolean, FAIL_VAR) FAIL_bComLostDiagTEna;
VAR(boolean, FAIL_VAR) FAIL_bComLostDiagVEna;
VAR(boolean, FAIL_VAR) FAIL_bComLostDiagVHigh;
VAR(boolean, FAIL_VAR) FAIL_bComLostDiagVLow;
VAR(boolean, FAIL_VAR) FAIL_bDebug1;
VAR(boolean, FAIL_VAR) FAIL_bRstHotFlag;
VAR(uint8, FAIL_VAR) FAIL_u8Can01BusoffCnt;
VAR(uint8, FAIL_VAR) FAIL_u8CCP_FaultLevel;
VAR(uint16, FAIL_VAR) FAIL_u16ComLostDiagEnaCnt;
VAR(uint16, FAIL_VAR) FAIL_u16ComLostDiagVRecCnt;
VAR(uint16, FAIL_VAR) FAIL_u16KeyOnDelay;
VAR(uint16, FAIL_VAR) FAIL_u16KeyOnValue;
VAR(uint16, FAIL_VAR) FAIL_u16Test;
#define FAIL_STOP_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
