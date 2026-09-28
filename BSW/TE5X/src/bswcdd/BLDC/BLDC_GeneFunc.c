
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC_Device.h"
#include "BLDC_GeneFunc.h"

/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define BLDC_CALIB_START_SEC_CONST_16
#include "BLDC_MemMap.h" 
CONST(uint16, BLDC_CALIB) BLDC_ku16RvsDutyDelayC = 100;
#define BLDC_CALIB_STOP_SEC_CONST_16
#include "BLDC_MemMap.h" 

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
void BLDC_vidDebug(void);
void BLDC_vidModuleInit(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetHallState(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetCurDirSts(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetDutyModeStt(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetHallStt(const BLDC_Device * const kpktDev);
void BLDC_vidStartRotation(const BLDC_Device * const kpktDev, const uint8 u8BldcDir);
void BLDC_vidChgHallPattern(const BLDC_Device * const kpktDev);
void BLDC_vidSetPwmBcDuty(const BLDC_Device * const kpktDev, const float32 f32Duty);

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static BLDC_PwmCtrlVarSet  BLDC_xPwmCtrlVarSet[eBLDC_DEV_MAX_NUM];
static BLDC_HallCtrlVarSet BLDC_xHallCtrlVarSet[eBLDC_DEV_MAX_NUM];

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
/* !Comment: BLDC control table */
/* Column define: Current hall ;  Expect hall;  OutputModel;  */
const BLDC_HallCtrlTable BLDC_au8BackwardTable[6] = {
   {1, 5, 0x09},
   {2, 3, 0x12},
   {3, 1, 0x18},
   {4, 6, 0x24},
   {5, 4, 0x21},
   {6, 2, 0x06}
};

/* !Comment: BLDC control table */
/* Column define: Current hall ;  Expect hall;  OutputModel;  */
const BLDC_HallCtrlTable BLDC_au8ForwardTable[6] = {
   {1, 3, 0x21},
   {2, 6, 0x18},
   {3, 2, 0x09},
   {4, 5, 0x06},
   {5, 1, 0x24},
   {6, 4, 0x12}
};

const BLDC_GeneModule BLDC_xGeneModule = {
   .PwmCtrlVar        = &BLDC_xPwmCtrlVarSet[0],
   .HallCtrlVar       = &BLDC_xHallCtrlVarSet[0],

   .vidDebug          = BLDC_vidDebug,
   .vidModuleInit     = BLDC_vidModuleInit,
   .u8GetHallState    = BLDC_u8GetHallStt,
   .vidSetPwmBcDuty   = BLDC_vidSetPwmBcDuty,
   .vidStartRotation  = BLDC_vidStartRotation,
   .vidChgHallPattern = BLDC_vidChgHallPattern,

   .u8GetHallStt      = BLDC_u8GetHallState,
   .u8GetCurDirSts    = BLDC_u8GetCurDirSts,
   .u8GetDutyModeStt  = BLDC_u8GetDutyModeStt
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
__attribute__ ((optimize("O0"))) void BLDC_vidModuleInit(const BLDC_Device * const kpktDev) 
{
   uint8 u8DevID;

   if(kpktDev != NULL_PTR)
   {
      u8DevID    = kpktDev->u8DeviceID;
      
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt = 0;
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts     = BLDC_DIR_FORWARD;
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8PrevDirSts    = BLDC_DIR_FORWARD;
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt   = BLDC_DUTY_GOING;
      
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts = BLDC_DIR_FORWARD;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt    = 0;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrCurHallStt  = 0;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrExpOutput   = 0;
   }
   else
   {
      kpktDev->ptGeneModule->vidDebug();
   }
}

uint8 BLDC_u8GetHallState(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID = kpktDev->u8DeviceID;
   return BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt;
}

uint8 BLDC_u8GetCurDirSts(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID = kpktDev->u8DeviceID;
   return BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts;
}

uint8 BLDC_u8GetDutyModeStt(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID = kpktDev->u8DeviceID;
   return BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt;
}

/**********************************************************************
 * Function name    :  BLDC_u8GetHallStt
 * Description      :  Get current BLDC motor hall state
 * Input parameter  :  PBLDC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * ----/--/--	     V1.0	    Daniel      Create
 * 2024/05/07	     V2.0	     Zyx	      Add a device handle
 ***********************************************************************/
uint8 BLDC_u8GetHallStt(const BLDC_Device * const kpktDev)
{
   uint16 u16LocPos0;
   uint16 u16LocPos1;
   uint16 u16LocPos2;
   uint16 u16LocFirstHall;
   
   u16LocPos0 = kpktDev->ptHalModule->u16IOReadHall_1();
   u16LocPos1 = kpktDev->ptHalModule->u16IOReadHall_2();
   u16LocPos2 = kpktDev->ptHalModule->u16IOReadHall_3();
   u16LocFirstHall = (u16LocPos0 << 2) | (u16LocPos1 << 1) | u16LocPos2;

   return (uint8)u16LocFirstHall;
}

/**********************************************************************
 * Function name    :  BLDC_vidStartRotation
 * Description      :  Start motor rotate, this function only be called when motor is stopped
 * Input parameter  :  PBLDC_Device : Device
 * ---------------  :  u8BldcDir    : BLDC rotate direction
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * ----/--/--	     V1.0	    Daniel      Create
 * 2024/05/07	     V2.0	     Zyx	      Add a device handle
 ***********************************************************************/
void BLDC_vidStartRotation(const BLDC_Device * const kpktDev, const uint8 u8BldcDir)
{
   uint8 u8LocIdx;
   uint8 u8LocCurHall;
   uint8 u8LocFirstOutput;

   uint8 u8DevID = kpktDev->u8DeviceID;
   boolean bLocOutIdxFind = FALSE;

   BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts = u8BldcDir;
   
   /*!Comment: Read Current hall state*/
   u8LocCurHall = BLDC_u8GetHallStt(kpktDev);
   BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt = u8LocCurHall;
   
   if (BLDC_DIR_FORWARD == u8BldcDir)
   {
      for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
      {
         if (BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
         {
            bLocOutIdxFind = TRUE;
            u8LocFirstOutput = BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpOutput;
            break;
         }
      }
   }
   else
   {
      for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
      {
         if (BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
         {
            bLocOutIdxFind = TRUE;
            u8LocFirstOutput = BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpOutput;
            break;
         }
      }
   }

   if (TRUE == bLocOutIdxFind)
   {
      /* !Comment: Force set current MCMOUT and start shadow transfor. */
      kpktDev->ptTimerDrv->vidSetPwmOutState(kpktDev->ptTimerDrv, u8BldcDir, u8LocIdx);
      
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrCurHallStt = u8LocCurHall;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrExpOutput  = u8LocFirstOutput;
   }
}

/**********************************************************************
 * Function name    :  BLDC_vidChgHallPattern
 * Description      :  Change hall pattern
 * Input parameter  :  PBLDC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * ----/--/--	     V1.0	    Daniel      Create
 * 2024/05/07	     V2.0	     Zyx	      Add a device handle
 ***********************************************************************/
void BLDC_vidChgHallPattern(const BLDC_Device * const kpktDev)
{
   boolean bLocIdxFind;
   uint8 u8LocIdx;
   uint8 u8LocCurHall;
   uint8 u8LocExpOutput;
   
   uint8 u8DevID = kpktDev->u8DeviceID;

   if (BLDC_DUTY_GOING == BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt)
   {
      bLocIdxFind = FALSE;
      
      /*!Comment: Read Current hall state*/
      u8LocCurHall = BLDC_u8GetHallStt(kpktDev);
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt = u8LocCurHall;
      
      if (BLDC_DIR_FORWARD == BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts)
      {
         for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
         {
            if (BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
            {
               bLocIdxFind = TRUE;
               u8LocExpOutput = BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpOutput;
               break;
            }
         }
      }
      else
      {
         for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
         {
            if (BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
            {
               bLocIdxFind = TRUE;
               u8LocExpOutput = BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpOutput;
               break;
            }
         }
      }

      if (bLocIdxFind)
      {
         kpktDev->ptTimerDrv->vidSetPwmOutState(kpktDev->ptTimerDrv, BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts, u8LocIdx);
         
         BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrCurHallStt = u8LocCurHall;
         BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrExpOutput  = u8LocExpOutput;
      }
   }
}

/*********************************************************************
* 
* !Function    : BLDC_vidSetPwmBcDuty
* !Description : BLDC set PWM duty cycle.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
void BLDC_vidSetPwmBcDuty(const BLDC_Device * const kpktDev, const float32 f32Duty)
{
   float f32LocPwmDuty;
   uint8 u8DevID = kpktDev->u8DeviceID;

   if (f32Duty >= 0.0f)
   {
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts = BLDC_DIR_FORWARD;
      f32LocPwmDuty = f32Duty;
   }
   else
   {
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts = BLDC_DIR_BACKWARD;
      f32LocPwmDuty = f32Duty * (-1.0f);
   }
   
   switch (BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt)
   {
      case BLDC_DUTY_CLOSE:
      {
         f32LocPwmDuty = 0.0f;
         kpktDev->ptTimerDrv->vidPwmDisable(kpktDev->ptTimerDrv);
         break;
      }

      case BLDC_DUTY_REVRSE:
      {
         f32LocPwmDuty = 0.0f;
         BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt = 0;
         BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_BRAKE;
         break;
      }
      
      case BLDC_DUTY_BRAKE:

      {
         f32LocPwmDuty = 0.0f;
         if (BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt < BLDC_ku16RvsDutyDelayC)
         {
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt++;
            kpktDev->ptTimerDrv->vidPwmDisable(kpktDev->ptTimerDrv);
         }
         else
         {
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt = 0;
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_SWDIR;
         }
         break;
      }

      case BLDC_DUTY_SWDIR:
      {
         f32LocPwmDuty = 0.0f;
         BLDC_vidStartRotation(kpktDev, BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts);
         BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_GOING;
         break;
      }
      
      case BLDC_DUTY_GOING:
      {
         if((BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8PrevDirSts != BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts)
         || (BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts != BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts))
         {
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_REVRSE;
            f32LocPwmDuty = 0.0f;
         }
         break;
      }

      default:
         break;
   }

   BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8PrevDirSts = BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts;

   if (f32LocPwmDuty < 0.0f)
   {
      f32LocPwmDuty = 0.0f;
   }
   else if (f32LocPwmDuty >= 1.0f)
   {
      f32LocPwmDuty = 1.0f;
   }
   else
   {
      /* !Comment: No process. */
   }
   
   kpktDev->ptTimerDrv->vidSetPwmDuty(kpktDev->ptTimerDrv, f32LocPwmDuty * 100.0f);
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



