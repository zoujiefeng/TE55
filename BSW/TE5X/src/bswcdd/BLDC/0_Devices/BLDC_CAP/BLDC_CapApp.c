/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Mcal_Compiler.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC_Device.h"
#include "BLDC_CapDataType.h"
#include "BLDC_CapCalib.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* !Comment: BLDC Duty mode. */
enum BLDC_MGR_STATE{
   BLDC_MGR_SW_INIT_STATE = 0,
   BLDC_MGR_HW_INIT_STATE,
   BLDC_MGR_READY_STATE,
   BLDC_MGR_RUNNING_STATE
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/******************************************************************************/
/****************** Motor State Manage Macro Definitions **********************/
/******************************************************************************/
/* !Comment: BLDC Power on delay 100ms, wait for power on of current measure borad */
#define BLDC_PO_DELAY      (10U)

/* !Comment: Bus key clock duty cycle physics value. */
#define BLDC_BUS_KEY_CLK_PHYS           (0.4f)
#define BLDC_BUS_KEY_MAX_CLK_PHYS       (1.0f)

/******************************************************************************/
/*********************** Mid Point Macro Definitions **************************/
/******************************************************************************/
/* !Comment: BLDC Middle point filter times, max less than buffer size. */
#define BLDC_MIDPOINT_FILT_TIME                  (5U)

#define BLDC_EXPOUTPUT_UVW_HIGH_BRIDGE_MASK      (0x15U)   /* 010101b */
#define BLDC_EXPOUTPUT_U_HIGH_BRIDGE_MASK        (0x01U)   /* 000001b */
#define BLDC_EXPOUTPUT_V_HIGH_BRIDGE_MASK        (0x04U)   /* 000100b */
#define BLDC_EXPOUTPUT_W_HIGH_BRIDGE_MASK        (0x10U)   /* 010000b */

/******************************************************************************/
/*********************** DTC Report Macro Definitions *************************/
/******************************************************************************/
/* !Comment: Oil pressure short vcc or gnd threshold. */
#define BLDC_OIL_PRESS_SHORT_VCC      (4050)
#define BLDC_OIL_PRESS_SHORT_GND      (50)

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void BLDC_vidInit(void);
static void BLDC_vidMotorStateMng(const BLDC_Device * const kpktDev);
static void BLDC_vidMotPosPwmMng(const BLDC_Device * const kpktDev);
static void BLDC_vidGetPosSigPerd(uint32* pu32PosSigPerd);
static void BLDC_vidGetPositionDuty(float32* pf32PosDuty);
static void BLDC_vidHallDiagMainfunction(const BLDC_Device * const kpktDev, const uint8 u8CurHallStt);

static void BLDC_vidAd2sVolDet(const BLDC_Device * const kpktDev);
static void BLDC_vidHallFaultCheck(const BLDC_Device * const kpktDev);
static boolean BLDC_bFaultRptConditionCheck(const BLDC_Device * const kpktDev);
static void BLDC_vidDtcReportMainFunction(const BLDC_Device * const kpktDev);
static void BLDC_bMidPointFaultClear(const BLDC_Device * const kpktDev);

static void BLDC_vidMotorMgrVarInit(void);
static void BLDC_vidHallDetVarInit(void);
static void BLDC_vidMidPDetVarInit(void);
static void BLDC_vidDtcRptVarInit(void);

boolean BLDC_bGetHallUndefFlt(void);
boolean BLDC_bGetHallInvalidFlt(void);
boolean BLDC_bGetP5vAD2SOverVolFlt(void);
boolean BLDC_bGetP5vAD2SUnderVolFlt(void);
boolean BLDC_bGetUvwShortGnd(void);
boolean BLDC_bGetUvwShortVs(void);


/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
const BLDC_AppFunc BLDC_xCapAswFunc = {
   .vidInit                 = BLDC_vidInit,
   .vidMotorStateMng        = BLDC_vidMotorStateMng,
   .vidMotPosPwmMng         = BLDC_vidMotPosPwmMng,
   .vidGetPosSigPerd        = BLDC_vidGetPosSigPerd,
   .vidGetPositionDuty      = BLDC_vidGetPositionDuty,
   .vidHallDiagMainfunction = BLDC_vidHallDiagMainfunction,

   .bGetHallUndefFlt        = BLDC_bGetHallUndefFlt,
   .bGetHallInvalidFlt      = BLDC_bGetHallInvalidFlt,
   .bGetP5vAD2SOverVolFlt   = BLDC_bGetP5vAD2SOverVolFlt,
   .bGetP5vAD2SUnderVolFlt  = BLDC_bGetP5vAD2SUnderVolFlt,
   .bGetUvwShortGnd         = BLDC_bGetUvwShortGnd,
   .bGetUvwShortVs          = BLDC_bGetUvwShortVs
};

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static BLDC_tMotorMgrVarSet BLDC_xMotorMgrVarSet;
static BLDC_tHallDetVarSet  BLDC_xHallDetVarSet;
static BLDC_tMidPDetVarSet  BLDC_xMidPDetVarSet;
static BLDC_tDtcRptVarSet   BLDC_xDtcRptVarSet;
float32 BLDC_f32BldcPosDuty;
uint32  BLDC_u32MotPosSigPerd;
uint32  BLDC_u32MotPosSigDuty;

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
boolean BLDC_bPwmIsReady(void)
{
   boolean bPwmIsReady = FALSE;

   if(BLDC_MGR_RUNNING_STATE == BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts)
   {
      bPwmIsReady = TRUE;
   }

   return bPwmIsReady;
}

boolean BLDC_bGetHallUndefFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bHallUndefFlt;
}

