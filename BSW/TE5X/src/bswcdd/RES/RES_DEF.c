/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : RES                                                     */
/*                                                                            */
/* !Module          : RES                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : RES_DEF.C                                               */
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
#include "RES.h"
#include "RES_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define RES_CALIB_START_SEC_CONST_BOOL
#include "RES_MemMap.h"
CONST(boolean, RES_CALIB) RES_bGenerateSyncPosC = 1;
#define RES_CALIB_STOP_SEC_CONST_BOOL
#include "RES_MemMap.h"

#define RES_CALIB_START_SEC_CONST_8
#include "RES_MemMap.h"
CONST(uint8, RES_CALIB) RES_u8ExcitDutyPercentC = 50;
CONST(uint8, RES_CALIB) RES_u8SyncDutyPercentC = 5;
CONST(uint8, RES_CALIB) RES_u8SyncDutyPercent2C = 5;
/* Syn duty must be bigger than ADC kernal convertion time, for example: 0.5us * 6 channel = 3us */
#define RES_CALIB_STOP_SEC_CONST_8
#include "RES_MemMap.h"

#define RES_CALIB_START_SEC_CONST_16
#include "RES_MemMap.h"
CONST(uint16, RES_CALIB) RES_u16ExcitDelayC = 150; /* 15us */
CONST(uint16, RES_CALIB) RES_u16SyncDelayC = 450;  /* 45us */
CONST(uint16, RES_CALIB) RES_u16SyncDelay2C = 960; /* 96.0us */
CONST(uint16, RES_CALIB) RES_u16VSICkreqPeriodDefC = 1000;
#define RES_CALIB_STOP_SEC_CONST_16
#include "RES_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/*-------------------------------- end of file -------------------------------*/
