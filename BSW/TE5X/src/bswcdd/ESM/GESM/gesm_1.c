/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : GESM                                                      */
/*                                                                            */
/* !Module         : GESM                                                      */
/* !Description    : ECU State Manager (additional functions)                 */
/*                                                                            */
/* !File           : GESM_1.C                                                  */
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
/* GESM.1.1  / GESM_vidInit                                                     */
/* GESM.1.2  / GESM_vidInitNf                                                   */
/* GESM.1.3  / GESM_vidInitFt                                                   */
/* GESM.1.11 / GESM_vidStfStpI                                                  */
/* GESM.1.21 / GESM_vidStfStpII                                                 */
/* GESM.1.22 / GESM_vidStfStpIINf                                               */
/* GESM.1.23 / GESM_vidStfStpIIFt                                               */
/* GESM.1.31 / GESM_vidStfOp                                                    */
/* GESM.1.32 / GESM_vidStfOpNf                                                  */
/* GESM.1.33 / GESM_vidStfOpFt                                                  */
/* GESM.1.41 / GESM_vidStfPwrL                                                  */
/* GESM.1.43 / GESM_vidStfPwrLNf                                                */
/* GESM.1.43 / GESM_vidStfPwrLFt                                                */
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
#include "Std_Types.h"
#include "Nvm.h"
#include "MemIf.h"
#include "Mcu.h"
#include "Dcm_ExternalServiceProcessing.h"
#include "Port.h"
#include "CanTrcv.h"
#include "Dem.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "GESM.h"
#include "GESM_L.h"
#include "gesmsrv.h"
#include "GSTFSRV.h"
#include "GSTFSRV_L.h"
#include "resbsl.h"

#include "iohal.h"
#include "GCCU6.h"
#include "MutexDef.h"
#include "SBC.h"

#define _TCU_AFTER_RUN_ 1

extern uint8 shutdown_b;
/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define GESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : GESM initialisation                                         */
/* !Number      : GESM.1.1                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void GESM_vidInit(void)
{
   GESM_StpIState     = GESM_SFT_STATE_1;

   GESM_StpIINfState  = GESM_SFT_STATE_1;
   GESM_StpIIFtState  = GESM_SFT_STATE_1;

   GESM_OpNfState     = GESM_SFT_STATE_1;
   GESM_OpFtState     = GESM_SFT_STATE_1;

   GESM_PwrLNfState   = GESM_SFT_STATE_1;
   GESM_PwrLFtState   = GESM_SFT_STATE_1;

   GESM_u16CmdReq     = 0;
   GESM_u16CmdReqNm1  = 0;
   GESM_u16CmdRes     = 0;

   GESM_EsmMode              = GESM_GESM_MODE_NF;
   GESM_bCallAppliOn         = FALSE;
   GESM_bPwrLNfClrFltFinsh = FALSE;
   GESM_bPwrDnReadyFlg   = FALSE;
   GESM_u8PwrLNfStep    = 0;
   GESM_u8PwrOffTim = 0;
   GESM_u8AllowPwrDnDelay = 0;
   GESM_bMcuEnaReq = FALSE;
   GESM_bAfterrunReq = FALSE;
   GESM_bAfterrunFin = FALSE;
   GESM_u16AfterrunCnt = 0;
   GESM_u8RestartDelayCnt = 0;
   GESM_u16OpDelayTime = 0;
   GESM_u16OpTimeout = 0;
   
   GESMSRV_vidVSIInit();
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II NF (No Functionnal mode) initialisation          */
/* !Number      : GESM.1.2                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidInitNf(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II FT (Functionnal Traction mode) initialisation    */
/* !Number      : GESM.1.3                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidInitFt(void)
{
   //ActivateTask(TASK_REINIT_FT);
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM START UP I State Flow                                   */
/* !Number      : GESM.1.11                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfStpI(void)
{
   switch (GESM_StpIState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Wait GESM_CMD_SW_START                                          */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (GESMSRV_bGetCmdReq(GESM_CMD_SW_START) != 0)
         {
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
            GESMSRV_vidSetCmdRes(GESM_CMD_SW_START);
            GESM_StpIState = GESM_SFT_STATE_15;
         }
         break;

      case GESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         GESM_StpIState = GESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM START UP II State Flow                                 */
/* !Number      : GESM.1.21                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void GESM_vidStfStpII(void)
{
   switch (GESM_EsmMode)
   {
      case GESM_GESM_MODE_NF:
         GESM_vidStfStpIINf();
         break;

      case GESM_GESM_MODE_FT:
         GESM_vidStfStpIIFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM START UP II State Flow NF                              */
/* !Number      : GESM.1.22                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void GESM_vidStfStpIINf(void)
{
   switch (GESM_StpIINfState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL1                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : Clear Trans States NF                                          */
