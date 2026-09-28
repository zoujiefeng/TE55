/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : AESM                                                      */
/*                                                                            */
/* !Module         : AESM                                                      */
/* !Description    : ECU State Manager (additional functions)                 */
/*                                                                            */
/* !File           : AESM_1.C                                                  */
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
/* AESM.1.1  / AESM_vidInit                                                     */
/* AESM.1.2  / AESM_vidInitNf                                                   */
/* AESM.1.3  / AESM_vidInitFt                                                   */
/* AESM.1.11 / AESM_vidStfStpI                                                  */
/* AESM.1.21 / AESM_vidStfStpII                                                 */
/* AESM.1.22 / AESM_vidStfStpIINf                                               */
/* AESM.1.23 / AESM_vidStfStpIIFt                                               */
/* AESM.1.31 / AESM_vidStfOp                                                    */
/* AESM.1.32 / AESM_vidStfOpNf                                                  */
/* AESM.1.33 / AESM_vidStfOpFt                                                  */
/* AESM.1.41 / AESM_vidStfPwrL                                                  */
/* AESM.1.43 / AESM_vidStfPwrLNf                                                */
/* AESM.1.43 / AESM_vidStfPwrLFt                                                */
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

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "AESM.h"
#include "AESM_L.h"
#include "aesmsrv.h"
#include "ASTFSRV.h"
#include "ASTFSRV_L.h"
#include "resbsl.h"

#include "TPPC.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define AESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : AESM initialisation                                         */
/* !Number      : AESM.1.1                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void AESM_vidInit(void)
{
   AESM_StpIState     = AESM_SFT_STATE_1;

   AESM_StpIINfState  = AESM_SFT_STATE_1;
   AESM_StpIIFtState  = AESM_SFT_STATE_1;

   AESM_OpNfState     = AESM_SFT_STATE_1;
   AESM_OpFtState     = AESM_SFT_STATE_1;

   AESM_PwrLNfState   = AESM_SFT_STATE_1;
   AESM_PwrLFtState   = AESM_SFT_STATE_1;

   AESM_u16CmdReq     = 0;
   AESM_u16CmdReqNm1  = 0;
   AESM_u16CmdRes     = 0;

   AESM_EsmMode              = AESM_AESM_MODE_NF;
   AESM_bCallAppliOn         = FALSE;
   AESM_bPwrLNfClrFltFinsh = FALSE;
   AESM_bPwrDnReadyFlg   = FALSE;
   AESM_u8PwrLNfStep    = 0;
   AESM_u8PwrOffTim = 0;
   AESM_u8AllowPwrDnDelay = 0;
   AESM_bMcuEnaReq = FALSE;
   AESM_bAfterrunReq = FALSE;
   AESM_bAfterrunFin = FALSE;
   AESM_u16AfterrunCnt = 0;
   AESM_u8RestartDelayCnt = 0;
   AESM_u16OpDelayTime = 0;
   AESM_u16OpTimeout = 0;
   
   AESMSRV_vidVSIInit();
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II NF (No Functionnal mode) initialisation          */
/* !Number      : AESM.1.2                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidInitNf(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II FT (Functionnal Traction mode) initialisation    */
/* !Number      : AESM.1.3                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidInitFt(void)
{
   //ActivateTask(TASK_REINIT_FT);
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM START UP I State Flow                                   */
/* !Number      : AESM.1.11                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfStpI(void)
{
   switch (AESM_StpIState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Wait AESM_CMD_SW_START                                          */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (AESMSRV_bGetCmdReq(AESM_CMD_SW_START) != 0)
         {
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
            AESMSRV_vidSetCmdRes(AESM_CMD_SW_START);
            AESM_StpIState = AESM_SFT_STATE_15;
         }
         break;

      case AESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         AESM_StpIState = AESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM START UP II State Flow                                 */
/* !Number      : AESM.1.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void AESM_vidStfStpII(void)
{
   switch (AESM_EsmMode)
   {
      case AESM_AESM_MODE_NF:
         AESM_vidStfStpIINf();
         break;

      case AESM_AESM_MODE_FT:
         AESM_vidStfStpIIFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM START UP II State Flow NF                              */
/* !Number      : AESM.1.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void AESM_vidStfStpIINf(void)
{
   switch (AESM_StpIINfState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL1                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : Clear Trans States NF                                          */
/* -         : Relay open Init                                                */
/* -         : Init Nf mode                                                   */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_INIT_CAL1);

         AESM_vidInitNf();
         AESM_StpIINfState = AESM_SFT_STATE_2;
         break;

      case AESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -         : Relay open                                                     */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         AESM_StpIINfState = AESM_SFT_STATE_3;
         break;

      case AESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         AESM_bCallAppliOn = 1;
         AESM_StpIINfState = AESM_SFT_STATE_15;
         break;

      case AESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         AESM_StpIINfState = AESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM START UP II State Flow FT                               */
