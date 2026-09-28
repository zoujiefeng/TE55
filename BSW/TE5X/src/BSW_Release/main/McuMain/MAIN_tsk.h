/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : MAIN                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : MAIN.H                                                  */
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

#ifndef MAIN_H
#define MAIN_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define MAIN_AS32OCTRIMNVM_COLS                ( 5 )
#define MAIN_PEPS_POWERMODE_LOCALON            ( 2 )
#define MAIN_PEPS_POWERMODE_REMOTEON           ( 3 )
#define MAIN_AU16CALIBPARAMDFLASH_CRC          ( 9 )

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
extern VAR(boolean, MAIN_VAR) MAIN_bAscFlag;
extern VAR(boolean, MAIN_VAR) MAIN_bESMStarted;
extern VAR(boolean, MAIN_VAR) MAIN_bVSIStarted;
extern VAR(boolean, MAIN_VAR) MAIN_bComDisableFlg;
extern VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt1;
extern VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt2;
extern VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt5;
extern VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt10;
extern VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt100;
extern VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt200;
extern VAR(uint16, MAIN_VAR) MAIN_u16PWMPeriodVal;
extern VAR(volatile sint32, MAIN_VAR) MAIN_as32OCTrimNvm[MAIN_AS32OCTRIMNVM_COLS];
extern VAR(uint32,MAIN_VAR) Core0_u32ModReqStartTime;
extern VAR(uint32,MAIN_VAR) Core0_u32ModReqStopTime;
extern VAR(uint32,MAIN_VAR) Core0_u32ModReqTotalTime;
extern VAR(uint32,MAIN_VAR) Core0_Asw100msStartTime;
extern VAR(uint32,MAIN_VAR) Core0_Asw100msStopTime;
extern VAR(uint32,MAIN_VAR) Core0_Asw100msTotalTime;
extern VAR(uint32,MAIN_VAR) Core0_Asw10msStartTime;
extern VAR(uint32,MAIN_VAR) Core0_Asw10msStopTime;
extern VAR(uint32,MAIN_VAR) Core0_Asw10msTotalTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw100msStartTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw100msStopTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw100msTotalTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw10msStartTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw10msStopTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw10msTotalTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw1msStartTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw1msStopTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw1msTotalTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw50msStartTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw50msStopTime;
extern VAR(uint32,MAIN_VAR) Core0_Bsw50msTotalTime;
extern VAR(uint32,MAIN_VAR) MAIN_startTime;
extern VAR(uint32,MAIN_VAR) MAIN_EndTime;
extern VAR(uint32,MAIN_VAR) MAIN_TotalTime;
extern VAR(uint32,MAIN_VAR) Core1_Asw10msStartTime;
extern VAR(uint32,MAIN_VAR) Core1_Asw10msStopTime;
extern VAR(uint32,MAIN_VAR) Core1_Asw10msTotalTime;
extern VAR(uint32,MAIN_VAR) Core1_Asw1msStartTime;
extern VAR(uint32,MAIN_VAR) Core1_Asw1msStopTime;
extern VAR(uint32,MAIN_VAR) Core1_Asw1msTotalTime;
extern VAR(uint32,MAIN_VAR) Core1_Bsw10msStartTime;
extern VAR(uint32,MAIN_VAR) Core1_Bsw10msStopTime;
extern VAR(uint32,MAIN_VAR) Core1_Bsw10msTotalTime;
extern VAR(uint32,MAIN_VAR) Core1_PositionStartTime;
extern VAR(uint32,MAIN_VAR) Core1_PositionStopTime;
extern VAR(uint32,MAIN_VAR) Core1_PositionTotalTime;
extern VAR(uint32,MAIN_VAR) Core2_Asw10msStartTime;
extern VAR(uint32,MAIN_VAR) Core2_Asw10msStopTime;
extern VAR(uint32,MAIN_VAR) Core2_Asw10msTotalTime;
extern VAR(uint32,MAIN_VAR) Core2_Asw1msStartTime;
extern VAR(uint32,MAIN_VAR) Core2_Asw1msStopTime;
extern VAR(uint32,MAIN_VAR) Core2_Asw1msTotalTime;
extern VAR(uint32,MAIN_VAR) Core2_Bsw10msStartTime;
extern VAR(uint32,MAIN_VAR) Core2_Bsw10msStopTime;
extern VAR(uint32,MAIN_VAR) Core2_Bsw10msTotalTime;
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_TaskInit(void);
FUNC(boolean, MAIN_CODE) MAIN_bInitOcTrimData(void);
FUNC(boolean, MAIN_CODE) MAIN_bChkOcCondition(void);
boolean MAIN_bSetSaforiAutophsAngC(const uint16);
float MAIN_f32GetAutophsingAngle(void);
FUNC(void, MAIN_CODE) MAIN_vidPositionTreatment(void);
FUNC(void, MAIN_CODE) MAIN_vidVSITreatment(void);
extern void MAIN_vidOcDataRestore(void);
boolean MAIN_vidGetProgCondition(void);

#endif /* MAIN_H */

/*-------------------------------- end of file -------------------------------*/
