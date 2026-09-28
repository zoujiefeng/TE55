
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "iohal.h"
#include "DRV8340.h"
#include "DRV83xx_HAL.h"
#include "DRV8340_Calib.h"
#include "Fault.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define __DRV8340_USE_SPI_TO_CLEAR_FAULT_    1
#define __DRV8340_USE_HW_TO_CLEAR_FAULT_     0

#define DRC8340_MAIN_FUNC_PERIOD             (0.01f)
#define DRV8340_CFG_CHECK_PERIOD             (uint16)(10.0f / DRC8340_MAIN_FUNC_PERIOD)
#define DRC8340_INIT_RECOVER_TIME            (uint16)(0u)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* !Comment: DRV8340 State machine define */
enum
{
   DRV8340_MODE_INIT = 0,
   DRV8340_MODE_SHORT_DET_IN_INIT_PHASE,
   DRV8340_MODE_SHORT_DET_IN_RUN_PHASE,
   DRV8340_MODE_START_SHORT_TEST,
   DRV8340_MODE_READ_TEST_RESULT,
   DRV8340_MODE_CFG_CHECK,
   DRV8340_MODE_RECFG,
   DRV8340_WAIT_PWM_READY,
   DRV8340_MODE_NORMAL,
   DRV8340_MODE_ERR_FOUND,
   DRV8340_MODE_COM_ONGOING,
   DRV8340_MODE_ERR_COUNT,
   DRV8340_MODE_ERR_TRY_CLEAR,
   DRV8340_MODE_ERR_RECOVER,
   DRV8340_MODE_FAULT_STT,
   DRV8340_MODE_INVALID = 0xFF
};
   
enum{
   DRV8340_COM_IDLE,
   DRV8340_COM_READ_START,
   DRV8340_COM_WRITE_START,
   DRV8340_COM_EXTRACT_READ_DATA,
   DRV8340_COM_EXTRACT_WRITE_DATA,
   DRV8340_COM_READ_END,
   DRV8340_COM_WRITE_END
};


/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void DRV8340_vidInit(void);
static void DRV8340_vidReadFault(void);
static inline boolean DRV8340_bAsyncComMainfunction(void);
static inline void DRV8340_vidEnableGateDrivers(void);
static inline void DRV8340_vidDisableGateDrivers(void);
static inline boolean DRV8340_bGetShortState(void);
static inline void DRV8340_vidTrigReadReq(uint8 u8TgtState);
static inline void DRV8340_vidTrigWriteReq(uint8 u8TgtState);
static inline void DRV8340_vidJumpToState(uint8 u8State);
static inline void DRV8340_vidTrigShortTest(void);

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static boolean DRV8340_bErrorPinLevel;
static uint8 DRV8340_u8Mode;
static uint8 DRV8340_u8TgtMode;
static uint8 DRV8340_u8ErrRecoverCnt;
static uint8 DRV8340_u8ShortCntInRunPhase;
static uint8 DRV8340_u8ShortCntInInitPhase;
static uint8 DRV8340_u8TestTimesInRunPhase;
static uint8 DRV8340_u8TestTimesInInitPhase;
static uint8 DRV8340_u8MaxShortCntInInitPhase;
static uint8 DRV8340_u8AsyncComState = DRV8340_COM_IDLE;
static uint16 DRV8340_u16ErrTotalCnt;
static uint16 DRV8340_u16EnaResetTime;
static uint16 DRV8340_u16EnaResetThld;
static uint16 DRV8340_u16ErrPinChkCnt;
static uint16 DRV8340_u16CfgChkTimer;
static uint16 DRV8340_u16FaultTimer;

static boolean DRV8340_bFaultTIsStart;
static boolean DRV8340_bDrvUnderVoltage;
static boolean DRV8340_bDrvOverVoltage;
static boolean DRV8340_bDrvOverCurrent;
static boolean DRV8340_bDrvGateDrvFault;
static boolean DRV8340_bDrvOverTemp;
static boolean DRV8340_bPhaseShort;
static boolean DRV8340_bPhaseShortBat;
static boolean DRV8340_bPhaseShortGnd;
static boolean DRV8340_bIsShutdown;
static boolean DRV8340_bIsLatched;
static boolean DRV8340_bIsInitDone;


static boolean DRV8340_bUserReadReq;
static boolean DRV8340_bUserWriteReq;

