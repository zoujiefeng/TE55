/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : Gateway BSW - Application                               */
/*                                                                            */
/* !File            : MAIN_AcuTsk.c                                           */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/******************************************************************************/
/* 1.1  / MAIN_AcuTaskInit                                                    */
/* 2    / MAIN_vidAcuTask1ms                                                  */
/* 3    / MAIN_vidAcuTask2ms                                                  */
/* 4    / MAIN_vidAcuTask5ms                                                  */
/* 5    / MAIN_vidAcuTask10ms                                                 */
/* 6    / MAIN_vidAcuTask100ms                                                */
/* 7    / MAIN_vidAcuTask200ms                                                */
/* 8    / MAIN_vidAcuPwmTreatment                                             */
/* 9    / MAIN_0_vidBldcHallEvenTreat                                         */
/******************************************************************************/
/******************************************************************************/

/*******************************************************************************
 ****  User config
 ******************************************************************************/
#include "MAIN_Cfg.h"

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_AcuTsk.h"
#include "MAIN_ECPCfg_ACM.h"
#include "MAIN_RollErrCode.h"
#include "_MainModule.h"
#include "MAIN_FFUpdate.h"
#include "BSW.h"
#include "IOHAL.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "MAIN_AcuL.h"
#include "GMAIN_L.h"
#include "FAULT_Api.h"
#include "IfxStm_reg.h"
#include "MATHSRV_E.h"
#include "aesmsrv.h"
#include "PortMux.h"
#include "FAIL.h"
#include "MAIN_ACMErrProtect.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
   #include "SWC_FT.h"
   #include "SWC_FS.h"
#endif

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
#ifdef _PLATFORM_GEN_CODE_EMB_
static void MAIN_vidCanInterface(void);
static void MAIN_vidAscRecvCond(void);
#endif
static inline void MAIN_vidCheckIGBT(void);
static void MAIN_vidFaultHandler(void);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* !Comment: Get STM1 timer counter value, STM1 frequency is 100MHZ. */
#define SYS_u32GET_STM1_TIM0()               ((uint32)MODULE_STM1.TIM0.U)
#define SYS_SEC_TO_CLK_GAIN                  ((float)10000000.0f)
#define SYS_T12_CLK_PERD                     ((float)0.00000004f)
/* !Comment: T12 clock number per second. */
#define SYS_T12_CLK_NUM_1S                   (25000000.0f)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint32 MAIN_AcuTreatmentStartTime;
static uint32 MAIN_AcuTreatmentLastStartTime;
static uint32 MAIN_AcuTreatmentStopTime;
static uint32 MAIN_AcuTreatmentTotalTime;
static uint32 MAIN_AcuTreatmentPeriodTime;

#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
volatile float32 AMAIN_f32VsiPwmPeriod  = 0.0f;

static boolean AMAIN_bSpeedReadyFlg     = FALSE;
static float32 AMAIN_f32VadcBhv         = 0.0f;
static uint32 AMAIN_u32TestVar2         = 0;
static uint8 AMAIN_MSGu8Bcm_IgnKeyState = 0;
static uint16 AMAIN_u16PWMPeriodVal     = 4166;
#endif

static uint8   AMAIN_u8IgbtLowFltCnt     = 0;
static uint8   AMAIN_u8IgbtHighFltCnt    = 0;
static boolean AMAIN_bIgbtLowIsFlt       = FALSE;
static boolean AMAIN_bIgbtHighIsFlt      = FALSE;
static boolean AMAIN_bBswReadySts        = FALSE;
static boolean AMAIN_bESMStarted         = FALSE;
static boolean AMAIN_bSoftOvBhvFlg       = FALSE;
static boolean AMAIN_bSoftOvCurrPhsUFlg  = FALSE;
static boolean AMAIN_bSoftOvCurrPhsVFlg  = FALSE;
static boolean AMAIN_bSoftOvCurrPhsWFlg  = FALSE;
static boolean AMAIN_bVSIStarted         = FALSE;
static boolean AMAIN_ESMGo2StartupIEvent = FALSE;
static boolean AMAIN_bProgConditionOk    = FALSE;
static float32 AMAIN_f32PWMDutyUPhys     = 0.0f;
static float32 AMAIN_f32PWMDutyVPhys     = 0.0f;
static float32 AMAIN_f32PWMDutyWPhys     = 0.0f;
static uint16  AMAIN_u16Cnt1             = 0;
static uint16  AMAIN_u16Cnt2             = 0;
static uint16  AMAIN_u16Cnt5             = 0;
static uint16  AMAIN_u16Cnt10            = 0;
static uint16  AMAIN_u16Cnt100           = 0;
static uint16  AMAIN_u16Cnt200           = 0;
static uint16  AMAIN_u16VadcPhaseCurU    = 0;
static uint16  AMAIN_u16VadcPhaseCurV    = 0;
static uint16  AMAIN_u16VadcPhaseCurW    = 0;
static uint32  AMAIN_startTime           = 0;
static uint32  AMAIN_EndTime             = 0;
static uint32  AMAIN_TotalTime           = 0;

