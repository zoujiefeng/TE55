



/*********************************************************************************************************************/
/*-----------------------------------------------------Includes------------------------------------------------------*/
/*********************************************************************************************************************/
#include "IfxScu_reg.h"
#include "FBL_DataMPrvCfg.h"

#include "UcbSwap.h"

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

#define ECUMGR_STATUS_INFO_WHOLE_BLOCKS_VALIDITY      (0x07)

#define ECUMGR_STATUS_INFO_APP_VALIDITY               (0x01)
#define ECUMGR_STATUS_INFO_CAL_VALIDITY               (0x02)
#define ECUMGR_STATUS_INFO_BLOCKS_VALIDITY            (0x03)
#define ECUMGR_STATUS_INFO_BOOT_VALIDITY              (0x04)

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
   uint32 u32SwapCtrl = SCU_SWAPCTRL.U;
   uint32 u32AddrMode = (u32SwapCtrl & 0x00000003);                     /* 01b - A active, 10b - B active */

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
}

boolean Swap_bCheckSwapCondition(void)
{
   boolean bCheckResult = FALSE;
   uint8 u8ValidMask = ECUMGR_STATUS_INFO_WHOLE_BLOCKS_VALIDITY << (Swap.u8InactivePFlashBank * 4);

   if(0 == (Fbl_DataM_RamMirrorNV_ValidityFlagsBlock[0] & u8ValidMask))
   {
      bCheckResult = TRUE;
   }
   else
   {
      bCheckResult = FALSE;
   }

   return bCheckResult;
}
