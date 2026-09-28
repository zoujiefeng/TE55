/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : Gateway BSW - Application                               */
/*                                                                            */
/* !File            : MAIN_tsk.c                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/******************************************************************************/
/* 1    / MAIN_Wait                                                           */
/* 2    / TASK_INIT                                                           */
/* 3    / MAIN_CORE0_1ms_func                                                 */
/* 4    / MAIN_CORE0_2ms_func                                                 */
/* 5    / MAIN_CORE0_5ms_func                                                 */
/* 6    / MAIN_CORE0_10ms_func                                                */
/* 7    / MAIN_CORE1_1ms_func                                                 */
/* 8    / MAIN_CORE1_10ms_func                                                */
/* 9    / MAIN_CORE0_100ms_func                                               */
/* 10   / MAIN_CORE0_200ms_func                                               */
/* 11   / MAIN_vidVSITreatment                                                */
/* 12   / MAIN_vidPositionTreatment                                           */
/* 13   / FRecord_pxCore1ParamUpdateCallBackFunc                              */
/* 14   / MAIN_MsgScaleTxFaults                                               */
/* 15   / MAIN_bInitOcTrimData                                                */
/* 17   / MAIN_bChkOcCondition                                                */
/* 20   / MAIN_vidOcDataRestore                                               */
/* 21   / MAIN_f32GetAutophsingAngle                                          */
/* 23   / MAIN_bSetSaforiAutophsAngC                                          */
/* 27   / MAIN_vidIdqQualityTest                                              */
/* 28   / MAIN_vidMotorSpeedEst                                               */
/* 29   / MAIN_bSpeedReadyMng                                                 */
/* 30   / MAIN_vidAscRecvCond                                                 */
/* 31   / MAIN_vidCheckPwDownCond                                             */
/* 32   / MAIN_vidGetProgCondition                                            */
/* 34   / CCP_DaqListSetEvent0_func                                           */
/* 35   / CCP_DaqListSetEvent1_func                                           */
/* 36   / CCP_DaqListSetEvent2_func                                           */
/* 37   / RESBSL_CheckCalibChange_func                                        */
/******************************************************************************/
/******************************************************************************/

#include "MAIN_Cfg.h"

#define RTE_CORE
#include "Rte_ASW_CORE0.h"
#include "Rte_ASW_CORE1.h"

#include "MAIN_ECPCfg_MCU1.h"
#include "_MainModule.h"
#include "MAIN_FFUpdate.h"
#include "MAIN_tsk.h"
#include "MAIN_L.h"
#include "BSW.h"
#include "bswsrv.h"
#include "CCU6.h"
#include "GCCU6_L.h"
#include "CALUSR.h"
#include "FAULT_Api.h"
#include "DSM.h"
#include "Dsm_Typ.h"
#include "VADC.h"
#include "ESM.h"
#include "ESM_L.h"
#include "ESM_DAT.h"
#include "esmsrv.h"
#include "IfxStm_reg.h"
#include "MATHSRV.h"
#include "Dio.h"
#include "DSM.h"
#include "FAIL.h"
#include "FAULT.h"
#include "FAULT_FF.h"
#include "DFM.h"
#include "MutexDef.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "MAIN_MSG_Auto_Can02_L.h"
#include "MCS.h"
#include "GMAIN_tsk.h"  
#include "GMAIN_L.h"
#include "SPY.h"
#include "NvM_Cfg.h"
#include "CCP.h"
#include "HARD.h"
#include "FR_System.h"
#include "UDS_Nvm.h"
#include "SafeTpackMain.h"
#include "IcuHal.h"
#include "PortMux.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
   #include "SWC_FT.h"
   #include "SWC_FS.h"
#endif

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/* !Comment: Get STM1 timer counter value, STM1 frequency is 100MHZ. */
#define SYS_u32GET_STM1_TIM0()          ((uint32)MODULE_STM1.TIM0.U)
#define SYS_SEC_TO_CLK_GAIN             ((float)10000000.0f)
#define SYS_T12_CLK_PERD                ((float)0.00000004f)
/* !Comment: T12 clock number per second. */
#define SYS_T12_CLK_NUM_1S              (25000000.0f)

/* !Comment: Use for target value reverse. */
#define MAIN_MINUS_ONE                  (-1.0f)
#define ALIM_ON                         ((uint8)1u)
#define ALIM_OFF                        ((uint8)0u)
/*----------------------------------------------------------------------------*/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
#ifdef _PLATFORM_GEN_CODE_EMB_
static uint8 MAIN_MSGu8CompileDay;
static uint8 MAIN_MSGu8CompileMonth;
static uint8 MAIN_MSGu8CompileYear;
#endif
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/******************************************************************************/
/* STATIC FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define CPU1_START_SEC_CODE
#include "MemMap.h"

static void MAINHARD_vidInit(void);
static void MAIN_vidAscRecvCond(void);
static void MAIN_MsgScaleTxFaults(void);
#ifdef _PLATFORM_GEN_CODE_EMB_
static void MAIN_vidAscRecvCond(void);
#endif
static void MAIN_vidCalibVer2String(void);
static void MAIN_vidCheckPwDownCond(void) ;


/******************************************************************************/
/* FUNCTIONS DECLARATION EXTERNAL DEFINITION                                  */
/******************************************************************************/

#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

