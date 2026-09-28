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
** FILENAME : HtxTLF35584Qspi.c                                               **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2278             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2277             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2276             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2275             **
**                                                                            **
** DESCRIPTION : HtxTLF35584Qspi driver source file                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxDma_reg.h"
#include "IfxDma_bf.h"
#include "IfxQspi_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxTLF35584Qspi.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* QSPIx_CLC bits: */
#define HTXTLF35584QSPI_CLCDISRBIT           ((uint32)0x00000001U)
#define HTXTLF35584QSPI_CLCDISSBIT           ((uint32)0x00000002U)

/* QSPIx_BACON bits: */
/*Reset value of the bit*/
#define HTXTLF35584QSPI_BACON_CSMASK         ((uint32)0xF0000000U)

/* QSPIx SSOC bits: */
#define HTXTLF35584QSPI_SSOC_OENPOS          (16U)

/* QSPIx FLAGSCLEAR bits: */
#define HTXTLF35584QSPI_FLGCL_ERRMASK        ((uint32)0x000001FFU)

#if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
#define HTXTLF35584QSPI_FLGCL_RXCBIT         ((uint32)0x00000400U)
#endif

/* QSPIx_STATUS bits: */
#define HTXTLF35584QSPI_STAT_ERRFLGMASK      ((uint32)0x000001FFU)

/* QSPIx SFR reset values: */
#define HTXTLF35584QSPI_PISEL_RESVAL         ((uint32)0x00000000U)
#define HTXTLF35584QSPI_GLOBCON_RESVAL       ((uint32)0x000F30FFU)
#define HTXTLF35584QSPI_GLOBCON1_RESVAL      ((uint32)0x00050000U)
#define HTXTLF35584QSPI_ECON_RESVAL          ((uint32)0x00001450U)
#define HTXTLF35584QSPI_SSOC_RESVAL          ((uint32)0x00000000U)

/* Time-out for enabling the QSPI clock: */
#define HTXTLF35584QSPI_CLK_ENTIMEOUT        ((uint32)0x00000100U)

/* SRC bits */
#define HTXTLF35584QSPI_SRC_SRE_POS          (10U)
#define HTXTLF35584QSPI_SRC_TOS_POS          (11U)

/* DMA_TSRz register: DCH,ECH,RST bit positions */
#define HTXTLF35584QSPI_DMA_TSR_RST          ((uint32)1U)
#define HTXTLF35584QSPI_DMA_TSR_MASK         ((uint32)0x0107030FU)
#define HTXTLF35584QSPI_DMA_TSR_RST_TIMEOUT  ((uint32)50U)

#define HTXTLF35584QSPI_DMA_SER              (1U)

#define HTXTLF35584_DIS_CLC                  (0x00000001U)

/* Error enable bits for the QSPI */
#define HTXTLF35584_QSPI_GLOCON1_ERR_EN      (0x6A)

#define HTXTLF35584_NUM_ECON_REG             ((uint8)8U)

#define HTXTLF35584_DMA_CHDW                 ((uint8)2U)

#define HTXTLF35584_DMA_INTCT                ((uint8)2U)

/* QSPI GLOBALCON RESET trigger */
#define HTXTLF35584_QSPI_RESET               (0x3U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/* Type definition HtxTLF35584Qspi_DataType - local data of the QSPI driver: */
typedef struct HtxTLF35584Qspi_DataType
{
    /* Stores error flag status */
    volatile uint32 ErrorFlags;
    /* Stores SPI timing details */
    Ifx_QSPI_BACON Bacon;
    /* Pointer to configuration container for QSPI channel */
    const HtxTLF35584Qspi_ChConfigType* CfgPtr;
    /* Qspi module pointer */
    volatile Ifx_QSPI* QspiModptr;
    /*Service request register for Tx & Rx Interrupts*/
    volatile Ifx_SRC_SRCR* TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg;
    /* Store Tx and Rx buffer pointer */
    uint32* TxBufPtr;
    uint32* RxBufPtr;
    /* Function pointer used by HtxTLF35584Qspi_CustTxRx */
    HtxTLF35584Qspi_UserCbkFuncType CallbackFunc;
    /* Store DMA Tx and Rx channel */
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    /* Store no of transfers request required */
    uint8 Count;
    /* Store receive count */
    uint8 DataCount;
} HtxTLF35584Qspi_DataType;

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTLF35584Qspi_MemMap.h"

/* QSPI working data: */
static HtxTLF35584Qspi_DataType HtxTLF35584Qspi_Data;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTLF35584Qspi_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584Qspi_MemMap.h"

