/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : RES                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : RES                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : RES.H                                                   */
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

#ifndef RES_H
#define RES_H

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
#define RES_CALIB_START_SEC_CONST_BOOL
#include "RES_MemMap.h"
extern CONST(boolean, RES_CALIB) RES_bGenerateSyncPosC;
#define RES_CALIB_STOP_SEC_CONST_BOOL
#include "RES_MemMap.h"

#define RES_CALIB_START_SEC_CONST_8
#include "RES_MemMap.h"
extern CONST(uint8, RES_CALIB) RES_u8ExcitDutyPercentC;
extern CONST(uint8, RES_CALIB) RES_u8SyncDutyPercentC;
extern CONST(uint8, RES_CALIB) RES_u8SyncDutyPercent2C;
#define RES_CALIB_STOP_SEC_CONST_8
#include "RES_MemMap.h"

#define RES_CALIB_START_SEC_CONST_16
#include "RES_MemMap.h"
extern CONST(uint16, RES_CALIB) RES_u16ExcitDelayC;
extern CONST(uint16, RES_CALIB) RES_u16SyncDelayC;
extern CONST(uint16, RES_CALIB) RES_u16SyncDelay2C;
extern CONST(uint16, RES_CALIB) RES_u16VSICkreqPeriodDefC;
#define RES_CALIB_STOP_SEC_CONST_16
#include "RES_MemMap.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* RES_H */

/*-------------------------------- end of file -------------------------------*/
