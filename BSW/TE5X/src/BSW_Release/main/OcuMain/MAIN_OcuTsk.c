/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : Gateway BSW - Application                               */
/*                                                                            */
/* !File            : MAIN_OcuTsk.c                                           */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/******************************************************************************/
/* 1.1  / MAIN_OcuTaskInit                                                    */
/* 2    / MAIN_vidOcuTask1ms                                                  */
/* 3    / MAIN_vidOcuTask2ms                                                  */
/* 4    / MAIN_vidOcuTask5ms                                                  */
/* 5    / MAIN_vidOcuTask10ms                                                 */
/* 6    / MAIN_vidOcuTask100ms                                                */
/* 7    / MAIN_vidOcuTask200ms                                                */
/* 8    / MAIN_vidOcuPwmTreatment                                             */
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
#include "MAIN_OcuTsk.h"
#include "MAIN_ECPCfg_EPS.h"
#include "MAIN_RollErrCode.h"
#include "_MainModule.h"
#include "MAIN_FFUpdate.h"
#include "BSW.h"
#include "IOHAL.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "MAIN_OcuL.h"
#include "GMAIN_L.h"
#include "FAULT_Api.h"
#include "IfxStm_reg.h"
#include "MATHSRV_E.h"
#include "oesmsrv.h"
#include "PortMux.h"
#include "FAIL.h"
#include "MAIN_EPSErrProtect.h"

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
static uint32 MAIN_OcuTreatmentStartTime;
static uint32 MAIN_OcuTreatmentLastStartTime;
static uint32 MAIN_OcuTreatmentStopTime;
static uint32 MAIN_OcuTreatmentTotalTime;
static uint32 MAIN_OcuTreatmentPeriodTime;

#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
volatile float32 OMAIN_f32VsiPwmPeriod  = 0.0f;

static boolean OMAIN_bSpeedReadyFlg       = FALSE;
static float32 OMAIN_f32VadcBhv           = 0.0f;
static uint32  OMAIN_u32TestVar2          = 0;
static uint8   OMAIN_MSGu8Bcm_IgnKeyState = 0;
static uint16 OMAIN_u16PWMPeriodVal       = 4166;
#endif

static uint8   OMAIN_u8IgbtLowFltCnt     = 0;
static uint8   OMAIN_u8IgbtHighFltCnt    = 0;
static boolean OMAIN_bIgbtLowIsFlt       = FALSE;
static boolean OMAIN_bIgbtHighIsFlt      = FALSE;
static boolean OMAIN_bBswReadySts        = FALSE;
static boolean OMAIN_bESMStarted         = FALSE;
static boolean OMAIN_bSoftOvBhvFlg       = FALSE;
static boolean OMAIN_bSoftOvCurrPhsUFlg  = FALSE;
static boolean OMAIN_bSoftOvCurrPhsVFlg  = FALSE;
static boolean OMAIN_bSoftOvCurrPhsWFlg  = FALSE;
static boolean OMAIN_bVSIStarted         = FALSE;
static boolean OMAIN_ESMGo2StartupIEvent = FALSE;
static boolean OMAIN_bProgConditionOk    = FALSE;
static float32 OMAIN_f32PWMDutyUPhys     = 0.0f;
static float32 OMAIN_f32PWMDutyVPhys     = 0.0f;
static float32 OMAIN_f32PWMDutyWPhys     = 0.0f;
static uint16  OMAIN_u16Cnt1             = 0;
static uint16  OMAIN_u16Cnt2             = 0;
static uint16  OMAIN_u16Cnt5             = 0;
static uint16  OMAIN_u16Cnt10            = 0;
static uint16  OMAIN_u16Cnt100           = 0;
static uint16  OMAIN_u16Cnt200           = 0;
static uint16  OMAIN_u16VadcPhaseCurU    = 0;
static uint16  OMAIN_u16VadcPhaseCurV    = 0;
static uint16  OMAIN_u16VadcPhaseCurW    = 0;
static uint32  OMAIN_startTime           = 0;
static uint32  OMAIN_EndTime             = 0;
static uint32  OMAIN_TotalTime           = 0;

