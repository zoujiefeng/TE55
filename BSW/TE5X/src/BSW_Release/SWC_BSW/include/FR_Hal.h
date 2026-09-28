#ifndef __FR_HAL_H_
#define __FR_HAL_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "FR_Cfg.h"
#include "FR_Assert.h"
#include "FR_PublicTypes.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "DFM.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
#define FR_INVALID_BLOCK_CTR  0xFF

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum{
   eFR_HAL_WRTIE_DONE = 0,
   eFR_HAL_WRTIE_CONTINUE
};

/******************************************************************************/
/**************************  Fixed Type Definitions  **************************/
/******************************************************************************/


/******************************************************************************/
/***************************  User Type Definitions  **************************/
/******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
uint8 FR_u8HalReadBlockCtr(const uint8 u8BlockID);
boolean FR_bHalWriteFixHead(const uint8 * const kpku8Data);
boolean FR_bHalWriteBufIndex(const FR_BankUserCfg * const kpktCfg, uint8 * const kpu8OpState);
boolean FR_bHalWriteUserHead(const FR_BankUserCfg * const kpktCfg, uint8 * const kpu8OpState);
boolean FR_bHalWriteEvent(const FR_BankUserCfg * const kpktCfg, uint8 * const kpu8OpState);
boolean FR_bHalClaerNvmBlock(const FR_BankUserCfg * const kpktCfg, const uint8 ku8BlockIndex);
boolean FR_bHalClearAllNvmBlock(uint8 * const pu8BlockIndex);
void FR_vidHalUpdateCmd(const FR_BankUserCfg * const kpktCfg, const uint8 ku8BlockIndex);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

#endif /* __FR_HAL_H_ */

