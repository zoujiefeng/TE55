/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Module          : GMAIN                                                   */
/* !Description     : Gateway BSW - Application                               */
/*                                                                            */
/* !File            : GMAIN_tsk.c                                             */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/******************************************************************************/
/* 2    / GMAIN_CORE2_1ms_func                                                */
/* 3    / GMAIN_CORE2_2ms_func                                                */
/* 4    / GMAIN_CORE2_5ms_func                                                */
/* 5    / GMAIN_CORE2_10ms_func                                               */
/* 6    / GMAIN_CORE1_1ms_func                                                */
/* 7    / GMAIN_CORE2_100ms_func                                              */
/* 8    / GMAIN_CORE2_200ms_func                                              */
/* 9    / GMAIN_vidVSITreatment                                               */
/* 10   / GMAIN_vidPositionTreatment                                          */
/* 11   / GMAINHARD_vidInit                                                   */
/* 12   / GMAIN_MsgScaleTxFaults                                              */
/* 16   / GMAIN_vidOcDataRestore                                              */
/* 17   / GMAIN_f32GetAutophsingAngle                                         */
/* 18   / GMAIN_bSetSimensAutophsAngC                                         */
/* 19   / GMAIN_bSetSaforiAutophsAngC                                         */
/* 20   / GMAIN_vidClrErrCode                                                 */
/* 22   / GMAIN_vidMotorSpeedEst                                              */
/* 23   / GMAIN_bSpeedReadyMng                                                */
/* 24   / GMAIN_vidAscRecvCond                                                */
/******************************************************************************/
/******************************************************************************/

#include "MAIN_Cfg.h"

#define RTE_CORE
#include "Rte_ASW_CORE1.h"
#include "Rte_ASW_CORE2.h"

#include "MAIN_ECPCfg_MCU2.h"
#include "_MainModule.h"
#include "MAIN_FFUpdate.h"
#include "GMAIN_tsk.h"
#include "GMAIN_L.h"
#include "BSW.h"
#include "bswsrv.h"
#include "GCCU6.h"
#include "GCCU6_L.h"
#include "CALUSR.h"
#include "FAULT_Api.h"
#include "DSM.h"
#include "Dsm_Typ.h"
#include "VADC.h"
#include "GESM.h"
#include "GESM_L.h"
#include "GESM_DAT.h"
#include "gesmsrv.h"
#include "IfxStm_reg.h"
#include "MATHSRV.h"
#include "DSM.h"
#include "FAIL.h"
#include "FAULT.h"
#include "FAULT_FF.h"
#include "IOHAL.h"
#include "MutexDef.h"
#include "Crc.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "MCS.h"
#include "HARD.h"
#include "UDS_Nvm.h"
#include "SafeTpackMain.h"
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
#define GMAIN_MINUS_ONE                 (-1.0f)

/*----------------------------------------------------------------------------*/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
#ifdef _PLATFORM_GEN_CODE_EMB_
static uint8 GMAIN_MSGu8CompileDay;
static uint8 GMAIN_MSGu8CompileMonth;
static uint8 GMAIN_MSGu8CompileYear;
#endif
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/******************************************************************************/
/* STATIC FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define CPU1_START_SEC_CODE
#include "MemMap.h"

static void GMAINHARD_vidInit(void);
static void GMAIN_vidAscRecvCond(void);
static void GMAIN_MsgScaleTxFaults(void);
#ifdef _PLATFORM_GEN_CODE_EMB_
static void GMAIN_vidAscRecvCond(void);
#endif

#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

/* Application version information section, total 64 bytes */
#ifdef _PLATFORM_GEN_CODE_EMB_
const uint16 GMAIN_SotwareIdentifcationNum1   = GFSEXCTX_SWVERNUM1;
const uint16 GMAIN_SotwareIdentifcationNum2   = GFSEXCTX_SWVERNUM2;
const uint16 GMAIN_SotwareIdentifcationNum3   = GFSEXCTX_SWVERNUM3;
const uint16 GMAIN_SotwareIdentifcationNum4   = GFSEXCTX_SWVERNUM4;
#endif

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define CPU1_START_SEC_CODE
#include "MemMap.h"
/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_INIT                                                   */
/* !Trigger     : Init                                                        */
/* !Description : This task is launched at the init of the OS                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, GMAIN_CODE) GMAIN_TaskInit(void)
{
   GMAINHARD_vidInit();
   GCCU6_vidSetPwmModReq(GVSISRV_VSI_MODE_REQ_OFF);

   GMAIN_bVSIStarted = FALSE;

   #ifdef _PLATFORM_GEN_CODE_EMB_
   GMAIN_MSGu8CompileYear  = (uint8)(GMAIN_SotwareIdentifcationNum4 >> 8);
   GMAIN_MSGu8CompileYear  = (GMAIN_MSGu8CompileYear >> 4) * 10 + (GMAIN_MSGu8CompileYear & 0x0F);
   GMAIN_MSGu8CompileMonth = (uint8)GMAIN_SotwareIdentifcationNum3;
   GMAIN_MSGu8CompileMonth = (GMAIN_MSGu8CompileMonth >> 4) * 10 + (GMAIN_MSGu8CompileMonth & 0x0F);
   GMAIN_MSGu8CompileDay   = (uint8)(GMAIN_SotwareIdentifcationNum3 >> 8);
   GMAIN_MSGu8CompileDay   = (GMAIN_MSGu8CompileDay >> 4) * 10 + (GMAIN_MSGu8CompileDay & 0x0F);
   #endif
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE2_1ms_func                                                        */
/*                                                                                            */
/* !Description : Core2 1ms dispatch used for GMain_Task                                      */
/* !Reference   : Rte_ASW_CORE2                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE2_CODE) GMAIN_CORE2_1ms_func(void)
{
   Stp_vidCore2Runable1ms();
   VADC_vidTreatment();

   /*------------------------------------*/
   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         /* !Comment: Enable exitation short GND monitor only when Resolver square sum fault occurs. */
         if ( FaultDetn_u16Read_GSDMTMEP_ResSquaSumErrByFTLogged()  != 0)
         {
            /* !Comment: Setting this condition just because of hardware bug. */
            GMAIN_bResExcFltDetEna = TRUE;
         }
         else
         {
            GMAIN_bResExcFltDetEna = FALSE;
         }
         
         /* !Comment: GCU do not need Hac mode. */
         GFS_UbatLV_U16                    = PMux_u16GetInputVal(ePMUX_Bat_VolSample);
         GFS_MotorWindingTemp1_U16         = PMux_u16GetInputVal(ePMUX_MCUMotor2_1_TempSample);
         GFS_MotorWindingTemp2_U16         = PMux_u16GetInputVal(ePMUX_MCUMotor2_1_TempSample);
         GFS_IO_ExitationDiag_B            = IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2();
         GFS_AN_ExitationDiag_U16          = 32;
         GFS_CosHDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2();
         GFS_CosLDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2();
         GFS_SinHDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2();
         GFS_SinLDiag_U16                  = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2();
         GFS_AN_P5VHSREF_U16               = PMux_u16GetInputVal(ePMUX_P5VLS_VolSample);
         GFS_MecaSpeedRpm_F32              = GSDMTMEP_MecaSpeedRpm;
         GFS_GFTRealTrqRate_F32            = GFTCMTTC_RealMecaTrqTgtRate;
         GFS_GFTResloverFault_B            = GSDMTMEP_ResolverAbnormalFlg;

         GFS_1ms();

         GFT_HacModeDetn_B                 = GFSTCGTC_HacEnable;
         GFT_UbatHV_F32                    = GFSEVBHV_VoltageFild;
         GFT_CoolingTemp_F32               = GFSEVETA_TempIgbtLeftFild;
         GFT_TorqueTgt_F32                 = GFSTCGTC_TorqueTgt;
         GFT_I0dqTgt3_F32[0]               = GFSTCGTC_I0dqTgt[0];
         GFT_I0dqTgt3_F32[1]               = GFSTCGTC_I0dqTgt[1];
         GFT_I0dqTgt3_F32[2]               = GFSTCGTC_I0dqTgt[2];
         GFT_U0dqTgt3_F32[0]               = GFSTCGTC_U0dqTgt[0];
         GFT_U0dqTgt3_F32[1]               = GFSTCGTC_U0dqTgt[1];
         GFT_U0dqTgt3_F32[2]               = GFSTCGTC_U0dqTgt[2];
       
         GFT_PwrLmtTqrMax_F32              = GFS_VCU_DCU_TorqMax_F32;
         GFT_PwrLmtTqrMin_F32              = GFS_VCU_DCU_TorqMin_F32;
         GFT_SpdInitialValue_F32           = 0;
         GFT_VcuDampEnable_B               = TRUE;
         GFT_1ms();

         GMAIN_bSpeedReadyFlg = GMAIN_bSpeedReadyMng();
         if (FALSE != GMAIN_bSpeedReadyFlg)
         {
            /* !Comment: Speed over 1500 rpm. */
            GCCU6_vidSetMotorSpdRdyFlg(TRUE);
         }
         else
         {
            /* !Comment: Speed under 1500 rpm. */
            GCCU6_vidSetMotorSpdRdyFlg(FALSE);
         }
      #endif
   }

   /* !Comment: ESM services requests. */
   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         GESMSRV_vidSetCmdReq(GESM_CMD_FT_START,           GFSSMACS_CmdFtStartReq);
         GESMSRV_vidSetCmdReq(GESM_CMD_FT_SHUTDOWN,        GFTSMACS_CmdFtShutDownRes);
         GESMSRV_vidSetCmdReq(GESM_CMD_SW_SHUTDOWN,        GFSSMACS_CmdSwShutDownReq);
         GESMSRV_vidSetCmdReq(GESM_CMD_PWM_OFF,            GFTSMACS_CmdPwmOffReq);
         GESMSRV_vidSetCmdReq(GESM_CMD_PWM_DIRECT,         GFTSMACS_CmdPwmDirectReq);
      #endif
   }

