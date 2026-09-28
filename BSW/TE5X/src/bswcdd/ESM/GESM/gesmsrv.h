/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : GESM                                                      */
/*                                                                            */
/* !Module         : GESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : GESMSRV.H                                                 */
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

#ifndef GESMSRV_H
#define GESMSRV_H

#include "GSTFSRV.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/*----------------------------------------------------------------------------*/
/* GESM Cmd                                                                    */
/*----------------------------------------------------------------------------*/

#define GESM_CMD_SW_START            (uint16)(1 <<  1)
#define GESM_CMD_SW_SHUTDOWN         (uint16)(1 <<  2)
#define GESM_CMD_FT_START            (uint16)(1 <<  3)
#define GESM_CMD_FT_SHUTDOWN         (uint16)(1 <<  4)

#define GESM_CMD_PWM_DIRECT          (uint16)(1 <<  8)
#define GESM_CMD_PWM_HARD            (uint16)(1 <<  9)
#define GESM_CMD_PWM_OFF             (uint16)(1 << 10)

/*----------------------------------------------------------------------------*/
/* Call appli States                                                          */
/*----------------------------------------------------------------------------*/
/* 0               */
/* GESM_GESM_MODE_NF */
/* GESM_GESM_MODE_FT */

/*----------------------------------------------------------------------------*/
/* GESM Mode States                                                            */
/*----------------------------------------------------------------------------*/
/* GESM_GESM_MODE_NF */
/* GESM_GESM_MODE_FT */

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/* -------------------------------------------------------------------------- */
/* GESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
void GESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void GESMSRV_vidSetCmdRes(uint16 CmdMask);
void GESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void GESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void GESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);

/* -------------------------------------------------------------------------- */
/* GESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
boolean GESMSRV_bGetCmdReq(uint16 CmdMask);
boolean GESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean GESMSRV_bGetCmdRes(uint16 CmdMask);
boolean GESMSRV_bGetPoDnReadyFlg(void);
boolean GESMSRV_bGetPwrLNfClrFltFinsh(void);

/* -------------------------------------------------------------------------- */
/* GESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 GESMSRV_u8GetCallAppli(void);
uint8 GESMSRV_u8GetGEsmMode(void);
uint8 GESMSRV_u8GetGEsmEcuState(void);

/* -------------------------------------------------------------------------- */
/* GESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
void GESMSRV_vidVSIInit(void);

#endif /* GESMSRV_H */

/*-------------------------------- end of file -------------------------------*/
