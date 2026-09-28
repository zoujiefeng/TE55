/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : OESM                                                      */
/*                                                                            */
/* !Module         : OESM                                                      */
/* !Description    : ECU State Manager (additional functions)                 */
/*                                                                            */
/* !File           : OESM_1.C                                                  */
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
/* OESM.1.1  / OESM_vidInit                                                     */
/* OESM.1.2  / OESM_vidInitNf                                                   */
/* OESM.1.3  / OESM_vidInitFt                                                   */
/* OESM.1.11 / OESM_vidStfStpI                                                  */
/* OESM.1.21 / OESM_vidStfStpII                                                 */
/* OESM.1.22 / OESM_vidStfStpIINf                                               */
/* OESM.1.23 / OESM_vidStfStpIIFt                                               */
/* OESM.1.31 / OESM_vidStfOp                                                    */
/* OESM.1.32 / OESM_vidStfOpNf                                                  */
/* OESM.1.33 / OESM_vidStfOpFt                                                  */
/* OESM.1.41 / OESM_vidStfPwrL                                                  */
/* OESM.1.43 / OESM_vidStfPwrLNf                                                */
/* OESM.1.43 / OESM_vidStfPwrLFt                                                */
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
#include "OESM.h"
#include "OESM_L.h"
#include "oesmsrv.h"
#include "OSTFSRV.h"
#include "OSTFSRV_L.h"
#include "resbsl.h"

#include "TPPC.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define OESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : OESM initialisation                                         */
/* !Number      : OESM.1.1                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void OESM_vidInit(void)
{
   OESM_StpIState     = OESM_SFT_STATE_1;

   OESM_StpIINfState  = OESM_SFT_STATE_1;
   OESM_StpIIFtState  = OESM_SFT_STATE_1;

   OESM_OpNfState     = OESM_SFT_STATE_1;
   OESM_OpFtState     = OESM_SFT_STATE_1;

   OESM_PwrLNfState   = OESM_SFT_STATE_1;
   OESM_PwrLFtState   = OESM_SFT_STATE_1;

   OESM_u16CmdReq     = 0;
   OESM_u16CmdReqNm1  = 0;
   OESM_u16CmdRes     = 0;

   OESM_EsmMode              = OESM_OESM_MODE_NF;
   OESM_bCallAppliOn         = FALSE;
   OESM_bPwrLNfClrFltFinsh = FALSE;
   OESM_bPwrDnReadyFlg   = FALSE;
   OESM_u8PwrLNfStep    = 0;
   OESM_u8PwrOffTim = 0;
   OESM_u8AllowPwrDnDelay = 0;
   OESM_bMcuEnaReq = FALSE;
   OESM_bAfterrunReq = FALSE;
   OESM_bAfterrunFin = FALSE;
   OESM_u16AfterrunCnt = 0;
   OESM_u8RestartDelayCnt = 0;
   OESM_u16OpDelayTime = 0;
   OESM_u16OpTimeout = 0;
   
   OESMSRV_vidVSIInit();
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II NF (No Functionnal mode) initialisation          */
/* !Number      : OESM.1.2                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidInitNf(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II FT (Functionnal Traction mode) initialisation    */
/* !Number      : OESM.1.3                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidInitFt(void)
{
   //ActivateTask(TASK_REINIT_FT);
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM START UP I State Flow                                   */
/* !Number      : OESM.1.11                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfStpI(void)
{
   switch (OESM_StpIState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Wait OESM_CMD_SW_START                                          */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (OESMSRV_bGetCmdReq(OESM_CMD_SW_START) != 0)
         {
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
            OESMSRV_vidSetCmdRes(OESM_CMD_SW_START);
            OESM_StpIState = OESM_SFT_STATE_15;
         }
         break;

      case OESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         OESM_StpIState = OESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM START UP II State Flow                                 */
/* !Number      : OESM.1.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void OESM_vidStfStpII(void)
{
   switch (OESM_EsmMode)
   {
      case OESM_OESM_MODE_NF:
         OESM_vidStfStpIINf();
         break;

      case OESM_OESM_MODE_FT:
         OESM_vidStfStpIIFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM START UP II State Flow NF                              */
/* !Number      : OESM.1.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void OESM_vidStfStpIINf(void)
{
   switch (OESM_StpIINfState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL1                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : Clear Trans States NF                                          */
/* -         : Relay open Init                                                */
/* -         : Init Nf mode                                                   */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_INIT_CAL1);

         OESM_vidInitNf();
         OESM_StpIINfState = OESM_SFT_STATE_2;
         break;

      case OESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -         : Relay open                                                     */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         OESM_StpIINfState = OESM_SFT_STATE_3;
         break;

      case OESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         OESM_bCallAppliOn = 1;
         OESM_StpIINfState = OESM_SFT_STATE_15;
         break;

      case OESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         OESM_StpIINfState = OESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM START UP II State Flow FT                               */
