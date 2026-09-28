#include "IOHAL.h"
#include "FAULT_Api.h"
#include "Dsm.h"
#include "Dsm_Typ.h"
#include "Icu_17_TimerIp.h"
#include "GMAIN_L.h"
#include "MAIN.h"
#include "Pwm_17_GtmCcu6.h" 
#include "Pwm_17_GtmCcu6_Cfg.h"
#include "Port.h"
#include "GCCU6.h"
#include "GCCU6_L.h"
#include "GCCU6_Cfg.h"
#include "CCU6_Hal.h"
#include "IfxCcu6_PwmHl.h"

/* !Comment: Emergency stop fault level which could not be recover after ASC. */
#define GCCU6_EMGCY_STOP_FAULT_LEVEL   (5U)

/* !Comment: High Voltage gain. */
#define GCCU6_HIGHVOL_GAIN                        (0.199f)
/* !Comment: Middle point diagnose working condition: HV over TBD. */
#define GCCU6_MIDPOINT_DIAG_HV_THRD      (250)

/* !Comment: GCCU6 Power on delay 100ms, wait for power on of current measure borad */
#define GCCU6_PO_DELAY      (100U)
/* !Comment: GCCU6 Power on delay 50ms, use for ALIM PWM soft-startup. */
#define GCCU6_ALIM_PO_DELAY (50U)
/* !Comment: GCCU6 T13 period value. */
#define GCCU6_T13_PERIOD      (10000UL)
/* !Comment: GCCU6 T13 compare value. */
#define GCCU6_T13_CMP_VAL    (7440U)
/* !Comment: MCU ASC state minimal period: 1000ms. */
#define GCCU6_MCU_ASC_PERD_MIN      (1000)
/* !Comment: MCU ASC state exit time: 1000ms. */
#define GCCU6_MCU_ASC_EXIT_TIME      (1000)
/* !Comment: MCU ASC DELAY for deadtime: 4us. */
#define GCCU6_MCU_ASC_DEADTIME   (138)
/* !Comment: GCCU6 T12 default period. */
#define GCCU6_T12_PERD_DEFAULT      (2499UL)
/* !Comment: GCCU6 T12 Max Period, relate to frequency 1KHZ. */
#define GCCU6_T12_PERD_MAX      (25000UL)
/* !Comment: GCCU6 T12 Min Period, relate to frequency 12KHZ. */
#define GCCU6_T12_PERD_MIN       (2080UL)

/* !Comment: IGBT driver clock duty cycle physics value. */
#define GCCU6_IGBT_CLK_PHYS      (0.417f)
/* !Comment: IGBT driver clock duty cycle raw value. */
#define GCCU6_IGBT_CLK_RAW      ( (uint16)(32768.0f * GCCU6_IGBT_CLK_PHYS) )
/* !Comment: IGBT driver clock duty cycle physics value. */
#define GCCU6_ALIM_CLK_PHYS      (0.68f)
/* !Comment: IGBT driver clock duty cycle raw value. */
#define GCCU6_ALIM_CLK_RAW      ( (uint16)(32768.0f * GCCU6_ALIM_CLK_PHYS) )

/*!Comment: T12 counter zero match threshold:  500*0.02 = 10us. */
#define GCCU6_T12_ZERO_MATCH_LINE      (500)
/* !Comment: P5V HS or HS sample gain. */
#define GCCU6_AD2VOL_GAIN      (0.002442)
/* !Comment: P5V AD value of 1.5V. */
#define GCCU6_P5V_AD_1V5      (1228)

/* !Comment: GCCU6 fault counter max. */
#define GCCU6_FAULT_CNT_MAX       (10)

/* !Comment: GCCU6 P5V HS or LS self test wait time:150ms. */
#define GCCU6_P5V_SELF_TST_WAIT_TIM      (15)

/* !Comment: Excitation PWM control state */
#define GCCU6_EXCIT_OFF                 (0)
#define GCCU6_EXCIT_ON                  (1)
#define GCCU6_EXCIT_PWM_DUTY            (16384U)

/* !Comment: MCU ASC function step. */
enum
{
   GCCU6_MCU_ASC_CLOSE = 0,
   GCCU6_MCU_ASC_ONGOING,
   GCCU6_MCU_ASC_EXIT,
   GCCU6_MCU_ASC_EXIT_DELAY,
   GCCU6_MCU_ASC_FINSH,
   GCCU6_MCU_ASC_RECOVER,
   GCCU6_MCU_ASC_OVER_TIME,
};

/* !Comment: MCU ASC type. */
enum
{
   GCCU6_ASC_TYPE_UNDEF = 0,
   GCCU6_ASC_TYPE_LOWSIDE,
   GCCU6_ASC_TYPE_HIGHSIDE,
   GCCU6_ASC_TYPE_ALLOFF
};

/* !Comment: IGBT middle point pre-test step. */
enum
{
   GCCU6_PRETEST_STEP_IDLE = 0,
   GCCU6_PRETEST_STEP_RUN,
   GCCU6_PRETEST_STEP_FINISH
};

/* !Comment: P5VHS and P5VLS power management state. */
enum
{
  GCCU6_enuP5V_PO_DELAY = 0,
  GCCU6_enuP5V_POW_NORMAL,
  GCCU6_enuP5V_HS_FLT_ASC,
  GCCU6_enuP5V_HS_CLOSE,
  GCCU6_enuP5V_LS_FLT_ASC,
  GCCU6_enuP5V_LS_CLOSE,
  GCCU6_enuP5V_WAIT_REINIT,
  GCCU6_enuP5V_REINIT,
};

static IfxCcu6_PwmHl GCCU6_udtIfxCcu6PwmHlCfg;
volatile Ifx_CCU6 *GCCU6_pstrModule = &MODULE_CCU61;

#define GCCU6_START_CODE_FAST_CPU1
#include "CCU6_MemMap.h"

static void GCCU6_vidStopPwmOutput(void);
static void GCCU6_vidStartPwmOutput(void);
static void GCCU6_vidStartTimer(void);
static uint16 IfxCcu6_GetT12PeriodVal(Ifx_CCU6 *ccu6);
static void IfxCcu6_SetTrapFlg(Ifx_CCU6 *ccu6);
static void IfxCcu6_ClrTrapFlg(Ifx_CCU6 *ccu6);

static uint16 IfxCcu6_GetT12PeriodVal(Ifx_CCU6 *ccu6)
{
   return (uint16)ccu6->T12PR.B.T12PV;
}

static void IfxCcu6_SetTrapFlg(Ifx_CCU6 *ccu6)
{
   ccu6->ISS.B.STRPF = 1;
}

static void IfxCcu6_ClrTrapFlg(Ifx_CCU6 *ccu6)
{
   ccu6->ISR.B.RTRPF = 1;
}