uint8 OMAIN_u8DEV_Fault[OMAIN_FaultCodeNum_COLS] = {0};

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
boolean MAIN_bGetOcuSoftOvcFlag_U(void)
{
   return OMAIN_bSoftOvCurrPhsUFlg;
}

boolean MAIN_bGetOcuSoftOvcFlag_V(void)
{
   return OMAIN_bSoftOvCurrPhsVFlg;
}

boolean MAIN_bGetOcuSoftOvcFlag_W(void)
{
   return OMAIN_bSoftOvCurrPhsWFlg;
}

boolean MAIN_bGetOcuSoftOvBhvFlag(void)
{
   return OMAIN_bSoftOvBhvFlg;
}

boolean MAIN_bGetOcuIgbtLSFaultFlag(void)
{
   return OMAIN_bIgbtLowIsFlt;
}

boolean MAIN_bGetOcuIgbtHSFaultFlag(void)
{
   return OMAIN_bIgbtHighIsFlt;
}

void MAIN_vidClrOcuFaultFlag(void)
{
   OMAIN_u8IgbtLowFltCnt     = 0;
   OMAIN_u8IgbtHighFltCnt    = 0;
   OMAIN_bSoftOvCurrPhsUFlg  = FALSE;
   OMAIN_bSoftOvCurrPhsVFlg  = FALSE;
   OMAIN_bSoftOvCurrPhsWFlg  = FALSE;
   OMAIN_bSoftOvBhvFlg       = FALSE;
   OMAIN_bIgbtLowIsFlt       = FALSE;
   OMAIN_bIgbtHighIsFlt      = FALSE;
   
   MAIN_bSetEPSASCEnableState(FALSE);
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_INIT                                                   */
/* !Trigger     : Init                                                        */
/* !Description : This task is launched at the init of the OS                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_OcuTaskInit(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   OMAIN_f32VsiPwmPeriod      = 0.0f;

   OMAIN_bSpeedReadyFlg       = FALSE;
   OMAIN_f32VadcBhv           = 0.0f;
   OMAIN_u32TestVar2          = 0;
   OMAIN_MSGu8Bcm_IgnKeyState = 0;
   OMAIN_u16PWMPeriodVal      = 4166;
#endif

   OMAIN_u8IgbtLowFltCnt     = 0;
   OMAIN_u8IgbtHighFltCnt    = 0;
   OMAIN_bIgbtLowIsFlt       = FALSE;
   OMAIN_bIgbtHighIsFlt      = FALSE;
   OMAIN_bBswReadySts        = FALSE;
   OMAIN_bESMStarted         = FALSE;
   OMAIN_bSoftOvBhvFlg       = FALSE;
   OMAIN_bSoftOvCurrPhsUFlg  = FALSE;
   OMAIN_bSoftOvCurrPhsVFlg  = FALSE;
   OMAIN_bSoftOvCurrPhsWFlg  = FALSE;
   OMAIN_bVSIStarted         = FALSE;
   OMAIN_ESMGo2StartupIEvent = FALSE;
   OMAIN_bProgConditionOk    = FALSE;
   OMAIN_f32PWMDutyUPhys     = 0.0f;
   OMAIN_f32PWMDutyVPhys     = 0.0f;
   OMAIN_f32PWMDutyWPhys     = 0.0f;
   OMAIN_u16Cnt1             = 0;
   OMAIN_u16Cnt2             = 0;
   OMAIN_u16Cnt5             = 0;
   OMAIN_u16Cnt10            = 0;
   OMAIN_u16Cnt100           = 0;
   OMAIN_u16Cnt200           = 0;
   OMAIN_u16VadcPhaseCurU    = 0;
   OMAIN_u16VadcPhaseCurV    = 0;
   OMAIN_u16VadcPhaseCurW    = 0;
   OMAIN_startTime           = 0;
   OMAIN_EndTime             = 0;
   OMAIN_TotalTime           = 0;
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_1MS                                               */
/* !Trigger     : Time (1ms)                                                  */
/* !Description : This task has a 1ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE)  MAIN_vidOcuTask1ms(void)
{
   OMAIN_u16Cnt1++;

   CDD_TPPC_vidEPSMotorStateMng();
   TPPC_vidEPSASCStateMng();
/*------------------------------------*/
   if (OMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         OFS_UbatLV_U16                    = PMux_u16GetInputVal(ePMUX_Bat_VolSample);
         OFS_HwOverVoltFlg_B               = OMAIN_bSoftOvBhvFlg;
         OFS_MotorWindingTemp1_U16         = 2290;
         OFS_MotorWindingTemp1L_U16        = 2045;
         OFS_MotorWindingTemp2_U16         = 2045;
         OFS_MotorWindingTemp2L_U16        = 2045;
         OFS_UbatHV2_F32                   = OFS_UbatHV_F32;
         OFS_1ms();

         OFT_UbatHV_F32                    = OFSEVBHV_VoltageFild;
         OFT_I0dqTgt3_F32[0]               = OFSTCGTC_I0dqTgt[0];
         OFT_I0dqTgt3_F32[1]               = OFSTCGTC_I0dqTgt[1];
         OFT_I0dqTgt3_F32[2]               = OFSTCGTC_I0dqTgt[2];
         OFT_U0dqTgt3_F32[0]               = OFSTCGTC_U0dqTgt[0];
         OFT_U0dqTgt3_F32[1]               = OFSTCGTC_U0dqTgt[1];
         OFT_U0dqTgt3_F32[2]               = OFSTCGTC_U0dqTgt[2];
         OFT_ScsStartCmd_B                 = OFSTCGTC_ScsStartCmd;
         OFT_1ms();

         OMAIN_bSpeedReadyFlg = OMAIN_bSpeedReadyMng();
         if (FALSE != OMAIN_bSpeedReadyFlg)
         {
            /* !Comment: Speed over 1500 rpm. */
            CDD_TPPC_vidSetEPSMotorSpdRdyFlg(TRUE);
         }
         else
         {
            /* !Comment: Speed under 1500 rpm. */
            CDD_TPPC_vidSetEPSMotorSpdRdyFlg(FALSE);
         }
      #endif
   }

   /* !Comment: ESM services requests. */
   if (OMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         OESMSRV_vidSetCmdReq(OESM_CMD_FT_START,           OFSSMACS_CmdFtStartReq);
         OESMSRV_vidSetCmdReq(OESM_CMD_FT_SHUTDOWN,        OFTSMACS_CmdOftShutDownRes);
         OESMSRV_vidSetCmdReq(OESM_CMD_SW_SHUTDOWN,        OFSSMACS_CmdSwShutDownReq);
         OESMSRV_vidSetCmdReq(OESM_CMD_PWM_OFF,            OFTSMACS_CmdPwmOffReq);
         OESMSRV_vidSetCmdReq(OESM_CMD_PWM_DIRECT,         OFTSMACS_CmdPwmDirectReq);
      #endif
   }

#ifdef _PLATFORM_GEN_CODE_EMB_
   /*  !Comment: Set Freeze frame of ASW 1ms */
   OMAIN_FFDataUpdate_1ms();
#endif

   OFAIL_vidFailDetection_1ms();
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_2MS                                               */
/* !Trigger     : Time (2ms)                                                  */
/* !Description : This task has a 2ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE)  MAIN_vidOcuTask2ms(void)
{
   OMAIN_u16Cnt2++;

#ifdef _PLATFORM_GEN_CODE_EMB_ 
   if (OMAIN_bVSIStarted)
   {
      OFS_SpdSet_F32  = MAIN_MSGf32VCU_SteerMotSpdReq;
      if(abs(MAIN_MSGf32VCU_SteerMotSpdReq) == 0)
      {
         OFS_SpdSet_F32 = OMAIN_f32CanSpeedTgtSetC;
      }
      OFS_BSWReadyStatus_B             = BSW_bGetBswReadySts();
      OFT_BSWReadyStatus_B             = OFS_BSWReadyStatus_B;
      OFS_OFTAclState_U16              = OFTSMACS_AclState;
      OFS_CmdOftShutDownRes_B          = OFTSMACS_CmdOftShutDownRes;
      OFS_CmdOftStartRes_B             = OFTSMACS_CmdOftStartRes;
      OFS_FaultLevel_U16               = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU);
      OFS_KEYON_B                      = ASWNM_bGetStayAwakeReq();
      OFS_VcuMcuEnableReq_U8           = MAIN_MSGu8VCU_DCAC_SPwrEn;
      OFS_ModeReq_U8                   = FALSE; 
      OFS_OpenAngleState_U8            = OFTCMSCS_OpenAngleState;   
      OFS_EmWorkModCmd_U8              = 1;
      OFT_CmdOftStartReq_B             = OFSSMACS_CmdFtStartReq;
      OFT_CmdOftShutDownReq_B          = OFSSMACS_CmdFtShutDownReq;
      OFT_MecaSpeedRpmTgt_F32          = OFSTCGTC_MecaSpeedRpmTgt;
      OFT_OFTModeReq_U16               = OFSSMACS_FTModeReq;
   
      OFT_CmdPwmOffRes_B               = OESMSRV_bGetCmdRes(OESM_CMD_PWM_OFF);
      OFT_CmdPwmDirectRes_B            = OESMSRV_bGetCmdRes(OESM_CMD_PWM_DIRECT);
      OFT_FaultLevel_U16               = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU);
   
      OFT_2ms();
   }
   else
   {
      ; /* Do nothing until vsi start */
   }