/* !Number      : AESM.1.23                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfStpIIFt(void)
{
   //TaskStateType LocalTaskState;

   switch (AESM_StpIIFtState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL2                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : FPGA VSI : Config. Operation = MCU                             */
/* -         : Init FT mode                                                   */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_INIT_CAL2);

         AESM_vidInitFt();
         AESM_StpIIFtState = AESM_SFT_STATE_2;
         break;

      case AESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         AESM_StpIIFtState = AESM_SFT_STATE_3;
         break;

      case AESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         //(void)GetTaskState(TASK_REINIT_FT, &LocalTaskState);
         //if (LocalTaskState == SUSPENDED)
         AESM_bCallAppliOn = 1;
         AESM_StpIIFtState = AESM_SFT_STATE_15;
         break;

      case AESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         AESM_StpIIFtState = AESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM OPERATIONAL State Flow                                  */
/* !Number      : AESM.1.31                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfOp(void)
{
   switch (AESM_EsmMode)
   {
      case AESM_AESM_MODE_NF:
         AESM_vidStfOpNf();
         break;

      case AESM_AESM_MODE_FT:
         AESM_vidStfOpFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM OPERATIONAL State Flow NF                               */
/* !Number      : AESM.1.32                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfOpNf(void)
{
   switch (AESM_OpNfState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (AESMSRV_bGetCmdReq(AESM_CMD_PWM_OFF) != 0)
         {
            AESM_OpNfState = AESM_SFT_STATE_3;
         }
         else
         {
            if (AESMSRV_bGetCmdReq(AESM_CMD_PWM_HARD) != 0)
            {
               AESM_OpNfState = AESM_SFT_STATE_4;
            }
            else
            {
               if (AESMSRV_bGetCmdReq(AESM_CMD_FT_START) != 0)
               {
/* -------------------------------------------------------------------------- */
/* -         : FT mode                                                        */
/* -------------------------------------------------------------------------- */
                  AESM_EsmMode = AESM_AESM_MODE_FT;
                  AESM_OpNfState = AESM_SFT_STATE_14;
                  (void)AESMSRV_bGetCmdReq(AESM_CMD_FT_SHUTDOWN);
               }
               else
               {
                  if (AESMSRV_bGetCmdReq(AESM_CMD_SW_SHUTDOWN) != 0)
                  {
                     AESM_bPwrLNfClrFltFinsh = FALSE;
                     AESM_OpNfState = AESM_SFT_STATE_15;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_PWM_OFF) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == VSISRV_SIGNAL_MODE_REQ_OFF)
            {
               AESMSRV_vidSetCmdRes(AESM_CMD_PWM_OFF);
            }
         }
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_PWM_HARD) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == VSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               AESMSRV_vidSetCmdRes(AESM_CMD_PWM_HARD);
            }
         }
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_FT_START) != 0)
         {
            AESMSRV_vidSetCmdRes(AESM_CMD_FT_START);
         }
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_SW_SHUTDOWN) != 0)
         {
            AESMSRV_vidSetCmdRes(AESM_CMD_SW_SHUTDOWN);
         }
         break;

      case AESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         AESM_OpNfState = AESM_SFT_STATE_1;
         break;

      case AESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_PWM_HARD);
         AESM_OpNfState = AESM_SFT_STATE_1;
         break;

      case AESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      case AESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = POWERLATCH_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         AESM_OpNfState = AESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM OPERATIONAL State Flow FT                               */
