/******************************************************************************/
/*                                                                            */
/* !Layer          : BSW                                                      */
/*                                                                            */
/* !Component      : ESM                                                      */
/*                                                                            */
/* !Module         : ESM                                                      */
/* !Description    : ECU State Manager (additional functions)                 */
/*                                                                            */
/* !File           : ESM_1.C                                                  */
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
/* ESM.1.1  / ESM_vidInit                                                     */
/* ESM.1.2  / ESM_vidInitNf                                                   */
/* ESM.1.3  / ESM_vidInitFt                                                   */
/* ESM.1.11 / ESM_vidStfStpI                                                  */
/* ESM.1.21 / ESM_vidStfStpII                                                 */
/* ESM.1.22 / ESM_vidStfStpIINf                                               */
/* ESM.1.23 / ESM_vidStfStpIIFt                                               */
/* ESM.1.31 / ESM_vidStfOp                                                    */
/* ESM.1.32 / ESM_vidStfOpNf                                                  */
/* ESM.1.33 / ESM_vidStfOpFt                                                  */
/* ESM.1.41 / ESM_vidStfPwrL                                                  */
/* ESM.1.43 / ESM_vidStfPwrLNf                                                */
/* ESM.1.43 / ESM_vidStfPwrLFt                                                */
/******************************************************************************/
/* SVN Information                                                            */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::                     $*/
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
#include "EnhancedResetLogger.h"

#include "ESM.h"
#include "ESM_L.h"
#include "esmsrv.h"
#include "STFSRV.h"
#include "STFSRV_L.h"
#include "resbsl.h"

#include "SBC.h"
#include "CCU6.h"
#include "iohal.h"
#include "MutexDef.h"

extern Std_ReturnType CanTrcv_GetOpMode_TJA1145( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
extern void BswM_Dcm_CommunicationMode_CurrentState(uint8 Network, uint8 RequestedMode);
extern void MAIN_vidGetMsgOffDelayT_ms(uint16 * u16DelayMs);


#define ESM_MS_TO_PERIOD_NO(u16DelayT)   ((u16DelayT + 1) / 2)

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define ESM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : ESM initialisation                                          */
/* !Number      : ESM.1.1                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidInit(void)
{
   ESM_StpIState     = ESM_SFT_STATE_1;

   ESM_StpIINfState  = ESM_SFT_STATE_1;
   ESM_StpIIFtState  = ESM_SFT_STATE_1;

   ESM_OpNfState     = ESM_SFT_STATE_1;
   ESM_OpFtState     = ESM_SFT_STATE_1;

   ESM_PwrLNfState   = ESM_SFT_STATE_1;
   ESM_PwrLFtState   = ESM_SFT_STATE_1;

   ESM_u16CmdReq     = 0;
   ESM_u16CmdReqNm1  = 0;
   ESM_u16CmdRes     = 0;

   ESM_EsmMode              = ESM_ESM_MODE_NF;
   ESM_bCallAppliOn         = FALSE;
   ESM_bPwrLNfClrFltFinsh = FALSE;
   ESM_bPwrDnReadyFlg   = FALSE;
   ESM_u8PwrLNfStep    = 0;
   ESM_u8PwrOffTim = 0;
   ESM_u16MsgOffDelay = 0;
   ESM_bMcuEnaReq = FALSE;
   ESM_bAfterrunReq = FALSE;
   ESM_bAfterrunFin = FALSE;
   ESM_u8RestartDelayCnt = 0;
   ESM_u16OpDelayTime = 0;
   ESM_u16OpTimeout = 0;
   
   ESMSRV_vidVSIInit();
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II NF (No Functionnal mode) initialisation          */
/* !Number      : ESM.1.2                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidInitNf(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !Description : Startup II FT (Functionnal Traction mode) initialisation    */
/* !Number      : ESM.1.3                                                     */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidInitFt(void)
{
   //ActivateTask(TASK_REINIT_FT);
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM START UP I State Flow                                   */
/* !Number      : ESM.1.11                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfStpI(void)
{
   switch (ESM_StpIState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Wait ESM_CMD_SW_START                                          */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (ESMSRV_bGetCmdReq(ESM_CMD_SW_START) != 0)
         {
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
            ESMSRV_vidSetCmdRes(ESM_CMD_SW_START);
            ESM_StpIState = ESM_SFT_STATE_15;
         }
         break;

      case ESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         ESM_StpIState = ESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM START UP II State Flow                                  */
/* !Number      : ESM.1.21                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfStpII(void)
{
   switch (ESM_EsmMode)
   {
      case ESM_ESM_MODE_NF:
         ESM_vidStfStpIINf();
         break;

      case ESM_ESM_MODE_FT:
         ESM_vidStfStpIIFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM START UP II State Flow NF                               */
/* !Number      : ESM.1.22                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfStpIINf(void)
{
   switch (ESM_StpIINfState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL1                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : Clear Trans States NF                                          */
/* -         : Relay open Init                                                */
/* -         : Init Nf mode                                                   */
/* -------------------------------------------------------------------------- */
         IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN(DIO_HAL_ON);


         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_INIT_CAL1);
         //RESBSL_vidConfig((uint16)((VSISRV_GetSignalTxPwmFreq()) / 2));
         RESBSL_vidConfig((uint16)((2000) / 2));

         ESM_vidInitNf();
         ESM_StpIINfState = ESM_SFT_STATE_2;
         break;

      case ESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -         : Relay open                                                     */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);
         ESM_StpIINfState = ESM_SFT_STATE_3;
         break;

      case ESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         ESM_bCallAppliOn = 1;
         ESM_StpIINfState = ESM_SFT_STATE_15;
         break;

      case ESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         ESM_StpIINfState = ESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM START UP II State Flow FT                               */
