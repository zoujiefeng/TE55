



/*********************************************************************************************************************/
/*-----------------------------------------------------Includes------------------------------------------------------*/
/*********************************************************************************************************************/
#include "Mcu.h"
#include "EcuMgr.h"

#include "UcbSwap.h"
#include "IfxScuRcu.h"

#include "EcuMgr_Cfg_DownloadTarget.h"


/*********************************************************************************************************************/
/*------------------------------------------------------Macros-------------------------------------------------------*/
/*********************************************************************************************************************/
#define UCB_RECOVER_BANK_AT_ORIGIN_BLOCK     1

#define UCB_UNLOCKED_CODE        0x43211234
#define UCB_CONFIRMED_CODE       0x57B5327F
#define UCB_ERASED_CODE          0x00000000

/* ------------------------------------------------------SWAP------------------------------------------------------- */
#define UCB_STANDARD_MAP_MODE    0x00000055
#define UCB_ALTERNATE_MAP_MODE   0x000000AA

#define UCB_SWAP_MARKERL_OFFSET              0x00
#define UCB_SWAP_MARKERH_OFFSET              0x04
#define UCB_SWAP_CONFIRMATIONL_OFFSET        0x08
#define UCB_SWAP_CONFIRMATIONH_OFFSET        0x0C
#define UCB_SWAP_BLOCK_SIZE                  0x10
#define UCB_SWAP_BANK_CONFIRMATION_OFFSET    0x01F0

#define UCB_SWAP_ORIG_BLOCK_MARKER_ADDRESS(BlockIndex)         (UCB_SWAP_ORIG + (BlockIndex * UCB_SWAP_BLOCK_SIZE) + UCB_SWAP_MARKERL_OFFSET)
#define UCB_SWAP_ORIG_BLOCK_CONFIRMATION_ADDRESS(BlockIndex)   (UCB_SWAP_ORIG + (BlockIndex * UCB_SWAP_BLOCK_SIZE) + UCB_SWAP_CONFIRMATIONL_OFFSET)

#define UCB_SWAP_COPY_BLOCK_MARKER_ADDRESS(BlockIndex)         (UCB_SWAP_COPY + (BlockIndex * UCB_SWAP_BLOCK_SIZE) + UCB_SWAP_MARKERL_OFFSET)
#define UCB_SWAP_COPY_BLOCK_CONFIRMATION_ADDRESS(BlockIndex)   (UCB_SWAP_COPY + (BlockIndex * UCB_SWAP_BLOCK_SIZE) + UCB_SWAP_CONFIRMATIONL_OFFSET)

#define UCB_SWAP_ORIG_BANK_CONFIRMATION_ADDRESS                (UCB_SWAP_ORIG + UCB_SWAP_BANK_CONFIRMATION_OFFSET)
#define UCB_SWAP_COPY_BANK_CONFIRMATION_ADDRESS                (UCB_SWAP_COPY + UCB_SWAP_BANK_CONFIRMATION_OFFSET)

#define UCB_SWAP_BLOCK_MARKER_ADDRESS(BankAddress, BlockIndex)         (BankAddress + (BlockIndex * UCB_SWAP_BLOCK_SIZE) + UCB_SWAP_MARKERL_OFFSET)
#define UCB_SWAP_BLOCK_CONFIRMATION_ADDRESS(BankAddress, BlockIndex)   (BankAddress + (BlockIndex * UCB_SWAP_BLOCK_SIZE) + UCB_SWAP_CONFIRMATIONL_OFFSET)
#define UCB_SWAP_BANK_CONFIRMATION_ADDRESS(BankAddress)                (BankAddress + UCB_SWAP_BANK_CONFIRMATION_OFFSET)

/* ------------------------------------------------------OTP-------------------------------------------------------- */
#define UCB_OTP_BANK_PROCONTP_OFFSET        0x01E8
#define UCB_OTP_BANK_CONFIRMATION_OFFSET    0x01F0

#define UCB_OTP_ORIG_PROCONTP_ADDR          (UCB_OTP0_ORIG + UCB_OTP_BANK_PROCONTP_OFFSET)
#define UCB_OTP_ORIG_CONFIRMATION_ADDR      (UCB_OTP0_ORIG + UCB_OTP_BANK_CONFIRMATION_OFFSET)