/* Application version information section, total 64 bytes */
const uint8 MAIN_SotwareIdentifcation[7]  = {0x56,0x31,0x2E,0x30,0x2E,0x30,0xFF};
const uint8 MAIN_SotwareIdentifcationBeta = {0x06};
const uint8 MAIN_HardwareIdenfcation[6] = {0xC2,0xB2,0xC2,0xA3,0x02,0x01};
#ifdef _PLATFORM_GEN_CODE_EMB_
const uint16 MAIN_SotwareIdentifcationNum1   = FSEXCTX_SWVERNUM1;
const uint16 MAIN_SotwareIdentifcationNum2   = FSEXCTX_SWVERNUM2;
const uint16 MAIN_SotwareIdentifcationNum3   = FSEXCTX_SWVERNUM3;
const uint16 MAIN_SotwareIdentifcationNum4   = FSEXCTX_SWVERNUM4;
#endif

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define CPU1_START_SEC_CODE
#include "MemMap.h"
/******************************************************************************/
/*                                                                            */
/* !Runnable    : MAIN_Wait function                                          */
/* !Trigger     : Main Function                                               */
/* !Description : Wait function                                               */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_Wait(uint32 time)
{
   volatile uint32 localu32Counter;

   localu32Counter = time;
   while(localu32Counter > 0)
   {
      localu32Counter--;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_INIT                                                   */
/* !Trigger     : Init                                                        */
/* !Description : This task is launched at the init of the OS                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, MAIN_CODE) MAIN_TaskInit(void)
{
   BSW_vidInit();
   MAINHARD_vidInit();
   MAIN_vidCalibVer2String();
   CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);

   MAIN_PduTaskInit();
   BSW_vidSetOCPThreshold(0, 0.0f);
   BSW_vidSetOCPThreshold(1, 0.0f);

   MAIN_bVSIStarted    = 0;
   MAIN_bComDisableFlg = FALSE;
   #ifdef _PLATFORM_GEN_CODE_EMB_
      SWC_FT_initialize();
      SWC_FS_initialize();
   #endif
   
   #ifdef _PLATFORM_GEN_CODE_EMB_
      MAIN_MSGu8CompileYear  = (uint8)(MAIN_SotwareIdentifcationNum4 >> 8);
      MAIN_MSGu8CompileYear  = (MAIN_MSGu8CompileYear >> 4) * 10 + (MAIN_MSGu8CompileYear & 0x0F);
      MAIN_MSGu8CompileMonth = (uint8)MAIN_SotwareIdentifcationNum3;
      MAIN_MSGu8CompileMonth = (MAIN_MSGu8CompileMonth >> 4) * 10 + (MAIN_MSGu8CompileMonth & 0x0F);
      MAIN_MSGu8CompileDay   = (uint8)(MAIN_SotwareIdentifcationNum3 >> 8);
      MAIN_MSGu8CompileDay   = (MAIN_MSGu8CompileDay >> 4) * 10 + (MAIN_MSGu8CompileDay & 0x0F);

      MAIN_MSGu8MCU_VersionByte1     = MAIN_SotwareIdentifcation[0];
      MAIN_MSGu8MCU_VersionByte2     = MAIN_SotwareIdentifcation[1];
      MAIN_MSGu8MCU_VersionByte3     = MAIN_SotwareIdentifcation[2];
      MAIN_MSGu8MCU_VersionByte4     = MAIN_SotwareIdentifcation[3];
      MAIN_MSGu8MCU_VersionByte5     = MAIN_SotwareIdentifcation[4];
      MAIN_MSGu8MCU_VersionByte6     = MAIN_SotwareIdentifcation[5];
      
      MAIN_MSGu8MCU2_VersionByte1    = MAIN_SotwareIdentifcation[0];         
      MAIN_MSGu8MCU2_VersionByte2    = MAIN_SotwareIdentifcation[1];         
      MAIN_MSGu8MCU2_VersionByte3    = MAIN_SotwareIdentifcation[2];         
      MAIN_MSGu8MCU2_VersionByte4    = MAIN_SotwareIdentifcation[3];         
      MAIN_MSGu8MCU2_VersionByte5    = MAIN_SotwareIdentifcation[4];         
      MAIN_MSGu8MCU2_VersionByte6    = MAIN_SotwareIdentifcation[5];      
   
      MAIN_MSGu8PDU_VersionByte1     = MAIN_SotwareIdentifcation[0];
      MAIN_MSGu8PDU_VersionByte2     = MAIN_SotwareIdentifcation[1];
      MAIN_MSGu8PDU_VersionByte3     = MAIN_SotwareIdentifcation[2];
      MAIN_MSGu8PDU_VersionByte4     = MAIN_SotwareIdentifcation[3];
      MAIN_MSGu8PDU_VersionByte5     = MAIN_SotwareIdentifcation[4];
      MAIN_MSGu8PDU_VersionByte6     = MAIN_SotwareIdentifcation[5];
   
      MAIN_MSGu8DCAC_S_VersionByte1  = MAIN_SotwareIdentifcation[0];
      MAIN_MSGu8DCAC_S_VersionByte2  = MAIN_SotwareIdentifcation[1];
      MAIN_MSGu8DCAC_S_VersionByte3  = MAIN_SotwareIdentifcation[2];
      MAIN_MSGu8DCAC_S_VersionByte4  = MAIN_SotwareIdentifcation[3];
      MAIN_MSGu8DCAC_S_VersionByte5  = MAIN_SotwareIdentifcation[4];
      MAIN_MSGu8DCAC_S_VersionByte6  = MAIN_SotwareIdentifcation[5];
      
      MAIN_MSGu8DCAC_B_VersionByte1  = MAIN_SotwareIdentifcation[0];
      MAIN_MSGu8DCAC_B_VersionByte2  = MAIN_SotwareIdentifcation[1];
      MAIN_MSGu8DCAC_B_VersionByte3  = MAIN_SotwareIdentifcation[2];
      MAIN_MSGu8DCAC_B_VersionByte4  = MAIN_SotwareIdentifcation[3];
      MAIN_MSGu8DCAC_B_VersionByte5  = MAIN_SotwareIdentifcation[4];
      MAIN_MSGu8DCAC_B_VersionByte6  = MAIN_SotwareIdentifcation[5];
   #endif
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE0_1ms_func                                                         */
/*                                                                                            */
/* !Description : Core0 1ms dispatch used for Main_Task                                       */
/* !Reference   : Rte_ASW_CORE0                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE0_CODE) MAIN_CORE0_1ms_func(void)
{
   MAIN_u16Core0Cnt1++;
   
   BSW_vidCORE0_1ms_Head_Func() ;    // BSW 1MS Period Func - 2026-8-11

   /*------------------------------------*/
   if ((MAIN_bVSIStarted) || (MAIN_bBswReadySts))
   {
      VADC_vidTreatment();
      #ifdef _PLATFORM_GEN_CODE_EMB_
         /* !Comment: Enable exitation short GND monitor only when Resolver square sum fault occurs. */
         if ( FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFTLogged()  != 0)
         {
            /* !Comment: Setting this condition just because of hardware bug. */
            MAIN_bResExcFltDetEna = TRUE;
         }
         else
         {
            MAIN_bResExcFltDetEna = FALSE;
         }
         
         if(SDMTMEP_Flg2BSW != 0)
         {
            /* !Comment:MCU Reslover sum error request BSW ALIM Off. */
            CCU6_vidExcitationPwmState(ALIM_OFF);
         }
         else
         {
            CCU6_vidExcitationPwmState(ALIM_ON);
         }
         
         if(GSDMTMEP_Flg2BSW != 0)
         {
            /* !Comment:GCU Reslover sum error request BSW ALIM Off. */
            GCCU6_vidExcitationPwmState(ALIM_OFF);
         }
         else
         {
            GCCU6_vidExcitationPwmState(ALIM_ON);
         }

         /* !Comment: Passenger Car do not need Hac mode. */
         FS_UbatLV_U16                    = PMux_u16GetInputVal(ePMUX_Bat_VolSample);
         FS_MotorWindingTemp1_U16         = PMux_u16GetInputVal(ePMUX_MCUMotor1_1_TempSample);
         FS_MotorWindingTemp2_U16         = PMux_u16GetInputVal(ePMUX_MCUMotor1_1_TempSample);
         FS_IO_ExitationDiag_B            = IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1();
         FS_AN_ExitationDiag_U16          = 32;
         FS_CosHDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1();
         FS_CosLDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1();
         FS_SinHDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1();
         FS_SinLDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1();
         FS_AN_P5VHSREF_U16               = PMux_u16GetInputVal(ePMUX_P5VLS_VolSample);
         FS_MecaSpeedRpm_F32              = SDMTMEP_MecaSpeedRpm;
         FS_FTRealTrqRate_F32             = FTCMTTC_RealMecaTrqTgtRate;
         FS_FTResloverFault_B             = SDMTMEP_ResolverAbnormalFlg;
         FS_BatteryVolt_F32               = RCEVHCM_PB1VoltageFild;

         MAIN_vidPduTask1ms();

         FS_1ms();

         FT_HacModeDetn_B                 = FSTCGTC_HacEnable;
         FT_UbatHV_F32                    = FSEVBHV_VoltageFild;
         FT_CoolingTemp_F32               = FSEVETA_TempIgbtLeftFild;
         FT_TorqueTgt_F32                 = FSTCGTC_TorqueTgt;
         FT_I0dqTgt3_F32[0]               = FSTCGTC_I0dqTgt[0];
         FT_I0dqTgt3_F32[1]               = FSTCGTC_I0dqTgt[1];
         FT_I0dqTgt3_F32[2]               = FSTCGTC_I0dqTgt[2];
         FT_U0dqTgt3_F32[0]               = FSTCGTC_U0dqTgt[0];
         FT_U0dqTgt3_F32[1]               = FSTCGTC_U0dqTgt[1];
         FT_U0dqTgt3_F32[2]               = FSTCGTC_U0dqTgt[2];
       
         FT_PwrLmtTqrMax_F32              = FS_VCU_DCU_TorqMax_F32;
         FT_PwrLmtTqrMin_F32              = FS_VCU_DCU_TorqMin_F32;
         FT_SpdInitialValue_F32           = 0;
         FT_VcuDampEnable_B               = TRUE;
         FT_1ms();

         MAIN_bSpeedReadyFlg = MAIN_bSpeedReadyMng();
         if (FALSE != MAIN_bSpeedReadyFlg)
         {
            /* !Comment: Speed over 1500 rpm. */
            CCU6_vidSetMotorSpdRdyFlg(TRUE);
         }
         else
         {
            /* !Comment: Speed under 1500 rpm. */
            CCU6_vidSetMotorSpdRdyFlg(FALSE);
         }
      #endif
   }

   /* !Comment: ESM services requests. */
   if ((MAIN_bVSIStarted) || (MAIN_bBswReadySts))
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         ESMSRV_vidSetCmdReq(ESM_CMD_FT_START,           FSSMACS_CmdFtStartReq);
         ESMSRV_vidSetCmdReq(ESM_CMD_FT_SHUTDOWN,        FTSMACS_CmdFtShutDownRes);
         ESMSRV_vidSetCmdReq(ESM_CMD_SW_SHUTDOWN,        FSSMACS_CmdSwShutDownReq);
         ESMSRV_vidSetCmdReq(ESM_CMD_PWM_OFF,            FTSMACS_CmdPwmOffReq);
         ESMSRV_vidSetCmdReq(ESM_CMD_PWM_DIRECT,         FTSMACS_CmdPwmDirectReq);
      #else
         ESMSRV_vidSetCmdReq(ESM_CMD_SW_SHUTDOWN,        (FALSE == ASWNM_bGetStayAwakeReq()));
      #endif
   }

#ifdef _PLATFORM_GEN_CODE_EMB_
   /*  !Comment: Set Freeze frame of ASW 1ms */
   MAIN_FFDataUpdate_1ms();
#endif

   BSW_vidCORE0_1ms_Tail_Func() ;    // BSW 1MS Period Func - 2026-8-11
}


/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE0_2ms_func                                                         */
/*                                                                                            */
/* !Description : Core0 2ms dispatch used for Main_Task                                       */
/* !Reference   : Rte_ASW_CORE0                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE0_CODE) MAIN_CORE0_2ms_func(void)
{
   MAIN_u16Core0Cnt2++;

#ifdef _PLATFORM_GEN_CODE_EMB_
   /* !Comment: ESM Cmd Response. */
   FT_CmdPwmOffRes_B              = ESMSRV_bGetCmdRes(ESM_CMD_PWM_OFF);
   FT_CmdPwmDirectRes_B           = ESMSRV_bGetCmdRes(ESM_CMD_PWM_DIRECT);

   FT_FaultLevel_U16              = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU);
   FT_CmdFtStartReq_B             = FSSMACS_CmdFtStartReq;
   FT_CmdFtShutDownReq_B          = FSSMACS_CmdFtShutDownReq;
   FT_FTModeReq_U16               = FSSMACS_FTModeReq;

   FT_2ms();