static uint8 DRV8340_au8FaultRegsVal[4];

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define DRV8340_START_SEC_CODE
#include "DRV8340_MemMap.h"
boolean DRV8340_bGetErrorPinLevel(void)
{
   return DRV8340_bErrorPinLevel;
}

boolean DRV8340_bGetDrvUnderVolt(void)
{
   return DRV8340_bDrvUnderVoltage;
}

boolean DRV8340_bGetDrvOverVolt(void)
{
   return DRV8340_bDrvOverVoltage;
}

boolean DRV8340_bGetDrvOverCurr(void)
{
   return (DRV8340_bDrvOverCurrent || DRV8340_bDrvGateDrvFault);
}

boolean DRV8340_bGetDrvOverTemp(void)
{
   return DRV8340_bDrvOverTemp;
}

boolean DRV8340_bGetPhsShortHigh(void)
{
   return DRV8340_bPhaseShortBat;
}

boolean DRV8340_bGetPhsShortLow(void)
{
   return DRV8340_bPhaseShortGnd;
}

void DRV8340_vidModuleInit(void)
{
   DRV8340_u8Mode          = DRV8340_MODE_INIT;
   DRV8340_u8TgtMode       = DRV8340_MODE_INVALID;
   DRV8340_u8ErrRecoverCnt = 0;
   DRV8340_u8AsyncComState = DRV8340_COM_IDLE;
   DRV8340_u16EnaResetTime = 0;
   DRV8340_u16EnaResetThld = DRC8340_INIT_RECOVER_TIME;
   DRV8340_u16ErrPinChkCnt = 0;
   DRV8340_u16CfgChkTimer  = 0;
   DRV8340_u16FaultTimer   = 0;
   DRV8340_u16ErrTotalCnt  = 0;

   DRV8340_u8ShortCntInRunPhase  = 0;
   DRV8340_u8ShortCntInInitPhase = 0;
   
   DRV8340_u8TestTimesInRunPhase  = 0;
   DRV8340_u8TestTimesInInitPhase = 0;

   DRV8340_u8MaxShortCntInInitPhase = 0;
   
   DRV8340_bErrorPinLevel   = FALSE;
   DRV8340_bDrvUnderVoltage = FALSE;
   DRV8340_bDrvOverVoltage  = FALSE;
   DRV8340_bDrvOverCurrent  = FALSE;
   DRV8340_bDrvGateDrvFault = FALSE;
   DRV8340_bDrvOverTemp     = FALSE;
   DRV8340_bPhaseShort      = FALSE;
   DRV8340_bUserReadReq     = FALSE;
   DRV8340_bUserWriteReq    = FALSE;
   DRV8340_bIsShutdown      = TRUE;
   DRV8340_bIsLatched       = FALSE;
   DRV8340_bIsInitDone      = FALSE;
   DRV8340_bFaultTIsStart   = FALSE;

   DRV8340_au8FaultRegsVal[0] = 0;
   DRV8340_au8FaultRegsVal[1] = 0;
   DRV8340_au8FaultRegsVal[2] = 0;
   DRV8340_au8FaultRegsVal[3] = 0;

   /* !Comment: Set DRV8340 control IO. */
   DRV8340_vidEnableGateDrivers();
}

