/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : GESM                                                      */
/*                                                                            */
/* !Module         : GESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : GESMSRV_PRJ.H                                             */
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

#ifndef GESMSRV_PRJ_H
#define GESMSRV_PRJ_H

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
/* GESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 GESMSRV_u8InterpretGEsmState(uint16 u16GEsmState);
boolean GESMSRV_bGetCallAppliOn(void);
uint8 GESMSRV_u8GetOpFtState(void);
uint8 GESMSRV_u8GetOpNfState(void);
uint8 GESMSRV_u8GetPwrLFtState(void);
uint8 GESMSRV_u8GetPwrLNfState(void);
uint8 GESMSRV_u8GetStpIIFtState(void);
uint8 GESMSRV_u8GetStpIINfState(void);
uint8 GESMSRV_u8GetStpIState(void);
uint16 GESMSRV_u16GetCmdReq(void);
uint16 GESMSRV_u16GetCmdReqNm1(void);
uint8 GESMSRV_u8GetPwrOffState(void);
uint16 GESMSRV_u16GetCmdRes(void);

#endif /* GESMSRV_PRJ_H */

/*-------------------------------- end of file -------------------------------*/
