/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : ESM                                                      */
/*                                                                            */
/* !Module         : ESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : ESMSRV_PRJ.H                                             */
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

#ifndef ESMSRV_PRJ_H
#define ESMSRV_PRJ_H

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
/* ESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
uint8 ESMSRV_u8InterpretEsmState(uint16 u16EsmState);
boolean ESMSRV_bGetCallAppliOn(void);
uint8 ESMSRV_u8GetOpFtState(void);
uint8 ESMSRV_u8GetOpNfState(void);
uint8 ESMSRV_u8GetPwrLFtState(void);
uint8 ESMSRV_u8GetPwrLNfState(void);
uint8 ESMSRV_u8GetStpIIFtState(void);
uint8 ESMSRV_u8GetStpIINfState(void);
uint8 ESMSRV_u8GetStpIState(void);
uint16 ESMSRV_u16GetCmdReq(void);
uint16 ESMSRV_u16GetCmdReqNm1(void);
uint8 ESMSRV_u8GetPwrOffState(void);
uint16 ESMSRV_u16GetCmdRes(void);

#endif /* ESMSRV_PRJ_H */

/*-------------------------------- end of file -------------------------------*/
