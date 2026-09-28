/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : TLE9180                                                 */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : TLE9180                                                 */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : TLE9180_L.H                                             */
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

#ifndef __TLE9180_L_H_
#define __TLE9180_L_H_

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define TLE9180_CALIB_START_SEC_CONST_BOOL
#include "TLE9180_MemMap.h"
extern CONST(boolean, TLE9180_CALIB) TLE9180_bManualReadRegC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bDrvOverVoltageTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bDrvUnderVoltageTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bDrvOverTempTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bPhaseShortHighTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bPhaseShortLowTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bDrvOverCurrentTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bPhsOverVoltTestOnC;
extern CONST(boolean, TLE9180_CALIB) TLE9180_bPhasePerfTestOnC;
#define TLE9180_CALIB_STOP_SEC_CONST_BOOL
#include "TLE9180_MemMap.h"

#define TLE9180_CALIB_START_SEC_CONST_8
#include "TLE9180_MemMap.h"
extern CONST(uint8, TLE9180_CALIB) TLE9180_ku8MaxInitTimeC;
extern CONST(uint8, TLE9180_CALIB) TLE9180_ku8MaxReCfgTimeC;
extern CONST(uint8, TLE9180_CALIB) TLE9180_ku8EnaResetCntC;
extern CONST(uint8, TLE9180_CALIB) TLE9180_ku8ErrRecvMaxNumC;
#define TLE9180_CALIB_STOP_SEC_CONST_8
#include "TLE9180_MemMap.h"

#define TLE9180_CALIB_START_SEC_CONST_16
#include "TLE9180_MemMap.h"
extern CONST(uint16, TLE9180_CALIB) TLE9180_ku16EnaResetTimeC;
extern CONST(uint16, TLE9180_CALIB) TLE9180_ku16ErrPinChkTimC;
#define TLE9180_CALIB_STOP_SEC_CONST_16
#include "TLE9180_MemMap.h"

#define TLE9180_CALIB_START_SEC_CONST_UNSPECIFIED
#include "TLE9180_MemMap.h"
extern CONST(float32, TLE9180_CALIB) TLE9180_kf32PhsTempFaultC;
extern CONST(float32, TLE9180_CALIB) TLE9180_kf32PhsTempFltRecoverC;
extern CONST(float32, TLE9180_CALIB) TLE9180_kf32BatteryVolValidThrdC;
#define TLE9180_CALIB_STOP_SEC_CONST_UNSPECIFIED
#include "TLE9180_MemMap.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
extern VAR(boolean, TLE9180_VAR) TLE9180_bPhasePerf;
extern VAR(boolean, TLE9180_VAR) TLE9180_bTempWarning;


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* __TLE9180_L_H_ */

/*-------------------------------- end of file -------------------------------*/
