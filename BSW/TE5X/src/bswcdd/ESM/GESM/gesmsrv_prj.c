/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : GESM                                                      */
/*                                                                            */
/* !Module         : GESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : GESMSRV_PRJ.C                                             */
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
/* GESMSRV.51  / GESMSRV_u8InterpretGEsmState                                           */
/* GESMSRV.52  / GESMSRV_bGetCallAppliOn                                           */
/* GESMSRV.53  / GESMSRV_u8GetOpFtState                                          */
/* GESMSRV.54  / GESMSRV_u8GetOpNfState                                             */
/* GESMSRV.55  / GESMSRV_u8GetPwrLFtState                                         */
/* GESMSRV.56  / GESMSRV_u8GetPwrLNfState                                           */
/* GESMSRV.57  / GESMSRV_u8GetStpIIFtState                                       */
/* GESMSRV.58  / GESMSRV_u8GetStpIINfState                                             */
/* GESMSRV.59  / GESMSRV_u8GetStpIState                                 */
/* GESMSRV.60  / GESMSRV_u8GetCmdReq                                     */
/* GESMSRV.61  / GESMSRV_u8GetCmdReqNm1                                   */
/* GESMSRV.62  / GESMSRV_u8GetPwrOffState                                     */
/* GESMSRV.63  / GESMSRV_u8GetCmdRes                                   */

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

#include "gesmsrv_prj.h"
#include "GSTFSRV.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define GESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8InterpretGEsmState                     */
/* !Number      : 51                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8InterpretGEsmState(uint16 u16GEsmState)
{
   uint8 u8RetValue;

   switch (u16GEsmState)
   {
      case GESM_SFT_STATE_1:
         u8RetValue = 0x1;
         break;

      case GESM_SFT_STATE_2:
         u8RetValue = 0x2;
         break;

      case GESM_SFT_STATE_3:
         u8RetValue = 0x3;
         break;

      case GESM_SFT_STATE_4:
         u8RetValue = 0x4;
         break;

      case GESM_SFT_STATE_5:
         u8RetValue = 0x5;
         break;

      case GESM_SFT_STATE_6:
         u8RetValue = 0x6;
         break;

      case GESM_SFT_STATE_7:
         u8RetValue = 0x7;
         break;

      case GESM_SFT_STATE_8:
         u8RetValue = 0x8;
         break;

      case GESM_SFT_STATE_9:
         u8RetValue = 0x9;
         break;

      case GESM_SFT_STATE_10:
         u8RetValue = 10;
         break;

      case GESM_SFT_STATE_11:
         u8RetValue = 11;
         break;

      case GESM_SFT_STATE_12:
         u8RetValue = 12;
         break;

      case GESM_SFT_STATE_13:
         u8RetValue = 13;
         break;

      case GESM_SFT_STATE_14:
         u8RetValue = 14;
         break;

      case GESM_SFT_STATE_15:
         u8RetValue = 15;
         break;

      case GESM_SFT_STATE_16:
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
/* !Description :GESMSRV_bGetCallAppliOn                     */
/* !Number      : 52                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean GESMSRV_bGetCallAppliOn(void)
{
   return (GESM_bCallAppliOn);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetOpFtState                     */
/* !Number      : 53                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetOpFtState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_OpFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetOpNfState                     */
/* !Number      : 54                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetOpNfState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_OpNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetPwrLFtState                     */
/* !Number      : 55                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetPwrLFtState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_PwrLFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetPwrLNfState                     */
/* !Number      : 56                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetPwrLNfState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_PwrLNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetStpIIFtState                     */
/* !Number      : 57                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetStpIIFtState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_StpIIFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetStpIINfState                     */
/* !Number      : 58                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetStpIINfState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_StpIINfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetStpIState                     */
/* !Number      : 59                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetStpIState(void)
{
   return GESMSRV_u8InterpretGEsmState(GESM_StpIState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u16GetCmdReq                     */
/* !Number      : 60                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 GESMSRV_u16GetCmdReq(void)
{
   return GESM_u16CmdReq;
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u16GetCmdReqNm1                     */
/* !Number      : 61                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 GESMSRV_u16GetCmdReqNm1(void)
{
   return GESM_u16CmdReqNm1;
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u8GetPwrOffState                     */
/* !Number      : 62                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 GESMSRV_u8GetPwrOffState(void)
{
   /* This service is only available if GESM_PwrOffState is added */
   //return GESMSRV_u8InterpretGEsmState(GESM_PwrOffState);
   return 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description :GESMSRV_u16GetCmdRes                     */
/* !Number      : 63                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 GESMSRV_u16GetCmdRes(void)
{
   return GESM_u16CmdRes;
}

#define GESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