/* !Number      : AESM.1.33                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfOpFt(void)
{
   switch (AESM_OpFtState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (AESMSRV_bGetCmdReq(AESM_CMD_PWM_DIRECT) != 0)
         {
            AESM_OpFtState = AESM_SFT_STATE_2;
         }
         else
         {
            if (AESMSRV_bGetCmdReq(AESM_CMD_PWM_OFF) != 0)
            {
               AESM_OpFtState = AESM_SFT_STATE_3;
            }
            else
            {
               if (AESMSRV_bGetCmdReq(AESM_CMD_PWM_HARD) != 0)
               {
                  AESM_OpFtState = AESM_SFT_STATE_4;
               }
               else
               {
                  if (AESMSRV_bGetCmdReq(AESM_CMD_FT_SHUTDOWN) != 0)
                  {
                     AESM_OpFtState = AESM_SFT_STATE_13;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_PWM_DIRECT) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT)
            {
               AESMSRV_vidSetCmdRes(AESM_CMD_PWM_DIRECT);
            }
         }
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_PWM_OFF) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == VSISRV_SIGNAL_MODE_REQ_OFF)
            {
               AESMSRV_vidSetCmdRes(AESM_CMD_PWM_OFF);
            }
         }
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_PWM_HARD) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == VSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               AESMSRV_vidSetCmdRes(AESM_CMD_PWM_HARD);
            }
         }
         if (AESMSRV_bGetCmdReqNm1(AESM_CMD_FT_SHUTDOWN) != 0)
         {
            AESMSRV_vidSetCmdRes(AESM_CMD_FT_SHUTDOWN);
         }
         break;

      case AESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = PWM_DIRECT                                   */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_PWM_DIRECT);
         AESM_OpFtState = AESM_SFT_STATE_1;
         break;

      case AESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         AESM_OpFtState = AESM_SFT_STATE_1;
         break;

      case AESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_PWM_HARD);
         AESM_OpFtState = AESM_SFT_STATE_1;
         break;

      case AESM_SFT_STATE_13:
/* -------------------------------------------------------------------------- */
/* - STATE_13: Application Shutdown                                           */
/* -------------------------------------------------------------------------- */
         AESM_vidStfPwrLFt();
         break;

      default:
         AESM_OpFtState = AESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM POWER LATCH State Flow                                  */
/* !Number      : AESM.1.41                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfPwrL(void)
{
   switch (AESM_EsmMode)
   {
      case AESM_AESM_MODE_NF:
         AESM_vidStfPwrLNf();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM POWER LATCH State Flow NF                               */
/* !Number      : AESM.1.42                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AESM_vidStfPwrLNf(void)
{
   boolean bLocBswEndOp = FALSE;
   boolean bLocKL15Sts = FALSE;

   if(FALSE != AESM_bAfterrunReq)
   {
      AESM_u16AfterrunCnt++;
   }
   else
   {
      
   }
   
   switch (AESM_PwrLNfState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -         : ActivateTask(TASK_POWER_DOWN)                                  */
/* -------------------------------------------------------------------------- */
         AESM_bCallAppliOn = 0;
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         /* !Comment: If no NM required, add POWER_DOWN task activate here. --Daniel */

         AESM_PwrLNfState = AESM_SFT_STATE_2;
         AESM_u8PwrLNfStep = 0;
         AESM_u8AllowPwrDnDelay = 0;
         /* TODO: AESM must be simplized */
         break;

      case AESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : Wait BSW end operations                                        */
/* -------------------------------------------------------------------------- */
         if (0 == AESM_u8PwrLNfStep)
         {
            bLocBswEndOp = TRUE;
            if ( (FALSE != bLocBswEndOp) || 
                  ( (AESM_u16PowerLatchTempo < 10) && (AESM_u16PowerLatchTempo > 0) ) 
                )
            {
               AESM_u8PwrLNfStep = 1;
            }
         }
         else if (1 == AESM_u8PwrLNfStep)
         {
             AESM_bPwrDnReadyFlg = TRUE;
             
             if (AESM_u8AllowPwrDnDelay < 10)
             {
                AESM_u8AllowPwrDnDelay++;
             }
             else
             {
                AESM_u16AfterrunCnt = 0;
                AESM_u8PwrLNfStep = 2;
             }
         }
         else
         {
            if (AESM_u8AllowPwrDnDelay < 20)
            {
               AESM_u8AllowPwrDnDelay++;
            }
            else
            {
               if(AESM_u16OpDelayTime < 5)
               {
                  AESM_u16OpDelayTime++;
               }
               else
               {
                  AESM_u16OpDelayTime = 0;
                  AESM_PwrLNfState = AESM_SFT_STATE_15;
               }
            }
         }
         break;

      case AESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = STARTUP_II_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      case AESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : AESM_EcuState = POWER_OFF_MODE                                 */
/* -------------------------------------------------------------------------- */         
         break;

      default:
         AESM_PwrLNfState = AESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : AESM POWER LATCH State Flow FT                              */
/* !Number      : AESM.1.43                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void AESM_vidStfPwrLFt(void)
{
   switch (AESM_PwrLFtState)
   {
      case AESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         AESM_bCallAppliOn = 0;
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         AESM_PwrLFtState = AESM_SFT_STATE_2;
         break;

      case AESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : AEsm mode = NF                                                  */
/* -------------------------------------------------------------------------- */
         AESM_EsmMode = AESM_AESM_MODE_NF;
         AESM_PwrLFtState = AESM_SFT_STATE_15;
         break;

      case AESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : AESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         AESM_PwrLFtState = AESM_SFT_STATE_1;
         break;
   }
}

#define AESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