#endif

 /*  !Comment: ESM running. */
   if (MAIN_VSIBenchOnWriteDataC == 0)
   {
      /*  !Comment: VSI started */
      if (BSW_u32VSICounterCkreq >= MAIN_u32VSICntCkreqVSIStartedC)
      {
         /*  !Comment: ESM Cmd Req. */
         if (MAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }
         
         MAIN_bVSIStarted = TRUE;
         /*  !Comment: ESM started */
         if (BSW_u32VSICounterCkreq >= MAIN_u32VSICntCkreqESMStartedC) 
         {
            ESMSRV_vidSetCmdReq(ESM_CMD_SW_START,           1);
            MAIN_bESMStarted = TRUE;
         }
      }
      STFSRV_vidSET_EVENT(ESM, SCHED_5MS);
   }
   else
   {
      /*  !Comment: VSI started */
      if (BSW_u32VSICounterCkreq >= MAIN_u32VSICntCkreqVSIStartedC)
      {
         if (MAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }

         MAIN_bVSIStarted = TRUE;
      }
   }
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE0_5ms_func                                                         */
/*                                                                                            */
/* !Description : Core0 5ms dispatch used for Main_Task                                       */
/* !Reference   : Rte_ASW_CORE0                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE0_CODE) MAIN_CORE0_5ms_func(void)
{
   MAIN_u16Core0Cnt5++;
   MAIN_vidCheckPwDownCond();
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE0_10ms_func                                                        */
/*                                                                                            */
/* !Description : Core0 10ms dispatch used for Main_Task                                      */
/* !Reference   : Rte_ASW_CORE0                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE0_CODE) MAIN_CORE0_10ms_func(void)
{  
   MAIN_u16Core0Cnt10++;
   BSW_vidCORE0_10ms_Head_Func() ;    // BSW 10MS Period Func - 2026-8-11
   MAIN_bBswReadySts = BSW_bGetBswReadySts();

   if ((MAIN_bVSIStarted) || (MAIN_bBswReadySts))
   {
      ESMSRV_vidSetMcuEnaReq(FALSE);

      #ifdef _PLATFORM_GEN_CODE_EMB_
         MAIN_vidAscRecvCond();
         MAIN_vidPduTask10ms();

         /*!Comment: HAC Signal from VCU_2 0x400.*/
         FS_SlideSlopReq_B               = MAIN_MSGu8VCU_MotAutoHoldEn;
         FS_VCU_DCU_ModeReq_U8           = MAIN_MSGu8VCU_MotCtlMode;
         FS_VCU_DCU_TorqSet_F32          = MAIN_MSGf32VCU_MotTrqReq;
         FS_VCU_AKD_Req_B                = MAIN_MSGu8VCU_MotDischrgCmd;
         FS_VCU_PowerOff_Req_B           = FALSE;
         FS_VehicleGear_U8               = MAIN_MSGu8VCU_VehShiftLevel;
         FS_VCU_DCU_SpdSet_F32           = MAIN_MSGf32VCU_MotSpdReq;
         FS_VcuMcuEnableReq_U8           = MAIN_MSGu8VCU_MotPwrEn;
         FS_HandBrake_B                  = FALSE;
         FS_AccPedPos_F32                = 0.0F;
         FS_VCU_DCU_TorqMax_F32          = MAIN_MSGf32VCU_MotTrqLimMax;
         FS_VCU_DCU_TorqMin_F32          = MAIN_MSGf32VCU_MotTrqLimMin;
         FS_KEY_ON_B                     = IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
         FS_FaultLevel_U16               = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU);
         FS_CmdFtStartRes_B              = FTSMACS_CmdFtStartRes;
         FS_CmdFtShutDownRes_B           = FTSMACS_CmdFtShutDownRes;
         FS_FTAclState_U16               = FTSMACS_AclState;
         FS_BSWReadyStatus_B             = BSW_bGetBswReadySts();
         FS_BMS_Ubms_F32                 = 0.0F;
         FS_EXT_CrashOutSts_U8           = 0;     
         MAIN_bAkdAfterAscReq            = FALSE;
         MAIN_bAscFlag                   = CCU6_bGetAscStatus();
         
         FS_MaxMinTorqueAvailable_F32[0] = FTDDLMP_MaxMinTorqueLimitVect[0];
         FS_MaxMinTorqueAvailable_F32[1] = FTDDLMP_MaxMinTorqueLimitVect[1];        
         FS_TorqueSlewRate_F32           = (float)10000;
         FS_PowerModuleTemp_U_U16        = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1();
         FS_PowerModuleTemp_V_U16        = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1();
         FS_PowerModuleTemp_W_U16        = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1();
         FS_DriverBoardTemp_U16          = PMux_u16GetInputVal(ePMUX_WaterChannel_TempSample);
         FS_CommandBoardTempLV_U16       = PMux_u16GetInputVal(ePMUX_CtrlBorad_TempSample);
         FS_CommandBoardTempLV2_U16      = PMux_u16GetInputVal(ePMUX_CtrlBorad_TempSample);      
         FS_CoolingTemp_U16              = PMux_u16GetInputVal(ePMUX_WaterChannel_TempSample);
         FS_CoolTempValidFlag_B          = FALSE;
         FS_MotorWindingDrtGain_F32      = FTASMTP_WndgDrtGain;
         FS_MotorMagnetDrtGain_F32       = 1.0F;
         FS_PowmdlDrtGain_F32            = FTASETP_PmDrtGain;
         FS_EstPowmdlDrtGain_F32         = FTASETP_EstPmDrtGain; 
         FS_MotorAppliedTorque_F32       = FTCMTTC_MecaTorqueTgt;
         FS_Id_ref_F32                   = FTCMTCS_i0dqTgt3[1];
         FS_Iq_ref_F32                   = FTCMTCS_i0dqTgt3[2];
         
         FS_MotorAppliedTorque_F32       = FTCMTTC_RealMecaTorqueTgt;
         FS_P5VPort_U16                  = PMux_u16GetInputVal(ePMUX_P5VHS_VolSample);
                                           
         
         /*OC:10ms*/
         FS_OcRotoringFailFlg_B          = SDMTMEP_OcRotoringFailFlg;
         FS_UdsOcEnable_B                = MAIN_OCT_bGetOcModeEna(eMAIN_UNIT_MCU_INDEX);
         FS_UdsOcStartReq_B              = MAIN_OCT_bGetOcStartFlag(eMAIN_UNIT_MCU_INDEX);
         FS_UdsOcRdResFlag_B             = MAIN_OCT_bGetOcRdResultFlag(eMAIN_UNIT_MCU_INDEX);
         FS_OcCycleFinish_B              = FTSMREF_Cyclefinish;
         
         FS_10ms();
         
         FT_BhvCheckEna_B                = FSSMMAM_EVBHV_CheckEnable;
         FT_PowerModuleTemp_F32          = FSEVETA_TempIgbt;
         FT_MotorWindingTemp2_F32[0]     = FSMTMTA_TempWinding[0];
         FT_MotorWindingTemp2_F32[1]     = FSMTMTA_TempWinding[1];
         
         FT_MecaSpeedRpmTgt_F32          = FSTCGTC_MecaSpeedRpmTgt;         
         
         FT_EXTAntiSlideEnable_B         = TRUE;
         FT_ResThetaRdSurPiOc_F32        = SDMTMEP_ResolverThetaRdSurPiOc;
         FT_Iuvw3Rms_F32[0]              = SDMTLCS_Iuvw3_RmsSum[0];
         FT_Iuvw3Rms_F32[1]              = SDMTLCS_Iuvw3_RmsSum[1];
         FT_Iuvw3Rms_F32[2]              = SDMTLCS_Iuvw3_RmsSum[2];

         FT_10ms();
         SD_10ms();

         /* !Comment: phase current zero compensation with PWM on or not. */
         CCU6_vidSetIuvwZeroCompReq(FALSE);

         /* !Comment: OC relate variables. */
         MAIN_OCT_vidSetOcFinishFlg(eMAIN_UNIT_MCU_INDEX,  FSSMACS_OcFinish);
         MAIN_OCT_vidSetOcFailureFlg(eMAIN_UNIT_MCU_INDEX, FSSMACS_OcFailure);
         MAIN_OCT_vidSetOcNotRatFlg(eMAIN_UNIT_MCU_INDEX,  SDMTMEP_IllegalResParFlt);

         /*Rx from CAN,update to APP*/
         if((FSSMACS_FS_INIT == FSSMACS_AclState) || (FSSMACS_FS_STANDBY == FSSMACS_AclState) || 
         (FSSMACS_FS_PRECHARGE == FSSMACS_AclState))
         {
            MAIN_MSGu8MCU_SysSts = 0x03;/*LV Ready*/
            MAIN_MSGu8MCU_MotWorkSts = 0x03;/*Close*/
            MAIN_MSGu8MCU_MotWorkMode = 0;
         }
         else if((FSSMACS_FS_HIGHVOLT_STANDBY == FSSMACS_AclState) || (FSSMACS_FS_START_FT == FSSMACS_AclState) ||
                  (FSSMACS_FS_READY == FSSMACS_AclState) || (FSSMACS_FS_SHUTDOWN_FT == FSSMACS_AclState))
         {
            MAIN_MSGu8MCU_SysSts = 0x07;/*HV Ready*/
            MAIN_MSGu8MCU_MotWorkSts = 0x04;/*Ready*/
            MAIN_MSGu8MCU_MotWorkMode = 0;
         }
         else if(FSSMACS_FS_OPERATIONAL_FT == FSSMACS_AclState)
         {
            MAIN_MSGu8MCU_SysSts = 0x08;/*OPERATIONAL*/
            MAIN_MSGu8MCU_MotWorkMode = MAIN_MSGu8VCU_MotCtlMode;

            if(MAIN_MSGf32MCU_MotSpd * MAIN_MSGf32MCU_MotTq < 0)
            {
               MAIN_MSGu8MCU_MotWorkSts = 0x02;/*Generation*/
            }
            else
            {
               MAIN_MSGu8MCU_MotWorkSts = 0x01;/*Consumption*/
            }
         }
         else if((FSSMACS_FS_OPERATIONAL_AKD == FSSMACS_AclState) || (FSSMACS_FS_EXIT_DISCHARGE == FSSMACS_AclState) ||
                 (FSSMACS_FS_AKD_FAIL == FSSMACS_AclState) || (FSSMACS_FS_START_AKD == FSSMACS_AclState))
         {
            MAIN_MSGu8MCU_SysSts = 0xA;/*Discharge mode*/
            MAIN_MSGu8MCU_MotWorkSts = 0x01;/*Consumption*/
            MAIN_MSGu8MCU_MotWorkMode = 0;
         }
         else
         {
            MAIN_MSGu8MCU_SysSts = 0x00;/*Initial*/
            MAIN_MSGu8MCU_MotWorkSts = 0x03;/*Close*/
            MAIN_MSGu8MCU_MotWorkMode = 0;
         }
         
         MAIN_MSGf32MCU_MotRotationValue = SD_AutoPhasingAngle_F32 * 180.0f;
         MAIN_MSGf32MCU_MotSpd           = FSTCGTC_VehicleDirMecaSpeedRpm;
         MAIN_MSGf32MCU_MotTq            = FTCMTTC_RealMecaTorqueTgt * MAIN_MINUS_ONE;
         MAIN_MSGf32MCU_SpdOutputLimit   = FTDDLMP_MaxMinSpdLimitVect[0];
         MAIN_MSGf32MCU_TqOutputLimit    = FTDDLMP_MaxMinTorqueLimitVect[0];
         MAIN_MSGf32MCU_MotOriginalSpd   = FSTCGTC_VehicleDirMecaSpeedRpm;
         MAIN_MSGf32MCU_MotOriginalTrq   = FTCMTTC_RealMecaTorqueTgt * MAIN_MINUS_ONE;//vehicle need to reverse the sign of torque
         MAIN_MSGf32MCU_DCCurrent        = FSEVIBT_IbatHVFild;
         MAIN_MSGf32MCU_DCVoltage        = FSEVBHV_VoltageFild;
         MAIN_MSGf32MCU_ACCurrentRMS     = FTMTLCS_Iuvw3_Rms[0];
         MAIN_MSGf32MCU_ACVoltageRMS     = FTCMCCS_UdqNorm;
         MAIN_MSGu8MCU_ErrSts            = FS_FaultLevel_U16;
         

         /*Send ErrCode2Vehicle*/
         MAIN_MSGu8MCU1_FaultCode   = MAIN_REC_u8RdErrCode(eMAIN_REC_BUF_IDX_MCU1);
         MAIN_MSGu8MCU2_FaultCode   = MAIN_REC_u8RdErrCode(eMAIN_REC_BUF_IDX_MCU2);
         MAIN_MSGu8DCAC_S_FaultCode = MAIN_REC_u8RdErrCode(eMAIN_REC_BUF_IDX_EPS);
         MAIN_MSGu8DCAC_B_FaultCode = MAIN_REC_u8RdErrCode(eMAIN_REC_BUF_IDX_ACM);
      #endif
   }

   /* Set Freeze frame of ASW 10ms */
   #ifdef _PLATFORM_GEN_CODE_EMB_
      MAIN_FFDataUpdate_10ms();
   #endif
   MAIN_MsgScaleTxFaults();
   BSW_vidCORE0_10ms_Tail_Func() ;    // BSW 10MS Period Func - 2026-8-11
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE0_100ms_func                                                       */
/*                                                                                            */
/* !Description : Core0 100ms dispatch used for Main_Task                                     */
/* !Reference   : Rte_ASW_CORE0                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE0_CODE) MAIN_CORE0_100ms_func(void)
{  
   MAIN_u16Core0Cnt100++;
   
#ifdef _PLATFORM_GEN_CODE_EMB_
   FS_100ms();
   FT_100ms();  

   MAIN_MSGf32MCU_MotTemp          = FSMTMTA_TempWindingMax;
   MAIN_MSGf32MCU_ECUTemp          = FSEVETA_TempIgbtLeftFild;

   MAIN_vidPduTask100ms();
#endif
   BSW_vidCORE0_100ms_Func() ;   // BSW 100MS Period Func - 2026-6-10
}

/******************************************************************************/
/*                                                                            */
/* !Task        : MAIN_CORE0_200ms_func                                       */
/* !Trigger     : Time (200ms)                                                */
/* !Description : This task has a 200ms period                                */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, ASW_CORE0_CODE) MAIN_CORE0_200ms_func(void)
{
   MAIN_u16Core0Cnt200++;
   
   MAIN_OCT_vidOcDataMng();
   MAIN_CAL_vidCalibDataMng();

   MAIN_vidPduTask200ms();

   /* !Comment: Allow MCU working in propulsive and regenerative mode. */
   
   if(MAIN_u16Core0Cnt200 % 3 == 0)
   {
      FaultManualErase();
   }

#ifdef _PLATFORM_GEN_CODE_EMB_
   uint16 * MAIN_au16CalibBuf = MAIN_CAL_pu16GetCalDataBuf(eMAIN_CALIB_IDX_MCU1);
   FT_ExtCurrentGain3_U16[0]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_UI_INDEX];
   FT_ExtCurrentGain3_U16[1]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VI_INDEX];
   FT_ExtCurrentGain3_U16[2]  = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_WI_INDEX];
   FS_BusVoltageGain_U16      = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VO_INDEX];