#ifdef _PLATFORM_GEN_CODE_EMB_
   /*  !Comment: Set Freeze frame of ASW 1ms */
   GMAIN_FFDataUpdate_1ms();
#endif

   // GMAIN_u16Adc2SInP5v = IOHAL_u16Read_CH_ADC_IN_AN_P5V_BT_AD2S();
   GCCU6_vidMotorStateMng();
   GFAIL_vidFailDetection_1ms();
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE2_2ms_func                                                        */
/*                                                                                            */
/* !Description : Core2 2ms dispatch used for GMain_Task                                      */
/* !Reference   : Rte_ASW_CORE2                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE2_CODE) GMAIN_CORE2_2ms_func(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* !Comment: ESM Cmd Response. */
   GFT_CmdPwmOffRes_B         = GESMSRV_bGetCmdRes(GESM_CMD_PWM_OFF);
   GFT_CmdPwmDirectRes_B      = GESMSRV_bGetCmdRes(GESM_CMD_PWM_DIRECT);
   GFT_FaultLevel_U16         = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU);
   GFT_CmdFtStartReq_B        = GFSSMACS_CmdFtStartReq;
   GFT_CmdFtShutDownReq_B     = GFSSMACS_CmdFtShutDownReq;
   GFT_FTModeReq_U16		  = GFSSMACS_GFTModeReq;

   GFT_2ms();
