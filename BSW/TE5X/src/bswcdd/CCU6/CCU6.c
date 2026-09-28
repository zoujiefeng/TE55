#include "IOHAL.h"
#include "FAULT_Api.h"
#include "Dsm.h"
#include "Dsm_Typ.h"
#include "Icu_17_TimerIp.h"
#include "MAIN_L.h"
#include "MAIN.h"
#include "Pwm_17_GtmCcu6.h" 
#include "Pwm_17_GtmCcu6_Cfg.h"
#include "BSW.h"
#include "Port.h"
#include "CCU6.h"
#include "CCU6_L.h"
#include "CCU6_Cfg.h"
#include "CCU6_Hal.h"
#include "IfxCcu6_PwmHl.h"

/* !Comment: Emergency stop fault level which could not be recover after ASC. */
#define CCU6_EMGCY_STOP_FAULT_LEVEL     (5U)

/* !Comment: High Voltage gain. */
#define CCU6_HIGHVOL_GAIN               (0.199f)
/* !Comment: Middle point diagnose working condition: HV over TBD. */
#define CCU6_MIDPOINT_DIAG_HV_THRD      (250)

/* !Comment: CCU6 Power on delay 100ms, wait for power on of current measure borad */
#define CCU6_PO_DELAY                   (100U)
/* !Comment: CCU6 Power on delay 50ms, use for ALIM PWM soft-startup. */
#define CCU6_ALIM_PO_DELAY              (50U)
/* !Comment: CCU6 T13 period value. */
#define CCU6_T13_PERIOD                 (10000UL)
/* !Comment: CCU6 T13 compare value. */
#define CCU6_T13_CMP_VAL                (7440U)
/* !Comment: MCU ASC state minimal period: 1000ms. */
#define CCU6_MCU_ASC_PERD_MIN           (1000)
/* !Comment: MCU ASC state exit time: 1000ms. */
#define CCU6_MCU_ASC_EXIT_TIME          (1000)
/* !Comment: MCU ASC DELAY for deadtime: 4us. */
#define CCU6_MCU_ASC_DEADTIME           (138)
/* !Comment: CCU6 T12 default period. */
#define CCU6_T12_PERD_DEFAULT           (2499UL)
/* !Comment: CCU6 T12 Max Period, relate to frequency 1KHZ. */
#define CCU6_T12_PERD_MAX               (25000UL)
/* !Comment: CCU6 T12 Min Period, relate to frequency 12KHZ. */
#define CCU6_T12_PERD_MIN               (2080UL)

/* !Comment: IGBT driver clock duty cycle physics value. */
#define CCU6_IGBT_CLK_PHYS              (0.417f)
/* !Comment: IGBT driver clock duty cycle raw value. */
#define CCU6_IGBT_CLK_RAW               ( (uint16)(32768.0f * CCU6_IGBT_CLK_PHYS) )
/* !Comment: IGBT driver clock duty cycle physics value. */
#define CCU6_ALIM_CLK_PHYS              (0.635f)  // previous 0.635
/* !Comment: IGBT driver clock duty cycle raw value. */
#define CCU6_ALIM_CLK_RAW               ( (uint16)(32768.0f * CCU6_ALIM_CLK_PHYS) )

/*!Comment: T12 counter zero match threshold:  500*0.02 = 10us. */
#define CCU6_T12_ZERO_MATCH_LINE       (500)
/* !Comment: P5V HS or HS sample gain. */
#define CCU6_AD2VOL_GAIN               (0.002442)
/* !Comment: P5V AD value of 1.5V. */
#define CCU6_P5V_AD_1V5                (1228)

/* !Comment: CCU6 fault counter max. */
#define CCU6_FAULT_CNT_MAX             (10)

/* !Comment: CCU6 P5V HS or LS self test wait time:150ms. */
#define CCU6_P5V_SELF_TST_WAIT_TIM     (15)

/* !Comment: Excitation PWM control state */
#define CCU6_EXCIT_OFF                 (0)
#define CCU6_EXCIT_ON                  (1)
#define CCU6_EXCIT_PWM_DUTY            (16384U)

/* !Comment: MCU ASC function step. */
enum
{
   CCU6_MCU_ASC_CLOSE = 0,
   CCU6_MCU_ASC_ONGOING,
   CCU6_MCU_ASC_EXIT,
   CCU6_MCU_ASC_EXIT_DELAY,
   CCU6_MCU_ASC_FINSH,
   CCU6_MCU_ASC_RECOVER,
   CCU6_MCU_ASC_OVER_TIME,
};

/* !Comment: MCU ASC type. */
enum
{
   CCU6_ASC_TYPE_UNDEF = 0,
   CCU6_ASC_TYPE_LOWSIDE,
   CCU6_ASC_TYPE_HIGHSIDE,
   CCU6_ASC_TYPE_ALLOFF
};

/* !Comment: IGBT middle point pre-test step. */
enum
{
   CCU6_PRETEST_STEP_IDLE = 0,
   CCU6_PRETEST_STEP_RUN,
   CCU6_PRETEST_STEP_FINISH
};

/* !Comment: P5VHS and P5VLS power management state. */
enum
{
  CCU6_enuP5V_PO_DELAY = 0,
  CCU6_enuP5V_POW_NORMAL,
  CCU6_enuP5V_HS_FLT_ASC,
  CCU6_enuP5V_HS_CLOSE,
  CCU6_enuP5V_LS_FLT_ASC,
  CCU6_enuP5V_LS_CLOSE,
  CCU6_enuP5V_WAIT_REINIT,
  CCU6_enuP5V_REINIT,
};

static IfxCcu6_PwmHl CCU6_udtIfxCcu6PwmHlCfg;
volatile Ifx_CCU6 *CCU6_pstrModule = &MODULE_CCU60;

#define CCU6_START_CODE_FAST_CPU1
#include "CCU6_MemMap.h"

static void CCU6_vidStopPwmOutput(void);
static void CCU6_vidStartPwmOutput(void);
static void CCU6_vidStartTimer(void);
void CCU6_vidAlimPowerDelay(void);
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
* !Function    : CCU6_vidStartTimer
* !Description : Start T12, T13.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void CCU6_vidStartTimer(void)
{
   IfxCcu6_PwmHl *driver = &CCU6_udtIfxCcu6PwmHlCfg;
   
   IfxCcu6_startTimer(driver->timer->ccu6, TRUE, TRUE);
}