#endif
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE1_1ms_func                                                         */
/*                                                                                            */
/* !Description : Core1 1ms dispatch used for Main_Task                                       */
/* !Reference   : Rte_ASW_CORE1                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE1_CODE) MAIN_CORE1_1ms_func(void)
{ 
   BSW_vidCORE1_1ms_Func() ;   // BSW 1MS Period Func - 2026-6-10
   if (MAIN_bVSIStarted)
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
      FT_Edit1ms();
      #endif
   }
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : MAIN_CORE1_10ms_func                                                        */
/*                                                                                            */
/* !Description : Core1 10ms dispatch used for Main_Task                                      */
/* !Reference   : Rte_ASW_CORE1                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE1_CODE) MAIN_CORE1_10ms_func(void)
{
   BSW_vidCORE1_10ms_Func() ;   // BSW 10MS Period Func - 2026-6-10
   /* EAS_vidAuthStateMng(); */
}
#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

#define START_CODE_FAST_CPU1_SECTION
#include "MemMap.h"
/******************************************************************************/
/*                                                                            */
/* !Task        : MAIN_vidVSITreatment                                        */
/* !Trigger     : Interrupt SPI VSI, end of receive                           */
/*              : - Nominal freq. : 10KHz (100 micro s)                       */
/* !Description :                                                             */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidVSITreatment(void)
{
   uint8 u8LocFaultLevel = 0;
   float32 f32LocMecaSpeedRpm = 0;
   boolean bLocIgbtLowFltLev = FALSE;
   boolean bLocIgbtHigFltLev = FALSE;
   boolean bLocPwmOnFlg = FALSE;
   
   MAIN_startTime = SYS_u32GET_STM1_TIM0();
   
   /* !Comment: management Position B. */
   MAIN_u32PosBTimeStamp = MODULE_GTM.TBU.CH1_BASE.U;
   MAIN_u32PosBTimeStamp &= 0x00FFFFFF;

   /* !Comment: Don't put too much code before me. */
   CCU6_vidSwitchPwmUpdEvent();
   
   BSW_u32VSICounterCkreq++;
   
   u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU);

#ifdef _PLATFORM_GEN_CODE_EMB_
   while(IfxCpu_acquireMutex(&MAIN_Asc0_Lock) != TRUE);
#endif
   if(MAIN_u32PosBTimeStamp >= MAIN_u32PosATimeStamp)
   {
      MAIN_s32PosA2BDeltTime = MAIN_u32PosBTimeStamp - MAIN_u32PosATimeStamp;
   }
   else
   {
      MAIN_s32PosA2BDeltTime = MAIN_u32PosBTimeStamp + 0x01000000 - MAIN_u32PosATimeStamp;
   }
   MAIN_s32PosA2BDeltTime  = MAIN_s32PosA2BDeltTime - MAIN_s32CurHardDelayC + MAIN_s32ResHardDelayC;
   MAIN_s32PosA2BDeltTime  = MAIN_s32PosA2BDeltTime + MAIN_s32SampleDelayC;
   MAIN_f32VsiPwmPeriod    = (float)(MAIN_u16PWMPeriodVal + 1) * SYS_T12_CLK_PERD;
   
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* !Comment: Start read angle and anglur speed and timestamp. */
   FT_PosiCurrentDelay_F32 = ( (float)MAIN_s32PosA2BDeltTime) / SYS_SEC_TO_CLK_GAIN;
   FT_ElecSpeedRds_F32 = MAIN_f32ElecSpeedRds;
   if((MAIN_f32ThetaElecRdSurPi > (-100.0f))
   && (MAIN_f32ThetaElecRdSurPi < 100.0f))
   {
      FT_ResloverThetaRdSuiPi_F32 = MAIN_f32ThetaElecRdSurPi;
   }
   FT_VsiPwmPeriod_F32    = MAIN_f32VsiPwmPeriod;
   FT_MecaSpeedRpm_F32    = MAIN_f32MecaSpeedRpm;
   FT_MecaSpeedRds_F32    = MAIN_f32MecaSpeedRds;
   FT_ErrThetaRdSurPi_F32 = MAIN_f32ErrThetaRdSurPi;
   IfxCpu_releaseMutex(&MAIN_Asc0_Lock);
   FT_PwmZeroMatch_B = CCU6_bGetZeroMatchFlg();

   if(FSSMACS_NormalStartFtFlg)
   {
      FT_FtRunFlg_U16 = (uint16)CCU6_bGetPwmRuningFlg(); 
   }
   else
   {
      FT_FtRunFlg_U16 = 0;
   }

   if ((MAIN_bVSIStarted) || (MAIN_bBswReadySts))
   {
      FT_VsiTreatmentPosi();
      BSW_vidProgFlowMon01(MAIN_ku32ProgFlowSeq01Step01C, FALSE);
   }