/* -         : Relay open Init                                                */
/* -         : Init Nf mode                                                   */
/* -------------------------------------------------------------------------- */
         /*IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN(DIO_HAL_ON);*//*WRITE_IO_BLOCK_BY_LZJ*/
         /*IOHAL_vidWrite_CH_DIO_OUT_M_INTLOC_ST(DIO_HAL_ON);*//*WRITE_IO_BLOCK_BY_LZJ*/


         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_INIT_CAL1);
         //RESBSL_vidConfig((uint16)((GVSISRV_GetSignalTxPwmFreq()) / 2));
         GRESBSL_vidConfig((uint16)((2000) / 2));

         GESM_vidInitNf();
         GESM_StpIINfState = GESM_SFT_STATE_2;
         break;

      case GESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -         : Relay open                                                     */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);
         GESM_StpIINfState = GESM_SFT_STATE_3;
         break;

      case GESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         GESM_bCallAppliOn = 1;
         GESM_StpIINfState = GESM_SFT_STATE_15;
         break;

      case GESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         GESM_StpIINfState = GESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM START UP II State Flow FT                               */
/* !Number      : GESM.1.23                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfStpIIFt(void)
{
   //TaskStateType LocalTaskState;

   switch (GESM_StpIIFtState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL2                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : FPGA VSI : Config. Operation = MCU                             */
/* -         : Init FT mode                                                   */
/* -------------------------------------------------------------------------- */
         /*IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN(DIO_HAL_ON);*//*WRITE_IO_BLOCK_BY_LZJ*/

         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_INIT_CAL2);
         //RESBSL_vidConfig((uint16)((GVSISRV_GetSignalTxPwmFreq()) / 2));
         GRESBSL_vidConfig((uint16)((2000) / 2));

         GESM_vidInitFt();
         GESM_StpIIFtState = GESM_SFT_STATE_2;
         break;

      case GESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);
         GESM_StpIIFtState = GESM_SFT_STATE_3;
         break;

      case GESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         //(void)GetTaskState(TASK_REINIT_FT, &LocalTaskState);
         //if (LocalTaskState == SUSPENDED)
         GESM_bCallAppliOn = 1;
         GESM_StpIIFtState = GESM_SFT_STATE_15;
         break;

      case GESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         GESM_StpIIFtState = GESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM OPERATIONAL State Flow                                  */
/* !Number      : GESM.1.31                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfOp(void)
{
   switch (GESM_EsmMode)
   {
      case GESM_GESM_MODE_NF:
         GESM_vidStfOpNf();
         break;

      case GESM_GESM_MODE_FT:
         GESM_vidStfOpFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM OPERATIONAL State Flow NF                               */
/* !Number      : GESM.1.32                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfOpNf(void)
{
   switch (GESM_OpNfState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (GESMSRV_bGetCmdReq(GESM_CMD_PWM_OFF) != 0)
         {
            GESM_OpNfState = GESM_SFT_STATE_3;
         }
         else
         {
            if (GESMSRV_bGetCmdReq(GESM_CMD_PWM_HARD) != 0)
            {
               GESM_OpNfState = GESM_SFT_STATE_4;
            }
            else
            {
               if (GESMSRV_bGetCmdReq(GESM_CMD_FT_START) != 0)
               {
/* -------------------------------------------------------------------------- */
/* -         : FT mode                                                        */
/* -------------------------------------------------------------------------- */
                  GESM_EsmMode = GESM_GESM_MODE_FT;
                  GESM_OpNfState = GESM_SFT_STATE_14;
               }
               else
               {
                  if (GESMSRV_bGetCmdReq(GESM_CMD_SW_SHUTDOWN) != 0)
                  {
                     GESM_bPwrLNfClrFltFinsh = FALSE;
                     GESM_OpNfState = GESM_SFT_STATE_15;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_PWM_OFF) != 0)
         {
            if (GCCU6_u8GetPwmState() == GVSISRV_SIGNAL_MODE_REQ_OFF)
            {
               GESMSRV_vidSetCmdRes(GESM_CMD_PWM_OFF);
            }
         }
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_PWM_HARD) != 0)
         {
            if (GCCU6_u8GetPwmState() == GVSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               GESMSRV_vidSetCmdRes(GESM_CMD_PWM_HARD);
            }
         }
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_FT_START) != 0)
         {
            GESMSRV_vidSetCmdRes(GESM_CMD_FT_START);
         }
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_SW_SHUTDOWN) != 0)
         {
            GESMSRV_vidSetCmdRes(GESM_CMD_SW_SHUTDOWN);
         }
         break;

      case GESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);
         GESM_OpNfState = GESM_SFT_STATE_1;
         break;

      case GESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_PWM_HARD);
         GESM_OpNfState = GESM_SFT_STATE_1;
         break;

      case GESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      case GESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = POWERLATCH_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         GESM_OpNfState = GESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM OPERATIONAL State Flow FT                               */