#endif
   
   /* !Comment: ESM running. */
   if (GMAIN_VSIBenchOnWriteDataC == 0)
   {
      /*  !Comment: VSI started */
      if (GBSW_u32VSICounterCkreq >= GMAIN_u32VSICntCkreqVSIStartedC)
      {
         /*  !Comment: ESM Cmd Req. */
         if (GMAIN_bVSIStarted == 0)
         {
         FAIL_vidInitVSICounters();
         }
         GMAIN_bVSIStarted = 1;
         /*  !Comment: ESM started */
         if (GBSW_u32VSICounterCkreq >= GMAIN_u32VSICntCkreqESMStartedC) 
         {
         GESMSRV_vidSetCmdReq(GESM_CMD_SW_START,           1);
         GMAIN_bESMStarted = 1;
         }
      }
      GSTFSRV_vidSET_EVENT(GESM, SCHED_5MS);
   }
   else
   {
      /*  !Comment: VSI started */
      if (GBSW_u32VSICounterCkreq >= GMAIN_u32VSICntCkreqVSIStartedC)
      {
         if (GMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }

         GMAIN_bVSIStarted = 1;
      }
   }
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE2_5ms_func                                                        */
/*                                                                                            */
/* !Description : Core2 5ms dispatch used for GMain_Task                                      */
/* !Reference   : Rte_ASW_CORE2                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE2_CODE) GMAIN_CORE2_5ms_func(void)
{
   GMAIN_u16Core0Cnt5++;
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE2_10ms_func                                                       */
/*                                                                                            */
/* !Description : Core2 10ms dispatch used for GMain_Task                                     */
/* !Reference   : Rte_ASW_CORE2                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE2_CODE) GMAIN_CORE2_10ms_func(void)
{
   boolean bLocAscOngoing = FALSE;
   GMAIN_u16Core2Cnt10++;
   GMAIN_bBswReadySts = BSW_bGetBswReadySts();

   VADC_vidMainFunction();
   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         GESMSRV_vidSetMcuEnaReq(FALSE);
         GMAIN_vidAscRecvCond();

         /*!Comment: HAC Signal from VCU_2 0x400.*/
         GFS_SlideSlopReq_B               = MAIN_MSGu8VCU_Mot2AutoHoldEn;
         GFS_VCU_DCU_ModeReq_U8           = MAIN_MSGu8VCU_Mot2CtlMode;
         GFS_VCU_DCU_TorqSet_F32          = MAIN_MSGf32VCU_Mot2TrqReq;
         GFS_VCU_AKD_Req_B                = MAIN_MSGu8VCU_Mot2DischrgCmd;
         GFS_VCU_PowerOff_Req_B           = FALSE;
         GFS_VehicleGear_U8               = MAIN_MSGu8VCU_VehShiftLevel;
         GFS_VCU_DCU_SpdSet_F32           = MAIN_MSGf32VCU_Mot2SpdReq;
         GFS_VcuMcuEnableReq_U8           = MAIN_MSGu8VCU_Mot2PwrEn;
         GFS_HandBrake_B                  = FALSE;
         GFS_AccPedPos_F32                = 0.0F;
         GFS_VCU_DCU_TorqMax_F32          = MAIN_MSGf32VCU_Mot2TrqLimMax;
         GFS_VCU_DCU_TorqMin_F32          = MAIN_MSGf32VCU_Mot2TrqLimMin;
         GFS_KEY_ON_B                     = IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
         GFS_FaultLevel_U16               = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU);
         GFS_CmdFtStartRes_B              = GFTSMACS_CmdFtStartRes;
         GFS_CmdFtShutDownRes_B           = GFTSMACS_CmdFtShutDownRes;
         GFS_GFTAclState_U16              = GFTSMACS_AclState;
         GFS_BSWReadyStatus_B             = BSW_bGetBswReadySts();
         GFS_BMS_Ubms_F32                 = 0.0F;
         GFS_EXT_CrashOutSts_U8           = 0;     
         GMAIN_bAkdAfterAscReq            = FALSE;
         GMAIN_bAscFlag                   = GCCU6_bGetAscStatus();
         
         GFS_MaxMinTorqueAvailable_F32[0] = GFTDDLMP_MaxMinTorqueLimitVect[0];
         GFS_MaxMinTorqueAvailable_F32[1] = GFTDDLMP_MaxMinTorqueLimitVect[1];        
         GFS_TorqueSlewRate_F32           = (float)10000;
         GFS_PowerModuleTemp_U_U16        = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2();
         GFS_PowerModuleTemp_V_U16        = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2();
         GFS_PowerModuleTemp_W_U16        = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2();
         GFS_DriverBoardTemp_U16          = PMux_u16GetInputVal(ePMUX_WaterChannel_TempSample);
         GFS_CommandBoardTempLV_U16       = PMux_u16GetInputVal(ePMUX_CtrlBorad_TempSample);
         GFS_CommandBoardTempLV2_U16      = PMux_u16GetInputVal(ePMUX_CtrlBorad_TempSample);      
         GFS_CoolingTemp_U16              = PMux_u16GetInputVal(ePMUX_WaterChannel_TempSample);
         GFS_CoolTempValidFlag_B          = FALSE;
         GFS_MotorWindingDrtGain_F32      = GFTASMTP_WndgDrtGain;
         GFS_MotorMagnetDrtGain_F32       = 1;
         GFS_PowmdlDrtGain_F32            = GFTASETP_PmDrtGain;
         GFS_EstPowmdlDrtGain_F32         = GFTASETP_EstPmDrtGain; 
         GFS_MotorAppliedTorque_F32       = GFTCMTTC_MecaTorqueTgt;
         GFS_Id_ref_F32                   = GFTCMTCS_i0dqTgt3[1];
         GFS_Iq_ref_F32                   = GFTCMTCS_i0dqTgt3[2];
         
         GFS_MotorAppliedTorque_F32       = GFTCMTTC_RealMecaTorqueTgt;
         GFS_P5VPort_U16                  = PMux_u16GetInputVal(ePMUX_P5VHS_VolSample);
                                           
         
         /*OC:10ms*/
         GFS_OcRotoringFailFlg_B          = GSDMTMEP_OcRotoringFailFlg;
         GFS_UdsOcEnable_B                = MAIN_OCT_bGetOcModeEna(eMAIN_UNIT_GCU_INDEX);
         GFS_UdsOcStartReq_B              = MAIN_OCT_bGetOcStartFlag(eMAIN_UNIT_GCU_INDEX);
         GFS_UdsOcRdResFlag_B             = MAIN_OCT_bGetOcRdResultFlag(eMAIN_UNIT_GCU_INDEX);
         GFS_OcCycleFinish_B              = GFTSMREF_Cyclefinish;
         
         GFS_10ms();
         
         GFT_BhvCheckEna_B                = GFSSMMAM_EVBHV_CheckEnable;
         GFT_PowerModuleTemp_F32          = GFSEVETA_TempIgbt;
         GFT_MotorWindingTemp2_F32[0]     = GFSMTMTA_TempWinding[0];
         GFT_MotorWindingTemp2_F32[1]     = GFSMTMTA_TempWinding[1];
         
         GFT_MecaSpeedRpmTgt_F32          = GFSTCGTC_MecaSpeedRpmTgt;         
         
         GFT_EXTAntiSlideEnable_B         = TRUE;
         GFT_ResThetaRdSurPiOc_F32        = GSDMTMEP_ResolverThetaRdSurPiOc;
         GFT_Iuvw3Rms_F32[0]              = GSDMTLCS_Iuvw3_Rms[0];
         GFT_Iuvw3Rms_F32[1]              = GSDMTLCS_Iuvw3_Rms[1];
         GFT_Iuvw3Rms_F32[2]              = GSDMTLCS_Iuvw3_Rms[2];

         GFT_10ms();
         GSD_10ms();

         /* !Comment: phase current zero compensation with PWM on or not. */
         GCCU6_vidSetIuvwZeroCompReq(FALSE);

         /* !Comment: OC relate variables. */
         MAIN_OCT_vidSetOcFinishFlg(eMAIN_UNIT_GCU_INDEX,  GFSSMACS_OcFinish);
         MAIN_OCT_vidSetOcFailureFlg(eMAIN_UNIT_GCU_INDEX, GFSSMACS_OcFailure);
         MAIN_OCT_vidSetOcNotRatFlg(eMAIN_UNIT_GCU_INDEX,  GSDMTMEP_IllegalResParFlt);

         /*Rx from CAN,update to APP*/
         if((GFSSMACS_GFS_INIT == GFSSMACS_AclState) || (GFSSMACS_GFS_STANDBY == GFSSMACS_AclState) || 
         (GFSSMACS_GFS_PRECHARGE == GFSSMACS_AclState))
         {
            MAIN_MSGu8MCU2_SysSts = 0x03;/*LV Ready*/
            MAIN_MSGu8MCU2_MotWorkSts = 0x03;/*Close*/
            MAIN_MSGu8MCU2_MotWorkMode = 0;
         }
         else if((GFSSMACS_GFS_HIGHVOLT_STANDBY == GFSSMACS_AclState) || (GFSSMACS_GFS_START_GFT == GFSSMACS_AclState) ||
                  (GFSSMACS_GFS_READY == GFSSMACS_AclState) || (GFSSMACS_GFS_SHUTDOWN_GFT == GFSSMACS_AclState))
         {
            MAIN_MSGu8MCU2_SysSts = 0x07;/*HV Ready*/
            MAIN_MSGu8MCU2_MotWorkSts = 0x04;/*Ready*/
            MAIN_MSGu8MCU2_MotWorkMode = 0;
         }
         else if(GFSSMACS_GFS_OPERATIONAL_GFT == GFSSMACS_AclState)
         {
            MAIN_MSGu8MCU2_SysSts = 0x08;/*OPERATIONAL*/
            MAIN_MSGu8MCU2_MotWorkMode = MAIN_MSGu8VCU_Mot2CtlMode;
            if(MAIN_MSGf32MCU2_MotSpd * MAIN_MSGf32MCU2_MotTq < 0)
            {
               MAIN_MSGu8MCU2_MotWorkSts = 0x02;/*Generation*/
            }
            else
            {
               MAIN_MSGu8MCU2_MotWorkSts = 0x01;/*Consumption*/
            }
         }
         else if((GFSSMACS_GFS_OPERATIONAL_AKD == GFSSMACS_AclState) || (GFSSMACS_GFS_EXIT_DISCHARGE == GFSSMACS_AclState) ||
                 (GFSSMACS_GFS_AKD_FAIL == GFSSMACS_AclState) || (GFSSMACS_GFS_START_AKD == GFSSMACS_AclState))
         {
            MAIN_MSGu8MCU2_SysSts = 0xA;/*Discharge mode*/
            MAIN_MSGu8MCU2_MotWorkSts = 0x01;/*Consumption*/
            MAIN_MSGu8MCU2_MotWorkMode = 0;
         }
         else
         {
            MAIN_MSGu8MCU2_SysSts = 0x00;/*Initial*/
            MAIN_MSGu8MCU2_MotWorkSts = 0x03;/*Close*/
            MAIN_MSGu8MCU2_MotWorkMode = 0;
         }

      
         MAIN_MSGf32MCU2_MotSpd           = GFSTCGTC_VehicleDirMecaSpeedRpm;
         MAIN_MSGf32MCU2_MotTq            = GFTCMTTC_RealMecaTorqueTgt;
         MAIN_MSGf32MCU2_SpdOutputLimit   = GFTDDLMP_MaxMinSpdLimitVect[0];
         MAIN_MSGf32MCU2_TqOutputLimit    = GFTDDLMP_MaxMinTorqueLimitVect[0];
         MAIN_MSGf32MCU2_DCCurrent        = GFSEVIBT_IbatHVFild;
         MAIN_MSGf32MCU2_DCVoltage        = GFSEVBHV_VoltageFild;
         MAIN_MSGf32MCU2_ACCurrentRMS     = GFTMTLCS_Iuvw3_Rms[0];
         MAIN_MSGf32MCU2_ACVoltageRMS     = GFTCMCCS_UdqNorm;
         MAIN_MSGu8MCU2_ErrSts            = GFS_FaultLevel_U16;
         
      #endif
  }

   /* Set Freeze frame of ASW 10ms */
   #ifdef _PLATFORM_GEN_CODE_EMB_
      GMAIN_FFDataUpdate_10ms();
   #endif
   
   GMAIN_MsgScaleTxFaults();
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE2_100ms_func                                                      */
/*                                                                                            */
/* !Description : Core2 100ms dispatch used for GMain_Task                                    */
/* !Reference   : Rte_ASW_CORE2                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE2_CODE) GMAIN_CORE2_100ms_func(void)
{
   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
         /*------------------------------------*/
      
         GFS_100ms();
         GFT_100ms();

    
         MAIN_MSGf32MCU2_MotTemp          = GFSMTMTA_TempWindingMax;
         MAIN_MSGf32MCU2_ECUTemp          = GFSEVETA_TempIgbtLeftFild;
      
      #endif
   }
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE2_200ms_func                                                      */
/*                                                                                            */
/* !Description : Core2 200ms dispatch used for GMain_Task                                    */
/* !Reference   : Rte_ASW_CORE2                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE2_CODE) GMAIN_CORE2_200ms_func(void)
{
   if (GMAIN_ESMGo2StartupIEvent != 0)
   {
      #ifdef _PLATFORM_GEN_CODE_BSW_
         if (GMAIN_HARDBenchOnC != 0)
         {
            HARD_vidEsmReInit();
         }
      #endif
      GSTFSRV_vidSET_EVENT(GESM, GO2_STARTUP_I);
      GMAIN_ESMGo2StartupIEvent = 0;
   }
#ifdef _PLATFORM_GEN_CODE_EMB_
   uint16 * MAIN_au16CalibBuf = MAIN_CAL_pu16GetCalDataBuf(eMAIN_CALIB_IDX_MCU2);
   GFT_ExtCurrentGain3_U16[0] = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_UI_INDEX];
   GFT_ExtCurrentGain3_U16[1] = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VI_INDEX];
   GFT_ExtCurrentGain3_U16[2] = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_WI_INDEX];
   GFS_BusVoltageGain_U16     = MAIN_au16CalibBuf[eMAIN_CALIB_BUF_VO_INDEX];
#endif
}

/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : GMAIN_CORE1_1ms_func                                                        */
/*                                                                                            */
/* !Description : Core1 1ms dispatch used for GMain_Task                                      */
/* !Reference   : Rte_ASW_CORE1                                                               */
/*                                                                                            */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
FUNC(void, ASW_CORE1_CODE) GMAIN_CORE1_1ms_func(void)
{
   GMAIN_u16Core1Cnt1++;

   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
      #ifdef _PLATFORM_GEN_CODE_EMB_
      GFT_Edit1ms();
      #endif
   }
}

