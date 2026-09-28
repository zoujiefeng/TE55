/*
 * Xcp_OverlayMem.h
 *
 *  Created on: Dec 06, 2019
 *      Author: ZCO7SGH
 */


#ifndef OverlayManager_H_
#define OverlayManager_H_


/**********************************************************************************************************************
 * INCLUDES
 *********************************************************************************************************************/
#include "IfxCpu.h"

/*******************************************************************************
* Macro Definitions
*******************************************************************************/
extern uint32 __RODATA_CALIB_START;
extern uint32 __OVERLAY_RAM_START;
extern uint32 __RODATA_CALIB_USER_START;
extern uint32 __OVERLAY_RAM_USER_START;

#define SIZE_KB(size)       ((uint32)(size * 1024UL))
#define CALFLASH_START_ADDR (&__RODATA_CALIB_START)
#define CALRAM_START_ADDR   (&__OVERLAY_RAM_START)
#define CAL_MEM_SIZE        SIZE_KB(32)

#define TCU_CALFLASH_START_ADDR (&__RODATA_CALIB_USER_START)
#define TCU_CALRAM_START_ADDR   (&__OVERLAY_RAM_USER_START)
#define TCU_CAL_MEM_SIZE        SIZE_KB(32)

#define CONVERT_TO_OVERLAYMEM_Addr(addr)  \
    ((uint32)addr - CALFLASH_START_ADDR + CALRAM_START_ADDR)

#define CONVET_TO_TBASE_Addr(addr)  \
    (((uint32)addr >> 5) & 0x7FFFFF)
    
#define CONVET_TO_OBASE_Addr(addr)  \
    (((uint32)addr >> 5) & 0x3FFFF)

#define OVC_CORENUM_CFG  4
#define OVC_BLOCKNUM_CFG  2
#define OVC_CORE0  0
#define OVC_CORE1  1
#define OVC_CORE2  2
#define OVC_CORE3  3

/******************************************************************************
* TYPES                                                                        
******************************************************************************/
typedef enum
{
   IfxCpu_OverlayBlock_0 = 0,  
   IfxCpu_OverlayBlock_1,  
   IfxCpu_OverlayBlock_2,  
   IfxCpu_OverlayBlock_3,  
   IfxCpu_OverlayBlock_4,  
   IfxCpu_OverlayBlock_5,  
   IfxCpu_OverlayBlock_6,  
   IfxCpu_OverlayBlock_7,  
   IfxCpu_OverlayBlock_8,  
   IfxCpu_OverlayBlock_9,  
   IfxCpu_OverlayBlock_10,  
   IfxCpu_OverlayBlock_11,  
   IfxCpu_OverlayBlock_12,  
   IfxCpu_OverlayBlock_13,  
   IfxCpu_OverlayBlock_14,  
   IfxCpu_OverlayBlock_15,  
   IfxCpu_OverlayBlock_16,  
   IfxCpu_OverlayBlock_17,  
   IfxCpu_OverlayBlock_18,  
   IfxCpu_OverlayBlock_19,  
   IfxCpu_OverlayBlock_20,  
   IfxCpu_OverlayBlock_21,  
   IfxCpu_OverlayBlock_22,  
   IfxCpu_OverlayBlock_23,  
   IfxCpu_OverlayBlock_24,  
   IfxCpu_OverlayBlock_25,  
   IfxCpu_OverlayBlock_26,  
   IfxCpu_OverlayBlock_27,  
   IfxCpu_OverlayBlock_28,  
   IfxCpu_OverlayBlock_29,  
   IfxCpu_OverlayBlock_30,  
   IfxCpu_OverlayBlock_31  
} IfxCpu_OverlayBlockNum;

typedef struct 
{
   uint32 u32TargetFlashAddr;
   uint32 u32OverlayRamAddr;
   IfxCpu_OverlayBlockNum eBlockNum;
   IfxCpu_OverlayAddressMask eOverlayBlockSize;
   IfxCpu_OverlayMemorySelect eOverlayRedirectRegion;
   uint8 u8EnableCore;
}OVC_tstBlockConfig;

/*******************************************************************************
* Function Declarations
*******************************************************************************/
extern void Overlay_Init(void);
extern void Overlay_Enable(void);
extern void Overlay_Disable(void);
extern void Overlay_CheckEnabled(boolean *enabled);
extern void Overlay_Sync(void);



#endif /*OverlayManager_H_*/

/**********************************************************************************************************************
 *  END OF FILE
 *********************************************************************************************************************/