boolean BLDC_bGetHallInvalidFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt;
}

boolean BLDC_bGetP5vAD2SOverVolFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt;
}

boolean BLDC_bGetP5vAD2SUnderVolFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt;
}

boolean BLDC_bGetUvwShortGnd(void)
{
   return BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd;
}

boolean BLDC_bGetUvwShortVs(void)
{
   return BLDC_xMidPDetVarSet.BLDC_bUvwShortVs;
}

/**********************************************************************
 * Function name    :  BLDC_vidInit
 * Description      :  Sub module init
 * Input parameter  :  PBLDC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidInit(void)
{
   BLDC_vidMotorMgrVarInit();
   BLDC_vidDtcRptVarInit();
   BLDC_vidMidPDetVarInit();
   BLDC_vidHallDetVarInit();
}

/*********************************************************************
* 
* !Function    : BLDC_vidMotorStateMng
* !Description : BLDC state machine management, schedule Task : 10ms
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void BLDC_vidMotorStateMng(const BLDC_Device * const kpktDev)
{
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   switch(BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts)
   {
      case BLDC_MGR_SW_INIT_STATE:
      {
         BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay++;
         
         /* !Comment: TCU Bus Key duty cycle 40% during power on stage, after that, keep 100%. */
         pktHalApi->vidBusKeyConfig(BLDC_BUS_KEY_CLK_PHYS);
         
         BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_HW_INIT_STATE;
         break;
      }
      case BLDC_MGR_HW_INIT_STATE:
      {
         BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay++;
         /* 50ms init hardware */
         if((BLDC_PO_DELAY / 2) == BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay)
         {
            kpktDev->ptTimerDrv->vidIntHwInit(kpktDev->ptTimerDrv);
            /* !Comment: Start BLDC position sample. */
            pktHalApi->vidStartPosSample();
         }
         /* 100ms  */
         if((BLDC_PO_DELAY - 1) == BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay)
         {
            BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_READY_STATE;
         }
         break;
      }
      case BLDC_MGR_READY_STATE:
      {
         /* !Comment: TCU Bus Key duty cycle keep 100%. */
         pktHalApi->vidBusKeyConfig(BLDC_BUS_KEY_MAX_CLK_PHYS);
         /* Start bldc rotation */
         kpktDev->ptGeneModule->vidStartRotation(kpktDev, BLDC_DIR_FORWARD);

         /* Enable bldc interrupt */
         kpktDev->ptTimerDrv->vidIntTrigEnable(kpktDev->ptTimerDrv, TRUE);
         
         BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_RUNNING_STATE;
         break;
      }
      case BLDC_MGR_RUNNING_STATE:
      {
         BLDC_vidDtcReportMainFunction(kpktDev);
         BLDC_bMidPointFaultClear(kpktDev);
         break;
      }
      default:
      {
         break;
      }
   }
}

