/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : OESM                                                      */
/*                                                                            */
/* !Module         : OESM                                                      */
/* !Description    : Ecu State Manager (API's services for project scope)                       */
/*                                                                            */
/* !File           : OESMSRV_PRJ.C                                             */
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
/* OESMSRV.51  / OESMSRV_u8InterpretOEsmState                                           */
/* OESMSRV.52  / OESMSRV_bGetCallAppliOn                                           */
/* OESMSRV.53  / OESMSRV_u8GetOpFtState                                          */
/* OESMSRV.54  / OESMSRV_u8GetOpNfState                                             */
/* OESMSRV.55  / OESMSRV_u8GetPwrLFtState                                         */
/* OESMSRV.56  / OESMSRV_u8GetPwrLNfState                                           */
/* OESMSRV.57  / OESMSRV_u8GetStpIIFtState                                       */
/* OESMSRV.58  / OESMSRV_u8GetStpIINfState                                             */
/* OESMSRV.59  / OESMSRV_u8GetStpIState                                 */
/* OESMSRV.60  / OESMSRV_u8GetCmdReq                                     */
/* OESMSRV.61  / OESMSRV_u8GetCmdReqNm1                                   */
/* OESMSRV.62  / OESMSRV_u8GetPwrOffState                                     */
/* OESMSRV.63  / OESMSRV_u8GetCmdRes                                   */

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

#include "oesmsrv_prj.h"
#include "OSTFSRV.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define OESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8InterpretOEsmState                     */
/* !Number      : 51                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8InterpretOEsmState(uint16 u16OEsmState)
{
   uint8 u8RetValue;

   switch (u16OEsmState)
   {
      case OESM_SFT_STATE_1:
         u8RetValue = 0x1;
         break;

      case OESM_SFT_STATE_2:
         u8RetValue = 0x2;
         break;

      case OESM_SFT_STATE_3:
         u8RetValue = 0x3;
         break;

      case OESM_SFT_STATE_4:
         u8RetValue = 0x4;
         break;

      case OESM_SFT_STATE_5:
         u8RetValue = 0x5;
         break;

      case OESM_SFT_STATE_6:
         u8RetValue = 0x6;
         break;

      case OESM_SFT_STATE_7:
         u8RetValue = 0x7;
         break;

      case OESM_SFT_STATE_8:
         u8RetValue = 0x8;
         break;

      case OESM_SFT_STATE_9:
         u8RetValue = 0x9;
         break;

      case OESM_SFT_STATE_10:
         u8RetValue = 10;
         break;

      case OESM_SFT_STATE_11:
         u8RetValue = 11;
         break;

      case OESM_SFT_STATE_12:
         u8RetValue = 12;
         break;

      case OESM_SFT_STATE_13:
         u8RetValue = 13;
         break;

      case OESM_SFT_STATE_14:
         u8RetValue = 14;
         break;

      case OESM_SFT_STATE_15:
         u8RetValue = 15;
         break;

      case OESM_SFT_STATE_16:
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
/* !Description :OESMSRV_bGetCallAppliOn                     */
/* !Number      : 52                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
boolean OESMSRV_bGetCallAppliOn(void)
{
   return (OESM_bCallAppliOn);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetOpFtState                     */
/* !Number      : 53                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetOpFtState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_OpFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetOpNfState                     */
/* !Number      : 54                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetOpNfState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_OpNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetPwrLFtState                     */
/* !Number      : 55                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetPwrLFtState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_PwrLFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetPwrLNfState                     */
/* !Number      : 56                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetPwrLNfState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_PwrLNfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetStpIIFtState                     */
/* !Number      : 57                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetStpIIFtState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_StpIIFtState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetStpIINfState                     */
/* !Number      : 58                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetStpIINfState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_StpIINfState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetStpIState                     */
/* !Number      : 59                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetStpIState(void)
{
   return OESMSRV_u8InterpretOEsmState(OESM_StpIState);
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u16GetCmdReq                     */
/* !Number      : 60                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 OESMSRV_u16GetCmdReq(void)
{
   return OESM_u16CmdReq;
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u16GetCmdReqNm1                     */
/* !Number      : 61                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 OESMSRV_u16GetCmdReqNm1(void)
{
   return OESM_u16CmdReqNm1;
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u8GetPwrOffState                     */
/* !Number      : 62                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint8 OESMSRV_u8GetPwrOffState(void)
{
   /* This service is only available if OESM_PwrOffState is added */
   //return OESMSRV_u8InterpretOEsmState(OESM_PwrOffState);
   return 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description :OESMSRV_u16GetCmdRes                     */
/* !Number      : 63                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
uint16 OESMSRV_u16GetCmdRes(void)
{
   return OESM_u16CmdRes;
}

#define OESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