void DRV8340_vidMainFunction(void)
{
   uint16 u16LocDRV8340ErrPin = 0;
   boolean bBswReadySts = FALSE;
   boolean bTempRet;
   
   // u16LocDRV8340ErrPin = IOHAL_u16Read_CH_DIO_IN_CLU_ERR_FAULT();
   DRV8340_bErrorPinLevel = (u16LocDRV8340ErrPin != 0x00)? TRUE : FALSE;

   switch(DRV8340_u8Mode)
   {
      case DRV8340_MODE_INIT:
      {
         DRV8340_vidInit();
         DRV8340_vidJumpToState(DRV8340_MODE_START_SHORT_TEST);
      }
      break;
      
      case DRV8340_MODE_START_SHORT_TEST:
      {
         DRV8340_vidTrigShortTest();
      }
      break;

      case DRV8340_MODE_READ_TEST_RESULT:
      {
         if(DRV8340_bIsInitDone)
         {
            DRV8340_vidTrigReadReq(DRV8340_MODE_SHORT_DET_IN_RUN_PHASE);
         }
         else
         {
            DRV8340_vidTrigReadReq(DRV8340_MODE_SHORT_DET_IN_INIT_PHASE);
         }
      }
      break;
      
      case DRV8340_MODE_SHORT_DET_IN_INIT_PHASE:
      {
         bTempRet = DRV8340_bGetShortState();

         if(DRV8340_u8TestTimesInInitPhase < DRV8340_u8MaxTestTimesInInitPhaseC)
         {
            DRV8340_u8TestTimesInInitPhase++;

            if(TRUE == bTempRet)
            {
               /* Short faults */
               DRV8340_u8ShortCntInInitPhase++;
            }

            if(DRV8340_u8MaxTestTimesInInitPhaseC == DRV8340_u8TestTimesInInitPhase)
            {
               if(DRV8340_u8ShortCntInInitPhase < DRV8340_u8TestTimesInInitPhase)
               {
                  DRV83xx_vidRestoreCfgRegs();
                  DRV83xx_vidClearFaultStatus();
                  DRV8340_vidTrigWriteReq(DRV8340_MODE_NORMAL);
                  DRV8340_bIsInitDone = TRUE;
               }
               else
               {
                  DRV8340_vidTrigShortTest();
               }
            }
         }
         else
         {
            if(TRUE == bTempRet)
            {
               if(DRV8340_u8ShortCntInInitPhase < DRV8340_u8MaxTestTimesInInitPhaseC)
               {
                  /* Short faults */
                  DRV8340_u8ShortCntInInitPhase++;
               }
            }
            else
            {
               if(DRV8340_u8ShortCntInInitPhase > 0)
               {
                  /* Short faults */
                  DRV8340_u8ShortCntInInitPhase--;
               }
            }

            if(DRV8340_u8ShortCntInInitPhase > DRV8340_u8MaxShortCntInInitPhase)
            {
               DRV8340_u8MaxShortCntInInitPhase = DRV8340_u8ShortCntInInitPhase;
            }

            if(0 == DRV8340_u8ShortCntInInitPhase)
            {
               DRV83xx_vidRestoreCfgRegs();
               DRV83xx_vidClearFaultStatus();
               DRV8340_vidTrigWriteReq(DRV8340_MODE_NORMAL);
               DRV8340_bIsInitDone = TRUE;
            }
            else
            {
               DRV8340_vidTrigShortTest();
            }
         }
      }
      break;

      case DRV8340_MODE_SHORT_DET_IN_RUN_PHASE:
      {
         bTempRet = DRV8340_bGetShortState();

         if(TRUE == bTempRet)
         {
            if(DRV8340_u8ShortCntInRunPhase < DRV8340_u8MaxTestTimesInRunPhaseC)
            {
               /* Short faults */
               DRV8340_u8ShortCntInRunPhase++;
            }
         }
         else
         {
            if(DRV8340_u8ShortCntInRunPhase > 0)
            {
               /* Short faults */
               DRV8340_u8ShortCntInRunPhase--;
            }
         }

         if(0 == DRV8340_u8ShortCntInRunPhase)
         {
            DRV8340_vidJumpToState(DRV8340_MODE_ERR_TRY_CLEAR);
         }
         else
         {
            DRV8340_vidTrigShortTest();
         }
      }
      break;
	  
      case DRV8340_WAIT_PWM_READY:
      {
         //TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
         //bPwmReadySts = TLE9180_bHalPwmIsReady();

         //if(TRUE == bPwmReadySts)
         {
            DRV8340_vidJumpToState(DRV8340_MODE_NORMAL);
         }
      }

      case DRV8340_MODE_NORMAL:
      {
         DRV8340_bIsShutdown = FALSE;
         DRV8340_u16EnaResetThld = DRV8340_ku16EnaResetTimeC;

         if(FALSE == DRV8340_bErrorPinLevel)
         {
            DRV8340_vidJumpToState(DRV8340_MODE_ERR_FOUND);
         }
         else 
         {
            DRV8340_bDrvUnderVoltage = FALSE;
            DRV8340_bDrvOverVoltage  = FALSE;
            DRV8340_bDrvOverCurrent  = FALSE;
            DRV8340_bDrvGateDrvFault = FALSE;
            DRV8340_bDrvOverTemp     = FALSE;
            DRV8340_bPhaseShort      = FALSE;
            DRV8340_bPhaseShortBat   = FALSE;
            DRV8340_bPhaseShortGnd   = FALSE;
            
            if(TRUE == DRV8340_bUserReadReq)
            {
               DRV8340_vidTrigReadReq(DRV8340_MODE_NORMAL);
            }
            else if(TRUE == DRV8340_bUserWriteReq)
            {
               DRV8340_vidTrigWriteReq(DRV8340_MODE_NORMAL);
            }
            else if(DRV8340_u16CfgChkTimer >= DRV8340_CFG_CHECK_PERIOD)
            {
               DRV8340_vidTrigReadReq(DRV8340_MODE_CFG_CHECK);
               DRV8340_u16CfgChkTimer = 0;
            }
            else
            {
               /* Do nothing */
            }
         }
      }
      break;

      case DRV8340_MODE_CFG_CHECK:
      {
         bTempRet = DRV83xx_bCfgIsNormal();
         if(bTempRet)
         {
            DRV8340_vidJumpToState(DRV8340_MODE_NORMAL);
         }
         else
         {
            DRV8340_vidJumpToState(DRV8340_MODE_RECFG);
         }
      }
      break;
      
      case DRV8340_MODE_RECFG:
      {
         DRV83xx_vidRestoreCfgRegs();
         DRV8340_vidTrigWriteReq(DRV8340_MODE_NORMAL);
      }
      break;
      
      case DRV8340_MODE_ERR_FOUND:
      {
         /* Determin if ENA should be reset */
         if(FALSE == DRV8340_bErrorPinLevel)
         {
            if (DRV8340_u16ErrPinChkCnt < DRV8340_ku16ErrPinChkTimC)
            {
               DRV8340_u16ErrPinChkCnt++;
            }
            else
            {
               DRV8340_u16ErrPinChkCnt = 0;
               DRV8340_u16ErrTotalCnt++;

               DRV8340_vidTrigReadReq(DRV8340_MODE_ERR_COUNT);
               if(FALSE == DRV8340_bFaultTIsStart)
               {
                  DRV8340_u16FaultTimer = DRV8340_ku16FaultTimerWindowC;
               }
            }
         }
         else
         {
            DRV8340_u16ErrPinChkCnt = 0;
            DRV8340_vidJumpToState(DRV8340_MODE_NORMAL);
         }
      }
      break;

      case DRV8340_MODE_ERR_COUNT:
      {
         /* if(DRV8340_u8ErrRecoverCnt < DRV8340_ku8ErrRecvMaxNumC) */
         if(1)
         {
            DRV8340_u8ErrRecoverCnt++;
            if(DRV8340_bIsLatched)
            {
               DRV8340_bIsShutdown = TRUE;
               DRV83xx_vidDisableGateDrv();
            }
            DRV8340_vidTrigWriteReq(DRV8340_MODE_START_SHORT_TEST);
         }
         else
         {
            DRV8340_vidJumpToState(DRV8340_MODE_FAULT_STT);
         }
      }
      break;
      
      case DRV8340_MODE_ERR_TRY_CLEAR:
      {
         if (DRV8340_u16EnaResetTime < DRV8340_u16EnaResetThld)
         {
            DRV8340_u16EnaResetTime++;
         }
         else
         {
            /* Fault occurred, Try to clear fault */
            {
               DRV8340_u16EnaResetTime = 0;
               DRV83xx_vidRestoreCfgRegs();
               DRV83xx_vidClearFaultStatus();
               DRV8340_vidTrigWriteReq(DRV8340_MODE_NORMAL);
            }
         }
      }
      break;

      case DRV8340_MODE_ERR_RECOVER:
      case DRV8340_MODE_FAULT_STT:
      case DRV8340_MODE_COM_ONGOING:
      default:
         break;
   }
   
   if(DRV8340_u16FaultTimer > 0)
   {
      DRV8340_u16FaultTimer--;
      if(0 == DRV8340_u16FaultTimer)
      {

      }
   }

   if(DRV8340_MODE_COM_ONGOING == DRV8340_u8Mode)
   {
      boolean bComIsEnd;
      bComIsEnd = DRV8340_bAsyncComMainfunction();
   
      if(bComIsEnd)
      {
         DRV8340_vidJumpToState(DRV8340_u8TgtMode);
         DRV8340_u8TgtMode = DRV8340_MODE_INVALID;
         /* Clear user req */
         DRV8340_bUserReadReq = FALSE;
         DRV8340_bUserWriteReq = FALSE;
      }
   }

   if(DRV8340_u16CfgChkTimer <= DRV8340_CFG_CHECK_PERIOD)
   {
      DRV8340_u16CfgChkTimer++;
   }
   
   bBswReadySts = BSW_bGetBswReadySts();

   if (bBswReadySts)
   {
      //FaultDetection(TCUCAP1_,  UNDERVOLTAGE,  DRV8340_bDrvUnderVoltage);
      //FaultDetection(TCUCAP1_,  OVERVOLTAGE,   DRV8340_bDrvOverVoltage);
      //FaultDetection(TCUCAP1_,  HWOVERCUR,     (boolean)((TRUE == DRV8340_bDrvOverCurrent) || (TRUE == DRV8340_bDrvGateDrvFault) || (TRUE == DRV8340_bDrvOverTemp)));

      /* !Comment: Error pin contain all serious failure mode. */
      //FaultDetection(TCUCAP0_,  BCDRVICERR,   (FALSE == DRV8340_bErrorPinLevel));
      
      //FaultDetection(TCUCAP1_,  FETSHORT,           DRV8340_bPhaseShort);
      //FaultDetection(TCUCAP1_,  PHASEDETECTGND,     DRV8340_bPhaseShortBat);
      //FaultDetection(TCUCAP1_,  PHASEDETECTVCC,     DRV8340_bPhaseShortGnd);
   }
 }

