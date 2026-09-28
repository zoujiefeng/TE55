/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : BLDC                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : BLDC                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : BLDC.H                                                  */
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

#ifndef __BLDC_H_
#define __BLDC_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"

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
void BLDCDev_vidInit(const uint8 ku8DevID);
void BLDCDev_vidMotorStateMng(const uint8 ku8DevID);
void BLDCDev_vidMotPosPwmMng(const uint8 ku8DevID);
void BLDCDev_vidGetPosSigPerd(const uint8 ku8DevID, uint32* pu32PosSigPerd);
void BLDCDev_vidGetPositionDuty(const uint8 ku8DevID, float32* pf32PosDuty);
extern boolean BLDC_bPwmIsReady(void);
void BLDCDev_vidHallDiagMainfunction(const uint8 ku8DevID, const uint8 u8CurHallStt);
uint8 BLDCDev_u8GetHallStt(const uint8 ku8DevID);
void BLDCDev_vidChgHallPattern(const uint8 ku8DevID);
void BLDCDev_vidSetPwmBcDuty(const uint8 ku8DevID, const float32 f32Duty);

uint8 BLDCDev_u8GetHallState(const uint8 ku8DevID);
uint8 BLDCDev_u8GetCurDirSts(const uint8 ku8DevID);
uint8 BLDCDev_u8GetDutyModeStt(const uint8 ku8DevID);
boolean BLDCDev_bGetHallUndefFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetHallInvalidFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetP5vAD2SOverVolFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetP5vAD2SUnderVolFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetUvwShortGnd(const uint8 ku8DevID);
boolean BLDCDev_bGetUvwShortVs(const uint8 ku8DevID);

#endif /* __BLDC_H_ */

/*-------------------------------- end of file -------------------------------*/