static Std_ReturnType HtxTLF35584Qspi_lEnQspiClock(void);

#if(HTXTLF35584QSPI_DMAUSED == STD_ON)
static void HtxTLF35584Qspi_lQspiDmaChRst(void);
#endif

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584Qspi_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
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
Std_ReturnType HtxTLF35584Qspi_Init
(
    const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_QSPI_ECON lEconRegVal;
    Ifx_QSPI_PISEL lPiselRegVal;
    Ifx_QSPI_GLOBALCON lGlobalconRegVal;
    Ifx_QSPI_GLOBALCON1 lGlobalcon1RegVal;
    uint32 lSlsoActiveLevel;
    uint32 lSsoc;
    uint32 lActiveLevelPos;
    uint32 lShiftedSbcPos;
    #if(HTXTLF35584QSPI_DMAUSED == STD_ON)
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_DMA_CH_ADICR lDmaTxAdicrRegVal;
    Ifx_DMA_CH_ADICR lDmaRxAdicrRegVal;
    Ifx_DMA_CH_CHCFGR lDmaTxChcfgrRegVal;
    Ifx_DMA_CH_CHCFGR lDmaRxChcfgrRegVal;
    uint32 lTxSrcSre;
    uint32 lTxSrcTos;
    uint32 lTxSrcPri;
    uint32 lRxSrcSre;
    uint32 lRxSrcTos;
    uint32 lRxSrcPri;
    uint32 lTxSrcRegVal;
    uint32 lRxSrcRegVal;
    #endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_ON) */
    Std_ReturnType Result;
    uint8 lQspiChannel;
    uint8 lSbcPos;

    Result = E_NOT_OK;

    /* Check given configuration: */
    if(ConfigPtr != NULL_PTR)
    {
        /* Initialize internal data: */
        HtxTLF35584Qspi_Data.CfgPtr = ConfigPtr;
        HtxTLF35584Qspi_Data.QspiModptr = HtxTLF35584Qspi_ModConfigRoot.QspiModule;
        HtxTLF35584Qspi_Data.TxDmaChannel= HtxTLF35584Qspi_ModConfigRoot.TxDmaChannel;
        HtxTLF35584Qspi_Data.RxDmaChannel= HtxTLF35584Qspi_ModConfigRoot.RxDmaChannel;
        HtxTLF35584Qspi_Data.TxSrcReg = HtxTLF35584Qspi_ModConfigRoot.SrcTxRegister;
        HtxTLF35584Qspi_Data.RxSrcReg = HtxTLF35584Qspi_ModConfigRoot.SrcRxRegister;
        HtxTLF35584Qspi_Data.TxBufPtr = NULL_PTR;
        HtxTLF35584Qspi_Data.RxBufPtr = NULL_PTR;
        HtxTLF35584Qspi_Data.ErrorFlags = 0U;
        HtxTLF35584Qspi_Data.Count = 0U;
        HtxTLF35584Qspi_Data.DataCount = 0U;
        HtxTLF35584Qspi_Data.Bacon.U = 0U;
        HtxTLF35584Qspi_Data.CallbackFunc= NULL_PTR;

        /* Enable QSPI module clock: */
        if(E_OK == HtxTLF35584Qspi_lEnQspiClock())
        {
            /* Setup QSPI: */
            /* Input selection: */
            lPiselRegVal.U = 0U;
            lPiselRegVal.B.MRIS = HtxTLF35584Qspi_ModConfigRoot.RcvInputSel;
            HtxTLF35584Qspi_Data.QspiModptr->PISEL.U = lPiselRegVal.U;

            /* Global configuration: */
            lGlobalconRegVal.U = HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.TQ = HtxTLF35584Qspi_ModConfigRoot.ModTimeQuantum;
            lGlobalconRegVal.B.SRF = 1U;
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;

            lGlobalcon1RegVal.U = HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON1.U;
            lGlobalcon1RegVal.B.RXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFM = 1U;
            lGlobalcon1RegVal.B.RXFM = 1U;
            #if(HTXTLF35584QSPI_DMAUSED == STD_ON)
            lGlobalcon1RegVal.B.TXEN = 1U;
            #else
            lGlobalcon1RegVal.B.TXEN = 0U;
            #endif
            lGlobalcon1RegVal.B.RXEN = 1U;

            /* Enable following errors */
            /* Unexpected Configuration Error: 0x2,
               TXFIFO overflow (software error): 0x8,
               020H RXFIFO overflow REN: 0x20,
               RXFIFO underflow (software error): 0x40 */
            lGlobalcon1RegVal.B.ERRORENS = HTXTLF35584_QSPI_GLOCON1_ERR_EN;
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON1.U = lGlobalcon1RegVal.U;
            lEconRegVal.U = 0U;
            lEconRegVal.B.Q = ConfigPtr->ChTimeQuantum;
            lEconRegVal.B.A = ConfigPtr->BitSeg1;
            lEconRegVal.B.B = ConfigPtr->BitSeg2;
            lEconRegVal.B.C = ConfigPtr->BitSeg3;
            lEconRegVal.B.CPH = ConfigPtr->ClockPhase;
            lEconRegVal.B.CPOL = ConfigPtr->ClockPol;
            lEconRegVal.B.PAREN = ConfigPtr->ParityEn;
            HtxTLF35584Qspi_Data.QspiModptr->ECON[(ConfigPtr->Channel % HTXTLF35584_NUM_ECON_REG)].U = lEconRegVal.U;

            /* Slave select output configuration: */
            lSlsoActiveLevel = ((uint32)ConfigPtr->SlsoActiveLevel & 1U);
            lQspiChannel = (ConfigPtr->Channel);
            lSbcPos = (lQspiChannel + HTXTLF35584QSPI_SSOC_OENPOS);
            lShiftedSbcPos = (uint32)((uint32)1U << lSbcPos);
            lActiveLevelPos = (uint32)(lSlsoActiveLevel << lQspiChannel);
            lSsoc = (uint32)(lActiveLevelPos | lShiftedSbcPos);
            HtxTLF35584Qspi_Data.QspiModptr->SSOC.U = lSsoc;

            /* Pre-calculate BACON value: */
            HtxTLF35584Qspi_Data.Bacon.B.LAST = 1U;
            HtxTLF35584Qspi_Data.Bacon.B.IPRE = ConfigPtr->IdlePrescaler;
            HtxTLF35584Qspi_Data.Bacon.B.IDLE = ConfigPtr->IdleDelay;
            HtxTLF35584Qspi_Data.Bacon.B.LPRE = ConfigPtr->LeadPrescaler;
            HtxTLF35584Qspi_Data.Bacon.B.LEAD = ConfigPtr->LeadDelay;
            HtxTLF35584Qspi_Data.Bacon.B.TPRE = ConfigPtr->TrailPrescaler;
            HtxTLF35584Qspi_Data.Bacon.B.TRAIL = ConfigPtr->TrailDelay;
            HtxTLF35584Qspi_Data.Bacon.B.MSB = ConfigPtr->MsbFirst;
            HtxTLF35584Qspi_Data.Bacon.B.DL = ConfigPtr->DataLength;
            HtxTLF35584Qspi_Data.Bacon.B.CS = ConfigPtr->Channel;

            /* Select peripheral as the clock for Shift register */
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.B.CLKSEL = 1U;

            /* Put QSPI0 module into RUN mode: */
            lGlobalconRegVal.U = HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.EN = 1U;
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;

            #if(HTXTLF35584QSPI_DMAUSED == STD_ON)
            /* DMA init */
            /* Tx Channel */
            /* Channel width is set to 32 bit
               One DMA transfer will move 1 move
               Channel mode to Single Mode operation
               Reset Request Only After Transaction not set
               Peripheral Request Select set to hardware request
               DMA priority set to high */
            lDmaTxChcfgrRegVal.U = MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.U;
            lDmaTxChcfgrRegVal.B.CHDW = HTXTLF35584_DMA_CHDW;
            lDmaTxChcfgrRegVal.B.BLKM = 0U;
            lDmaTxChcfgrRegVal.B.CHMODE = 0U;
            lDmaTxChcfgrRegVal.B.RROAT = 0U;
            lDmaTxChcfgrRegVal.B.PRSEL = 0U;
            MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.U = lDmaTxChcfgrRegVal.U;

            /* Source Address Modification Factor set to 0
               Increment of Source Address set to addition of 1 offset
               Circular Buffer is disabled
               destination address is not changed
               Source address set to the drivers Tx buffer
               Destination address set to TxFIFO of selected Qspi module */
            lDmaTxAdicrRegVal.U = MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].ADICR.U;
            lDmaTxAdicrRegVal.B.SMF = 0U;
            lDmaTxAdicrRegVal.B.INCS = 1U;
            lDmaTxAdicrRegVal.B.CBLS = 0U;
            lDmaTxAdicrRegVal.B.SCBE = 0U;
            lDmaTxAdicrRegVal.B.DMF = 0U;
            lDmaTxAdicrRegVal.B.INCD = 0U;
            lDmaTxAdicrRegVal.B.CBLD = 0U;
            lDmaTxAdicrRegVal.B.DCBE = 1U;
            lDmaTxAdicrRegVal.B.INTCT = HTXTLF35584_DMA_INTCT;
            lDmaTxAdicrRegVal.B.IRDV = 0U;
            MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].ADICR.U = lDmaTxAdicrRegVal.U;

            /* Rx Channel */
            /* Channel width is set to 32 bit, One DMA transfer will move 1 move
               Channel mode to Single Mode operation. Reset Request Only After Transaction not set
               Peripheral Request Select set to hardware request DMA priority set to high */
            lDmaRxChcfgrRegVal.U = MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.U;
            lDmaRxChcfgrRegVal.B.CHDW = HTXTLF35584_DMA_CHDW;
            lDmaRxChcfgrRegVal.B.BLKM = 0U;
            lDmaRxChcfgrRegVal.B.CHMODE = 0U;
            lDmaRxChcfgrRegVal.B.RROAT = 0U;
            lDmaRxChcfgrRegVal.B.PRSEL = 0U;
            MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.U = lDmaRxChcfgrRegVal.U;

            /* Destination Address Modification Factor set to 0
               Increment of destination Address set to addition of 1 offset
               Circular Buffer is disabled
               Source address is not changed
               Source address set to the drivers RxFIFO of selected Qspi module buffer
               Destination address set to Rx buffer of the driver */
            lDmaRxAdicrRegVal.U = MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].ADICR.U;
            lDmaRxAdicrRegVal.B.DMF = 0U;
            lDmaRxAdicrRegVal.B.INCD = 1U;
            lDmaRxAdicrRegVal.B.CBLD = 0U;
            lDmaRxAdicrRegVal.B.DCBE = 0U;
            lDmaRxAdicrRegVal.B.SMF = 0U;
            lDmaRxAdicrRegVal.B.INCS = 0U;
            lDmaRxAdicrRegVal.B.CBLS = 0U;
            lDmaRxAdicrRegVal.B.SCBE = 1U;
            lDmaRxAdicrRegVal.B.INTCT = HTXTLF35584_DMA_INTCT;
            lDmaRxAdicrRegVal.B.IRDV = 0U;
            MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].ADICR.U = lDmaRxAdicrRegVal.U;

            /* Set up Qspi interrupt for DMA channels */
            /* Enable service request , set type of service to DMA and set the
               priority to the DMA Channel used */
            lTxSrcSre = (uint32)((uint32)1U << HTXTLF35584QSPI_SRC_SRE_POS);
            lTxSrcTos = (uint32)((uint32)HTXTLF35584QSPI_DMA_SER << HTXTLF35584QSPI_SRC_TOS_POS);
            lTxSrcPri = (uint32)HtxTLF35584Qspi_Data.TxDmaChannel;
            lTxSrcRegVal = (lTxSrcSre | lTxSrcTos | lTxSrcPri);
            HtxTLF35584Qspi_Data.TxSrcReg->U = (uint32)lTxSrcRegVal;

            lRxSrcSre = (uint32)((uint32)1U << HTXTLF35584QSPI_SRC_SRE_POS);
            lRxSrcTos = (uint32)((uint32)HTXTLF35584QSPI_DMA_SER << HTXTLF35584QSPI_SRC_TOS_POS);
            lRxSrcPri = (uint32)HtxTLF35584Qspi_Data.RxDmaChannel;
            lRxSrcRegVal = (lRxSrcSre | lRxSrcTos | lRxSrcPri);
            HtxTLF35584Qspi_Data.RxSrcReg->U = (uint32)lRxSrcRegVal;

            #endif /* HTXTLF35584QSPI_DMAUSED */

            Result = E_OK;
        } /* if(E_OK == HtxTLF35584Qspi_lEnQspiClock()) */
    } /* if(ConfigPtr != NULL_PTR) */
    return Result;
} /* End of HtxTLF35584Qspi_Init() */


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
void HtxTLF35584Qspi_DeInit(void)
{
    volatile uint32 lDummy;
    volatile Ifx_QSPI* QspiModPtr = HtxTLF35584Qspi_Data.QspiModptr;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    volatile Ifx_SRC_SRCR* TxSrcReg = HtxTLF35584Qspi_Data.TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg = HtxTLF35584Qspi_Data.RxSrcReg;
    const HtxTLF35584Qspi_ChConfigType* ConfigPtr = HtxTLF35584Qspi_Data.CfgPtr;

    /* Reset QSPI module configuration: */
    HtxTLF35584Qspi_Data.QspiModptr->PISEL.U = HTXTLF35584QSPI_PISEL_RESVAL;
    HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U = HTXTLF35584QSPI_GLOBCON_RESVAL;
    HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON1.U = HTXTLF35584QSPI_GLOBCON1_RESVAL;
    HtxTLF35584Qspi_Data.QspiModptr->ECON[ConfigPtr->Channel % HTXTLF35584_NUM_ECON_REG].U = HTXTLF35584QSPI_ECON_RESVAL;
    HtxTLF35584Qspi_Data.QspiModptr->SSOC.U = HTXTLF35584QSPI_SSOC_RESVAL;
    HtxTLF35584Qspi_Data.DataCount = 0U;
    HtxTLF35584Qspi_Data.Count = 0U;

    /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
       object type and a pointer to a different object type is to fetch the data in the address of type void */
    HTXSTPIF_WRITE_CEINIT_PROTREG32((volatile void*)&(QspiModPtr->CLC.U),HTXTLF35584_DIS_CLC);
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    lDummy = QspiModPtr->CLC.U;

    HTXSTPIF_UNUSED_PARAMETER(lDummy);

    /* Disable interrupts: */
    TxSrcReg->U = 0U;
    RxSrcReg->U = 0U;

    /* If DMA is configured, disable DMA channels also */
    #if(HTXTLF35584QSPI_DMAUSED == STD_ON)
    /* disable DMA channel hardware requests and reset DMA channel to make it de initialized */
    /* Tx Channel */
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK) |
                                                     (((uint32)1U << IFX_DMA_TSR_DCH_OFF) | ((uint32)HTXTLF35584QSPI_DMA_TSR_RST)));
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].SADR.U = 0U;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].DADR.U = 0U;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].ADICR.U = 0U;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.U = 0U;

    /*Rx Channel*/
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK) |
                                                     (((uint32)1U << IFX_DMA_TSR_DCH_OFF) | ((uint32)HTXTLF35584QSPI_DMA_TSR_RST)));
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].SADR.U = 0U;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].DADR.U = 0U;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].ADICR.U = 0U;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.U = 0U;

    #endif /* HTXTLF35584QSPI_DMAUSED */

} /* End of HtxTLF35584Qspi_DeInit() */


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
void HtxTLF35584Qspi_TxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint8 Count
)
{
    /* Init data structure required for Async communication */
    HtxTLF35584Qspi_Data.TxBufPtr = TxBuf;
    HtxTLF35584Qspi_Data.RxBufPtr = RxBuf;
    HtxTLF35584Qspi_Data.ErrorFlags = 0U;
    HtxTLF35584Qspi_Data.DataCount = 0U;
    HtxTLF35584Qspi_Data.Count = Count;
    
    /* This API will be called only by TLF driver and it does not rely on callback */
    HtxTLF35584Qspi_Data.CallbackFunc = NULL_PTR;

    /* Clear QSPI error flags: */
    HtxTLF35584Qspi_Data.QspiModptr->FLAGSCLEAR.U = HTXTLF35584QSPI_FLGCL_ERRMASK;

    #if(HTXTLF35584QSPI_DMAUSED == STD_ON)

    /* This function Resets the DMA Tx and Rx channels and
       clears the QSPi Rx FIFO */
    HtxTLF35584Qspi_lQspiDmaChRst();
    /* Set source ,destination address and transfer count of Tx DMA channel */
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the SFR is stored as an integer */
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].SADR.U = (uint32)HtxTLF35584Qspi_Data.TxBufPtr;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].DADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->MIXENTRY.U);

    MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.B.TREL = Count;

    /* Set source ,destination address and transfer count of Rx DMA channel */
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the SFR is stored as an integer */
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].SADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->RXEXIT.U);
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].DADR.U = (uint32)HtxTLF35584Qspi_Data.RxBufPtr;
    MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.B.TREL = Count;
    /* Start transmission: */
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));

    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));
    
    /* Restore the BACON value. BACON might have been changed by _CustTxRx API */
    HtxTLF35584Qspi_Data.QspiModptr->BACONENTRY.U = HtxTLF35584Qspi_Data.Bacon.U;
    
    //HtxTLF35584Qspi_Data.TxSrcReg->B.SETR = 1U;
    #else

    /* Restore the BACON value. BACON might have been changed by _CustTxRx API */
    HtxTLF35584Qspi_Data.QspiModptr->BACONENTRY.U = HtxTLF35584Qspi_Data.Bacon.U;

    /* Start transmission:Push first data to Tx FIFO */
    HtxTLF35584Qspi_Data.QspiModptr->DATAENTRY[0U].U = HtxTLF35584Qspi_Data.TxBufPtr[0U];

    #endif /* #ifdef HTXTLF35584QSPI_DMAUSED */

} /* End of HtxTLF35584Qspi_TxRx() */


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
Std_ReturnType HtxTLF35584Qspi_CustTxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint32 BACONRegisterValue,
    uint8 Count
)
{
    uint32 lChipSelectOfCust;
    uint32 lChipSelectOfTLF;
    Std_ReturnType Result;

    /* Get Chip select of customer peripheral and TLF35584 */
    lChipSelectOfCust = BACONRegisterValue & HTXTLF35584QSPI_BACON_CSMASK;
    lChipSelectOfTLF = HtxTLF35584Qspi_Data.Bacon.U & HTXTLF35584QSPI_BACON_CSMASK;
    Result = E_NOT_OK;

    /* Accept the request only if customer peripheral is connected to a different chip select signal */
    if(lChipSelectOfCust != lChipSelectOfTLF)
    {
        /* Application should ensure that usage of this API for SPI communication with
           some other device does not affect timing requirement for communication with TLF Watchodog */

        /* Push user specific configuration into TX FIFO: */
        HtxTLF35584Qspi_Data.QspiModptr->BACONENTRY.U = BACONRegisterValue;

        /* Clear QSPI error flags: */
        HtxTLF35584Qspi_Data.QspiModptr->FLAGSCLEAR.U = HTXTLF35584QSPI_FLGCL_ERRMASK;

        /* Start asynchronous transmission */
        HtxTLF35584Qspi_Data.TxBufPtr = TxBuf;
        HtxTLF35584Qspi_Data.RxBufPtr = RxBuf;
        HtxTLF35584Qspi_Data.ErrorFlags = 0U;
        HtxTLF35584Qspi_Data.DataCount = 0U;
        HtxTLF35584Qspi_Data.Count = Count;

        /* Check DMA/Interrupt mode selection */
        #if(HTXTLF35584QSPI_DMAUSED == STD_ON)

        /* Start transmission: */
        /* Set source ,destination address and transfer count of Tx DMA channel */
        /* MISRA2012_RULE_11_4_JUSTIFICATION:
           The address of the SFR is stored as an integer */
        MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].SADR.U = (uint32)HtxTLF35584Qspi_Data.TxBufPtr;
        MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].DADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->MIXENTRY.U);

        /* Configure the DMA transfer count */
        MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.B.TREL = Count;

        /* Set source ,destination address and transfer count of Rx DMA channel */
        /* MISRA2012_RULE_11_4_JUSTIFICATION:
           The address of the SFR is stored as an integer */
        MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].SADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->RXEXIT.U);
        MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].DADR.U = (uint32) HtxTLF35584Qspi_Data.RxBufPtr;
        MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.B.TREL = Count;

        /* Start transmission: */
        MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                         | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));
        MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                         | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));
        HtxTLF35584Qspi_Data.TxSrcReg->B.SETR = 1U;

        #else /* #ifdef HTXTLF35584QSPI_DMAUSED */

        /* This API will be called only by application software and it relies on
           callback only when ISR is used. When DMA is used, this callback function will not be used */
        HtxTLF35584Qspi_Data.CallbackFunc = HtxTLF35584Qspi_ModConfigRoot.UserFunc;

        /* Start transmission:Push first data to Tx FIFO */
        HtxTLF35584Qspi_Data.QspiModptr->DATAENTRY[0U].U = HtxTLF35584Qspi_Data.TxBufPtr[0U];

        #endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_ON) */

        Result = E_OK;
    }
    return Result;
} /* EOF HtxTLF35584Qspi_CustTxRx() */


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
Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error)
{
    Std_ReturnType Result = E_NOT_OK;

    #if(HTXTLF35584QSPI_DMAUSED == STD_ON)
    /* Read error information */
    *Error = HtxTLF35584Qspi_Data.QspiModptr->STATUS.U & HTXTLF35584QSPI_STAT_ERRFLGMASK;
    #else
    /* ErrorFlags value will be updated in RxISR */
    *Error = HtxTLF35584Qspi_Data.ErrorFlags;
    #endif

    /* Check if any error bits are set */
    if(*Error == 0U)
    {
        /* No Error */
        #if(HTXTLF35584QSPI_DMAUSED == STD_ON)
        /* Check the transfer count of DMA channels to know if transfer is complete */
        if(MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCSR.B.ICH == 1U)
        {
            if(MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCSR.B.ICH == 1U)
            {
                /* Clear ICH Bit for Tx and Rx channels */
                MODULE_DMA.CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCSR.B.CICH = 1U;
                MODULE_DMA.CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCSR.B.CICH = 1U;
                HtxTLF35584Qspi_Data.DataCount = 0U;
                Result = E_OK;
            }
        }
        #else
        /* Check if transfer is complete */
        if(HtxTLF35584Qspi_Data.DataCount == HtxTLF35584Qspi_Data.Count)
        {
            /* Reset count */
            HtxTLF35584Qspi_Data.DataCount = 0U;
            /* Transfer is complete */
            Result = E_OK;
        }
        #endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_ON) */
    }
    else
    {
        /* Error found, Cancel pending asynchronous data transfer.
           SPI communication error has occurred or a data transfer timed out */
        HtxTLF35584Qspi_Data.Count = 0U;
        Result = E_NOT_OK;
    }

    return Result;
} /* End of HtxTLF35584Qspi_RxDone() */


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
void HtxTLF35584Qspi_IsrTxRx(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    volatile Ifx_QSPI* QspiModPtr;
    volatile Ifx_SRC_SRCR* RxSrcReg;
    HtxTLF35584Qspi_UserCbkFuncType CallbackFunction;
    uint32 lRxData;

    /* Initialise the SFR addresses */
    QspiModPtr = HtxTLF35584Qspi_Data.QspiModptr;
    RxSrcReg = HtxTLF35584Qspi_Data.RxSrcReg;

    /* Check if Rx interrupt has occurred */
    if(QspiModPtr->STATUS.B.RXF == 1U)
    {
        /* Clear Rx interrupt request bit */
        RxSrcReg->B.CLRR = 1U;

        /* Clear RX FIFO event: */
        QspiModPtr->FLAGSCLEAR.U = HTXTLF35584QSPI_FLGCL_RXCBIT;

        /* Store the received data in local variable */
        lRxData = QspiModPtr->RXEXIT.U;

        /* Update the recieve buffer with receive data only if the data count is within the limits */
        if(HtxTLF35584Qspi_Data.DataCount < HtxTLF35584Qspi_Data.Count)
        {
            HtxTLF35584Qspi_Data.RxBufPtr[HtxTLF35584Qspi_Data.DataCount] = lRxData;

            /* Increment current data count received */
            HtxTLF35584Qspi_Data.DataCount++;
        }

        if(HtxTLF35584Qspi_Data.DataCount < HtxTLF35584Qspi_Data.Count)
        {
            QspiModPtr->DATAENTRY[0].U = HtxTLF35584Qspi_Data.TxBufPtr[HtxTLF35584Qspi_Data.DataCount];
        }

        /* Update error flags */
        HtxTLF35584Qspi_Data.ErrorFlags |= QspiModPtr->STATUS.U & HTXTLF35584QSPI_STAT_ERRFLGMASK;

        /* Check if callback function is present. If present, it means that this
           ISR has occurred because of a _CustTxRx API and callback has to be invoked */
        if(HtxTLF35584Qspi_Data.CallbackFunc != NULL_PTR)
        {
            /* Call the callback function, if transfer is complete or any error has occurred */
            if((HtxTLF35584Qspi_Data.DataCount == HtxTLF35584Qspi_Data.Count) ||
               (HtxTLF35584Qspi_Data.ErrorFlags != 0U))
            {
                /* Notify application software that _CustTxRx API is processed */
                CallbackFunction = HtxTLF35584Qspi_Data.CallbackFunc;
                CallbackFunction();

                /* CustTxRx is processed. Set the callback to NULL, so that
                   it doesn't get called when _TxRx API is processed */
                HtxTLF35584Qspi_Data.CallbackFunc = NULL_PTR;
            }
        } /* if(HtxTLF35584Qspi_Data.CallbackFunc != NULL_PTR) */
    }
} /* End of HtxTLF35584Qspi_IsrTxRx() */
#endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_OFF) */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxTLF35584Qspi_lEnQspiClock(void)
 *
 * \description   : This function enables clock gating to the QSPI module
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK - QSPI clock enable succeeded
 *                  E_NOT_OK - QSPI clock enable timed out
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2575
 *
 ******************************************************************************/