/******************************************************************************/
/*                                                                            */
/* !Function    : CCU6_vidInit                                                */
/* !Description : CCU6 Initialization, must be call in BSW initialization     */
/* !Reference   :                                                             */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                        */
/******************************************************************************/
void CCU6_Init(void)
{
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;
   IfxCcu6_PwmHl_Config config;

   CCU6_pstrModule            = &MODULE_CCU60;
   CCU6_u16PwmModReq       = VSISRV_VSI_MODE_REQ_OFF;
   CCU6_u8PwmState            = VSISRV_SIGNAL_MODE_REQ_OFF;
   CCU6_u16T12PeriodVal      = CCU6_T12_PERD_DEFAULT;
   CCU6_au32PWMOnTime[0] = 0;
   CCU6_au32PWMOnTime[1] = 0;
   CCU6_au32PWMOnTime[2] = 0;
   CCU6_u16PowerOnDelay    = 0;
   CCU6_u16AlimPowerOnDelay = 0;
   CCU6_u16McuAscSttDelay  = 0;
   CCU6_u32TrapCreq = 0;
   CCU6_u8McuAscSttStep     = CCU6_MCU_ASC_CLOSE;
   CCU6_bMotorSpdRdy         = FALSE;
   CCU6_bIsCCU6Start          = FALSE;
   CCU6_bTrapTrigger           = FALSE;
   CCU6_bClrTrapReq            = FALSE;
   CCU6_bAkdAfterAscReq     = FALSE;
   CCU6_bIuvwCompReq       = FALSE;
   CCU6_bHwFaultIgbtH         = FALSE;
   CCU6_bHwFaultIgbtL         = FALSE;
   CCU6_bHwFaultOvcU     = FALSE;
   CCU6_bHwFaultOvcV     = FALSE;
   CCU6_bHwFaultOvcW     = FALSE;
   CCU6_bHwFaultDcOvVolt   = FALSE;
   CCU6_u8McuAscType        = CCU6_ASC_TYPE_UNDEF;
   CCU6_bT12ZeroMatchFlg   = FALSE;
   CCU6_bPwmOnGoingFlg    = FALSE;
   CCU6_u8AscRecoverCnt = 0;
   CCU6_u8OvcRcvCnt = 0;
   CCU6_f32PwmDutyPhysUZ   = 0;
   CCU6_f32PwmDutyPhysVZ   = 0;
   CCU6_f32PwmDutyPhysWZ  = 0;
   CCU6_bPwmMidPointU         = FALSE;
   CCU6_bPwmMidPointV         = FALSE;
   CCU6_bPwmMidPointW         = FALSE;
   CCU6_u16PwmMidPointErrCnt = 0;
   CCU6_bIgbtHighSideShort   = FALSE;
   CCU6_bIgbtLowSideShort    = FALSE;
   CCU6_u8PreTestStep         = CCU6_PRETEST_STEP_IDLE;
   CCU6_u16HighVolAdc         = 0;
   CCU6_f32HighVolPhys        = 0;
   CCU6_u16P5VHSAdc           = 0;
   CCU6_u8P5VHSFltCnt         = 0;
   CCU6_u8P5VLSFltCnt         = 0;
   CCU6_bP5VHSFltFlg         = FALSE;
   CCU6_bP5VLSFltFlg         = FALSE;
   CCU6_u8P5VPowerMngStt     = CCU6_enuP5V_POW_NORMAL;
   CCU6_bP5VDiagReinitCmd    = FALSE;
   CCU6_u8P5VSelfTstTimCnt   = 0;
   CCU6_u32DrvClkHsPerdRaw = 0;
   CCU6_u32DrvClkHsDutyRaw = 0;
   CCU6_u32DrvClkLsPerdRaw = 0;
   CCU6_u32DrvClkLsDutyRaw = 0;
   CCU6_u8StartMidPotDetCnt = 0;
   
   driver = &CCU6_udtIfxCcu6PwmHlCfg;
   config.timer = &CCU6_kudtIfxCcu6TimerWithTriggerCfg;
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
   if (CCU6_bDualSmpEnaC)
   {
      IfxCcu6_enableInterrupt(module, IfxCcu6_InterruptSource_t12PeriodMatch);
   }
   IfxCcu6_routeInterruptNode(module, IfxCcu6_InterruptSource_t12OneMatch, IfxCcu6_ServiceRequest_3);
   /* Disable CCU60 interrupt, so T12 just trigger event for ADC but do not trigger interrupt service for CPU. */
   CCU6_vidDisableTrap();

   /* Configure module output trigger ADC: U/V/W current. */
   IfxCcu6_connectTrigger(module, IfxCcu6_TrigOut_2, IfxCcu6_TrigSel_sr3);
#if 0
   /* T13 initializations */
   IfxCcu6_setOutputPassiveLevel(module, IfxCcu6_ChannelOut_cout3, ActiveState_low);
   IfxCcu6_enableModulationOutput(module, IfxCcu6_TimerId_t13, IfxCcu6_ChannelOut_cout3);
   IfxCcu6_enableTimer(module, IfxCcu6_TimerId_t13);
   /* Duty cycle initialisation */
   IfxCcu6_setT13CounterValue(module, 0);
   IfxCcu6_setT13CompareValue(module, CCU6_T13_CMP_VAL);
   /* !Comment: T13 is not start or stop by T12, so do not use single shot. */
   IfxCcu6_setSingleShotModeEnable(module, FALSE, FALSE);
   IfxCcu6_setT13TriggerEventMode(module, IfxCcu6_T13TriggerEvent_noAction);
   IfxCcu6_setT13TriggerEventDirection(module, IfxCcu6_T13TriggerDirection_noAction);
   /* clock initialisation , set T13 frequency to 10K. */
   /* Set T13 period to 100us. */
   IfxCcu6_setT13PeriodValue(module, CCU6_T13_PERIOD);
   IfxCcu6_enableShadowTransfer(module, FALSE, TRUE);

   IfxCcu6_setInputClockFrequency(module, IfxCcu6_TimerId_t13, 0);
    
   /* Configure module output trigger ADC: Sin and Cos. */
   IfxCcu6_connectTrigger(module, IfxCcu6_TrigOut_0, IfxCcu6_TrigSel_cout63);
#endif
   IfxCcu6_PwmHl_init(driver, &config);
   /* !Comment: Get current T12 period value, it must be put before PWM duty setting function. */
   CCU6_u16T12PeriodVal      = IfxCcu6_GetT12PeriodVal(driver->timer->ccu6);
   CCU6_vidSetPwmHlDuty(0, 0, 0);
}

