/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : TLE9180                                                 */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : TLE9180                                                 */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : TLE9180.H                                               */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* PVCS Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* !VnrOff  : Names imposed by the customer                                   */
/* !CompReq :                                                                 */
/******************************************************************************/

#ifndef __TLE9180_HAL_H_
#define __TLE9180_HAL_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "IfxStm_reg.h"
#include "Qspi_dma.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "CDD_Types.h"
#include "TLE9180.h"
#include "TLE9180_L.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define TLE9180_HAL_QSPI_DEV_CFG_INDEX         QSPI_DMA_CFG_3
#define TLE9180_USE_ASYNC_SPI                  STD_ON

#define TLE9180_HAL_PIN_LOW                    eCDD_PIN_LOW
#define TLE9180_HAL_PIN_HIGH                   eCDD_PIN_HIGH

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
boolean TLE9180_bHalBatIsNormal(void);
boolean TLE9180_bHalSysIsReady(void);
boolean TLE9180_bHalPwmIsReady(void);
boolean TLE9180_bHalICIsNormal(void);
void TLE9180_vidHalWriteEnaPin(const CDD_ePinLevel kePinLevel);
void TLE9180_vidHalWriteSoffPin(const CDD_ePinLevel kePinLevel);
void TLE9180_vidHalWriteInhPin(const CDD_ePinLevel kePinLevel);

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void    TLE9180_vidHalSpiInit(void);
static inline boolean TLE9180_bHalSpiWrite(CDD_tTransParam * const kpkxParam);
static inline uint32  TLE9180_u32HalGetTimerVal(void);
static inline boolean TLE9180_bHalIsComEnd(CDD_tTransParam * const kpkxParam);

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
#define TLE9180_START_SEC_CODE
#include "TLE9180_MemMap.h"
static inline void TLE9180_vidHalSpiInit(void)
{
   Qspi_CddInit(TLE9180_HAL_QSPI_DEV_CFG_INDEX);
}

static inline boolean TLE9180_bHalIsComEnd(CDD_tTransParam * const kpkxParam)
{
   boolean bReadResult;
   
#if (TLE9180_USE_ASYNC_SPI == STD_ON)
   (void)kpkxParam;
   bReadResult = (E_OK == Qspi_CddRxDone(TLE9180_HAL_QSPI_DEV_CFG_INDEX));
#else
   bReadResult = (eCDD_WRITE_DONE == kpkxParam->eState);
#endif

   return bReadResult;
}

static inline boolean TLE9180_bHalSpiWrite(CDD_tTransParam * const kpkxParam)
{
   boolean bRetVal;
#if (TLE9180_USE_ASYNC_SPI == STD_ON)
   Qspi_CddTxRxShortMode(TLE9180_HAL_QSPI_DEV_CFG_INDEX,
                         kpkxParam->uSrcPtr.u32Ptr,
                         kpkxParam->uDestPtr.u32Ptr,
                         (uint8)kpkxParam->u32TotalLen);

   bRetVal = TRUE;
#else
   uint32 * pu32TempSrcBufPtr = NULL_PTR;
   uint32 * pu32TempDestBufPtr = NULL_PTR;
   uint8 i = 0;
   uint8 u8TempIndex = 0;

   TLE9180_u8SpiTxFrameMaxNb = TLE9180_ERR_READNUM_AT_ONE_TIME;
   u8TempIndex = TLE9180_u8RdRegTimCnt;

   pu32TempSrcBufPtr = &TLE9180_au32SpiWriteFrame[u8TempIndex];
   pu32TempDestBufPtr = &TLE9180_au32ErrRegsReadFrame[u8TempIndex];

   TLE9180_u8RdRegTimCnt += TLE9180_u8SpiTxFrameMaxNb;
   
#if ((TLE9180_ERR_READNUM_AT_ONE_TIME > 1) && (TLE9180_ERR_READ_MAX_NUM % TLE9180_ERR_READNUM_AT_ONE_TIME != 0))
   if(TLE9180_u8RdRegTimCnt > TLE9180_ERR_READ_MAX_NUM)
   {
      TLE9180_u8SpiTxFrameMaxNb = TLE9180_ERR_READ_MAX_NUM % TLE9180_ERR_READNUM_AT_ONE_TIME;
   }
#endif

   Spi_SetupEB(SpiConf_SpiChannel_TLE9180_CH, (uint8*)pu32TempSrcBufPtr, (uint8*)pu32TempDestBufPtr, TLE9180_u8SpiTxFrameMaxNb);
   Spi_SyncTransmit(SpiConf_SpiSequence_TLE9180_SEQ);
#endif

   return bRetVal;
}

static inline uint32 TLE9180_u32HalGetTimerVal(void)
{
   uint32 u32Time;

   u32Time = MODULE_STM1.TIM0.U;

   return u32Time;
}

#define TLE9180_STOP_SEC_CODE
#include "TLE9180_MemMap.h"


#endif /* __TLE9180_HAL_H_ */

/*-------------------------------- end of file -------------------------------*/
