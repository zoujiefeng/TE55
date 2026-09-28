/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GCCU6                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : GCCU6                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : GCCU6.H                                                  */
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

#ifndef GCCU6_H
#define GCCU6_H

#include "Std_Types.h"
#include "IfxCcu6_bf.h"
#include "IfxCcu6.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/*------------------------------------*/
/* Mode                               */
/*------------------------------------*/
#define GVSISRV_SIGNAL_MODE_REQ_OFF        (uint8)0x00 /* b00 */
#define GVSISRV_SIGNAL_MODE_REQ_INIT       (uint8)0x02 /* b10 */
#define GVSISRV_SIGNAL_MODE_REQ_PWM_DIRECT (uint8)0x01 /* b01 */
#define GVSISRV_SIGNAL_MODE_REQ_PWM_HARD   (uint8)0x03 /* b11 */

/*----------------------------------------------------------------------------*/
/* DEFINES associated to GVSISRV_vidSetModeReq function                        */
/*----------------------------------------------------------------------------*/
#define GVSISRV_VSI_MODE_REQ_OFF           (uint8)0x00 /* b000 */
#define GVSISRV_VSI_MODE_REQ_INIT_CAL1     (uint8)0x05 /* b101 */
#define GVSISRV_VSI_MODE_REQ_INIT_CAL2     (uint8)0x06 /* b110 */
#define GVSISRV_VSI_MODE_REQ_INIT_CAL3     (uint8)0x07 /* b111 */
#define GVSISRV_VSI_MODE_REQ_PWM_DIRECT    (uint8)0x01 /* b001 */
#define GVSISRV_VSI_MODE_REQ_PWM_HARD      (uint8)0x03 /* b011 */

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
FUNC(boolean, GCCU6_CODE) GCCU6_bGetAscStatus(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetHwFaultDcOvVolt(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetHwFaultIgbtH(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetHwFaultIgbtL(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetHwFaultOvcU(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetHwFaultOvcV(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetHwFaultOvcW(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetPwmRuningFlg(void);
FUNC(boolean, GCCU6_CODE) GCCU6_bGetZeroMatchFlg(void);
FUNC(uint16, GCCU6_CODE) GCCU6_u16GetPwmDeadTime(void);
FUNC(uint16, GCCU6_CODE) GCCU6_u16GetPwmDutyUI(void);
FUNC(uint16, GCCU6_CODE) GCCU6_u16GetPwmDutyVI(void);
FUNC(uint16, GCCU6_CODE) GCCU6_u16GetPwmDutyWI(void);
FUNC(uint16, GCCU6_CODE) GCCU6_u16GetPwmModReq(void);
FUNC(uint8, GCCU6_CODE) GCCU6_u8GetPwmState(void);
FUNC(uint8, GCCU6_CODE) GCCU6_u8GetIGBTStatus(void);
FUNC(void, GCCU6_CODE) GCCU6_vidEnaTrapPinFunc(void);
FUNC(void, GCCU6_CODE) GCCU6_Init(void);
FUNC(void, GCCU6_CODE) GCCU6_vidMcuAscEnter(void);
FUNC(void, GCCU6_CODE) GCCU6_vidMotorStateMng(void);
FUNC(void, GCCU6_CODE) GCCU6_vidPwmDrvClkDiag(void);
FUNC(void, GCCU6_CODE) GCCU6_vidSetClrTrapReq(boolean);
FUNC(void, GCCU6_CODE) GCCU6_vidSetHvOverFlg(const boolean);
FUNC(void, GCCU6_CODE) GCCU6_vidSetIuvwZeroCompReq(const boolean);
FUNC(void, GCCU6_CODE) GCCU6_vidSetMotorSpdRdyFlg(boolean);
FUNC(void, GCCU6_CODE) GCCU6_vidSetPwmHlDuty(float32, float32, float32);
FUNC(void, GCCU6_CODE) GCCU6_vidSetPwmHlPeriod(const uint16);
FUNC(void, GCCU6_CODE) GCCU6_vidSetPwmMaxDutyCycle(const float32);
FUNC(void, GCCU6_CODE) GCCU6_vidSetPwmMinDutyCycle(const float32);
FUNC(void, GCCU6_CODE) GCCU6_vidSetPwmModReq(const uint16);
FUNC(void, GCCU6_CODE) GCCU6_vidSoftTrapTrigger(const boolean);
FUNC(void, GCCU6_CODE) GCCU6_vidSwitchPwmUpdEvent(void);
FUNC(void, GCCU6_CODE) GCCU6_vidExcitationPwmState(uint8 u8ExciPwmStateG);

#endif /* GCCU6_H */

/*-------------------------------- end of file -------------------------------*/