/*********************************************************************
* 
* !Function    : CCU6_vidAlimPowerDelay
* !Description : CCU6 Resolver supply power switch delay open
* !input   : NONE 
* !output  : NONE
* !Comment : 
**********************************************************************
* !LastAuthor  : 
**********************************************************************/
void CCU6_vidAlimPowerDelay(void)
{
   uint16 u16LocIgbtDrvClkDutyRaw;
   float f32LocIgbtDrvClkDutyPhys;
   
   if (CCU6_u16AlimPowerOnDelay < CCU6_ALIM_PO_DELAY)
   {
      CCU6_u16AlimPowerOnDelay++;
   
      f32LocIgbtDrvClkDutyPhys = ( (float)CCU6_u16AlimPowerOnDelay) / ( (float)CCU6_ALIM_PO_DELAY);
      f32LocIgbtDrvClkDutyPhys = f32LocIgbtDrvClkDutyPhys * ( (float)CCU6_ALIM_CLK_RAW);
      u16LocIgbtDrvClkDutyRaw = (uint16)f32LocIgbtDrvClkDutyPhys;
      Pwm_17_GtmCcu6_SetDutyCycle(Pwm_17_GtmCcu6Conf_PwmChannel_M_CLK_ALIM_1, u16LocIgbtDrvClkDutyRaw);
   }
}

/*********************************************************************
* 
* !Function    : CCU6_vidExcitationPwmState
* !Description : Excitation PWM output inhbit and recover
* !input   : NONE 
* !output  : NONE
* !Comment : 
**********************************************************************
* !LastAuthor  : GYT
**********************************************************************/
FUNC(void, CCU6_CODE) CCU6_vidExcitationPwmState(uint8 u8ExciPwmState)
{
   /* Close excitation PWM output */
   if(CCU6_EXCIT_OFF == u8ExciPwmState)
   {
      Port_SetPinDirection(PortConf_PortContainer_PORT0_PORT_0_PIN_1, PORT_PIN_IN);
      Port_SetPinDirection(PortConf_PortContainer_PORT14_PORT_14_PIN_9, PORT_PIN_IN);
   }
   /* Recover excitation PWM output */
   else if(CCU6_EXCIT_ON == u8ExciPwmState)
   {
      Port_SetPinDirection(PortConf_PortContainer_PORT0_PORT_0_PIN_1, PORT_PIN_OUT);
      Port_SetPinDirection(PortConf_PortContainer_PORT14_PORT_14_PIN_9, PORT_PIN_OUT);
   }
   else
   {
      ; /* Do nothing Wrong Parameter */
   }
}

