#ifndef __DFM_HAL_H_
#define __DFM_HAL_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "McalLib.h"
#include "Fls.h"
#include "Fls_17_Dmu_ac.h"
#include "NvM.h"
#include "MemIf.h"
#include "rba_BswSrv.h"
#include "IfxDmu_reg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "DFM.h"

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
   
/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
#define FLS_D0BUSY                  (0x00000001U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline uint8 DFM_u8HalGetCoreId(void);
static inline boolean DFM_bHalNvmIsIdle(void);
static inline boolean DFM_bHalHwIsIdle(void);
static inline void DFM_vidHalMemSet(void* xDest_pv, sint32 xPattern_s32, uint32 numBytes_u32);
static inline void DFM_vidHalFlashErase(const uint32 ku32EraseAddr, const uint32 ku32EraseLen);
static inline void DFM_vidHalFlashWrite(const uint32 ku32SrcAddr, const uint32 ku32DestAddr);

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  DFM_vidHalMemSet
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/
static inline void DFM_vidHalMemSet(void* xDest_pv, sint32 xPattern_s32, uint32 numBytes_u32)
{
   (void)rba_BswSrv_MemSet(xDest_pv, xPattern_s32, numBytes_u32);
}

/**********************************************************************
 * Function name    :  DFM_u8HalGetCoreId
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  0 - 
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline uint8 DFM_u8HalGetCoreId(void)
{
   return (uint8)Mcal_GetCpuIndex();
}

/**********************************************************************
 * Function name    :  DFM_bHalNvmIsIdle
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  0 - 
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline boolean DFM_bHalNvmIsIdle(void)
{
   boolean bNvmIsIdle;
   NvM_Rb_StatusType status_NvM;
   MemIf_StatusType stMemIf_en;

   NvM_Rb_GetStatus(&status_NvM);
   stMemIf_en = MemIf_Rb_GetStatus();

   bNvmIsIdle = !((status_NvM == NVM_RB_STATUS_BUSY) || (stMemIf_en == MEMIF_BUSY));

   return bNvmIsIdle;
}

/**********************************************************************
 * Function name    :  DFM_bHalHwIsIdle
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  0 - 
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline boolean DFM_bHalHwIsIdle(void)
{
  boolean RetVal;

  RetVal = (((uint32)DMU_HF_STATUS.U & FLS_D0BUSY) != FLS_D0BUSY);

  return RetVal;
}

/**********************************************************************
 * Function name    :  DFM_vidHalFlashErase
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void DFM_vidHalFlashErase(const uint32 ku32EraseAddr, const uint32 ku32EraseLen)
{
   Fls_Erase(ku32EraseAddr - FLS_17_DMU_BASE_ADDRESS, ku32EraseLen);
}

/**********************************************************************
 * Function name    :  DFM_vidHalFlashWrite
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void DFM_vidHalFlashWrite(const uint32 ku32SrcAddr, const uint32 ku32DestAddr)
{
   Fls_17_Dmu_StateType StatePtr;

   Fls_lClearStatusCmdCycle();
   StatePtr.FlsWriteAddress   = ku32DestAddr;
   StatePtr.FlsWriteBufferPtr = (uint8*)ku32SrcAddr;
   Fls_lCallWriteCommand(FLS_17_DMU_BASE_ADDRESS, (Fls_17_Dmu_StateType *)&StatePtr, FLS_17_DMU_BURST_WRITE);
}

#endif /* __DFM_HAL_H_ */
