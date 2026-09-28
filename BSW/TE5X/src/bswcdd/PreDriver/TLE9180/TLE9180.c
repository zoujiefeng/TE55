/**********************************************************************************************************************/
/* !Layer               :HAL                                                                                          */
/* !Component     :TJA1145                                                                                            */
/* !Description     : TJA1145 safe supply device management                                                           */
/*                                                                                                                    */
/* !File            : TJA1145.c                                                                                       */
/* !Description     : Send the init frames for TJA1145 configuration                                                  */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/
 
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "iohal.h"
#include "TLE9180.h"
#include "TLE9180_HAL.h"
#include "TLE9180_REG.h"
#include "Fault.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* !Comment: TLE9180 State machine define */
enum{
   TLE9180_MODE_INIT = 0,
   TLE9180_MODE_INIT_CHECK,
   TLE9180_SELF_TEST,
   TLE9180_WAIT_PWM_READY,
   TLE9180_MODE_NORMAL,
   TLE9180_MODE_SAFEOFF,
   TLE9180_MODE_ERR_FOUND,
   TLE9180_MODE_ERR_COUNT,
   TLE9180_MODE_ERR_TRY_CLEAR,
   TLE9180_MODE_ERR_RECOVER,
   TLE9180_MODE_FAULT_STT,
   TLE9180_MODE_REINIT,
   TLE9180_MODE_PRE_REINIT,
   TLE9180_MODE_COM_ONGOING,
   
   TLE9180_MODE_INVALID = 0xFF
};

enum{
   TLE9180_SELFTST_IDLE = 0,
   TLE9180_SELFTST_START,
   TLE9180_SELFTST_CHKMOD,
   TLE9180_SELFTST_SCD_HS,
   TLE9180_SELFTST_SCD_LS,
   TLE9180_SELFTST_VREG_OP,
   TLE9180_SELFTST_FINISH,
   TLE9180_SELFTST_RDMOD
};

enum{
   TLE9180_COM_IDLE = 0,
   TLE9180_COM_START,
   TLE9180_COM_EXTRACT_DATA,
   TLE9180_COM_END
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* !Comment: Read register cycle time: 3*10ms. */
#define TLE9180_RD_REG_CYCLE      (3)
#define TLE9180_u8TX_FRAME_MAX_NB (30)

#define TLE9180_u8READ_COMMAND   0u
#define TLE9180_u8WRITE_COMMAND  1u
#define TLE9180_u8CMD_OFFSET     23u
#define TLE9180_u8ADD_OFFSET     16u
#define TLE9180_u8DAT_OFFSET     8u
#define TLE9180_u8TST_MODE_READ  0u
#define TLE9180_u8TST_MODE_WRITE 1u


/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint16 TLE9180_au16SpiTxFrame[TLE9180_u8TX_FRAME_MAX_NB];
static uint16 TLE9180_au16SpiTxCfgAddr[TLE9180_u8TX_FRAME_MAX_NB];
static uint16 TLE9180_au16SpiTxCfgData[TLE9180_u8TX_FRAME_MAX_NB];
static uint16 TLE9180_au16SpiRxCfgData[TLE9180_u8TX_FRAME_MAX_NB];

static uint8  TLE9180_u8TgtMode;
static uint8  TLE9180_u8ComState;

static CDD_tTransParam TLE9180_xTsParam;

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
#define TLE9180_START_SEC_CODE
#include "TLE9180_MemMap.h"
static void    TLE9180_vidReadCfgRegs(void);
static void    TLE9180_vidGetErrFlagFromSpiBuf(void);
static void    TLE9180_vidReinit(void);
static uint8   TLE9180_CalculateCRC3(uint8 *message, uint8 len);
static uint8   TLE9180_CalculateCRC8(const uint8 * Crc_DataPtr, uint32 Crc_Length);
static uint32  TLE9180_u32CalcReadReg(uint8 u8RegAddr, uint8 u8Data);
static uint32  TLE9180_u32CalcWriteReg(uint8 u8RegAddr, uint8 u8Data);
static boolean TLE9180_bComMainfunction(void);

static inline void TLE9180_vidLoadCfgToRegs(void);
static inline void TLE9180_vidJumpToState(const uint8 ku8State);

static inline void TLE9180_vidTrigCom(const uint8 ku8TgtState);


static inline void TLE9180_vidCalcStateRegs(void);
static void TLE9180_vidSelfTestMng(const uint8 u8SelfTestStep);
static void TLE9180_vidTstReadReg(void);
static void TLE9180_vidTstWriteReg(void);
static void TLE9180_vidReadErrRegs(void);
static void TLE9180_vidGenTransParam(const uint32 * const kpku32SrcBuf, uint32 * const kpu32DestBuf, const uint32 ku32Num);

#define TLE9180_STOP_SEC_CODE
#include "TLE9180_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define TLE9180_START_SEC_CODE
#include "TLE9180_MemMap.h"
/**********************************************************************
 * Function name    :  TLE9180_vidInit
 * Description      :  Initialization of the TJA1145 variables and Start of SPI sequences
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/11/04	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
void TLE9180_vidInit(void)
{
   TLE9180_u8ReCfgCnt       = 0;
   TLE9180_u8RdRegTimCnt    = 0;
   TLE9180_u8ReadRegAddr    = 0;
   TLE9180_u8WriteRegAddr   = 0;
   TLE9180_u8ErrRecoverCnt  = 0;
   TLE9180_u8InitFailedCnt  = 0;
   TLE9180_u16ErrPinChkCnt  = 0;
   TLE9180_u16EnaResetTime  = 0;
   TLE9180_bTestReadReg     = FALSE;
   TLE9180_bTestWriteReg    = FALSE;
   TLE9180_bPhaseShortLow   = FALSE;
   TLE9180_bPhaseShortHigh  = FALSE;
   TLE9180_bDrvOverCurrent  = FALSE;
   TLE9180_bDrvOverVoltage  = FALSE;
   TLE9180_bDrvUnderVoltage = FALSE;
   TLE9180_bDrvOverTemp     = FALSE;
   TLE9180_bReadErrInfoFlg  = FALSE;
   TLE9180_bInitFailFlg     = FALSE;
   TLE9180_bErrorPinLevel   = FALSE;
   TLE9180_bPhsOverVolt     = FALSE;
   TLE9180_bIsInIdleMode    = FALSE;
   TLE9180_bIsInCfgLockMode = FALSE;
   TLE9180_u8Mode           = TLE9180_MODE_INIT;
   TLE9180_u8SelfTestStep   = TLE9180_SELFTST_IDLE;

   TLE9180_vidHalSpiInit();
   
   TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_HIGH);
   TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_HIGH);
   TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
   
   TLE9180_vidLoadCfgToRegs();
   TLE9180_vidCalcStateRegs();

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_u8Mode);
}

void TLE9180_vidMainFunction(void)
{
   uint8 u8LocIdx;
   boolean bTcuReadySts;
   boolean bPwmReadySts;
   
   bTcuReadySts = TLE9180_bHalSysIsReady();
   TLE9180_bErrorPinLevel = TLE9180_bHalICIsNormal();

   switch(TLE9180_u8Mode)
   {
      case TLE9180_MODE_INIT:
      {
         /* !Comment: Set TLE9180 control IO. */
         TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
         