static void BLDC_vidMotPosPwmMng(const BLDC_Device * const kpktDev)
{
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   if(pktHalApi->bGetMotPosDuty != NULL_PTR)
   {
      (void)pktHalApi->bGetMotPosDuty(&BLDC_f32BldcPosDuty, &BLDC_u32MotPosSigPerd, &BLDC_u32MotPosSigDuty);
   }
}

static void BLDC_vidGetPosSigPerd(uint32* pu32PosSigPerd)
{
   *pu32PosSigPerd = BLDC_u32MotPosSigPerd;
}

static void BLDC_vidGetPositionDuty(float32* pf32PosDuty)
{
   *pf32PosDuty = BLDC_f32BldcPosDuty;
}

/*****************************************************************************
*
* !Runnable    : BLDC_vidDiagnosticMng
* !Trigger       : PWM interrupt
* !Description : BLDC diagnostic management. 
* !Input: 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
static void BLDC_vidHallDiagMainfunction(const BLDC_Device * const kpktDev, const uint8 u8CurHallStt)
{
   uint8 u8LocPreHallSttIdx = 0;
   uint8 u8LocExpForwdHallStt = 0;
   uint8 u8LocExpBacwdHallStt = 0;
      
   BLDC_xHallDetVarSet.BLDC_u8DiagHallStt = u8CurHallStt;

   if ( (BLDC_xHallDetVarSet.BLDC_u8DiagHallStt > 0)
     && (BLDC_xHallDetVarSet.BLDC_u8DiagHallStt < 7) )
   {
      BLDC_xHallDetVarSet.BLDC_bHallUndefFlt = FALSE;

      if (BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre != BLDC_xHallDetVarSet.BLDC_u8DiagHallStt)
      {
         u8LocPreHallSttIdx = BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre - 1;
         if (u8LocPreHallSttIdx < 6)
         {
            u8LocExpForwdHallStt = BLDC_au8ForwardTable[u8LocPreHallSttIdx].BLDC_u8ExpHall;
            u8LocExpBacwdHallStt = BLDC_au8BackwardTable[u8LocPreHallSttIdx].BLDC_u8ExpHall;

            if ( (u8CurHallStt != u8LocExpForwdHallStt)
              && (u8CurHallStt != u8LocExpBacwdHallStt) )
            {
               BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt = TRUE;
            }
            else
            {
               BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt = FALSE;
            }
         }

         BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre = u8CurHallStt;
      }
   }
   else
   {
      BLDC_xHallDetVarSet.BLDC_bHallUndefFlt = TRUE;
   }

   BLDC_vidAd2sVolDet(kpktDev);
}

/*********************************************************************
* 
* !Function    : BLDC_vidShortFaultDetection
* !Description : 
* !input :   f32Duty,  u8WrExpOutput
* !output : NONE
**********************************************************************
* !LastAuthor  : WangHe
**********************************************************************/
#if 0
void BLDC_vidShortFaultDetection(const BLDC_Device * const kpktDev, const float32 f32Duty)
{
   uint8 u8LocIdx = 0;
   boolean bLocTle9180WorkNormal = FALSE;
      
   bLocTle9180WorkNormal = TLE9180_bIsWorkModeNormal();
   
   if(bLocTle9180WorkNormal)
   {
      BLDC_xMidPDetVarSet.BLDC_f32TgtDutyDeltVal = f32Duty - BLDC_xMidPDetVarSet.BLDC_f32PrevTgtDuty;
      BLDC_xMidPDetVarSet.BLDC_f32PrevTgtDuty = f32Duty;
      if((BLDC_xMidPDetVarSet.BLDC_f32TgtDutyDeltVal > BLDC_kf32TgtDutyDeltMaxC)
      || (BLDC_xMidPDetVarSet.BLDC_f32TgtDutyDeltVal < ((-1.0f) * BLDC_kf32TgtDutyDeltMaxC)) 
      || (f32Duty >= BLDC_kf32MidPotMaxMonitorDutyC) 
      || (f32Duty <= BLDC_kf32MidPotMinMonitorDutyC) 
      || (BLDC_DUTY_GOING != BLDC_xPwmCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8DutyModeStt) 
      || (BLDC_f32MotorSpeed >= BLDC_kf32MotorSpeedC))
      {
         BLDC_xMidPDetVarSet.BLDC_u16TgtDutyRisingDelay = BLDC_ku16TgtDutyRisingTimC;
      }
      else
      {
         if (BLDC_xMidPDetVarSet.BLDC_u16TgtDutyRisingDelay > 0)
         {
            BLDC_xMidPDetVarSet.BLDC_u16TgtDutyRisingDelay--;
         }
      }
      
      if (TRUE == BLDC_bIsBldcStart)
      {
         if ( (BLDC_xMidPDetVarSet.BLDC_u8WrExpOutputLast != (BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_UVW_HIGH_BRIDGE_MASK) )
           || (BLDC_xMidPDetVarSet.BLDC_u16TgtDutyRisingDelay > 0) )
         {
            BLDC_xMidPDetVarSet.BLDC_u8WrExpOutputLast = (BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_UVW_HIGH_BRIDGE_MASK);
            /* Phase transformation, clear filter buf index */
            BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt = 0;

            for (u8LocIdx = 0; u8LocIdx < BLDC_MIDPOINT_FILT_TIME; u8LocIdx++)
            {
               BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[u8LocIdx] = 0;
               BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[u8LocIdx] = 0;
               BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[u8LocIdx] = 0;
               BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[u8LocIdx] = 0;
            }
         }
         else
         {
            if(BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt < BLDC_MIDPOINT_FILT_TIME)
            {
               /* Fill filter buf */
               BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt] = f32Duty;
               
               if(BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_U_HIGH_BRIDGE_MASK)
               {
                  BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt] = BLDC_f32GetPfbPwmDuty(IcuConf_IcuChannel_M_TLE9180_PFB1);
               }
               else if(BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_V_HIGH_BRIDGE_MASK)
               {
                  BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt] = BLDC_f32GetPfbPwmDuty(IcuConf_IcuChannel_M_TLE9180_PFB2);
               }
               else if(BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_W_HIGH_BRIDGE_MASK)
               {
                  BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt] = BLDC_f32GetPfbPwmDuty(IcuConf_IcuChannel_M_TLE9180_PFB3);
               }
               else
               {}
               
               BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt++;

               /* !Comment: If buffer not filled full, clear sum value. */
               BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum = 0;
               BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhysSum = 0;
               BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhysSum = 0;
               BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhysSum = 0;
            }
            else
            {
               BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt = 0;

               BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum  = (BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[0]
                                                        + BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[1]
                                                        + BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[2]
                                                        + BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[3]);
               
               if(BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_U_HIGH_BRIDGE_MASK)
               {
                  BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhysSum = (BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[1]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[2]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[3]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[4]);
                  
                  if( BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum > (BLDC_kf32MidPotTgtLowC * 4) )
                  {
                     if( BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhysSum < (BLDC_kf32MidPotShrtGndDutyC * 4) )
                     {
                        BLDC_xMidPDetVarSet.BLDC_bUShortGnd = TRUE;
                     }
                  }
                  else if( BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum < (BLDC_kf32MidPotTgtHighC * 4) )
                  {
                     if( BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhysSum > (BLDC_kf32MidPotShrtVccDutyC * 4) )
                     {
                        BLDC_xMidPDetVarSet.BLDC_bUShortVs = TRUE;
                     }
                  }
                  else
                  {
                     /* !Comment: No fault. */
                  }
               }
               else if(BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_V_HIGH_BRIDGE_MASK)
               {
                  BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhysSum = (BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[1]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[2]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[3]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[4]);
                  
                  if( BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum > (BLDC_kf32MidPotTgtLowC * 4) )
                  {
                     if( BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhysSum < (BLDC_kf32MidPotShrtGndDutyC * 4) )
                     {
                        BLDC_xMidPDetVarSet.BLDC_bVShortGnd = TRUE;
                     }
                  }
                  else if( BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum < (BLDC_kf32MidPotTgtHighC * 4) )
                  {
                     if( BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhysSum > (BLDC_kf32MidPotShrtVccDutyC * 4) )
                     {
                        BLDC_xMidPDetVarSet.BLDC_bVShortVs = TRUE;
                     }
                  }
                  else
                  {
                     /* !Comment: No fault. */
                  }
               }
               else if(BLDC_xHallCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8WrExpOutput & BLDC_EXPOUTPUT_W_HIGH_BRIDGE_MASK)
               {
                  BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhysSum = (BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[1]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[2]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[3]
                                                           + BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[4]);
                  
                  if( BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum > (BLDC_kf32MidPotTgtLowC * 4) )
                  {
                     if( BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhysSum < (BLDC_kf32MidPotShrtGndDutyC * 4))
                     {
                        BLDC_xMidPDetVarSet.BLDC_bWShortGnd = TRUE;
                     }
                  }
                  else if( BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum < (BLDC_kf32MidPotTgtHighC * 4))
                  {
                     if( BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhysSum > (BLDC_kf32MidPotShrtVccDutyC * 4))
                     {
                        BLDC_xMidPDetVarSet.BLDC_bWShortVs = TRUE;
                     }
                  }
                  else
                  {
                     /* !Comment: No fault. */
                  }
               }           
               else
               {
                  /* !Comment: No fault. */
               }

            /* !Comment: Bldc middle point diagnose is not stable currently, mask it. --Daniel */
               if((TRUE == BLDC_xMidPDetVarSet.BLDC_bUShortGnd) || (TRUE == BLDC_xMidPDetVarSet.BLDC_bUShortVs)
               || (TRUE == BLDC_xMidPDetVarSet.BLDC_bVShortGnd) || (TRUE == BLDC_xMidPDetVarSet.BLDC_bVShortVs) 
               || (TRUE == BLDC_xMidPDetVarSet.BLDC_bWShortGnd) || (TRUE == BLDC_xMidPDetVarSet.BLDC_bWShortVs))
               {
                  if (BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt < BLDC_ku16MidPotFltConfirmC)
                  {
                     BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt += BLDC_ku16MidPotFltIncStepC;
                     
                     BLDC_xMidPDetVarSet.BLDC_bUShortGnd = FALSE;
                     BLDC_xMidPDetVarSet.BLDC_bUShortVs = FALSE;
                     BLDC_xMidPDetVarSet.BLDC_bVShortGnd = FALSE;
                     BLDC_xMidPDetVarSet.BLDC_bVShortVs = FALSE;
                     BLDC_xMidPDetVarSet.BLDC_bWShortGnd = FALSE;
                     BLDC_xMidPDetVarSet.BLDC_bWShortVs = FALSE;
                  }
                  else
                  {
                     BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt = 0;
                     
                     if ((TRUE == BLDC_xMidPDetVarSet.BLDC_bUShortGnd)
                      || (TRUE == BLDC_xMidPDetVarSet.BLDC_bVShortGnd)
                      || (TRUE == BLDC_xMidPDetVarSet.BLDC_bWShortGnd))
                     {
                        BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd = TRUE;
                     }
                     else
                     {
                        BLDC_xMidPDetVarSet.BLDC_bUvwShortVs = TRUE;
                     }

                     BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt = BLDC_ku16MidPotRcvTimC;
                     BLDC_xPwmCtrlVarSet[BLDC_DEVICE_ID].BLDC_u8DutyModeStt = BLDC_DUTY_CLOSE;
                  }
               }
               else
               {
                  if (BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt > 0)
                  {
                     BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt--;
                  }
               }
            } 
         }
      }
   }
}
#endif   

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/*********************************************************************
* 
* !Function    : BLDC_vidShortFaultClear
* !Description : 
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void BLDC_bMidPointFaultClear(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID;

   u8DevID    = kpktDev->u8DeviceID;

   if(BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt > 0)
   {
      BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt--;
      
      BLDC_xMidPDetVarSet.BLDC_bUShortGnd = FALSE;
      BLDC_xMidPDetVarSet.BLDC_bUShortVs = FALSE;
      BLDC_xMidPDetVarSet.BLDC_bVShortGnd = FALSE;
      BLDC_xMidPDetVarSet.BLDC_bVShortVs = FALSE;
      BLDC_xMidPDetVarSet.BLDC_bWShortGnd = FALSE;
      BLDC_xMidPDetVarSet.BLDC_bWShortVs = FALSE;
      BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt = 0;
      
      if(0 == BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt)
      {
         BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt = 0;
         BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd = FALSE;
         BLDC_xMidPDetVarSet.BLDC_bUvwShortVs = FALSE;
         
         kpktDev->ptGeneModule->PwmCtrlVar[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_REVRSE;
      }
   }
   else
   {
      BLDC_vidHallFaultCheck(kpktDev);
   }
}

/**********************************************************************
 * Function name    :  BLDC_vidDtcReportMainFunction
 * Description      :  Sub module var init
 * Input parameter  :  PBLDC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidDtcReportMainFunction(const BLDC_Device * const kpktDev)
{
   boolean bCheckCondition;
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   bCheckCondition = BLDC_bFaultRptConditionCheck(kpktDev);
   
   BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw = pktHalApi->u16ADReadOilPressure();
   
   if(TRUE == bCheckCondition)
   {
      if (FALSE == BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt)
      {
         pktHalApi->vidSetHallInvalidState(BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt);
         pktHalApi->vidSetHallUndefinedState(BLDC_xHallDetVarSet.BLDC_bHallUndefFlt);
      }

      pktHalApi->vidSetHallSupplyLowState(BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt);

      if (BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw > BLDC_OIL_PRESS_SHORT_VCC)
      {
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = TRUE;
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = FALSE;
      }
      else if (BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw < BLDC_OIL_PRESS_SHORT_GND)
      {
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = FALSE;
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = TRUE;
      }
      else
      {
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = FALSE;
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = FALSE;
      }

      pktHalApi->vidSetPhaseShortGndState(((TRUE == BLDC_xMidPDetVarSet.BLDC_bUShortGnd)
                                         || (TRUE == BLDC_xMidPDetVarSet.BLDC_bVShortGnd)
                                         || (TRUE == BLDC_xMidPDetVarSet.BLDC_bWShortGnd)));
      pktHalApi->vidSetPhaseShortVccState(((TRUE == BLDC_xMidPDetVarSet.BLDC_bUShortVs)
                                         || (TRUE == BLDC_xMidPDetVarSet.BLDC_bVShortVs)
                                         || (TRUE == BLDC_xMidPDetVarSet.BLDC_bWShortVs)));
   }
}

/*********************************************************************
* 
* !Function    : BLDC_vidShortFaultClear
* !Description : 
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void BLDC_vidAd2sVolDet(const BLDC_Device * const kpktDev)
{
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   BLDC_xHallDetVarSet.BLDC_u16P5vAD2SRaw = pktHalApi->u16ADReadP5VAD2S();
   BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys = (((float32)BLDC_xHallDetVarSet.BLDC_u16P5vAD2SRaw) / 4095.0f) * 10;

   if (BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys > BLDC_kf32P5vAD2SOverVolC) 
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt = TRUE;
   }
   else
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt = FALSE;
   }

   if (BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys < BLDC_kf32P5vAD2SUnderVolC)
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt = TRUE;
   }
   else
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt = FALSE;
   }
}

/**********************************************************************
 * Function name    :  BLDC_vidHallPhaseCtrlVarInit
 * Description      :  Sub module var init
 * Input parameter  :  u8DevId : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidHallFaultCheck(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID;
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   u8DevID    = kpktDev->u8DeviceID;

   /* !Comment: Check TCU Fault. */
   if ((pktHalApi->u16ReadHallUndefineLogged() != 0) 
   ||  (pktHalApi->u16ReadHallSupplyLowLogged() != 0) )
   {
      BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt = BLDC_ku16MidPotRcvTimC;
      kpktDev->ptGeneModule->PwmCtrlVar[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_CLOSE;
   }
}

