#ifndef USERSW_INC_UCBSWAP_H_
#define USERSW_INC_UCBSWAP_H_

/*********************************************************************************************************************/
/*-----------------------------------------------------Includes------------------------------------------------------*/
/*********************************************************************************************************************/
#include "Std_Types.h"
#include "IfxFlash.h"
#include "IfxCpu.h"

#include "Flash.h"
#include "bswsrv.h"
/*********************************************************************************************************************/
/*------------------------------------------------------Macros-------------------------------------------------------*/
/*********************************************************************************************************************/
#ifdef IFXFLASH_PFLASH_P5_SIZE
/* TC39X, Todo */
//#define PFLASH_BANK_SIZE     0x00300000   /* 3MB */
#elif defined IFXFLASH_PFLASH_P3_SIZE
/* TC38X, TC3EX */
#define PFLASH_BANK_SIZE       (IFXFLASH_PFLASH_P0_SIZE + IFXFLASH_PFLASH_P1_SIZE)   /* 6MB */
#elif defined IFXFLASH_PFLASH_P1_SIZE
/* TC35X, TC36X, TC37X */
#define PFLASH_BANK_SIZE       IFXFLASH_PFLASH_P0_SIZE   /* 3MB */
#else
#error "UcbSwap.h, No valid Flash cfg"
#endif

/*********************************************************************************************************************/
/*-------------------------------------------------------Type--------------------------------------------------------*/
/*********************************************************************************************************************/
typedef struct SwapManageBlock{
   boolean bSwapEnabled;
   boolean bSwapNeedToErase;
   uint8 u8ActivePFlashBank;
   uint8 u8InactivePFlashBank;
   uint8 u8ActiveSwapBlockIndex;
   uint8 u8NextSwapBlockIndex;
   uint8 u8CurMarkerCode;
   uint8 u8NextMarkerCode;
}SwapManageBlock, * PSwapManageBlock;

/*********************************************************************************************************************/
/*------------------------------------------------Function Prototypes------------------------------------------------*/
/*********************************************************************************************************************/
void swap_enable(void);
void swap_update(void);
void swap_disable(void);
void Swap_Init(void);
void Swap_Swich(void);
boolean Swap_vidTriggerSwap(void);
uint32 Swap_u32GetPflashEraseOrWriteOffset(void);
uint8 Swap_u8GetInactiveBank(void);
uint8 Swap_u8GetActiveBank(void);

#endif /* USERSW_INC_UCBSWAP_H_ */