         TLE9180_vidReadCfgRegs();
         break;
      }

      case TLE9180_MODE_INIT_CHECK:
      {
         TLE9180_bInitFailFlg = FALSE;
         
         for(u8LocIdx = 0; u8LocIdx < (TLE9180_u8SpiTxFrameMaxNb - 1); u8LocIdx++)
         {
            TLE9180_au8CfgRegReadBk[u8LocIdx] = (uint8)((TLE9180_au32SpiReadFrame[u8LocIdx + 1] >> 4) & 0x000000FF);

            if (TLE9180_au8CfgRegReadBk[u8LocIdx] != TLE9180_au8CfgRegister[u8LocIdx])
            {
               TLE9180_bInitFailFlg = TRUE;
               break;
            }
         }

         /* !Comment: If initialization failed, enter error mode. */
         if(TLE9180_bInitFailFlg)
         {
            if(TLE9180_u8InitFailedCnt < TLE9180_ku8MaxInitTimeC)
            {
               TLE9180_u8InitFailedCnt++;
               TLE9180_vidJumpToState(TLE9180_MODE_REINIT);
               
               TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_LOW);
               TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_LOW);
               TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
            }
            else
            {
               TLE9180_vidJumpToState(TLE9180_WAIT_PWM_READY);
            }
         }
         else
         {
            TLE9180_vidJumpToState(TLE9180_WAIT_PWM_READY);
         }
         break;
      }

      case TLE9180_MODE_PRE_REINIT:
      {
         TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidJumpToState(TLE9180_MODE_REINIT);

         if((TRUE == TLE9180_bIsInIdleMode)
         || (TRUE == TLE9180_bIsInCfgLockMode))
         {
            TLE9180_bIsModeReq       = TRUE;
            TLE9180_bIsInIdleMode    = FALSE;
            TLE9180_bIsInCfgLockMode = FALSE;
         }
         break;
      }

      case TLE9180_MODE_REINIT:
      {
         TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_HIGH);

         TLE9180_vidReinit();
         break;
      }

      case TLE9180_SELF_TEST:
      {
         TLE9180_u8SelfTestStep++;
         if (TLE9180_u8SelfTestStep <= TLE9180_SELFTST_RDMOD)
         {
            TLE9180_vidSelfTestMng(TLE9180_u8SelfTestStep);
         }
         else
         {
            TLE9180_u8SelfTestStep = TLE9180_SELFTST_IDLE;
            TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         }
         break;
      }
      
      case TLE9180_WAIT_PWM_READY:
      {
         TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
         bPwmReadySts = TLE9180_bHalPwmIsReady();

         if(TRUE == bPwmReadySts)
         {
            TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         }
      }

      case TLE9180_MODE_NORMAL:
      {
         TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_HIGH);
         
         if(FALSE == TLE9180_bErrorPinLevel)
         {
            TLE9180_u8RdRegTimCnt = 0;
            TLE9180_vidJumpToState(TLE9180_MODE_ERR_FOUND);
         }
         else
         {
            TLE9180_bDrvOverCurrent  = FALSE;
            TLE9180_bDrvOverTemp     = FALSE;
            TLE9180_bDrvOverVoltage  = FALSE;
            TLE9180_bDrvUnderVoltage = FALSE;
            TLE9180_bPhaseShortHigh  = FALSE;
            TLE9180_bPhaseShortLow   = FALSE;
            TLE9180_bPhsOverVolt     = FALSE;
         
            if(TLE9180_bTestWriteReg)
            {
               TLE9180_vidTstWriteReg();
            }
            else if(TLE9180_bTestReadReg)
            {
               TLE9180_vidTstReadReg();
            }
            else
            {
               
            }
         }
         break;
      }

      case TLE9180_MODE_SAFEOFF:
      {
         /* !Comment: Keep ENA ON, just set SOFF OFF to shutdown 6 MOSFETs output. */
         TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
         break;
      }
      
      case TLE9180_MODE_ERR_FOUND:
      {
         /* Determin if ENA should be reset */
         if(FALSE == TLE9180_bErrorPinLevel)
         {
            if (TLE9180_u16ErrPinChkCnt < TLE9180_ku16ErrPinChkTimC)
            {
               TLE9180_u16ErrPinChkCnt++;
            }
            else
            {
               TLE9180_u16ErrPinChkCnt = 0;
               TLE9180_vidReadErrRegs();
            }
         }
         else
         {
            TLE9180_u16ErrPinChkCnt = 0;
            TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         }
         break;
      }

      case TLE9180_MODE_ERR_COUNT:
      {
         TLE9180_vidGetErrFlagFromSpiBuf();
         if(1) /* (TLE9180_u8ErrRecoverCnt < TLE9180_ku8ErrRecvMaxNumC) */
         {
            TLE9180_u8ErrRecoverCnt++;
            TLE9180_vidJumpToState(TLE9180_MODE_ERR_TRY_CLEAR);
         }
         else
         {
            TLE9180_vidJumpToState(TLE9180_MODE_FAULT_STT);
         }
         break;
      }
      
      case TLE9180_MODE_ERR_TRY_CLEAR:
      {
         if (TLE9180_u16EnaResetTime < TLE9180_ku16EnaResetTimeC)
         {
            TLE9180_u16EnaResetTime++;
            TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_LOW);
         }
         else
         { 
            /* !Comment: Check if ERR pin is level high */
            if(TRUE == TLE9180_bErrorPinLevel)
            {
               TLE9180_u16EnaResetTime = 0;
               TLE9180_vidJumpToState(TLE9180_MODE_ERR_RECOVER);
            }
         }
         break;
      }

      case TLE9180_MODE_ERR_RECOVER:
      {
         /* !Comment: Pull up ENA pin */
         TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_HIGH);
        
         TLE9180_u16EnaResetTime = 0;
         TLE9180_u16ErrPinChkCnt = 0;
        
         TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         break;
      }

      case TLE9180_MODE_FAULT_STT:
      {
         TLE9180_vidHalWriteEnaPin(TLE9180_HAL_PIN_LOW);
         TLE9180_vidHalWriteSoffPin(TLE9180_HAL_PIN_LOW);
         break;
      }
      
      default:
         break;
   }

   if(TLE9180_MODE_COM_ONGOING == TLE9180_u8Mode)
   {
      boolean bComIsEnd;
      bComIsEnd = TLE9180_bComMainfunction();
   
      if(bComIsEnd)
      {
         TLE9180_vidJumpToState(TLE9180_u8TgtMode);
         TLE9180_u8TgtMode = TLE9180_MODE_INVALID;
         /* Clear test req */
         TLE9180_bTestReadReg  = FALSE;
         TLE9180_bTestWriteReg = FALSE;
      }
   }

   if (TLE9180_SELF_TEST == TLE9180_u8Mode)
   {
      if(0 == TLE9180_bErrorPinLevel)
      {
         //FaultDetection(TCUCAP0_,   BCDRVICERR,     TRUE);
      }
      else
      {
         //FaultDetection(TCUCAP0_,   BCDRVICERR,     FALSE);
      }
   }
   else
   {
      if((TRUE == TLE9180_bIsInIdleMode)
      || (TRUE == TLE9180_bIsInCfgLockMode))
      {
         if(TLE9180_u8ReCfgCnt < TLE9180_ku8MaxReCfgTimeC)
         {
            boolean bBatIsNormal;
            bBatIsNormal = TLE9180_bHalBatIsNormal();
            
            if(TRUE == bBatIsNormal)
            {
               TLE9180_u8ReCfgCnt++;
               TLE9180_vidJumpToState(TLE9180_MODE_PRE_REINIT);
               TLE9180_vidHalWriteInhPin(TLE9180_HAL_PIN_LOW);
            }
         }
      }

      if(bTcuReadySts)
      {
         //FaultDetection(TCUCAP1_,  UNDERVOLTAGE,  (TLE9180_bDrvUnderVoltage));
         //FaultDetection(TCUCAP1_,  OVERVOLTAGE,   (TLE9180_bDrvOverVoltage));
         //FaultDetection(TCUCAP1_,  HWOVERCUR,     ((TRUE == TLE9180_bDrvOverCurrent) || (TRUE == TLE9180_bDrvOverTemp)));

         /* !Comment: Error pin contain all serious failure mode. */
         if(FALSE == TLE9180_bErrorPinLevel)
         {
            //FaultDetection(TCUCAP0_,   BCDRVICERR,     TRUE);
         }
         else
         {
            //FaultDetection(TCUCAP0_,   BCDRVICERR,     FALSE);
         }

         if((TRUE == TLE9180_bPhaseShortHigh)
         || (TRUE == TLE9180_bPhaseShortLow))
         {
            //FaultDetection(TCUCAP1_,   FETSHORT, TRUE);
         }
         else
         {
            //FaultDetection(TCUCAP1_,   FETSHORT, FALSE);
         }
      }
   }
}