/* !Number      : ESM.1.23                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfStpIIFt(void)
{
   //TaskStateType LocalTaskState;

   switch (ESM_StpIIFtState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Power down off                                                 */
/* -         : FPGA VSI : Download VSI_CAL2                                   */
/* -         : RES      : Reconfig. RES excitation to PWM Freq. value         */
/* -         : FPGA VSI : Config. Operation = MCU                             */
/* -         : Init FT mode                                                   */
/* -------------------------------------------------------------------------- */
         IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN(DIO_HAL_ON);

         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_INIT_CAL2);
         //RESBSL_vidConfig((uint16)((VSISRV_GetSignalTxPwmFreq()) / 2));
         RESBSL_vidConfig((uint16)((2000) / 2));

         ESM_vidInitFt();
         ESM_StpIIFtState = ESM_SFT_STATE_2;
         break;

      case ESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);
         ESM_StpIIFtState = ESM_SFT_STATE_3;
         break;

      case ESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : Call appli On                                                  */
/* -------------------------------------------------------------------------- */
         //(void)GetTaskState(TASK_REINIT_FT, &LocalTaskState);
         //if (LocalTaskState == SUSPENDED)
         ESM_bCallAppliOn = 1;
         ESM_StpIIFtState = ESM_SFT_STATE_15;
         break;

      case ESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = OPERATIONAL_MODE                                */
/* -------------------------------------------------------------------------- */
         break;

      default:
         ESM_StpIIFtState = ESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM OPERATIONAL State Flow                                  */
/* !Number      : ESM.1.31                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfOp(void)
{
   switch (ESM_EsmMode)
   {
      case ESM_ESM_MODE_NF:
         ESM_vidStfOpNf();
         break;

      case ESM_ESM_MODE_FT:
         ESM_vidStfOpFt();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM OPERATIONAL State Flow NF                               */
