/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Module         : BSW                                                      */
/* !Description    : BSW initialization                                       */
/*                                                                            */
/* !File           : bswsrv.h                                                 */
/*                                                                            */
/* !Target         : All                                                      */
/*                                                                            */
/* !Vendor         : invt                                                     */
/*                                                                            */
/* Coding language : H                                                        */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef BSWSRV_H
#define BSWSRV_H

#include "Std_Types.h"
#include "ComStack_Cfg.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
void BSW_vidReadAllCallback(void) ;
extern void BSW_vidGetINVTBootVersion(uint8 *pu8Data);
extern void BSW_vidGetBootCompileTime(uint8 *pu8Data);
extern void BSW_vidGetBootReqCanId(uint8 *pu8Data);
extern void BSW_vidGetBootRspCanId(uint8 *pu8Data);
extern void BSW_vidGetAppReqCanId(uint8 *pu8Data);
extern void BSW_vidGetAppRspCanId(uint8 *pu8Data);
extern boolean BSW_bCheckExtFromProgState(void);
extern void BSW_vidClearExtFromProgState(void);
extern boolean BSW_bCheckDefFromBootState(void);
extern void BSW_vidClearDefFromBootState(void);
extern void BSW_vidSetStayInBootReq(void);
extern void BSW_vidSetActiveSwapReq(void);
extern boolean BSW_bGetVcuMtcuToutFlg(void);
extern boolean BSW_bComIsNormal(void);
extern void BSW_vidClearComNormalFlag(void);
extern void BSW_vidProgFlowMon01(const uint32 u32TstSignature, const boolean bLastSignFlg);
extern uint32 BSW_u32GetProgFlowSign01(void);
extern void BSW_vidSetProgFlowSeed(const uint8 u8Seed);
extern void BSW_vidTrigChallengeCode(const uint8* au8LocChallengeCode);
extern void BSW_vidTrigAuthResult(const boolean abAuthResult);

extern void BSW_vidSetOCPThreshold(uint8 u8Index, float32 f32Duty);

extern void BSW_vidSetChanReqState(uint8 Chan);
extern boolean BSW_bGetProgCondition( void ) ;

void BSW_vidCORE0_1ms_Head_Func(void) ;
void BSW_vidCORE0_10ms_Head_Func(void) ;
void BSW_vidCORE0_1ms_Tail_Func(void) ;
void BSW_vidCORE0_10ms_Tail_Func(void) ;
void BSW_vidCORE0_100ms_Func(void) ;

void BSW_vidCORE1_1ms_Func(void) ;
void BSW_vidCORE1_10ms_Func(void) ;

#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

#endif  /* BSWSRV_H */

/*-------------------------------- end of file -------------------------------*/