/*****************************************************************************
*
* !Runnable    : TLE9180_bIsWorkModeNormal 
* !Trigger       : 
* !Description : Check whether TLE9180 work in normal mode.
* 
******************************************************************************
* !LastAuthor  : WH
******************************************************************************/
boolean TLE9180_bIsWorkModeNormal(void)
{
   boolean bLocWorkNomal;
   
   if(TLE9180_MODE_NORMAL == TLE9180_u8Mode)
   {
      bLocWorkNomal = TRUE;
   }
   else
   {
      bLocWorkNomal = FALSE;
   }

   return bLocWorkNomal;
}
#define TLE9180_STOP_SEC_CODE
#include "TLE9180_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
#define TLE9180_START_SEC_CODE
#include "TLE9180_MemMap.h"
static inline void TLE9180_vidJumpToState(const uint8 ku8State)
{
   TLE9180_u8Mode = ku8State;
}

static void TLE9180_vidGetErrFlagFromSpiBuf(void)
{
   uint8 LoccalIndex;
   
   for(LoccalIndex = 0; LoccalIndex <= 19; LoccalIndex++)
   {
      TLE9180_au8ReadRegs[LoccalIndex] = (TLE9180_au32ErrRegsReadFrame[LoccalIndex + 1] >> 4) & 0x000000FF; 
   }

   /* Reg 0x40, Operation mode overview |xxxxx|Lock Bit|x|Idle Bit| */
   if((TLE9180_au8ReadRegs[0] & TLE9180_IDLE_MODE_BIT_MASK) != 0)
   {
      TLE9180_bIsInIdleMode           = TRUE;
      TLE9180_bIsInCfgLockMode        = FALSE;
      TLE9180_au32ErrRegsReadFrame[1] = 0x00;
   }
   else if((TLE9180_au8ReadRegs[0] & TLE9180_CFG_LOCK_MODE_BIT_MASK) != 0)
   {
      TLE9180_bIsInIdleMode           = FALSE;
      TLE9180_bIsInCfgLockMode        = TRUE;
      TLE9180_au32ErrRegsReadFrame[1] = 0x00;
   }
   else
   {
      TLE9180_bIsInIdleMode    = FALSE;
      TLE9180_bIsInCfgLockMode = FALSE;
   }

   /* Reg 0x44, high side buffer capacitor over voltage.  */
   if((TLE9180_au8ReadRegs[4] & 0xE0) != 0 )
   {
      TLE9180_bPhsOverVolt = TRUE;
   }
   else
   {
      TLE9180_bPhsOverVolt = FALSE;
   }
   
   /* Reg 0x46, over voltage shutdown or Reg 0x45 over voltage */
   if(((TLE9180_au8ReadRegs[6] & 0x60) != 0) || ((TLE9180_au8ReadRegs[5] & 0x05) != 0)) 
   {
      TLE9180_bDrvOverVoltage = TRUE;
   }
   else
   {
      TLE9180_bDrvOverVoltage = FALSE;
   }
   
   /* Reg 0x46, under voltage shutdown or Reg 0x45 under voltage */
   if(((TLE9180_au8ReadRegs[6] & 0x10) != 0) || ((TLE9180_au8ReadRegs[5] & 0x1A) != 0)) 
   {
      TLE9180_bDrvUnderVoltage = TRUE;
   }
   else
   {
      TLE9180_bDrvUnderVoltage = FALSE;
   }
   
   /* Reg 0x46, over temp flag */
   if((TLE9180_au8ReadRegs[6] & 0x80) != 0)
   {
      TLE9180_bDrvOverTemp = TRUE;
   }
   else
   {
      TLE9180_bDrvOverTemp = FALSE;
   }
   
    /* Reg 0x47, short circuit flag */
   if((TLE9180_au8ReadRegs[7] & 0xE0) != 0)
   {
      TLE9180_bPhaseShortHigh = TRUE;
   }
   else
   {
      TLE9180_bPhaseShortHigh = FALSE;
   }
   
   /* Reg 0x47, short circuit flag */
   if((TLE9180_au8ReadRegs[7] & 0x1C) != 0)
   {
      TLE9180_bPhaseShortLow = TRUE;
   }
   else
   {
      TLE9180_bPhaseShortLow = FALSE;
   }
   
   /* Reg 0x4B, over current flags */
   if((TLE9180_au8ReadRegs[11] & 0x11) != 0)
   {
      TLE9180_bDrvOverCurrent = TRUE;
   }
   else
   {
      TLE9180_bDrvOverCurrent = FALSE;
   }
}

