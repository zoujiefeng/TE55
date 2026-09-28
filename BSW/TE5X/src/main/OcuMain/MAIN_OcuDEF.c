/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : OMAIN                                                    */
/*                                                                            */
/* !Module          : OMAIN                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : OMAIN_DEF.C                                              */
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
#include "MAIN_Ocutsk.h"
#include "MAIN_OcuL.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
CONST(float32, OMAIN_CALIB) OMAIN_f32CanSpeedTgtSetC = 1500; /*ACU Can Speed Target Set*/
CONST(float32, OMAIN_CALIB) OMAIN_f32UvwOvCurrThdC = 75;
CONST(uint32, OMAIN_CALIB) OMAIN_u32VSICntCkreqESMStartedC = 4900;
CONST(uint32, OMAIN_CALIB) OMAIN_u32VSICntCkreqVSIStartedC = 100;
CONST(float32, OMAIN_CALIB) OMAIN_f32OverBhvThdC = 0.159; /* 2483*/
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
CONST(boolean, OMAIN_CALIB) OMAIN_HARDBenchOnC = 0;
CONST(boolean, OMAIN_CALIB) OMAIN_VSIBenchOnWriteDataC = 0;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
CONST(uint8, OMAIN_CALIB) OMAIN_u8IgbtFltConfirmCntC = 2;
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
VAR(volatile uint8, OMAIN_VAR) OMAIN_u8StopCacheFreezeFrameCnt;
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
/*-------------------------------- end of file -------------------------------*/
