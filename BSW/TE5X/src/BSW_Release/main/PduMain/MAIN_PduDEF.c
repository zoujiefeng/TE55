/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : RcMAIN                                                    */
/*                                                                            */
/* !Module          : RcMAIN                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : RcMAIN_DEF.C                                              */
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
#include "MAIN_Pdutsk.h"
#include "MAIN_PduL.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"

#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"

#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"


#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/*-------------------------------- end of file -------------------------------*/
