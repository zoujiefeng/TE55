/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : OESM                                                      */
/*                                                                            */
/* !Module         : OESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : OESMSRV.H                                                 */
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

#ifndef OESMSRV_H
#define OESMSRV_H

#include "OSTFSRV.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/*----------------------------------------------------------------------------*/
/* OESM Cmd                                                                    */
/*----------------------------------------------------------------------------*/

#define OESM_CMD_SW_START            (uint16)(1 <<  1)
#define OESM_CMD_SW_SHUTDOWN         (uint16)(1 <<  2)
#define OESM_CMD_FT_START            (uint16)(1 <<  3)
#define OESM_CMD_FT_SHUTDOWN         (uint16)(1 <<  4)

#define OESM_CMD_PWM_DIRECT          (uint16)(1 <<  8)
#define OESM_CMD_PWM_HARD            (uint16)(1 <<  9)
#define OESM_CMD_PWM_OFF             (uint16)(1 << 10)

/*----------------------------------------------------------------------------*/
/* Call appli States                                                          */
/*----------------------------------------------------------------------------*/
/* 0               */
/* OESM_OESM_MODE_NF */
/* OESM_OESM_MODE_FT */

/*----------------------------------------------------------------------------*/
/* OESM Mode States                                                            */
/*----------------------------------------------------------------------------*/
/* OESM_OESM_MODE_NF */
/* OESM_OESM_MODE_FT */

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/* -------------------------------------------------------------------------- */
/* OESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
void OESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void OESMSRV_vidSetCmdRes(uint16 CmdMask);
void OESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void OESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void OESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);

/* -------------------------------------------------------------------------- */
/* OESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
boolean OESMSRV_bGetCmdReq(uint16 CmdMask);
boolean OESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean OESMSRV_bGetCmdRes(uint16 CmdMask);
boolean OESMSRV_bGetPoDnReadyFlg(void);
boolean OESMSRV_bGetPwrLNfClrFltFinsh(void);

/* -------------------------------------------------------------------------- */
/* OESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 OESMSRV_u8GetCallAppli(void);
uint8 OESMSRV_u8GetOEsmMode(void);
uint8 OESMSRV_u8GetOEsmEcuState(void);

/* -------------------------------------------------------------------------- */
/* OESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
void OESMSRV_vidVSIInit(void);

#endif /* OESMSRV_H */

/*-------------------------------- end of file -------------------------------*/
