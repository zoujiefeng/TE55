/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Test Ecu State Manager (applicative SW emulation)       */
/*                                                                            */
/* !File            : HARD_Esm.c                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* HARD_ESM.1  / HARD_vidEsmInit                                              */
/* HARD_ESM.2  / HARD_vidEsmStfManagerNf                                      */
/* HARD_ESM.3  / HARD_vidEsmStfManagerFt                                      */
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
#include "HARD.h"
#include "HARD_L.h"

#include "HARD_Esm.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : Initialises the HARD Test Ecu State Manager                 */
/* !Trigger     : hard_tsk                                                    */
/* !Number      : HARD.ESM.1                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidEsmInit(void)
{
   HARD_EsmNfStateAut            = 0;
   HARD_EsmFtStateAut            = 0;

   HARD_EsmNfState               = HARD_ESM_NF_STATE_IDLE;
   HARD_EsmFtState               = HARD_ESM_FT_STATE_IDLE;

   HARD_bESMCmdFtStartReq        = 0;
   HARD_bESMCmdSwShutdownReq     = 0;
   HARD_bESMCmdSwStartReq        = 0;
   HARD_bESMCmdFtShutdownReq     = 0;
   HARD_bESMCmdPwmDirectReq      = 0;
   HARD_bESMCmdPwmHardReq        = 0;
   HARD_bESMCmdPwmOffReq         = 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Stateflow NF                                                */
/* !Trigger     : hard_tsk                                                    */
/* !Number      : HARD.ESM.2                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void HARD_vidEsmStfManagerNf(uint8 fState)
{
   switch (fState)
   {
      case HARD_ESM_NF_STATE_FT_START:       /* 1 */
         HARD_bESMCmdFtStartReq        = 1;
         HARD_bESMCmdSwShutdownReq     = 0;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 0;

         HARD_EsmFtState               = HARD_ESM_FT_STATE_IDLE;
         break;

      case HARD_ESM_NF_STATE_SW_SHUTDOWN:    /* 4 */
         HARD_bESMCmdFtStartReq        = 0;
         HARD_bESMCmdSwShutdownReq     = 1;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 0;
         break;
         
      case HARD_ESM_NF_STATE_PWM_HARD:       /* 8 */        
         HARD_bESMCmdFtStartReq        = 0;
         HARD_bESMCmdSwShutdownReq     = 0;
         HARD_bESMCmdPwmHardReq        = 1;
         HARD_bESMCmdPwmOffReq         = 0;
         break;

      case HARD_ESM_NF_STATE_PWM_OFF:        /* 16 */
         HARD_bESMCmdFtStartReq        = 0;
         HARD_bESMCmdSwShutdownReq     = 0;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 1;
         break;
         
      case HARD_ESM_NF_STATE_IDLE:           /* 64 */
         HARD_bESMCmdFtStartReq        = 0;
         HARD_bESMCmdSwShutdownReq     = 0;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 0;
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Stateflow FT                                                */
/* !Trigger     : hard_tsk                                                    */
/* !Number      : HARD.ESM.3                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void HARD_vidEsmStfManagerFt(uint8 fState)
{
   switch (fState)
   {
      case HARD_ESM_FT_STATE_PWM_DIRECT:     /* 1 */
         HARD_bESMCmdPwmDirectReq      = 1;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 0;
         HARD_bESMCmdFtShutdownReq     = 0;
         break;

      case HARD_ESM_FT_STATE_PWM_HARD:       /* 2 */        
         HARD_bESMCmdPwmDirectReq      = 0;
         HARD_bESMCmdPwmHardReq        = 1;
         HARD_bESMCmdPwmOffReq         = 0;
         HARD_bESMCmdFtShutdownReq     = 0;
         break;

      case HARD_ESM_FT_STATE_PWM_OFF:        /* 4 */
         HARD_bESMCmdPwmDirectReq      = 0;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 1;
         HARD_bESMCmdFtShutdownReq     = 0;
         break;
         
      case HARD_ESM_FT_STATE_FT_SHUTDOWN:    /* 8 */
         HARD_bESMCmdPwmDirectReq      = 0;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 0;
         HARD_bESMCmdFtShutdownReq     = 1;
         break;
     
      case HARD_ESM_FT_STATE_IDLE:           /* 64 */
         HARD_bESMCmdPwmDirectReq      = 0;
         HARD_bESMCmdPwmHardReq        = 0;
         HARD_bESMCmdPwmOffReq         = 0;
         HARD_bESMCmdFtShutdownReq     = 0;
         break;

      default:
         break;
   }
}

#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