/*****************************************************************************
*
* !Runnable    : DRV8340_bIsWorkModeNormal 
* !Trigger       : 
* !Description : Check whether DRV8340 work in normal mode.
* 
******************************************************************************
* !LastAuthor  : WH
******************************************************************************/
boolean DRV8340_bIsWorkModeNormal(void)
{
   boolean bLocWorkNomal = FALSE;
   
   if(FALSE == DRV8340_bIsShutdown)
   {
      bLocWorkNomal = TRUE;
   }
   else
   {
      bLocWorkNomal = FALSE;
   }

   return bLocWorkNomal;
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************************************************************/
/* !FuncName    : DRV8340_vidInit                                                                                     */
/* !Description : Initialization of the TJA1145 variables and Start of SPI sequences                                  */
/*                                                                                                                    */
/* !LastAuthor  : RY.LIU                                                                                             */
/**********************************************************************************************************************/
static void DRV8340_vidInit(void)
{
   static boolean bQspiIsRunning = FALSE;
   if(FALSE == bQspiIsRunning)
   {
      DRV83xxHAL_u8SpiInit();             // Initialize EVM8343 SPI in slave mode
   }

   DRV83xx_vidControlInit(); // Initialize the computational values for register settings
   DRV83xx_vidRegisterInit();
   DRV83xx_vidDisableGateDrv();
   DRV83xx_vidWriteRegs();
}

static inline void DRV8340_vidJumpToState(uint8 u8State)
{
   DRV8340_u8Mode = u8State;
}

static inline void DRV8340_vidTrigReadReq(uint8 u8TgtState)
{
   DRV8340_u8TgtMode = u8TgtState;
   DRV8340_vidJumpToState(DRV8340_MODE_COM_ONGOING);
   DRV8340_u8AsyncComState = DRV8340_COM_READ_START;
}

static inline void DRV8340_vidTrigWriteReq(uint8 u8TgtState)
{
   DRV8340_u8TgtMode = u8TgtState;
   DRV8340_vidJumpToState(DRV8340_MODE_COM_ONGOING);
   DRV8340_u8AsyncComState = DRV8340_COM_WRITE_START;
}

static inline boolean DRV8340_bAsyncComMainfunction(void)
{
   boolean bComIsEnd = FALSE;

   switch(DRV8340_u8AsyncComState)
   {
      case DRV8340_COM_READ_START:
      {
         DRV83xx_vidReadRegs();
         DRV8340_u8AsyncComState = DRV8340_COM_EXTRACT_READ_DATA;
      }
      break;
      case DRV8340_COM_WRITE_START:
      {
         DRV83xx_vidWriteRegs();
         DRV8340_u8AsyncComState = DRV8340_COM_EXTRACT_WRITE_DATA;
      }
      break;
      case DRV8340_COM_EXTRACT_READ_DATA:
      {
         bComIsEnd = DRV83xxHAL_bIsComEnd();
         if(TRUE == bComIsEnd)
         {
            DRV83xx_vidCacheRestoreFromReg();
            DVR83xx_vidGetFaultRegsVal(&DRV8340_au8FaultRegsVal[0]);
            DRV8340_vidReadFault();
            
            DRV8340_u8AsyncComState = DRV8340_COM_READ_END;
         }
      }
      break;
      case DRV8340_COM_EXTRACT_WRITE_DATA:
      {
         bComIsEnd = DRV83xxHAL_bIsComEnd();
         if(TRUE == bComIsEnd)
         {
            DRV8340_u8AsyncComState = DRV8340_COM_WRITE_END;
         }
      }
      break;
      case DRV8340_COM_READ_END:
      case DRV8340_COM_WRITE_END:
      case DRV8340_COM_IDLE:
      default:
      {
         bComIsEnd = TRUE;
         DRV8340_u8AsyncComState = DRV8340_COM_IDLE;
         break;
      }
   }

   return bComIsEnd;
}

static inline void DRV8340_vidTrigShortTest(void)
{
   /* Trig short test */
   DRV83xx_vidStartShortTest();
   DRV83xx_vidClearFaultStatus();
   DRV8340_vidTrigWriteReq(DRV8340_MODE_READ_TEST_RESULT);
}

static inline void DRV8340_vidEnableGateDrivers(void)
{
   /* Gate Drive Enable */
   // IOHAL_vidWrite_CH_DIO_OUT_M_CLU_ENA(DIO_HAL_ON);
}
static inline void DRV8340_vidDisableGateDrivers(void)
{
   /* Gate Drive Disable */
   // IOHAL_vidWrite_CH_DIO_OUT_M_CLU_ENA(DIO_HAL_OFF);
   /* 6 pwm channels off */
}

static void DRV8340_vidReadFault(void)
{
   boolean bTempRet;

   bTempRet = DRV83xx_FaultFuncSet.bGetAllFaultStatus();
   if(TRUE == bTempRet)
   {
      bTempRet = DRV83xx_FaultFuncSet.bGetOverCurStatus();
      if(TRUE == bTempRet)
      {
         DRV8340_bIsLatched = TRUE;
         DRV8340_bDrvOverCurrent = TRUE;
      }
      bTempRet = DRV83xx_FaultFuncSet.bGetOverTempShutdownStatus();
      if(TRUE == bTempRet)
      {
         DRV8340_bIsLatched = TRUE;
         DRV8340_bDrvOverTemp = TRUE;
      }
      bTempRet = DRV83xx_FaultFuncSet.bGetGateDriverStatus();
      if(TRUE == bTempRet)
      {
         DRV8340_bIsLatched = TRUE;
         DRV8340_bDrvGateDrvFault = TRUE;
      }
      bTempRet = DRV83xx_FaultFuncSet.bGetUVLockoutStatus();
      if(TRUE == bTempRet)
      {
         bTempRet = DRV83xx_FaultFuncSet.bGetChargePumpUVStatus();
         if(TRUE == bTempRet)
         {
            DRV8340_bDrvUnderVoltage = TRUE;
         }
      }
   }
}

static inline boolean DRV8340_bGetShortState(void)
{
   boolean bTempRet;
   boolean bShortA;
   boolean bShortB;
   boolean bShortC;

   bShortA = DRV83xx_FaultFuncSet.bGetPhaseAShortBatStatus();
   bShortB = DRV83xx_FaultFuncSet.bGetPhaseBShortBatStatus();
   bShortC = DRV83xx_FaultFuncSet.bGetPhaseCShortBatStatus();
   if((TRUE == bShortA)
   || (TRUE == bShortB)
   || (TRUE == bShortC))
   {
      DRV8340_bPhaseShortBat = TRUE;
   }
   bShortA = DRV83xx_FaultFuncSet.bGetPhaseAShortGndStatus();
   bShortB = DRV83xx_FaultFuncSet.bGetPhaseBShortGndStatus();
   bShortC = DRV83xx_FaultFuncSet.bGetPhaseCShortGndStatus();
   if((TRUE == bShortA)
   || (TRUE == bShortB)
   || (TRUE == bShortC))
   {
      DRV8340_bPhaseShortGnd = TRUE;
   }
   bTempRet = DRV83xx_FaultFuncSet.bGetOpenLoadOrShortStatus();
   if(TRUE == bTempRet)
   {
      DRV8340_bPhaseShort = TRUE;
   }

   return bTempRet;
}

#define DRV8340_STOP_SEC_CODE
#include "DRV8340_MemMap.h"

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/
