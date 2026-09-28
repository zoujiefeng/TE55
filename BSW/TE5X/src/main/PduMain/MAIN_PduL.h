/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : RcMAIN                                                   */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : RcMAIN                                                   */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : RcMAIN_L.H                                               */
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

#ifndef RcMAIN_L_H
#define RcMAIN_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define RcMAIN_AU8ERRCODE_COLS                   ( 20 )
#define RcMAIN_FaultCodeNum_COLS                 ( 16 )

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"

#define MAIN_CALIB_STOP_SEC_CONST_32
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
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* OMAIN_L_H */

/*-------------------------------- end of file -------------------------------*/
