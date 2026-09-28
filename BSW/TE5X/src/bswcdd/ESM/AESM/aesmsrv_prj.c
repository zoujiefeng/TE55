/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : AESM                                                      */
/*                                                                            */
/* !Module         : AESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : AESMSRV_PRJ.C                                             */
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
/* AESMSRV.51  / AESMSRV_u8InterpretAEsmState                                           */
/* AESMSRV.52  / AESMSRV_bGetCallAppliOn                                           */
/* AESMSRV.53  / AESMSRV_u8GetOpFtState                                          */
/* AESMSRV.54  / AESMSRV_u8GetOpNfState                                             */
/* AESMSRV.55  / AESMSRV_u8GetPwrLFtState                                         */
/* AESMSRV.56  / AESMSRV_u8GetPwrLNfState                                           */
/* AESMSRV.57  / AESMSRV_u8GetStpIIFtState                                       */
/* AESMSRV.58  / AESMSRV_u8GetStpIINfState                                             */
/* AESMSRV.59  / AESMSRV_u8GetStpIState                                 */
/* AESMSRV.60  / AESMSRV_u8GetCmdReq                                     */
/* AESMSRV.61  / AESMSRV_u8GetCmdReqNm1                                   */
/* AESMSRV.62  / AESMSRV_u8GetPwrOffState                                     */
/* AESMSRV.63  / AESMSRV_u8GetCmdRes                                   */

/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::        $$Date::           $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"

#include "aesmsrv_prj.h"
#include "ASTFSRV.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define AESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8InterpretAEsmState                     */
/* !Number      : 51                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8InterpretAEsmState(uint16 u16AEsmState)
{
   uint8 u8RetValue;

   switch (u16AEsmState)
   {
      case AESM_SFT_STATE_1:
         u8RetValue = 0x1;
         break;

      case AESM_SFT_STATE_2:
         u8RetValue = 0x2;
         break;

      case AESM_SFT_STATE_3:
         u8RetValue = 0x3;
         break;

      case AESM_SFT_STATE_4:
         u8RetValue = 0x4;
         break;

      case AESM_SFT_STATE_5:
         u8RetValue = 0x5;
         break;

      case AESM_SFT_STATE_6:
         u8RetValue = 0x6;
         break;

      case AESM_SFT_STATE_7:
         u8RetValue = 0x7;
         break;

      case AESM_SFT_STATE_8:
         u8RetValue = 0x8;
         break;

      case AESM_SFT_STATE_9:
         u8RetValue = 0x9;
         break;

      case AESM_SFT_STATE_10:
         u8RetValue = 10;
         break;

      case AESM_SFT_STATE_11:
         u8RetValue = 11;
         break;

      case AESM_SFT_STATE_12:
         u8RetValue = 12;
         break;

      case AESM_SFT_STATE_13:
         u8RetValue = 13;
         break;

      case AESM_SFT_STATE_14:
         u8RetValue = 14;
         break;

      case AESM_SFT_STATE_15:
         u8RetValue = 15;
         break;

      case AESM_SFT_STATE_16:
         u8RetValue = 16;
         break;

      default:
         u8RetValue = 0;
         break;
   }

   return u8RetValue;
}
/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_bGetCallAppliOn                     */
/* !Number      : 52                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean AESMSRV_bGetCallAppliOn(void)
{
   return (AESM_bCallAppliOn);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetOpFtState                     */
/* !Number      : 53                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetOpFtState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_OpFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetOpNfState                     */
/* !Number      : 54                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetOpNfState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_OpNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetPwrLFtState                     */
/* !Number      : 55                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetPwrLFtState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_PwrLFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetPwrLNfState                     */
/* !Number      : 56                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetPwrLNfState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_PwrLNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetStpIIFtState                     */
/* !Number      : 57                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetStpIIFtState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_StpIIFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetStpIINfState                     */
/* !Number      : 58                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetStpIINfState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_StpIINfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetStpIState                     */
/* !Number      : 59                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetStpIState(void)
{
   return AESMSRV_u8InterpretAEsmState(AESM_StpIState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u16GetCmdReq                     */
/* !Number      : 60                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 AESMSRV_u16GetCmdReq(void)
{
   return AESM_u16CmdReq;
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u16GetCmdReqNm1                     */
/* !Number      : 61                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 AESMSRV_u16GetCmdReqNm1(void)
{
   return AESM_u16CmdReqNm1;
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u8GetPwrOffState                     */
/* !Number      : 62                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 AESMSRV_u8GetPwrOffState(void)
{
   /* This service is only available if AESM_PwrOffState is added */
   //return AESMSRV_u8InterpretAEsmState(AESM_PwrOffState);
   return 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description :AESMSRV_u16GetCmdRes                     */
/* !Number      : 63                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 AESMSRV_u16GetCmdRes(void)
{
   return AESM_u16CmdRes;
}

#define AESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
