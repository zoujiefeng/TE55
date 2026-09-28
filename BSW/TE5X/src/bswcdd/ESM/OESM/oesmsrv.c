/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : OESM                                                      */
/*                                                                            */
/* !Module         : OESM                                                      */
/* !Description    : Ecu State Manager (API's services)                       */
/*                                                                            */
/* !File           : OESMSRV.C                                                 */
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
/* OESMSRV.11  / OESMSRV_vidSetCmdReq                                           */
/* OESMSRV.12  / OESMSRV_vidSetCmdRes                                           */
/* OESMSRV.21  / OESMSRV_bGetCmdReq                                             */
/* OESMSRV.22  / OESMSRV_bGetCmdReqNm1                                          */
/* OESMSRV.23  / OESMSRV_bGetCmdRes                                             */
/* OESMSRV.31  / OESMSRV_u8GetCallAppli                                         */
/* OESMSRV.32  / OESMSRV_u8GetOEsmMode                                           */
/* OESMSRV.33  / OESMSRV_u8GetOEsmEcuState                                       */
/* OESMSRV.41  / OESMSRV_vidVSIInit                                             */
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

#include "OESM.h"
#include "OESM_L.h"

#include "oesmsrv.h"
#include "OSTFSRV.h"

//#include "vsisrv.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define OESM_START_SEC_CODE
#include "MemMap.h"

/* -------------------------------------------------------------------------- */
/* OESM Set Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Req                                            */
/* !Number      : OESMSRV.11                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq)
{
   if (CmdReq != 0)
   {
      if ((OESM_u16CmdReqNm1 & CmdMask) == 0)
      {
         OESM_u16CmdReq |= CmdMask;
         OESM_u16CmdRes &= (uint16)~CmdMask;
         OESM_u16CmdReqNm1 |= (uint16)CmdMask;
      }
   }
   else
   {
      OESM_u16CmdReqNm1 &= (uint16)~CmdMask;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Set Flag Cmd Res                                            */
/* !Number      : OESMSRV.12                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESMSRV_vidSetCmdRes(uint16 CmdMask)
{
   OESM_u16CmdRes |= CmdMask;
}

/* -------------------------------------------------------------------------- */
/* OESM Get Cmd                                                                */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get Flag CmdReq                                             */
/* !Number      : OESMSRV.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean OESMSRV_bGetCmdReq(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((OESM_u16CmdReq & CmdMask) == CmdMask)
   {
      bLocalValue   = 1;
      OESM_u16CmdReq &= (uint16)~CmdMask;
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
/* !Number      : OESMSRV.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean OESMSRV_bGetCmdReqNm1(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((OESM_u16CmdReqNm1 & CmdMask) == CmdMask)
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
/* !Number      : OESMSRV.23                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean OESMSRV_bGetCmdRes(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((OESM_u16CmdRes & CmdMask) == CmdMask)
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
/* OESM Status functions                                                       */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : Get call appli value                                        */
/* !Number      : OESMSRV.31                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetCallAppli(void)
{
   uint8 u8LocalMode;

   if (OESM_bCallAppliOn != 0)
   {
      u8LocalMode = (uint8)OESM_EsmMode;
   }
   else
   {
      u8LocalMode = 0;
   }
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get OESM mode                                                */
/* !Number      : OESMSRV.32                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetOEsmMode(void)
{
   uint8 u8LocalMode;

   u8LocalMode = (uint8)OESM_EsmMode;
   return(u8LocalMode);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get OESM ECU State value                                     */
/* !Number      : OESMSRV.33                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetOEsmEcuState(void)
{
   uint8 u8LocalState;

   u8LocalState = OESM_EcuState;
   return(u8LocalState);
}

/* -------------------------------------------------------------------------- */
/* OESM/ VSI Retry download parameters functions                               */
/* -------------------------------------------------------------------------- */
/******************************************************************************/
/*                                                                            */
/* !Description : OESM/ VSI: Retry VSI download parameters Initialization      */
/* !Number      : OESMSRV.41                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESMSRV_vidVSIInit(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get OESM Power down ready flag     */
/* !Number      : OESMSRV.45                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
boolean OESMSRV_bGetPoDnReadyFlg(void)
{
   return (OESM_bPwrDnReadyFlg);
}

/******************************************************************************/
/*                                                                            */
/* !Description : Get OESM Power Latch NF clear fault finish flag     */
/* !Number      : OESMSRV.46                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
boolean OESMSRV_bGetPwrLNfClrFltFinsh(void)
{
   return (OESM_bPwrLNfClrFltFinsh);
}

/******************************************************************************/
/*  OESMSRV_vidSetMcuEnaReq                                                                          */
/* !Description : Set MCU enable request flag, for change of mind purpose.     */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                    */
/******************************************************************************/
void OESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq)
{
   if (0 != u8McuEnaReq)
   {
      OESM_bMcuEnaReq = TRUE;
   }
   else
   {
      OESM_bMcuEnaReq = FALSE;
   }
}

void OESMSRV_vidSetAfterrunReq(boolean bAfterrunReq)
{
   if(0 != bAfterrunReq)
   {
      OESM_bAfterrunReq = TRUE;
   }
   else
   {
      OESM_bAfterrunReq = FALSE;
   }
}

void OESMSRV_vidSetAfterrunFin(boolean bAfterrunFin)
{
   if(0 != bAfterrunFin)
   {
      OESM_bAfterrunFin = TRUE;
   }
   else
   {
      OESM_bAfterrunFin = FALSE;
   }
}

#define OESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
