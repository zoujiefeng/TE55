/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : DEVHAL                                                  */
/* !Description     : DEVHAL Component                                        */
/*                                                                            */
/* !File            : DEVHAL_Cfg.c                                            */
/* !Description     : DEVHAL configuration                                    */
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
#include "DEVHAL_Cfg.h"
#include "Dio.h"
#include "CALUSR.h"

#define DEVHAL_START_SEC_CODE
#include "DEVHAL_MemMap.h"

/******************************************************************************/
/* !FuncName    : DEVHAL_bWaitProtectionCond                                  */
/* !Description : Return the DEVAID protection state.                         */
/*                                                                            */
/* !LastAuthor  :                                                    */
/******************************************************************************/
boolean DEVHAL_bWaitProtectionCond(void)
{
   return(TRUE);
}

/******************************************************************************/
/* !FuncName    : DEVHAL_bCheckReprogCond                                     */
/* !Description : Returns ECU state for devaid reprog authorization.          */
/*                                                                            */
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
boolean DEVHAL_bCheckReprogCond(void)
{
   boolean bIsUsrCalDataOK = FALSE;
   /* check CRC is correct and write flag is enabled */
   bIsUsrCalDataOK = CalUsr_bVerifyCalData();

   return (bIsUsrCalDataOK);
}

#define DEVHAL_STOP_SEC_CODE
#include "DEVHAL_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
