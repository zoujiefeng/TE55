/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : AESM                                                      */
/*                                                                            */
/* !Module         : AESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : AESMSRV_PRJ.H                                             */
/*                                                                            */
/* !Target         : All                                                      */
/*                                                                            */
/* !Vendor         : invt                                                     */
/*                                                                            */
/* Coding language : C                                                        */
/*                                                                            */
/* COPYRIGHT 2016 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::          $$Date::          $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef AESMSRV_PRJ_H
#define AESMSRV_PRJ_H

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/* -------------------------------------------------------------------------- */
/* AESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 AESMSRV_u8InterpretAEsmState(uint16 u16AEsmState);
boolean AESMSRV_bGetCallAppliOn(void);
uint8 AESMSRV_u8GetOpFtState(void);
uint8 AESMSRV_u8GetOpNfState(void);
uint8 AESMSRV_u8GetPwrLFtState(void);
uint8 AESMSRV_u8GetPwrLNfState(void);
uint8 AESMSRV_u8GetStpIIFtState(void);
uint8 AESMSRV_u8GetStpIINfState(void);
uint8 AESMSRV_u8GetStpIState(void);
uint16 AESMSRV_u16GetCmdReq(void);
uint16 AESMSRV_u16GetCmdReqNm1(void);
uint8 AESMSRV_u8GetPwrOffState(void);
uint16 AESMSRV_u16GetCmdRes(void);

#endif /* AESMSRV_PRJ_H */

/*-------------------------------- end of file -------------------------------*/