uint8 AMAIN_u8DEV_Fault[AMAIN_FaultCodeNum_COLS] = {0};

#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "CDD_TPPC.h"

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
boolean MAIN_bGetAcuSoftOvcFlag_U(void)
{
   return AMAIN_bSoftOvCurrPhsUFlg;
}

boolean MAIN_bGetAcuSoftOvcFlag_V(void)
{
   return AMAIN_bSoftOvCurrPhsVFlg;
}

boolean MAIN_bGetAcuSoftOvcFlag_W(void)
{
   return AMAIN_bSoftOvCurrPhsWFlg;
}

boolean MAIN_bGetAcuSoftOvBhvFlag(void)
{
   return AMAIN_bSoftOvBhvFlg;
}

boolean MAIN_bGetAcuIgbtLSFaultFlag(void)
{
   return AMAIN_bIgbtLowIsFlt;
}

boolean MAIN_bGetAcuIgbtHSFaultFlag(void)
{
   return AMAIN_bIgbtHighIsFlt;
}

void MAIN_vidClrAcuFaultFlag(void)
{
   AMAIN_u8IgbtLowFltCnt     = 0;
   AMAIN_u8IgbtHighFltCnt    = 0;
   AMAIN_bSoftOvCurrPhsUFlg  = FALSE;
   AMAIN_bSoftOvCurrPhsVFlg  = FALSE;
   AMAIN_bSoftOvCurrPhsWFlg  = FALSE;
   AMAIN_bSoftOvBhvFlg       = FALSE;
   AMAIN_bIgbtLowIsFlt       = FALSE;
   AMAIN_bIgbtHighIsFlt      = FALSE;

   MAIN_bSetACMASCEnableState(FALSE);
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_INIT                                                   */
/* !Trigger     : Init                                                        */
/* !Description : This task is launched at the init of the OS                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_AcuTaskInit(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   AMAIN_f32VsiPwmPeriod      = 0.0f;

   AMAIN_bSpeedReadyFlg       = FALSE;
   AMAIN_f32VadcBhv           = 0.0f;
   AMAIN_u32TestVar2          = 0;
   AMAIN_MSGu8Bcm_IgnKeyState = 0;
   AMAIN_u16PWMPeriodVal      = 4166;
#endif

   AMAIN_u8IgbtLowFltCnt     = 0;
   AMAIN_u8IgbtHighFltCnt    = 0;
   AMAIN_bIgbtLowIsFlt       = FALSE;
   AMAIN_bIgbtHighIsFlt      = FALSE;
   AMAIN_bBswReadySts        = FALSE;
   AMAIN_bESMStarted         = FALSE;
   AMAIN_bSoftOvBhvFlg       = FALSE;
   AMAIN_bSoftOvCurrPhsUFlg  = FALSE;
   AMAIN_bSoftOvCurrPhsVFlg  = FALSE;
   AMAIN_bSoftOvCurrPhsWFlg  = FALSE;
   AMAIN_bVSIStarted         = FALSE;
   AMAIN_ESMGo2StartupIEvent = FALSE;
   AMAIN_bProgConditionOk    = FALSE;
   AMAIN_f32PWMDutyUPhys     = 0.0f;
   AMAIN_f32PWMDutyVPhys     = 0.0f;
   AMAIN_f32PWMDutyWPhys     = 0.0f;
   AMAIN_u16Cnt1             = 0;
   AMAIN_u16Cnt2             = 0;
   AMAIN_u16Cnt5             = 0;
   AMAIN_u16Cnt10            = 0;
   AMAIN_u16Cnt100           = 0;
   AMAIN_u16Cnt200           = 0;
   AMAIN_u16VadcPhaseCurU    = 0;
   AMAIN_u16VadcPhaseCurV    = 0;
   AMAIN_u16VadcPhaseCurW    = 0;
   AMAIN_startTime           = 0;
   AMAIN_EndTime             = 0;
   AMAIN_TotalTime           = 0;
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_1MS                                               */
/* !Trigger     : Time (1ms)                                                  */
/* !Description : This task has a 1ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE)  MAIN_vidAcuTask1ms(void)
{
   AMAIN_u16Cnt1++;

   CDD_TPPC_vidACMMotorStateMng();

   TPPC_vidACMASCStateMng();

/*------------------------------------*/
   if (AMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         AFS_UbatLV_U16                    = PMux_u16GetInputVal(ePMUX_Bat_VolSample);
         AFS_HwOverVoltFlg_B               = AMAIN_bSoftOvBhvFlg;
         AFS_MotorWindingTemp1_U16         = 2290;
         AFS_MotorWindingTemp1L_U16        = 2045;
         AFS_MotorWindingTemp2_U16         = 2045;
         AFS_MotorWindingTemp2L_U16        = 2045;
         AFS_UbatHV2_F32                   = AFS_UbatHV_F32;
         AFS_1ms();

         AFT_UbatHV_F32                    = AFSEVBHV_VoltageFild;
         AFT_I0dqTgt3_F32[0]               = AFSTCGTC_I0dqTgt[0];
         AFT_I0dqTgt3_F32[1]               = AFSTCGTC_I0dqTgt[1];
         AFT_I0dqTgt3_F32[2]               = AFSTCGTC_I0dqTgt[2];
         AFT_U0dqTgt3_F32[0]               = AFSTCGTC_U0dqTgt[0];
         AFT_U0dqTgt3_F32[1]               = AFSTCGTC_U0dqTgt[1];
         AFT_U0dqTgt3_F32[2]               = AFSTCGTC_U0dqTgt[2];
         AFT_ScsStartCmd_B                 = AFSTCGTC_ScsStartCmd;
         AFT_1ms();

         AMAIN_bSpeedReadyFlg = AMAIN_bSpeedReadyMng();
         if (FALSE != AMAIN_bSpeedReadyFlg)
         {
            /* !Comment: Speed over 1500 rpm. */
            CDD_TPPC_vidSetACMMotorSpdRdyFlg(TRUE);
         }
         else
         {
            /* !Comment: Speed under 1500 rpm. */
            CDD_TPPC_vidSetACMMotorSpdRdyFlg(FALSE);
         }
      #endif
   }

   /* !Comment: ESM services requests. */
   if (AMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         AESMSRV_vidSetCmdReq(AESM_CMD_FT_START,           AFSSMACS_CmdFtStartReq);
         AESMSRV_vidSetCmdReq(AESM_CMD_FT_SHUTDOWN,        AFTSMACS_CmdAftShutDownRes);
         AESMSRV_vidSetCmdReq(AESM_CMD_SW_SHUTDOWN,        AFSSMACS_CmdSwShutDownReq);
         AESMSRV_vidSetCmdReq(AESM_CMD_PWM_OFF,            AFTSMACS_CmdPwmOffReq);
         AESMSRV_vidSetCmdReq(AESM_CMD_PWM_DIRECT,         AFTSMACS_CmdPwmDirectReq);
      #endif
   }

#ifdef _PLATFORM_GEN_CODE_EMB_
   /*  !Comment: Set Freeze frame of ASW 1ms */
   AMAIN_FFDataUpdate_1ms();
#endif

   AFAIL_vidFailDetection_1ms();
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_2MS                                               */
/* !Trigger     : Time (2ms)                                                  */
/* !Description : This task has a 2ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE)  MAIN_vidAcuTask2ms(void)
{
   AMAIN_u16Cnt2++;

#ifdef _PLATFORM_GEN_CODE_EMB_ 
   if (AMAIN_bVSIStarted)
   {
      AFS_SpdSet_F32                   = AMAIN_f32CanSpeedTgtSetC;
      AFS_BSWReadyStatus_B             = BSW_bGetBswReadySts();
      AFT_BSWReadyStatus_B             = AFS_BSWReadyStatus_B;
      AFS_AFTAclState_U16              = AFTSMACS_AclState;
      AFS_CmdAftShutDownRes_B          = AFTSMACS_CmdAftShutDownRes;
      AFS_CmdAftStartRes_B             = AFTSMACS_CmdAftStartRes;
      AFS_FaultLevel_U16               = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_ACU);
      AFS_KEYON_B                      = ASWNM_bGetStayAwakeReq();
      AFS_VcuMcuEnableReq_U8           = MAIN_MSGu8VCU_DCAC_BPwrEn;
      AFS_ModeReq_U8                   = 0; 
      AFS_OpenAngleState_U8            = AFTCMSCS_OpenAngleState;   
      AFS_EmWorkModCmd_U8              = 1;
      AFT_CmdAftStartReq_B             = AFSSMACS_CmdFtStartReq;
      AFT_CmdAftShutDownReq_B          = AFSSMACS_CmdFtShutDownReq;
      AFT_MecaSpeedRpmTgt_F32          = AFSTCGTC_MecaSpeedRpmTgt;
      AFT_AFTModeReq_U16               = AFSSMACS_FTModeReq;
   
      AFT_CmdPwmOffRes_B               = AESMSRV_bGetCmdRes(AESM_CMD_PWM_OFF);
      AFT_CmdPwmDirectRes_B            = AESMSRV_bGetCmdRes(AESM_CMD_PWM_DIRECT);
      AFT_FaultLevel_U16               = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_ACU);
   
      AFT_2ms();
   }
   else
   {
      ; /* Do nothing until vsi start */
   }
