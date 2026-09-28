/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : ESM                                                      */
/*                                                                            */
/* !Module         : ESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : ESMSRV.H                                                 */
/*                                                                            */
/* !Target         : All                                                      */
/*                                                                            */
/* !Vendor         : invt                                                     */
/*                                                                            */
/* Coding language : C                                                        */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
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

#ifndef ESMSRV_H
#define ESMSRV_H

#include "STFSRV.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/*----------------------------------------------------------------------------*/
/* ESM Cmd                                                                    */
/*----------------------------------------------------------------------------*/

#define ESM_CMD_SW_START            (uint16)(1 <<  1)
#define ESM_CMD_SW_SHUTDOWN         (uint16)(1 <<  2)
#define ESM_CMD_FT_START            (uint16)(1 <<  3)
#define ESM_CMD_FT_SHUTDOWN         (uint16)(1 <<  4)

#define ESM_CMD_PWM_DIRECT          (uint16)(1 <<  8)
#define ESM_CMD_PWM_HARD            (uint16)(1 <<  9)
#define ESM_CMD_PWM_OFF             (uint16)(1 << 10)

/*----------------------------------------------------------------------------*/
/* Call appli States                                                          */
/*----------------------------------------------------------------------------*/
/* 0               */
/* ESM_ESM_MODE_NF */
/* ESM_ESM_MODE_FT */

/*----------------------------------------------------------------------------*/
/* ESM Mode States                                                            */
/*----------------------------------------------------------------------------*/
/* ESM_ESM_MODE_NF */
/* ESM_ESM_MODE_FT */

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/* -------------------------------------------------------------------------- */
/* ESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
void ESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void ESMSRV_vidSetCmdRes(uint16 CmdMask);
void ESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void ESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void ESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);

/* -------------------------------------------------------------------------- */
/* ESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
boolean ESMSRV_bGetCmdReq(uint16 CmdMask);
boolean ESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean ESMSRV_bGetCmdRes(uint16 CmdMask);
boolean ESMSRV_bGetPoDnReadyFlg(void);
boolean ESMSRV_bGetPwrLNfClrFltFinsh(void);

/* -------------------------------------------------------------------------- */
/* ESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 ESMSRV_u8GetCallAppli(void);
uint8 ESMSRV_u8GetEsmMode(void);
uint8 ESMSRV_u8GetEsmEcuState(void);

/* -------------------------------------------------------------------------- */
/* ESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
void ESMSRV_vidVSIInit(void);

#endif /* ESMSRV_H */

/*-------------------------------- end of file -------------------------------*/
