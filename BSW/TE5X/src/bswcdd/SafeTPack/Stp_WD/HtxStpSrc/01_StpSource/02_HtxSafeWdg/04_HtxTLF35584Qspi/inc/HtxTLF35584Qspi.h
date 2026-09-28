/*******************************************************************************
**                                                                            **
** Copyright (C) Hitex (UK) Ltd. (2020)                                       **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This source code and any compilation or derivative thereof is the sole     **
** property of Hitex (UK) Ltd. and is provided pursuant to a Software         **
** License  Agreement. This code is the proprietary information of            **
** Hitex (UK) Ltd. and is confidential in nature. Its use and dissemination   **
** by any other party other than Hitex (UK) Ltd. is strictly limited by the   **
** confidential information provisions of the Agreement referenced above.     **
**                                                                            **
********************************************************************************
**                                                                            **
** FILENAME : HtxTLF35584Qspi.h                                               **
**                                                                            **
** REVISION : \$Revision: 26773 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-11-02 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTLF35584Qspi Driver Header File                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXTLF35584QSPI_H
#define HTXTLF35584QSPI_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxSrc_reg.h"
#include "IfxQspi_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"
#include "HtxTLF35584Qspi_Cfg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* Type definition for QSPI notification function pointer for customer TxRx */
typedef void (*HtxTLF35584Qspi_UserCbkFuncType)(void);

/* Configuration container for QSPI Module  */
typedef struct HtxTLF35584Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;        /* Selected QSPI module (0-3): */
    volatile Ifx_SRC_SRCR* SrcTxRegister; /* Service request register for Tx Interrupts */
    volatile Ifx_SRC_SRCR* SrcRxRegister; /* Service request register for Rx Interrupts */
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;  /* Global time quantum length(GLOBALCON.TQ)*/
    HtxTLF35584Qspi_UserCbkFuncType UserFunc;
} HtxTLF35584Qspi_ModConfigType;


/* MISRA2012_RULE_4_8_JUSTIFICATION:
   This type is defined to specify the configuration os QSPI to be accessible
   by the upper layer (HtxTLF35584), hence defined at the header file level */
/* Configuration container for QSPI channel */
typedef struct HtxTLF35584Qspi_ChConfigType
{
    uint8 Channel;          /* Channel selection (0..15) */
    uint8  SlsoActiveLevel; /* SLSO active level, 0 = low, 1 = high */
    /* Baud rate settings*/
    uint8  ChTimeQuantum;   /* Channel time quantum (ECONz.Q, 0..31) */
    uint8  BitSeg1;         /* Bit segment 1 (ECONz.A, 0..3) */
    uint8  BitSeg2;         /* Bit segment 2 (ECONz.B, 0..3) */
    uint8  BitSeg3;         /* Bit segment 3 (ECONz.C, 0..3) */
    /* QSPI communication configuration: */
    uint8  ClockPhase;      /* Clock phase (ECONz.CPH, 0, 1) */
    uint8  ClockPol;        /* Clock Polarity (ECONz.CPOL, 0,1) */
    uint8  ParityEn;        /* Parity enable (ECONz.PAREN, 0,1) */
    uint8  ParityType;      /* Parity type (BACON.PARTYP, 0=EVEN, 1=ODD) */
    uint8  MsbFirst;        /* MSB/LSB first (BACON.MSB, 0=LSB, 1=MSB) */
    uint8  DataLength;      /* Data length in bits (BACON.DL, 0..31); */
    uint8  IdlePrescaler;   /* Idle delay prescaler  (BACON.IPRE, 0..7)*/
    uint8  IdleDelay;       /* Idle delay (BACON.IDLE, 0..7) */
    uint8  LeadPrescaler;   /* Leading delay prescaler -BACON.LPRE,0..7*/
    uint8  LeadDelay;       /* Leading delay (BACON.LEAD, 0..7) */
    uint8  TrailPrescaler;  /* Trailing delay prescaler-BACON.TPRE,0..7*/
    uint8  TrailDelay;      /* Trailing delay (BACON.TRAIL, 0..7) */

} HtxTLF35584Qspi_ChConfigType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584Qspi_MemMap.h"

/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTLF35584Qspi_Init
 *                  (
 *                     const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
 *                  )
 *
 * \description   : Initializes the QSPI driver using a given configuration
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigPtr - Pointer to the QSPI configuration structure
 *                  to use for initialization
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK  - Init job successful,
 *                  E_NOT_OK - Init job failed.
 *
 *******************************************************************************
 *
 * \service id:   : 0x26
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2279
 *
 ******************************************************************************/