/******************************************************************************/
/*                                                                            */
/* !Task        : GMAIN_CORE1_10ms_func                                        */
/* !Trigger     : Time (10ms)                                                 */
/* !Description : This task has a 100ms period                                */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
FUNC(void, ASW_CORE1_CODE) GMAIN_CORE1_10ms_func(void)
{   
}
#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

#define START_CODE_GCU_CPU2_SECTION
#include "MemMap.h"
/******************************************************************************/
/*                                                                            */
/* !Task        : GMAIN_vidVSITreatment                                        */
/* !Trigger     : Interrupt SPI VSI, end of receive                           */
/*              : - Nominal freq. : 10KHz (100 micro s)                       */
/* !Description :                                                             */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GMAIN_vidVSITreatment(void)
{
   uint8 u8LocFaultLevel = 0;
   float32 f32LocMecaSpeedRpm = 0;
   boolean bLocIgbtLowFltLev = FALSE;
   boolean bLocIgbtHigFltLev = FALSE;
   boolean bLocPwmOnFlg = FALSE;
   
   GMAIN_startTime = SYS_u32GET_STM1_TIM0();

   /* !Comment: management Position B. */
   GMAIN_u32PosBTimeStamp = MODULE_GTM.TBU.CH1_BASE.U;
   GMAIN_u32PosBTimeStamp &= 0x00FFFFFF;
   
   GBSW_u32VSICounterCkreq++;
   /* !Comment: switch PWM update event according to T12 counter value. */
   GCCU6_vidSwitchPwmUpdEvent();
   
   GBSW_u32VSICounterCkreq++;
   u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU);

   #ifdef _PLATFORM_GEN_CODE_EMB_
      while(IfxCpu_acquireMutex(&GMAIN_Asc0_Lock) != TRUE);
   #endif
   if(GMAIN_u32PosBTimeStamp >= GMAIN_u32PosATimeStamp)
   {
      GMAIN_s32PosA2BDeltTime = GMAIN_u32PosBTimeStamp - GMAIN_u32PosATimeStamp;
   }
   else
   {
      GMAIN_s32PosA2BDeltTime = GMAIN_u32PosBTimeStamp + 0x01000000 - GMAIN_u32PosATimeStamp;
   }
   GMAIN_s32PosA2BDeltTime  = GMAIN_s32PosA2BDeltTime - GMAIN_s32CurHardDelayC + GMAIN_s32ResHardDelayC;
   GMAIN_s32PosA2BDeltTime  = GMAIN_s32PosA2BDeltTime + GMAIN_s32SampleDelayC;
   GMAIN_f32VsiPwmPeriod     = (float)(GMAIN_u16PWMPeriodVal + 1) * SYS_T12_CLK_PERD;
   
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* !Comment: Start read angle and anglur speed and timestamp. */
   GFT_PosiCurrentDelay_F32 = ( (float)GMAIN_s32PosA2BDeltTime) / SYS_SEC_TO_CLK_GAIN;
   GFT_ElecSpeedRds_F32 = GMAIN_f32ElecSpeedRds;
   if((GMAIN_f32ThetaElecRdSurPi > (-100.0f))
   && (GMAIN_f32ThetaElecRdSurPi < 100.0f))
   {
      GFT_ResloverThetaRdSuiPi_F32 = GMAIN_f32ThetaElecRdSurPi;
   }
   GFT_VsiPwmPeriod_F32    = GMAIN_f32VsiPwmPeriod;
   GFT_MecaSpeedRpm_F32    = GMAIN_f32MecaSpeedRpm;
   GFT_MecaSpeedRds_F32    = GMAIN_f32MecaSpeedRds;
   GFT_ErrThetaRdSurPi_F32 = GMAIN_f32ErrThetaRdSurPi;
   IfxCpu_releaseMutex(&GMAIN_Asc0_Lock);
   GFT_PwmZeroMatch_B = GCCU6_bGetZeroMatchFlg();

   if(GFSSMACS_NormalStartFtFlg)
   {
      GFT_FtRunFlg_U16 = (uint16)GCCU6_bGetPwmRuningFlg(); 
   }
   else
   {
      GFT_FtRunFlg_U16 = 0;
   }

   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
      GFT_VsiTreatmentPosi();
   }
#endif

#ifdef _PLATFORM_GEN_CODE_BSW_
   if (GMAIN_HARDBenchOnC != 0)
   {
      GCCU6_vidSetPwmHlDuty(GMAIN_f32PWMDutyUPhys, GMAIN_f32PWMDutyVPhys, GMAIN_f32PWMDutyWPhys);
   }
