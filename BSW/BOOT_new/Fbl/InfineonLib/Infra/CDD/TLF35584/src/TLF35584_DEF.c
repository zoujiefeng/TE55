/**********************************************************************************************************************/
/* !Layer           : HAL                                                                                             */
/* !Component       : TLF35584                                                                                        */
/* !Description     : TLF35584 safe supply device management                                                          */
/*                                                                                                                    */
/* !File            : TLF35584.c                                                                                      */
/* !Description     : Send the init frames for TLF35584 configuration                                                 */
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

#include "Std_Types.h"
#include "Std_Limits.h"

#include "SPI.h"
#include "TLF35584.h"

#define TLF35584_START_SEC_VAR_CLEARED_16BIT
#include "TLF35584_MemMap.h"

uint16 TLF35584_au16SpiTxFrame[TLF35584_u8TX_FRAME_MAX_NB];
uint16 TLF35584_au16SpiTxCfgAddr[TLF35584_u8TX_FRAME_MAX_NB];
uint16 TLF35584_au16SpiTxCfgData[TLF35584_u8TX_FRAME_MAX_NB];
uint16 TLF35584_au16SpiRxCfgData[TLF35584_u8TX_FRAME_MAX_NB];


#define TLF35584_STOP_SEC_VAR_CLEARED_16BIT
#include "TLF35584_MemMap.h"


