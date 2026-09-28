/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : AESM                                                      */
/*                                                                            */
/* !Module         : AESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : AESMSRV.C                                                 */
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
/* AESMSRV.11  / AESMSRV_vidSetCmdReq                                           */
/* AESMSRV.12  / AESMSRV_vidSetCmdRes                                           */
/* AESMSRV.21  / AESMSRV_bGetCmdReq                                             */
/* AESMSRV.22  / AESMSRV_bGetCmdReqNm1                                          */
/* AESMSRV.23  / AESMSRV_bGetCmdRes                                             */
/* AESMSRV.31  / AESMSRV_u8GetCallAppli                                         */
/* AESMSRV.32  / AESMSRV_u8GetAEsmMode                                           */
/* AESMSRV.33  / AESMSRV_u8GetAEsmEcuState                                       */
/* AESMSRV.41  / AESMSRV_vidVSIInit                                             */
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

#include "AESM.h"
#include "AESM_L.h"

#include "aesmsrv.h"
#include "ASTFSRV.h"

//#include "vsisrv.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define AESM_START_SEC_CODE
#include "MemMap.h"

/* -------------------------------------------------------------------------- */
/* AESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Req                                            */
/* !Number      : AESMSRV.11                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq)
{
   if (CmdReq != 0)
   {
      if ((AESM_u16CmdReqNm1 & CmdMask) == 0)
      {
         AESM_u16CmdReq |= CmdMask;
         AESM_u16CmdRes &= (uint16)~CmdMask;
         AESM_u16CmdReqNm1 |= (uint16)CmdMask;
      }
   }
   else
   {
      AESM_u16CmdReqNm1 &= (uint16)~CmdMask;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Res                                            */
/* !Number      : AESMSRV.12                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESMSRV_vidSetCmdRes(uint16 CmdMask)
{
   AESM_u16CmdRes |= CmdMask;
}

/* -------------------------------------------------------------------------- */
/* AESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get Flag CmdReq                                             */
/* !Number      : AESMSRV.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean AESMSRV_bGetCmdReq(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((AESM_u16CmdReq & CmdMask) == CmdMask)
   {
      bLocalValue   = 1;
      AESM_u16CmdReq &= (uint16)~CmdMask;
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
/* !Number      : AESMSRV.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean AESMSRV_bGetCmdReqNm1(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((AESM_u16CmdReqNm1 & CmdMask) == CmdMask)
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
/* !Number      : AESMSRV.23                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean AESMSRV_bGetCmdRes(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((AESM_u16CmdRes & CmdMask) == CmdMask)
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
/* AESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get call appli value                                        */
/* !Number      : AESMSRV.31                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetCallAppli(void)
{
   uint8 u8LocalMode;

   if (AESM_bCallAppliOn != 0)
   {
      u8LocalMode = (uint8)AESM_EsmMode;
   }
   else
   {
      u8LocalMode = 0;
   }
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get AESM mode                                                */
/* !Number      : AESMSRV.32                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetAEsmMode(void)
{
   uint8 u8LocalMode;

   u8LocalMode = (uint8)AESM_EsmMode;
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get AESM ECU State value                                     */
/* !Number      : AESMSRV.33                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetAEsmEcuState(void)
{
   uint8 u8LocalState;

   u8LocalState = AESM_EcuState;
   return(u8LocalState);
}

/* -------------------------------------------------------------------------- */
/* AESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : AESM/ VSI: Retry VSI download parameters Initialization      */
/* !Number      : AESMSRV.41                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESMSRV_vidVSIInit(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get AESM Power down ready flag     */
/* !Number      : AESMSRV.45                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
boolean AESMSRV_bGetPoDnReadyFlg(void)
{
   return (AESM_bPwrDnReadyFlg);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get AESM Power Latch NF clear fault finish flag     */
/* !Number      : AESMSRV.46                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
boolean AESMSRV_bGetPwrLNfClrFltFinsh(void)
{
   return (AESM_bPwrLNfClrFltFinsh);
}

/******************************************************************************/
/*  AESMSRV_vidSetMcuEnaReq                                                                          */
/* !Description : Set MCU enable request flag, for change of mind purpose.     */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
void AESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq)
{
   if (0 != u8McuEnaReq)
   {
      AESM_bMcuEnaReq = TRUE;
   }
   else
   {
      AESM_bMcuEnaReq = FALSE;
   }
}

void AESMSRV_vidSetAfterrunReq(boolean bAfterrunReq)
{
   if(0 != bAfterrunReq)
   {
      AESM_bAfterrunReq = TRUE;
   }
   else
   {
      AESM_bAfterrunReq = FALSE;
   }
}

void AESMSRV_vidSetAfterrunFin(boolean bAfterrunFin)
{
   if(0 != bAfterrunFin)
   {
      AESM_bAfterrunFin = TRUE;
   }
   else
   {
      AESM_bAfterrunFin = FALSE;
   }
}

#define AESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
