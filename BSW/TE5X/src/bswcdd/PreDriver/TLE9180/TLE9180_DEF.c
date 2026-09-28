/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : TLE9180                                                 */
/*                                                                            */
/* !Module          : TLE9180                                                 */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : TLE9180_DEF.C                                           */
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
#include "TLE9180.h"
#include "TLE9180_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define TLE9180_CALIB_START_SEC_CONST_BOOL
#include "TLE9180_MemMap.h"
CONST(boolean, TLE9180_CALIB) TLE9180_bManualReadRegC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bDrvOverVoltageTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bDrvUnderVoltageTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bDrvOverTempTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bPhaseShortHighTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bPhaseShortLowTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bDrvOverCurrentTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bPhsOverVoltTestOnC = 0;
CONST(boolean, TLE9180_CALIB) TLE9180_bPhasePerfTestOnC = 0;
#define TLE9180_CALIB_STOP_SEC_CONST_BOOL
#include "TLE9180_MemMap.h"

#define TLE9180_CALIB_START_SEC_CONST_8
#include "TLE9180_MemMap.h"
CONST(uint8, TLE9180_CALIB) TLE9180_ku8MaxInitTimeC = 10;
CONST(uint8, TLE9180_CALIB) TLE9180_ku8MaxReCfgTimeC = 50;
CONST(uint8, TLE9180_CALIB) TLE9180_ku8EnaResetCntC = 5;
CONST(uint8, TLE9180_CALIB) TLE9180_ku8ErrRecvMaxNumC = 0x06;
#define TLE9180_CALIB_STOP_SEC_CONST_8
#include "TLE9180_MemMap.h"

#define TLE9180_CALIB_START_SEC_CONST_16
#include "TLE9180_MemMap.h"
CONST(uint16, TLE9180_CALIB) TLE9180_ku16EnaResetTimeC = 100;
CONST(uint16, TLE9180_CALIB) TLE9180_ku16ErrPinChkTimC = 10;
#define TLE9180_CALIB_STOP_SEC_CONST_16
#include "TLE9180_MemMap.h"

#define TLE9180_CALIB_START_SEC_CONST_UNSPECIFIED
#include "TLE9180_MemMap.h"
CONST(float32, TLE9180_CALIB) TLE9180_kf32PhsTempFaultC = 130;
CONST(float32, TLE9180_CALIB) TLE9180_kf32PhsTempFltRecoverC = 127;
CONST(float32, TLE9180_CALIB) TLE9180_kf32BatteryVolValidThrdC = 8.0f;
#define TLE9180_CALIB_STOP_SEC_CONST_UNSPECIFIED
#include "TLE9180_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
VAR(boolean, TLE9180_VAR) TLE9180_bIsModeReq;
VAR(boolean, TLE9180_VAR) TLE9180_bIsInIdleMode;
VAR(boolean, TLE9180_VAR) TLE9180_bIsInCfgLockMode;
VAR(boolean, TLE9180_VAR) TLE9180_bDrvOverCurrent;
VAR(boolean, TLE9180_VAR) TLE9180_bDrvOverTemp;
VAR(boolean, TLE9180_VAR) TLE9180_bDrvOverVoltage;
VAR(boolean, TLE9180_VAR) TLE9180_bDrvUnderVoltage;
VAR(boolean, TLE9180_VAR) TLE9180_bErrorPinLevel;
VAR(boolean, TLE9180_VAR) TLE9180_bInitFailFlg;
VAR(boolean, TLE9180_VAR) TLE9180_bPhaseShortHigh;
VAR(boolean, TLE9180_VAR) TLE9180_bPhaseShortLow;
VAR(boolean, TLE9180_VAR) TLE9180_bPhsOverVolt;
VAR(boolean, TLE9180_VAR) TLE9180_bReadErrInfoFlg;
VAR(boolean, TLE9180_VAR) TLE9180_bTestReadReg;
VAR(boolean, TLE9180_VAR) TLE9180_bTestWriteReg;
VAR(uint32, TLE9180_VAR) TLE9180_u32ReinitTotalTime;
VAR(uint32, TLE9180_VAR) TLE9180_u32ReinitEndTime;
VAR(uint32, TLE9180_VAR) TLE9180_u32ReinitStartTime;
VAR(float32, TLE9180_VAR) TLE9180_af32ReadPhsTempPhys[TLE9180_AF32READPHSTEMPPHYS_COLS] = {0};
VAR(float32, TLE9180_VAR) TLE9180_f32MaxPhsTempPhys;
VAR(float32, TLE9180_VAR) TLE9180_f32BatteryVoltage;
VAR(uint32, TLE9180_VAR) TLE9180_au32SpiReadFrame[TLE9180_AU32SPIREADFRAME_COLS] = {0};
VAR(uint32, TLE9180_VAR) TLE9180_au32SpiTstReadFrame[TLE9180_AU32SPIREADFRAME_COLS] = {0};
VAR(uint32, TLE9180_VAR) TLE9180_au32SpiTstWriteFrame[TLE9180_AU32SPIREADFRAME_COLS] = {0};
VAR(uint32, TLE9180_VAR) TLE9180_au32ErrRegsReadFrame[TLE9180_AU32SPIREADFRAME_COLS] = {0};
VAR(uint32, TLE9180_VAR) TLE9180_au32SpiWriteFrame[TLE9180_AU32SPIWRITEFRAME_COLS] = {0};
VAR(uint32, TLE9180_VAR) TLE9180_au32ICInitSpiFrame[TLE9180_AU32SPIWRITEFRAME_COLS] = {0};
VAR(uint32, TLE9180_VAR) TLE9180_au32StateRegs[TLE9180_AU32SPIWRITEFRAME_COLS] = {0};
VAR(uint8, TLE9180_VAR) TLE9180_au8CfgRegister[TLE9180_AU8CFGREGISTER_COLS] = {0};
VAR(uint8, TLE9180_VAR) TLE9180_au8CfgRegReadBk[TLE9180_AU8CFGREGREADBK_COLS] = {0};
VAR(uint8, TLE9180_VAR) TLE9180_au8ReadPhsTemp[TLE9180_AU8READPHSTEMP_COLS] = {0};
VAR(uint8, TLE9180_VAR) TLE9180_au8ReadRegs[TLE9180_AU8READREGS_COLS] = {0};
VAR(uint8, TLE9180_VAR) TLE9180_u8ReCfgCnt;
VAR(uint8, TLE9180_VAR) TLE9180_u8InitFailedCnt;
VAR(uint8, TLE9180_VAR) TLE9180_u8ErrRecoverCnt;
VAR(uint8, TLE9180_VAR) TLE9180_u8Mode;
VAR(uint8, TLE9180_VAR) TLE9180_u8RdRegTimCnt;
VAR(uint8, TLE9180_VAR) TLE9180_u8ReadRegAddr;
VAR(uint8, TLE9180_VAR) TLE9180_u8SelfTestStep;
VAR(uint8, TLE9180_VAR) TLE9180_u8SpiTxFrameMaxNb;
VAR(uint8, TLE9180_VAR) TLE9180_u8WriteData;
VAR(uint8, TLE9180_VAR) TLE9180_u8WriteRegAddr;
VAR(uint16, TLE9180_VAR) TLE9180_u16EnaResetTime;
VAR(uint16, TLE9180_VAR) TLE9180_u16ErrPinChkCnt;

/*-------------------------------- end of file -------------------------------*/
