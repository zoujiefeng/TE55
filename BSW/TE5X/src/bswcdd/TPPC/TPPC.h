/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : TPPC                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : TPPC                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : TPPC.H                                                  */
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

#ifndef __TPPC_H_
#define __TPPC_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "TPPC_DeviceCfg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
#define  TPPC_START_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"
extern void TPPCDev_vidInit(const uint8 ku8DevID);
extern void TPPCDev_vidAscEntry(const uint8 ku8DevID);
extern void TPPCDev_vidStartTimer(const uint8 ku8DevID);
extern void TPPCDev_vidStopPwmOutput(const uint8 ku8DevID);
extern void TPPCDev_vidMotorStateMng(const uint8 ku8DevID);
extern void TPPCDev_vidSetPwmFreq(const uint8 ku8DevID, float32 f32Freq);
extern void TPPCDev_vidSetPwmBcDuty(const uint8 ku8DevID, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
extern void TPPCDev_vidSetPwmModReq(const uint8 ku8DevID, const uint16 u16PwmMod);
extern void TPPCDev_vidSetClrFaultReq(const uint8 ku8DevID, const boolean bClrFaultReq);
extern void TPPCDev_vidSetMotorSpdRdyFlg(const uint8 ku8DevID, const boolean bMotorSpdRdy);
extern uint8 TPPCDev_u8GetPwmState(const uint8 ku8DevID);
extern boolean TPPCDev_bGetPwmRunFlag(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbt(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbtL(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbtH(const uint8 ku8DevID);
extern boolean TPPCDev_bGetAscisClose(const uint8 ku8DevID);
#define  TPPC_STOP_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"

#endif /* __TPPC_H_ */

/*-------------------------------- end of file -------------------------------*/