#endif

   /*  !Comment: ESM running. */
   if (AMAIN_VSIBenchOnWriteDataC == 0)
   {
      /*  !Comment: VSI started */
      if (ABSW_u32VSICounterCkreq >= AMAIN_u32VSICntCkreqVSIStartedC)
      {
         /*  !Comment: ESM Cmd Req. */
         if (AMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }
         AMAIN_bVSIStarted = 1;
         /*  !Comment: ESM started */
         if (ABSW_u32VSICounterCkreq >= AMAIN_u32VSICntCkreqESMStartedC) 
         {
            AESMSRV_vidSetCmdReq(AESM_CMD_SW_START,           1);
            AMAIN_bESMStarted = 1;
         }
      }
      ASTFSRV_vidSET_EVENT(AESM, SCHED_5MS);
   }
   else
   {
      /*  !Comment: VSI started */
      if (ABSW_u32VSICounterCkreq >= AMAIN_u32VSICntCkreqVSIStartedC)
      {
         if (AMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }

         AMAIN_bVSIStarted = 1;
      }
   }
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_5MS                                               */
/* !Trigger     : Time (5ms)                                                  */
/* !Description : This task has a 5ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_vidAcuTask5ms(void)
{
   AMAIN_u16Cnt5++;
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_10MS                                              */
/* !Trigger     : Time (10ms)                                                 */
/* !Description : This task has a 10ms period                                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_vidAcuTask10ms(void)
{
   AMAIN_u16Cnt10++;
   AMAIN_bBswReadySts = BSW_bGetBswReadySts();

   if (AMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_         
      /*Forbidden to Active Discharge on GCU */
      AESMSRV_vidSetMcuEnaReq(FALSE);
      MAIN_vidAscRecvCond();

      AFS_DriverBoardTemp_U16          = 2045;
      AFS_CommandBoardTempLV_U16       = 2045;
      AFS_CommandBoardTempLV2_U16      = AFS_CommandBoardTempLV_U16;
      AFS_CoolingTemp_U16              = 2045;
      AFS_MotorWindingDrtGain_F32      = AFTASMTP_WndgDrtGain;
      AFS_MotorMagnetDrtGain_F32       = 1;
      AFS_PowmdlDrtGain_F32            = AFTASETP_PmDrtGain;
      AFS_EstPowmdlDrtGain_F32         = AFTASETP_PmDrtGain; 
      AFS_P5VPort_U16                  = 2047;
      AFS_BatVotValidFlag_B            = FALSE;
      AFS_Ubms_F32                     = 2047;
      AFS_MecaSpeedRpm_F32             = AFTMTSEP_MecaSpeedRpm;
      
      AFS_10ms();
      
      AFT_BhvCheckEna_B                = AFSSMMAM_EVBHV_CheckEnable;
      AFT_PowerModuleTemp_F32          = AFSEVETA_TempIgbt;
      AFT_MotorWindingTemp2_F32[0]     = AFSMTMTA_TempWinding[0];
      AFT_MotorWindingTemp2_F32[1]     = AFSMTMTA_TempWinding[1];      

      AFT_10ms();      
      #endif
   }
   else
   {
      ;/* Do nothing until vsi start */
   }
   
   /* Set Freeze frame of ASW 10ms */
   #ifdef _PLATFORM_GEN_CODE_EMB_
      AMAIN_FFDataUpdate_10ms();
   #endif

   MAIN_vidFaultHandler();
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_100MS                                             */
/* !Trigger     : Time (100ms)                                                */
/* !Description : This task has a 100ms period                                */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidAcuTask100ms(void)
{
   AMAIN_u16Cnt100++;
      
   if (AMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         AFS_DeratingStatus_B  = AFTASDPM_DeratingStatus;
         AFS_Idref_F32         = AFTCMTCS_i0dqTgt3[1];
         AFS_Iqref_F32         = AFTCMTCS_i0dqTgt3[2]; 
      
         AFS_100ms();
         AFT_100ms();

/*Transmit ID_100ms*/
      if(TRUE == MAIN_b800VsersionSelcetEnC)
      {
         if((AFSSMACS_FS_INIT == AFSSMACS_AclState) || (AFSSMACS_FS_STANDBY == AFSSMACS_AclState) || (AFSSMACS_FS_PRECHARGE == AFSSMACS_AclState))
         {
            MAIN_MSGu8DCAC_B_SysSts = 3;
         }
         else if ((AFSSMACS_FS_HIGHVOLT_STANDBY == AFSSMACS_AclState) || (AFSSMACS_FS_START_FT == AFSSMACS_AclState) || (AFSSMACS_FS_READY == AFSSMACS_AclState)
                || (AFSSMACS_FS_SHUTDOWN_FT == AFSSMACS_AclState))     
         {
            MAIN_MSGu8DCAC_B_SysSts = 7;
         }
         else if ((AFSSMACS_FS_OPERATIONAL_FT == AFSSMACS_AclState))
         {
            MAIN_MSGu8DCAC_B_SysSts = 8;
         }

         else if (AFSSMACS_FS_FAILURE == AFSSMACS_AclState)
         {
            MAIN_MSGu8DCAC_B_SysSts = 15;
         }
         else
         {
            MAIN_MSGu8DCAC_B_SysSts = 0;
         }

         if ((AFS_FaultLevel_U16 > 0) && (AFS_FaultLevel_U16 < 4))
         {
            MAIN_MSGu8DCAC_B_ErrSts = 1;
         }
         else if (AFS_FaultLevel_U16 >= 4)
         {
            MAIN_MSGu8DCAC_B_ErrSts = 2;
         }
         else
         {
            MAIN_MSGu8DCAC_B_ErrSts = 0;
         }
      }
      else
      {
         MAIN_MSGu8DCAC_B_SysSts = 0;
         MAIN_MSGu8DCAC_B_ErrSts = 0;
      }
      
      if(TRUE == MAIN_b800VsersionSelcetEnC)
      {
         MAIN_MSGf32DCAC_B_MotTemp    = AFSMTMTA_TempWindingMax;
         MAIN_MSGf32DCAC_B_ECUTemp    = AFSEVETA_TempIgbtLeftFild;
         MAIN_MSGf32DCAC_B_MotSpd     = AFTMTSEP_MecaSpeedRpm;
      }
      else
      {
         MAIN_MSGf32DCAC_B_MotTemp    = 0;
         MAIN_MSGf32DCAC_B_ECUTemp    = 0;
         MAIN_MSGf32DCAC_B_MotSpd     = 0;
      }
      
      #endif
   }
   else
   {
      ;/* Do nothing until vsi start */
   }
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_200MS                                             */
/* !Trigger     : Time (200ms)                                                */
/* !Description : This task has a 200ms period                                */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidAcuTask200ms(void)
{
   AMAIN_u16Cnt200++;

   if (AMAIN_ESMGo2StartupIEvent != 0)
   {
      ASTFSRV_vidSET_EVENT(AESM, GO2_STARTUP_I);
      AMAIN_ESMGo2StartupIEvent = 0;
   }
#ifdef _PLATFORM_GEN_CODE_EMB_
   uint16 * MAIN_au16CalibBuf = MAIN_CAL_pu16GetCalDataBuf(eMAIN_CALIB_IDX_ACM);
   AFT_ExtCurrentGain_U16[0]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_UI_INDEX];
   AFT_ExtCurrentGain_U16[1]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VI_INDEX];
   AFT_ExtCurrentGain_U16[2]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_WI_INDEX];
   AFS_BusVoltageGain_U16     = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VO_INDEX];

