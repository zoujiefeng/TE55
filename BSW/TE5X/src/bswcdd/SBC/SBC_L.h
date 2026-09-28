/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : SBC                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : SBC                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : SBC_L.H                                                 */
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

#ifndef SBC_L_H
#define SBC_L_H

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
#define SBC_CALIB_START_SEC_CONST_32
#include "SBC_MemMap.h"
extern CONST(uint8, SBC_CALIB) SBC_u8ServiceTimeC;
extern CONST(uint16, SBC_CALIB) SBC_ku16IntUnderVoltThdC;
extern CONST(uint16, SBC_CALIB) SBC_ku16IntUvTimoutC;
extern CONST(float32, SBC_CALIB) SBC_f32UnderVolHighThresholdC;
extern CONST(float32, SBC_CALIB) SBC_f32UnderVolLowThresholdC;
extern CONST(float32, SBC_CALIB) SBC_f32RecoverThresholdC;
extern CONST(boolean, SBC_CALIB) SBC_bServiceDisableC;
#define SBC_CALIB_STOP_SEC_CONST_32
#include "SBC_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define SBC_START_SEC_VAR_UNSPECIFIED
#include "SBC_MemMap.h"
extern VAR(uint8, SBC_VAR) SBC_u8UserCmdReq;
extern VAR(uint16, SBC_VAR) SBC_u16P5vAD2SRaw;
extern VAR(uint16, SBC_VAR) SBC_u16GatewayRaw;
extern VAR(uint16, SBC_VAR) SBC_u16MainSupRaw;
extern VAR(uint16, SBC_VAR) SBC_u16P5vRefProtRaw; 
extern VAR(uint16, SBC_VAR) SBC_u16P5vComRaw; 
extern VAR(uint16, SBC_VAR) SBC_u16IntUvTimCnt;
extern VAR(uint16, SBC_VAR) SBC_u16OtherAbnormCnt;
extern VAR(boolean, SBC_VAR) SBC_bDeintWdgCmd;
extern VAR(boolean, SBC_VAR) SBC_bStdbyModReq;
extern VAR(boolean, SBC_VAR) SBC_bWdgActvFlg;
extern VAR(boolean, SBC_VAR) SBC_bSpiOperateFlag;
extern VAR(boolean, SBC_VAR) SBC_bUserCmdSendFlag;
#define SBC_STOP_SEC_VAR_UNSPECIFIED
#include "SBC_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* SBC_L_H */

/*-------------------------------- end of file -------------------------------*/
