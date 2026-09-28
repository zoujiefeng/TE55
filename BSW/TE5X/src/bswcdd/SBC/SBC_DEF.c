/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : SBC                                                     */
/*                                                                            */
/* !Module          : SBC                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : SBC_DEF.C                                               */
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

#include "Std_Types.h"
#include "SBC.h"
#include "SBC_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define SBC_CALIB_START_SEC_CONST_32
#include "SBC_MemMap.h"
CONST(uint8, SBC_CALIB) SBC_u8ServiceTimeC = 30;
CONST(uint16, SBC_CALIB) SBC_ku16IntUnderVoltThdC = 200;
CONST(uint16, SBC_CALIB) SBC_ku16IntUvTimoutC = 10;
CONST(float32, SBC_CALIB) SBC_f32UnderVolHighThresholdC = SBC_f32UNDERVOLTAGE_THRD_HIGH;
CONST(float32, SBC_CALIB) SBC_f32UnderVolLowThresholdC = SBC_f32UNDERVOLTAGE_THRD_LOW;
CONST(float32, SBC_CALIB) SBC_f32RecoverThresholdC = SBC_f32RECOVER_THRESHOLD;
CONST(boolean, SBC_CALIB) SBC_bServiceDisableC = FALSE;
#define SBC_CALIB_STOP_SEC_CONST_32
#include "SBC_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define SBC_START_SEC_VAR_UNSPECIFIED
#include "SBC_MemMap.h"
VAR(uint8, SBC_VAR) SBC_au8StdbyModCmdBuff[SBC_AU8STDBYMODCMDBUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8StdbyModDataBuff[SBC_AU8STDBYMODDATABUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8CloseLDOCmdBuff[SBC_AU8CLOSELDOCMDBUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8CloseLDODataBuff[SBC_AU8CLOSELDODATABUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8OpenLDOCmdBuff[SBC_AU8OPENLDOCMDBUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8OpenLDODataBuff[SBC_AU8OPENLDODATABUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8InitModCmdBuff[SBC_AU8INITMODCMDBUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_au8InitModDataBuff[SBC_AU8INITMODDATABUFF_COLS] = {0};
VAR(uint8, SBC_VAR) SBC_u8MaxWdgErrCnt;
VAR(uint8, SBC_VAR) SBC_u8UserCmdReq;
VAR(uint8, SBC_VAR) SBC_u8DebounceCount;
VAR(uint8, SBC_VAR) SBC_u8LDOManagerState;
VAR(uint16, SBC_VAR) SBC_au16StatusRegsNvm[SBC_AU16STATUSREGSNVM_COLS] = {0};
VAR(uint16, SBC_VAR) SBC_u16P5vAD2SRaw;
VAR(uint16, SBC_VAR) SBC_u16GatewayRaw;
VAR(uint16, SBC_VAR) SBC_u16MainSupRaw;
VAR(uint16, SBC_VAR) SBC_u16P5vRefProtRaw; 
VAR(uint16, SBC_VAR) SBC_u16P5vComRaw; 
VAR(uint16, SBC_VAR) SBC_u16IntUvTimCnt;
VAR(uint16, SBC_VAR) SBC_u16OtherAbnormCnt;
VAR(uint32, SBC_VAR) SBC_au32WdgExtXorMask[SBC_AU32WDGEXTXORMASK_COLS] = {0};
VAR(boolean, SBC_VAR) SBC_bDeintWdgCmd;
VAR(boolean, SBC_VAR) SBC_bStdbyModReq;
VAR(boolean, SBC_VAR) SBC_bWdgActvFlg;
VAR(boolean, SBC_VAR) SBC_bUserCmdSendFlag;
VAR(boolean, SBC_VAR) SBC_bSpiOperateFlag;
VAR(float32, SBC_VAR) SBC_f32BatteryVoltage;
VAR(float32, SBC_VAR)SBC_bOtherSttFailFlg;
VAR(float32, SBC_VAR) SBC_f32BkpVoltage;
#define SBC_STOP_SEC_VAR_UNSPECIFIED
#include "SBC_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