/* !Number      : OESM.1.23                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfStpIIFt(void)
{
   //TaskStateType LocalTaskState;

   switch (OESM_StpIIFtState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL2                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : FPGA VSI : Config. Operation = MCU                             */
/* -         : Init FT mode                                                   */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_INIT_CAL2);

         OESM_vidInitFt();
         OESM_StpIIFtState = OESM_SFT_STATE_2;
         break;

      case OESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         OESM_StpIIFtState = OESM_SFT_STATE_3;
         break;

      case OESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         //(void)GetTaskState(TASK_REINIT_FT, &LocalTaskState);
         //if (LocalTaskState == SUSPENDED)
         OESM_bCallAppliOn = 1;
         OESM_StpIIFtState = OESM_SFT_STATE_15;
         break;

      case OESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         OESM_StpIIFtState = OESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM OPERATIONAL State Flow                                  */
/* !Number      : OESM.1.31                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfOp(void)
{
   switch (OESM_EsmMode)
   {
      case OESM_OESM_MODE_NF:
         OESM_vidStfOpNf();
         break;

      case OESM_OESM_MODE_FT:
         OESM_vidStfOpFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM OPERATIONAL State Flow NF                               */
/* !Number      : OESM.1.32                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfOpNf(void)
{
   switch (OESM_OpNfState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (OESMSRV_bGetCmdReq(OESM_CMD_PWM_OFF) != 0)
         {
            OESM_OpNfState = OESM_SFT_STATE_3;
         }
         else
         {
            if (OESMSRV_bGetCmdReq(OESM_CMD_PWM_HARD) != 0)
            {
               OESM_OpNfState = OESM_SFT_STATE_4;
            }
            else
            {
               if (OESMSRV_bGetCmdReq(OESM_CMD_FT_START) != 0)
               {
/* -------------------------------------------------------------------------- */
/* -         : FT mode                                                        */
/* -------------------------------------------------------------------------- */
                  OESM_EsmMode = OESM_OESM_MODE_FT;
                  OESM_OpNfState = OESM_SFT_STATE_14;
                  (void)OESMSRV_bGetCmdReq(OESM_CMD_FT_SHUTDOWN);
               }
               else
               {
                  if (OESMSRV_bGetCmdReq(OESM_CMD_SW_SHUTDOWN) != 0)
                  {
                     OESM_bPwrLNfClrFltFinsh = FALSE;
                     OESM_OpNfState = OESM_SFT_STATE_15;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_PWM_OFF) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX) == VSISRV_SIGNAL_MODE_REQ_OFF)
            {
               OESMSRV_vidSetCmdRes(OESM_CMD_PWM_OFF);
            }
         }
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_PWM_HARD) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX) == VSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               OESMSRV_vidSetCmdRes(OESM_CMD_PWM_HARD);
            }
         }
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_FT_START) != 0)
         {
            OESMSRV_vidSetCmdRes(OESM_CMD_FT_START);
         }
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_SW_SHUTDOWN) != 0)
         {
            OESMSRV_vidSetCmdRes(OESM_CMD_SW_SHUTDOWN);
         }
         break;

      case OESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         OESM_OpNfState = OESM_SFT_STATE_1;
         break;

      case OESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_PWM_HARD);
         OESM_OpNfState = OESM_SFT_STATE_1;
         break;

      case OESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      case OESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = POWERLATCH_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         OESM_OpNfState = OESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM OPERATIONAL State Flow FT                               */