#endif

   if ( (MAIN_bVSIStarted) || (MAIN_bBswReadySts))
   {
   #ifdef _PLATFORM_GEN_CODE_EMB_
      FS_UbatHV_U16        = IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();    
      FT_Iuvw3_U16[0]      = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1();
      FT_Iuvw3_U16[1]      = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1();
      FT_Iuvw3_U16[2]      = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1();
      
      FT_DutyCycle3_F32[0] = 0.0f;
      FT_DutyCycle3_F32[1] = 0.0f;
      FT_DutyCycle3_F32[2] = 0.0f;
  
      FT_RandomNum_U32 = MAIN_u32PosBTimeStamp;
  
      FS_Iuvw3_F32[0]      = FTMTLCS_Iuvw3[0];
      FS_Iuvw3_F32[1]      = FTMTLCS_Iuvw3[1];
      FS_Iuvw3_F32[2]      = FTMTLCS_Iuvw3[2];
      FS_DutyCycle3_F32[0] = FTCIVDC_DutyCycle3[0];
      FS_DutyCycle3_F32[1] = FTCIVDC_DutyCycle3[1];
      FS_DutyCycle3_F32[2] = FTCIVDC_DutyCycle3[2];

      FS_100us();
      FT_VsiTreatment();
      BSW_vidProgFlowMon01(MAIN_ku32ProgFlowSeq01Step02C, FALSE);    
      /* !Comment: Set PWM frequency. FreqRaw = 25000000/freq(hz) */
      if (FTCIVDC_PwmFrequence >= 1000)
      {
         MAIN_u16PWMPeriodVal = (uint16)( (float)(SYS_T12_CLK_NUM_1S / FTCIVDC_PwmFrequence) - 1); 
         /* Daniel: Value = Frequency(hz) / 100; FTEVEIT use to calculate commutation losses */
         FT_VsiPwmRatioRes_U8 = (uint8)(FTCIVDC_PwmFrequence * 0.01);
      }

      /* !Comment: Set PWM Period. */
      CCU6_vidSetPwmHlPeriod(MAIN_u16PWMPeriodVal);
      CCU6_vidSetPwmHlDuty(FTCIVDC_DutyCycle3[2], FTCIVDC_DutyCycle3[1], FTCIVDC_DutyCycle3[0]);

      bLocPwmOnFlg = CCU6_bGetPwmRuningFlg();

      if (bLocPwmOnFlg)
      {
         /* !Comment: IGBT Fault check. */
         bLocIgbtHigFltLev = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1();
         bLocIgbtLowFltLev = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1();

         if (FALSE == bLocIgbtLowFltLev)
         {
            if (MAIN_u8IgbtLowFltCnt < MAIN_u8IgbtFltConfirmCntC)
            {
               MAIN_u8IgbtLowFltCnt++;
            }
         }
         else
         {
            if (MAIN_u8IgbtLowFltCnt < MAIN_u8IgbtFltConfirmCntC)
            {
               MAIN_u8IgbtLowFltCnt = 0;
            }
         }

         if (FALSE == bLocIgbtHigFltLev)
         {
            if (MAIN_u8IgbtHighFltCnt < MAIN_u8IgbtFltConfirmCntC)
            {
               MAIN_u8IgbtHighFltCnt++;
            }
         }
         else
         {
            if (MAIN_u8IgbtHighFltCnt < MAIN_u8IgbtFltConfirmCntC)
            {
               MAIN_u8IgbtHighFltCnt = 0;
            }
         }
      }
      
      BSW_vidProgFlowMon01(MAIN_ku32ProgFlowSeq01Step03C, TRUE);      
      if ( (FTMTLCS_Iuvw3[0] > MAIN_f32UvwOvCurrThdC) || (FTMTLCS_Iuvw3[0] < ((-1)* MAIN_f32UvwOvCurrThdC)) )
      {
         MAIN_bSoftOvCurrPhsUFlg = TRUE;
      }
      if ( (FTMTLCS_Iuvw3[1] > MAIN_f32UvwOvCurrThdC) || (FTMTLCS_Iuvw3[1] < ((-1)* MAIN_f32UvwOvCurrThdC) ) )
      {
         MAIN_bSoftOvCurrPhsVFlg = TRUE;  
      }
      if ( (FTMTLCS_Iuvw3[2] > MAIN_f32UvwOvCurrThdC) || (FTMTLCS_Iuvw3[2] < ((-1)* MAIN_f32UvwOvCurrThdC) ) )
      {
         MAIN_bSoftOvCurrPhsWFlg = TRUE;
      }

      MAIN_u16VadcBhv  =  IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();

      /* !Comment: If HV over voltage satisfied, trigger ASC immediately. */
      if  (MAIN_u16VadcBhv > MAIN_u16OverBhvThdC) 
      {
         CCU6_vidSetHvOverFlg(TRUE);
      }
      MAIN_bSoftOvBhvFlg = CCU6_bGetHwFaultDcOvVolt();

      if(SDMTMEP_MecaSpeedRpm >= 16000.0)
      {
         f32LocMecaSpeedRpm = 32000.0;
      }
      else if(SDMTMEP_MecaSpeedRpm <= -16000.0)
      {
         f32LocMecaSpeedRpm = 0;
      }
      else
      {
         f32LocMecaSpeedRpm = SDMTMEP_MecaSpeedRpm + 16000.0;
      }
   #endif
   }

   if((u8LocFaultLevel >= DSM_FAULT_LEVEL_EMRG_STOP)
   || (TRUE == MAIN_bSoftOvCurrPhsUFlg)
   || (TRUE == MAIN_bSoftOvCurrPhsVFlg)
   || (TRUE == MAIN_bSoftOvCurrPhsWFlg)
   || (TRUE == MAIN_bSoftOvBhvFlg)
   || (MAIN_u8IgbtLowFltCnt >= MAIN_u8IgbtFltConfirmCntC)
   || (MAIN_u8IgbtHighFltCnt >= MAIN_u8IgbtFltConfirmCntC))
   {
      CCU6_vidSoftTrapTrigger(FALSE);
   }
   else
   {
      CCU6_vidSoftTrapTrigger(TRUE);
   }

#ifdef _PLATFORM_GEN_CODE_EMB_ 
   MAIN_FFDataUpdate_100us();
#endif

   /*----------------------------------------------------------------------------*/
   MAIN_Wait(MAIN_u32WaitValueVSITreatment);
   if (BSW_bSPYBenchOnC != 0)
   {
      SPY_vidWrBuf();
      if((MAIN_u8TestVar1 != 0)
      || (u8LocFaultLevel >= DSM_FAULT_LEVEL_EMRG_STOP))
      {
         SPY_vidStopDataAcq();
         /* MAIN_u8TestVar1 = 0;*/
      }
   }
   MAIN_EndTime = SYS_u32GET_STM1_TIM0();

   if(MAIN_EndTime >= MAIN_startTime)
   {
      MAIN_TotalTime = MAIN_EndTime - MAIN_startTime;
   }
}
#define STOP_CODE_FAST_CPU1_SECTION
#include "MemMap.h"

#define CPU0_START_SEC_CODE
#include "MemMap.h"
/*****************************************************************************
*
* !Runnable    : MAIN_vidPositionTreatment
* !Trigger     : Interrupt of resolver sin/cos ADC convert notification
* !Description : Run by Core0, Calculate Position A. This function should be 
*                efficient and excute as fast as possible.
*  
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void MAIN_vidPositionTreatment(void)
{
   uint32 u32LocCore0TimStamp;
   u32LocCore0TimStamp   = SYS_u32GET_STM1_TIM0();
   Core1_PositionStartTime = u32LocCore0TimStamp;

   /* !Comment: Start calculate new position A information. */