static Std_ReturnType HtxTLF35584Qspi_lEnQspiClock(void)
{
    uint32 lClc;
    uint32 lClcDisrBit = 0U;
    uint32 ltempCLC = 0U;
    uint32 Index;
    Std_ReturnType Result;
    Std_ReturnType LoopBreakFlag;

    Result = E_NOT_OK;
    LoopBreakFlag = E_NOT_OK;

    /* QSPI clock is disabled? */
    if((HtxTLF35584Qspi_Data.QspiModptr->CLC.U & HTXTLF35584QSPI_CLCDISSBIT) > 0U)
    {
        lClcDisrBit = (uint32)(~HTXTLF35584QSPI_CLCDISRBIT);

        /* Enable QSPI clock: */
        ltempCLC = HtxTLF35584Qspi_Data.QspiModptr->CLC.U;
        ltempCLC = ltempCLC & lClcDisrBit;

        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HTXSTPIF_WRITE_CEINIT_PROTREG32((volatile void*)&(HtxTLF35584Qspi_Data.QspiModptr->CLC.U),(uint32)ltempCLC);

        /* Wait for clock enable to become reflected by status bit: */
        for(Index = 0u; ((Index < HTXTLF35584QSPI_CLK_ENTIMEOUT) && (LoopBreakFlag == E_NOT_OK) ); Index++)
        {
            lClc = HtxTLF35584Qspi_Data.QspiModptr->CLC.U & HTXTLF35584QSPI_CLCDISSBIT;
            if(0U == lClc)
            {
                LoopBreakFlag = E_OK;
            }
        }
        /* QSPI clock is enabled? */
        if((HtxTLF35584Qspi_Data.QspiModptr->CLC.U & HTXTLF35584QSPI_CLCDISSBIT) == 0U)
        {
            Result = E_OK;
        }
        HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.B.RESETS = HTXTLF35584_QSPI_RESET;
    }
    else
    {
        Result = E_OK;
    }
    return Result;
} /* End of HtxTLF35584Qspi_lEnQspiClock() */


