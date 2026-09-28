
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Qspi_dma.h"
#include "DRV83xx_HAL.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define DRV83xxHAL_QSPI_DEV_CFG_INDEX         QSPI_DMA_CFG_2

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/
uint32 DRV83xxHAL_xRegMapRxBuf[20];
uint32 DRV83xxHAL_xRegMapTxBuf[20];
uint8 DRV83xxRegDriverCur;
/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void DRV83xxHAL_u8SpiInit(void)
{
   Qspi_CddInit(DRV83xxHAL_QSPI_DEV_CFG_INDEX);
}

boolean DRV83xxHAL_bIsComEnd(void)
{
   boolean bReadResult;
   
   bReadResult = (E_OK == Qspi_CddRxDone(DRV83xxHAL_QSPI_DEV_CFG_INDEX));

   return bReadResult;
}

void DRV83xxHAL_vidSpiWrite(uint8 u8DataSize)
{
   Qspi_CddTxRx(DRV83xxHAL_QSPI_DEV_CFG_INDEX, &DRV83xxHAL_xRegMapTxBuf[0], &DRV83xxHAL_xRegMapRxBuf[0], u8DataSize);
}
/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : DRV8340_u8GetDriverCur                                                      */
/*                                                                                            */
/* !Description : Get register value from application set max driver current                  */
/* !Reference   : Drv8340                                                                     */
/* !Date        : 2024-10-10                                                                  */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
uint8 DRV83xx_u8GetDriverCur(void)
{
   return DRV83xxRegDriverCur;
}
/**********************************************************************************************/
/*                                                                                            */
/* !FuncName    : DRV8340_u8SetDriverCur                                                      */
/*                                                                                            */
/* !Description : Set register value to cdd that max driver current                           */
/* !Reference   : Drv8340                                                                     */
/* !Date        : 2024-10-10                                                                  */
/* !LastAuthor  : GYT                                                                         */
/**********************************************************************************************/
void DRV83xx_u8SetDriverCur(uint8 u8DriverCur)
{
   DRV83xxRegDriverCur = u8DriverCur;
}