#ifdef _PLATFORM_GEN_CODE_EMB_
      if (SDMTMEP_ResolverParamStoreEnC)
      {
         if(TRUE == BSW_bOCDataNotRation)
         {
            SD_OffsetCosTrim_F32 = (float)MAIN_aks32OCTrimNvm_def[0];
            SD_OffsetSinTrim_F32 = (float)MAIN_aks32OCTrimNvm_def[1];
            SD_GainCosTrim_F32 = (float)(MAIN_aks32OCTrimNvm_def[2] / OC_TRIM_DATA_GAIN);
            SD_GainSinTrim_F32 = (float)(MAIN_aks32OCTrimNvm_def[3] / OC_TRIM_DATA_GAIN);
            SD_AutoPhasingAngle_F32 = (float)(MAIN_aks32OCTrimNvm_def[4] / OC_TRIM_DATA_GAIN);
         }
         else
         {
            SD_OffsetCosTrim_F32 = (float)MAIN_as32OCTrimNvm[0];
            SD_OffsetSinTrim_F32 = (float)MAIN_as32OCTrimNvm[1];
            SD_GainCosTrim_F32 = (float)(MAIN_as32OCTrimNvm[2] / OC_TRIM_DATA_GAIN);
            SD_GainSinTrim_F32 = (float)(MAIN_as32OCTrimNvm[3] / OC_TRIM_DATA_GAIN);
            SD_AutoPhasingAngle_F32 = (float)(MAIN_as32OCTrimNvm[4] / OC_TRIM_DATA_GAIN);
         }
      }

      SD_ResolverSinCos2_U16[0]  = (uint16)IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1();
      SD_ResolverSinCos2_U16[1]  = (uint16)IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1();
      SD_MTMEPState_U16          = FTSMMAM_MTMEP_State;
      SD_ImposedThetaRdSurPi_F32 = FTSMREF_ImposedThetaRdSurPi;
      SD_RotoringCalEnable_B     = FTSMREF_RotoringCalEnable;
      SD_RotoringCalStart_B      = FTSMREF_RotoringCalStart;
      SD_RotoringCalFinish_B     = FTSMREF_RotoringCalFinish;
      SD_AutophasingCal_F32      = FTSMREF_AutoPhasingCal;
      SD_FtModeReq_U16           = FSSMACS_FTModeReq;
      SD_PositionTreatment();
      MAIN_vidMotorSpeedEst(FTMTLCS_Iuvw3[1]);

      MAIN_f32EmailElecSpeedRds     = SDMTMEP_ElecSpeedRds;
      MAIN_f32EmailThetaElecRdSurPi = SDMTMEP_ThetaElecRdSurPi;
      //MAIN_f32EmailNextThetaElecRdSurPi = SDMTMEP_NextThetaElecRdSurPi;
      MAIN_f32EmailMecaSpeedRpm     = SDMTMEP_MecaSpeedRpm;
      MAIN_f32EmailMecaSpeedRds     = SDMTMEP_MecaSpeedRds;
      MAIN_f32EmailErrThetaRdSurPi  = SDMTMEP_ErrorThetaElecRdSurPi;
#endif
   /* !Comment: TimeA must be valued after other Position A variables. */
   MAIN_u32EmailPosATimeStamp = (uint32)((*MCS_pu32VsiGtmPosSampleTime) & 0x00FFFFFF);

   MAIN_u32PosTreatCkreq++;

   while(IfxCpu_acquireMutex(&MAIN_Asc0_Lock) != TRUE);
   MAIN_f32ElecSpeedRds     = MAIN_f32EmailElecSpeedRds;
   MAIN_f32ThetaElecRdSurPi = MAIN_f32EmailThetaElecRdSurPi;
   MAIN_f32MecaSpeedRpm     = MAIN_f32EmailMecaSpeedRpm;
   MAIN_f32MecaSpeedRds     = MAIN_f32EmailMecaSpeedRds;
   MAIN_f32ErrThetaRdSurPi  = MAIN_f32EmailErrThetaRdSurPi;
   MAIN_u32PosATimeStamp    = MAIN_u32EmailPosATimeStamp;
   IfxCpu_releaseMutex(&MAIN_Asc0_Lock);

   FR_vidEcuMainHandler(eFR_MGTCU_INDEX, 100);
   
   MAIN_u32EmailCkreq++;
   /* !Comment: For debug purpose. */
   MAIN_s32Email2PosTreqDiff = MAIN_u32EmailCkreq - MAIN_u32PosTreatCkreq;
   Core1_PositionStopTime = SYS_u32GET_STM1_TIM0();
   
   if(Core1_PositionStopTime >= Core1_PositionStartTime)
   {
      Core1_PositionTotalTime = Core1_PositionStopTime - Core1_PositionStartTime;
   }
}

#define CPU0_STOP_SEC_CODE
#include "MemMap.h"

#define CPU1_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Runnable    : MAINHARD_vidInit function                                   */
/* !Trigger     : Main Function                                               */
/* !Description :                                                             */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
static void MAINHARD_vidInit(void)
{
   /*----------------------------------------------------------------------------*/
   /* Initialization: Debug variables                                            */
   /*----------------------------------------------------------------------------*/
   MAIN_u8TestVar1                   = 0;
   MAIN_u32TestVar2                  = 0;
   MAIN_u32PosTreatCkreq             = 0;
   MAIN_u32EmailCkreq                = 0;
   MAIN_u32WaitValueVSITreatment     = 0;
   MAIN_s32PosA2BDeltTime            = 0;
   MAIN_bBswReadySts                 = FALSE;
   MAIN_bResExcFltDetEna             = FALSE;
   MAIN_f32ElecSpeedRds              = 0;
   MAIN_f32ThetaElecRdSurPi          = 0;
   MAIN_f32VsiPwmPeriod              = 0;
   MAIN_f32MecaSpeedRpm              = 0;
   MAIN_f32MecaSpeedRds              = 0;
   MAIN_f32ErrThetaRdSurPi           = 0;
   MAIN_f32EmailElecSpeedRds         = 0;
   MAIN_f32EmailThetaElecRdSurPi     = 0;
   MAIN_f32EmailMecaSpeedRpm         = 0;
   MAIN_f32EmailMecaSpeedRds         = 0;
   MAIN_f32EmailErrThetaRdSurPi      = 0;
   MAIN_u32EmailPosATimeStamp        = 0;
   MAIN_bSoftOvCurrPhsUFlg           = FALSE;
   MAIN_bSoftOvCurrPhsVFlg           = FALSE;
   MAIN_bSoftOvCurrPhsWFlg           = FALSE;
   MAIN_bAkdAfterAscReq              = FALSE;
   MAIN_u16IuPositiveCnt             = 0;
   MAIN_u16IuPositiveSum             = 0;
   MAIN_u16IuNegtiveCnt              = 0;
   MAIN_u16IuNegtiveSum              = 0;
   MAIN_u32IuCycleTim                = 0;
   MAIN_f32IuFrequency               = 0;
   MAIN_f32IuPeriod                  = 0;
   MAIN_f32MotSpdEst                 = 0;
   MAIN_bSpeedReadyFlg               = FALSE;
   MAIN_u16IuCycleCnt                = 0;
   MAIN_u16IuMiddleCnt               = 0;
   MAIN_u16IuMiddleSum               = 0;
   MAIN_bSpdReadyEst                 = 0;
   MAIN_u16SpdReadyEstCnt            = 0;
   MAIN_u16VadcBhv                   = 0;
   MAIN_bSoftOvBhvFlg                = FALSE;
   MAIN_bDflashWriteReq              = FALSE;
   MAIN_bProgConditionOk             = FALSE;   

   DFM_vidModuleInit();
   FR_vidModuleInit();
}

/******************************************************************************/
/*                                                                            */
/* !Runnable    : MAIN_MsgScaleTxFaults function                              */
/* !Trigger     : Main Function                                               */
/* !Description : Update DCU_Fault0 - DCU_Fault15 signals                     */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
static void MAIN_MsgScaleTxFaults(void)
{
   uint8 u8Index = 0;
   MAIN_ECPParam tLocECPParam;

   MAIN_REC_vidClrErrCode(eMAIN_REC_BUF_IDX_MCU1);
   MAIN_ECP_vidPollingFault(eMAIN_REC_BUF_IDX_MCU1, &tLocECPParam, sizeof(tLocECPParam));

   for(u8Index = 0; u8Index < 16; u8Index++)
   {
      MAIN_u8DEV_Fault[u8Index] = tLocECPParam.u8LocFaultCode[u8Index];
   }
}

/******************************************************************************/
/*                                                                            */
/* !Runnable    : MAIN_bInitOcTrimData                                        */
/* !Trigger     :                                                             */
/* !Description :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : RLIU                                                        */
/******************************************************************************/
boolean MAIN_bInitOcTrimData(void)
{
   boolean bLocalDataValid = TRUE;
   
#ifdef _PLATFORM_GEN_CODE_EMB_
   SD_OffsetCosTrim_F32    = (float)MAIN_as32OCTrimNvm[0];
   SD_OffsetSinTrim_F32    = (float)MAIN_as32OCTrimNvm[1];
   SD_GainCosTrim_F32      = (float)((float)MAIN_as32OCTrimNvm[2] / OC_TRIM_DATA_GAIN);
   SD_GainSinTrim_F32      = (float)((float)MAIN_as32OCTrimNvm[3] / OC_TRIM_DATA_GAIN);
   SD_AutoPhasingAngle_F32 = (float)((float)MAIN_as32OCTrimNvm[4] / OC_TRIM_DATA_GAIN);
#endif
   
#ifdef _PLATFORM_GEN_CODE_SA_
   float* Local_pf32OcTrim = NULL_PTR;

   Local_pf32OcTrim  = &SAMTSES_OffsetCosTrimC;
   *Local_pf32OcTrim = (float)MAIN_as32OCTrimNvm[0];
   
   Local_pf32OcTrim  = &SAMTSES_OffsetSinTrimC;
   *Local_pf32OcTrim = (float)MAIN_as32OCTrimNvm[1];
   
   Local_pf32OcTrim  = &SAMTSES_GainCosTrimC;
   *Local_pf32OcTrim = (float)(MAIN_as32OCTrimNvm[2] / OC_TRIM_DATA_GAIN);
   
   Local_pf32OcTrim  = &SAMTSES_GainSinTrimC;
   *Local_pf32OcTrim = (float)(MAIN_as32OCTrimNvm[3] / OC_TRIM_DATA_GAIN);

   Local_pf32OcTrim  = &SAMTSES_AutoPhasingAngleC;
   *Local_pf32OcTrim = (float)(MAIN_as32OCTrimNvm[4] / OC_TRIM_DATA_GAIN);
#endif
   
   return bLocalDataValid;
}