#endif

   if ((GMAIN_bVSIStarted) || (GMAIN_bBswReadySts))
   {
   #ifdef _PLATFORM_GEN_CODE_EMB_
      GFS_UbatHV_U16        = IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();    
      GFT_Iuvw3_U16[0]      = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2();
      GFT_Iuvw3_U16[1]      = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2();
      GFT_Iuvw3_U16[2]      = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2();
      
      GFT_DutyCycle3_F32[0] = 0.0f;
      GFT_DutyCycle3_F32[1] = 0.0f;
      GFT_DutyCycle3_F32[2] = 0.0f;

      GFS_Iuvw3_F32[0]      = GFTMTLCS_Iuvw3[0];
      GFS_Iuvw3_F32[1]      = GFTMTLCS_Iuvw3[1];
      GFS_Iuvw3_F32[2]      = GFTMTLCS_Iuvw3[2];
      GFS_DutyCycle3_F32[0] = GFTCIVDC_DutyCycle3[0];
      GFS_DutyCycle3_F32[1] = GFTCIVDC_DutyCycle3[1];
      GFS_DutyCycle3_F32[2] = GFTCIVDC_DutyCycle3[2];
      GFS_100us();
      GFT_VsiTreatment();
      
      /* !Comment: Set PWM frequency. FreqRaw = 25000000/freq(hz) */
      if (GFTCIVDC_PwmFrequence >= 1000)
      {
         GMAIN_u16PWMPeriodVal = (uint16)( (float)(SYS_T12_CLK_NUM_1S / GFTCIVDC_PwmFrequence) - 1); 
         /* Daniel: Value = Frequency(hz) / 100; GFTEVEIT use to calculate commutation losses */
         GFT_VsiPwmRatioRes_U8 = (uint8)(GFTCIVDC_PwmFrequence * 0.01f);
      }

      /* !Comment: Set PWM Period. */
      GCCU6_vidSetPwmHlPeriod(GMAIN_u16PWMPeriodVal);

      GCCU6_vidSetPwmHlDuty(GFTCIVDC_DutyCycle3[2], GFTCIVDC_DutyCycle3[1], GFTCIVDC_DutyCycle3[0]);
      
      /* GFS_IbatRmsHV_U16 = 2048; */
      /* GFS_100us(); */
      bLocPwmOnFlg = GCCU6_bGetPwmRuningFlg();

      if (bLocPwmOnFlg)
      {
         /* !Comment: IGBT Fault check. */
         bLocIgbtHigFltLev = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2();
         bLocIgbtLowFltLev = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2();

         if (FALSE == bLocIgbtLowFltLev)
         {
            if (GMAIN_u8IgbtLowFltCnt < GMAIN_u8IgbtFltConfirmCntC)
            {
               GMAIN_u8IgbtLowFltCnt++;
            }
         }
         else
         {
            if (GMAIN_u8IgbtLowFltCnt < GMAIN_u8IgbtFltConfirmCntC)
            {
               GMAIN_u8IgbtLowFltCnt = 0;
            }
         }

         if (FALSE == bLocIgbtHigFltLev)
         {
            if (GMAIN_u8IgbtHighFltCnt < GMAIN_u8IgbtFltConfirmCntC)
            {
               GMAIN_u8IgbtHighFltCnt++;
            }
         }
         else
         {
            if (GMAIN_u8IgbtHighFltCnt < GMAIN_u8IgbtFltConfirmCntC)
            {
               GMAIN_u8IgbtHighFltCnt = 0;
            }
         }
      }
      if ( (GFTMTLCS_Iuvw3[0] > GMAIN_f32UvwOvCurrThdC) || (GFTMTLCS_Iuvw3[0] < ((-1)* GMAIN_f32UvwOvCurrThdC)) )
      {
         GMAIN_bSoftOvCurrPhsUFlg = TRUE;
      }
      if ( (GFTMTLCS_Iuvw3[1] > GMAIN_f32UvwOvCurrThdC) || (GFTMTLCS_Iuvw3[1] < ((-1)* GMAIN_f32UvwOvCurrThdC) ) )
      {
         GMAIN_bSoftOvCurrPhsVFlg = TRUE;  
      }
      if ( (GFTMTLCS_Iuvw3[2] > GMAIN_f32UvwOvCurrThdC) || (GFTMTLCS_Iuvw3[2] < ((-1)* GMAIN_f32UvwOvCurrThdC) ) )
      {
         GMAIN_bSoftOvCurrPhsWFlg = TRUE;
      }

      GMAIN_u16VadcBhv  =  IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();

      /* !Comment: If HV over voltage satisfied, trigger ASC immediately. */
      if  (GMAIN_u16VadcBhv > GMAIN_u16OverBhvThdC) 
      {
         GCCU6_vidSetHvOverFlg(TRUE);
      }
      GMAIN_bSoftOvBhvFlg = GCCU6_bGetHwFaultDcOvVolt();

      if(GSDMTMEP_MecaSpeedRpm >= 16000.0)
      {
         f32LocMecaSpeedRpm = 32000.0;
      }
      else if(GSDMTMEP_MecaSpeedRpm <= -16000.0)
      {
         f32LocMecaSpeedRpm = 0;
      }
      else
      {
         f32LocMecaSpeedRpm = GSDMTMEP_MecaSpeedRpm + 16000.0;
      }
   #endif
   }

   if((u8LocFaultLevel >= DSM_FAULT_LEVEL_EMRG_STOP)
   || (TRUE == GMAIN_bSoftOvCurrPhsUFlg)
   || (TRUE == GMAIN_bSoftOvCurrPhsVFlg)
   || (TRUE == GMAIN_bSoftOvCurrPhsWFlg)
   || (TRUE == GMAIN_bSoftOvBhvFlg)
   || (GMAIN_u8IgbtLowFltCnt >= GMAIN_u8IgbtFltConfirmCntC)
   || (GMAIN_u8IgbtHighFltCnt >= GMAIN_u8IgbtFltConfirmCntC))
   {
      GCCU6_vidSoftTrapTrigger(FALSE);
      GMAIN_u8StopCacheFreezeFrameCnt = 160;
   }
   else
   {
      GCCU6_vidSoftTrapTrigger(TRUE);
   }

   if(GMAIN_u8StopCacheFreezeFrameCnt > 0)
   {
      GMAIN_u8StopCacheFreezeFrameCnt--;
   }
   else
   {
      GMAIN_u8StopCacheFreezeFrameCnt = 0;
   }

#ifdef _PLATFORM_GEN_CODE_EMB_ 
   GMAIN_FFDataUpdate_100us();
#endif

   GMAIN_EndTime = SYS_u32GET_STM1_TIM0();

   if(GMAIN_EndTime >= GMAIN_startTime)
   {
      GMAIN_TotalTime = GMAIN_EndTime - GMAIN_startTime;
   }
}
#define STOP_CODE_GCU_CPU2_SECTION
#include "MemMap.h"

#define CPU0_START_SEC_CODE
#include "MemMap.h"
/*****************************************************************************
*
* !Runnable    : GMAIN_vidPositionTreatment
* !Trigger       : Interrupt of resolver sin/cos ADC convert notification
* !Description : Run by Core0, Calculate Position A. This function should be efficient and 
*                      excute as fast as possible.
*  
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void GMAIN_vidPositionTreatment(void)
{
   uint32 u32LocCore0TimStamp;
   u32LocCore0TimStamp   = SYS_u32GET_STM1_TIM0();
 
   /* !Comment: Start calculate new position A information. */
