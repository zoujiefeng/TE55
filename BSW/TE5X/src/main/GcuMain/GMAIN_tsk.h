/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GMAIN                                                   */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : GMAIN                                                   */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : GMAIN.H                                                 */
/*                                                                            */
/* !Scope           : Public                                                  */
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

#ifndef GMAIN_H
#define GMAIN_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define GMAIN_AS32OCTRIMNVM_COLS                ( 5 )
#define GMAIN_PEPS_POWERMODE_LOCALON            ( 2 )
#define GMAIN_PEPS_POWERMODE_REMOTEON           ( 3 )

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
extern VAR(boolean, GMAIN_VAR) GMAIN_bAscFlag;
extern VAR(boolean, GMAIN_VAR) GMAIN_bESMStarted;
extern VAR(boolean, GMAIN_VAR) GMAIN_bVSIStarted;
extern VAR(boolean, GMAIN_VAR) GMAIN_ESMGo2StartupIEvent;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16Core0Cnt5;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16Core1Cnt1;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16Core0Cnt100;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16Core2Cnt10;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16PWMPeriodVal;
extern VAR(volatile sint32, GMAIN_VAR) GMAIN_as32OCTrimNvm[GMAIN_AS32OCTRIMNVM_COLS];
extern VAR(uint32,GMAIN_VAR) GMAIN_startTime;
extern VAR(uint32,GMAIN_VAR) GMAIN_EndTime;
extern VAR(uint32,GMAIN_VAR) GMAIN_TotalTime;
extern VAR(uint32,GMAIN_VAR) GCore1_PositionStartTime;
extern VAR(uint32,GMAIN_VAR) GCore1_PositionStopTime;
extern VAR(uint32,GMAIN_VAR) GCore1_PositionTotalTime;
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, GMAIN_CODE) GMAIN_TaskInit(void);
FUNC(boolean, GMAIN_CODE) GMAIN_bInitOcTrimData(void);
FUNC(boolean, GMAIN_CODE) GMAIN_bChkOcCondition(void);
FUNC(boolean, GMAIN_CODE) GMAIN_bSetSaforiAutophsAngC(const uint16);
FUNC(boolean, GMAIN_CODE) GMAIN_bSetSimensAutophsAngC(const uint16);
FUNC(float, GMAIN_CODE) GMAIN_f32GetAutophsingAngle(void);
FUNC(void, GMAIN_CODE) GMAIN_vidPositionTreatment(void);
FUNC(void, GMAIN_CODE) GMAIN_vidVSITreatment(void);
extern void GMAIN_vidOcDataRestore(void);
boolean GMAIN_vidGetProgCondition(void);


#endif /* GMAIN_H */

/*-------------------------------- end of file -------------------------------*/