/**********************************************************************
 * Function name    :  BLDC_bFaultRptConditionCheck
 * Description      :  Sub module var init
 * Input parameter  :  u8DevId : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static boolean BLDC_bFaultRptConditionCheck(const BLDC_Device * const kpktDev)
{
   boolean bBswReadySts;
   boolean bRetVal = FALSE;
   uint16  u16LocAdVal;

   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);
   
   bBswReadySts = pktHalApi->bGetReadyState();

   /* Get Battery Voltage */
   u16LocAdVal = pktHalApi->u16ADRead12VBattery();
   BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage = ((float32)u16LocAdVal * 0.0124) + 0.1336;
   
   u16LocAdVal = pktHalApi->u16ADRead12VBackup();
   BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage = 0; /* ((float32)u16LocAdVal * 0.00696f) + 0.6f; */

   if(((BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage >= BLDC_kf32LVThdLowC) && (BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage <= BLDC_kf32LVThdHighC))
   || ((BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage >= BLDC_kf32LVThdLowC) && (BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage <= BLDC_kf32LVThdHighC)))
   {
      if (bBswReadySts)
      {
         bRetVal = TRUE;
      }
   }

   return bRetVal;
}

/**********************************************************************
 * Function name    :  BLDC_vidMotorMgrVarInit
 * Description      :  Sub module var init
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidMotorMgrVarInit(void)
{
   BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay = 0;
   BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts   = BLDC_MGR_SW_INIT_STATE;
   BLDC_f32BldcPosDuty = 0.0f;
   BLDC_u32MotPosSigPerd = 0;
   BLDC_u32MotPosSigDuty = 0;
}

/**********************************************************************
 * Function name    :  BLDC_vidHallDetVarInit
 * Description      :  Sub module var init
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidHallDetVarInit(void)
{
   BLDC_xHallDetVarSet.BLDC_u8DiagHallStt = 0;
   BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre = 0;
   BLDC_xHallDetVarSet.BLDC_bHallUndefFlt = FALSE;
   BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt = FALSE;
   BLDC_xHallDetVarSet.BLDC_u16P5vAD2SRaw = 0;
   BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys = 0.0f;
   BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt = FALSE;
   BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt = FALSE;
}

/**********************************************************************
 * Function name    :  BLDC_vidMidPDetVarInit
 * Description      :  Sub module var init
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidMidPDetVarInit(void)
{
   uint8 u8Index;
   
   BLDC_xMidPDetVarSet.BLDC_bUShortGnd            = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bUShortVs             = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd          = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bUvwShortVs           = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bVShortGnd            = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bVShortVs             = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bWShortGnd            = FALSE;
   BLDC_xMidPDetVarSet.BLDC_bWShortVs             = FALSE;
   BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum     = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhysSum    = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhysSum    = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhysSum    = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt          = 0;
   BLDC_xMidPDetVarSet.BLDC_u8WrExpOutputLast     = 0;
   BLDC_xMidPDetVarSet.BLDC_u16TgtDutyRisingDelay = 0;
   BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt   = 0;
   BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt    = 0;
   BLDC_xMidPDetVarSet.BLDC_f32PrevTgtDuty        = 0.0f; 
   BLDC_xMidPDetVarSet.BLDC_f32TgtDutyDeltVal     = 0.0f; 

   for(u8Index = 0; u8Index < BLDC_F32PFB1DUTYPHYS_COLS; u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[u8Index] = 0.0f;
   }  
   for(u8Index = 0; u8Index < BLDC_F32PFB2DUTYPHYS_COLS; u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[u8Index] = 0.0f;
   }
   for(u8Index = 0; u8Index < BLDC_F32PFB3DUTYPHYS_COLS; u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[u8Index] = 0.0f;
   }
   for(u8Index = 0; u8Index < BLDC_F32TGTDUTYPHYS_COLS; u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[u8Index] = 0.0f;
   }
}

/**********************************************************************
 * Function name    :  BLDC_vidDtcRptVarInit
 * Description      :  Sub module var init
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void BLDC_vidDtcRptVarInit(void)
{
   BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw = 0;
   BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = FALSE;
   BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = FALSE;
   BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage = 0;
   BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage = 0;
}