/*Transmit ID_200ms*/
if(TRUE == MAIN_b800VsersionSelcetEnC)
{
   MAIN_MSGu16DCAC_B_InVolt        = AFSEVBHV_VoltageFild;
   MAIN_MSGf32DCAC_B_OutVoltRMS    = AFTCMTCS_UdqNorm;
   MAIN_MSGu8DCAC_B_OutCurRMS      = AFTMTLCS_Iu_Rms;
   MAIN_MSGf32DCAC_B_InCur         = AFSEVIBT_EstiIbatHv;
}
else
{
   MAIN_MSGu16DCAC_B_InVolt        = 0;
   MAIN_MSGf32DCAC_B_OutVoltRMS    = 0;
   MAIN_MSGu8DCAC_B_OutCurRMS      = 0;
   MAIN_MSGf32DCAC_B_InCur         = 0;
}

#endif
}

#define  MAIN_START_CODE_FAST_CPU3_SECTION
#include "MAIN_MemMap.h"
/**********************************************************************
 * Function name    :  MAIN_0_vidBldcPwmTreatment
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2022/08/27	     V1.0	    Daniel	    Create
 ***********************************************************************/ 
void MAIN_vidAcuPwmTreatment(void)
{ 
   MAIN_AcuTreatmentStartTime = SYS_u32GET_STM1_TIM0();
   
   MAIN_AcuTreatmentPeriodTime = MAIN_AcuTreatmentStartTime - MAIN_AcuTreatmentLastStartTime;
   MAIN_AcuTreatmentLastStartTime = MAIN_AcuTreatmentStartTime;
   
   ABSW_u32VSICounterCkreq++;
   ABSW_u32VSICounterCkreq++;
#ifdef _PLATFORM_GEN_CODE_EMB_
   AMAIN_f32VsiPwmPeriod     = (float)(AMAIN_u16PWMPeriodVal + 1) * SYS_T12_CLK_PERD;

   AFT_VsiPwmPeriod_F32   = AMAIN_f32VsiPwmPeriod;

   //AFT_PwmZeroMatch_B = GCCU6_bGetZeroMatchFlg();

   if(AFSSMACS_NormalStartFtFlg)
   {
      AFT_FtRunFlg_U16 = (uint16)CDD_TPPC_bGetACMPwmRunFlag(); 
   }
   else
   {
      AFT_FtRunFlg_U16 = (uint16)0;
   }

   if (AMAIN_bVSIStarted != 0)
   {
      AFT_VsiTreatmentPosi();
   }
#endif

#ifdef _PLATFORM_GEN_CODE_BSW_
   AMAIN_u16VadcPhaseCurU = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U();
   AMAIN_u16VadcPhaseCurV = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V();
   AMAIN_u16VadcPhaseCurW = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W();

   if (AMAIN_HARDBenchOnC != 0)
   {
      CDD_TPPC_vidSetACMPwmDuty(AMAIN_f32PWMDutyUPhys, AMAIN_f32PWMDutyVPhys, AMAIN_f32PWMDutyWPhys);
   }
#endif

   if (AMAIN_bVSIStarted != 0)
   {
   #ifdef _PLATFORM_GEN_CODE_EMB_
      /*------------------------------------*/
      AFT_Iuvw3_U16[0]                = 2047;//IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U();
      AFT_Iuvw3_U16[1]                = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V();
      AFT_Iuvw3_U16[2]                = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W();
      AFS_UbatHV_F32                  = IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM();
      AFS_PowerModuleTempU_F32        = IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V();
      AFS_PowerModuleTempV_F32        = IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V();
      AFS_PowerModuleTempW_F32        = IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W();
      AFT_DutyCycle3_F32[0]           = 0.0f;
      AFT_DutyCycle3_F32[1]           = 0.0f;
      AFT_DutyCycle3_F32[2]           = 0.0f;

      AFT_VsiTreatment();
   #endif

   #ifdef _PLATFORM_GEN_CODE_EMB_
      CDD_TPPC_vidSetACMPwmDuty(AFTCIVDC_DutyCycle3[0], AFTCIVDC_DutyCycle3[1], AFTCIVDC_DutyCycle3[2]);
      
      /*if need dc current estimate, enble this*/
      #if 1
      AFS_Iuvw3_F32[0]               = AFTMTLCS_Iuvw3[0];
      AFS_Iuvw3_F32[1]               = AFTMTLCS_Iuvw3[1];
      AFS_Iuvw3_F32[2]               = AFTMTLCS_Iuvw3[2];
      AFS_DutyCycle3_F32[0]          = AFTCIVDC_DutyCycle3[0];
      AFS_DutyCycle3_F32[1]          = AFTCIVDC_DutyCycle3[1];
      AFS_DutyCycle3_F32[2]          = AFTCIVDC_DutyCycle3[2];

      AFS_100us();
      #endif
      
      if ( (AFTMTLCS_Iu > AMAIN_f32UvwOvCurrThdC) || (AFTMTLCS_Iu < ((-1)* AMAIN_f32UvwOvCurrThdC)) )
      {
         AMAIN_bSoftOvCurrPhsUFlg = TRUE;
      }
      if ( (AFTMTLCS_Iv > AMAIN_f32UvwOvCurrThdC) || (AFTMTLCS_Iv < ((-1)* AMAIN_f32UvwOvCurrThdC) ) )
      {
         AMAIN_bSoftOvCurrPhsVFlg = TRUE;  
      }
      if ( (AFTMTLCS_Iw > AMAIN_f32UvwOvCurrThdC) || (AFTMTLCS_Iw < ((-1)* AMAIN_f32UvwOvCurrThdC) ) )
      {
         AMAIN_bSoftOvCurrPhsWFlg = TRUE;
      }

      if ( AFSSMACS_FS_SHUTDOWN_FT == AFSSMACS_AclState)
      {
         CDD_TPPC_vidStopACMPwmOutput();
      }

      //AMAIN_f32VadcBhv  =  IOHAL_f32Read_CH_ICU_IN_F_AN_VOL_DCLINK_DRV();
      AMAIN_f32VadcBhv = IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM();
      /* !Comment: If HV over voltage satisfied, trigger ASC immediately. */
      if  (AMAIN_f32VadcBhv < AMAIN_f32OverBhvThdC) 
      {
         AMAIN_bSoftOvBhvFlg = TRUE;
      }
   #endif
      MAIN_vidCheckIGBT();
   }

   uint8 u8LocAFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_ACU);

   if((u8LocAFaultLevel >= DSM_FAULT_LEVEL_EMRG_STOP)
   || (TRUE == AMAIN_bSoftOvCurrPhsUFlg)
   || (TRUE == AMAIN_bSoftOvCurrPhsVFlg)
   || (TRUE == AMAIN_bSoftOvCurrPhsWFlg)
   || (TRUE == AMAIN_bIgbtLowIsFlt)
   || (TRUE == AMAIN_bIgbtHighIsFlt)
   || (TRUE == AMAIN_bSoftOvBhvFlg))
   {
      CDD_TPPC_vidACMSoftTrapTrigger();
	  AMAIN_u8StopCacheFreezeFrameCnt = 160;
   }

   if(AMAIN_u8StopCacheFreezeFrameCnt > 0)
   {
      AMAIN_u8StopCacheFreezeFrameCnt--;
   }
   else
   {
      AMAIN_u8StopCacheFreezeFrameCnt = 0;
   }