#define TLF35584_START_SEC_CODE
#include "TLF35584_MemMap.h"

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_vidInit                                                                                    */
/* !Description : Initialization of the TLF35584 variables and Start of SPI sequences                                 */
/*                                                                                                                    */
/* !LastAuthor  :                                                                                            */
/**********************************************************************************************************************/
void TLF35584_vidInit(uint8 u8TLF35584_StepUsed)
{
   uint8 u8LocalCnt = 0;
   uint8 u8LocalNum = 0;
   volatile uint32 localu32Counter;


   TLF35584_bSpiComError = FALSE;
   TLF35584_u8ChipStepUsed     = u8TLF35584_StepUsed;
   for (u8LocalCnt = 0u; u8LocalCnt < TLF35584_u8TX_FRAME_MAX_NB; u8LocalCnt++)
   {
      TLF35584_au16SpiRxCfgData[u8LocalCnt] = UINT16_MIN;
   }

   /* !Comment: Initialization of SPI Frames to Send */
   TLF35584_au16SpiTxCfgAddr[0] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[0] = TLF35584_u16UNLOCK_FRAME1;
   
   TLF35584_au16SpiTxCfgAddr[1] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[1] = TLF35584_u16UNLOCK_FRAME2;
   
   TLF35584_au16SpiTxCfgAddr[2] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[2] = TLF35584_u16UNLOCK_FRAME3;
   
   TLF35584_au16SpiTxCfgAddr[3] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[3] = TLF35584_u16UNLOCK_FRAME4;
   
   TLF35584_au16SpiTxCfgAddr[4] = TLF35584_u8REG_WDCFG0;
   TLF35584_au16SpiTxCfgData[4] = TLF35584_u16DISABLE_WATCHDOGS;
   
   TLF35584_au16SpiTxCfgAddr[6] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[6] = TLF35584_u16LOCK_FRAME1;
   
   TLF35584_au16SpiTxCfgAddr[7] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[7] = TLF35584_u16LOCK_FRAME2;
   
   TLF35584_au16SpiTxCfgAddr[8] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[8] = TLF35584_u16LOCK_FRAME3;
   
   TLF35584_au16SpiTxCfgAddr[9] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[9] = TLF35584_u16LOCK_FRAME4;

   if (TLF35584_u8ChipStepUsed == TLF35584_u8CHIP_STEP_B)
   {
      /* !Comment: The TLF35584 is a Step B */
      TLF35584_au16SpiTxCfgAddr[5]  = TLF35584_u8REG_SYSPCFG1;
      TLF35584_au16SpiTxCfgData[5] = TLF35584_u16STEP_B_DISA_ERR_MON;
      
      TLF35584_au16SpiTxCfgAddr[10] = TLF35584_u8REG_DEVCTRL;
      TLF35584_au16SpiTxCfgData[10] = TLF35584_u16STEP_B_CFG1_NORMAL;
      
      TLF35584_au16SpiTxCfgAddr[11] = TLF35584_u8REG_DEVCTRLN;
      TLF35584_au16SpiTxCfgData[11] = TLF35584_u16STEP_B_CFG2_NORMAL;
      
      u8LocalNum   = 12;
   }
   else
   {
      /* !Comment: The TLF35584 is a Step A */
      TLF35584_au16SpiTxCfgAddr[5]  = TLF35584_u8REG_SYSPCFG0;
      TLF35584_au16SpiTxCfgData[5] = TLF35584_u16STEP_A_DISA_ERR_MON;
      
      TLF35584_au16SpiTxCfgAddr[10] = TLF35584_u8REG_RWDCFG1;
      TLF35584_au16SpiTxCfgData[10] = TLF35584_u16STEP_A_CFG_NORMAL;

      
      u8LocalNum   = 12;
   }
   
   u8LocalNum   = 10;
   TLF35584_vidWriteMultiReg(&TLF35584_au16SpiTxCfgAddr[0], &TLF35584_au16SpiTxCfgData[0], &TLF35584_au16SpiRxCfgData[0],u8LocalNum);

   /* Delay 100us */
   localu32Counter = 5000;
   while(localu32Counter > 0)
   {
      localu32Counter--;
   }
   
   u8LocalNum   = 2;
   TLF35584_vidWriteMultiReg(&TLF35584_au16SpiTxCfgAddr[10], &TLF35584_au16SpiTxCfgData[10], &TLF35584_au16SpiRxCfgData[10],u8LocalNum);

}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_vidResetActive                                                                                    */
/* !Description : To activate watchdog                                  */
/*                                                                                                                    */
/* !LastAuthor  :                                                                                            */
/**********************************************************************************************************************/
void TLF35584_vidResetActive(void)
{
   TLF35584_au16SpiTxCfgAddr[0] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[0] = TLF35584_u16UNLOCK_FRAME1;
   
   TLF35584_au16SpiTxCfgAddr[1] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[1] = TLF35584_u16UNLOCK_FRAME2;
   
   TLF35584_au16SpiTxCfgAddr[2] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[2] = TLF35584_u16UNLOCK_FRAME3;
   
   TLF35584_au16SpiTxCfgAddr[3] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[3] = TLF35584_u16UNLOCK_FRAME4;
   
   TLF35584_au16SpiTxCfgAddr[4] = TLF35584_u8REG_WDCFG0;
   TLF35584_au16SpiTxCfgData[4] = TLF35584_u16ENABLE_WATCHDOGS;
   
   TLF35584_au16SpiTxCfgAddr[5] = TLF35584_u8REG_WWDCFG0;
   TLF35584_au16SpiTxCfgData[5] = TLF35584_u16TIME_WINDOWS_MIN;
   
   TLF35584_au16SpiTxCfgAddr[6] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[6] = TLF35584_u16LOCK_FRAME1;
   
   TLF35584_au16SpiTxCfgAddr[7] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[7] = TLF35584_u16LOCK_FRAME2;
   
   TLF35584_au16SpiTxCfgAddr[8] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[8] = TLF35584_u16LOCK_FRAME3;
   
   TLF35584_au16SpiTxCfgAddr[9] = TLF35584_u8REG_PROTCFG;
   TLF35584_au16SpiTxCfgData[9] = TLF35584_u16LOCK_FRAME4;

   TLF35584_u8SpiTxFrameMaxNb   = 10;

   /* !Comment: initiates SPI sequence */
   TLF35584_vidWriteMultiReg(&TLF35584_au16SpiTxCfgAddr[0], &TLF35584_au16SpiTxCfgData[0], &TLF35584_au16SpiRxCfgData[0],TLF35584_u8SpiTxFrameMaxNb);
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_bManagement                                                                              */
/* !Description : Send the "Go to normal mode" sequences                                                              */
/*                                                                                                                    */
/* !LastAuthor  :                                                                                            */
/**********************************************************************************************************************/
boolean TLF35584_bManagement(void)
{
   boolean bLocDataTransOK = FALSE;
   uint8 u8LocNum = 0;

   if (TLF35584_u8ChipStepUsed == TLF35584_u8CHIP_STEP_B)
   {
      u8LocNum = TLF35584_u8FRAME_NB_INIT_STEP_B - 10;
   }
   else
   {
      u8LocNum = TLF35584_u8FRAME_NB_INIT_STEP_A - 10;
   }
   
   TLF35584_vidWriteMultiReg(&TLF35584_au16SpiTxCfgAddr[10], &TLF35584_au16SpiTxCfgData[10], &TLF35584_au16SpiRxCfgData[10],u8LocNum);
   bLocDataTransOK = TRUE;
   
   return bLocDataTransOK;
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_vidReadMultiReg                                                                            */
/* !Description : Read multiple register data, register number = TLF35584_u8TX_FRAME_MAX_NB                           */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
void TLF35584_vidReadMultiReg(uint16 * pu16Regaddr, uint16 * pu16RxBuffer,uint8 u8RegNum)
{
   uint8 u8Loccalindex        = 0;
   uint16 u16LocFrameData     = 0;


   while(u8Loccalindex < u8RegNum)
   {
      u16LocFrameData = *pu16Regaddr;
      u16LocFrameData = TLF35584_u16CalReadRegFrame(u16LocFrameData);
      TLF35584_au16SpiTxFrame[u8Loccalindex] = u16LocFrameData;
      u8Loccalindex += 1;
      pu16Regaddr++;
   }


   Spi_SetupEB(SpiConf_SpiChannel_TLF35584_CH, (uint8*)(&TLF35584_au16SpiTxFrame[0]),(uint8*)(pu16RxBuffer),u8RegNum);
   Spi_SyncTransmit(SpiConf_SpiSequence_TLF35584_SEQ);
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_vidReadMultiRegGetData                                                                     */
/* !Description : Read multiple register data, register number = TLF35584_u8TX_FRAME_MAX_NB                           */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
void TLF35584_vidReadMultiRegGetData(uint16 * pu16Buffer, uint8 u8RegNum)
{
   uint8  u8Localindex        = 0; 
   uint16 u16LocFrameData     = 0;

   if(u8RegNum <= TLF35584_u8TX_FRAME_MAX_NB)
   {
      TLF35584_u8SpiTxFrameMaxNb    = u8RegNum;
   }
   else
   {
      TLF35584_u8SpiTxFrameMaxNb    = TLF35584_u8TX_FRAME_MAX_NB;
   }

   while(u8Localindex < TLF35584_u8SpiTxFrameMaxNb)
   {
      //u16LocFrameData = TLF35584_au16SpiRxFrame[u8Localindex];
      *pu16Buffer     = TLF35584_u16ExtractRxFrameData(u16LocFrameData);
      pu16Buffer++;
      u8Localindex += 1;
   }
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_vidWriteMultiReg                                                                            */
/* !Description : Read multiple register data, register number = TLF35584_u8TX_FRAME_MAX_NB                           */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
void TLF35584_vidWriteMultiReg(uint16 * pu16Regaddr, uint16 * pu16Regdata, uint16 * pu16RxBuffer, uint8 u8RegNum)
{
   uint8 u8Loccalindex        = 0;
   uint16 u16LocRegAddr       = 0;
   uint16 u16LocRegData       = 0;
   uint16 u16LocFrameData     = 0;

   
   while(u8Loccalindex < u8RegNum)
   {
      u16LocRegAddr     = *pu16Regaddr;
      u16LocRegData     = *pu16Regdata;
      u16LocFrameData   = TLF35584_u16CalWriteRegFrame(u16LocRegAddr, u16LocRegData);
      TLF35584_au16SpiTxFrame[u8Loccalindex] = u16LocFrameData;
      u8Loccalindex ++;
      pu16Regaddr ++;
      pu16Regdata ++;
   }


   Spi_SetupEB(SpiConf_SpiChannel_TLF35584_CH, (uint8*)(&TLF35584_au16SpiTxFrame[0]),(uint8*)(pu16RxBuffer),u8RegNum);
   Spi_SyncTransmit(SpiConf_SpiSequence_TLF35584_SEQ);
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_u16CalReadRegFrame                                                                         */
/* !Description : Calculate Tx frame value from register address                                                      */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
uint16 TLF35584_u16CalReadRegFrame(uint16 u16regaddr)
{
   uint16 u16LocalData   = 0;
   uint16 u16LocalParity = 0;

   u16LocalData   = u16LocalData | TLF35584_u8DATA_TRANS_READ;
   u16LocalData   = u16LocalData << 6;
   u16LocalData   = u16LocalData + (u16regaddr & 0x3F);
   u16LocalData   = (uint16)(u16LocalData << 8);
   return u16LocalData;
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_u16CalWriteRegFrame                                                                        */
/* !Description : Calculate Tx frame value from register address                                                      */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
uint16 TLF35584_u16CalWriteRegFrame(uint16 u16regaddr, uint16 u16regdata)
{
   uint16 u16LocalData   = 0;
   uint16 u16LocalParity = 0;
   
   u16LocalData   = u16LocalData | TLF35584_u8DATA_TRANS_WRITE;
   u16LocalData   = u16LocalData << 6;
   u16LocalData   = u16LocalData + (u16regaddr & 0x3F);
   u16LocalData   = (uint16)(u16LocalData << 8);
   u16LocalData   = u16LocalData + (u16regdata & 0xFF);
   return u16LocalData;
}

/**********************************************************************************************************************/
/* !FuncName    : TLF35584_u16ExtractRxData                                                                           */
/* !Description : Extract data from Rx frame                                                                          */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
uint16 TLF35584_u16ExtractRxFrameData(uint16 u16framevalue)
{
   uint16 u16LocalParity = 0;
   uint16 u16LocalData   = 0;

   u16LocalData   = u16framevalue;
   u16LocalParity = u16LocalData & 0x0001;

   u16LocalData = (u16framevalue & 0x7FFE);
   u16LocalData = (uint16)(u16LocalData >> 1);
   
   return u16LocalData;
}

#define TLF35584_STOP_SEC_CODE
#include "TLF35584_MemMap.h"

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/