/* !Number      : ESM.1.32                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfOpNf(void)
{
   switch (ESM_OpNfState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (ESMSRV_bGetCmdReq(ESM_CMD_PWM_OFF) != 0)
         {
            ESM_OpNfState = ESM_SFT_STATE_3;
         }
         else
         {
            if (ESMSRV_bGetCmdReq(ESM_CMD_PWM_HARD) != 0)
            {
               ESM_OpNfState = ESM_SFT_STATE_4;
            }
            else
            {
               if (ESMSRV_bGetCmdReq(ESM_CMD_FT_START) != 0)
               {
/* -------------------------------------------------------------------------- */
/* -         : FT mode                                                        */
/* -------------------------------------------------------------------------- */
                  ESM_EsmMode = ESM_ESM_MODE_FT;
                  ESM_OpNfState = ESM_SFT_STATE_14;
               }
               else
               {
                  if (ESMSRV_bGetCmdReq(ESM_CMD_SW_SHUTDOWN) != 0)
                  {
                     ESM_bPwrLNfClrFltFinsh = FALSE;
                     ESM_OpNfState = ESM_SFT_STATE_15;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_PWM_OFF) != 0)
         {
            if (CCU6_u8GetPwmState() == VSISRV_SIGNAL_MODE_REQ_OFF)
            {
               ESMSRV_vidSetCmdRes(ESM_CMD_PWM_OFF);
            }
         }
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_PWM_HARD) != 0)
         {
            if (CCU6_u8GetPwmState() == VSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               ESMSRV_vidSetCmdRes(ESM_CMD_PWM_HARD);
            }
         }
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_FT_START) != 0)
         {
            ESMSRV_vidSetCmdRes(ESM_CMD_FT_START);
         }
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_SW_SHUTDOWN) != 0)
         {
            ESMSRV_vidSetCmdRes(ESM_CMD_SW_SHUTDOWN);
         }
         break;

      case ESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);
         ESM_OpNfState = ESM_SFT_STATE_1;
         break;

      case ESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_PWM_HARD);
         ESM_OpNfState = ESM_SFT_STATE_1;
         break;

      case ESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      case ESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = POWERLATCH_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         ESM_OpNfState = ESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM OPERATIONAL State Flow FT                               */
/* !Number      : ESM.1.33                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfOpFt(void)
{
   switch (ESM_OpFtState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : IDLE STEP (Wait)                                               */
/* -------------------------------------------------------------------------- */
/* ---------------------------------- */
/* Cmd Req                            */
/* ---------------------------------- */
         if (ESMSRV_bGetCmdReq(ESM_CMD_PWM_DIRECT) != 0)
         {
            ESM_OpFtState = ESM_SFT_STATE_2;
         }
         else
         {
            if (ESMSRV_bGetCmdReq(ESM_CMD_PWM_OFF) != 0)
            {
               ESM_OpFtState = ESM_SFT_STATE_3;
            }
            else
            {
               if (ESMSRV_bGetCmdReq(ESM_CMD_PWM_HARD) != 0)
               {
                  ESM_OpFtState = ESM_SFT_STATE_4;
               }
               else
               {
                  if (ESMSRV_bGetCmdReq(ESM_CMD_FT_SHUTDOWN) != 0)
                  {
                     ESM_OpFtState = ESM_SFT_STATE_13;
                  }
               }
            }
         }
/* ---------------------------------- */
/* Cmd Res                            */
/* ---------------------------------- */
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_PWM_DIRECT) != 0)
         {
            if (CCU6_u8GetPwmState() == VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT)
            {
               ESMSRV_vidSetCmdRes(ESM_CMD_PWM_DIRECT);
            }
         }
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_PWM_OFF) != 0)
         {
            if (CCU6_u8GetPwmState() == VSISRV_SIGNAL_MODE_REQ_OFF)
            {
               ESMSRV_vidSetCmdRes(ESM_CMD_PWM_OFF);
            }
         }
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_PWM_HARD) != 0)
         {
            if (CCU6_u8GetPwmState() == VSISRV_SIGNAL_MODE_REQ_PWM_HARD)
            {
               ESMSRV_vidSetCmdRes(ESM_CMD_PWM_HARD);
            }
         }
         if (ESMSRV_bGetCmdReqNm1(ESM_CMD_FT_SHUTDOWN) != 0)
         {
            ESMSRV_vidSetCmdRes(ESM_CMD_FT_SHUTDOWN);
         }
         break;

      case ESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : FPGA VSI : Mode = PWM_DIRECT                                   */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_PWM_DIRECT);
         ESM_OpFtState = ESM_SFT_STATE_1;
         break;

      case ESM_SFT_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STATE_3 : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);
         ESM_OpFtState = ESM_SFT_STATE_1;
         break;

      case ESM_SFT_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STATE_4 : FPGA VSI : Mode = PWM_HARD                                     */