extern Std_ReturnType HtxTLF35584Qspi_Init
(
    const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
);


/*******************************************************************************
 *
 * \function      : void HtxTLF35584Qspi_DeInit(void)
 *
 * \description   : De-initializes the QSPI driver and resets QSPI module
 *                  configuration
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x27
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2280
 *
 ******************************************************************************/
extern void HtxTLF35584Qspi_DeInit(void);


/*******************************************************************************
 *
 * \function      : void HtxTLF35584Qspi_TxRx
 *                  (
 *                      uint32* TxBuf,
 *                      uint32* RxBuf,
 *                      uint8 Count
 *                  )
 *
 * \description   : Transfers a given number of data words over SPI. Once the
 *                  transfer is started control is immediately returned to
 *                  the caller. HtxTLF35584Qspi_RxDone() has to
 *                  be used to poll the status of the data transfer.
 *
 *                  Note: Asynchronous data transfer must only be used if
 *                  interrupts /DMA channels are enabled.
 *
 *******************************************************************************
 *
 * \param[in]     : TxBuf - TX data to be sent
 *                  Count - Number of data words to transfer
 *
 * \param[out]    : None
 *
 * \param[in,out] : RxBuf - the address in the variable is assigned to the
 *                  internal pointer and gets filled with the RX data (Asynchronously)
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x28
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2281
 *
 ******************************************************************************/
extern void HtxTLF35584Qspi_TxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint8 Count
);


/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTLF35584Qspi_CustTxRx
 *                  (
 *                      uint32* TxBuf,
 *                      uint32* RxBuf,
 *                      uint32 BACONRegisterValue,
 *                      uint8 Count
 *                  )
 *
 * \description   : Transfers a given number of data words over SPI.Once the
 *                  transfer is started,control is immediately returned to
 *                  the caller. Callback function will be called
 *                  from RxISR.From the callback ,HtxTLF35584Qspi_RxDone() has
 *                  to be used to poll the status of the data transfer.
 *
 *                  Note: Asynchronous data transfer must only be used if
 *                  interrupts / DMA channels are enabled.
 *
 *******************************************************************************
 *
 * \param[in]     : TxBuf - TX data to be sent
 *                  Count - Number of data words to transfer
 *                  BACONRegisterValue - Basic configuration register value.
 *                  This register should contain basic configuration  parameters
 *                  for the slave select signal used by the   customer module
 *
 * \param[out]    : None
 *
 * \param[in,out] : RxBuf - the address in the variable is assigned to the
 *                  internal pointer and gets filled with the RX data (Asynchronously)
 *
 * \return        : E_OK: transmission request accepted
 *                  E_NOT_OK: transmission request rejected
 *
 *******************************************************************************
 *
 * \service id:   : 0x29
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2282
 *
 ******************************************************************************/
extern Std_ReturnType HtxTLF35584Qspi_CustTxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint32 BACONRegisterValue,
    uint8 Count
);


/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error)
 *
 * \description   : Checks whether a previously started asynchronous
 *                  transmission has already completed and the SPI response is
 *                  available. In case of a complete  transmission,
 *                  transmission status is reset and subsequent calls to
 *                  HtxTLF35584Qspi_RxDone will return FALSE unless a new
 *                  transmission is started.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : Error - Receives the error flags according to
 *                              QSPIx_STATUS.ERRORFLAGS bit field
 *
 * \param[in,out] : None
 *
 * \return        : E_NOT_OK - Asynchronous transmission did not yet complete
 *                          or no asynchronous transmission was started
 *                  E_OK - Asynchronous transmission completed
 *
 *******************************************************************************
 *
 * \service id:   : 0x2A
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2283
 *
 ******************************************************************************/
extern Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error);


#if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
/*******************************************************************************
 *
 * \function      : void HtxTLF35584Qspi_IsrTxRx(void)
 *
 * \description   : This function is ISR handler for Rx Interrupt.It empties
 *                  the RxFIFO and moves the next data (if present) into TxFIFO
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2285
 *
 ******************************************************************************/
extern void HtxTLF35584Qspi_IsrTxRx(void);

#endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_OFF) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584Qspi_MemMap.h"

/*******************************************************************************
 ****  Imported Post-Build Data from Configuration files
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584Qspi_MemMap.h"

extern const HtxTLF35584Qspi_ModConfigType HtxTLF35584Qspi_ModConfigRoot;

extern const HtxTLF35584Qspi_ChConfigType HtxTLF35584Qspi_ChConfigRoot[HTXTLF35584QSPI_CFG_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584Qspi_MemMap.h"


#endif /* HTXTLF35584QSPI_H */

/* EOF */