#endif
      
   /*  !Comment: ESM running. */
   if (OMAIN_VSIBenchOnWriteDataC == 0)
   {
      /*  !Comment: VSI started */
      if (OBSW_u32VSICounterCkreq >= OMAIN_u32VSICntCkreqVSIStartedC)
      {
         /*  !Comment: ESM Cmd Req. */
         if (OMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }
         OMAIN_bVSIStarted = 1;
         /*  !Comment: ESM started */
         if (OBSW_u32VSICounterCkreq >= OMAIN_u32VSICntCkreqESMStartedC) 
         {
            OESMSRV_vidSetCmdReq(OESM_CMD_SW_START,           1);
            OMAIN_bESMStarted = 1;
         }
      }
      OSTFSRV_vidSET_EVENT(OESM, SCHED_5MS);
   }
   else
   {
      /*  !Comment: VSI started */
      if (OBSW_u32VSICounterCkreq >= OMAIN_u32VSICntCkreqVSIStartedC)
      {
         if (OMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }

         OMAIN_bVSIStarted = 1;
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
FUNC(void, MAIN_CODE) MAIN_vidOcuTask5ms(void)
{
   OMAIN_u16Cnt5++;
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_10MS                                              */
/* !Trigger     : Time (10ms)                                                 */
/* !Description : This task has a 10ms period                                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_vidOcuTask10ms(void)
{
   OMAIN_u16Cnt10++;
   OMAIN_bBswReadySts = BSW_bGetBswReadySts();

   if (OMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_         
      /*Forbidden to Active Discharge on GCU */
      OESMSRV_vidSetMcuEnaReq(FALSE);
      MAIN_vidAscRecvCond();

      OFS_DriverBoardTemp_U16          = 2045;
      OFS_CommandBoardTempLV_U16       = 2045;
      OFS_CommandBoardTempLV2_U16      = OFS_CommandBoardTempLV_U16;
      OFS_CoolingTemp_U16              = 2045;
      OFS_MotorWindingDrtGain_F32      = OFTASMTP_WndgDrtGain;
      OFS_MotorMagnetDrtGain_F32       = 1;
      OFS_PowmdlDrtGain_F32            = OFTASETP_PmDrtGain;
      OFS_EstPowmdlDrtGain_F32         = OFTASETP_PmDrtGain; 
      OFS_P5VPort_U16                  = 2047;
      OFS_BatVotValidFlag_B            = FALSE;
      OFS_Ubms_F32                     = 2047;
      OFS_MecaSpeedRpm_F32             = OFTMTSEP_MecaSpeedRpm;
      
      OFS_10ms();
      
      OFT_BhvCheckEna_B                = OFSSMMAM_EVBHV_CheckEnable;
      OFT_PowerModuleTemp_F32          = OFSEVETA_TempIgbt;
      OFT_MotorWindingTemp2_F32[0]     = OFSMTMTA_TempWinding[0];
      OFT_MotorWindingTemp2_F32[1]     = OFSMTMTA_TempWinding[1];      


/*Transmit ID_100ms*/
      if((OFSSMACS_FS_INIT == OFSSMACS_AclState) || (OFSSMACS_FS_STANDBY == OFSSMACS_AclState) || (OFSSMACS_FS_PRECHARGE == OFSSMACS_AclState))
      {
         MAIN_MSGu8DCAC_S_SysSts = 3;
      }
      else if ((OFSSMACS_FS_HIGHVOLT_STANDBY == OFSSMACS_AclState) || (OFSSMACS_FS_START_FT == OFSSMACS_AclState) || (OFSSMACS_FS_READY == OFSSMACS_AclState)
               || (OFSSMACS_FS_SHUTDOWN_FT == OFSSMACS_AclState))     
      {
         MAIN_MSGu8DCAC_S_SysSts = 7;
      }
      else if ((OFSSMACS_FS_OPERATIONAL_FT == OFSSMACS_AclState))
      {
         MAIN_MSGu8DCAC_S_SysSts = 8;
      }
      else if (OFSSMACS_FS_FAILURE == OFSSMACS_AclState)
      {
         MAIN_MSGu8DCAC_S_SysSts = 15;
      }
      else
      {
         MAIN_MSGu8DCAC_S_SysSts = 0;
      }

      if ((OFS_FaultLevel_U16 > 0) && (OFS_FaultLevel_U16 < 4))
      {
         MAIN_MSGu8DCAC_S_ErrSts = 1;
      }
      else if (OFS_FaultLevel_U16 >= 4)
      {
         MAIN_MSGu8DCAC_S_ErrSts = 2;
      }
      else
      {
         MAIN_MSGu8DCAC_S_ErrSts = 0;
      }
         MAIN_MSGf32DCAC_S_MotTemp    = OFSMTMTA_TempWindingMax;
         MAIN_MSGf32DCAC_S_ECUTemp    = OFSEVETA_TempIgbtLeftFild;
         
         if (OFTCMSCS_OpenAngleStatePre == 4)
         {
            MAIN_MSGf32DCAC_S_MotSpd     = OFTCMSCS_SpeedFilterZ;
         }
         else
         {
            MAIN_MSGf32DCAC_S_MotSpd = OFTMTSEP_MecaSpeedRpm;
         }

      OFT_10ms();      
      #endif
   }
   else
   {
      ;/* Do nothing until vsi start */
   }
   
   /* Set Freeze frame of ASW 10ms */
   #ifdef _PLATFORM_GEN_CODE_EMB_
      OMAIN_FFDataUpdate_10ms();
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
void MAIN_vidOcuTask100ms(void)
{
   OMAIN_u16Cnt100++;
      
   if (OMAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         OFS_DeratingStatus_B  = OFTASDPM_DeratingStatus;
         OFS_Idref_F32         = OFTCMTCS_i0dqTgt3[1];
         OFS_Iqref_F32         = OFTCMTCS_i0dqTgt3[2]; 
      
         OFS_100ms();
         OFT_100ms();


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
void MAIN_vidOcuTask200ms(void)
{
   OMAIN_u16Cnt200++;

   if (OMAIN_ESMGo2StartupIEvent != 0)
   {
      OSTFSRV_vidSET_EVENT(OESM, GO2_STARTUP_I);
      OMAIN_ESMGo2StartupIEvent = 0;
   }
#ifdef _PLATFORM_GEN_CODE_EMB_
   uint16 * MAIN_au16CalibBuf = MAIN_CAL_pu16GetCalDataBuf(eMAIN_CALIB_IDX_EPS);
   OFT_ExtCurrentGain_U16[0]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_UI_INDEX];
   OFT_ExtCurrentGain_U16[1]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VI_INDEX];
   OFT_ExtCurrentGain_U16[2]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_WI_INDEX];
   OFS_BusVoltageGain_U16     = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VO_INDEX];

/*Transmit ID_200ms*/
   MAIN_MSGu16DCAC_S_InVolt     = OFSEVBHV_VoltageFild;
   MAIN_MSGf32DCAC_S_OutVoltRMS = OFTCMTCS_UdqNorm;
   MAIN_MSGu8DCAC_S_OutCurRMS   = OFTMTLCS_Iu_Rms;
   MAIN_MSGf32DCAC_S_InCur      = OFSEVIBT_IbatHVFild;
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
void MAIN_vidOcuPwmTreatment(void)
{ 
   MAIN_OcuTreatmentStartTime = SYS_u32GET_STM1_TIM0();
   
   MAIN_OcuTreatmentPeriodTime = MAIN_OcuTreatmentStartTime - MAIN_OcuTreatmentLastStartTime;
   MAIN_OcuTreatmentLastStartTime = MAIN_OcuTreatmentStartTime;
   
   OBSW_u32VSICounterCkreq++;
   OBSW_u32VSICounterCkreq++;
#ifdef _PLATFORM_GEN_CODE_EMB_
   OMAIN_f32VsiPwmPeriod     = (float)(OMAIN_u16PWMPeriodVal + 1) * SYS_T12_CLK_PERD;

   OFT_VsiPwmPeriod_F32   = OMAIN_f32VsiPwmPeriod;

   //OFT_PwmZeroMatch_B = GCCU6_bGetZeroMatchFlg();

   if(OFSSMACS_NormalStartFtFlg)
   {
      OFT_FtRunFlg_U16 = (uint16)CDD_TPPC_bGetEPSPwmRunFlag(); 
   }
   else
   {
      OFT_FtRunFlg_U16 = (uint16)0;
   }

   if (OMAIN_bVSIStarted != 0)
   {
      OFT_VsiTreatmentPosi();
   }
#endif

#ifdef _PLATFORM_GEN_CODE_BSW_
   OMAIN_u16VadcPhaseCurU = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U();
   OMAIN_u16VadcPhaseCurV = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V();
   OMAIN_u16VadcPhaseCurW = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W();

   if (OMAIN_HARDBenchOnC != 0)
   {
      CDD_TPPC_vidSetEPSPwmDuty(OMAIN_f32PWMDutyUPhys, OMAIN_f32PWMDutyVPhys, OMAIN_f32PWMDutyWPhys);
   }
#endif

   if (OMAIN_bVSIStarted != 0)
   {
   #ifdef _PLATFORM_GEN_CODE_EMB_
      /*------------------------------------*/
      OFT_Iuvw3_U16[0]                = 2047;//IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U();
      OFT_Iuvw3_U16[1]                = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V();
      OFT_Iuvw3_U16[2]                = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W();
      OFS_UbatHV_F32                  = IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS();
      OFS_PowerModuleTempU_F32        = IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V();
      OFS_PowerModuleTempV_F32        = IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V();
      OFS_PowerModuleTempW_F32        = IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W();
      OFT_DutyCycle3_F32[0]           = 0.0f;
      OFT_DutyCycle3_F32[1]           = 0.0f;
      OFT_DutyCycle3_F32[2]           = 0.0f;
      OFS_100us();
      OFT_VsiTreatment();
   #endif

   #ifdef _PLATFORM_GEN_CODE_EMB_
      CDD_TPPC_vidSetEPSPwmDuty(OFTCIVDC_DutyCycle3[0], OFTCIVDC_DutyCycle3[1], OFTCIVDC_DutyCycle3[2]);
      
      /*if need dc current estimate, enble this*/
      #if 1
      OFS_Iuvw3_F32[0]                = OFTMTLCS_Iuvw3[0];
      OFS_Iuvw3_F32[1]                = OFTMTLCS_Iuvw3[1];
      OFS_Iuvw3_F32[2]                = OFTMTLCS_Iuvw3[2];
      OFS_DutyCycle3_F32[0]           = OFTCIVDC_DutyCycle3[0];
      OFS_DutyCycle3_F32[1]           = OFTCIVDC_DutyCycle3[1];
      OFS_DutyCycle3_F32[2]           = OFTCIVDC_DutyCycle3[2];


      #endif
      
      if ( (OFTMTLCS_Iu > OMAIN_f32UvwOvCurrThdC) || (OFTMTLCS_Iu < ((-1)* OMAIN_f32UvwOvCurrThdC)) )
      {
         OMAIN_bSoftOvCurrPhsUFlg = TRUE;
      }
      if ( (OFTMTLCS_Iv > OMAIN_f32UvwOvCurrThdC) || (OFTMTLCS_Iv < ((-1)* OMAIN_f32UvwOvCurrThdC) ) )
      {
         OMAIN_bSoftOvCurrPhsVFlg = TRUE;  
      }
      if ( (OFTMTLCS_Iw > OMAIN_f32UvwOvCurrThdC) || (OFTMTLCS_Iw < ((-1)* OMAIN_f32UvwOvCurrThdC) ) )
      {
         OMAIN_bSoftOvCurrPhsWFlg = TRUE;
      }

      if ( OFSSMACS_FS_SHUTDOWN_FT == OFSSMACS_AclState)
      {
         CDD_TPPC_vidStopEPSPwmOutput();
      }

      // OMAIN_f32VadcBhv  =  IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();
       OMAIN_f32VadcBhv = IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS();
      /* !Comment: If HV over voltage satisfied, trigger ASC immediately. */
      if  (OMAIN_f32VadcBhv < OMAIN_f32OverBhvThdC) 
      {
         OMAIN_bSoftOvBhvFlg = TRUE;
      }
   #endif
      MAIN_vidCheckIGBT();
   }

   uint8 u8LocAFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU);

   if((u8LocAFaultLevel >= DSM_FAULT_LEVEL_EMRG_STOP)
   || (TRUE == OMAIN_bSoftOvCurrPhsUFlg)
   || (TRUE == OMAIN_bSoftOvCurrPhsVFlg)
   || (TRUE == OMAIN_bSoftOvCurrPhsWFlg)
   || (TRUE == OMAIN_bIgbtLowIsFlt)
   || (TRUE == OMAIN_bIgbtHighIsFlt)
   || (TRUE == OMAIN_bSoftOvBhvFlg))
   {
      CDD_TPPC_vidEPSSoftTrapTrigger();
	  OMAIN_u8StopCacheFreezeFrameCnt = 160;
   }

   if(OMAIN_u8StopCacheFreezeFrameCnt > 0)
   {
      OMAIN_u8StopCacheFreezeFrameCnt--;
   }
   else
   {
      OMAIN_u8StopCacheFreezeFrameCnt = 0;
   }

#ifdef _PLATFORM_GEN_CODE_EMB_ 
   OMAIN_FFDataUpdate_100us();
#endif

   OMAIN_EndTime = SYS_u32GET_STM1_TIM0();

   if(OMAIN_EndTime >= OMAIN_startTime)
   {
      OMAIN_TotalTime = OMAIN_EndTime - OMAIN_startTime;
   }

   MAIN_OcuTreatmentStopTime = SYS_u32GET_STM1_TIM0();
   if(MAIN_OcuTreatmentStopTime >= MAIN_OcuTreatmentStartTime)
   {
      MAIN_OcuTreatmentTotalTime = MAIN_OcuTreatmentStopTime - MAIN_OcuTreatmentStartTime;
   }
}
#define  MAIN_STOP_CODE_FAST_CPU3_SECTION
#include "MAIN_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline void MAIN_vidCheckIGBT(void)
{
   boolean bLocPwmOnFlg         = CDD_TPPC_bGetEPSPwmRunFlag();
   boolean bLocIgbtLowFltPinLev = FALSE;
   boolean bLocIgbtHigFltPinLev = FALSE;
   uint16  u16TempVal;

   if (bLocPwmOnFlg)
   {
      /* !Comment: IGBT Fault check. */
      u16TempVal = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();
      bLocIgbtHigFltPinLev = (boolean)(u16TempVal != 0);
      bLocIgbtLowFltPinLev = (boolean)(u16TempVal != 0);

      if (FALSE == bLocIgbtLowFltPinLev)
      {
         if (OMAIN_u8IgbtLowFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtLowFltCnt++;
         }
         else
         {
            OMAIN_bIgbtLowIsFlt = TRUE;
         }
      }
      else
      {
         if (OMAIN_u8IgbtLowFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtLowFltCnt = 0;
         }
      }

      if (FALSE == bLocIgbtHigFltPinLev)
      {
         if (OMAIN_u8IgbtHighFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtHighFltCnt++;
         }
         else
         {
            OMAIN_bIgbtHighIsFlt = TRUE;
         }
      }
      else
      {
         if (OMAIN_u8IgbtHighFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtHighFltCnt = 0;
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
   if((OFTMTLCS_Iu < OMAIN_f32UvwOvCurrThdC)
   && (OFTMTLCS_Iv < OMAIN_f32UvwOvCurrThdC)
   && (OFTMTLCS_Iw < OMAIN_f32UvwOvCurrThdC)
   && (OFT_Iuvw3_U16[0] > OFTMTLCS_A2DLowThresholdC)
   && (OFT_Iuvw3_U16[1] > OFTMTLCS_A2DLowThresholdC)
   && (OFT_Iuvw3_U16[2] > OFTMTLCS_A2DLowThresholdC)
   && (OFT_Iuvw3_U16[0] < OFTMTLCS_A2DHighThresholdC)
   && (OFT_Iuvw3_U16[1] < OFTMTLCS_A2DHighThresholdC)
   && (OFT_Iuvw3_U16[2] < OFTMTLCS_A2DHighThresholdC)
   && (OFSEVBHV_Voltage < OFSEVBHV_HighVoltageThrC)
   && (OMAIN_f32VadcBhv > OMAIN_f32OverBhvThdC)
   && (FALSE == MAIN_bGetEPSASCEnableState()))
   {
      CDD_TPPC_vidSetEPSClrFaultReq(TRUE);
   }
   else
   {
      CDD_TPPC_vidSetEPSClrFaultReq(FALSE);
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

   MAIN_REC_vidClrErrCode(eMAIN_REC_BUF_IDX_EPS);

   MAIN_ECP_vidPollingFault(eMAIN_REC_BUF_IDX_EPS, &tLocECPParam, sizeof(tLocECPParam));

   for(u8Index = 0; u8Index < OMAIN_FaultCodeNum_COLS; u8Index++)
   {
      OMAIN_u8DEV_Fault[u8Index] = tLocECPParam.u8LocFaultCode[u8Index];
   }
}

boolean OMAIN_bGetDiagAllowCondition(void)
{
   boolean bLocRet = FALSE;
   uint8 u8LocPwmSts = 0;

   u8LocPwmSts = CDD_TPPC_bGetEPSPwmState();
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

boolean OMAIN_vidGetProgCondition(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* Used to Judge whether reset and jump to bootloader can execute. */
   /*  OFSSMACS_AclState : init :1   standy:2  ready :3   fault:13 */
   if((1  == OFSSMACS_AclState)
   || (2  == OFSSMACS_AclState)
   || (3  == OFSSMACS_AclState)
   || (13 == OFSSMACS_AclState)
   || (15 == OFSSMACS_AclState)
   || (4  == OFSSMACS_AclState)
   || (17 == OFSSMACS_AclState)
   || (18 == OFSSMACS_AclState))
   {
      OMAIN_bProgConditionOk = TRUE;
   }
   else
   {
      OMAIN_bProgConditionOk = FALSE;
   }

   if(OMAIN_u32TestVar2 == 0x5A5A5A5A)
   {
      OMAIN_bProgConditionOk = TRUE;
   }
#else
   OMAIN_bProgConditionOk = TRUE;
#endif

   return OMAIN_bProgConditionOk;
}

/******************************************************************************
*  
* !FuncName    : OMAIN_bSpeedReadyMng
* !Description : Speed ready signal management, according to resolver and current estimate.
* !Task: 1ms
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean OMAIN_bSpeedReadyMng(void)
{
   boolean bLocSpeedReady = FALSE;

   return bLocSpeedReady;
}

/*-------------------------------- end of file -------------------------------*/
