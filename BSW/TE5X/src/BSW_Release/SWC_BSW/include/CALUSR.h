/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : CALUSR                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : CALUSR                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : CALUSR.H                                                */
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

#ifndef CALUSR_H
#define CALUSR_H

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
#define CALUSR_START_SEC_CALIB_UNSPECIFIED
#include "MemMap.h"
extern CONST(uint32, CALUSR_CALIB) CalUsr_ku32CalibUpdEnaMskA;
extern CONST(uint32, CALUSR_CALIB) CalUsr_ku32CalibUpdEnaMskB;
#define CALUSR_STOP_SEC_CALIB_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define CALUSR_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(boolean, CALUSR_VAR) CalUsr_bIsCalibUpdEna;
extern VAR(uint32, CALUSR_VAR) CalUsr_u32PODataCRC;
#define CALUSR_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define CALUSR_START_SEC_CODE
#include "MemMap.h"
FUNC(boolean, CALUSR_CODE) CALUsr_bIsCalDownldEnabled(void);
FUNC(boolean, CALUSR_CODE) CalUsr_bVerifyCalData(void);
FUNC(void, CALUSR_CODE) CalUsr_vidInit(void);
FUNC(void, CALUSR_CODE) CalUsr_vidSchHandler(void);
#define CALUSR_STOP_SEC_CODE
#include "MemMap.h"


#endif /* CALUSR_H */

/*-------------------------------- end of file -------------------------------*/
