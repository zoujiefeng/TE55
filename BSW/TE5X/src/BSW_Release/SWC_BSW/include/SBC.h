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
/* !File            : SBC.H                                                   */
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

#ifndef SBC_H
#define SBC_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define SBC_AU16STATUSREGSNVM_COLS             ( 18 )
#define SBC_AU32WDGEXTXORMASK_COLS             ( 16 )
#define SBC_AU8STDBYMODCMDBUFF_COLS            ( 2 )
#define SBC_AU8STDBYMODDATABUFF_COLS           ( 2 )
#define SBC_AU8CLOSELDOCMDBUFF_COLS            ( 2 )
#define SBC_AU8CLOSELDODATABUFF_COLS           ( 2 )
#define SBC_AU8OPENLDOCMDBUFF_COLS             ( 2 )
#define SBC_AU8OPENLDODATABUFF_COLS            ( 2 )
#define SBC_AU8INITMODCMDBUFF_COLS             ( 2 )
#define SBC_AU8INITMODDATABUFF_COLS            ( 2 )

#define SBC_f32UNDERVOLTAGE_THRD_HIGH   (6.00f)  /* Undervoltage Threshold, Unit: V */
#define SBC_f32UNDERVOLTAGE_THRD_LOW    (5.40f)  /* Undervoltage Threshold, Unit: V */
#define SBC_f32RECOVER_THRESHOLD        (7.50f)  /* Recover Threshold, Unit: V */

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
enum{
   SBC_USER_IDLE,
   SBC_USER_CMD_GOTO_STANDBY,
   SBC_USER_CMD_CLOSE_LDO,
   SBC_USER_CMD_OPEN_LDO,
   SBC_USER_CMD_GOTO_INIT,
};

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define SBC_START_SEC_VAR_UNSPECIFIED
#include "SBC_MemMap.h"
extern VAR(uint8, SBC_VAR) SBC_u8DebounceCount;
extern VAR(uint8, SBC_VAR) SBC_u8LDOManagerState;
extern VAR(uint8, SBC_VAR) SBC_au8StdbyModCmdBuff[SBC_AU8STDBYMODCMDBUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8StdbyModDataBuff[SBC_AU8STDBYMODDATABUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8CloseLDOCmdBuff[SBC_AU8CLOSELDOCMDBUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8CloseLDODataBuff[SBC_AU8CLOSELDODATABUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8OpenLDOCmdBuff[SBC_AU8OPENLDOCMDBUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8OpenLDODataBuff[SBC_AU8OPENLDODATABUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8InitModCmdBuff[SBC_AU8INITMODCMDBUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_au8InitModDataBuff[SBC_AU8INITMODDATABUFF_COLS];
extern VAR(uint8, SBC_VAR) SBC_u8MaxWdgErrCnt;
extern VAR(uint16, SBC_VAR) SBC_au16StatusRegsNvm[SBC_AU16STATUSREGSNVM_COLS];
extern VAR(uint32, SBC_VAR) SBC_au32WdgExtXorMask[SBC_AU32WDGEXTXORMASK_COLS];
extern VAR(float32, SBC_VAR) SBC_f32BatteryVoltage;
extern VAR(float32, SBC_VAR) SBC_f32BkpVoltage;
extern VAR(float32, SBC_VAR) SBC_bOtherSttFailFlg;
#define SBC_STOP_SEC_VAR_UNSPECIFIED
#include "SBC_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define SBC_START_SEC_CODE
#include "SBC_MemMap.h"
FUNC(void, SBC_CODE) SBC_vidInit(void);
FUNC(void, SBC_CODE) SBC_vidSetDeinitWdgCmd(const boolean);
FUNC(void, SBC_CODE) SBC_vidSetWdgActvFinshFlg(void);
FUNC(uint8, SBC_CODE) SBC_u8GetUserCmdReq(void);
FUNC(uint8, SBC_CODE) SBC_u8GetMaxWdgErrCnt(void);
FUNC(boolean, SBC_CODE) SBC_bGetDeinitWdgCmd(void);
FUNC(boolean, SBC_CODE) SBC_bGetFaultClearFlgs(void);
FUNC(boolean, SBC_CODE) SBC_bGetStdbyModReq(void);
FUNC(boolean, SBC_CODE) SBC_bGetWdgActvFinshFlg(void);
FUNC(boolean, SBC_CODE) SBC_bIsSbcFautOccr(void);
FUNC(boolean, SBC_CODE) SBC_bUnderVoltageManager(void);
FUNC(boolean, SBC_CODE) SBC_vidSetStdbyModCmd(const boolean);
FUNC(boolean, SBC_CODE) SBC_bSetUserCmdReq(const uint8 u8UserCmdReq);
FUNC(boolean, SBC_CODE) SBC_bCheckOutputStt(void);

extern uint16  SBCHal_u16GetAdVal_P5VCom(void);
extern uint16  SBCHal_u16GetAdVal_P5VGateway(void);
extern uint16  SBCHal_u16GetAdVal_P5VBt(void);
extern uint16  SBCHal_u16GetAdVal_P5VRef(void);
extern uint16  SBCHal_u16GetAdVal_P5VAD2S(void);
extern float32 SBCHal_f32GetBatteryVol(void);

#define SBC_STOP_SEC_CODE
#include "SBC_MemMap.h"


#endif /* SBC_H */

/*-------------------------------- end of file -------------------------------*/