#ifdef _PLATFORM_GEN_CODE_EMB_ 
   AMAIN_FFDataUpdate_100us();
#endif

   AMAIN_EndTime = SYS_u32GET_STM1_TIM0();

   if(AMAIN_EndTime >= AMAIN_startTime)
   {
      AMAIN_TotalTime = AMAIN_EndTime - AMAIN_startTime;
   }

   MAIN_AcuTreatmentStopTime = SYS_u32GET_STM1_TIM0();
   if(MAIN_AcuTreatmentStopTime >= MAIN_AcuTreatmentStartTime)
   {
      MAIN_AcuTreatmentTotalTime = MAIN_AcuTreatmentStopTime - MAIN_AcuTreatmentStartTime;
   }
}
#define  MAIN_STOP_CODE_FAST_CPU3_SECTION
#include "MAIN_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline void MAIN_vidCheckIGBT(void)
{
   boolean bLocPwmOnFlg         = CDD_TPPC_bGetACMPwmRunFlag();
   boolean bLocIgbtLowFltPinLev = FALSE;
   boolean bLocIgbtHigFltPinLev = FALSE;
   uint16  u16TempVal;

   if (bLocPwmOnFlg)
   {
      /* !Comment: IGBT Fault check. */
      u16TempVal = IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N();
      bLocIgbtHigFltPinLev = (boolean)(u16TempVal != 0);
      bLocIgbtLowFltPinLev = (boolean)(u16TempVal != 0);

      if (FALSE == bLocIgbtLowFltPinLev)
      {
         if (AMAIN_u8IgbtLowFltCnt < AMAIN_u8IgbtFltConfirmCntC)
         {
            AMAIN_u8IgbtLowFltCnt++;
         }
         else
         {
            AMAIN_bIgbtLowIsFlt = TRUE;
         }
      }
      else
      {
         if (AMAIN_u8IgbtLowFltCnt < AMAIN_u8IgbtFltConfirmCntC)
         {
            AMAIN_u8IgbtLowFltCnt = 0;
         }
      }

      if (FALSE == bLocIgbtHigFltPinLev)
      {
         if (AMAIN_u8IgbtHighFltCnt < AMAIN_u8IgbtFltConfirmCntC)
         {
            AMAIN_u8IgbtHighFltCnt++;
         }
         else
         {
            AMAIN_bIgbtHighIsFlt = TRUE;
         }
      }
      else
      {
         if (AMAIN_u8IgbtHighFltCnt < AMAIN_u8IgbtFltConfirmCntC)
         {
            AMAIN_u8IgbtHighFltCnt = 0;
         }
      }
   }
}