#define UCB_OTP_COPY_PROCONTP_ADDR          (UCB_OTP0_COPY + UCB_OTP_BANK_PROCONTP_OFFSET)
#define UCB_OTP_COPY_CONFIRMATION_ADDR      (UCB_OTP0_COPY + UCB_OTP_BANK_CONFIRMATION_OFFSET)

#define SWAPCTRL_STANDARD_MAP_VAL           0x01
#define SWAPCTRL_ALTERNATE_MAP_VAL          0x02

#define PROCONTP_SWAP_EN_FIELD_VAL          0x03
/* CPUxDDIS is automatically set to 1, only set swap enable bit */
#define PROCONTP_SWAP_EN_CONFIG_WORD        0x00030000

enum{
   UCB_SWAP_BLOCK_0 = 0,
   UCB_SWAP_BLOCK_1,
   UCB_SWAP_BLOCK_2,
   UCB_SWAP_BLOCK_3,
   UCB_SWAP_BLOCK_4,
   UCB_SWAP_BLOCK_5,
   UCB_SWAP_BLOCK_6,
   UCB_SWAP_BLOCK_7,
   UCB_SWAP_BLOCK_8,
   UCB_SWAP_BLOCK_9,
   UCB_SWAP_BLOCK_10,
   UCB_SWAP_BLOCK_11,
   UCB_SWAP_BLOCK_12,
   UCB_SWAP_BLOCK_13,
   UCB_SWAP_BLOCK_14,
   UCB_SWAP_BLOCK_15,
   UCB_SWAP_MAX_SIZE
};

enum{
   SWAP_A_BANK_ACTIVE = 0,
   SWAP_B_BANK_ACTIVE,
   SWAP_ACTIVE_ILLEGAL
};

enum{
   UCB_SWAP_ORIG_ACTIVE = 0,
   UCB_SWAP_COPY_ACTIVE
};