/*********************************************************************
* 
* !Function    : CCU6_vidMotorStateMng
* !Description : CCU6 state machine management, schedule Task : 1ms
* !input :   NONE 
* !output : NONE
* !Comment : Delete FRecord fault permision recover
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidMotorStateMng(void)
{
   boolean bLocAkdEnaFlg = FALSE;

   CCU6_u16HighVolAdc  = IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();
   CCU6_f32HighVolPhys = (float)CCU6_u16HighVolAdc * CCU6_HIGHVOL_GAIN;
   
   /* !Comment: ASC state management. */
   switch (CCU6_u8McuAscSttStep)
   {
      case CCU6_MCU_ASC_CLOSE:
      {
         if (CCU6_u16PwmMidPointErrCnt > CCU6_ku8PwmMidPointFaultC)
         {
            /*No fault by LiZhaoPo-20240425*/
            /*FaultDetection(BSW_HW_,  MIDPOINTFAULT  , TRUE);*/
         }
         else
         {
            if (FALSE == CCU6_bPwmOnGoingFlg)
            {
               CCU6_u16PwmMidPointErrCnt = 0;
            }
            /*No fault by LiZhaoPo-20240425*/
            /*FaultDetection(BSW_HW_,  MIDPOINTFAULT  , FALSE);*/
         }
      }
      break;

      case CCU6_MCU_ASC_ONGOING:
      {
         if(CCU6_u16McuAscSttDelay < CCU6_MCU_ASC_PERD_MIN)
         {
            CCU6_u16McuAscSttDelay++;
         }
         else
         {
            if (FALSE == CCU6_bMotorSpdRdy)
            {
               CCU6_u16McuAscSttDelay = 0;
               CCU6_u8McuAscSttStep = CCU6_MCU_ASC_EXIT;
            }
         }
      }
      break;

      case CCU6_MCU_ASC_EXIT:
      {
         CCU6_vidMcuAscExit();
         CCU6_u16McuAscSttDelay = 0;
         CCU6_u8McuAscSttStep = CCU6_MCU_ASC_EXIT_DELAY;
      }
      break;

      case CCU6_MCU_ASC_EXIT_DELAY:
      {
         if (CCU6_u16McuAscSttDelay < CCU6_MCU_ASC_EXIT_TIME)
         {
            CCU6_u16McuAscSttDelay++;
         }
         else
         {
            CCU6_u16McuAscSttDelay = 0;
            CCU6_u8McuAscSttStep = CCU6_MCU_ASC_FINSH;
         }
      }
      break;

      case CCU6_MCU_ASC_FINSH:
      {
         if ( (CCU6_u8AscRecoverCnt < CCU6_ku8AscRecoverCntMaxC) &&
              (CCU6_u8OvcRcvCnt < CCU6_ku8OvcRcvCntMaxC) )
         {
            bLocAkdEnaFlg = CCU6_bGetAscRecoverCondition();

            if (bLocAkdEnaFlg)
            {
               CCU6_u8AscRecoverCnt++;

               if ( (FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HLogged()  != 0) ||
                    (FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LLogged()  != 0) ||
                    (FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUILogged()  != 0) ||
                    (FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVILogged()  != 0) ||
                    (FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWILogged()  != 0) )
               {
                  CCU6_u8OvcRcvCnt++;
               }
               
               /*!Comment: Clear hardware fault flag */
               CCU6_bHwFaultDcOvVolt = FALSE;
               CCU6_bHwFaultIgbtH    = FALSE;
               CCU6_bHwFaultIgbtL    = FALSE;
               CCU6_bHwFaultOvcU     = FALSE;
               CCU6_bHwFaultOvcV     = FALSE;
               CCU6_bHwFaultOvcW     = FALSE;

               /* !Comment: Clear software OVC flag. */
               MAIN_bSoftOvCurrPhsUFlg = FALSE;
               MAIN_bSoftOvCurrPhsVFlg = FALSE;
               MAIN_bSoftOvCurrPhsWFlg = FALSE;
               CCU6_u16PwmMidPointErrCnt = 0;
               CCU6_u8StartMidPotDetCnt = 0;
               MAIN_u8IgbtLowFltCnt = 0;
               MAIN_u8IgbtHighFltCnt = 0;
			   
               /* !Comment: Clear all fault log without DTC information. */
               FaultClear(DSM_UNIT_MAP_MCU);
               /* !Comment: Clear trap. */
               CCU6_vidTryClearTrap();
               CCU6_u8McuAscSttStep = CCU6_MCU_ASC_RECOVER;
            }
         }
         else
         {
            CCU6_u8McuAscSttStep = CCU6_MCU_ASC_OVER_TIME;
         }
      }
      break;

      case CCU6_MCU_ASC_RECOVER:
      {
         /* !Comment: Then jump to ASC Close state. */
         CCU6_u16McuAscSttDelay = 0;
         
         CCU6_u8McuAscSttStep = CCU6_MCU_ASC_CLOSE;
      }
      break;

      case CCU6_MCU_ASC_OVER_TIME:
      {
         /* !Comment: Wait Mcu excute active discharge and power off. */
      }
      break;
      
      default:
         break;
   }

   switch(CCU6_u16PwmModReq)
   {
      case VSISRV_VSI_MODE_REQ_OFF:
      {
         /* !Comment: CCU6 only start once, during MCU power on stage. */
         if (FALSE == CCU6_bIsCCU6Start)
         {
            /* !Comment: Response FS PwmOff state immediately during power on stage. */
            CCU6_u8PwmState = VSISRV_SIGNAL_MODE_REQ_OFF;

            CCU6_vidAlimPowerDelay();
            
            /* !Comment: delay 100ms for current measure board power on. */
            if (CCU6_u16PowerOnDelay < CCU6_PO_DELAY)
            {
               CCU6_u16PowerOnDelay++;
            }
            else
            {
               /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_HS(DIO_HAL_OFF);*//*WRITE_IO_BLOCK_BY_LZJ*/
               /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_LS(DIO_HAL_OFF);*//*WRITE_IO_BLOCK_BY_LZJ*/
               /* !Comment: Start measure Driver board clock. */
               //Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_CLK_HS);
               //Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_CLK_LS);
               
               CCU6_vidStartTimer();
               CCU6_bIsCCU6Start = TRUE;
            }
         }
         else
         {
            CCU6_vidStopPwmOutput();
            CCU6_u8PwmState = VSISRV_SIGNAL_MODE_REQ_OFF;

         }
      }
      break;

      case VSISRV_VSI_MODE_REQ_INIT_CAL1:
      case VSISRV_VSI_MODE_REQ_INIT_CAL2:
      case VSISRV_VSI_MODE_REQ_INIT_CAL3:
      {
         CCU6_vidStopPwmOutput();
         CCU6_u8PwmState = VSISRV_SIGNAL_MODE_REQ_INIT;
      }
      break;
     
      case VSISRV_VSI_MODE_REQ_PWM_DIRECT:
      {
         CCU6_vidStartPwmOutput();
         CCU6_u8PwmState = VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT;
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
* !Function    : CCU6_vidSetPwmHlDuty
* !Description : CCU6 set PWM duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetPwmHlDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   uint16 u16LocT12PV;

   u16LocT12PV = (uint16)(CCU6_pstrModule->T12PR.B.T12PV) + 1;
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
      CCU6_f32PwmDutyPhysUZ = f32DutyU;
      CCU6_f32PwmDutyPhysVZ = f32DutyV;
      CCU6_f32PwmDutyPhysWZ = f32DutyW;
         
      f32DutyU = 1.0f - f32DutyU;
      f32DutyV = 1.0f - f32DutyV;
      f32DutyW = 1.0f - f32DutyW;

      CCU6_au32PWMOnTime[0] = (uint32)((float32)u16LocT12PV * f32DutyU);
      CCU6_au32PWMOnTime[1] = (uint32)((float32)u16LocT12PV * f32DutyV);
      CCU6_au32PWMOnTime[2] = (uint32)((float32)u16LocT12PV * f32DutyW);

      CCU6_pstrModule->CC6SR[0].B.CCS = (uint16)CCU6_au32PWMOnTime[0];
      CCU6_pstrModule->CC6SR[1].B.CCS = (uint16)CCU6_au32PWMOnTime[1];
      CCU6_pstrModule->CC6SR[2].B.CCS = (uint16)CCU6_au32PWMOnTime[2];
   }
}

