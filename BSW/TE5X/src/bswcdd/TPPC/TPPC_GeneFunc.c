
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_Device.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define TPPC_DUTY_CLAMP(Duty, minDuty, maxDuty)   \
do{ Duty = (((Duty) < (minDuty)) ? (minDuty) : (((Duty) > (maxDuty)) ? (maxDuty) : (Duty))); }while(0)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* PWM control variable set */
typedef struct TPPC_GeneVarSet{
   uint16  TPPC_u16DutyDelayCnt;
   uint8   TPPC_u8PrevDirSts;
   uint8   TPPC_u8CurDirSts;
   uint8   TPPC_u8DutyModeStt;
   uint8   TPPC_u8DutyHoldTicks;
   float32 TPPC_f32CurCycleDuty;

   float32 f32PwmDutyPhysUZ;
   float32 f32PwmDutyPhysVZ;
   float32 f32PwmDutyPhysWZ;
}TPPC_GeneVarSet;

/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static TPPC_GeneVarSet  TPPC_xGeneVarSet[eTPPC_DEV_MAX_NUM];

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define  TPPC_START_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"
__attribute__ ((optimize("O0"))) void TPPC_vidModuleInit(const TPPC_Device * const kpktDev) 
{
   uint8 u8DevID;

   if(kpktDev != NULL_PTR)
   {
      u8DevID = kpktDev->u8DeviceID;
   }
   else
   {
      kpktDev->vidDebug();
   }
}

/*********************************************************************
* 
* !Function    : TPPC_u16GetPwmDeadTime
* !Description : TPPC return PWM Dead time.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
uint16 TPPC_u16GetPwmDeadTime(const TPPC_Device * const kpktDev)
{
   uint16 u16LocPwmDeadTime = 0;

   //u16LocPwmDeadTime = (uint16)driver->base.deadtime;

   return (u16LocPwmDeadTime);
}

/*********************************************************************
* 
* !Function    : TPPC_vidStartPwmOutput
* !Description : When TPPC in PwmDirect mode, this function set multi channel
*                      module to start PWM output.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void TPPC_vidStartPwmOutput(const TPPC_Device * const kpktDev, boolean bStartCmd)
{
   if(TRUE == bStartCmd)
   {
      kpktDev->pktTimerDrv->vidPwmEnable(kpktDev->pktTimerDrv);
   }
   else
   {
      kpktDev->pktTimerDrv->vidPwmDisable(kpktDev->pktTimerDrv);
   }
}

/*********************************************************************
* 
* !Function    : TPPC_vidStartPwmOutput
* !Description : When TPPC in PwmDirect mode, this function set multi channel
*                      module to start PWM output.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void TPPC_vidStartTimer(const TPPC_Device * const kpktDev, boolean bStartCmd)
{
   kpktDev->pktTimerDrv->vidStartTimer(kpktDev->pktTimerDrv, bStartCmd);
}

/*********************************************************************
* 
* !Function    : TPPC_vidSetPwmBcDuty
* !Description : TPPC set PWM duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void TPPC_vidSetPwmBcDuty(const TPPC_Device * const kpktDev,
                          float32 f32DutyU,
                          float32 f32DutyV,
                          float32 f32DutyW)
{
   TPPC_Duty tDuty;

   /*                Duty    minD   maxD */
   TPPC_DUTY_CLAMP(f32DutyU, 0.0f, 100.0f);
   TPPC_DUTY_CLAMP(f32DutyV, 0.0f, 100.0f);
   TPPC_DUTY_CLAMP(f32DutyW, 0.0f, 100.0f);

   tDuty.f32Duty1 = f32DutyU;
   tDuty.f32Duty2 = f32DutyV;
   tDuty.f32Duty3 = f32DutyW;
   kpktDev->pktTimerDrv->vidSetPwmDuty(kpktDev->pktTimerDrv, &tDuty);
}

/*********************************************************************
* 
* !Function    : TPPC_vidSetPwmBcDuty
* !Description : TPPC set PWM duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void TPPC_vidSetPwmFreq(const TPPC_Device * const kpktDev, float32 f32Freq)
{
   kpktDev->pktTimerDrv->vidSetPwmFreq(kpktDev->pktTimerDrv, f32Freq);
}

/*********************************************************************
* 
* !Function    : TPPC_vidSwitchPwmUpdEvent
* !Description : switch PWM update event according to T12 counter value, if T12
* zero match, switch PWM update event to T12 period match, if T12 period match,
* switch PWM update event to T12 zero match.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void TPPC_vidSwitchPwmUpdEvent(const TPPC_Device * const kpktDev)
{
   #if 0
   uint16 u16LocT12CntVal;

   if (TPPC_bDualSmpEnaC)
   {
      u16LocT12CntVal = TPPC_pstrModule->T12.B.T12CV;
      TPPC_u16T12CntVal = u16LocT12CntVal;

      /* !Comment: T12CV is reliable, SWSEL or SWSYN is not readable. */
      if (u16LocT12CntVal < TPPC_T12_ZERO_MATCH_LINE)
      {
         TPPC_pstrModule->MCMCTR.B.SWSEL = IfxTPPC_MultiChannelSwitchingSelect_t12PeriodMatch;
         TPPC_pstrModule->MCMCTR.B.SWSYN = IfxTPPC_MultiChannelSwitchingSync_direct;
         TPPC_bT12ZeroMatchFlg = TRUE;
      }
      else
      {
         TPPC_pstrModule->MCMCTR.B.SWSEL = IfxTPPC_MultiChannelSwitchingSelect_t12OneMatch;
         TPPC_pstrModule->MCMCTR.B.SWSYN = IfxTPPC_MultiChannelSwitchingSync_t12ZeroMatch;
         TPPC_bT12ZeroMatchFlg = FALSE;
      }
   }
   else
   {
      TPPC_bT12ZeroMatchFlg = TRUE;
   }

   TPPC_vidMidPointCheck(kpktDev);
   #endif
}

#define  TPPC_STOP_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



