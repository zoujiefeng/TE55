/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : DSM                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : DSM.H                                                   */
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

#ifndef DSM_H
#define DSM_H

#include "DSM_Typ.h"


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
typedef enum DSM_CONTROL_UNIT_INDEX{
   DSM_UNIT_0 = 0,
   DSM_UNIT_1,
   DSM_UNIT_2,
   DSM_UNIT_3,
   DSM_UNIT_4,
   DSM_UNIT_MAX_NUM
}DSM_CONTROL_UNIT_INDEX;

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define DSM_DTCNUMBER_COLS                     ( 10 )
#define DSM_DTCSTATUSNVM_COLS                  ( 10 )
#define FAULT_FAILURE_LEVEL_0                     0
#define DSM_UNIT_MAP_MCU                      DSM_UNIT_0
#define DSM_UNIT_MAP_GCU                      DSM_UNIT_1
#define DSM_UNIT_MAP_ACU                      DSM_UNIT_2
#define DSM_UNIT_MAP_OCU                      DSM_UNIT_3
#define DSM_UNIT_MAP_PDU                      DSM_UNIT_4
#define DSM_UNIT_MAP_MAX                      DSM_UNIT_MAX_NUM

#define DSM_CONTROL_UNIT_NUM            (DSM_UNIT_MAX_NUM + 1)   /* 0:MCU 1:GCU 2:ACU 3:OCU 4:MAX FAULTLEVEL */

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define CALIB_START_SEC_CONST_16
#include "MemMap.h"
extern CONST(uint16, DSM_CALIB) FaultEraseRequestC;
#define CALIB_STOP_SEC_CONST_16
#include "MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define DSM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint32, DSM_VAR) DSM_DtcNumber[DSM_DTCNUMBER_COLS];
extern VAR(volatile uint8, DSM_VAR) FaultFailureLevel;
extern VAR(volatile uint8, DSM_VAR) DSM_FaultFailureLevel[DSM_CONTROL_UNIT_NUM];
extern VAR(uint16, DSM_VAR) FaultEraseRequest;
#define DSM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define DSM_START_SEC_CODE
#include "MemMap.h"
FUNC(uint8, DSM_CODE) DSM_u8GetUnitFaultLevel(uint8 u8UnitIndex);
FUNC(void, DSM_CODE) FaultClear(uint8 u8LocMotorIndex);
FUNC(void, DSM_CODE) FaultCounterInit(void);
FUNC(void, DSM_CODE) FaultDisableAllDTCs(void);
FUNC(void, DSM_CODE) FaultEnableAllDTCs(void);
FUNC(void, DSM_CODE) FaultManualErase(void);
FUNC(void, DSM_CODE) FaultPowerDownManage(void);
#define DSM_STOP_SEC_CODE
#include "MemMap.h"


#endif /* DSM_H */

/*-------------------------------- end of file -------------------------------*/
