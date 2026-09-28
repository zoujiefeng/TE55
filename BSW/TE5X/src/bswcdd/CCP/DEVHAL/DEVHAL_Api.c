/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : DEVHAL                                                  */
/* !Description     : DEVHAL Component                                        */
/*                                                                            */
/* !File            : DEVHAL_Api.c                                            */
/* !Description     : APIs of DEVHAL Component                                */
/*                                                                            */
/* !Reference       :                                                         */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT invt  all rights reserved                                        */
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID: %
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"
#include "DEVHAL.h"
#include "DIO.h"
#include "DEVHAL_Cfg.h"
#include "DEVHAL_Def.h"
#include "DEVHAL_I.h"
#include "IfxScu_reg.h"
#include "IfxCpu_reg.h"
#include "Mcu.h"
#include "OS.h"
#include "IfxSrc_reg.h"

#define DEVHAL_START_SEC_CODE
#include "DEVHAL_MemMap.h"

#define _SOFTWARE_DEVAID_

/******************************************************************************/
/* !FuncName    : DEVHAL_bCheckEmulCard                                       */
/* !Description : Checks if emulation extension is available                  */
/*                                                                            */
/* !LastAuthor  :                                                 */
/******************************************************************************/
boolean DEVHAL_bCheckEmulCard(void)
{
#ifdef _SOFTWARE_DEVAID_
   return (TRUE);
#else
   volatile Ifx_SCU_CHIPID *pudtLocalChipIdReg = &SCU_CHIPID;


   if ((pudtLocalChipIdReg->B.EEA) == 0x01u)
   {
      return (TRUE);
   }
   else
   {
      return (FALSE);
   }
#endif
}

/******************************************************************************/
/* !FuncName    : DEVHAL_udtCheckEngineState                                  */
/* !Description :                                                             */
/*                                                                            */
/* !LastAuthor  :                                                  */
/******************************************************************************/
Std_ReturnType DEVHAL_udtCheckEngineState(void)
{
   boolean bLocalReprogCondOk;
   boolean bLocalProtectionCondOk;
   Std_ReturnType udtLocalRetValue;


   bLocalReprogCondOk = DEVHAL_bCheckReprogCond();
   if (bLocalReprogCondOk != FALSE)
   {
      bLocalProtectionCondOk = DEVHAL_bWaitProtectionCond();
      if (bLocalProtectionCondOk == FALSE)
      {
         DEVHAL_u8CheckEngineState = DEVHAL_u8ENG_STATE_IN_PROGRESS;
         udtLocalRetValue = E_NOT_OK;
      }
      else
      {
         DEVHAL_u8CheckEngineState = DEVHAL_u8ENG_STATE_AUTHORISED;
         udtLocalRetValue = E_OK;
      }
   }
   else
   {
      DEVHAL_u8CheckEngineState = DEVHAL_u8ENG_STATE_DENIED;
      udtLocalRetValue = E_NOT_OK;
   }
   return(udtLocalRetValue);
}


#define DEVHAL_STOP_SEC_CODE
#include "DEVHAL_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