/*********************************************************************
* 
* !Function    : GCCU6_vidStartTimer
* !Description : Start T12, T13.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void GCCU6_vidStartTimer(void)
{
   IfxCcu6_PwmHl *driver = &GCCU6_udtIfxCcu6PwmHlCfg;
   
   IfxCcu6_startTimer(driver->timer->ccu6, TRUE, TRUE);
}

/******************************************************************************/
/*                                                                            */
/* !Function    : GCCU6_vidInit                                                */
/* !Description : GCCU6 Initialization, must be call in BSW initialization     */
/* !Reference   :                                                             */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                        */
/******************************************************************************/
void GCCU6_Init(void)
{
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;
   IfxCcu6_PwmHl_Config config;

   GCCU6_pstrModule            = &MODULE_CCU61;
   GCCU6_u16PwmModReq       = GVSISRV_VSI_MODE_REQ_OFF;
   GCCU6_u8PwmState            = GVSISRV_SIGNAL_MODE_REQ_OFF;
   GCCU6_u16T12PeriodVal      = GCCU6_T12_PERD_DEFAULT;
   GCCU6_au32PWMOnTime[0] = 0;
   GCCU6_au32PWMOnTime[1] = 0;
   GCCU6_au32PWMOnTime[2] = 0;
   GCCU6_u16PowerOnDelay    = 0;
   GCCU6_u16AlimPowerOnDelay = 0;
   GCCU6_u16McuAscSttDelay  = 0;
   GCCU6_u32TrapCreq = 0;
   GCCU6_u8McuAscSttStep     = GCCU6_MCU_ASC_CLOSE;
   GCCU6_bMotorSpdRdy         = FALSE;
   GCCU6_bIsGCCU6Start          = FALSE;
   GCCU6_bTrapTrigger           = FALSE;
   GCCU6_bClrTrapReq            = FALSE;
   GCCU6_bAkdAfterAscReq     = FALSE;
   GCCU6_bIuvwCompReq       = FALSE;
   GCCU6_bHwFaultIgbtH         = FALSE;
   GCCU6_bHwFaultIgbtL         = FALSE;
   GCCU6_bHwFaultOvcU     = FALSE;
   GCCU6_bHwFaultOvcV     = FALSE;
   GCCU6_bHwFaultOvcW     = FALSE;
   GCCU6_bHwFaultDcOvVolt   = FALSE;
   GCCU6_u8McuAscType        = GCCU6_ASC_TYPE_UNDEF;
   GCCU6_bT12ZeroMatchFlg   = FALSE;
   GCCU6_bPwmOnGoingFlg    = FALSE;
   GCCU6_u8AscRecoverCnt = 0;
   GCCU6_u8OvcRcvCnt = 0;
   GCCU6_f32PwmDutyPhysUZ   = 0;
   GCCU6_f32PwmDutyPhysVZ   = 0;
   GCCU6_f32PwmDutyPhysWZ  = 0;
   GCCU6_bPwmMidPointU         = FALSE;
   GCCU6_bPwmMidPointV         = FALSE;
   GCCU6_bPwmMidPointW         = FALSE;
   GCCU6_u16PwmMidPointErrCnt = 0;
   GCCU6_bIgbtHighSideShort   = FALSE;
   GCCU6_bIgbtLowSideShort    = FALSE;
   GCCU6_u8PreTestStep         = GCCU6_PRETEST_STEP_IDLE;
   GCCU6_u16HighVolAdc         = 0;
   GCCU6_f32HighVolPhys         = 0;
   GCCU6_u16P5VHSAdc           = 0;
   GCCU6_u8P5VHSFltCnt         = 0;
   GCCU6_u8P5VLSFltCnt         = 0;
   GCCU6_bP5VHSFltFlg         = FALSE;
   GCCU6_bP5VLSFltFlg         = FALSE;
   GCCU6_u8P5VPowerMngStt     = GCCU6_enuP5V_POW_NORMAL;
   GCCU6_bP5VDiagReinitCmd    = FALSE;
   GCCU6_u8P5VSelfTstTimCnt   = 0;
   GCCU6_u32DrvClkHsPerdRaw = 0;
   GCCU6_u32DrvClkHsDutyRaw = 0;
   GCCU6_f32DrvClkHsDuty = 0;
   GCCU6_u32DrvClkLsPerdRaw = 0;
   GCCU6_u32DrvClkLsDutyRaw = 0;
   GCCU6_f32DrvClkLsDuty = 0;
   GCCU6_u8StartMidPotDetCnt = 0;
   
   driver = &GCCU6_udtIfxCcu6PwmHlCfg;
   config.timer = &GCCU6_kudtIfxCcu6TimerWithTriggerCfg;
   module = config.timer->ccu6;

   IfxCcu6_enableModule(module);
   IfxCcu6_stopTimer(module, TRUE, TRUE);
   /* T12 initialization: Setting PWM period and duty. */

   IfxCcu6_setT12PeriodValue(module, 2499);
   IfxCcu6_enableShadowTransfer(module, TRUE, FALSE);
   IfxCcu6_setInputClockFrequency(module, IfxCcu6_TimerId_t12, 1);
   
   IfxCcu6_setT12CountMode(module, IfxCcu6_T12CountMode_centerAligned);
   IfxCcu6_setT12CounterValue(module, 0);
   /* Interrupt enable for T12 one-match, just for trigger ADC. */
   IfxCcu6_enableInterrupt(module, IfxCcu6_InterruptSource_t12OneMatch);
   if (GCCU6_bDualSmpEnaC)
   {
      IfxCcu6_enableInterrupt(module, IfxCcu6_InterruptSource_t12PeriodMatch);
   }
   IfxCcu6_routeInterruptNode(module, IfxCcu6_InterruptSource_t12OneMatch, IfxCcu6_ServiceRequest_3);
   /* Disable CCU60 interrupt, so T12 just trigger event for ADC but do not trigger interrupt service for CPU. */
   GCCU6_vidDisableTrap();

   /* Configure module output trigger ADC: U/V/W current. */
   IfxCcu6_connectTrigger(module, IfxCcu6_TrigOut_1, IfxCcu6_TrigSel_sr3);
#if 0
   /* T13 initializations */
   IfxCcu6_setOutputPassiveLevel(module, IfxCcu6_ChannelOut_cout3, ActiveState_low);
   IfxCcu6_enableModulationOutput(module, IfxCcu6_TimerId_t13, IfxCcu6_ChannelOut_cout3);
   IfxCcu6_enableTimer(module, IfxCcu6_TimerId_t13);
   /* Duty cycle initialisation */
   IfxCcu6_setT13CounterValue(module, 0);
   IfxCcu6_setT13CompareValue(module, GCCU6_T13_CMP_VAL);
   /* !Comment: T13 is not start or stop by T12, so do not use single shot. */
   IfxCcu6_setSingleShotModeEnable(module, FALSE, FALSE);
   IfxCcu6_setT13TriggerEventMode(module, IfxCcu6_T13TriggerEvent_noAction);
   IfxCcu6_setT13TriggerEventDirection(module, IfxCcu6_T13TriggerDirection_noAction);
   /* clock initialisation , set T13 frequency to 10K. */
   /* Set T13 period to 100us. */
   IfxCcu6_setT13PeriodValue(module, GCCU6_T13_PERIOD);
   IfxCcu6_enableShadowTransfer(module, FALSE, TRUE);

   IfxCcu6_setInputClockFrequency(module, IfxCcu6_TimerId_t13, 0);
    
   /* Configure module output trigger ADC: Sin and Cos. */
   IfxCcu6_connectTrigger(module, IfxCcu6_TrigOut_0, IfxCcu6_TrigSel_cout63);
#endif
   IfxGCcu6_PwmHl_init(driver, &config);
   /* !Comment: Get current T12 period value, it must be put before PWM duty setting function. */
   GCCU6_u16T12PeriodVal      = IfxCcu6_GetT12PeriodVal(driver->timer->ccu6);
   GCCU6_vidSetPwmHlDuty(0, 0, 0);
}