/**********************************************************************************************************************/
/* !FuncName    : TLE9180_vidReinit                                                                                     */
/* !Description : Initialization of the TJA1145 variables and Start of SPI sequences                                  */
/*                                                                                                                    */
/* !LastAuthor  : RY.LIU                                                                                             */
/**********************************************************************************************************************/
static void TLE9180_vidReinit(void)
{
   uint8 u8Signature = 0;
   uint8 u8CopyIndex;

   TLE9180_u8SpiTxFrameMaxNb = 21;
   
   for(u8CopyIndex = 0; u8CopyIndex < TLE9180_u8SpiTxFrameMaxNb; u8CopyIndex++)
   {
      TLE9180_au32SpiWriteFrame[u8CopyIndex] = TLE9180_au32ICInitSpiFrame[u8CopyIndex];
   }

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   
   if(TRUE == TLE9180_bIsModeReq)
   {
      TLE9180_bIsModeReq = FALSE;
      TLE9180_vidTrigCom(TLE9180_MODE_NORMAL);
   }
   else
   {
      /* Init failed */
      TLE9180_vidTrigCom(TLE9180_MODE_INIT);
   }
}

static inline void TLE9180_vidLoadCfgToRegs(void)
{
   uint8 u8Signature;
   uint8 u8CopyIndex;
   
   /* Load default values */
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_SIG]  = 0xBA;
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN1] = 0x80;
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN2] = 0x03;
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN3] = 0x1C;
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_WWD]  = 0x56;
   TLE9180_au8CfgRegister[TLE9180_REG_TL_VS]     = 0x07;
   TLE9180_au8CfgRegister[TLE9180_REG_TL_VDH]    = 0xA0;
   TLE9180_au8CfgRegister[TLE9180_REG_TL_CBVCC]  = 0x95;
   TLE9180_au8CfgRegister[TLE9180_REG_FM1]       = 0x30;
   TLE9180_au8CfgRegister[TLE9180_REG_FM2]       = 0x70;
   TLE9180_au8CfgRegister[TLE9180_REG_FM3]       = 0x10;
   TLE9180_au8CfgRegister[TLE9180_REG_FM4]       = 0x20;
   TLE9180_au8CfgRegister[TLE9180_REG_FM5]       = 0x60;
   TLE9180_au8CfgRegister[TLE9180_REG_DT_HS]     = 0x0E;
   TLE9180_au8CfgRegister[TLE9180_REG_DT_LS]     = 0x0E;
   TLE9180_au8CfgRegister[TLE9180_REG_FT1]       = 0x85;
   TLE9180_au8CfgRegister[TLE9180_REG_FT2]       = 0x50;
   TLE9180_au8CfgRegister[TLE9180_REG_FT3]       = 0x0E;
   TLE9180_au8CfgRegister[TLE9180_REG_FT4]       = 0x02;
   TLE9180_au8CfgRegister[TLE9180_REG_FM6]       = 0x00;
   
   /* Modified values and signature */
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN1] = 0x41; /* overtemp 150deg, 5V selected as VCC supply voltage */
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN2] = 0x01; /* Enable current sense amplifier 1 only */
   TLE9180_au8CfgRegister[TLE9180_REG_TL_VS]     = 0x38; /* VS overvoltage set to 28V, undervoltage 7.32V; 0x34 UV 6.10V */
   TLE9180_au8CfgRegister[TLE9180_REG_TL_VDH]    = 0x34;
   TLE9180_au8CfgRegister[TLE9180_REG_TL_CBVCC]  = 0x9A; /* tl_uv_cb set 9.07V. */
   TLE9180_au8CfgRegister[TLE9180_REG_FM1]       = 0xB2;
   TLE9180_au8CfgRegister[TLE9180_REG_FM2]       = 0x72;
   TLE9180_au8CfgRegister[TLE9180_REG_FM3]       = 0x2A;
   TLE9180_au8CfgRegister[TLE9180_REG_FM4]       = 0x4A;
   TLE9180_au8CfgRegister[TLE9180_REG_FT1]       = 0xBF;
   TLE9180_au8CfgRegister[TLE9180_REG_FT2]       = 0xFF;
   TLE9180_au8CfgRegister[TLE9180_REG_FM6]       = 0x03; /* Current Sense Amplifier 1 Overcurrent Failure Behavior: LE*/
   
   u8Signature = TLE9180_CalculateCRC8((&TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN1]), 19);
   TLE9180_au8CfgRegister[TLE9180_REG_CONF_SIG] = u8Signature;
   
   TLE9180_au32SpiWriteFrame[0]  = TLE9180_u32CalcWriteReg(TLE9180_REG_CONF_GEN1,TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN1]);
   TLE9180_au32SpiWriteFrame[1]  = TLE9180_u32CalcWriteReg(TLE9180_REG_CONF_GEN2,TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN2]);
   TLE9180_au32SpiWriteFrame[2]  = TLE9180_u32CalcWriteReg(TLE9180_REG_TL_VS,TLE9180_au8CfgRegister[TLE9180_REG_TL_VS]);
   TLE9180_au32SpiWriteFrame[3]  = TLE9180_u32CalcWriteReg(TLE9180_REG_TL_VDH,TLE9180_au8CfgRegister[TLE9180_REG_TL_VDH]);
   TLE9180_au32SpiWriteFrame[4]  = TLE9180_u32CalcWriteReg(TLE9180_REG_TL_CBVCC,TLE9180_au8CfgRegister[TLE9180_REG_TL_CBVCC]);
   TLE9180_au32SpiWriteFrame[5]  = TLE9180_u32CalcWriteReg(TLE9180_REG_FM1,TLE9180_au8CfgRegister[TLE9180_REG_FM1]);
   TLE9180_au32SpiWriteFrame[6]  = TLE9180_u32CalcWriteReg(TLE9180_REG_FM2,TLE9180_au8CfgRegister[TLE9180_REG_FM2]);
   TLE9180_au32SpiWriteFrame[7]  = TLE9180_u32CalcWriteReg(TLE9180_REG_FM3,TLE9180_au8CfgRegister[TLE9180_REG_FM3]);
   TLE9180_au32SpiWriteFrame[8]  = TLE9180_u32CalcWriteReg(TLE9180_REG_FM4,TLE9180_au8CfgRegister[TLE9180_REG_FM4]);
   TLE9180_au32SpiWriteFrame[9]  = TLE9180_u32CalcWriteReg(TLE9180_REG_FT1,TLE9180_au8CfgRegister[TLE9180_REG_FT1]);
   TLE9180_au32SpiWriteFrame[10] = TLE9180_u32CalcWriteReg(TLE9180_REG_FT2,TLE9180_au8CfgRegister[TLE9180_REG_FT2]);
   TLE9180_au32SpiWriteFrame[11] = TLE9180_u32CalcWriteReg(TLE9180_REG_FM6,TLE9180_au8CfgRegister[TLE9180_REG_FM6]);
   
   TLE9180_au32SpiWriteFrame[12] = TLE9180_u32CalcWriteReg(TLE9180_REG_OP_GAIN1,0x00); /* Current Sense Amplifier 1/2 - Gain 1 = 15.71 */
   TLE9180_au32SpiWriteFrame[13] = TLE9180_u32CalcWriteReg(TLE9180_REG_OP_GAIN2,0x00); /* Current Sense Amplifier 1/2 - Gain 2 = 15.71 */
   TLE9180_au32SpiWriteFrame[14] = TLE9180_u32CalcWriteReg(TLE9180_REG_SC_LS1,0x7E); /* 1.472 V - Maximum SCDL */
   TLE9180_au32SpiWriteFrame[15] = TLE9180_u32CalcWriteReg(TLE9180_REG_SC_LS2,0x7E); /* 1.472 V - Maximum SCDL */
   TLE9180_au32SpiWriteFrame[16] = TLE9180_u32CalcWriteReg(TLE9180_REG_SC_LS3,0x7E); /* 1.472 V - Maximum SCDL */
   TLE9180_au32SpiWriteFrame[17] = TLE9180_u32CalcWriteReg(TLE9180_REG_SC_HS1,0x7E); /* 1.472 V - Maximum SCDH */
   TLE9180_au32SpiWriteFrame[18] = TLE9180_u32CalcWriteReg(TLE9180_REG_SC_HS2,0x7E); /* 1.472 V - Maximum SCDH */
   TLE9180_au32SpiWriteFrame[19] = TLE9180_u32CalcWriteReg(TLE9180_REG_SC_HS3,0x7E); /* 1.472 V - Maximum SCDH */
   TLE9180_au32SpiWriteFrame[20] = TLE9180_u32CalcWriteReg(TLE9180_REG_CONF_SIG,u8Signature);

   TLE9180_u8SpiTxFrameMaxNb = 21;
   
   for(u8CopyIndex = 0; u8CopyIndex < TLE9180_u8SpiTxFrameMaxNb; u8CopyIndex++)
   {
      TLE9180_au32ICInitSpiFrame[u8CopyIndex] = TLE9180_au32SpiWriteFrame[u8CopyIndex];
   }
}