/******************************************************************************
*  
* !FuncName    : MAIN_vidOcDataRestore  
* !Description : OC Data store after online calibration finished.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void MAIN_vidOcDataRestore(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   MAIN_as32OCTrimNvm[0] = (sint32)SDMTMEP_OffsetCosTrimCal;
   MAIN_as32OCTrimNvm[1] = (sint32)SDMTMEP_OffsetSinTrimCal;
   MAIN_as32OCTrimNvm[2] = (sint32)(SDMTMEP_GainCosTrimCal * OC_TRIM_DATA_GAIN);
   MAIN_as32OCTrimNvm[3] = (sint32)(SDMTMEP_GainSinTrimCal * OC_TRIM_DATA_GAIN);
   MAIN_as32OCTrimNvm[4] = (sint32)(FTSMREF_AutoPhaseCalLock * OC_TRIM_DATA_GAIN);
#endif
}

/******************************************************************************
*  
* !FuncName    : MAIN_f32GetAutophsingAngle  
* !Description : 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
float MAIN_f32GetAutophsingAngle(void)
{
   float f32AutoPhsAngRsp = 0;

#ifdef _PLATFORM_GEN_CODE_EMB_
   float f32AutophsAng01 = 0;
   float f32AutoPhsAng02 = 0;
   
   f32AutophsAng01 = SD_AutoPhasingAngle_F32;
   f32AutoPhsAng02 = SD_AutoPhasingAngle_F32;

   f32AutophsAng01 = f32AutophsAng01 * (2048.0f);
   
   if (f32AutoPhsAng02 < 1)
   {
      f32AutoPhsAngRsp = 2048 - f32AutophsAng01;
   }
   else 
   {
      f32AutoPhsAngRsp = 3 * 2048 - f32AutophsAng01;
   }
#endif

   return f32AutoPhsAngRsp;
}



/******************************************************************************
*  
* !FuncName    : MAIN_bSetSaforiAutophsAngC  
* !Description : 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean MAIN_bSetSaforiAutophsAngC(const uint16 u16AutophsAng)
{
   float* pf32LocValueAddr;
   float f32LocAutoPhsAng;
   
   /* !Comment: Get angle from bar code. */
   f32LocAutoPhsAng = (float)u16AutophsAng;
   if (f32LocAutoPhsAng < 2048)
   {
      f32LocAutoPhsAng = f32LocAutoPhsAng + 2048;
   }
   else
   {
      f32LocAutoPhsAng = f32LocAutoPhsAng - 2048;
   }
   
   f32LocAutoPhsAng = (f32LocAutoPhsAng / 4096 ) * 360;
   f32LocAutoPhsAng = (f32LocAutoPhsAng * (-1.0f) ) + 360;
   f32LocAutoPhsAng = f32LocAutoPhsAng / 180;

   if(f32LocAutoPhsAng > 1)
   {
      f32LocAutoPhsAng = f32LocAutoPhsAng - 2;
   }

#ifdef _PLATFORM_GEN_CODE_EMB_
   pf32LocValueAddr = &SDMTMEP_AutoPhasingAngleC;
   *pf32LocValueAddr = f32LocAutoPhsAng;
#endif

   MAIN_as32OCTrimNvm[4] = (sint32)(f32LocAutoPhsAng * OC_TRIM_DATA_GAIN);
   /* Call Store Task */
   MAIN_OCT_SetOcDataStoreReq(TRUE);

   return TRUE;
}

/******************************************************************************
*  
* !FuncName    : MAIN_vidMotorSpeedEst
* !Description : Estimate motor speed according to Current frequency.
* !Task: 100us
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void MAIN_vidMotorSpeedEst(const float f32Iu)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   if (f32Iu >= 10)
   {
      if (MAIN_u16IuPositiveCnt < 0xFFFF)
      {
         MAIN_u16IuPositiveCnt++;
      }

      if (MAIN_u16IuNegtiveCnt > 0)
      {
         MAIN_u16IuNegtiveSum = MAIN_u16IuNegtiveCnt;
         MAIN_u16IuNegtiveCnt = 0;
      }

      if (MAIN_u16IuMiddleCnt > 0)
      {
         MAIN_u16IuMiddleSum = MAIN_u16IuMiddleCnt;
         MAIN_u16IuMiddleCnt = 0;
      }
   }
   else if (f32Iu <= (-10))
   {
      if (MAIN_u16IuPositiveCnt > 0)
      {
         MAIN_u16IuPositiveSum = MAIN_u16IuPositiveCnt;
         MAIN_u16IuPositiveCnt = 0;
      }

      if (MAIN_u16IuNegtiveCnt < 0xFFFF)
      {
         MAIN_u16IuNegtiveCnt++;
      }
   }
   else
   {
      if (MAIN_u16IuMiddleCnt < 0xFFFF)
      {
         MAIN_u16IuMiddleCnt++;
      }
      else
      {
         MAIN_u16IuMiddleSum = MAIN_u16IuMiddleCnt;
      }
   }

   if (MAIN_u16IuCycleCnt < 450)
   {
      MAIN_u16IuCycleCnt++;
      MAIN_u32IuCycleTim += (MAIN_u16IuPositiveSum + MAIN_u16IuNegtiveSum + MAIN_u16IuMiddleSum);
   }
   else
   {
      MAIN_u32IuCycleTim = MAIN_u32IuCycleTim / MAIN_u16IuCycleCnt;
      MAIN_f32IuPeriod   = MAIN_u32IuCycleTim * 0.0001;
      MAIN_u16IuCycleCnt = 0;
      MAIN_u32IuCycleTim = 0;
   }

   if (MAIN_f32IuPeriod > 0)
   {
      MAIN_f32IuFrequency = (1 / MAIN_f32IuPeriod);
      /* !Comment: motor speed estimate. */
      MAIN_f32MotSpdEst = (MAIN_f32IuFrequency / SDMTMEP_MecaRpmToElecRdsC) * 6.28318;
   }
   else
   {
      MAIN_f32MotSpdEst = FSSMACS_SpeedReadyThresholdC * 2;
   }

  if (MAIN_f32MotSpdEst <= FSSMACS_SpeedReadyThresholdC)    /* Todo */
   {
      if (MAIN_u16SpdReadyEstCnt < MAIN_ku16SpdReadyEstConfirmC)
      {
         MAIN_u16SpdReadyEstCnt++;
      }
      else
      {
         MAIN_bSpdReadyEst = FALSE;
      }
   }
   else
   {
      MAIN_bSpdReadyEst = TRUE;
      MAIN_u16SpdReadyEstCnt = 0;
   }
#endif
}

/******************************************************************************
*  
* !FuncName    : MAIN_bSpeedReadyMng
* !Description : Speed ready signal management, 
* according to resolver and current estimate.
* !Task: 1ms
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean MAIN_bSpeedReadyMng(void)
{
   boolean bLocSpeedReady = FALSE;

#ifdef _PLATFORM_GEN_CODE_EMB_
   if ( ( FaultDetn_u16Read_FSMTRDG_Logged() != 0) ||
         ( FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFTLogged()  != 0) ||
         ( FaultDetn_u16Read_SDMTMEP_CosVccLogged()  != 0) || 
         /*( FaultDetn_u16Read_SDMTMEP_SinVccLogged()  != 0) ||*/
         ( FaultDetn_u16Read_SDMTMEP_CosGndLogged()  != 0)
         /*( FaultDetn_u16Read_SDMTMEP_SinGndLogged()  != 0)*/ )
   {
      if((FS_MecaSpeedRpm_F32 > FSSMACS_SpeedReadyThresholdC)
      || (TRUE == MAIN_bSpdReadyEst))
      {
         bLocSpeedReady = TRUE;
      }
      else
      {
         bLocSpeedReady = FALSE;
      }
   }
   else
   {
      bLocSpeedReady = FSSMACS_SCSpeedReady;
   }
#endif

   return bLocSpeedReady;
}

#ifdef _PLATFORM_GEN_CODE_EMB_
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
   boolean bLocOcDataValidFlag = FALSE;
   bLocOcDataValidFlag = MAIN_OCT_bCheckOcTrimData(eMAIN_UNIT_MCU_INDEX);

   if((FTMTLCS_Iu < MAIN_f32UvwOvCurrThdC)&&
      (FTMTLCS_Iv < MAIN_f32UvwOvCurrThdC)&&
      (FTMTLCS_Iw < MAIN_f32UvwOvCurrThdC)&&
      (FT_Iuvw3_U16[0] > FTMTLCS_A2DLowThresholdC)&&
      (FT_Iuvw3_U16[1] > FTMTLCS_A2DLowThresholdC)&&
      (FT_Iuvw3_U16[2] > FTMTLCS_A2DLowThresholdC)&&
      (FT_Iuvw3_U16[0] < FTMTLCS_A2DHighThresholdC)&&
      (FT_Iuvw3_U16[1] < FTMTLCS_A2DHighThresholdC)&&
      (FT_Iuvw3_U16[2] < FTMTLCS_A2DHighThresholdC)&&
      (FSEVBHV_Voltage < FSEVBHV_HighVoltageThrC)&&
      (MAIN_u16VadcBhv < MAIN_u16OverBhvThdC)&&
      (0 == FaultDetn_u16Read_BSW_HW_OCDataNotRationalLogged())&& 
      (SDMTMEP_MecaSpeedRpm < SDMTMEP_OverSpeedThdC)&&
      (SDMTMEP_MecaSpeedRpm > SDMTMEP_UnderSpeedThdC)&&
      (SDMTMEP_PosCompError < SDMTMEP_PositionMarginC)&&
      (SD_ResolverSinCos2_U16[0] > SDMTMEP_A2DShortCircuitGndC)&&
      (SD_ResolverSinCos2_U16[0] < SDMTMEP_A2DShortCircuitVccC)&&
      (SD_ResolverSinCos2_U16[1] > SDMTMEP_A2DShortCircuitGndC)&&
      (SD_ResolverSinCos2_U16[1] < SDMTMEP_A2DShortCircuitVccC)&&
      (FSMTRDG_SinLVoltFild > FSMTRDG_CONSTANTTWO)&&
      (FSMTRDG_SinLVoltFild < FSMTRDG_CONSTANTTHREE)&&
      (FSMTRDG_SinHVoltFild > FSMTRDG_CONSTANTTWO)&&
      (FSMTRDG_SinHVoltFild < FSMTRDG_CONSTANTTHREE)&&
      (FSMTRDG_CosHVoltFild > FSMTRDG_CONSTANTTWO)&&
      (FSMTRDG_CosHVoltFild < FSMTRDG_CONSTANTTHREE)&&
      (FSMTRDG_CosLVoltFild > FSMTRDG_CONSTANTTWO)&&
      (FSMTRDG_CosLVoltFild < FSMTRDG_CONSTANTTHREE)&&
      (TRUE == bLocOcDataValidFlag))
   {
      CCU6_vidSetClrTrapReq(TRUE);
   }
   else
   {
      CCU6_vidSetClrTrapReq(FALSE);
   }
}
#endif

