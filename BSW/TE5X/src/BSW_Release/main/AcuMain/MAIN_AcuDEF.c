/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : AMAIN                                                    */
/*                                                                            */
/* !Module          : AMAIN                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : AMAIN_DEF.C                                              */
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
#include "MAIN_Acutsk.h"
#include "MAIN_AcuL.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
CONST(float32, AMAIN_CALIB) AMAIN_f32CanSpeedTgtSetC = 1500; /*ACU Can Speed Target Set*/
CONST(float32, AMAIN_CALIB) AMAIN_f32UvwOvCurrThdC = 75;
CONST(uint32, AMAIN_CALIB) AMAIN_u32VSICntCkreqESMStartedC = 4900;
CONST(uint32, AMAIN_CALIB) AMAIN_u32VSICntCkreqVSIStartedC = 100;
CONST(float32, AMAIN_CALIB) AMAIN_f32OverBhvThdC = 0.159; /* 2483*/
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
CONST(boolean, AMAIN_CALIB) AMAIN_HARDBenchOnC = 0;
CONST(boolean, AMAIN_CALIB) AMAIN_VSIBenchOnWriteDataC = 0;
CONST(boolean, AMAIN_CALIB) MAIN_b800VsersionSelcetEnC = FALSE;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
CONST(uint8, AMAIN_CALIB) AMAIN_u8IgbtFltConfirmCntC = 2;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
VAR(volatile uint8, AMAIN_VAR) AMAIN_u8StopCacheFreezeFrameCnt;
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
/*-------------------------------- end of file -------------------------------*/
