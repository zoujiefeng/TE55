/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : AESM                                                      */
/*                                                                            */
/* !Module         : AESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : AESMSRV.H                                                 */
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

#ifndef AESMSRV_H
#define AESMSRV_H

#include "ASTFSRV.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/*----------------------------------------------------------------------------*/
/* AESM Cmd                                                                    */
/*----------------------------------------------------------------------------*/

#define AESM_CMD_SW_START            (uint16)(1 <<  1)
#define AESM_CMD_SW_SHUTDOWN         (uint16)(1 <<  2)
#define AESM_CMD_FT_START            (uint16)(1 <<  3)
#define AESM_CMD_FT_SHUTDOWN         (uint16)(1 <<  4)

#define AESM_CMD_PWM_DIRECT          (uint16)(1 <<  8)
#define AESM_CMD_PWM_HARD            (uint16)(1 <<  9)
#define AESM_CMD_PWM_OFF             (uint16)(1 << 10)

/*----------------------------------------------------------------------------*/
/* Call appli States                                                          */
/*----------------------------------------------------------------------------*/
/* 0               */
/* AESM_AESM_MODE_NF */
/* AESM_AESM_MODE_FT */

/*----------------------------------------------------------------------------*/
/* AESM Mode States                                                            */
/*----------------------------------------------------------------------------*/
/* AESM_AESM_MODE_NF */
/* AESM_AESM_MODE_FT */

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/* -------------------------------------------------------------------------- */
/* AESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
void AESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void AESMSRV_vidSetCmdRes(uint16 CmdMask);
void AESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void AESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void AESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);

/* -------------------------------------------------------------------------- */
/* AESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
boolean AESMSRV_bGetCmdReq(uint16 CmdMask);
boolean AESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean AESMSRV_bGetCmdRes(uint16 CmdMask);
boolean AESMSRV_bGetPoDnReadyFlg(void);
boolean AESMSRV_bGetPwrLNfClrFltFinsh(void);

/* -------------------------------------------------------------------------- */
/* AESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 AESMSRV_u8GetCallAppli(void);
uint8 AESMSRV_u8GetAEsmMode(void);
uint8 AESMSRV_u8GetAEsmEcuState(void);

/* -------------------------------------------------------------------------- */
/* AESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
void AESMSRV_vidVSIInit(void);

#endif /* AESMSRV_H */

/*-------------------------------- end of file -------------------------------*/