static void MAIN_vidCheckPwDownCond(void)
{
   boolean bLocKL15Sts = TRUE;
   
   bLocKL15Sts = (boolean)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   if(1)/* (BSW_u32CbkRxAckCntSGPepsMsgSts == 0) */
   {
      BSW_bMKeyOnStatus = bLocKL15Sts;
   }
   else
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
      if(FALSE == bLocKL15Sts)
      {
         BSW_bMKeyOnStatus = FALSE;
      }
      else
      {
         if(((MAIN_PEPS_POWERMODE_LOCALON != MAIN_MSGu8bcm_pepsPwrMode)
             && (MAIN_PEPS_POWERMODE_REMOTEON != MAIN_MSGu8bcm_pepsPwrMode))
             && (FSEVBHV_VoltageFild < MAIN_f32PowerdownVoltC))
         {
            MAIN_MSGu8PwModOnCnt = 0;
            MAIN_MSGu8PwModOffCnt++;
            if(MAIN_MSGu8PwModOffCnt >= MAIN_MSGu8PwModFiltCntC)
            {
               MAIN_MSGu8PwModOffCnt = MAIN_MSGu8PwModFiltCntC;
               BSW_bMKeyOnStatus = FALSE;
            }
         }
         else
         {
            MAIN_MSGu8PwModOffCnt = 0;
            MAIN_MSGu8PwModOnCnt++;
            if(MAIN_MSGu8PwModOnCnt >= MAIN_MSGu8PwModFiltCntC)
            {
               MAIN_MSGu8PwModOnCnt = MAIN_MSGu8PwModFiltCntC;
               BSW_bMKeyOnStatus = TRUE;
            }
         }
      }
      #endif
   }
}

void MAIN_vidGetMsgOffDelayT_ms(uint16 * u16DelayMs)
{
   uint16 u16DelayTime_ms = 5000;  /* 5000ms */

   *u16DelayMs = u16DelayTime_ms;
}

/******************************************************************************
*  
* !FuncName    : MAIN_bChkOcCondition  
* !Description : check whether OC runing condition satisfied.
*
******************************************************************************
* !LastAuthor  : H.Wang
******************************************************************************/
boolean MAIN_bChkOcCondition(void)
{
   boolean bLocRocCondSts = FALSE;
#ifdef _PLATFORM_GEN_CODE_EMB_
   if((FSSMACS_FS_HIGHVOLT_STANDBY == FSSMACS_AclState)
   && (FSEVBHV_VoltageFild > FSSMACS_HiPwrRdyVoltC)
   && ((FSEVBLV_VoltageFild > 12) && (FSEVBLV_VoltageFild < 36))
   && ((FS_MecaSpeedRpm_F32 < 100) && (FS_MecaSpeedRpm_F32 > -100)))
   {
      bLocRocCondSts = TRUE;
   }
   else
   {
      bLocRocCondSts = FALSE;
   }
#endif
   return bLocRocCondSts;
}

/******************************************************************************
*  
* !FuncName    : MAIN_vidGetProgCondition
* !Trigger     : UDS callout.  
* !Description : Get MCU motor state whether jump to boot.
*
******************************************************************************
* !LastAuthor  : H.Wang
******************************************************************************/
boolean MAIN_vidGetProgCondition(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* Used to Judge whether reset and jump to bootloader can execute. */
   /*  FSSMACS_AclState : init :1   standy:2  ready :3   fault:13 */
   if ( ( ( (1 == FSSMACS_AclState) || (2 == FSSMACS_AclState ) || (3 == FSSMACS_AclState ) ||
            (13 == FSSMACS_AclState ) || (15 == FSSMACS_AclState ) || (4 == FSSMACS_AclState ) ||
            (17 == FSSMACS_AclState ) || (18 == FSSMACS_AclState) ))&&
            ((SDMTMEP_MecaSpeedRpm <= 300) && (SDMTMEP_MecaSpeedRpm >= -300))
         || (MAIN_u32TestVar2 == 0x5A5A5A5A)
      )
   {
      MAIN_bProgConditionOk = TRUE;
   }
   else
   {
      MAIN_bProgConditionOk = FALSE;
   }
#else
   MAIN_bProgConditionOk = TRUE;
#endif
   return MAIN_bProgConditionOk;
}

/******************************************************************************
*  
* !FuncName    : MAIN_vidCalibVer2String  
* !Description : Transfer Calusr crc and Software version to string
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
static void MAIN_vidCalibVer2String(void)
{
   uint8 u8LocNibbleByte;
   
   UDS_au8CalibSoftId[0]  = 'P';
   UDS_au8CalibSoftId[1]  = '2';
   UDS_au8CalibSoftId[2]  = 'V';
   UDS_au8CalibSoftId[3]  = '3';
   UDS_au8CalibSoftId[4]  = 'Q';
   UDS_au8CalibSoftId[5]  = '1';
   UDS_au8CalibSoftId[6]  = '8';
   UDS_au8CalibSoftId[7]  = '0';
   UDS_au8CalibSoftId[8]  = '3';
   UDS_au8CalibSoftId[9]  = '0';
   UDS_au8CalibSoftId[10] = '0';
   UDS_au8CalibSoftId[11] = '3';

   u8LocNibbleByte = MAIN_SotwareIdentifcation[3] & 0x0F;
   UDS_au8CalibSoftId[12] = (u8LocNibbleByte < 0x0A) ? (u8LocNibbleByte + 0x30) : (u8LocNibbleByte + 0x37);
   u8LocNibbleByte = MAIN_SotwareIdentifcation[4] >> 4;
   UDS_au8CalibSoftId[13] = (u8LocNibbleByte < 0x0A) ? (u8LocNibbleByte + 0x30) : (u8LocNibbleByte + 0x37);

   u8LocNibbleByte = MAIN_SotwareIdentifcation[5] >> 4;
   UDS_au8CalibSoftId[14] = (u8LocNibbleByte < 0x0A) ? (u8LocNibbleByte + 0x30) : (u8LocNibbleByte + 0x37);
   u8LocNibbleByte = MAIN_SotwareIdentifcation[5] & 0x0F;
   UDS_au8CalibSoftId[15] = (u8LocNibbleByte < 0x0A) ? (u8LocNibbleByte + 0x30) : (u8LocNibbleByte + 0x37);

   OBD_u32CalVerifyNum = Crc_CalculateCRC32(&MAIN_SotwareIdentifcation[0], sizeof(MAIN_SotwareIdentifcation), 0xFFFFFFFF, TRUE);
}

/*************************************************************************
*
* !FuncName    : CCP_DaqListSetEvent0_func
* !Description : Core0 1ms dispatch
* !Brief       : 
* !Time        : April 18 2024
**************************************************************************
* !LastAuthor  : GYT
**************************************************************************/
FUNC(void, ASW_CORE0_CODE) CCP_DaqListSetEvent0_func(void)
{
   CCP_vidDaqListSetEvent(CCP_u8DAQ_LST_DAQ_BASE_FAST);
}

/*************************************************************************
*
* !FuncName    : CCP_DaqListSetEvent1_func
* !Description : Core0 5ms dispatch
* !Brief       : 
* !Time        : April 18 2024
**************************************************************************
* !LastAuthor  : GYT
**************************************************************************/
FUNC(void, ASW_CORE0_CODE) CCP_DaqListSetEvent1_func(void)
{
   CCP_vidDaqListSetEvent(CCP_u8DAQ_LST_DAQ_SPY);
}

/*************************************************************************
*
* !FuncName    : CCP_DaqListSetEvent2_func
* !Description : Core0 10ms dispatch
* !Brief       : 
* !Time        : April 18 2024
**************************************************************************
* !LastAuthor  : GYT
**************************************************************************/
FUNC(void, ASW_CORE0_CODE) CCP_DaqListSetEvent2_func(void)
{
   CCP_vidDaqListSetEvent(CCP_u8DAQ_LST_DAQ_SLOW);
}

/*************************************************************************
*
* !FuncName    : RESBSL_CheckCalibChange_func
* !Description : Core0 50ms dispatch
* !Brief       : 
* !Time        : April 18 2024
**************************************************************************
* !LastAuthor  : GYT
**************************************************************************/
FUNC(void, ASW_CORE0_CODE) RESBSL_CheckCalibChange_func(void)
{
   RESBSL_vidCheckCalibChange();
}
#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
