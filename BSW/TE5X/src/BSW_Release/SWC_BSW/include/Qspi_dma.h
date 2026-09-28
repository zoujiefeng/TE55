#ifndef __QSPI_DMA_H_
#define __QSPI_DMA_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "Std_Types.h"
#include "IfxSrc_reg.h"
#include "IfxQspi_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
/* Type definition for QSPI notification function pointer for customer TxRx */
typedef void (*Qspi_UserCbkFuncType)(void);

/* Configuration container for QSPI Module  */
typedef struct Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;        /* Selected QSPI module (0-3): */
    volatile Ifx_SRC_SRCR* SrcTxRegister; /* Service request register for Tx Interrupts */
    volatile Ifx_SRC_SRCR* SrcRxRegister; /* Service request register for Rx Interrupts */
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;  /* Global time quantum length(GLOBALCON.TQ)*/
    Qspi_UserCbkFuncType UserFunc;
} Qspi_ModConfigType;

/* MISRA2012_RULE_4_8_JUSTIFICATION:
   This type is defined to specify the configuration os QSPI to be accessible
   by the upper layer (HtxTLF35584), hence defined at the header file level */
/* Configuration container for QSPI channel */
typedef struct Qspi_ChConfigType
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

} Qspi_ChConfigType;

/* Type definition HtxTLF35584Qspi_DataType - local data of the QSPI driver: */
typedef struct Qspi_DataType
{
    /* Stores error flag status */
    volatile uint32 ErrorFlags;
    /* Stores SPI timing details */
    Ifx_QSPI_BACON Bacon;
    /* Pointer to configuration container for QSPI channel */
    const Qspi_ChConfigType* CfgPtr;
    /* Qspi module pointer */
    volatile Ifx_QSPI* QspiModptr;
    /*Service request register for Tx & Rx Interrupts*/
    volatile Ifx_SRC_SRCR* TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg;
    /* Store Tx and Rx buffer pointer */
    uint32* TxBufPtr;
    uint32* RxBufPtr;
    /* Function pointer used by HtxTLF35584Qspi_CustTxRx */
    Qspi_UserCbkFuncType CallbackFunc;
    /* Store DMA Tx and Rx channel */
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    /* Store no of transfers request required */
    uint8 Count;
    /* Store receive count */
    uint8 DataCount;
} Qspi_DataType;


#define QSPI_DMA_CFG_1  0
#define QSPI_DMA_CFG_2  1
#define QSPI_DMA_CFG_3  2
#define QSPI_DMA_CFG_4  3
#define QSPI_DMA_CFG_5  4

void Qspi_CddlQspiDmaChRst(uint8 eCfgIndex);
Std_ReturnType Qspi_CddInit(uint8 eCfgIndex);
void Qspi_CddTxRx(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
void Qspi_CddTxRxShortMode(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
Std_ReturnType Qspi_CddRxDone(uint8 eCfgIndex);


#endif /* __QSPI_DMA_H_ */