static inline void TLE9180_vidCalcStateRegs(void)
{
   TLE9180_au32StateRegs[0]  = TLE9180_u32CalcReadReg(TLE9180_REG_OM_OVER,    0);
   TLE9180_au32StateRegs[1]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_OVER,   0);
   TLE9180_au32StateRegs[2]  = TLE9180_u32CalcReadReg(TLE9180_REG_SER,        0);
   TLE9180_au32StateRegs[3]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_I1,     0);
   TLE9180_au32StateRegs[4]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_I2,     0);
   TLE9180_au32StateRegs[5]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_E,      0);
   TLE9180_au32StateRegs[6]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_SD,     0);
   TLE9180_au32StateRegs[7]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_SCD,    0);
   TLE9180_au32StateRegs[8]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_INDIAG, 0);
   TLE9180_au32StateRegs[9]  = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_OSF,    0);
   TLE9180_au32StateRegs[10] = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_SPICFG, 0);
   TLE9180_au32StateRegs[11] = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_OP12,   0);
   TLE9180_au32StateRegs[12] = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_OP3,    0);
   TLE9180_au32StateRegs[13] = TLE9180_u32CalcReadReg(TLE9180_REG_ERR_OUTP,   0);
   TLE9180_au32StateRegs[14] = TLE9180_u32CalcReadReg(TLE9180_REG_TEMP_LS1,   0);
   TLE9180_au32StateRegs[15] = TLE9180_u32CalcReadReg(TLE9180_REG_TEMP_LS2,   0);
   TLE9180_au32StateRegs[16] = TLE9180_u32CalcReadReg(TLE9180_REG_TEMP_LS3,   0);
   TLE9180_au32StateRegs[17] = TLE9180_u32CalcReadReg(TLE9180_REG_TEMP_HS1,   0);
   TLE9180_au32StateRegs[18] = TLE9180_u32CalcReadReg(TLE9180_REG_TEMP_HS2,   0);
   TLE9180_au32StateRegs[19] = TLE9180_u32CalcReadReg(TLE9180_REG_TEMP_HS3,   0);
    /* Dummy read */
   TLE9180_au32StateRegs[20] = TLE9180_u32CalcReadReg(TLE9180_REG_NOP,        0);
}

