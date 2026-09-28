/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : CCP                                                     */
/*                                                                            */
/* !Module          : CCP_CFG                                                 */
/* !Description     : Configuration of the Component                          */
/*                                                                            */
/* !File            : CCP_CFG.C                                               */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2009 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* Generated on 11/09/22, 19:32:08 by Genecode v2.6.0.0                       */
/******************************************************************************/

#include "CCP_Typ.h"
#include "CCP_L.h"
#include "CCP_Cfg.h"
#include "Ccp_Cbk.h" 

/******************************************************************************/
/* CONSTANTS DEFINITION                                                       */
/******************************************************************************/
#define CCP_START_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h" 

/* !Comment: list of activated services                                       */
CONST(CCP_tpfudtSrvFcn, CCP_CONST) CCP_kapfudtSrvFcn[CCP_udtNO_SRVS] =
{
   &CCP_udtFcnNotAvl,
   &CCP_udtCnct,
   &CCP_udtSetMta,
   &CCP_udtDnld,
   &CCP_udtUpld,
   &CCP_udtTest,
   &CCP_udtStrtStop,
   &CCP_udtDcnct,
   &CCP_udtStrtStopAll,
   &CCP_udtGetAcvCalPage,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtSetSsnSts,
   &CCP_udtGetSsnSts,
   &CCP_udtBldCks,
   &CCP_udtShoUpld,
   &CCP_udtFcnNotAvl,
   &CCP_udtSelCalPage,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtGetDaqSize,
   &CCP_udtSetDaqPtr,
   &CCP_udtWrDaqElmCfg,
   &CCP_udtExchId,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtGetCcpVers,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtFcnNotAvl,
   &CCP_udtDnld6
};

/* !Comment: device identifier                                                */
CONST(uint8, CCP_CONST) CCP_kaudtDevId[sizeof("A5H_BSWTC26")] = "A5H_BSWTC26";

/* !Comment: DAQ lists configuration                                          */
CONST(CCP_tstrDaqListStatCfg, CCP_CONST)
   CCP_kastrDaqListStatCfg[CCP_u8DAQ_NO_LISTS] =
{
   {6, 0},
   {12, 6},
   {28, 18}
};

#define CCP_STOP_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h" 


/*-------------------------------- end of file -------------------------------*/