/*********************************************************************
* 
* !Function    : CCU6_vidSetPwmMinDutyCycle
* !Description : CCU6 set PWM minimal duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetPwmMinDutyCycle(const float32 f32MinDutyCyc)
{
}

/*********************************************************************
* 
* !Function    : CCU6_vidSetPwmMaxDutyCycle
* !Description : CCU6 set PWM max duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetPwmMaxDutyCycle(const float32 f32MaxDutyCyc)
{
}

/*********************************************************************
* 
* !Function    : CCU6_vidSetPwmModReq
* !Description : CCU6 set PWM mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetPwmModReq(const uint16 u16PwmMod)
{
   CCU6_u16PwmModReq = u16PwmMod;
}

/*********************************************************************
* 
* !Function    : CCU6_u16GetPwmModReq
* !Description : CCU6 return PWM mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 CCU6_u16GetPwmModReq(void)
{
   return CCU6_u16PwmModReq;
}

/*********************************************************************
* 
* !Function    : CCU6_u8GetPwmState
* !Description : CCU6 return PWM state.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint8 CCU6_u8GetPwmState(void)
{
   return CCU6_u8PwmState;
}

/*********************************************************************
* 
* !Function    : CCU6_u16GetPwmDutyUI
* !Description : CCU6 return PWM duty.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 CCU6_u16GetPwmDutyUI(void)
{
   return (uint16)CCU6_au32PWMOnTime[0];
}

/*********************************************************************
* 
* !Function    : CCU6_u16GetPwmDutyVI
* !Description : CCU6 return PWM duty.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 CCU6_u16GetPwmDutyVI(void)
{
   return (uint16)CCU6_au32PWMOnTime[1];
}

/*********************************************************************
* 
* !Function    : CCU6_u16GetPwmDutyWI
* !Description : CCU6 return PWM duty.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 CCU6_u16GetPwmDutyWI(void)
{
   return (uint16)CCU6_au32PWMOnTime[2];
}

/*********************************************************************
* 
* !Function    : CCU6_u16GetPwmDeadTime
* !Description : CCU6 return PWM Dead time.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 CCU6_u16GetPwmDeadTime(void)
{
   uint16 u16LocPwmDeadTime;
   IfxCcu6_PwmHl *driver = &CCU6_udtIfxCcu6PwmHlCfg;

   u16LocPwmDeadTime = (uint16)driver->base.deadtime;

   return (u16LocPwmDeadTime);
}

/*********************************************************************
* 
* !Function    : CCU6_vidSetPwmHlPeriod
* !Description : Set T12 PWM period.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetPwmHlPeriod(const uint16 u16LocT12Period)
{
   if ( (u16LocT12Period >= CCU6_T12_PERD_MIN) && (u16LocT12Period <= CCU6_T12_PERD_MAX) )
   {
      CCU6_u16T12PeriodVal = u16LocT12Period;
      /* !Comment: Update T12 Period, but actual T12 Period will be updata in next period. */
      CCU6_pstrModule->T12PR.B.T12PV = u16LocT12Period;
   }
}

/****************************************************************************************
* 
* !Function    : CCU6_vidSetMotorSpdRdyFlg
* !Description : Set Motor Speed ready flag, use as condition of exit ASC function.
* !input :   NONE 
* !output : NONE
*****************************************************************************************
* !LastAuthor  : Daniel
****************************************************************************************/
void CCU6_vidSetMotorSpdRdyFlg(boolean bMotorSpdRdy)
{
   /* !Comment: 1: Speed over 1500rpm, 0: Speed under 1500rpm. */
   CCU6_bMotorSpdRdy = bMotorSpdRdy;
}

/****************************************************************************************
* 
* !Function    : CCU6_vidSetClrTrapReq
* !Description : Set clear CCU6 trap request, return standby after ASC.
* !input :   bClrTrapReq 
* !output : NONE
*****************************************************************************************
* !LastAuthor  : Daniel
****************************************************************************************/
void CCU6_vidSetClrTrapReq(boolean bClrTrapReq)
{
   /* !Comment: 1: exit igbt close state, 0: keep igbt in close state. */
   CCU6_bClrTrapReq = bClrTrapReq;
}

