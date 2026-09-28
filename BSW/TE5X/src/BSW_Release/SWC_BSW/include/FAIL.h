/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : FAIL                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : FAIL                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : FAIL.H                                                  */
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

#ifndef FAIL_H
#define FAIL_H

#include "Std_Types.h"
#include "FAIL_Nvm.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
enum
{
   FAIL_enuFLTDET_IDLE = 0,
   FAIL_enuFLTDET_STANDBY,
   FAIL_enuFLTDET_STOP_DIAG,
   FAIL_enuFLTDET_WAIT_RECV,
   FAIL_enuFLTDET_START_DIAG
};

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define FAIL_START_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"
extern VAR(uint16, FAIL_VAR) FAIL_u16KeyOnValue;
#define FAIL_STOP_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define FAIL_START_SEC_CODE
#include "FAIL_MemMap.h"
FUNC(void, FAIL_CODE) FAIL_vidCheckBatVolt(void);
FUNC(void, FAIL_CODE) FAIL_vidClearComLostFlg(void);
FUNC(void, FAIL_CODE) FAIL_vidEnableEmbFltCheck(void);
FUNC(void, FAIL_CODE) FAIL_vidDisableEmbFltCheck(void);
FUNC(void, FAIL_CODE) FAIL_vidFailDetection_1000ms(void);
FUNC(void, FAIL_CODE) FAIL_vidFailDetection_100ms(void);
FUNC(void, FAIL_CODE) FAIL_vidFailDetection_10ms(void);
FUNC(void, FAIL_CODE) FAIL_vidInit(void);
FUNC(void, FAIL_CODE) FAIL_vidInitVSICounters(void);
FUNC(void, FAIL_CODE) FAIL_vidPowerDown(void);
FUNC(void, FAIL_CODE) FAIL_vidPowerUp(void);
FUNC(void, FAIL_CODE) FAIL_vidFailDetection_1ms(void);
FUNC(void, FAIL_CODE) GFAIL_vidFailDetection_1ms(void);
FUNC(void, FAIL_CODE) AFAIL_vidFailDetection_1ms(void);
FUNC(void, FAIL_CODE) OFAIL_vidFailDetection_1ms(void);
#define FAIL_STOP_SEC_CODE
#include "FAIL_MemMap.h"


#endif /* FAIL_H */

/*-------------------------------- end of file -------------------------------*/
