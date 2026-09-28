/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : AMAIN                                                   */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : AMAIN                                                   */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : AMAIN_L.H                                               */
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

#ifndef AMAIN_L_H
#define AMAIN_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define AMAIN_AU8ERRCODE_COLS                   ( 20 )
#define AMAIN_FaultCodeNum_COLS                 ( 16 )

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
extern CONST(boolean, AMAIN_CALIB) AMAIN_HARDBenchOnC;
extern CONST(boolean, AMAIN_CALIB) AMAIN_VSIBenchOnWriteDataC;
extern CONST(boolean, AMAIN_CALIB) MAIN_b800VsersionSelcetEnC;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
extern CONST(float32, AMAIN_CALIB) AMAIN_f32CanSpeedTgtSetC;
extern CONST(float32, AMAIN_CALIB) AMAIN_f32UvwOvCurrThdC;
extern CONST(uint32, AMAIN_CALIB) AMAIN_u32VSICntCkreqESMStartedC;
extern CONST(uint32, AMAIN_CALIB) AMAIN_u32VSICntCkreqVSIStartedC;
extern CONST(float32, AMAIN_CALIB) AMAIN_f32OverBhvThdC;
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
CONST(uint8, AMAIN_CALIB) AMAIN_u8IgbtFltConfirmCntC;
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
extern VAR(volatile uint8, MAIN_VAR) AMAIN_u8StopCacheFreezeFrameCnt;
extern uint8 AMAIN_u8DEV_Fault[AMAIN_FaultCodeNum_COLS];
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(boolean, AMAIN_CODE) AMAIN_bSpeedReadyMng(void);

#endif /* AMAIN_L_H */

/*-------------------------------- end of file -------------------------------*/