/**********************************************************************************************************************/
/* !FuncName    : TLE9180_vidReadCfgRegs                                                                                    */
/* !Description : Read configuration registers value, for initilization check.                 */
/*                                                                                                                    */
/* !LastAuthor  : Daniel                                                                                             */
/**********************************************************************************************************************/
static void TLE9180_vidReadCfgRegs(void)
{
   TLE9180_u8SpiTxFrameMaxNb     = 21;
   
   TLE9180_au32SpiWriteFrame[0]  = TLE9180_u32CalcReadReg(TLE9180_REG_CONF_SIG,  0);
   TLE9180_au32SpiWriteFrame[1]  = TLE9180_u32CalcReadReg(TLE9180_REG_CONF_GEN1, 0);
   TLE9180_au32SpiWriteFrame[2]  = TLE9180_u32CalcReadReg(TLE9180_REG_CONF_GEN2, 0);
   TLE9180_au32SpiWriteFrame[3]  = TLE9180_u32CalcReadReg(TLE9180_REG_CONF_GEN3, 0);
   TLE9180_au32SpiWriteFrame[4]  = TLE9180_u32CalcReadReg(TLE9180_REG_CONF_WWD,  0);
   TLE9180_au32SpiWriteFrame[5]  = TLE9180_u32CalcReadReg(TLE9180_REG_TL_VS,     0);
   TLE9180_au32SpiWriteFrame[6]  = TLE9180_u32CalcReadReg(TLE9180_REG_TL_VDH,    0);
   TLE9180_au32SpiWriteFrame[7]  = TLE9180_u32CalcReadReg(TLE9180_REG_TL_CBVCC,  0);
   TLE9180_au32SpiWriteFrame[8]  = TLE9180_u32CalcReadReg(TLE9180_REG_FM1,       0);
   TLE9180_au32SpiWriteFrame[9]  = TLE9180_u32CalcReadReg(TLE9180_REG_FM2,       0);
   TLE9180_au32SpiWriteFrame[10] = TLE9180_u32CalcReadReg(TLE9180_REG_FM3,       0);
   TLE9180_au32SpiWriteFrame[11] = TLE9180_u32CalcReadReg(TLE9180_REG_FM4,       0);
   TLE9180_au32SpiWriteFrame[12] = TLE9180_u32CalcReadReg(TLE9180_REG_FM5,       0);
   TLE9180_au32SpiWriteFrame[13] = TLE9180_u32CalcReadReg(TLE9180_REG_DT_HS,     0);
   TLE9180_au32SpiWriteFrame[14] = TLE9180_u32CalcReadReg(TLE9180_REG_DT_LS,     0);
   TLE9180_au32SpiWriteFrame[15] = TLE9180_u32CalcReadReg(TLE9180_REG_FT1,       0);
   TLE9180_au32SpiWriteFrame[16] = TLE9180_u32CalcReadReg(TLE9180_REG_FT2,       0);
   TLE9180_au32SpiWriteFrame[17] = TLE9180_u32CalcReadReg(TLE9180_REG_FT3,       0);
   TLE9180_au32SpiWriteFrame[18] = TLE9180_u32CalcReadReg(TLE9180_REG_FT4,       0);
   TLE9180_au32SpiWriteFrame[19] = TLE9180_u32CalcReadReg(TLE9180_REG_FM6,       0);
    /* Dummy read */
   TLE9180_au32SpiWriteFrame[20] = TLE9180_u32CalcReadReg(TLE9180_REG_NOP,       0);

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_MODE_INIT_CHECK);
}