/* -------------------------------------------------------------------------- */
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_PWM_HARD);
         ESM_OpFtState = ESM_SFT_STATE_1;
         break;

      case ESM_SFT_STATE_13:
/* -------------------------------------------------------------------------- */
/* - STATE_13: Application Shutdown                                           */
/* -------------------------------------------------------------------------- */
         ESM_vidStfPwrLFt();
         break;

      default:
         ESM_OpFtState = ESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM POWER LATCH State Flow                                  */
/* !Number      : ESM.1.41                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfPwrL(void)
{
   switch (ESM_EsmMode)
   {
      case ESM_ESM_MODE_NF:
         ESM_vidStfPwrLNf();
         break;

      default:
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM POWER LATCH State Flow NF                               */
/* !Number      : ESM.1.42                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfPwrLNf(void)
{
   boolean bLocKL15Sts;
   uint16 u16KeyOn;
   uint16 u16ChgOn;
   boolean bLocBswEndOp = FALSE;
   uint16  u16PwrDownDelayT = 0;

   NvM_Rb_StatusType status_NvM;
	MemIf_StatusType stMemIf_en;
   CanTrcv_TrcvModeType CurMode = CANTRCV_TRCVMODE_NORMAL;
   // bLocKL15Sts = (boolean)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   u16KeyOn  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   u16ChgOn  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_CHG_ON();
   bLocKL15Sts = ((u16KeyOn == 1U)  || (u16ChgOn == 1U));

   switch (ESM_PwrLNfState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -         : ActivateTask(TASK_POWER_DOWN)                                  */
/* -------------------------------------------------------------------------- */
         ESM_bCallAppliOn = 0;
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);

         /* !Comment: If no NM required, add POWER_DOWN task activate here. --Daniel */
         if(Mutex_bGrabSpecifiedLock(MUTEX_ESM_AND_DFLASH_INDEX, MUTEX_GET_LOCK) == TRUE)
         {
            ERL_MarkNormalShutdown();
            MAIN_vidUpdateSystemRunTime();
            /*Comment!:Machine running time Set Ram Block Status to Prevent loop calls 20240418 By LiZhaoPo*/
            NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NVM_BlockRunTime, TRUE);
            Dem_Shutdown();
            NvM_WriteAll();
            ESM_PwrLNfState = ESM_SFT_STATE_2;
            ESM_u8PwrLNfStep = 0;
            ESM_u16MsgOffDelay = 0;
         }
         break;

      case ESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : Wait BSW end operations                                        */
