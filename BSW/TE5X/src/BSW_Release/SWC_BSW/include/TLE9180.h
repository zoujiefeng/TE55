/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : TLE9180                                                 */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : TLE9180                                                 */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : TLE9180.H                                               */
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

#ifndef __TLE9180_H_
#define __TLE9180_H_

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define TLE9180_AF32READPHSTEMPPHYS_COLS       ( 6 )
#define TLE9180_AU32SPIREADFRAME_COLS          ( 30 )
#define TLE9180_AU32SPIWRITEFRAME_COLS         ( 30 )
#define TLE9180_AU8CFGREGISTER_COLS            ( 30 )
#define TLE9180_AU8CFGREGREADBK_COLS           ( 30 )
#define TLE9180_AU8READPHSTEMP_COLS            ( 6 )
#define TLE9180_AU8READREGS_COLS               ( 30 )
#define TLE9180_ERR_READNUM_AT_ONE_TIME        ( 1 )
#define TLE9180_ERR_READ_MAX_NUM               ( 21 )

#define TLE9180_IDLE_MODE_BIT_MASK             (0x01 << 0)
#define TLE9180_CFG_LOCK_MODE_BIT_MASK         (0x01 << 2)

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
extern VAR(boolean, TLE9180_VAR) TLE9180_bIsModeReq;
extern VAR(boolean, TLE9180_VAR) TLE9180_bIsInIdleMode;
extern VAR(boolean, TLE9180_VAR) TLE9180_bIsInCfgLockMode;
extern VAR(boolean, TLE9180_VAR) TLE9180_bDrvOverCurrent;
extern VAR(boolean, TLE9180_VAR) TLE9180_bDrvOverTemp;
extern VAR(boolean, TLE9180_VAR) TLE9180_bDrvOverVoltage;
extern VAR(boolean, TLE9180_VAR) TLE9180_bDrvUnderVoltage;
extern VAR(boolean, TLE9180_VAR) TLE9180_bErrorPinLevel;
extern VAR(boolean, TLE9180_VAR) TLE9180_bInitFailFlg;
extern VAR(boolean, TLE9180_VAR) TLE9180_bPhaseShortHigh;
extern VAR(boolean, TLE9180_VAR) TLE9180_bPhaseShortLow;
extern VAR(boolean, TLE9180_VAR) TLE9180_bPhsOverVolt;
extern VAR(boolean, TLE9180_VAR) TLE9180_bReadErrInfoFlg;
extern VAR(boolean, TLE9180_VAR) TLE9180_bTestReadReg;
extern VAR(boolean, TLE9180_VAR) TLE9180_bTestWriteReg;
extern VAR(uint32, TLE9180_VAR) TLE9180_u32ReinitTotalTime;
extern VAR(uint32, TLE9180_VAR) TLE9180_u32ReinitEndTime;
extern VAR(uint32, TLE9180_VAR) TLE9180_u32ReinitStartTime;
extern VAR(float32, TLE9180_VAR) TLE9180_af32ReadPhsTempPhys[TLE9180_AF32READPHSTEMPPHYS_COLS];
extern VAR(float32, TLE9180_VAR) TLE9180_f32MaxPhsTempPhys;
extern VAR(float32, TLE9180_VAR) TLE9180_f32BatteryVoltage;
extern VAR(uint32, TLE9180_VAR) TLE9180_au32SpiReadFrame[TLE9180_AU32SPIREADFRAME_COLS];
extern VAR(uint32, TLE9180_VAR) TLE9180_au32SpiTstReadFrame[TLE9180_AU32SPIREADFRAME_COLS];
extern VAR(uint32, TLE9180_VAR) TLE9180_au32SpiTstWriteFrame[TLE9180_AU32SPIREADFRAME_COLS];
extern VAR(uint32, TLE9180_VAR) TLE9180_au32ErrRegsReadFrame[TLE9180_AU32SPIREADFRAME_COLS];
extern VAR(uint32, TLE9180_VAR) TLE9180_au32SpiWriteFrame[TLE9180_AU32SPIWRITEFRAME_COLS];
extern VAR(uint32, TLE9180_VAR) TLE9180_au32ICInitSpiFrame[TLE9180_AU32SPIWRITEFRAME_COLS];
extern VAR(uint32, TLE9180_VAR) TLE9180_au32StateRegs[TLE9180_AU32SPIWRITEFRAME_COLS];
extern VAR(uint8, TLE9180_VAR) TLE9180_au8CfgRegister[TLE9180_AU8CFGREGISTER_COLS];
extern VAR(uint8, TLE9180_VAR) TLE9180_au8CfgRegReadBk[TLE9180_AU8CFGREGREADBK_COLS];
extern VAR(uint8, TLE9180_VAR) TLE9180_au8ReadPhsTemp[TLE9180_AU8READPHSTEMP_COLS];
extern VAR(uint8, TLE9180_VAR) TLE9180_au8ReadRegs[TLE9180_AU8READREGS_COLS];
extern VAR(uint8, TLE9180_VAR) TLE9180_u8ReCfgCnt;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8InitFailedCnt;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8ErrRecoverCnt;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8Mode;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8RdRegTimCnt;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8ReadRegAddr;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8SelfTestStep;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8SpiTxFrameMaxNb;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8WriteData;
extern VAR(uint8, TLE9180_VAR) TLE9180_u8WriteRegAddr;
extern VAR(uint16, TLE9180_VAR) TLE9180_u16EnaResetTime;
extern VAR(uint16, TLE9180_VAR) TLE9180_u16ErrPinChkCnt;

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
void TLE9180_vidInit(void);
void TLE9180_vidMainFunction(void);
boolean TLE9180_bIsWorkModeNormal(void);


#endif /* __TLE9180_H_ */

/*-------------------------------- end of file -------------------------------*/