/**********************************************************************************************************************/
/* !FuncName    : TLE9180_vidSelfTestMng                                                                                    */
/* !Description : self-test sequence management.                */
/*                                                                                                                    */
/* !LastAuthor  : Daniel                                                                                             */
/**********************************************************************************************************************/
static void TLE9180_vidSelfTestMng(const uint8 u8SelfTestStep)
{
   boolean bLocSendFlg = FALSE;
   
   switch (u8SelfTestStep)
   {
      case TLE9180_SELFTST_IDLE:
      {
         bLocSendFlg = FALSE;
      }
      break;

      case TLE9180_SELFTST_START:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x37, 0x12);
         TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcWriteReg(0x37, 0x04);
         TLE9180_au32SpiWriteFrame[2] = TLE9180_u32CalcWriteReg(0x37, 0x01);
         TLE9180_u8SpiTxFrameMaxNb = 3;
         bLocSendFlg = TRUE;
      }
      break;

      case TLE9180_SELFTST_CHKMOD:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(0x40, 0);
         TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(TLE9180_REG_NOP, 0); 
         TLE9180_u8SpiTxFrameMaxNb = 2;
         bLocSendFlg = TRUE;
      }
      break;

      case TLE9180_SELFTST_SCD_HS:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x35, 0x40);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = TRUE;
      }
      break;

      case TLE9180_SELFTST_SCD_LS:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x35, 0x20);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = TRUE;
      }
      break;

      /* !Comment: Supply voltage measurement of current sense amplifiers and reference buffer. */
      case TLE9180_SELFTST_VREG_OP:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x36, 0x01);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = TRUE;
      }
      break;

      case TLE9180_SELFTST_FINISH:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x37, 0x80);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = TRUE;
      }
      break;

      case TLE9180_SELFTST_RDMOD:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(0x40, 0);
         TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(TLE9180_REG_NOP, 0); 
         TLE9180_u8SpiTxFrameMaxNb = 2;
         bLocSendFlg = TRUE;
      }
      break;

      default:
      {
         bLocSendFlg = FALSE;
      }
      break;
   }

   if (bLocSendFlg)
   {
      TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
      TLE9180_vidTrigCom(TLE9180_u8Mode);
   }
}

static void TLE9180_vidTstReadReg(void)
{
   TLE9180_u8SpiTxFrameMaxNb    = 2;
   TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(TLE9180_u8ReadRegAddr,0);
   TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(TLE9180_REG_NOP,0); //Dummy read
   
   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiTstReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_u8Mode);
}

static void TLE9180_vidTstWriteReg(void)
{
   uint8 u8Signature;
      
   if((TLE9180_u8WriteRegAddr >= TLE9180_REG_CONF_GEN1) && (TLE9180_u8WriteRegAddr <= TLE9180_REG_FM6))
   {
      TLE9180_au8CfgRegister[TLE9180_u8WriteRegAddr] = TLE9180_u8WriteData;
      u8Signature = TLE9180_CalculateCRC8((&TLE9180_au8CfgRegister[TLE9180_REG_CONF_GEN1]), 19);
      
      TLE9180_u8SpiTxFrameMaxNb    = 2;
      TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(TLE9180_u8WriteRegAddr, TLE9180_u8WriteData);
      TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcWriteReg(TLE9180_REG_CONF_SIG, u8Signature);
   }
   else
   {
      TLE9180_u8SpiTxFrameMaxNb    = 1;
      TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(TLE9180_u8WriteRegAddr, TLE9180_u8WriteData);
   }

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiTstWriteFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_u8Mode);
}

static void TLE9180_vidReadErrRegs(void)
{
   uint8 i;

   TLE9180_u8SpiTxFrameMaxNb = 21;

   for(i = 0; i < TLE9180_u8SpiTxFrameMaxNb; i++)
   {
      TLE9180_au32SpiWriteFrame[i] = TLE9180_au32StateRegs[i];
   }
   
   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32ErrRegsReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_MODE_ERR_COUNT);
}

static boolean TLE9180_bComMainfunction(void)
{
   boolean bComIsEnd = FALSE;

   switch(TLE9180_u8ComState)
   {
      case TLE9180_COM_START:
      {
         TLE9180_bHalSpiWrite(&TLE9180_xTsParam);
         
         bComIsEnd = TLE9180_bHalIsComEnd(&TLE9180_xTsParam);
         if(TRUE == bComIsEnd)
         {
            TLE9180_u8ComState = TLE9180_COM_IDLE;
         }
         else
         {
            TLE9180_u8ComState = TLE9180_COM_END;
         }
         break;
      }
      case TLE9180_COM_END:
      {
         bComIsEnd = TLE9180_bHalIsComEnd(&TLE9180_xTsParam);
         if(TRUE == bComIsEnd)
         {
            TLE9180_u8ComState = TLE9180_COM_IDLE;
         }
         break;
      }
      case TLE9180_COM_IDLE:
      default:
      {
         bComIsEnd = TRUE;
         TLE9180_u8ComState = TLE9180_COM_IDLE;
         break;
      }
   }

   return bComIsEnd;
}