#ifdef _PLATFORM_GEN_CODE_EMB_
      if (GSDMTMEP_ResolverParamStoreEnC)
      {
         if(TRUE == GBSW_bOCDataNotRation)
         {
            GSD_OffsetCosTrim_F32 = (float)GMAIN_aks32OCTrimNvm_def[0];
            GSD_OffsetSinTrim_F32 = (float)GMAIN_aks32OCTrimNvm_def[1];
            GSD_GainCosTrim_F32 = (float)(GMAIN_aks32OCTrimNvm_def[2] / GOC_TRIM_DATA_GAIN);
            GSD_GainSinTrim_F32 = (float)(GMAIN_aks32OCTrimNvm_def[3] / GOC_TRIM_DATA_GAIN);
            GSD_AutoPhasingAngle_F32 = (float)(GMAIN_aks32OCTrimNvm_def[4] / GOC_TRIM_DATA_GAIN);
         }
         else
         {
            GSD_OffsetCosTrim_F32 = (float)GMAIN_as32OCTrimNvm[0];
            GSD_OffsetSinTrim_F32 = (float)GMAIN_as32OCTrimNvm[1];
            GSD_GainCosTrim_F32 = (float)(GMAIN_as32OCTrimNvm[2] / GOC_TRIM_DATA_GAIN);
            GSD_GainSinTrim_F32 = (float)(GMAIN_as32OCTrimNvm[3] / GOC_TRIM_DATA_GAIN);
            GSD_AutoPhasingAngle_F32 = (float)(GMAIN_as32OCTrimNvm[4] / GOC_TRIM_DATA_GAIN);
         }
      }

      GSD_ResolverSinCos2_U16[0]  = (uint16)IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2();
      GSD_ResolverSinCos2_U16[1]  = (uint16)IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2();
      GSD_MTMEPState_U16          = GFTSMMAM_MTMEP_State;
      GSD_ImposedThetaRdSurPi_F32 = GFTSMREF_ImposedThetaRdSurPi;
      GSD_RotoringCalEnable_B     = GFTSMREF_RotoringCalEnable;
      GSD_RotoringCalStart_B      = GFTSMREF_RotoringCalStart;
      GSD_RotoringCalFinish_B     = GFTSMREF_RotoringCalFinish;
      GSD_AutophasingCal_F32      = GFTSMREF_AutoPhasingCal;
      GSD_FtModeReq_U16           = GFSSMACS_GFTModeReq;
      /*GSD_UbatHV_F32              = GFSEVBHV_VoltageFild;*/
      /* !Comment: Iuvw Rms calucate input. */
      
      GSD_PositionTreatment();
      GSD_LCS100us();
      GMAIN_vidMotorSpeedEst(GFTMTLCS_Iuvw3[1]);
      
      /* GFT_HijLut100us(); */

      GMAIN_f32EmailElecSpeedRds = GSDMTMEP_ElecSpeedRds;
      GMAIN_f32EmailThetaElecRdSurPi = GSDMTMEP_ThetaElecRdSurPi;
      GMAIN_f32EmailMecaSpeedRpm = GSDMTMEP_MecaSpeedRpm;
      GMAIN_f32EmailMecaSpeedRds= GSDMTMEP_MecaSpeedRds;
      GMAIN_f32EmailErrThetaRdSurPi = GSDMTMEP_ErrorThetaElecRdSurPi;
#endif
   /* !Comment: TimeA must be valued after other Position A variables. */
   GMAIN_u32EmailPosATimeStamp = (uint32)((*MCS_pu32VsiGtmPosSampleTime2) & 0x00FFFFFF);

   GMAIN_u32PosTreatCkreq++;

   while(IfxCpu_acquireMutex(&GMAIN_Asc0_Lock) != TRUE);
   GMAIN_f32ElecSpeedRds     = GMAIN_f32EmailElecSpeedRds;
   GMAIN_f32ThetaElecRdSurPi = GMAIN_f32EmailThetaElecRdSurPi;
   GMAIN_f32MecaSpeedRpm     = GMAIN_f32EmailMecaSpeedRpm;
   GMAIN_f32MecaSpeedRds     = GMAIN_f32EmailMecaSpeedRds;
   GMAIN_f32ErrThetaRdSurPi  = GMAIN_f32EmailErrThetaRdSurPi;
   GMAIN_u32PosATimeStamp    = GMAIN_u32EmailPosATimeStamp;
   IfxCpu_releaseMutex(&GMAIN_Asc0_Lock);
         
   GMAIN_u32EmailCkreq++;
   /* !Comment: For debug purpose. */
   GMAIN_s32Email2PosTreqDiff = GMAIN_u32EmailCkreq - GMAIN_u32PosTreatCkreq;
}

#define CPU0_STOP_SEC_CODE
#include "MemMap.h"

#define CPU1_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Runnable    : GMAINHARD_vidInit function                                  */
/* !Trigger     : GMain Function                                              */
/* !Description :                                                             */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
static void GMAINHARD_vidInit(void)
{
   /*----------------------------------------------------------------------------*/
   /* Initialization: Debug variables                                            */
   /*----------------------------------------------------------------------------*/
   GMAIN_u32PosTreatCkreq              = 0;
   GMAIN_u32EmailCkreq                 = 0;
   GMAIN_s32PosA2BDeltTime             = 0;
   GMAIN_bBswReadySts                  = FALSE;
   GMAIN_bResExcFltDetEna              = FALSE;
   GMAIN_f32ElecSpeedRds               = 0;
   GMAIN_f32ThetaElecRdSurPi           = 0;
   GMAIN_f32VsiPwmPeriod               = 0;
   GMAIN_f32MecaSpeedRpm               = 0;
   GMAIN_f32MecaSpeedRds               = 0;
   GMAIN_f32ErrThetaRdSurPi            = 0;
   GMAIN_f32EmailElecSpeedRds          = 0;
   GMAIN_f32EmailThetaElecRdSurPi      = 0;
   GMAIN_f32EmailMecaSpeedRpm          = 0;
   GMAIN_f32EmailMecaSpeedRds          = 0;
   GMAIN_f32EmailErrThetaRdSurPi       = 0;
   GMAIN_u32EmailPosATimeStamp         = 0;
   GMAIN_bSoftOvCurrPhsUFlg            = FALSE;
   GMAIN_bSoftOvCurrPhsVFlg            = FALSE;
   GMAIN_bSoftOvCurrPhsWFlg            = FALSE;
   GMAIN_u16IuPositiveCnt              = 0;
   GMAIN_u16IuPositiveSum              = 0;
   GMAIN_u16IuNegtiveCnt               = 0;
   GMAIN_u16IuNegtiveSum               = 0;
   GMAIN_u32IuCycleTim                 = 0;
   GMAIN_f32IuFrequency                = 0;
   GMAIN_f32IuPeriod                   = 0;
   GMAIN_f32MotSpdEst                  = 0;
   GMAIN_bSpeedReadyFlg                = FALSE;
   GMAIN_u16IuCycleCnt                 = 0;
   GMAIN_u16IuMiddleCnt                = 0;
   GMAIN_u16IuMiddleSum                = 0;
   GMAIN_bSpdReadyEst                  = 0;
   GMAIN_u16SpdReadyEstCnt             = 0;
   GMAIN_u16VadcBhv                    = 0;
   GMAIN_bSoftOvBhvFlg                 = FALSE;
   GMAIN_u8IgbtLowFltCnt               = 0;
   GMAIN_u8IgbtHighFltCnt              = 0;
   GMAIN_u8StopCacheFreezeFrameCnt     = 0;
}

/******************************************************************************/
/*                                                                            */
/* !Runnable    : GMAIN_MsgScaleTxFaults function                              */
/* !Trigger     : GMain Function                                               */
/* !Description : Update GDCU_Fault0 - GDCU_Fault15 signals           */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
static void GMAIN_MsgScaleTxFaults(void)
{
   uint8 u8Index = 0;
   MAIN_ECPParam tLocECPParam;

   MAIN_REC_vidClrErrCode(eMAIN_REC_BUF_IDX_MCU2);
   MAIN_ECP_vidPollingFault(eMAIN_REC_BUF_IDX_MCU2, &tLocECPParam, sizeof(tLocECPParam));

   for(u8Index = 0; u8Index < 16; u8Index++)
   {
      GMAIN_u8DEV_Fault[u8Index] = tLocECPParam.u8LocFaultCode[u8Index];
   }
}