/*********************************************************************
* 
* !Function    : CCU6_vidWait
* !Description : Software delay, DelayTime = 0.03us * time
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidWait(uint32 time)
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
* !Function    : CCU6_vidMcuAscEnter
* !Description : Set MCU enter ASC mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidMcuAscEnter(void)
{
   boolean bLocFltPinVal = TRUE;
   
   Ifx_CCU6_PSLR    pslr;
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;

   driver =  &CCU6_udtIfxCcu6PwmHlCfg;
   module = driver->timer->ccu6;
   
   if (CCU6_bIsCCU6Start)
   {
      /*Indicate MCU or GCU entered ASC*/
      // IOHAL_vidWrite_CH_DIO_OUT_M_MCU_ASC_STATE_MCU(TRUE);
      /* !Comment: Indicate FT module Pwm is OFF. */
      CCU6_bPwmOnGoingFlg = FALSE;
      
      if(CCU6_MCU_ASC_CLOSE == CCU6_u8McuAscSttStep)
      {
         CCU6_u8McuAscSttStep = CCU6_MCU_ASC_ONGOING;

         /* !Comment: Read hardware fault pin value. */
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1();
         if (FALSE == bLocFltPinVal)
         {
            CCU6_bHwFaultIgbtH = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1();
         if (FALSE == bLocFltPinVal)
         {
            CCU6_bHwFaultIgbtL = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1();
         if (FALSE == bLocFltPinVal)
         {
            CCU6_bHwFaultOvcU = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1();
         if (FALSE == bLocFltPinVal)
         {
            CCU6_bHwFaultOvcV = TRUE;
         }

         bLocFltPinVal = TRUE;
         bLocFltPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1();
         if (FALSE == bLocFltPinVal)
         {
            CCU6_bHwFaultOvcW = TRUE;
         }

         /* !Comment: Keep ALL IGBTs closed time over 4us. */
         CCU6_vidWait(CCU6_MCU_ASC_DEADTIME);

         if (CCU6_ASC_TYPE_UNDEF == CCU6_u8McuAscType)
         {
            if ( ( (TRUE == CCU6_bHwFaultIgbtH) && (TRUE == CCU6_bHwFaultIgbtL) ) ||
                 ((TRUE == CCU6_bP5VHSFltFlg) && (TRUE == CCU6_bP5VLSFltFlg)) )
            {
               CCU6_u8McuAscType = CCU6_ASC_TYPE_ALLOFF;
            }
            else if ( (TRUE == CCU6_bHwFaultIgbtL) ||
                      (TRUE == CCU6_bIgbtHighSideShort) ||
                      (TRUE == CCU6_bP5VLSFltFlg) )
            {
               CCU6_u8McuAscType = CCU6_ASC_TYPE_HIGHSIDE;
            }
            else
            {
               CCU6_u8McuAscType = CCU6_ASC_TYPE_LOWSIDE;
            }
         }

         if (CCU6_ASC_TYPE_HIGHSIDE == CCU6_u8McuAscType)
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
         else if (CCU6_ASC_TYPE_LOWSIDE == CCU6_u8McuAscType)
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
* !Function    : CCU6_vidMcuAscExit
* !Description : Set MCU exit ASC mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidMcuAscExit(void)
{
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;
   Ifx_CCU6_PSLR    pslr;

   driver =  &CCU6_udtIfxCcu6PwmHlCfg;
   module = driver->timer->ccu6;

   if(CCU6_MCU_ASC_EXIT == CCU6_u8McuAscSttStep)
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
      
      CCU6_u8McuAscType = CCU6_ASC_TYPE_UNDEF;
   }
}

/*********************************************************************
* 
* !Function    : CCU6_vidTryClearTrap
* !Description : Try to clear trap, may not success because of hardware trap remain.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidTryClearTrap(void)
{
   IfxCcu6_PwmHl *driver;
   Ifx_CCU6 *module;

   driver =  &CCU6_udtIfxCcu6PwmHlCfg;
   module = driver->timer->ccu6;

   IfxCcu6_ClrTrapFlg(module);
   IfxCcu6_enableShadowTransfer(module, TRUE, FALSE);
}

/*********************************************************************
* 
* !Function    : CCU6_vidSoftTrapTrigger
* !Description : Trigger a software trap in case of emergency fault occurs. 
* !input :   bEmgcyStopReq: 0: Request Emergency stop;  1: No request. 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSoftTrapTrigger(const boolean bEmgcyStopReq)
{
   if (FALSE == bEmgcyStopReq)
   {
      if (CCU6_MCU_ASC_CLOSE == CCU6_u8McuAscSttStep)
      {
         IfxCcu6_SetTrapFlg(CCU6_pstrModule);
      }
   }
}

/*********************************************************************
* 
* !Function    : CCU6_vidStopPwmOutput
* !Description : When CCU6 in PWMOFF mode, this function set Multi channel 
*                       module to stop PWM output.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidStopPwmOutput(void)
{
   IfxCcu6_PwmHl *driver = &CCU6_udtIfxCcu6PwmHlCfg;
   Ifx_CCU6_MCMOUTS mcmouts;
   Ifx_CCU6  *CCU6_Module;
   CCU6_Module = driver->timer->ccu6;
   
    mcmouts.U = CCU6_Module->MCMOUTS.U;
    if (0x00 != mcmouts.B.MCMPS)
    {
       CCU6_u8StartMidPotDetCnt = 0;
       /* !Comment: Indicate FT module Pwm is OFF. */
       CCU6_bPwmOnGoingFlg = FALSE;
       
       mcmouts.B.MCMPS   = 0x00;
       mcmouts.B.STRMCM  = 0; //1;
       CCU6_Module->MCMOUTS.U = mcmouts.U;
    }
}

/*********************************************************************
* 
* !Function    : CCU6_vidStartPwmOutput
* !Description : When CCU6 in PwmDirect mode, this function set multi channel
*                      module to start PWM output.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidStartPwmOutput(void)
{
   IfxCcu6_PwmHl *driver = &CCU6_udtIfxCcu6PwmHlCfg;
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
      CCU6_u8StartMidPotDetCnt = 0;
      /* !Comment: Indicate FT module Pwm is ON. */
      CCU6_bPwmOnGoingFlg = TRUE;
   }
}

/*********************************************************************
* 
* !Function    : CCU6_vidEnaTrapPinFunc
* !Description : Enable Trap pin function
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidEnaTrapPinFunc(void)
{
   Ifx_CCU6 *module;

   module = CCU6_kudtIfxCcu6TimerWithTriggerCfg.ccu6;

   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cc0);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cc1);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cc2);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cout0);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cout1);
   IfxCcu6_enableTrap(module, IfxCcu6_ChannelOut_cout2);
   IfxCcu6_setTrapMode(module, IfxCcu6_TrapMode_manual);
   
   if (CCU6_bHwPinAscEnaC)
   {
      IfxCcu6_enableTrapPin(module);
   }
   else
   {
      IfxCcu6_disableTrapPin(module);
   }
   
   CCU6_vidTryClearTrap();
   /* !Comment: Enable trap interrupt for ASC process. */
   IfxCcu6_enableInterrupt(module, IfxCcu6_InterruptSource_trap);
   IfxCcu6_routeInterruptNode(module, IfxCcu6_InterruptSource_trap, IfxCcu6_ServiceRequest_2);
   CCU6_vidEnableTrap();
}