/* !Number      : GESM.1.33                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfOpFt(void)
{
   switch (GESM_OpFtState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (GESMSRV_bGetCmdReq(GESM_CMD_PWM_DIRECT) != 0)
         {
            GESM_OpFtState = GESM_SFT_STATE_2;
         }
         else
         {
            if (GESMSRV_bGetCmdReq(GESM_CMD_PWM_OFF) != 0)
            {
               GESM_OpFtState = GESM_SFT_STATE_3;
            }
            else
            {
               if (GESMSRV_bGetCmdReq(GESM_CMD_PWM_HARD) != 0)
               {
                  GESM_OpFtState = GESM_SFT_STATE_4;
               }
               else
               {
                  if (GESMSRV_bGetCmdReq(GESM_CMD_FT_SHUTDOWN) != 0)
                  {
                     GESM_OpFtState = GESM_SFT_STATE_13;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_PWM_DIRECT) != 0)
         {
            if (GCCU6_u8GetPwmState() == GVSISRV_SIGNAL_MODE_REQ_PWM_DIRECT)
            {
               GESMSRV_vidSetCmdRes(GESM_CMD_PWM_DIRECT);
            }
         }
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_PWM_OFF) != 0)
         {
            if (GCCU6_u8GetPwmState() == GVSISRV_SIGNAL_MODE_REQ_OFF)
            {
               GESMSRV_vidSetCmdRes(GESM_CMD_PWM_OFF);
            }
         }
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_PWM_HARD) != 0)
         {
            if (GCCU6_u8GetPwmState() == GVSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               GESMSRV_vidSetCmdRes(GESM_CMD_PWM_HARD);
            }
         }
         if (GESMSRV_bGetCmdReqNm1(GESM_CMD_FT_SHUTDOWN) != 0)
         {
            GESMSRV_vidSetCmdRes(GESM_CMD_FT_SHUTDOWN);
         }
         break;

      case GESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = PWM_DIRECT                                   */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_PWM_DIRECT);
         GESM_OpFtState = GESM_SFT_STATE_1;
         break;

      case GESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);
         GESM_OpFtState = GESM_SFT_STATE_1;
         break;

      case GESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_PWM_HARD);
         GESM_OpFtState = GESM_SFT_STATE_1;
         break;

      case GESM_SFT_STATE_13:
/* -------------------------------------------------------------------------- */
/* - STATE_13: Application Shutdown                                           */
/* -------------------------------------------------------------------------- */
         GESM_vidStfPwrLFt();
         break;

      default:
         GESM_OpFtState = GESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM POWER LATCH State Flow                                  */
/* !Number      : GESM.1.41                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfPwrL(void)
{
   switch (GESM_EsmMode)
   {
      case GESM_GESM_MODE_NF:
         GESM_vidStfPwrLNf();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM POWER LATCH State Flow NF                               */
/* !Number      : GESM.1.42                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GESM_vidStfPwrLNf(void)
{
   switch (GESM_PwrLNfState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -         : ActivateTask(TASK_POWER_DOWN)                                  */
/* -------------------------------------------------------------------------- */
         GESM_bCallAppliOn = 0;
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);
         /* !Comment: If no NM required, add POWER_DOWN task activate here. --Daniel */

         GESM_PwrLNfState = GESM_SFT_STATE_2;
         /* TODO: GESM must be simplized */
         break;

      case GESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : Wait BSW end operations                                        */
/* -------------------------------------------------------------------------- */
         break;

      case GESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = STARTUP_II_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      case GESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : GESM_EcuState = POWER_OFF_MODE                                 */
/* -------------------------------------------------------------------------- */         
         break;

      default:
         GESM_PwrLNfState = GESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : GESM POWER LATCH State Flow FT                              */
/* !Number      : GESM.1.43                                                   */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void GESM_vidStfPwrLFt(void)
{
   switch (GESM_PwrLFtState)
   {
      case GESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         GESM_bCallAppliOn = 0;
         GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);
         GESM_PwrLFtState = GESM_SFT_STATE_2;
         break;

      case GESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : GEsm mode = NF                                                  */
/* -------------------------------------------------------------------------- */
         GESM_EsmMode = GESM_GESM_MODE_NF;
         GESM_PwrLFtState = GESM_SFT_STATE_15;
         break;

      case GESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : GESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         GESM_PwrLFtState = GESM_SFT_STATE_1;
         break;
   }
}

#define GESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