/******************************************************************************/
/*                                                                            */
/* !Runnable    : GMAIN_bInitOcTrimData                                        */
/* !Trigger     :                                                             */
/* !Description :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : RLIU                                                        */
/******************************************************************************/
boolean GMAIN_bInitOcTrimData(void)
{
   boolean bLocalDataValid = TRUE;
   
#ifdef _PLATFORM_GEN_CODE_EMB_
   GSD_OffsetCosTrim_F32    = (float)GMAIN_as32OCTrimNvm[0];
   GSD_OffsetSinTrim_F32    = (float)GMAIN_as32OCTrimNvm[1];
   GSD_GainCosTrim_F32      = (float)((float)GMAIN_as32OCTrimNvm[2] / GOC_TRIM_DATA_GAIN);
   GSD_GainSinTrim_F32      = (float)((float)GMAIN_as32OCTrimNvm[3] / GOC_TRIM_DATA_GAIN);
   GSD_AutoPhasingAngle_F32 = (float)((float)GMAIN_as32OCTrimNvm[4] / GOC_TRIM_DATA_GAIN);
#endif
   
#ifdef _PLATFORM_GEN_CODE_SA_
   float* Local_pf32OcTrim = NULL_PTR;

   Local_pf32OcTrim  = &SAMTSES_OffsetCosTrimC;
   *Local_pf32OcTrim = (float)GMAIN_as32OCTrimNvm[0];
   
   Local_pf32OcTrim  = &SAMTSES_OffsetSinTrimC;
   *Local_pf32OcTrim = (float)GMAIN_as32OCTrimNvm[1];
   
   Local_pf32OcTrim  = &SAMTSES_GainCosTrimC;
   *Local_pf32OcTrim = (float)(GMAIN_as32OCTrimNvm[2] / GOC_TRIM_DATA_GAIN);
   
   Local_pf32OcTrim  = &SAMTSES_GainSinTrimC;
   *Local_pf32OcTrim = (float)(GMAIN_as32OCTrimNvm[3] / GOC_TRIM_DATA_GAIN);

   Local_pf32OcTrim  = &SAMTSES_AutoPhasingAngleC;
   *Local_pf32OcTrim = (float)(GMAIN_as32OCTrimNvm[4] / GOC_TRIM_DATA_GAIN);
#endif
   
   return bLocalDataValid;
}

/******************************************************************************
*  
* !FuncName    : GMAIN_vidOcDataRestore  
* !Description : OC Data store after online calibration finished.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void GMAIN_vidOcDataRestore(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   GMAIN_as32OCTrimNvm[0] = (sint32)GSDMTMEP_OffsetCosTrimCal;
   GMAIN_as32OCTrimNvm[1] = (sint32)GSDMTMEP_OffsetSinTrimCal;
   GMAIN_as32OCTrimNvm[2] = (sint32)(GSDMTMEP_GainCosTrimCal * GOC_TRIM_DATA_GAIN);
   GMAIN_as32OCTrimNvm[3] = (sint32)(GSDMTMEP_GainSinTrimCal * GOC_TRIM_DATA_GAIN);
   GMAIN_as32OCTrimNvm[4] = (sint32)(GFTSMREF_AutoPhaseCalLock * GOC_TRIM_DATA_GAIN);
#endif
}

/******************************************************************************
*  
* !FuncName    : GMAIN_f32GetAutophsingAngle  
* !Description : 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
float GMAIN_f32GetAutophsingAngle(void)
{
   float f32AutoPhsAngRsp = 0;

#ifdef _PLATFORM_GEN_CODE_EMB_
   float f32AutophsAng01 = 0;
   float f32AutoPhsAng02 = 0;
   
   f32AutophsAng01 = GSD_AutoPhasingAngle_F32;
   f32AutoPhsAng02 = GSD_AutoPhasingAngle_F32;

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
* !FuncName    : GMAIN_bSetSimensAutophsAngC  
* !Description : 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean GMAIN_bSetSimensAutophsAngC(const uint16 u16AutophsAng)
{
   return TRUE;
}

/******************************************************************************
*  
* !FuncName    : GMAIN_bSetSaforiAutophsAngC  
* !Description : 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean GMAIN_bSetSaforiAutophsAngC(const uint16 u16AutophsAng)
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
   pf32LocValueAddr = &GSDMTMEP_AutoPhasingAngleC;
   *pf32LocValueAddr = f32LocAutoPhsAng;
#endif

   GMAIN_as32OCTrimNvm[4] = (sint32)(f32LocAutoPhsAng * GOC_TRIM_DATA_GAIN);
   /* Call Store Task */
   MAIN_OCT_SetOcDataStoreReq(TRUE);

   return TRUE;
}

/******************************************************************************
*  
* !FuncName    : GMAIN_vidMotorSpeedEst
* !Description : Estimate motor speed according to Current frequency.
* !Task: 100us
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void GMAIN_vidMotorSpeedEst(const float f32Iu)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   if (f32Iu >= 10)
   {
      if (GMAIN_u16IuPositiveCnt < 0xFFFF)
      {
         GMAIN_u16IuPositiveCnt++;
      }

      if (GMAIN_u16IuNegtiveCnt > 0)
      {
         GMAIN_u16IuNegtiveSum = GMAIN_u16IuNegtiveCnt;
         GMAIN_u16IuNegtiveCnt = 0;
      }

      if (GMAIN_u16IuMiddleCnt > 0)
      {
         GMAIN_u16IuMiddleSum = GMAIN_u16IuMiddleCnt;
         GMAIN_u16IuMiddleCnt = 0;
      }
   }
   else if (f32Iu <= (-10))
   {
      if (GMAIN_u16IuPositiveCnt > 0)
      {
         GMAIN_u16IuPositiveSum = GMAIN_u16IuPositiveCnt;
         GMAIN_u16IuPositiveCnt = 0;
      }

      if (GMAIN_u16IuNegtiveCnt < 0xFFFF)
      {
         GMAIN_u16IuNegtiveCnt++;
      }
   }
   else
   {
      if (GMAIN_u16IuMiddleCnt < 0xFFFF)
      {
         GMAIN_u16IuMiddleCnt++;
      }
      else
      {
         GMAIN_u16IuMiddleSum = GMAIN_u16IuMiddleCnt;
      }
   }

   if (GMAIN_u16IuCycleCnt < 450)
   {
      GMAIN_u16IuCycleCnt++;
      GMAIN_u32IuCycleTim += (GMAIN_u16IuPositiveSum + GMAIN_u16IuNegtiveSum + GMAIN_u16IuMiddleSum);
   }
   else
   {
      GMAIN_u32IuCycleTim = GMAIN_u32IuCycleTim / GMAIN_u16IuCycleCnt;
      GMAIN_f32IuPeriod   = GMAIN_u32IuCycleTim * 0.0001;
      GMAIN_u16IuCycleCnt = 0;
      GMAIN_u32IuCycleTim = 0;
   }

   if (GMAIN_f32IuPeriod > 0)
   {
      GMAIN_f32IuFrequency = (1 / GMAIN_f32IuPeriod);
      /* !Comment: motor speed estimate. */
      GMAIN_f32MotSpdEst = (GMAIN_f32IuFrequency / GSDMTMEP_MecaRpmToElecRdsC) * 6.28318;
   }
   else
   {
      GMAIN_f32MotSpdEst = GFSSMACS_SpeedReadyThresholdC * 2;
   }

   if (GMAIN_f32MotSpdEst <= GFSSMACS_SpeedReadyThresholdC)
   {
      if (GMAIN_u16SpdReadyEstCnt < GMAIN_ku16SpdReadyEstConfirmC)
      {
         GMAIN_u16SpdReadyEstCnt++;
      }
      else
      {
         GMAIN_bSpdReadyEst = FALSE;
      }
   }
   else
   {
      GMAIN_bSpdReadyEst = TRUE;
      GMAIN_u16SpdReadyEstCnt = 0;
   }