/*********************************************************************
* 
* !Function    : CCU6_vidSwitchPwmUpdEvent
* !Description : switch PWM update event according to T12 counter value, if T12
* zero match, switch PWM update event to T12 period match, if T12 period match,
* switch PWM update event to T12 zero match.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSwitchPwmUpdEvent(void)
{
   boolean bLocMidPointErrFlg = FALSE;
   uint16 u16LocT12CntVal;

   if (CCU6_bDualSmpEnaC)
   {
      u16LocT12CntVal = CCU6_pstrModule->T12.B.T12CV;
      CCU6_u16T12CntVal = u16LocT12CntVal;

      /* !Comment: T12CV is reliable, SWSEL or SWSYN is not readable. */
      if (u16LocT12CntVal < CCU6_T12_ZERO_MATCH_LINE)
      {
         CCU6_pstrModule->MCMCTR.B.SWSEL = IfxCcu6_MultiChannelSwitchingSelect_t12PeriodMatch;
         CCU6_pstrModule->MCMCTR.B.SWSYN = IfxCcu6_MultiChannelSwitchingSync_direct;
         CCU6_bT12ZeroMatchFlg = TRUE;
      }
      else
      {
         CCU6_pstrModule->MCMCTR.B.SWSEL = IfxCcu6_MultiChannelSwitchingSelect_t12OneMatch;
         CCU6_pstrModule->MCMCTR.B.SWSYN = IfxCcu6_MultiChannelSwitchingSync_t12ZeroMatch;
         CCU6_bT12ZeroMatchFlg = FALSE;
      }
   }
   else
   {
      CCU6_bT12ZeroMatchFlg = TRUE;
   }

   /* !Comment: Middle point check. */
   bLocMidPointErrFlg = FALSE;
   if (CCU6_bPwmOnGoingFlg)
   {
      if (CCU6_u8StartMidPotDetCnt < CCU6_ku8PwmMidPotStartDelayC)
      {
         CCU6_u8StartMidPotDetCnt++;
      }
         
      /*CCU6_bPwmMidPointU = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_U_MCU();
      CCU6_bPwmMidPointV = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_V_MCU();
      CCU6_bPwmMidPointW = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_U_MCU();*/
      
      if ( CCU6_bT12ZeroMatchFlg )
      {
         if (CCU6_f32PwmDutyPhysUZ <= CCU6_kf32MidPointDutyLC)
         {
            if (CCU6_bPwmMidPointU)
            {
               bLocMidPointErrFlg = TRUE;
               CCU6_bIgbtHighSideShort = TRUE;
            }
         }

         if (CCU6_f32PwmDutyPhysVZ <= CCU6_kf32MidPointDutyLC)
         {
            if (CCU6_bPwmMidPointV)
            {
               bLocMidPointErrFlg = TRUE;
               CCU6_bIgbtHighSideShort = TRUE;
            }
         }

         if (CCU6_f32PwmDutyPhysWZ <= CCU6_kf32MidPointDutyLC)
         {
            if (CCU6_bPwmMidPointW)
            {
               bLocMidPointErrFlg = TRUE;
               CCU6_bIgbtHighSideShort = TRUE;
            }
         }
      }
      else
      {
         if (CCU6_f32PwmDutyPhysUZ >= CCU6_kf32MidPointDutyHC)
         {
            if (FALSE == CCU6_bPwmMidPointU)
            {
               bLocMidPointErrFlg = TRUE;
               CCU6_bIgbtLowSideShort = TRUE;
            }
         }

         if (CCU6_f32PwmDutyPhysVZ >= CCU6_kf32MidPointDutyHC)
         {
            if (FALSE == CCU6_bPwmMidPointV)
            {
               bLocMidPointErrFlg = TRUE;
               CCU6_bIgbtLowSideShort = TRUE;
            }
         }

         if (CCU6_f32PwmDutyPhysWZ >= CCU6_kf32MidPointDutyHC)
         {
            if (FALSE == CCU6_bPwmMidPointW)
            {
               bLocMidPointErrFlg = TRUE;
               CCU6_bIgbtLowSideShort = TRUE;
            }
         }
      }
   }

   if (CCU6_u8StartMidPotDetCnt >= CCU6_ku8PwmMidPotStartDelayC)
   {
      if (CCU6_f32HighVolPhys >= CCU6_MIDPOINT_DIAG_HV_THRD)
      {
         if (bLocMidPointErrFlg)
         {
            if (CCU6_u16PwmMidPointErrCnt < 0xFFFF)
            {
               CCU6_u16PwmMidPointErrCnt++;
            }
         }
         else
         {
            if (CCU6_u16PwmMidPointErrCnt > 0)
            {
               CCU6_u16PwmMidPointErrCnt--;
            }
         }
      }
   }
}

/*********************************************************************
* 
* !Function    : CCU6_bGetAscRecoverCondition
* !Description : return flag which enable MCU recover from ASC state.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetAscRecoverCondition(void)
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
   
   u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU);
   bLocIgbtHPinLevel = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1();
   bLocIgbtLPinLevel = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1();
   bLocOvcUPinLevel  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1();
   bLocOvcVPinLevel  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1();
   bLocOvcWPinLevel  = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1();
   
   if (VSISRV_SIGNAL_MODE_REQ_OFF == CCU6_u8PwmState)
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
   
   if (   (u8LocFaultLevel < CCU6_EMGCY_STOP_FAULT_LEVEL)
       && (TRUE == bLocPwmSttOff) 
       && (FALSE == bLocEmgcyFaultDet) 
       && (TRUE == CCU6_bClrTrapReq) )
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
* !Function    : CCU6_bGetAscStatus
* !Description : Get ASC status.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetAscStatus(void)
{
   boolean bLocAscSts;
   
   if (CCU6_MCU_ASC_ONGOING == CCU6_u8McuAscSttStep)
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
* !Function    : CCU6_vidSetIuvwZeroCompReq
* !Description : Set phase current zero compensation request.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetIuvwZeroCompReq(const boolean bIuvwCompReq)
{
   /* !Comment: 1: request current zero compensation, 0: no request. */
   CCU6_bIuvwCompReq = bIuvwCompReq;
}

/*********************************************************************
* 
* !Function    : CCU6_bGetHwFaultIgbtH
* !Description : Get hardware fault pin value of IGBT H.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetHwFaultIgbtH(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;
   boolean bLocVsiScanRes = FALSE;

   if (MAIN_u8IgbtHighFltCnt >= MAIN_u8IgbtFltConfirmCntC)
   {
      bLocVsiScanRes = TRUE;
   }
   else
   {
      bLocVsiScanRes = FALSE;
   }

   bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1();
   
   if((FALSE == bLocPinVal)
   || (TRUE == CCU6_bHwFaultIgbtH)
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
* !Function    : CCU6_bGetHwFaultIgbtL
* !Description : Get hardware fault pin value of IGBT L.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetHwFaultIgbtL(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;
   boolean bLocVsiScanRes = FALSE;

   if (MAIN_u8IgbtLowFltCnt >= MAIN_u8IgbtFltConfirmCntC)
   {
      bLocVsiScanRes = TRUE;
   }
   else
   {
      bLocVsiScanRes = FALSE;
   }
   
   bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1();
   
   if((FALSE == bLocPinVal)
   || (TRUE == CCU6_bHwFaultIgbtL)
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
* !Function    : CCU6_bGetHwFaultOvcU
* !Description : Get hardware fault pin value of OVC U.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetHwFaultOvcU(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;

   if (CCU6_bHwOvcFltDetEnaC)
   {
      bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1();

      if((FALSE == bLocPinVal)
      || (TRUE == CCU6_bHwFaultOvcU))
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
* !Function    : CCU6_bGetHwFaultOvcV
* !Description : Get hardware fault pin value of OVC V.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetHwFaultOvcV(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;

   if (CCU6_bHwOvcFltDetEnaC)
   {
      bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1();

      if((FALSE == bLocPinVal)
      || (TRUE == CCU6_bHwFaultOvcV))
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
* !Function    : CCU6_bGetHwFaultOvcW
* !Description : Get hardware fault pin value of OVC W.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetHwFaultOvcW(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocPinVal = TRUE;

   if (CCU6_bHwOvcFltDetEnaC)
   {
      bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1();

      if((FALSE == bLocPinVal)
      || (TRUE == CCU6_bHwFaultOvcW))
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
* !Function    : CCU6_bGetHwFaultDcOvVolt
* !Description : Get hardware fault pin value of dclink over voltage.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetHwFaultDcOvVolt(void)
{
   boolean bLocHwFaultResult = FALSE;

   /* !Comment: No hardware over voltage diagnose circuit. */
