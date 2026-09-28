/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : CCU6                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : CCU6                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : CCU6.H                                                  */
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

#ifndef CCU6_H
#define CCU6_H

#include "Std_Types.h"
#include "IfxCcu6_bf.h"
#include "IfxCcu6.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/*------------------------------------*/
/* Mode                               */
/*------------------------------------*/
#define VSISRV_SIGNAL_MODE_REQ_OFF        (uint8)0x00 /* b00 */
#define VSISRV_SIGNAL_MODE_REQ_INIT       (uint8)0x02 /* b10 */
#define VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT (uint8)0x01 /* b01 */
#define VSISRV_SIGNAL_MODE_REQ_PWM_HARD   (uint8)0x03 /* b11 */

/*----------------------------------------------------------------------------*/
/* DEFINES associated to VSISRV_vidSetModeReq function                        */
/*----------------------------------------------------------------------------*/
#define VSISRV_VSI_MODE_REQ_OFF           (uint8)0x00 /* b000 */
#define VSISRV_VSI_MODE_REQ_INIT_CAL1     (uint8)0x05 /* b101 */
#define VSISRV_VSI_MODE_REQ_INIT_CAL2     (uint8)0x06 /* b110 */
#define VSISRV_VSI_MODE_REQ_INIT_CAL3     (uint8)0x07 /* b111 */
#define VSISRV_VSI_MODE_REQ_PWM_DIRECT    (uint8)0x01 /* b001 */
#define VSISRV_VSI_MODE_REQ_PWM_HARD      (uint8)0x03 /* b011 */

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(boolean, CCU6_CODE) CCU6_bGetAscStatus(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetHwFaultDcOvVolt(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetHwFaultIgbtH(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetHwFaultIgbtL(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetHwFaultOvcU(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetHwFaultOvcV(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetHwFaultOvcW(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetPwmRuningFlg(void);
FUNC(boolean, CCU6_CODE) CCU6_bGetZeroMatchFlg(void);
FUNC(uint16, CCU6_CODE) CCU6_u16GetPwmDeadTime(void);
FUNC(uint16, CCU6_CODE) CCU6_u16GetPwmDutyUI(void);
FUNC(uint16, CCU6_CODE) CCU6_u16GetPwmDutyVI(void);
FUNC(uint16, CCU6_CODE) CCU6_u16GetPwmDutyWI(void);
FUNC(uint16, CCU6_CODE) CCU6_u16GetPwmModReq(void);
FUNC(uint8, CCU6_CODE) CCU6_u8GetPwmState(void);
FUNC(uint8, CCU6_CODE) CCU6_u8GetIGBTStatus(void);
FUNC(void, CCU6_CODE) CCU6_vidEnaTrapPinFunc(void);
FUNC(void, CCU6_CODE) CCU6_Init(void);
FUNC(void, CCU6_CODE) CCU6_vidMcuAscEnter(void);
FUNC(void, CCU6_CODE) CCU6_vidMotorStateMng(void);
FUNC(void, CCU6_CODE) CCU6_vidPwmDrvClkDiag(void);
FUNC(void, CCU6_CODE) CCU6_vidSetClrTrapReq(boolean);
FUNC(void, CCU6_CODE) CCU6_vidSetHvOverFlg(const boolean);
FUNC(void, CCU6_CODE) CCU6_vidSetIuvwZeroCompReq(const boolean);
FUNC(void, CCU6_CODE) CCU6_vidSetMotorSpdRdyFlg(boolean);
FUNC(void, CCU6_CODE) CCU6_vidSetPwmHlDuty(float32, float32, float32);
FUNC(void, CCU6_CODE) CCU6_vidSetPwmHlPeriod(const uint16);
FUNC(void, CCU6_CODE) CCU6_vidSetPwmMaxDutyCycle(const float32);
FUNC(void, CCU6_CODE) CCU6_vidSetPwmMinDutyCycle(const float32);
FUNC(void, CCU6_CODE) CCU6_vidSetPwmModReq(const uint16);
FUNC(void, CCU6_CODE) CCU6_vidSoftTrapTrigger(const boolean);
FUNC(void, CCU6_CODE) CCU6_vidSwitchPwmUpdEvent(void);
FUNC(void, CCU6_CODE) CCU6_vidExcitationPwmState(uint8 u8ExciPwmState);
#endif /* CCU6_H */

/*-------------------------------- end of file -------------------------------*/
