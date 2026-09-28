/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : FAIL                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : FAIL                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : FAIL_L.H                                                */
/*                                                                            */
/* !Scope           : Private                                                 */
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

#ifndef FAIL_L_H
#define FAIL_L_H

#include "Std_Types.h"
#include "FAIL_Nvm.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define FAIL_START_SEC_CALIB_UNSPECIFIED
#include "FAIL_MemMap.h"
extern CONST(boolean, FAIL_CALIB) FAIL_bCanErrCheckonC;
extern CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU1;
extern CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU2;
extern CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU3;
extern CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU4;
extern CONST(boolean, FAIL_CALIB) FAIL_bErrCheckonC_ECU5;
extern CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOffLowC;
extern CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOffHighC;
extern CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOnLowC;
extern CONST(float32, FAIL_CALIB) FAIL_kf32DiagVoltOnHighC;
extern CONST(float32, FAIL_CALIB) FAIL_ku16UnderVolFiltTimC;
extern CONST(float32, FAIL_CALIB) FAIL_ku16RcvVolFiltTimC;
#define FAIL_STOP_SEC_CALIB_UNSPECIFIED
#include "FAIL_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define FAIL_START_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"
extern VAR(boolean, FAIL_VAR) FAIL_bCanErrChkDisabled;
extern VAR(boolean, FAIL_VAR) FAIL_bComLostDiagTEna;
extern VAR(boolean, FAIL_VAR) FAIL_bComLostDiagVEna;
extern VAR(boolean, FAIL_VAR) FAIL_bComLostDiagVHigh;
extern VAR(boolean, FAIL_VAR) FAIL_bComLostDiagVLow;
extern VAR(boolean, FAIL_VAR) FAIL_bDebug1;
extern VAR(boolean, FAIL_VAR) FAIL_bRstHotFlag;
extern VAR(uint8, FAIL_VAR) FAIL_u8Can01BusoffCnt;
extern VAR(uint8, FAIL_VAR) FAIL_u8CCP_FaultLevel;
extern VAR(uint16, FAIL_VAR) FAIL_u16ComLostDiagEnaCnt;
extern VAR(uint16, FAIL_VAR) FAIL_u16ComLostDiagVRecCnt;
extern VAR(uint16, FAIL_VAR) FAIL_u16KeyOnDelay;
extern VAR(uint16, FAIL_VAR) FAIL_u16Test;
#define FAIL_STOP_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* FAIL_L_H */

/*-------------------------------- end of file -------------------------------*/
