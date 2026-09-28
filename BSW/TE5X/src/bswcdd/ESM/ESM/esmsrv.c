/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : ESM                                                      */
/*                                                                            */
/* !Module         : ESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : ESMSRV.C                                                 */
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
/* ESMSRV.11  / ESMSRV_vidSetCmdReq                                           */
/* ESMSRV.12  / ESMSRV_vidSetCmdRes                                           */
/* ESMSRV.21  / ESMSRV_bGetCmdReq                                             */
/* ESMSRV.22  / ESMSRV_bGetCmdReqNm1                                          */
/* ESMSRV.23  / ESMSRV_bGetCmdRes                                             */
/* ESMSRV.31  / ESMSRV_u8GetCallAppli                                         */
/* ESMSRV.32  / ESMSRV_u8GetEsmMode                                           */
/* ESMSRV.33  / ESMSRV_u8GetEsmEcuState                                       */
/* ESMSRV.41  / ESMSRV_vidVSIInit                                             */
/******************************************************************************/
/* SVN Information                                                            */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::                     $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"

#include "ESM.h"
#include "ESM_L.h"

#include "esmsrv.h"
#include "STFSRV.h"

//#include "vsisrv.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define ESM_START_SEC_CODE
#include "MemMap.h"

/* -------------------------------------------------------------------------- */
/* ESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Req                                            */
/* !Number      : ESMSRV.11                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq)
{
   if (CmdReq != 0)
   {
      if ((ESM_u16CmdReqNm1 & CmdMask) == 0)
      {
         ESM_u16CmdReq |= CmdMask;
         ESM_u16CmdRes &= (uint16)~CmdMask;
         ESM_u16CmdReqNm1 |= (uint16)CmdMask;
      }
   }
   else
   {
      ESM_u16CmdReqNm1 &= (uint16)~CmdMask;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Res                                            */
/* !Number      : ESMSRV.12                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESMSRV_vidSetCmdRes(uint16 CmdMask)
{
   ESM_u16CmdRes |= CmdMask;
}

/* -------------------------------------------------------------------------- */
/* ESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get Flag CmdReq                                             */
/* !Number      : ESMSRV.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
boolean ESMSRV_bGetCmdReq(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((ESM_u16CmdReq & CmdMask) == CmdMask)
   {
      bLocalValue   = 1;
      ESM_u16CmdReq &= (uint16)~CmdMask;
   }
   else
   {
      bLocalValue = 0;
   }
   return(bLocalValue);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get Flag CmdReqNm1                                          */
/* !Number      : ESMSRV.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
boolean ESMSRV_bGetCmdReqNm1(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((ESM_u16CmdReqNm1 & CmdMask) == CmdMask)
   {
      bLocalValue = 1;
   }
   else
   {
      bLocalValue = 0;
   }
   return(bLocalValue);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get Flag CmdRes                                             */
/* !Number      : ESMSRV.23                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
boolean ESMSRV_bGetCmdRes(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((ESM_u16CmdRes & CmdMask) == CmdMask)
   {
      bLocalValue = 1;
   }
   else
   {
      bLocalValue = 0;
   }
   return(bLocalValue);
}

/* -------------------------------------------------------------------------- */
/* ESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get call appli value                                        */
/* !Number      : ESMSRV.31                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
uint8 ESMSRV_u8GetCallAppli(void)
{
   uint8 u8LocalMode;

   if (ESM_bCallAppliOn != 0)
   {
      u8LocalMode = (uint8)ESM_EsmMode;
   }
   else
   {
      u8LocalMode = 0;
   }
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get ESM mode                                                */
/* !Number      : ESMSRV.32                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
uint8 ESMSRV_u8GetEsmMode(void)
{
   uint8 u8LocalMode;

   u8LocalMode = (uint8)ESM_EsmMode;
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get ESM ECU State value                                     */
/* !Number      : ESMSRV.33                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
uint8 ESMSRV_u8GetEsmEcuState(void)
{
   uint8 u8LocalState;

   u8LocalState = ESM_EcuState;
   return(u8LocalState);
}

/* -------------------------------------------------------------------------- */
/* ESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : ESM/ VSI: Retry VSI download parameters Initialization      */
/* !Number      : ESMSRV.41                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESMSRV_vidVSIInit(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get ESM Power down ready flag                               */
/* !Number      : ESMSRV.45                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
boolean ESMSRV_bGetPoDnReadyFlg(void)
{
   return (ESM_bPwrDnReadyFlg);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get ESM Power Latch NF clear fault finish flag              */
/* !Number      : ESMSRV.46                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
boolean ESMSRV_bGetPwrLNfClrFltFinsh(void)
{
   return (ESM_bPwrLNfClrFltFinsh);
}

/******************************************************************************/
/*  ESMSRV_vidSetMcuEnaReq                                                    */
/* !Description : Set MCU enable request flag, for change of mind purpose.    */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
void ESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq)
{
   if (0 != u8McuEnaReq)
   {
      ESM_bMcuEnaReq = TRUE;
   }
   else
   {
      ESM_bMcuEnaReq = FALSE;
   }
}

void ESMSRV_vidSetAfterrunReq(boolean bAfterrunReq)
{
   if(0 != bAfterrunReq)
   {
      ESM_bAfterrunReq = TRUE;
   }
   else
   {
      ESM_bAfterrunReq = FALSE;
   }
}

void ESMSRV_vidSetAfterrunFin(boolean bAfterrunFin)
{
   if(0 != bAfterrunFin)
   {
      ESM_bAfterrunFin = TRUE;
   }
   else
   {
      ESM_bAfterrunFin = FALSE;
   }
}

#define ESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
