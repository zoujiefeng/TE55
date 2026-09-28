/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : OMAIN                                                   */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : OMAIN                                                   */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : OMAIN_L.H                                               */
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

#ifndef OMAIN_L_H
#define OMAIN_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define OMAIN_AU8ERRCODE_COLS                   ( 20 )
#define OMAIN_FaultCodeNum_COLS                 ( 16 )

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
extern CONST(boolean, OMAIN_CALIB) OMAIN_HARDBenchOnC;
extern CONST(boolean, OMAIN_CALIB) OMAIN_VSIBenchOnWriteDataC;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
extern CONST(float32, OMAIN_CALIB) OMAIN_f32CanSpeedTgtSetC;
extern CONST(float32, OMAIN_CALIB) OMAIN_f32UvwOvCurrThdC;
extern CONST(uint32, OMAIN_CALIB) OMAIN_u32VSICntCkreqESMStartedC;
extern CONST(uint32, OMAIN_CALIB) OMAIN_u32VSICntCkreqVSIStartedC;
extern CONST(float32, OMAIN_CALIB) OMAIN_f32OverBhvThdC;
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
CONST(uint8, OMAIN_CALIB) OMAIN_u8IgbtFltConfirmCntC;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
extern VAR(volatile uint8, MAIN_VAR) OMAIN_u8StopCacheFreezeFrameCnt;
extern uint8 OMAIN_u8DEV_Fault[OMAIN_FaultCodeNum_COLS];
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(boolean, OMAIN_CODE) OMAIN_bSpeedReadyMng(void);

#endif /* OMAIN_L_H */

/*-------------------------------- end of file -------------------------------*/