/* !Number      : OESM.1.33                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfOpFt(void)
{
   switch (OESM_OpFtState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (OESMSRV_bGetCmdReq(OESM_CMD_PWM_DIRECT) != 0)
         {
            OESM_OpFtState = OESM_SFT_STATE_2;
         }
         else
         {
            if (OESMSRV_bGetCmdReq(OESM_CMD_PWM_OFF) != 0)
            {
               OESM_OpFtState = OESM_SFT_STATE_3;
            }
            else
            {
               if (OESMSRV_bGetCmdReq(OESM_CMD_PWM_HARD) != 0)
               {
                  OESM_OpFtState = OESM_SFT_STATE_4;
               }
               else
               {
                  if (OESMSRV_bGetCmdReq(OESM_CMD_FT_SHUTDOWN) != 0)
                  {
                     OESM_OpFtState = OESM_SFT_STATE_13;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_PWM_DIRECT) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX) == VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT)
            {
               OESMSRV_vidSetCmdRes(OESM_CMD_PWM_DIRECT);
            }
         }
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_PWM_OFF) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX) == VSISRV_SIGNAL_MODE_REQ_OFF)
            {
               OESMSRV_vidSetCmdRes(OESM_CMD_PWM_OFF);
            }
         }
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_PWM_HARD) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX) == VSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               OESMSRV_vidSetCmdRes(OESM_CMD_PWM_HARD);
            }
         }
         if (OESMSRV_bGetCmdReqNm1(OESM_CMD_FT_SHUTDOWN) != 0)
         {
            OESMSRV_vidSetCmdRes(OESM_CMD_FT_SHUTDOWN);
         }
         break;

      case OESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = PWM_DIRECT                                   */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_PWM_DIRECT);
         OESM_OpFtState = OESM_SFT_STATE_1;
         break;

      case OESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         OESM_OpFtState = OESM_SFT_STATE_1;
         break;

      case OESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_PWM_HARD);
         OESM_OpFtState = OESM_SFT_STATE_1;
         break;

      case OESM_SFT_STATE_13:
/* -------------------------------------------------------------------------- */
/* - STATE_13: Application Shutdown                                           */
/* -------------------------------------------------------------------------- */
         OESM_vidStfPwrLFt();
         break;

      default:
         OESM_OpFtState = OESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM POWER LATCH State Flow                                  */
/* !Number      : OESM.1.41                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfPwrL(void)
{
   switch (OESM_EsmMode)
   {
      case OESM_OESM_MODE_NF:
         OESM_vidStfPwrLNf();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM POWER LATCH State Flow NF                               */
/* !Number      : OESM.1.42                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OESM_vidStfPwrLNf(void)
{
   boolean bLocBswEndOp = FALSE;
   boolean bLocKL15Sts = FALSE;

   if(FALSE != OESM_bAfterrunReq)
   {
      OESM_u16AfterrunCnt++;
   }
   else
   {
      
   }
   
   switch (OESM_PwrLNfState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -         : ActivateTask(TASK_POWER_DOWN)                                  */
/* -------------------------------------------------------------------------- */
         OESM_bCallAppliOn = 0;
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         /* !Comment: If no NM required, add POWER_DOWN task activate here. --Daniel */

         OESM_PwrLNfState = OESM_SFT_STATE_2;
         OESM_u8PwrLNfStep = 0;
         OESM_u8AllowPwrDnDelay = 0;
         /* TODO: OESM must be simplized */
         break;

      case OESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : Wait BSW end operations                                        */
/* -------------------------------------------------------------------------- */
         if (0 == OESM_u8PwrLNfStep)
         {
            bLocBswEndOp = TRUE;
            if ( (FALSE != bLocBswEndOp) || 
                  ( (OESM_u16PowerLatchTempo < 10) && (OESM_u16PowerLatchTempo > 0) ) 
                )
            {
               OESM_u8PwrLNfStep = 1;
            }
         }
         else if (1 == OESM_u8PwrLNfStep)
         {
             OESM_bPwrDnReadyFlg = TRUE;
             
             if (OESM_u8AllowPwrDnDelay < 10)
             {
                OESM_u8AllowPwrDnDelay++;
             }
             else
             {
                OESM_u16AfterrunCnt = 0;
                OESM_u8PwrLNfStep = 2;
             }
         }
         else
         {
            if (OESM_u8AllowPwrDnDelay < 20)
            {
               OESM_u8AllowPwrDnDelay++;
            }
            else
            {
               if(OESM_u16OpDelayTime < 5)
               {
                  OESM_u16OpDelayTime++;
               }
               else
               {
                  OESM_u16OpDelayTime = 0;
                  OESM_PwrLNfState = OESM_SFT_STATE_15;
               }
            }
         }
         break;

      case OESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = STARTUP_II_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      case OESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : OESM_EcuState = POWER_OFF_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         OESM_PwrLNfState = OESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : OESM POWER LATCH State Flow FT                              */
/* !Number      : OESM.1.43                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void OESM_vidStfPwrLFt(void)
{
   switch (OESM_PwrLFtState)
   {
      case OESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         OESM_bCallAppliOn = 0;
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_EPS_INDEX, VSISRV_VSI_MODE_REQ_OFF);
         OESM_PwrLFtState = OESM_SFT_STATE_2;
         break;

      case OESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : OEsm mode = NF                                                  */
/* -------------------------------------------------------------------------- */
         OESM_EsmMode = OESM_OESM_MODE_NF;
         OESM_PwrLFtState = OESM_SFT_STATE_15;
         break;

      case OESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : OESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         OESM_PwrLFtState = OESM_SFT_STATE_1;
         break;
   }
}

#define OESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
