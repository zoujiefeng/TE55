/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : ESM                                                      */
/*                                                                            */
/* !Module         : ESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : ESMSRV_PRJ.C                                             */
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
/* ESMSRV.51  / ESMSRV_u8InterpretEsmState                                           */
/* ESMSRV.52  / ESMSRV_bGetCallAppliOn                                           */
/* ESMSRV.53  / ESMSRV_u8GetOpFtState                                          */
/* ESMSRV.54  / ESMSRV_u8GetOpNfState                                             */
/* ESMSRV.55  / ESMSRV_u8GetPwrLFtState                                         */
/* ESMSRV.56  / ESMSRV_u8GetPwrLNfState                                           */
/* ESMSRV.57  / ESMSRV_u8GetStpIIFtState                                       */
/* ESMSRV.58  / ESMSRV_u8GetStpIINfState                                             */
/* ESMSRV.59  / ESMSRV_u8GetStpIState                                 */
/* ESMSRV.60  / ESMSRV_u8GetCmdReq                                     */
/* ESMSRV.61  / ESMSRV_u8GetCmdReqNm1                                   */
/* ESMSRV.62  / ESMSRV_u8GetPwrOffState                                     */
/* ESMSRV.63  / ESMSRV_u8GetCmdRes                                   */

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

#include "esmsrv_prj.h"
#include "STFSRV.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define ESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8InterpretEsmState                     */
/* !Number      : 51                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8InterpretEsmState(uint16 u16EsmState)
{
   uint8 u8RetValue;

   switch (u16EsmState)
   {
      case ESM_SFT_STATE_1:
         u8RetValue = 0x1;
         break;

      case ESM_SFT_STATE_2:
         u8RetValue = 0x2;
         break;

      case ESM_SFT_STATE_3:
         u8RetValue = 0x3;
         break;

      case ESM_SFT_STATE_4:
         u8RetValue = 0x4;
         break;

      case ESM_SFT_STATE_5:
         u8RetValue = 0x5;
         break;

      case ESM_SFT_STATE_6:
         u8RetValue = 0x6;
         break;

      case ESM_SFT_STATE_7:
         u8RetValue = 0x7;
         break;

      case ESM_SFT_STATE_8:
         u8RetValue = 0x8;
         break;

      case ESM_SFT_STATE_9:
         u8RetValue = 0x9;
         break;

      case ESM_SFT_STATE_10:
         u8RetValue = 10;
         break;

      case ESM_SFT_STATE_11:
         u8RetValue = 11;
         break;

      case ESM_SFT_STATE_12:
         u8RetValue = 12;
         break;

      case ESM_SFT_STATE_13:
         u8RetValue = 13;
         break;

      case ESM_SFT_STATE_14:
         u8RetValue = 14;
         break;

      case ESM_SFT_STATE_15:
         u8RetValue = 15;
         break;

      case ESM_SFT_STATE_16:
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
/* !Description :ESMSRV_bGetCallAppliOn                     */
/* !Number      : 52                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean ESMSRV_bGetCallAppliOn(void)
{
   return (ESM_bCallAppliOn);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetOpFtState                     */
/* !Number      : 53                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetOpFtState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_OpFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetOpNfState                     */
/* !Number      : 54                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetOpNfState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_OpNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetPwrLFtState                     */
/* !Number      : 55                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetPwrLFtState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_PwrLFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetPwrLNfState                     */
/* !Number      : 56                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetPwrLNfState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_PwrLNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetStpIIFtState                     */
/* !Number      : 57                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetStpIIFtState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_StpIIFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetStpIINfState                     */
/* !Number      : 58                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetStpIINfState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_StpIINfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetStpIState                     */
/* !Number      : 59                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetStpIState(void)
{
   return ESMSRV_u8InterpretEsmState(ESM_StpIState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u16GetCmdReq                     */
/* !Number      : 60                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 ESMSRV_u16GetCmdReq(void)
{
   return ESM_u16CmdReq;
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u16GetCmdReqNm1                     */
/* !Number      : 61                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 ESMSRV_u16GetCmdReqNm1(void)
{
   return ESM_u16CmdReqNm1;
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u8GetPwrOffState                     */
/* !Number      : 62                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 ESMSRV_u8GetPwrOffState(void)
{
   /* This service is only available if ESM_PwrOffState is added */
   //return ESMSRV_u8InterpretEsmState(ESM_PwrOffState);
   return 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description :ESMSRV_u16GetCmdRes                     */
/* !Number      : 63                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 ESMSRV_u16GetCmdRes(void)
{
   return ESM_u16CmdRes;
}

#define ESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