/*********************************************************************
* 
* !Function    : GCCU6_vidMotorStateMng
* !Description : GCCU6 state machine management, schedule Task : 1ms
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
* !Comment     : Fault record deleted releated fault recover 
**********************************************************************/
void GCCU6_vidMotorStateMng(void)
{
   boolean bLocAkdEnaFlg = FALSE;

   GCCU6_u16HighVolAdc = IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();
   GCCU6_f32HighVolPhys = (float)GCCU6_u16HighVolAdc * GCCU6_HIGHVOL_GAIN;
   
   /* !Comment: ASC state management. */
   switch (GCCU6_u8McuAscSttStep)
   {
      case GCCU6_MCU_ASC_CLOSE:
      {
         if (GCCU6_u16PwmMidPointErrCnt > GCCU6_ku8PwmMidPointFaultC)
         {
            /*No fault by LiZhaoPo-20240425*/
            /*FaultDetection(GBSW_HW_,  MIDPOINTFAULT  , TRUE);*/
         }
         else
         {
            if (FALSE == GCCU6_bPwmOnGoingFlg)
            {
               GCCU6_u16PwmMidPointErrCnt = 0;
            }
            /*No fault by LiZhaoPo-20240425*/
            /*FaultDetection(GBSW_HW_,  MIDPOINTFAULT  , FALSE);*/
         }
      }
      break;

      case GCCU6_MCU_ASC_ONGOING:
      {
         if(GCCU6_u16McuAscSttDelay < GCCU6_MCU_ASC_PERD_MIN)
         {
            GCCU6_u16McuAscSttDelay++;
         }
         else
         {
            if (FALSE == GCCU6_bMotorSpdRdy)
            {
               GCCU6_u16McuAscSttDelay = 0;
               GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_EXIT;
            }
         }
      }
      break;

      case GCCU6_MCU_ASC_EXIT:
      {
         GCCU6_vidMcuAscExit();
         GCCU6_u16McuAscSttDelay = 0;
         GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_EXIT_DELAY;
      }
      break;

      case GCCU6_MCU_ASC_EXIT_DELAY:
      {
         /* Comment: Enable FRecord store */
         if (GCCU6_u16McuAscSttDelay < GCCU6_MCU_ASC_EXIT_TIME)
         {
            GCCU6_u16McuAscSttDelay++;
         }
         else
         {
            GCCU6_u16McuAscSttDelay = 0;
            GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_FINSH;
         }
      }
      break;

      case GCCU6_MCU_ASC_FINSH:
      {
         if ( (GCCU6_u8AscRecoverCnt < GCCU6_ku8AscRecoverCntMaxC) &&
              (GCCU6_u8OvcRcvCnt < GCCU6_ku8OvcRcvCntMaxC) )
         {
            bLocAkdEnaFlg = GCCU6_bGetAscRecoverCondition();

            if (bLocAkdEnaFlg)
            {
               GCCU6_u8AscRecoverCnt++;

               if ( (FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HLogged()  != 0) ||
                    (FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LLogged()  != 0) ||
                    (FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUILogged()  != 0) ||
                    (FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVILogged()  != 0) ||
                    (FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWILogged()  != 0) )
               {
                  GCCU6_u8OvcRcvCnt++;
               }
               
               /*!Comment: Clear hardware fault flag */
               GCCU6_bHwFaultDcOvVolt = FALSE;
               GCCU6_bHwFaultIgbtH    = FALSE;
               GCCU6_bHwFaultIgbtL    = FALSE;
               GCCU6_bHwFaultOvcU     = FALSE;
               GCCU6_bHwFaultOvcV     = FALSE;
               GCCU6_bHwFaultOvcW     = FALSE;

               /* !Comment: Clear software OVC flag. */
               GMAIN_bSoftOvCurrPhsUFlg = FALSE;
               GMAIN_bSoftOvCurrPhsVFlg = FALSE;
               GMAIN_bSoftOvCurrPhsWFlg = FALSE;
               GCCU6_u16PwmMidPointErrCnt = 0;
               GCCU6_u8StartMidPotDetCnt = 0;
               GMAIN_u8IgbtLowFltCnt = 0;
               GMAIN_u8IgbtHighFltCnt = 0;

               /* !Comment: Clear all fault log without DTC information. */
               FaultClear(DSM_UNIT_MAP_GCU);
               /* !Comment: Clear trap. */
               GCCU6_vidTryClearTrap();
               GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_RECOVER;
            }
         }
         else
         {
            GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_OVER_TIME;
         }
      }
      break;

      case GCCU6_MCU_ASC_RECOVER:
      {
         /* !Comment: Then jump to ASC Close state. */
         GCCU6_u16McuAscSttDelay = 0;
         
         GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_CLOSE;
      }
      break;

      case GCCU6_MCU_ASC_OVER_TIME:
      {
         /* !Comment: Wait Mcu excute active discharge and power off. */
      }
      break;
      
      default:
         break;
   }

   switch(GCCU6_u16PwmModReq)
   {
      case GVSISRV_VSI_MODE_REQ_OFF:
      {
         /* !Comment: GCCU6 only start once, during MCU power on stage. */
         if (FALSE == GCCU6_bIsGCCU6Start)
         {
            /* !Comment: Response FS PwmOff state immediately during power on stage. */
            GCCU6_u8PwmState = GVSISRV_SIGNAL_MODE_REQ_OFF;

            /* !Comment: delay 100ms for current measure board power on. */
            if (GCCU6_u16PowerOnDelay < GCCU6_PO_DELAY)
            {
               GCCU6_u16PowerOnDelay++;
            }
            else
            {
               /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_HS(DIO_HAL_OFF);*//*WRITE_IO_BLOCK_BY_LZJ*/
               /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_LS(DIO_HAL_OFF);*//*WRITE_IO_BLOCK_BY_LZJ*/
               /* !Comment: Start measure Driver board clock. */
               //Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_CLK_HS);
               //Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_CLK_LS);
               
               GCCU6_vidStartTimer();
               GCCU6_bIsGCCU6Start = TRUE;
            }
         }
         else
         {
            GCCU6_vidStopPwmOutput();
            GCCU6_u8PwmState = GVSISRV_SIGNAL_MODE_REQ_OFF;
         }
      }
      break;

      case GVSISRV_VSI_MODE_REQ_INIT_CAL1:
      case GVSISRV_VSI_MODE_REQ_INIT_CAL2:
      case GVSISRV_VSI_MODE_REQ_INIT_CAL3:
      {
         GCCU6_vidStopPwmOutput();
         GCCU6_u8PwmState = GVSISRV_SIGNAL_MODE_REQ_INIT;
      }
      break;
     
      case GVSISRV_VSI_MODE_REQ_PWM_DIRECT:
      {
         GCCU6_vidStartPwmOutput();
         GCCU6_u8PwmState = GVSISRV_SIGNAL_MODE_REQ_PWM_DIRECT;
      }
      break;
      
      default:
      {
         /* !Comment: No process. */
      }
      break;
   }
   
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetPwmHlDuty
* !Description : GCCU6 set PWM duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetPwmHlDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   uint16 u16LocT12PV;

   u16LocT12PV = (uint16)(GCCU6_pstrModule->T12PR.B.T12PV) + 1;
   if(u16LocT12PV > 0)
   {
      if (f32DutyU < 0.0f)
      {
         f32DutyU = 0;
      }
      else if (f32DutyU > 1.0)
      {
         f32DutyU = 1.0f;
      }
      else
      {
         /* !Comment: No process. */
      }

      if (f32DutyV < 0.0f)
      {
         f32DutyV = 0;
      }
      else if (f32DutyV > 1.0)
      {
         f32DutyV = 1.0f;
      }
      else
      {
         /* !Comment: No process. */
      }

      if (f32DutyW < 0.0f)
      {
         f32DutyW = 0;
      }
      else if (f32DutyW > 1.0)
      {
         f32DutyW = 1.0f;
      }
      else
      {
         /* !Comment: No process. */
      }
      
      /* !Comment: Record Duty for middle point diagnose. */
      GCCU6_f32PwmDutyPhysUZ = f32DutyU;
      GCCU6_f32PwmDutyPhysVZ = f32DutyV;
      GCCU6_f32PwmDutyPhysWZ = f32DutyW;
         
      f32DutyU = 1.0f - f32DutyU;
      f32DutyV = 1.0f - f32DutyV;
      f32DutyW = 1.0f - f32DutyW;

      GCCU6_au32PWMOnTime[0] = (uint32)((float32)u16LocT12PV * f32DutyU);
      GCCU6_au32PWMOnTime[1] = (uint32)((float32)u16LocT12PV * f32DutyV);
      GCCU6_au32PWMOnTime[2] = (uint32)((float32)u16LocT12PV * f32DutyW);

      GCCU6_pstrModule->CC6SR[0].B.CCS = (uint16)GCCU6_au32PWMOnTime[0];
      GCCU6_pstrModule->CC6SR[1].B.CCS = (uint16)GCCU6_au32PWMOnTime[1];
      GCCU6_pstrModule->CC6SR[2].B.CCS = (uint16)GCCU6_au32PWMOnTime[2];
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidExcitationPwmState
* !Description : Excitation PWM output inhbit and recover
* !input   : NONE 
* !output  : NONE
* !Comment : 
**********************************************************************
* !LastAuthor  : GYT
**********************************************************************/   
FUNC(void, GCCU6_CODE) GCCU6_vidExcitationPwmState(uint8 u8ExciPwmStateG)
{
   /* Close excitation PWM output */
   if(GCCU6_EXCIT_OFF == u8ExciPwmStateG)
   {
      Port_SetPinDirection(PortConf_PortContainer_PORT0_PORT_0_PIN_2, PORT_PIN_IN);
      Port_SetPinDirection(PortConf_PortContainer_PORT33_PORT_33_PIN_5, PORT_PIN_IN);
   }
   /* Recover excitation PWM output */
   else if(GCCU6_EXCIT_ON == u8ExciPwmStateG)
   {
      Port_SetPinDirection(PortConf_PortContainer_PORT0_PORT_0_PIN_2, PORT_PIN_OUT);
      Port_SetPinDirection(PortConf_PortContainer_PORT33_PORT_33_PIN_5, PORT_PIN_OUT);
   }
   else
   {
      ; /* Do nothing Wrong Parameter */
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetPwmMinDutyCycle
* !Description : GCCU6 set PWM minimal duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetPwmMinDutyCycle(const float32 f32MinDutyCyc)
{
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetPwmMaxDutyCycle
* !Description : GCCU6 set PWM max duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetPwmMaxDutyCycle(const float32 f32MaxDutyCyc)
{
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetPwmModReq
* !Description : GCCU6 set PWM mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetPwmModReq(const uint16 u16PwmMod)
{
   GCCU6_u16PwmModReq = u16PwmMod;
}

/*********************************************************************
* 
* !Function    : GCCU6_u16GetPwmModReq
* !Description : GCCU6 return PWM mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 GCCU6_u16GetPwmModReq(void)
{
   return GCCU6_u16PwmModReq;
}

/*********************************************************************
* 
* !Function    : GCCU6_u8GetPwmState
* !Description : GCCU6 return PWM state.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint8 GCCU6_u8GetPwmState(void)
{
   return GCCU6_u8PwmState;
}

/*********************************************************************
* 
* !Function    : GCCU6_u16GetPwmDutyUI
* !Description : GCCU6 return PWM duty.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 GCCU6_u16GetPwmDutyUI(void)
{
   return (uint16)GCCU6_au32PWMOnTime[0];
}

/*********************************************************************
* 
* !Function    : GCCU6_u16GetPwmDutyVI
* !Description : GCCU6 return PWM duty.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 GCCU6_u16GetPwmDutyVI(void)
{
   return (uint16)GCCU6_au32PWMOnTime[1];
}

/*********************************************************************
* 
* !Function    : GCCU6_u16GetPwmDutyWI
* !Description : GCCU6 return PWM duty.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 GCCU6_u16GetPwmDutyWI(void)
{
   return (uint16)GCCU6_au32PWMOnTime[2];
}

/*********************************************************************
* 
* !Function    : GCCU6_u16GetPwmDeadTime
* !Description : GCCU6 return PWM Dead time.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 GCCU6_u16GetPwmDeadTime(void)
{
   uint16 u16LocPwmDeadTime;
   IfxCcu6_PwmHl *driver = &GCCU6_udtIfxCcu6PwmHlCfg;

   u16LocPwmDeadTime = (uint16)driver->base.deadtime;

   return (u16LocPwmDeadTime);
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetPwmHlPeriod
* !Description : Set T12 PWM period.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetPwmHlPeriod(const uint16 u16LocT12Period)
{
   if ( (u16LocT12Period >= GCCU6_T12_PERD_MIN) && (u16LocT12Period <= GCCU6_T12_PERD_MAX) )
   {
      GCCU6_u16T12PeriodVal = u16LocT12Period;
      /* !Comment: Update T12 Period, but actual T12 Period will be updata in next period. */
      GCCU6_pstrModule->T12PR.B.T12PV = u16LocT12Period;
   }
}

/****************************************************************************************
* 
* !Function    : GCCU6_vidSetMotorSpdRdyFlg
* !Description : Set Motor Speed ready flag, use as condition of exit ASC function.
* !input :   NONE 
* !output : NONE
*****************************************************************************************
* !LastAuthor  : Daniel
****************************************************************************************/
void GCCU6_vidSetMotorSpdRdyFlg(boolean bMotorSpdRdy)
{
   /* !Comment: 1: Speed over 1500rpm, 0: Speed under 1500rpm. */
   GCCU6_bMotorSpdRdy = bMotorSpdRdy;
}

/****************************************************************************************
* 
* !Function    : GCCU6_vidSetClrTrapReq
* !Description : Set clear GCCU6 trap request, return standby after ASC.
* !input :   bClrTrapReq 
* !output : NONE
*****************************************************************************************
* !LastAuthor  : Daniel
****************************************************************************************/
void GCCU6_vidSetClrTrapReq(boolean bClrTrapReq)
{
   /* !Comment: 1: exit igbt close state, 0: keep igbt in close state. */
   GCCU6_bClrTrapReq = bClrTrapReq;
}

/*********************************************************************
* 
* !Function    : GCCU6_vidWait
* !Description : Software delay, DelayTime = 0.03us * time
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidWait(uint32 time)
{
   volatile uint32 localu32Counter;

   localu32Counter = time;
   while(localu32Counter > 0)
   {
      localu32Counter--;
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidMcuAscEnter
* !Description : Set GCU enter ASC mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidMcuAscEnter(void)
{
   boolean bLocFltPinVal = TRUE;
   
   Ifx_CCU6_PSLR    pslr;
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;

   driver =  &GCCU6_udtIfxCcu6PwmHlCfg;
   module = driver->timer->ccu6;
   
   if (GCCU6_bIsGCCU6Start)
   {
      /*Indicate MCU or GCU entered ASC*/
      // IOHAL_vidWrite_CH_DIO_OUT_M_MCU_ASC_STATE_MCU(TRUE);
      /* !Comment: Indicate FT module Pwm is OFF. */
      GCCU6_bPwmOnGoingFlg = FALSE;
      
      if(GCCU6_MCU_ASC_CLOSE == GCCU6_u8McuAscSttStep)
      {
         GCCU6_u8McuAscSttStep = GCCU6_MCU_ASC_ONGOING;

         /* !Comment: Read hardware fault pin value. */
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2();
         if (FALSE == bLocFltPinVal)
         {
            GCCU6_bHwFaultIgbtH = TRUE;
         }
         
         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2();
         if (FALSE == bLocFltPinVal)
         {
            GCCU6_bHwFaultIgbtL = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2();
         if (FALSE == bLocFltPinVal)
         {
            GCCU6_bHwFaultOvcU = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2();
         if (FALSE == bLocFltPinVal)
         {
            GCCU6_bHwFaultOvcV = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2();
         if (FALSE == bLocFltPinVal)
         {
            GCCU6_bHwFaultOvcW = TRUE;
         }

         /* !Comment: Keep ALL IGBTs closed time over 4us. */
         GCCU6_vidWait(GCCU6_MCU_ASC_DEADTIME);

         if (GCCU6_ASC_TYPE_UNDEF == GCCU6_u8McuAscType)
         {
            if ( ( (TRUE == GCCU6_bHwFaultIgbtH) && (TRUE == GCCU6_bHwFaultIgbtL) ) ||
                 ((TRUE == GCCU6_bP5VHSFltFlg) && (TRUE == GCCU6_bP5VLSFltFlg)) )
            {
               GCCU6_u8McuAscType = GCCU6_ASC_TYPE_ALLOFF;
            }
            else if ( (TRUE == GCCU6_bHwFaultIgbtL) ||
                      (TRUE == GCCU6_bIgbtHighSideShort) ||
                      (TRUE == GCCU6_bP5VLSFltFlg) )
            {
               GCCU6_u8McuAscType = GCCU6_ASC_TYPE_HIGHSIDE;
            }
            else
            {
               GCCU6_u8McuAscType = GCCU6_ASC_TYPE_LOWSIDE;
            }
         }

         if (GCCU6_ASC_TYPE_HIGHSIDE == GCCU6_u8McuAscType)
         {
            pslr.B.PSL         = 0;
            /* !Comment: Set CC passive state as LOW Level. */
            pslr.B.PSL        |= (1 << 0);
            pslr.B.PSL        |= (1 << 2);
            pslr.B.PSL        |= (1 << 4);
            /* !Comment: Set Cout passive state as HIGH Level. */
            pslr.B.PSL        |= (0 << 1);
            pslr.B.PSL        |= (0 << 3);
            pslr.B.PSL        |= (0 << 5);
            module->PSLR.B.PSL = pslr.B.PSL;
         }
         else if (GCCU6_ASC_TYPE_LOWSIDE == GCCU6_u8McuAscType)
         {
            pslr.B.PSL         = 0;
            /* !Comment: Set CC passive state as LOW Level. */
            pslr.B.PSL        |= (0 << 0);
            pslr.B.PSL        |= (0 << 2);
            pslr.B.PSL        |= (0 << 4);
            /* !Comment: Set Cout passive state as HIGH Level. */
            pslr.B.PSL        |= (1 << 1);
            pslr.B.PSL        |= (1 << 3);
            pslr.B.PSL        |= (1 << 5);
            module->PSLR.B.PSL = pslr.B.PSL;
         }
         else
         {
            pslr.B.PSL         = 0;
            /* !Comment: Set CC passive state as LOW Level. */
            pslr.B.PSL        |= (0 << 0);
            pslr.B.PSL        |= (0 << 2);
            pslr.B.PSL        |= (0 << 4);
            /* !Comment: Set Cout passive state as LOW Level. */
            pslr.B.PSL        |= (0 << 1);
            pslr.B.PSL        |= (0 << 3);
            pslr.B.PSL        |= (0 << 5);
            module->PSLR.B.PSL = pslr.B.PSL;
         }
         
         /* !Comment: Stop timer T12 and T13, In order to start shadow transfer immediately. */
         IfxCcu6_stopTimer(module, TRUE, TRUE);
         
         /* !Comment: Enable shadow transfer of T12. */
         IfxCcu6_enableShadowTransfer(module, TRUE, FALSE);

         /* !Comment: Start T12 and T13, shadow transfer has finished. */
         IfxCcu6_startTimer(module, TRUE, TRUE);
      }
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidMcuAscExit
* !Description : Set MCU exit ASC mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidMcuAscExit(void)
{
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;
   Ifx_CCU6_PSLR    pslr;

   driver =  &GCCU6_udtIfxCcu6PwmHlCfg;
   module = driver->timer->ccu6;

   if(GCCU6_MCU_ASC_EXIT == GCCU6_u8McuAscSttStep)
   {
      /*Indicate MCU or GCU exited ASC*/
      // IOHAL_vidWrite_CH_DIO_OUT_M_MCU_ASC_STATE_MCU(FALSE);
      pslr.B.PSL         = 0;
      /* !Comment: Set CC passive state as HIGH Level. */
      pslr.B.PSL        |= (0 << 0);
      pslr.B.PSL        |= (0 << 2);
      pslr.B.PSL        |= (0 << 4);

      /* !Comment: Set Cout passive state as LOW Level. */
      pslr.B.PSL        |= (0 << 1);
      pslr.B.PSL        |= (0 << 3);
      pslr.B.PSL        |= (0 << 5);

      module->PSLR.B.PSL = pslr.B.PSL;
      IfxCcu6_SetTrapFlg(module);
      IfxCcu6_enableShadowTransfer(module, TRUE, FALSE);
      
      GCCU6_u8McuAscType = GCCU6_ASC_TYPE_UNDEF;
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidTryClearTrap
* !Description : Try to clear trap, may not success because of hardware trap remain.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidTryClearTrap(void)
{
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;

   driver =  &GCCU6_udtIfxCcu6PwmHlCfg;
   module = driver->timer->ccu6;

   IfxCcu6_ClrTrapFlg(module);
   IfxCcu6_enableShadowTransfer(module, TRUE, FALSE);
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSoftTrapTrigger
* !Description : Trigger a software trap in case of emergency fault occurs. 
* !input :   bEmgcyStopReq: 0: Request Emergency stop;  1: No request. 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSoftTrapTrigger(const boolean bEmgcyStopReq)
{
   if (FALSE == bEmgcyStopReq)
   {
      if (GCCU6_MCU_ASC_CLOSE == GCCU6_u8McuAscSttStep)
      {
         IfxCcu6_SetTrapFlg(GCCU6_pstrModule);
      }
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidStopPwmOutput
* !Description : When GCCU6 in PWMOFF mode, this function set Multi channel 
*                       module to stop PWM output.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidStopPwmOutput(void)
{
   IfxCcu6_PwmHl *driver = &GCCU6_udtIfxCcu6PwmHlCfg;
   Ifx_CCU6_MCMOUTS mcmouts;
   Ifx_CCU6  *CCU6_Module;
   CCU6_Module = driver->timer->ccu6;
   
    mcmouts.U = CCU6_Module->MCMOUTS.U;
    if (0x00 != mcmouts.B.MCMPS)
    {
       GCCU6_u8StartMidPotDetCnt = 0;
       /* !Comment: Indicate FT module Pwm is OFF. */
       GCCU6_bPwmOnGoingFlg = FALSE;
       
       mcmouts.B.MCMPS   = 0x00;
       mcmouts.B.STRMCM  = 0; //1;
       CCU6_Module->MCMOUTS.U = mcmouts.U;
    }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidStartPwmOutput
* !Description : When GCCU6 in PwmDirect mode, this function set multi channel
*                      module to start PWM output.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidStartPwmOutput(void)
{
   IfxCcu6_PwmHl *driver = &GCCU6_udtIfxCcu6PwmHlCfg;
   Ifx_CCU6_MCMOUTS mcmouts;
   Ifx_CCU6  *CCU6_Module;
   CCU6_Module = driver->timer->ccu6;

   mcmouts.U = CCU6_Module->MCMOUTS.U;
   if (0x00 == mcmouts.B.MCMPS)
   {
      mcmouts.B.MCMPS   = 0x3F;
      mcmouts.B.STRMCM  = 0; //1;
      CCU6_Module->MCMOUTS.U = mcmouts.U;

      /* !Comment: First PWM cycle do not monitor middle point fault. */
      GCCU6_u8StartMidPotDetCnt = 0;
      /* !Comment: Indicate FT module Pwm is ON. */
      GCCU6_bPwmOnGoingFlg = TRUE;
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_vidEnaTrapPinFunc
* !Description : Enable Trap pin function
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidEnaTrapPinFunc(void)
{
   Ifx_CCU6 *module;

   module = GCCU6_kudtIfxCcu6TimerWithTriggerCfg.ccu6;

   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cc0);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cc1);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cc2);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cout0);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cout1);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cout2);
   IfxCcu6_setTrapMode(module, IfxCcu6_TrapMode_manual);
   
   if (GCCU6_bHwPinAscEnaC)
   {
      IfxCcu6_enableTrapPin(module);
   }
   else
   {
      IfxCcu6_disableTrapPin(module);
   }

   GCCU6_vidTryClearTrap();
   /* !Comment: Enable trap interrupt for ASC process. */
   IfxCcu6_enableInterrupt(module, IfxCcu6_InterruptSource_trap);
   IfxCcu6_routeInterruptNode(module, IfxCcu6_InterruptSource_trap, IfxCcu6_ServiceRequest_2);
   GCCU6_vidEnableTrap();
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSwitchPwmUpdEvent
* !Description : switch PWM update event according to T12 counter value, if T12
* zero match, switch PWM update event to T12 period match, if T12 period match,
* switch PWM update event to T12 zero match.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSwitchPwmUpdEvent(void)
{
   boolean bLocMidPointErrFlg = FALSE;
   uint16 u16LocT12CntVal;

   if (GCCU6_bDualSmpEnaC)
   {
      u16LocT12CntVal = GCCU6_pstrModule->T12.B.T12CV;
      GCCU6_u16T12CntVal = u16LocT12CntVal;

      /* !Comment: T12CV is reliable, SWSEL or SWSYN is not readable. */
      if (u16LocT12CntVal < GCCU6_T12_ZERO_MATCH_LINE)
      {
         GCCU6_pstrModule->MCMCTR.B.SWSEL = IfxCcu6_MultiChannelSwitchingSelect_t12PeriodMatch;
         GCCU6_pstrModule->MCMCTR.B.SWSYN = IfxCcu6_MultiChannelSwitchingSync_direct;
         GCCU6_bT12ZeroMatchFlg = TRUE;
      }
      else
      {
         GCCU6_pstrModule->MCMCTR.B.SWSEL = IfxCcu6_MultiChannelSwitchingSelect_t12OneMatch;
         GCCU6_pstrModule->MCMCTR.B.SWSYN = IfxCcu6_MultiChannelSwitchingSync_t12ZeroMatch;
         GCCU6_bT12ZeroMatchFlg = FALSE;
      }
   }
   else
   {
      GCCU6_bT12ZeroMatchFlg = TRUE;
   }

   /* !Comment: Middle point check. */
   bLocMidPointErrFlg = FALSE;
   if (GCCU6_bPwmOnGoingFlg)
   {
      if (GCCU6_u8StartMidPotDetCnt < GCCU6_ku8PwmMidPotStartDelayC)
      {
         GCCU6_u8StartMidPotDetCnt++;
      }
         
      /*GCCU6_bPwmMidPointU = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_U_GCU();
      GCCU6_bPwmMidPointV = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_V_GCU();
      GCCU6_bPwmMidPointW = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_W_GCU();*/
      
      if ( GCCU6_bT12ZeroMatchFlg )
      {
         if (GCCU6_f32PwmDutyPhysUZ <= GCCU6_kf32MidPointDutyLC)
         {
            if (GCCU6_bPwmMidPointU)
            {
               bLocMidPointErrFlg = TRUE;
               GCCU6_bIgbtHighSideShort = TRUE;
            }
         }

         if (GCCU6_f32PwmDutyPhysVZ <= GCCU6_kf32MidPointDutyLC)
         {
            if (GCCU6_bPwmMidPointV)
            {
               bLocMidPointErrFlg = TRUE;
               GCCU6_bIgbtHighSideShort = TRUE;
            }
         }

         if (GCCU6_f32PwmDutyPhysWZ <= GCCU6_kf32MidPointDutyLC)
         {
            if (GCCU6_bPwmMidPointW)
            {
               bLocMidPointErrFlg = TRUE;
               GCCU6_bIgbtHighSideShort = TRUE;
            }
         }
      }
      else
      {
         if (GCCU6_f32PwmDutyPhysUZ >= GCCU6_kf32MidPointDutyHC)
         {
            if (FALSE == GCCU6_bPwmMidPointU)
            {
               bLocMidPointErrFlg = TRUE;
               GCCU6_bIgbtLowSideShort = TRUE;
            }
         }

         if (GCCU6_f32PwmDutyPhysVZ >= GCCU6_kf32MidPointDutyHC)
         {
            if (FALSE == GCCU6_bPwmMidPointV)
            {
               bLocMidPointErrFlg = TRUE;
               GCCU6_bIgbtLowSideShort = TRUE;
            }
         }

         if (GCCU6_f32PwmDutyPhysWZ >= GCCU6_kf32MidPointDutyHC)
         {
            if (FALSE == GCCU6_bPwmMidPointW)
            {
               bLocMidPointErrFlg = TRUE;
               GCCU6_bIgbtLowSideShort = TRUE;
            }
         }
      }
   }

   if (GCCU6_u8StartMidPotDetCnt >= GCCU6_ku8PwmMidPotStartDelayC)
   {
      if (GCCU6_f32HighVolPhys >= GCCU6_MIDPOINT_DIAG_HV_THRD)
      {
         if (bLocMidPointErrFlg)
         {
            if (GCCU6_u16PwmMidPointErrCnt < 0xFFFF)
            {
               GCCU6_u16PwmMidPointErrCnt++;
            }
         }
         else
         {
            if (GCCU6_u16PwmMidPointErrCnt > 0)
            {
               GCCU6_u16PwmMidPointErrCnt--;
            }
         }
      }
   }
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetAscRecoverCondition
* !Description : return flag which enable GCU recover from ASC state.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetAscRecoverCondition(void)
{
   boolean bLocAkdEnaFlg = FALSE;
   boolean bLocPwmSttOff = FALSE;
   boolean bLocAscEnaPinVal = FALSE;
   boolean bLocEmgcyFaultDet = FALSE;
   boolean bLocIgbtHPinLevel = FALSE;
   boolean bLocIgbtLPinLevel = FALSE;
   boolean bLocOvcUPinLevel = FALSE;
   boolean bLocOvcVPinLevel = FALSE;
   boolean bLocOvcWPinLevel = FALSE;
   boolean bLocDrvClkFault = FALSE;
   uint8 u8LocFaultLevel = 0;
   
   u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU);
   bLocIgbtHPinLevel = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2();
   bLocIgbtLPinLevel = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2();
   /*bLocAscEnaPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_ENABLE_ASC_GCU();*/
   bLocOvcUPinLevel  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2();
   bLocOvcVPinLevel  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2();
   bLocOvcWPinLevel  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2();

   // if(GCCU6_kbDrvBdClkEnaC)
   // {
   //    if (( (GCCU6_f32DrvClkHsDuty < GCCU6_f32DrvClkDutyThdLowC) || (GCCU6_f32DrvClkHsDuty > GCCU6_f32DrvClkDutyThdHighC) ) 
   //    || ( (GCCU6_f32DrvClkLsDuty < GCCU6_f32DrvClkDutyThdLowC) || (GCCU6_f32DrvClkLsDuty > GCCU6_f32DrvClkDutyThdHighC) ))
   //    {
   //       bLocDrvClkFault = TRUE;
   //    }
   // }
   // else
   // {
   //    bLocDrvClkFault = FALSE;
   // }
   
   if (GVSISRV_SIGNAL_MODE_REQ_OFF == GCCU6_u8PwmState)
   {
      bLocPwmSttOff = TRUE;
   }
   else
   {
      bLocPwmSttOff = FALSE;
   }

   if((FALSE == bLocIgbtHPinLevel)
   || (FALSE == bLocIgbtLPinLevel)
   || (FALSE == bLocOvcUPinLevel)
   || (FALSE == bLocOvcVPinLevel)
   || (FALSE == bLocOvcWPinLevel))
   {
      bLocEmgcyFaultDet = TRUE;
   }
   else
   {
      bLocEmgcyFaultDet = FALSE;
   }
   
   if (   (u8LocFaultLevel < GCCU6_EMGCY_STOP_FAULT_LEVEL)
       && (TRUE == bLocPwmSttOff) 
       && (FALSE == bLocEmgcyFaultDet) 
       && (TRUE == GCCU6_bClrTrapReq) )
   {
      bLocAkdEnaFlg = TRUE;
   }
   else
   {
      bLocAkdEnaFlg = FALSE;
   }

   return bLocAkdEnaFlg;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetAscStatus
* !Description : Get ASC status.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetAscStatus(void)
{
   boolean bLocAscSts;
   
   if (GCCU6_MCU_ASC_ONGOING == GCCU6_u8McuAscSttStep)
   {
      bLocAscSts = TRUE;
   }
   else
   {
      bLocAscSts = FALSE;
   }

   return bLocAscSts;
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetIuvwZeroCompReq
* !Description : Set phase current zero compensation request.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetIuvwZeroCompReq(const boolean bIuvwCompReq)
{
   /* !Comment: 1: request current zero compensation, 0: no request. */
   GCCU6_bIuvwCompReq = bIuvwCompReq;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetHwFaultIgbtH
* !Description : Get hardware fault pin value of IGBT H.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetHwFaultIgbtH(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;
   boolean bLocVsiScanRes = FALSE;

   if (GMAIN_u8IgbtHighFltCnt >= GMAIN_u8IgbtFltConfirmCntC)
   {
      bLocVsiScanRes = TRUE;
   }
   else
   {
      bLocVsiScanRes = FALSE;
   }
   
   bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2();
   
   if((FALSE == bLocPinVal)
   || (TRUE == GCCU6_bHwFaultIgbtH)
   || (TRUE == bLocVsiScanRes))
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetHwFaultIgbtL
* !Description : Get hardware fault pin value of IGBT L.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetHwFaultIgbtL(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;
   boolean bLocVsiScanRes = FALSE;

   if (GMAIN_u8IgbtLowFltCnt >= GMAIN_u8IgbtFltConfirmCntC)
   {
      bLocVsiScanRes = TRUE;
   }
   else
   {
      bLocVsiScanRes = FALSE;
   }
   
   bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2();
   
   if((FALSE == bLocPinVal)
   || (TRUE == GCCU6_bHwFaultIgbtL)
   || (TRUE == bLocVsiScanRes))
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetHwFaultOvcU
* !Description : Get hardware fault pin value of OVC U.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetHwFaultOvcU(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;

   if (GCCU6_bHwOvcFltDetEnaC)
   {
      bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2();

      if((FALSE == bLocPinVal)
      || (TRUE == GCCU6_bHwFaultOvcU))
      {
         bLocHwFaultResult = TRUE;
      }
      else
      {
         bLocHwFaultResult = FALSE;
      }
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }

   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetHwFaultOvcV
* !Description : Get hardware fault pin value of OVC V.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetHwFaultOvcV(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;

   if (GCCU6_bHwOvcFltDetEnaC)
   {
      bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2();

      if((FALSE == bLocPinVal)
      || (TRUE == GCCU6_bHwFaultOvcV))
      {
         bLocHwFaultResult = TRUE;
      }
      else
      {
         bLocHwFaultResult = FALSE;
      }
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetHwFaultOvcW
* !Description : Get hardware fault pin value of OVC W.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetHwFaultOvcW(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;

   if (GCCU6_bHwOvcFltDetEnaC)
   {
      bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2();

      if((FALSE == bLocPinVal)
      || (TRUE == GCCU6_bHwFaultOvcW))
      {
         bLocHwFaultResult = TRUE;
      }
      else
      {
         bLocHwFaultResult = FALSE;
      }
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetHwFaultDcOvVolt
* !Description : Get hardware fault pin value of dclink over voltage.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetHwFaultDcOvVolt(void)
{
   boolean bLocHwFaultResult = FALSE;
#if 0
   boolean bLocPinVal = FALSE;

   /*bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FLT_C_DCLINK_OV();*//*READ_IO_BLOCK_BY_LZJ*/

   /* !Comment: No hardware over voltage diagnose circuit. */
   if ( (FALSE == bLocPinVal) || (TRUE == GCCU6_bHwFaultDcOvVolt) )
#else
   if ( TRUE == GCCU6_bHwFaultDcOvVolt )
#endif
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetZeroMatchFlg
* !Description : Get T12 Zero match flag.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetZeroMatchFlg(void)
{
   return GCCU6_bT12ZeroMatchFlg;
}

/*********************************************************************
* 
* !Function    : GCCU6_vidSetHvOverFlg
* !Description : Set HV over voltage flag.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void GCCU6_vidSetHvOverFlg(const boolean bHvOvFlg)
{
   GCCU6_bHwFaultDcOvVolt = bHvOvFlg;
}

/*********************************************************************
* 
* !Function    : GCCU6_bGetPwmRuningFlg
* !Description : Get T12 PWM running flag.
* !input :   NONE 
* !output : TRUE: PWM ON; FALSE: PWM OFF.
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean GCCU6_bGetPwmRuningFlg(void)
{
   return GCCU6_bPwmOnGoingFlg;
}

/*****************************************************************************
*
* !Runnable    : GCCU6_vidPwmDrvClkDiag
* !Trigger       : 10MS Task
* !Description : Driver board clk signal diagnostic
* 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void GCCU6_vidPwmDrvClkDiag(void)
{
#if 0
   boolean bLocBswReadySts = FALSE;
   uint16 u16LocKeyOn = 0;
   
   bLocBswReadySts = BSW_bGetBswReadySts(); 
   u16LocKeyOn = (uint16)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   
   if ( (TRUE == bLocBswReadySts) && (TRUE == GCCU6_bIsGCCU6Start) && (u16LocKeyOn > 0) )
   {
      Icu_17_TimerIp_ValueType       udtLocPeriodRaw;
      Icu_17_TimerIp_ValueType       udtLocActiveDurationRaw;
      Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
#if 0
      Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_CLK_HS,
                                    &strLocPeriodAndActiveTime);
      udtLocPeriodRaw  = strLocPeriodAndActiveTime.PeriodTime;
      udtLocActiveDurationRaw = strLocPeriodAndActiveTime.ActiveTime;
#endif

      GCCU6_u32DrvClkHsPerdRaw = udtLocPeriodRaw;
      GCCU6_u32DrvClkHsDutyRaw = udtLocActiveDurationRaw;

      if (GCCU6_u32DrvClkHsPerdRaw > 0)
      {
         GCCU6_f32DrvClkHsDuty = (float32)( (float32)GCCU6_u32DrvClkHsDutyRaw / (float32)GCCU6_u32DrvClkHsPerdRaw);

         if(GCCU6_kbDrvBdClkEnaC)
         {
            if ( (GCCU6_f32DrvClkHsDuty < GCCU6_f32DrvClkDutyThdLowC) || (GCCU6_f32DrvClkHsDuty > GCCU6_f32DrvClkDutyThdHighC) )
            {
               FaultDetection(GBSW_HW_, DRVCLKFLTHS  , TRUE);
            }
            else
            {
               FaultDetection(GBSW_HW_, DRVCLKFLTHS  , FALSE);
            }
         }
         else
         {
            FaultDetection(GBSW_HW_, DRVCLKFLTHS  , FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }
#if 0
      Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_CLK_LS,
                                    &strLocPeriodAndActiveTime);
      udtLocPeriodRaw  = strLocPeriodAndActiveTime.PeriodTime;
      udtLocActiveDurationRaw = strLocPeriodAndActiveTime.ActiveTime;
#endif
      GCCU6_u32DrvClkLsPerdRaw = udtLocPeriodRaw;
      GCCU6_u32DrvClkLsDutyRaw = udtLocActiveDurationRaw;
      
      if (GCCU6_u32DrvClkLsPerdRaw > 0)
      {
         GCCU6_f32DrvClkLsDuty = (float32)( (float32)GCCU6_u32DrvClkLsDutyRaw / (float32)GCCU6_u32DrvClkLsPerdRaw);

         if(GCCU6_kbDrvBdClkEnaC)
         {
            if ( (GCCU6_f32DrvClkLsDuty < GCCU6_f32DrvClkDutyThdLowC) || (GCCU6_f32DrvClkLsDuty > GCCU6_f32DrvClkDutyThdHighC) )
            {
               FaultDetection(GBSW_HW_, DRVCLKFLTLS  , TRUE);
            }
            else
            {
               FaultDetection(GBSW_HW_, DRVCLKFLTLS  , FALSE);
            }
         }
         else
         {
            FaultDetection(GBSW_HW_, DRVCLKFLTLS  , FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }
   }
#endif
}


uint8 GCCU6_u8GetIGBTStatus(void)
{
   uint8 u8ReturnVal = 0;
   switch (GCCU6_u8McuAscSttStep)
   {
      case GCCU6_MCU_ASC_CLOSE:
      {
         u8ReturnVal = 2;  /* Normal */
      }
      break;

      case GCCU6_MCU_ASC_ONGOING:
      {
         u8ReturnVal = 0;  /* ASC */
      }
      break;

      case GCCU6_MCU_ASC_EXIT:
      case GCCU6_MCU_ASC_EXIT_DELAY:
      case GCCU6_MCU_ASC_FINSH:
      case GCCU6_MCU_ASC_RECOVER:
      case GCCU6_MCU_ASC_OVER_TIME:
      {
         u8ReturnVal = 3;  /* Free wheel */
      }
      break;
      default:
      {
         u8ReturnVal = 2;  /* Normal */
      }
      break;
   }

   return u8ReturnVal;
}

#define CCU6_STOP_CODE_FAST_CPU1
#include "CCU6_MemMap.h"