SwapManageBlock Swap;

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void ucb_erase(uint32 ucb_addr)
{
   /* --------------- ERASE PROCESS --------------- */
   /* Get the current password of the Safety WatchDog module */
   uint16 endInitSafetyPassword = IfxScuWdt_getSafetyWatchdogPassword();

   /* Erase the sector */
   IfxScuWdt_clearSafetyEndinit(endInitSafetyPassword);        /* Disable EndInit protection                       */
   IfxFlash_eraseMultipleSectors(ucb_addr, DFLASH_NUM_SECTORS); /* Erase the given sector           */
   IfxScuWdt_setSafetyEndinit(endInitSafetyPassword);          /* Enable EndInit protection                        */

   /* Wait until the sector is erased */
   IfxFlash_waitUnbusyAll();
   IfxFlash_waitUnbusy(FLASH_MODULE, DATA_FLASH_0);
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void ucb_write(uint32 ucb_addr, uint32 data_l, uint32 data_h)
{
   /* Get the current password of the Safety WatchDog module */
   uint16 endInitSafetyPassword = IfxScuWdt_getSafetyWatchdogPassword();

   // Write UCB Data
   IfxFlash_enterPageMode(ucb_addr);
   IfxFlash_waitUnbusy(FLASH_MODULE, DATA_FLASH_0);
   IfxFlash_loadPage2X32(ucb_addr, data_l, data_h);
   /* Write the loaded page */
   IfxScuWdt_clearSafetyEndinit(endInitSafetyPassword);    /* Disable EndInit protection                       */
   IfxFlash_writePage(ucb_addr);                           /* Write the page                                   */
   IfxScuWdt_setSafetyEndinit(endInitSafetyPassword);      /* Enable EndInit protection                        */
   IfxFlash_waitUnbusy(FLASH_MODULE, DATA_FLASH_0);
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void swap_update(void)
{
    // ���� ������� swap configuration entry üũ
    uint32 scu_stmem1 = SCU_STMEM1.U;
    uint32 swapctrl = SCU_SWAPCTRL.U;
    int entry_num = ((scu_stmem1 & 0x00F80000) >> 19) / 2;  /* ���� Ȱ��ȭ�� Configuration Entry ��ȣ */
    uint32 addr_cfg = (swapctrl & 0x00000003);              /* 01b - A active, 10b - B active */

    // UCB_SWAP_COPY configuration ������Ʈ
    ucb_erase(UCB_SWAP_COPY);
    for (int i = 0; i <= entry_num; i++)
    {
        if (i % 2 == 0)
        {
            ucb_write(UCB_SWAP_COPY + (i * 0x10), 0x000000AA, UCB_SWAP_COPY + (i * 0x10));
        } 
        else
        {
            ucb_write(UCB_SWAP_COPY + (i * 0x10), 0x00000055, UCB_SWAP_COPY + (i * 0x10));
        }
        ucb_write(UCB_SWAP_COPY + (i * 0x10) + 8, 0xFFFFFFFF, 0xFFFFFFFF);
    }
    if ((entry_num + 1) % 2 == 0) 
    {
        ucb_write(UCB_SWAP_COPY + (entry_num * 0x10), 0x000000AA, UCB_SWAP_COPY + (entry_num * 0x10));
    } 
    else 
    {
        ucb_write(UCB_SWAP_COPY + (entry_num * 0x10), 0x00000055, UCB_SWAP_COPY + (entry_num * 0x10));
    }
    ucb_write(UCB_SWAP_COPY + 0x1F0, 0x43211234, 0x00000000); // confirmation code ������Ʈ
    // UCB_SWAP_ORIG configuration ������Ʈ
    ucb_erase(UCB_SWAP_ORIG);
    for (int i = 0; i <= entry_num; i++)
    {
        if (i % 2 == 0)
        {
            ucb_write(UCB_SWAP_ORIG + (i * 0x10), 0x000000AA, UCB_SWAP_ORIG + (i * 0x10));
        }
        else
        {
            ucb_write(UCB_SWAP_ORIG + (i * 0x10), 0x00000055, UCB_SWAP_ORIG + (i * 0x10));
        }
        ucb_write(UCB_SWAP_ORIG + (i * 0x10) + 8, 0xFFFFFFFF, 0xFFFFFFFF);
    }
    if ((entry_num + 1) % 2 == 0)
    {
        ucb_write(UCB_SWAP_ORIG + (entry_num * 0x10), 0x000000AA, UCB_SWAP_ORIG + (entry_num * 0x10));
    }
    else
    {
        ucb_write(UCB_SWAP_ORIG + (entry_num * 0x10), 0x00000055, UCB_SWAP_ORIG + (entry_num * 0x10));
    }
    ucb_write(UCB_SWAP_ORIG + 0x1F0, 0x43211234, 0x00000000); // confirmation code ������Ʈ
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void UCB_vidWriteMarker(uint32 u32BankAddr, uint8 u8BlockIndex, uint8 u8MapMode)
{
   ucb_write(UCB_SWAP_BLOCK_MARKER_ADDRESS(u32BankAddr, u8BlockIndex),
             u8MapMode,
             UCB_SWAP_BLOCK_MARKER_ADDRESS(u32BankAddr, u8BlockIndex));
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void UCB_vidValidBlock(uint32 u32BankAddr, uint8 u8BlockIndex)
{
   ucb_write(UCB_SWAP_BLOCK_CONFIRMATION_ADDRESS(u32BankAddr, u8BlockIndex),
             UCB_CONFIRMED_CODE,
             UCB_SWAP_BLOCK_CONFIRMATION_ADDRESS(u32BankAddr, u8BlockIndex));
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void UCB_vidInvalidBlock(uint32 u32BankAddr, uint8 u8BlockIndex)
{
   ucb_write(UCB_SWAP_BLOCK_CONFIRMATION_ADDRESS(u32BankAddr, u8BlockIndex), 0xFFFFFFFF, 0xFFFFFFFF);
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void UCB_vidSetBankConfirmation(uint32 u32BankAddr)
{
   /* Unlock bank */
   ucb_write(UCB_SWAP_BANK_CONFIRMATION_ADDRESS(u32BankAddr), UCB_UNLOCKED_CODE, 0x00000000);

   /* Lock bank, erase protection */
   /* ucb_write(UCB_SWAP_BANK_CONFIRMATION_ADDRESS(u32BankAddr),
                UCB_CONFIRMED_CODE,
                UCB_SWAP_BANK_CONFIRMATION_ADDRESS(u32BankAddr)); */
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void swap_RecoverOrigBank(void)
{
#if (UCB_RECOVER_BANK_AT_ORIGIN_BLOCK == 0)
   ucb_erase(UCB_SWAP_ORIG);
   UCB_vidWriteMarker(UCB_SWAP_ORIG, 0, Swap.u8CurMarkerCode);
   UCB_vidValidBlock(UCB_SWAP_ORIG, 0);
   UCB_vidSetBankConfirmation(UCB_SWAP_ORIG);

   ucb_erase(UCB_SWAP_COPY);
   UCB_vidWriteMarker(UCB_SWAP_COPY, 0, Swap.u8CurMarkerCode);
   UCB_vidValidBlock(UCB_SWAP_COPY, 0);
   UCB_vidSetBankConfirmation(UCB_SWAP_COPY);
#else
   uint8 u8BlockIndex = 0;

   ucb_erase(UCB_SWAP_ORIG);
   for (u8BlockIndex = 0; u8BlockIndex < Swap.u8ActiveSwapBlockIndex; u8BlockIndex++)
   {
      if (u8BlockIndex % 2 == 0)
      {
         UCB_vidWriteMarker(UCB_SWAP_ORIG, 0, UCB_STANDARD_MAP_MODE);
      }
      else
      {
         UCB_vidWriteMarker(UCB_SWAP_ORIG, 0, UCB_ALTERNATE_MAP_MODE);
      }
      UCB_vidInvalidBlock(UCB_SWAP_ORIG, u8BlockIndex);
   }
   
   UCB_vidWriteMarker(UCB_SWAP_ORIG, u8BlockIndex, Swap.u8CurMarkerCode);
   UCB_vidValidBlock(UCB_SWAP_ORIG, u8BlockIndex);
   UCB_vidSetBankConfirmation(UCB_SWAP_ORIG);
#endif
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void swap_disable(void)
{
   // Erase UCB31(UCB_SWAP_COPY)
   ucb_erase(UCB_SWAP_COPY);
   // Write Confirmation Code into UCB31 -- Unlocked
   ucb_write(UCB_SWAP_COPY + 0x1F0, (uint32)UCB_UNLOCKED_CODE, (uint32)0x00000000);

   // Delete UCB23(UCB_SWAP_ORIG)
   ucb_erase(UCB_SWAP_ORIG);
   // Write Confirmation Code into UCB23 -- Unlocked
   ucb_write(UCB_SWAP_ORIG + 0x1F0, (uint32)UCB_UNLOCKED_CODE, (uint32)0x00000000);

   // Erase UCB40(UCB_OTP0_COPY)
   ucb_erase(UCB_OTP0_COPY);
   // Write Confirmation Code into UCB40 -- Unlocked
   ucb_write(UCB_OTP0_COPY + 0x1F0, (uint32)UCB_UNLOCKED_CODE, (uint32)0x00000000);

   // Erase UCB32(UCB_OTP0_ORIG)
   ucb_erase(UCB_OTP0_ORIG);
   // Write Confirmation Code into UCB32 -- Unlocked
   ucb_write(UCB_OTP0_ORIG + 0x1F0, (uint32)UCB_UNLOCKED_CODE, (uint32)0x00000000);
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void swap_enable(void)
{
   //while(1);
   /* UCB_SWAP_COPY */
   ucb_erase(UCB_SWAP_COPY);
   UCB_vidWriteMarker(UCB_SWAP_COPY, 0, UCB_STANDARD_MAP_MODE);
   UCB_vidValidBlock(UCB_SWAP_COPY, 0);
   UCB_vidSetBankConfirmation(UCB_SWAP_COPY);

   /* UCB_SWAP_ORIG */
   ucb_erase(UCB_SWAP_ORIG);
   UCB_vidWriteMarker(UCB_SWAP_ORIG, 0, UCB_STANDARD_MAP_MODE);
   UCB_vidValidBlock(UCB_SWAP_ORIG, 0);
   UCB_vidSetBankConfirmation(UCB_SWAP_ORIG);

   /* Write OTP to enable SWAP */
   // Erase UCB40(UCB_OTP0_COPY)
   ucb_erase(UCB_OTP0_COPY);
   ucb_write(UCB_OTP_COPY_PROCONTP_ADDR, PROCONTP_SWAP_EN_CONFIG_WORD, 0x00000000);
   // Write Confirmation Code into UCB40 -- Unlocked
   ucb_write(UCB_OTP0_COPY + 0x1F0, (uint32)UCB_UNLOCKED_CODE, (uint32)0x00000000);

   // Erase UCB32(UCB_OTP0_ORIG)
   ucb_erase(UCB_OTP0_ORIG);
   ucb_write(UCB_OTP_ORIG_PROCONTP_ADDR, PROCONTP_SWAP_EN_CONFIG_WORD, 0x00000000);
   // Write Confirmation Code into UCB32 -- Unlocked
   ucb_write(UCB_OTP0_ORIG + 0x1F0, (uint32)UCB_UNLOCKED_CODE, (uint32)0x00000000);

   /* Hardware Reset */
   EcuMgr_PerformReset();
}

/**********************************************************************
 * Function name    :  UCB_SwapEnableHandle
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void UCB_SwapEnableHandle(void)
{
   Ifx_DMU_HF_PROCONTP *pHF_PROCONTP = (Ifx_DMU_HF_PROCONTP *)UCB_OTP_ORIG_PROCONTP_ADDR;

   if(pHF_PROCONTP->B.SWAPEN != PROCONTP_SWAP_EN_FIELD_VAL)
   {
      Swap.bSwapEnabled = FALSE;
      swap_enable();
      /* Not return, device reset */
   }
   else
   {
      Swap.bSwapEnabled = TRUE;
   }
}

void Swap_ParamUpdate(void)
{
   
}

uint32 Swap_u32GetPflashEraseOrWriteOffset(void)
{
   uint32 u32RetOffset = 0;

   u32RetOffset = Swap.u8InactivePFlashBank * PFLASH_BANK_SIZE;
   
   return u32RetOffset;
}

uint8 Swap_u8GetInactiveBank(void)
{
   return Swap.u8InactivePFlashBank;
}

uint8 Swap_u8GetActiveBank(void)
{
   return Swap.u8ActivePFlashBank;
}

/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void Swap_Init(void)
{
   uint32 u32ScuStmem1 = SCU_STMEM1.U;
   uint32 u32SwapCtrl = SCU_SWAPCTRL.U;
   uint32 u32SwapEntryIndex = ((u32ScuStmem1 & 0x00F80000) >> 19) / 2;  /* Swap Configuration Entry Index */
   uint32 u32SwapTargetBank = (u32ScuStmem1 & 0x00040000) >> 18;        /* 0 - ORIG, 1 - COPY */
   uint32 u32AddrMode = (u32SwapCtrl & 0x00000003);                     /* 01b - A active, 10b - B active */

   IfxScuRcu_configureResetRequestTrigger(IfxScuRcu_Trigger_sw, IfxScuRcu_ResetType_system);
   
   UCB_SwapEnableHandle();
   Swap.bSwapNeedToErase = FALSE;

   /* Get active pflash bank */
   if(SWAPCTRL_STANDARD_MAP_VAL == u32AddrMode)
   {
      /* A BANK actived */
      Swap.u8ActivePFlashBank   = SWAP_A_BANK_ACTIVE;
      Swap.u8InactivePFlashBank = SWAP_B_BANK_ACTIVE;
      Swap.u8CurMarkerCode      = UCB_STANDARD_MAP_MODE;
      Swap.u8NextMarkerCode     = UCB_ALTERNATE_MAP_MODE;
   }
   else if(SWAPCTRL_ALTERNATE_MAP_VAL == u32AddrMode)
   {
      /* B BANK actived */
      Swap.u8ActivePFlashBank   = SWAP_B_BANK_ACTIVE;
      Swap.u8InactivePFlashBank = SWAP_A_BANK_ACTIVE;
      Swap.u8CurMarkerCode      = UCB_ALTERNATE_MAP_MODE;
      Swap.u8NextMarkerCode     = UCB_STANDARD_MAP_MODE;
   }
   else
   {
      Swap.u8InactivePFlashBank = SWAP_A_BANK_ACTIVE;
      Swap.u8CurMarkerCode      = UCB_STANDARD_MAP_MODE;
      Swap.u8NextMarkerCode     = UCB_STANDARD_MAP_MODE;
   }

   if(TRUE == Swap.bSwapEnabled)
   {
      Swap.u8ActiveSwapBlockIndex = (uint8)u32SwapEntryIndex;
      Swap.u8NextSwapBlockIndex   = Swap.u8ActiveSwapBlockIndex + 1;
      if(Swap.u8NextSwapBlockIndex >= UCB_SWAP_MAX_SIZE)
      {
         Swap.u8NextSwapBlockIndex = 0;
         Swap.bSwapNeedToErase = TRUE;
      }
      
      if(0 == u32SwapTargetBank)
      {
      }
      else
      {
         /* Need recover orig block */
         //swap_RecoverOrigBank();
      }
   }
}

boolean Swap_Flag = FALSE;
/**********************************************************************
 * Function name    :  DFApp_ptGetBlock
 * Description      :  
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/02/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void Swap_Swich(void)
{
   static boolean Swap_bSwapCompleted = FALSE;
   
   if(FALSE == Swap.bSwapEnabled)
   {
      /* Error: Swap is disabled */
   }
   else if((TRUE == Swap_Flag) && (FALSE == Swap_bSwapCompleted))
   {
      Swap_Flag = FALSE;
      Swap_bSwapCompleted = TRUE;
      if(TRUE == Swap.bSwapNeedToErase)
      {
         Swap.bSwapNeedToErase = FALSE;
         /* UCB_SWAP_COPY */
         ucb_erase(UCB_SWAP_COPY);
         UCB_vidWriteMarker(UCB_SWAP_COPY, Swap.u8NextSwapBlockIndex, Swap.u8NextMarkerCode);
         UCB_vidValidBlock(UCB_SWAP_COPY, Swap.u8NextSwapBlockIndex);
         UCB_vidSetBankConfirmation(UCB_SWAP_COPY);
         
         /* UCB_SWAP_ORIG */
         ucb_erase(UCB_SWAP_ORIG);
         UCB_vidWriteMarker(UCB_SWAP_ORIG, Swap.u8NextSwapBlockIndex, Swap.u8NextMarkerCode);
         UCB_vidValidBlock(UCB_SWAP_ORIG, Swap.u8NextSwapBlockIndex);
         UCB_vidSetBankConfirmation(UCB_SWAP_ORIG);
      }
      else
      {
         UCB_vidWriteMarker(UCB_SWAP_COPY, Swap.u8NextSwapBlockIndex, Swap.u8NextMarkerCode);
         UCB_vidValidBlock(UCB_SWAP_COPY, Swap.u8NextSwapBlockIndex);
         UCB_vidInvalidBlock(UCB_SWAP_COPY, Swap.u8ActiveSwapBlockIndex);

         UCB_vidWriteMarker(UCB_SWAP_ORIG, Swap.u8NextSwapBlockIndex, Swap.u8NextMarkerCode);
         UCB_vidValidBlock(UCB_SWAP_ORIG, Swap.u8NextSwapBlockIndex);
         UCB_vidInvalidBlock(UCB_SWAP_ORIG, Swap.u8ActiveSwapBlockIndex);
      }
   }
   else
   {
      /* Do nothing */
   }
}

boolean bActiveAppNotValid = FALSE;

boolean Swap_vidTriggerSwap(void)
{
   boolean bisValid = EcuMgr_IsValidWholeLogicalBlock();
   if((TRUE == bisValid)
   || (EcuMgr_IsValidBootloaderLogicalBlock() && (TRUE == bActiveAppNotValid)))
   {
      Swap_Flag = TRUE;
      Swap_Swich();
   }

   return bisValid;
}