#ifdef _PLATFORM_GEN_CODE_EMB_
/**********************************************************************
 * Function name    :  MAIN_vidCanInterface
 * Description      :  Can Interface wrapping
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2022/08/27	     V1.0	     LGD	       Create
 ***********************************************************************/ 
static void MAIN_vidCanInterface(void)
{
   
}

/******************************************************************************
*  
* !FuncName    : MAIN_vidAscRecvCond
* !Description : ASC Recover Condition 
* !Task: 10ms
******************************************************************************
* !LastAuthor  : 
******************************************************************************/
static void MAIN_vidAscRecvCond(void)
{
   if((AFTMTLCS_Iu < AMAIN_f32UvwOvCurrThdC)
   && (AFTMTLCS_Iv < AMAIN_f32UvwOvCurrThdC)
   && (AFTMTLCS_Iw < AMAIN_f32UvwOvCurrThdC)
   && (AFT_Iuvw3_U16[0] > AFTMTLCS_A2DLowThresholdC)
   && (AFT_Iuvw3_U16[1] > AFTMTLCS_A2DLowThresholdC)
   && (AFT_Iuvw3_U16[2] > AFTMTLCS_A2DLowThresholdC)
   && (AFT_Iuvw3_U16[0] < AFTMTLCS_A2DHighThresholdC)
   && (AFT_Iuvw3_U16[1] < AFTMTLCS_A2DHighThresholdC)
   && (AFT_Iuvw3_U16[2] < AFTMTLCS_A2DHighThresholdC)
   && (AFSEVBHV_Voltage < AFSEVBHV_HighVoltageThrC)
   && (AMAIN_f32VadcBhv > AMAIN_f32OverBhvThdC)
   && (FALSE == MAIN_bGetACMASCEnableState()))
   {
      CDD_TPPC_vidSetACMClrFaultReq(TRUE);
   }
   else
   {
      CDD_TPPC_vidSetACMClrFaultReq(FALSE);
   }
}
#endif