#if 0
   boolean bLocPinVal = FALSE;

   /*bLocPinVal = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FLT_C_DCLINK_OV();*//*READ_IO_BLOCK_BY_LZJ*/

   if ( (FALSE == bLocPinVal) || (TRUE == CCU6_bHwFaultDcOvVolt) )
#else
   if ( TRUE == CCU6_bHwFaultDcOvVolt )
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
* !Function    : CCU6_bGetZeroMatchFlg
* !Description : Get T12 Zero match flag.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetZeroMatchFlg(void)
{
   return CCU6_bT12ZeroMatchFlg;
}

/*********************************************************************
* 
* !Function    : CCU6_vidSetHvOverFlg
* !Description : Set HV over voltage flag.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void CCU6_vidSetHvOverFlg(const boolean bHvOvFlg)
{
   CCU6_bHwFaultDcOvVolt = bHvOvFlg;
}

/*********************************************************************
* 
* !Function    : CCU6_bGetPwmRuningFlg
* !Description : Get T12 PWM running flag.
* !input :   NONE 
* !output : TRUE: PWM ON; FALSE: PWM OFF.
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
boolean CCU6_bGetPwmRuningFlg(void)
{
   return CCU6_bPwmOnGoingFlg;
}

/*****************************************************************************
*
* !Runnable    : CCU6_vidPwmDrvClkDiag
* !Trigger       : 10MS Task
* !Description : Driver board clk signal diagnostic
* 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void CCU6_vidPwmDrvClkDiag(void)
{
#if 0 
   boolean bLocBswReadySts = FALSE;
   uint16 u16LocKeyOn = 0;
   
   bLocBswReadySts = BSW_bGetBswReadySts(); 
   u16LocKeyOn = (uint16)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   
   if ( (TRUE == bLocBswReadySts) && (TRUE == CCU6_bIsCCU6Start) && (u16LocKeyOn > 0) )
   {
      Icu_17_TimerIp_ValueType       udtLocPeriodRaw;
      Icu_17_TimerIp_ValueType       udtLocActiveDurationRaw;
#if 0 /* TODO: To be checked */
      Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
      Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_CLK_HS,
                                    &strLocPeriodAndActiveTime);
      udtLocPeriodRaw  = strLocPeriodAndActiveTime.PeriodTime;
      udtLocActiveDurationRaw = strLocPeriodAndActiveTime.ActiveTime;
#endif

      CCU6_u32DrvClkHsPerdRaw = udtLocPeriodRaw;
      CCU6_u32DrvClkHsDutyRaw = udtLocActiveDurationRaw;

      if (CCU6_u32DrvClkHsPerdRaw > 0)
      {
         CCU6_f32DrvClkHsDuty = (float32)( (float32)CCU6_u32DrvClkHsDutyRaw / (float32)CCU6_u32DrvClkHsPerdRaw);

         if(CCU6_kbDrvBdClkEnaC)
         {
            if ( (CCU6_f32DrvClkHsDuty < CCU6_f32DrvClkDutyThdLowC) || (CCU6_f32DrvClkHsDuty > CCU6_f32DrvClkDutyThdHighC) )
            {
               FaultDetection(BSW_HW_, DRVCLKFLTHS  , TRUE);
            }
            else
            {
               FaultDetection(BSW_HW_, DRVCLKFLTHS  , FALSE);
            }
         }
         else
         {
            FaultDetection(BSW_HW_, DRVCLKFLTHS  , FALSE);
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
      CCU6_u32DrvClkLsPerdRaw = udtLocPeriodRaw;
      CCU6_u32DrvClkLsDutyRaw = udtLocActiveDurationRaw;
      
      if (CCU6_u32DrvClkLsPerdRaw > 0)
      {
         CCU6_f32DrvClkLsDuty = (float32)( (float32)CCU6_u32DrvClkLsDutyRaw / (float32)CCU6_u32DrvClkLsPerdRaw);

         if(CCU6_kbDrvBdClkEnaC)
         {
            if ( (CCU6_f32DrvClkLsDuty < CCU6_f32DrvClkDutyThdLowC) || (CCU6_f32DrvClkLsDuty > CCU6_f32DrvClkDutyThdHighC) )
            {
               FaultDetection(BSW_HW_, DRVCLKFLTLS  , TRUE);
            }
            else
            {
               FaultDetection(BSW_HW_, DRVCLKFLTLS  , FALSE);
            }
         }
         else
         {
            FaultDetection(BSW_HW_, DRVCLKFLTLS  , FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }
   }
#endif
}


uint8 CCU6_u8GetIGBTStatus(void)
{
   uint8 u8ReturnVal = 0;
   switch (CCU6_u8McuAscSttStep)
   {
      case CCU6_MCU_ASC_CLOSE:
      {
         u8ReturnVal = 2;  /* Normal */
      }
      break;

      case CCU6_MCU_ASC_ONGOING:
      {
         u8ReturnVal = 0;  /* ASC */
      }
      break;

      case CCU6_MCU_ASC_EXIT:
      case CCU6_MCU_ASC_EXIT_DELAY:
      case CCU6_MCU_ASC_FINSH:
      case CCU6_MCU_ASC_RECOVER:
      case CCU6_MCU_ASC_OVER_TIME:
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