#endif
}

/******************************************************************************
*  
* !FuncName    : GMAIN_bSpeedReadyMng
* !Description : Speed ready signal management, 
* according to resolver and current estimate.
* !Task: 1ms
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean GMAIN_bSpeedReadyMng(void)
{
   boolean bLocSpeedReady = FALSE;

#ifdef _PLATFORM_GEN_CODE_EMB_
  /*GFSSMACS_SpeedReadyExtThrdC GFSSMACS_SpeedReadyThresholdC*/
   if((FaultDetn_u16Read_GFSMTRDG_Logged() != 0)
   || (FaultDetn_u16Read_GSDMTMEP_ResSquaSumErrByFTLogged() != 0)
   || (FaultDetn_u16Read_GSDMTMEP_CosVccLogged() != 0)
   || (FaultDetn_u16Read_GSDMTMEP_CosGndLogged() != 0)
   /* || (FaultDetn_u16Read_GSDMTMEP_SinVccLogged() != 0) */
   /* || (FaultDetn_u16Read_GSDMTMEP_SinGndLogged() != 0) */)
   {
      if((GFS_MecaSpeedRpm_F32 > GFSSMACS_SpeedReadyThresholdC)
      || (TRUE == GMAIN_bSpdReadyEst))
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
      bLocSpeedReady = GFSSMACS_SCSpeedReady;
   }
#endif

   return bLocSpeedReady;
}

#ifdef _PLATFORM_GEN_CODE_EMB_
/******************************************************************************
*  
* !FuncName    : GMAIN_vidAscRecvCond
* !Description : ASC Recover Condition 
* !Task: 10ms
******************************************************************************
* !LastAuthor  : 
******************************************************************************/
static void GMAIN_vidAscRecvCond(void)
{
   boolean bLocOcDataValidFlag = FALSE;
   bLocOcDataValidFlag = MAIN_OCT_bCheckOcTrimData(eMAIN_UNIT_GCU_INDEX);

   if((GFTMTLCS_Iu < GMAIN_f32UvwOvCurrThdC)&&
      (GFTMTLCS_Iv < GMAIN_f32UvwOvCurrThdC)&&
      (GFTMTLCS_Iw < GMAIN_f32UvwOvCurrThdC)&&
      (GFT_Iuvw3_U16[0] > GFTMTLCS_A2DLowThresholdC)&&
      (GFT_Iuvw3_U16[1] > GFTMTLCS_A2DLowThresholdC)&&
      (GFT_Iuvw3_U16[2] > GFTMTLCS_A2DLowThresholdC)&&
      (GFT_Iuvw3_U16[0] < GFTMTLCS_A2DHighThresholdC)&&
      (GFT_Iuvw3_U16[1] < GFTMTLCS_A2DHighThresholdC)&&
      (GFT_Iuvw3_U16[2] < GFTMTLCS_A2DHighThresholdC)&&
      (GFSEVBHV_Voltage < GFSEVBHV_HighVoltageThrC)&&
      (GMAIN_u16VadcBhv < GMAIN_u16OverBhvThdC)&&
      (0 == FaultDetn_u16Read_GBSW_HW_OCDataNotRationalLogged())&& 
      (GSDMTMEP_MecaSpeedRpm < GSDMTMEP_OverSpeedThdC)&&
      (GSDMTMEP_MecaSpeedRpm > GSDMTMEP_UnderSpeedThdC)&&
      (GSDMTMEP_PosCompError < GSDMTMEP_PositionMarginC)&&
      (GSD_ResolverSinCos2_U16[0] > GSDMTMEP_A2DShortCircuitGndC)&&
      (GSD_ResolverSinCos2_U16[0] < GSDMTMEP_A2DShortCircuitVccC)&&
      (GSD_ResolverSinCos2_U16[1] > GSDMTMEP_A2DShortCircuitGndC)&&
      (GSD_ResolverSinCos2_U16[1] < GSDMTMEP_A2DShortCircuitVccC)&&
      (GFSMTRDG_SinLVoltFild > GFSMTRDG_CONSTANTTWO)&&
      (GFSMTRDG_SinLVoltFild < GFSMTRDG_CONSTANTTHREE)&&
      (GFSMTRDG_SinHVoltFild > GFSMTRDG_CONSTANTTWO)&&
      (GFSMTRDG_SinHVoltFild < GFSMTRDG_CONSTANTTHREE)&&
      (GFSMTRDG_CosHVoltFild > GFSMTRDG_CONSTANTTWO)&&
      (GFSMTRDG_CosHVoltFild < GFSMTRDG_CONSTANTTHREE)&&
      (GFSMTRDG_CosLVoltFild > GFSMTRDG_CONSTANTTWO)&&
      (GFSMTRDG_CosLVoltFild < GFSMTRDG_CONSTANTTHREE)&&
      (TRUE == bLocOcDataValidFlag))
   {
      GCCU6_vidSetClrTrapReq(TRUE);
   }
   else
   {
      GCCU6_vidSetClrTrapReq(FALSE);
   }
}
#endif

/******************************************************************************
*  
* !FuncName    : GMAIN_bChkOcCondition  
* !Description : check whether OC runing condition satisfied.
*
******************************************************************************
* !LastAuthor  : H.Wang
                 LiZhaoPo 20240703 CV From 265GCU and Prefix variables with a G
******************************************************************************/
boolean GMAIN_bChkOcCondition(void)
{
   boolean bLocRocCondSts = FALSE;
#ifdef _PLATFORM_GEN_CODE_EMB_
   if((GFSSMACS_GFS_HIGHVOLT_STANDBY == GFSSMACS_AclState)
   && (GFSEVBHV_VoltageFild > GFSSMACS_HiPwrRdyVoltC)
   && ((GFSEVBLV_VoltageFild > 12) && (GFSEVBLV_VoltageFild < 36))
   && ((GFS_MecaSpeedRpm_F32 < 100) && (GFS_MecaSpeedRpm_F32 > -100)))
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
* !FuncName    : GMAIN_vidGetProgCondition
* !Trigger     : UDS callout.  
* !Description : Get GCU motor state whether jump to boot.
*
******************************************************************************
* !LastAuthor  : H.Wang
******************************************************************************/
boolean GMAIN_vidGetProgCondition(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /* Used to Judge whether reset and jump to bootloader can execute. */
   /*  GFSSMACS_AclState : init :1   standy:2  ready :3   fault:13 */
   if ( ( ( (1 == GFSSMACS_AclState) || (2 == GFSSMACS_AclState ) || (3 == GFSSMACS_AclState ) ||
            (13 == GFSSMACS_AclState ) || (15 == GFSSMACS_AclState ) || (4 == GFSSMACS_AclState ) ||
            (17 == GFSSMACS_AclState ) || (18 == GFSSMACS_AclState) ))&&
            ((GSDMTMEP_MecaSpeedRpm <= 300) && (GSDMTMEP_MecaSpeedRpm >= -300))
         || (GMAIN_u32TestVar2 == 0x5A5A5A5A)
      )
   {
      GMAIN_bProgConditionOk = TRUE;
   }
   else
   {
      GMAIN_bProgConditionOk = FALSE;
   }
#else
   GMAIN_bProgConditionOk = TRUE;
#endif
   return GMAIN_bProgConditionOk;
}
#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