static inline void TLE9180_vidTrigCom(const uint8 ku8TgtState)
{
   TLE9180_u8TgtMode  = ku8TgtState;
   TLE9180_u8ComState = TLE9180_COM_START;
   TLE9180_vidJumpToState(TLE9180_MODE_COM_ONGOING);
}

static void TLE9180_vidGenTransParam(const uint32 * const kpku32SrcBuf, uint32 * const kpu32DestBuf, const uint32 ku32Num)
{
   TLE9180_xTsParam.u32TransLen     = 0;
   TLE9180_xTsParam.u32TotalLen     = ku32Num;
   TLE9180_xTsParam.uSrcPtr.u32Ptr  = kpku32SrcBuf;
   TLE9180_xTsParam.uDestPtr.u32Ptr = kpu32DestBuf;
}

/**********************************************************************************************************************/
/*                                                                                                                    */
/* !FuncName    : TLE9180_u32CalcReadReg                                                                              */
/*                                                                                                                    */
/* !Description :   Calculate the register value of the read operation                                                */
/*                                                                                                                    */
/* !LastAuthor  : Y.HUANG                                                                                             */
/**********************************************************************************************************************/
static uint32 TLE9180_u32CalcReadReg(uint8 u8RegAddr, uint8 u8Data)
{
   uint8 crc = 0;
   uint8 crcinput[3];
   uint32  u32LocData = 0;
   
   u32LocData |= (uint32)(TLE9180_u8READ_COMMAND << TLE9180_u8CMD_OFFSET);
   u32LocData |= (uint32)((uint32)(u8RegAddr & 0x7F) << TLE9180_u8ADD_OFFSET) ;
   u32LocData |= (uint32)((uint32)u8Data << TLE9180_u8DAT_OFFSET) ;
   crcinput[2] = (uint8)u32LocData;
   crcinput[1] = (uint8)(u32LocData >> 8);
   crcinput[0] = (uint8)(u32LocData >> 16);
   crc         = (TLE9180_CalculateCRC3(&crcinput[0],3) & 0x07);
   u32LocData |= (uint32)crc ;

   return u32LocData;
}

/**********************************************************************************************************************/
/*                                                                                                                    */
/* !FuncName    : TLE9180_u32CalcWriteReg                                                                              */
/*                                                                                                                    */
/* !Description :   Calculate the register value of the read operation                                                */
/*                                                                                                                    */
/* !LastAuthor  : Y.HUANG                                                                                             */
/**********************************************************************************************************************/
static uint32 TLE9180_u32CalcWriteReg(uint8 u8RegAddr, uint8 u8Data)
{
   uint8 crc = 0;
   uint8 crcinput[3];
   uint32  u32LocData = 0;
   
   u32LocData |= (uint32)(TLE9180_u8WRITE_COMMAND << TLE9180_u8CMD_OFFSET);
   u32LocData |= (uint32)((uint32)(u8RegAddr & 0x7F) << TLE9180_u8ADD_OFFSET) ;
   u32LocData |= (uint32)((uint32)u8Data << TLE9180_u8DAT_OFFSET) ;
   crcinput[2] = (uint8)u32LocData;
   crcinput[1] = (uint8)(u32LocData >> 8);
   crcinput[0] = (uint8)(u32LocData >> 16);
   crc         = (TLE9180_CalculateCRC3(&crcinput[0],3) & 0x07);
   u32LocData |= (uint32)crc ;

   return u32LocData;
}

static uint8 TLE9180_CalculateCRC3(uint8 *message, uint8 len)
{
   uint8 i = 0;
   uint8 N = 8;
   uint8 crc = 0xFF;// Initial value
   while(len--)
   {
      crc ^= *message++;             // crc ^= *data; data++;
      if(len == 1)
      {
         N = 5;
      }
      else
      {
         N = 8;
      }
      for (i = 0; i < N; ++i)
      {
         if (crc & 0x80)
            crc = (crc << 1) ^ 0x60; // 0x60 = (0x03)>>(8-3)
         else
            crc = (crc << 1);
      }
   }
   return (crc >> 5);
}

static uint8 TLE9180_CalculateCRC8(const uint8 * Crc_DataPtr, uint32 Crc_Length)
{
   uint8 Crc_StartValue8 = 0x00;
   /* Process all data (byte wise) */
   while (Crc_Length != 0U)
   {
      uint8 i;            /* loop counter */

      Crc_StartValue8 ^= *Crc_DataPtr;

      /* calculate crc bit by bit */
      for (i = 0U; i < 8U; ++i)
      {
         /* if highest bit set to zero */
         if ((Crc_StartValue8 & 0x80U) == 0U)
         {
            /* no need to xor with the polynomial, just shift */
            Crc_StartValue8 <<= 1U;
         }
         else
         {
            /* bit was set to one: xor it with the CRC8 polynomial */
            Crc_StartValue8 = ((uint8)(Crc_StartValue8 << 1U)) ^ 0x4D; 
         }
      }

      /* Advance the pointer and decrease remaining bytes to calculate over
       * until all bytes in the buffer have been used as input */
      /* Deviation MISRA-1 */
      ++Crc_DataPtr;
      --Crc_Length;
   } /* while (Crc_Length != 0) */

   /* Note that the Autosar R3.1 CRC SWS specifies a xor value of 0 which is
    * wrong.  The Autosar R4.0 CRC SWS specifies the corrected xor value of
    * 0xFF. */
   Crc_StartValue8 ^= 0x00;   /* XOR crc value */

   return Crc_StartValue8;
}
#define TLE9180_STOP_SEC_CODE
#include "TLE9180_MemMap.h"

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/