#if(HTXTLF35584QSPI_DMAUSED == STD_ON)
/*******************************************************************************
 *
 * \function      : static void HtxTLF35584Qspi_lQspiDmaChRst(void)
 *
 * \description   : This function Resets the DMA Tx and Rx channels and
 *                  clears the QSPi Rx FIFO
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2576
 *
 ******************************************************************************/
static void HtxTLF35584Qspi_lQspiDmaChRst(void)
{
    uint32 lRstTimeout;
    volatile uint32 lDummyFifoRead = 0U;
    uint8 lLoopCount;
    volatile uint8 lFifoLevel;

    /* disable the DMA Tx channel hardware requests by setting TSRz.DCH = 1 */
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_DCH_OFF));
    /* Resetting of Tx channel by Writing a 1 to TSRz.RST */
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)HTXTLF35584QSPI_DMA_TSR_RST));
    /* Waiting until TSRz.RST = 0 with time-out to indicate reset has completed */
    lRstTimeout = 0U;
    do
    {
        lRstTimeout++; /* Time out condition for channel reset*/
    }while((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.TxDmaChannel].B.RST != 0U) && (lRstTimeout < HTXTLF35584QSPI_DMA_TSR_RST_TIMEOUT));

    lRstTimeout = 0U;
    /* disable the DMA Tx channel hardware requests by setting TSRz.DCH = 1 */
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_DCH_OFF));
    /* Resetting of Tx channel by Writing a 1 to TSRz.RST */
    MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & HTXTLF35584QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)HTXTLF35584QSPI_DMA_TSR_RST));
    /* Waiting until TSRz.RST = 0 with time-out to indicate reset has completed */
    do
    {
        lRstTimeout++; /* Time out condition for channel reset */
    } while ((MODULE_DMA.TSR[HtxTLF35584Qspi_Data.RxDmaChannel].B.RST != 0U) && 
             (lRstTimeout < HTXTLF35584QSPI_DMA_TSR_RST_TIMEOUT));

    /* QSPI RxFIFO needs to be flushed by reading into the dummy variable */
    lFifoLevel = (uint8)HtxTLF35584Qspi_Data.QspiModptr->STATUS.B.RXFIFOLEVEL;
    for (lLoopCount = 0U; lLoopCount < lFifoLevel; lLoopCount++)
    {
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to flush the receive buffer (destructive read) */
        lDummyFifoRead = HtxTLF35584Qspi_Data.QspiModptr->RXEXIT.U;
    }

    /* To remove unused parameter warning */
    HTXSTPIF_UNUSED_PARAMETER(lDummyFifoRead);

} /* End of HtxTLF35584Qspi_lQspiDmaChRst() */

#endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_ON) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584Qspi_MemMap.h"

/* EOF */