/**********************************************************************
 * Function name    :  MAIN_vidFaultHandler
 * Description      :  Fault Handler wrapping
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2022/08/27	     V1.0	     LGD	       Create
 ***********************************************************************/ 
static void MAIN_vidFaultHandler(void)
{
   uint8 u8Index = 0;
   MAIN_ECPParam tLocECPParam;

   MAIN_REC_vidClrErrCode(eMAIN_REC_BUF_IDX_ACM);

   MAIN_ECP_vidPollingFault(eMAIN_REC_BUF_IDX_ACM, &tLocECPParam, sizeof(tLocECPParam));

   for(u8Index = 0; u8Index < AMAIN_FaultCodeNum_COLS; u8Index++)
   {
      AMAIN_u8DEV_Fault[u8Index] = tLocECPParam.u8LocFaultCode[u8Index];
   }
}

boolean AMAIN_bGetDiagAllowCondition(void)
{
   boolean bLocRet = FALSE;
   uint8 u8LocPwmSts = 0;

   u8LocPwmSts = CDD_TPPC_bGetACMPwmState();
   if(u8LocPwmSts == VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT)
   {
      bLocRet = FALSE;
   }
   else
   {
      bLocRet = TRUE;
   }
   
   return bLocRet;
}

boolean AMAIN_vidGetProgCondition(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* Used to Judge whether reset and jump to bootloader can execute. */
   /*  AFSSMACS_AclState : init :1   standy:2  ready :3   fault:13 */
   if((1  == AFSSMACS_AclState)
   || (2  == AFSSMACS_AclState)
   || (3  == AFSSMACS_AclState)
   || (13 == AFSSMACS_AclState)
   || (15 == AFSSMACS_AclState)
   || (4  == AFSSMACS_AclState)
   || (17 == AFSSMACS_AclState)
   || (18 == AFSSMACS_AclState))
   {
      AMAIN_bProgConditionOk = TRUE;
   }
   else
   {
      AMAIN_bProgConditionOk = FALSE;
   }

   if(AMAIN_u32TestVar2 == 0x5A5A5A5A)
   {
      AMAIN_bProgConditionOk = TRUE;
   }
#else
   AMAIN_bProgConditionOk = TRUE;
#endif

   return AMAIN_bProgConditionOk;
}

/******************************************************************************
*  
* !FuncName    : AMAIN_bSpeedReadyMng
* !Description : Speed ready signal management, according to resolver and current estimate.
* !Task: 1ms
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean AMAIN_bSpeedReadyMng(void)
{
   boolean bLocSpeedReady = FALSE;

   return bLocSpeedReady;
}

/*-------------------------------- end of file -------------------------------*/