/* -------------------------------------------------------------------------- */
         if (0 == ESM_u8PwrLNfStep)
         {
            NvM_Rb_GetStatus(&status_NvM);
            stMemIf_en = MemIf_Rb_GetStatus();
            if((status_NvM == NVM_RB_STATUS_IDLE ) && (stMemIf_en == MEMIF_IDLE))
            {
               bLocBswEndOp = TRUE;
            }
            else
            {
               bLocBswEndOp = FALSE;
            }

            if((FALSE != bLocBswEndOp)
            || ((ESM_u16PowerLatchTempo < 10) && (ESM_u16PowerLatchTempo > 0)))
            {
               ESM_u8PwrLNfStep = 1;
            }
         }
         else if (1 == ESM_u8PwrLNfStep)
         {
            ESM_bPwrDnReadyFlg = TRUE;
            
            MAIN_vidGetMsgOffDelayT_ms(&u16PwrDownDelayT);

            if(ESM_u16MsgOffDelay < ESM_MS_TO_PERIOD_NO(u16PwrDownDelayT))
            {
               ESM_u16MsgOffDelay++;
            }
            else
            {
               ESM_u16MsgOffDelay = 0;
               ESM_u8PwrLNfStep = 2;

               //Since�the:control:signal-of.the
               //when the�Mcu�enters�sleepmode,�this�signal�will.be�pulled down,�which.may�cause.
               //Asc-related faults to�be,reported..To avoid false alarms in,such situations, therefore,.
               //the.detection of.faults is�disabled�before pulling�down the�Pw DowN�signal..
               //Requester:.Tu�sheng,�Hu�chengkun.2026/2/6
               FAIL_vidDisableEmbFltCheck();
               IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN(DIO_HAL_OFF);
               BswM_Dcm_CommunicationMode_CurrentState(0, 0x01);    /* Comment: Disable Tx Enable Rx */
            }
         }
         else
         {
            if (ESM_u16MsgOffDelay < 10)
            {
               ESM_u16MsgOffDelay++;
            }
            else
            {
               if(bLocKL15Sts)
               {
                  ESM_PwrLNfState = ESM_SFT_STATE_15;
               }
               else
               {
                  if(ESM_u16OpDelayTime < 5)
                  {
                     ESM_u16OpDelayTime++;
                  }
                  else
                  {
                     ESM_u16OpDelayTime = 0;
                     CanTrcv_SetOpMode(SpiConf_SpiChannel_CAN_Trcv_Tja1145, CANTRCV_TRCVMODE_SLEEP);
                     CanTrcv_GetOpMode_TJA1145(SpiConf_SpiChannel_CAN_Trcv_Tja1145, &CurMode);
                     if((CurMode == CANTRCV_TRCVMODE_NORMAL) || (CurMode == CANTRCV_TRCVMODE_STANDBY))
                     {
                        if(ESM_u16OpTimeout < 5)
                        {
                           ESM_u16OpTimeout++;
                        }
                        else
                        {
                           if(TRUE == SBC_vidSetStdbyModCmd(TRUE))
                           {
                              ESM_PwrLNfState = ESM_SFT_STATE_15;
                           }
                        }
                     }
                     else
                     {
                        if(TRUE == SBC_vidSetStdbyModCmd(TRUE))
                        {
                           ESM_PwrLNfState = ESM_SFT_STATE_15;
                        }
                     }
                  }
               }
            }
         }
         break;

      case ESM_SFT_STATE_14:
/* -------------------------------------------------------------------------- */
/* - STATE_14: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      case ESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : ESM_EcuState = POWER_OFF_MODE                                  */
/* -------------------------------------------------------------------------- */
         if (ESM_u8PwrOffTim < 200)
         {
            ESM_u8PwrOffTim++;
         }
         else
         {
            /* !Comment: KL15 re-connect ON. ESM_bMcuEnaReq */
            if (bLocKL15Sts)
            {
               if(ESM_u8RestartDelayCnt < ESM_u8RestartDelayCntC)
               {
                  ESM_u8RestartDelayCnt++;
               }
               else
               {
                  ESM_u8PwrOffTim = 0;
                  ESM_u8RestartDelayCnt = 0;
                  if(0 == MCU_u8GetResetCmd())
                  {
                     MCU_vSetResetCmd();
                  }
               }
            }
            else
            {
               /* Normal power off */
            }
         }
         
         break;

      default:
         ESM_PwrLNfState = ESM_SFT_STATE_1;
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : ESM POWER LATCH State Flow FT                               */
/* !Number      : ESM.1.43                                                    */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void ESM_vidStfPwrLFt(void)
{
   switch (ESM_PwrLFtState)
   {
      case ESM_SFT_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STATE_1 : Call appli Off                                                 */
/* -         : FPGA VSI : Mode = OFF                                          */
/* -------------------------------------------------------------------------- */
         ESM_bCallAppliOn = 0;
         CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);
         ESM_PwrLFtState = ESM_SFT_STATE_2;
         break;

      case ESM_SFT_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STATE_2 : Esm mode = NF                                                  */
/* -------------------------------------------------------------------------- */
         ESM_EsmMode = ESM_ESM_MODE_NF;
         ESM_PwrLFtState = ESM_SFT_STATE_15;
         break;

      case ESM_SFT_STATE_15:
/* -------------------------------------------------------------------------- */
/* - STATE_15: END OPERATION (reserved state)                                 */
/* -         : Switch case exit                                               */
/* -         : ESM_EcuState = STARTUP_II_MODE                                 */
/* -------------------------------------------------------------------------- */
         break;

      default:
         ESM_PwrLFtState = ESM_SFT_STATE_1;
         break;
   }
}

#define ESM_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
