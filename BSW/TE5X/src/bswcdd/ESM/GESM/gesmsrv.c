/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : GESM                                                      */
/*                                                                            */
/* !Module         : GESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : GESMSRV.C                                                 */
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
/* GESMSRV.11  / GESMSRV_vidSetCmdReq                                           */
/* GESMSRV.12  / GESMSRV_vidSetCmdRes                                           */
/* GESMSRV.21  / GESMSRV_bGetCmdReq                                             */
/* GESMSRV.22  / GESMSRV_bGetCmdReqNm1                                          */
/* GESMSRV.23  / GESMSRV_bGetCmdRes                                             */
/* GESMSRV.31  / GESMSRV_u8GetCallAppli                                         */
/* GESMSRV.32  / GESMSRV_u8GetGEsmMode                                           */
/* GESMSRV.33  / GESMSRV_u8GetGEsmEcuState                                       */
/* GESMSRV.41  / GESMSRV_vidVSIInit                                             */
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

#include "Std_Types.h"

#include "GESM.h"
#include "GESM_L.h"

#include "gesmsrv.h"
#include "GSTFSRV.h"

//#include "vsisrv.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define GESM_START_SEC_CODE
#include "MemMap.h"

/* -------------------------------------------------------------------------- */
/* GESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Req                                            */
/* !Number      : GESMSRV.11                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq)
{
   if (CmdReq != 0)
   {
      if ((GESM_u16CmdReqNm1 & CmdMask) == 0)
      {
         GESM_u16CmdReq |= CmdMask;
         GESM_u16CmdRes &= (uint16)~CmdMask;
         GESM_u16CmdReqNm1 |= (uint16)CmdMask;
      }
   }
   else
   {
      GESM_u16CmdReqNm1 &= (uint16)~CmdMask;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Res                                            */
/* !Number      : GESMSRV.12                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESMSRV_vidSetCmdRes(uint16 CmdMask)
{
   GESM_u16CmdRes |= CmdMask;
}

/* -------------------------------------------------------------------------- */
/* GESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get Flag CmdReq                                             */
/* !Number      : GESMSRV.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean GESMSRV_bGetCmdReq(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((GESM_u16CmdReq & CmdMask) == CmdMask)
   {
      bLocalValue   = 1;
      GESM_u16CmdReq &= (uint16)~CmdMask;
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
/* !Number      : GESMSRV.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean GESMSRV_bGetCmdReqNm1(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((GESM_u16CmdReqNm1 & CmdMask) == CmdMask)
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
/* !Number      : GESMSRV.23                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean GESMSRV_bGetCmdRes(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((GESM_u16CmdRes & CmdMask) == CmdMask)
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
/* GESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get call appli value                                        */
/* !Number      : GESMSRV.31                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetCallAppli(void)
{
   uint8 u8LocalMode;

   if (GESM_bCallAppliOn != 0)
   {
      u8LocalMode = (uint8)GESM_EsmMode;
   }
   else
   {
      u8LocalMode = 0;
   }
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get GESM mode                                                */
/* !Number      : GESMSRV.32                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetGEsmMode(void)
{
   uint8 u8LocalMode;

   u8LocalMode = (uint8)GESM_EsmMode;
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get GESM ECU State value                                     */
/* !Number      : GESMSRV.33                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetGEsmEcuState(void)
{
   uint8 u8LocalState;

   u8LocalState = GESM_EcuState;
   return(u8LocalState);
}

/* -------------------------------------------------------------------------- */
/* GESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : GESM/ VSI: Retry VSI download parameters Initialization      */
/* !Number      : GESMSRV.41                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESMSRV_vidVSIInit(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get GESM Power down ready flag     */
/* !Number      : GESMSRV.45                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
boolean GESMSRV_bGetPoDnReadyFlg(void)
{
   return (GESM_bPwrDnReadyFlg);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get GESM Power Latch NF clear fault finish flag     */
/* !Number      : GESMSRV.46                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
boolean GESMSRV_bGetPwrLNfClrFltFinsh(void)
{
   return (GESM_bPwrLNfClrFltFinsh);
}

/******************************************************************************/
/*  GESMSRV_vidSetMcuEnaReq                                                                          */
/* !Description : Set MCU enable request flag, for change of mind purpose.     */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
void GESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq)
{
   if (0 != u8McuEnaReq)
   {
      GESM_bMcuEnaReq = TRUE;
   }
   else
   {
      GESM_bMcuEnaReq = FALSE;
   }
}

void GESMSRV_vidSetAfterrunReq(boolean bAfterrunReq)
{
   if(0 != bAfterrunReq)
   {
      GESM_bAfterrunReq = TRUE;
   }
   else
   {
      GESM_bAfterrunReq = FALSE;
   }
}

void GESMSRV_vidSetAfterrunFin(boolean bAfterrunFin)
{
   if(0 != bAfterrunFin)
   {
      GESM_bAfterrunFin = TRUE;
   }
   else
   {
      GESM_bAfterrunFin = FALSE;
   }
}

#define GESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
