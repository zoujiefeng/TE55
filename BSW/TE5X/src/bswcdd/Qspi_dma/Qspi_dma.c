/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxDma_reg.h"
#include "IfxDma_bf.h"
#include "IfxQspi_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "Qspi_dma.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* QSPIx_CLC bits: */
#define QSPI_CLCDISRBIT           ((uint32)0x00000001U)
#define QSPI_CLCDISSBIT           ((uint32)0x00000002U)

/* QSPIx_BACON bits: */
/*Reset value of the bit*/
#define QSPI_BACON_CSMASK         ((uint32)0xF0000000U)

/* QSPIx SSOC bits: */
#define QSPI_SSOC_OENPOS          (16U)

/* QSPIx FLAGSCLEAR bits: */
#define QSPI_FLGCL_ERRMASK        ((uint32)0x000001FFU)

/* QSPIx_STATUS bits: */
#define QSPI_STAT_ERRFLGMASK      ((uint32)0x000001FFU)

/* QSPIx SFR reset values: */
#define QSPI_PISEL_RESVAL         ((uint32)0x00000000U)
#define QSPI_GLOBCON_RESVAL       ((uint32)0x000F30FFU)
#define QSPI_GLOBCON1_RESVAL      ((uint32)0x00050000U)
#define QSPI_ECON_RESVAL          ((uint32)0x00001450U)
#define QSPI_SSOC_RESVAL          ((uint32)0x00000000U)

/* Time-out for enabling the QSPI clock: */
#define QSPI_CLK_ENTIMEOUT        ((uint32)0x00000100U)

/* SRC bits */
#define QSPI_SRC_SRE_POS          (10U)
#define QSPI_SRC_TOS_POS          (11U)

/* DMA_TSRz register: DCH,ECH,RST bit positions */
#define QSPI_DMA_TSR_RST          ((uint32)1U)
#define QSPI_DMA_TSR_MASK         ((uint32)0x0107030FU)
#define QSPI_DMA_TSR_RST_TIMEOUT  ((uint32)50U)

#define QSPI_DMA_SER              (1U)

#define DIS_CLC                  (0x00000001U)

/* Error enable bits for the QSPI */
#define QSPI_GLOCON1_ERR_EN      (0x6A)

#define NUM_ECON_REG             ((uint8)8U)

#define DMA_CHDW                 ((uint8)2U)

#define DMA_INTCT                ((uint8)2U)

/* QSPI GLOBALCON RESET trigger */
#define QSPI_RESET               (0x3U)

#define QSPI_DMA_NUM    3

/* QSPI working data: */
static Qspi_DataType Qspi_Data[QSPI_DMA_NUM];

/* QSPI Module configuration */
const Qspi_ModConfigType Qspi_ModConfigRoot[QSPI_DMA_NUM] =
{
   {
      &MODULE_QSPI2,  /* QSPI module 1selected */
      &SRC_QSPI2TX,   /* SRC register for Tx interrupt */
      &SRC_QSPI2RX,   /* SRC register for Rx interrupt */
      10U,            /* DMA Tx channel */
      11U,            /* DMA Rx channel */
      0U,             /* Receive input selection */
      13U,            /* 4QspiModuleTQLen */
      NULL_PTR        /* No User callback function for Qspi_CustomerTxRx()*/
   },
   {
      &MODULE_QSPI0,  /* QSPI module 1selected */
      &SRC_QSPI0TX,   /* SRC register for Tx interrupt */
      &SRC_QSPI0RX,   /* SRC register for Rx interrupt */
      12U,            /* DMA Tx channel */
      13U,            /* DMA Rx channel */
      0U,             /* Receive input selection */
      13U,            /* 4QspiModuleTQLen */
      NULL_PTR        /* No User callback function for Qspi_CustomerTxRx()*/
   },
   {
      &MODULE_QSPI0,  /* QSPI module 1selected */
      &SRC_QSPI0TX,   /* SRC register for Tx interrupt */
      &SRC_QSPI0RX,   /* SRC register for Rx interrupt */
      12U,            /* DMA Tx channel */
      13U,            /* DMA Rx channel */
      0U,             /* Receive input selection */
      13U,            /* 4QspiModuleTQLen */
      NULL_PTR        /* No User callback function for Qspi_CustomerTxRx()*/
   }
};

const Qspi_ChConfigType Qspi_ChConfigRoot[QSPI_DMA_NUM] =
{
   {
      8U,   /* Channel 8 selected */
      0U,   /* Slave select SSOC.AOL*/
      10U,  /* HtxTLF35584QspiChannelTQLen */
      1U,   /* HtxTLF35584QspiECONzBitSeg1 */
      0U,   /* HtxTLF35584QspiECONzBitSeg2 */
      1U,   /* HtxTLF35584QspiECONzBitSeg3 */
      1U,   /* Clock Phase (ECONz.CPH) */
      0U,   /* Clock Polarity (ECONz.CPOL) */
      0U,   /* Parity Enable (ECONz.PAREN) */
      0U,   /* Even parity (BACON.PARTYP) */
      1U,   /* MSB first (BACON.MSB) */
      15U,  /* 16-bits data length (BACON.DL) */
      0U,   /* Idle delay prescaler (BACON.IPRE) */
      1U,   /* Idle delay length (BACON.IDLE) */
      0U,   /* Leading delay prescaler (BACON.LPRE) */
      7U,   /* Leading delay length (BACON.LEAD) */
      0U,   /* Trailing delay prescaler (BACON.TPRE) */
      5U    /* Trailing delay length (BACON.TRAIL) */
   },
   {
      9U,   /* Channel 9 selected */
      0U,   /* Slave select SSOC.AOL*/
      1U,   /* HtxTLF35584QspiChannelTQLen */
      0U,   /* HtxTLF35584QspiECONzBitSeg1 */
      0U,   /* HtxTLF35584QspiECONzBitSeg2 */
      1U,   /* HtxTLF35584QspiECONzBitSeg3 */
      1U,   /* Clock Phase (ECONz.CPH) */
      0U,   /* Clock Polarity (ECONz.CPOL) */
      0U,   /* Parity Enable (ECONz.PAREN) */
      0U,   /* Even parity (BACON.PARTYP) */
      1U,   /* MSB first (BACON.MSB) */
      15U,  /* 16-bits data length (BACON.DL) */
      1U,   /* Idle delay prescaler (BACON.IPRE) */
      1U,   /* Idle delay length (BACON.IDLE) */
      2U,   /* Leading delay prescaler (BACON.LPRE) */
      4U,   /* Leading delay length (BACON.LEAD) */
      2U,   /* Trailing delay prescaler (BACON.TPRE) */
      4U    /* Trailing delay length (BACON.TRAIL) */
   },
   {
      9U,   /* Channel 8 selected */
      0U,   /* Slave select SSOC.AOL*/
      1U,   /* HtxTLF35584QspiChannelTQLen */
      0U,   /* HtxTLF35584QspiECONzBitSeg1 */
      0U,   /* HtxTLF35584QspiECONzBitSeg2 */
      1U,   /* HtxTLF35584QspiECONzBitSeg3 */
      0U,   /* Clock Phase (ECONz.CPH) */
      0U,   /* Clock Polarity (ECONz.CPOL) */
      0U,   /* Parity Enable (ECONz.PAREN) */
      0U,   /* Even parity (BACON.PARTYP) */
      1U,   /* MSB first (BACON.MSB) */
      23U,  /* 24-bits data length (BACON.DL) */
      1U,   /* Idle delay prescaler (BACON.IPRE) */
      1U,   /* Idle delay length (BACON.IDLE) */
      2U,   /* Leading delay prescaler (BACON.LPRE) */
      4U,   /* Leading delay length (BACON.LEAD) */
      2U,   /* Trailing delay prescaler (BACON.TPRE) */
      4U    /* Trailing delay length (BACON.TRAIL) */
   }
};


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
static Std_ReturnType Qspi_CddlEnQspiClock(uint8 eCfgIndex)
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
    if((Qspi_Data[eCfgIndex].QspiModptr->CLC.U & QSPI_CLCDISSBIT) > 0U)
    {
        lClcDisrBit = (uint32)(~QSPI_CLCDISRBIT);

        /* Enable QSPI clock: */
        ltempCLC = Qspi_Data[eCfgIndex].QspiModptr->CLC.U;
        ltempCLC = ltempCLC & lClcDisrBit;

        /* Wait for clock enable to become reflected by status bit: */
        for(Index = 0u; ((Index < QSPI_CLK_ENTIMEOUT) && (LoopBreakFlag == E_NOT_OK) ); Index++)
        {
            lClc = Qspi_Data[eCfgIndex].QspiModptr->CLC.U & QSPI_CLCDISSBIT;
            if(0U == lClc)
            {
                LoopBreakFlag = E_OK;
            }
        }
        /* QSPI clock is enabled? */
        if((Qspi_Data[eCfgIndex].QspiModptr->CLC.U & QSPI_CLCDISSBIT) == 0U)
        {
            Result = E_OK;
        }
        Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.B.RESETS = QSPI_RESET;
    }
    else
    {
        Result = E_OK;
    }
    return Result;
} /* End of HtxTLF35584Qspi_lEnQspiClock() */

void Qspi_CddlQspiDmaChRst(uint8 eCfgIndex)
{
    uint32 lRstTimeout;
    volatile uint32 lDummyFifoRead = 0U;
    uint8 lLoopCount;
    volatile uint8 lFifoLevel;

    /* disable the DMA Tx channel hardware requests by setting TSRz.DCH = 1 */
    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_DCH_OFF));
    /* Resetting of Tx channel by Writing a 1 to TSRz.RST */
    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)QSPI_DMA_TSR_RST));
    /* Waiting until TSRz.RST = 0 with time-out to indicate reset has completed */
    lRstTimeout = 0U;
    do
    {
        lRstTimeout++; /* Time out condition for channel reset*/
    }while((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].B.RST != 0U) && (lRstTimeout < QSPI_DMA_TSR_RST_TIMEOUT));

    lRstTimeout = 0U;
    /* disable the DMA Tx channel hardware requests by setting TSRz.DCH = 1 */
    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_DCH_OFF));
    /* Resetting of Tx channel by Writing a 1 to TSRz.RST */
    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)QSPI_DMA_TSR_RST));
    /* Waiting until TSRz.RST = 0 with time-out to indicate reset has completed */
    do
    {
        lRstTimeout++; /* Time out condition for channel reset */
    } while ((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].B.RST != 0U) && 
             (lRstTimeout < QSPI_DMA_TSR_RST_TIMEOUT));

    /* QSPI RxFIFO needs to be flushed by reading into the dummy variable */
    lFifoLevel = (uint8)Qspi_Data[eCfgIndex].QspiModptr->STATUS.B.RXFIFOLEVEL;
    for (lLoopCount = 0U; lLoopCount < lFifoLevel; lLoopCount++)
    {
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to flush the receive buffer (destructive read) */
        lDummyFifoRead = Qspi_Data[eCfgIndex].QspiModptr->RXEXIT.U;
    }

    /* To remove unused parameter warning */
    (void)(lDummyFifoRead);
} /* End of Qspi_lQspiDmaChRst() */

Std_ReturnType Qspi_CddInit(uint8 eCfgIndex)
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
    Std_ReturnType Result;
    uint8 lQspiChannel;
    uint8 lSbcPos;

    Result = E_NOT_OK;
    const Qspi_ChConfigType* const ConfigPtr = &Qspi_ChConfigRoot[eCfgIndex];

    /* Check given configuration: */
    if(ConfigPtr != NULL_PTR)
    {
        /* Initialize internal data: */
        Qspi_Data[eCfgIndex].CfgPtr = ConfigPtr;
        Qspi_Data[eCfgIndex].QspiModptr = Qspi_ModConfigRoot[eCfgIndex].QspiModule;
        Qspi_Data[eCfgIndex].TxDmaChannel= Qspi_ModConfigRoot[eCfgIndex].TxDmaChannel;
        Qspi_Data[eCfgIndex].RxDmaChannel= Qspi_ModConfigRoot[eCfgIndex].RxDmaChannel;
        Qspi_Data[eCfgIndex].TxSrcReg = Qspi_ModConfigRoot[eCfgIndex].SrcTxRegister;
        Qspi_Data[eCfgIndex].RxSrcReg = Qspi_ModConfigRoot[eCfgIndex].SrcRxRegister;
        Qspi_Data[eCfgIndex].TxBufPtr = NULL_PTR;
        Qspi_Data[eCfgIndex].RxBufPtr = NULL_PTR;
        Qspi_Data[eCfgIndex].ErrorFlags = 0U;
        Qspi_Data[eCfgIndex].Count = 0U;
        Qspi_Data[eCfgIndex].DataCount = 0U;
        Qspi_Data[eCfgIndex].Bacon.U = 0U;
        Qspi_Data[eCfgIndex].CallbackFunc= NULL_PTR;

        /* Enable QSPI module clock: */
        if(E_OK == Qspi_CddlEnQspiClock(eCfgIndex))
        {
            /* Setup QSPI: */
            /* Input selection: */
            lPiselRegVal.U = 0U;
            lPiselRegVal.B.MRIS = Qspi_ModConfigRoot[eCfgIndex].RcvInputSel;
            Qspi_Data[eCfgIndex].QspiModptr->PISEL.U = lPiselRegVal.U;

            /* Global configuration: */
            lGlobalconRegVal.U = Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.TQ = Qspi_ModConfigRoot[eCfgIndex].ModTimeQuantum;
            lGlobalconRegVal.B.SRF = 0U;
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;

            lGlobalcon1RegVal.U = Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON1.U;
            lGlobalcon1RegVal.B.RXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFM = 1U;
            lGlobalcon1RegVal.B.RXFM = 1U;
            lGlobalcon1RegVal.B.TXEN = 1U;
            lGlobalcon1RegVal.B.RXEN = 1U;
            lGlobalcon1RegVal.B.PT2 = 6;

            /* Enable following errors */
            /* Unexpected Configuration Error: 0x2,
               TXFIFO overflow (software error): 0x8,
               020H RXFIFO overflow REN: 0x20,
               RXFIFO underflow (software error): 0x40 */
            lGlobalcon1RegVal.B.ERRORENS = 0;
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON1.U = lGlobalcon1RegVal.U;
            lEconRegVal.U = 0U;
            lEconRegVal.B.Q = ConfigPtr->ChTimeQuantum;
            lEconRegVal.B.A = ConfigPtr->BitSeg1;
            lEconRegVal.B.B = ConfigPtr->BitSeg2;
            lEconRegVal.B.C = ConfigPtr->BitSeg3;
            lEconRegVal.B.CPH = ConfigPtr->ClockPhase;
            lEconRegVal.B.CPOL = ConfigPtr->ClockPol;
            lEconRegVal.B.PAREN = ConfigPtr->ParityEn;
            Qspi_Data[eCfgIndex].QspiModptr->ECON[(ConfigPtr->Channel % NUM_ECON_REG)].U = lEconRegVal.U;

            /* Slave select output configuration: */
            lSlsoActiveLevel = ((uint32)ConfigPtr->SlsoActiveLevel & 1U);
            lQspiChannel = (ConfigPtr->Channel);
            lSbcPos = (lQspiChannel + QSPI_SSOC_OENPOS);
            lShiftedSbcPos = (uint32)((uint32)1U << lSbcPos);
            lActiveLevelPos = (uint32)(lSlsoActiveLevel << lQspiChannel);
            lSsoc = (uint32)(lActiveLevelPos | lShiftedSbcPos);
            Qspi_Data[eCfgIndex].QspiModptr->SSOC.U = lSsoc;

            /* Pre-calculate BACON value: */
            Qspi_Data[eCfgIndex].Bacon.B.LAST = 1U;
            Qspi_Data[eCfgIndex].Bacon.B.IPRE = ConfigPtr->IdlePrescaler;
            Qspi_Data[eCfgIndex].Bacon.B.IDLE = ConfigPtr->IdleDelay;
            Qspi_Data[eCfgIndex].Bacon.B.LPRE = ConfigPtr->LeadPrescaler;
            Qspi_Data[eCfgIndex].Bacon.B.LEAD = ConfigPtr->LeadDelay;
            Qspi_Data[eCfgIndex].Bacon.B.TPRE = ConfigPtr->TrailPrescaler;
            Qspi_Data[eCfgIndex].Bacon.B.TRAIL = ConfigPtr->TrailDelay;
            Qspi_Data[eCfgIndex].Bacon.B.MSB = ConfigPtr->MsbFirst;
            Qspi_Data[eCfgIndex].Bacon.B.DL = ConfigPtr->DataLength;
            Qspi_Data[eCfgIndex].Bacon.B.CS = ConfigPtr->Channel;
            
            Qspi_Data[eCfgIndex].QspiModptr->BACONENTRY.U = Qspi_Data[eCfgIndex].Bacon.U;
            /* Select peripheral as the clock for Shift register */
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.B.CLKSEL = 1U;

            /* Put QSPI0 module into RUN mode: */
            lGlobalconRegVal.U = Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.EN = 1U;
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;
            
            /* DMA init */
            /* Tx Channel */
            /* Channel width is set to 32 bit
               One DMA transfer will move 1 move
               Channel mode to Single Mode operation
               Reset Request Only After Transaction not set
               Peripheral Request Select set to hardware request
               DMA priority set to high */
            lDmaTxChcfgrRegVal.U = MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.U;
            lDmaTxChcfgrRegVal.B.CHDW = DMA_CHDW;
            lDmaTxChcfgrRegVal.B.BLKM = 0U;
            lDmaTxChcfgrRegVal.B.CHMODE = 0U;
            lDmaTxChcfgrRegVal.B.RROAT = 0U;
            lDmaTxChcfgrRegVal.B.PRSEL = 0U;
            MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.U = lDmaTxChcfgrRegVal.U;

            /* Source Address Modification Factor set to 0
               Increment of Source Address set to addition of 1 offset
               Circular Buffer is disabled
               destination address is not changed
               Source address set to the drivers Tx buffer
               Destination address set to TxFIFO of selected Qspi module */
            lDmaTxAdicrRegVal.U = MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].ADICR.U;
            lDmaTxAdicrRegVal.B.SMF = 0U;
            lDmaTxAdicrRegVal.B.INCS = 1U;
            lDmaTxAdicrRegVal.B.CBLS = 0U;
            lDmaTxAdicrRegVal.B.SCBE = 0U;
            lDmaTxAdicrRegVal.B.DMF = 0U;
            lDmaTxAdicrRegVal.B.INCD = 0U;
            lDmaTxAdicrRegVal.B.CBLD = 0U;
            lDmaTxAdicrRegVal.B.DCBE = 1U;
            lDmaTxAdicrRegVal.B.INTCT = DMA_INTCT;
            lDmaTxAdicrRegVal.B.IRDV = 0U;
            MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].ADICR.U = lDmaTxAdicrRegVal.U;

            /* Rx Channel */
            /* Channel width is set to 32 bit, One DMA transfer will move 1 move
               Channel mode to Single Mode operation. Reset Request Only After Transaction not set
               Peripheral Request Select set to hardware request DMA priority set to high */
            lDmaRxChcfgrRegVal.U = MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.U;
            lDmaRxChcfgrRegVal.B.CHDW = DMA_CHDW;
            lDmaRxChcfgrRegVal.B.BLKM = 0U;
            lDmaRxChcfgrRegVal.B.CHMODE = 0U;
            lDmaRxChcfgrRegVal.B.RROAT = 0U;
            lDmaRxChcfgrRegVal.B.PRSEL = 0U;
            MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.U = lDmaRxChcfgrRegVal.U;

            /* Destination Address Modification Factor set to 0
               Increment of destination Address set to addition of 1 offset
               Circular Buffer is disabled
               Source address is not changed
               Source address set to the drivers RxFIFO of selected Qspi module buffer
               Destination address set to Rx buffer of the driver */
            lDmaRxAdicrRegVal.U = MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].ADICR.U;
            lDmaRxAdicrRegVal.B.DMF = 0U;
            lDmaRxAdicrRegVal.B.INCD = 1U;
            lDmaRxAdicrRegVal.B.CBLD = 0U;
            lDmaRxAdicrRegVal.B.DCBE = 0U;
            lDmaRxAdicrRegVal.B.SMF = 0U;
            lDmaRxAdicrRegVal.B.INCS = 0U;
            lDmaRxAdicrRegVal.B.CBLS = 0U;
            lDmaRxAdicrRegVal.B.SCBE = 1U;
            lDmaRxAdicrRegVal.B.INTCT = DMA_INTCT;
            lDmaRxAdicrRegVal.B.IRDV = 0U;
            MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].ADICR.U = lDmaRxAdicrRegVal.U;

            /* Set up Qspi interrupt for DMA channels */
            /* Enable service request , set type of service to DMA and set the
               priority to the DMA Channel used */
            lTxSrcSre = (uint32)((uint32)1U << QSPI_SRC_SRE_POS);
            lTxSrcTos = (uint32)((uint32)QSPI_DMA_SER << QSPI_SRC_TOS_POS);
            lTxSrcPri = (uint32)Qspi_Data[eCfgIndex].TxDmaChannel;
            lTxSrcRegVal = (lTxSrcSre | lTxSrcTos | lTxSrcPri);
            Qspi_Data[eCfgIndex].TxSrcReg->U = (uint32)lTxSrcRegVal;

            lRxSrcSre = (uint32)((uint32)1U << QSPI_SRC_SRE_POS);
            lRxSrcTos = (uint32)((uint32)QSPI_DMA_SER << QSPI_SRC_TOS_POS);
            lRxSrcPri = (uint32)Qspi_Data[eCfgIndex].RxDmaChannel;
            lRxSrcRegVal = (lRxSrcSre | lRxSrcTos | lRxSrcPri);
            Qspi_Data[eCfgIndex].RxSrcReg->U = (uint32)lRxSrcRegVal;

            Result = E_OK;
        } /* if(E_OK == Qspi_lEnQspiClock()) */
    } /* if(ConfigPtr != NULL_PTR) */
    return Result;
} /* End of Qspi_Init() */

void Qspi_CddTxRx(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count)
{
    /* Init data structure required for Async communication */
    Qspi_Data[eCfgIndex].TxBufPtr = TxBuf;
    Qspi_Data[eCfgIndex].RxBufPtr = RxBuf;
    Qspi_Data[eCfgIndex].ErrorFlags = 0U;
    Qspi_Data[eCfgIndex].DataCount = 0U;
    Qspi_Data[eCfgIndex].Count = Count;

    /* This API will be called only by TLF driver and it does not rely on callback */
    Qspi_Data[eCfgIndex].CallbackFunc = NULL_PTR;

    /* Clear QSPI error flags: */
    Qspi_Data[eCfgIndex].QspiModptr->FLAGSCLEAR.U = QSPI_FLGCL_ERRMASK;

    /* This function Resets the DMA Tx and Rx channels and
       clears the QSPi Rx FIFO */
    Qspi_CddlQspiDmaChRst(eCfgIndex);
    /* Set source ,destination address and transfer count of Tx DMA channel */
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the SFR is stored as an integer */
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].SADR.U = (uint32)Qspi_Data[eCfgIndex].TxBufPtr;
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].DADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->MIXENTRY.U);

    MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.B.TREL = Count;

    /* Set source ,destination address and transfer count of Rx DMA channel */
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the SFR is stored as an integer */
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].SADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->RXEXIT.U);
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].DADR.U = (uint32)Qspi_Data[eCfgIndex].RxBufPtr;
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.B.TREL = Count;
    /* Start transmission: */
    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));

    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));

    /* Restore the BACON value. BACON might have been changed by _CustTxRx API */
    Qspi_Data[eCfgIndex].QspiModptr->BACONENTRY.U = Qspi_Data[eCfgIndex].Bacon.U;

    //Qspi_Data[eCfgIndex].TxSrcReg->B.SETR = 1U;
                                                                                                     
} /* End of Qspi_TxRx() */

void Qspi_CddTxRxShortMode(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count)
{
    /* Init data structure required for Async communication */
    Qspi_Data[eCfgIndex].TxBufPtr = TxBuf;
    Qspi_Data[eCfgIndex].RxBufPtr = RxBuf;
    Qspi_Data[eCfgIndex].ErrorFlags = 0U;
    Qspi_Data[eCfgIndex].DataCount = 0U;
    Qspi_Data[eCfgIndex].Count = Count;

    /* This API will be called only by TLF driver and it does not rely on callback */
    Qspi_Data[eCfgIndex].CallbackFunc = NULL_PTR;

    /* Clear QSPI error flags: */
    Qspi_Data[eCfgIndex].QspiModptr->FLAGSCLEAR.U = QSPI_FLGCL_ERRMASK;

    /* This function Resets the DMA Tx and Rx channels and
       clears the QSPi Rx FIFO */
    Qspi_CddlQspiDmaChRst(eCfgIndex);
    /* Set source ,destination address and transfer count of Tx DMA channel */
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the SFR is stored as an integer */
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].SADR.U = (uint32)Qspi_Data[eCfgIndex].TxBufPtr;
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].DADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->DATAENTRY);

    MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.B.TREL = Count;

    /* Set source ,destination address and transfer count of Rx DMA channel */
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the SFR is stored as an integer */
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].SADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->RXEXIT.U);
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].DADR.U = (uint32)Qspi_Data[eCfgIndex].RxBufPtr;
    MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.B.TREL = Count;
    /* Start transmission: */
    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));

    MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((MODULE_DMA.TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & QSPI_DMA_TSR_MASK)
                                                                                                     | ((uint32)1U << IFX_DMA_TSR_ECH_OFF));

    /* Restore the BACON value. BACON might have been changed by _CustTxRx API */
    Qspi_Data[eCfgIndex].QspiModptr->BACONENTRY.U = Qspi_Data[eCfgIndex].Bacon.U;

    //Qspi_Data[eCfgIndex].TxSrcReg->B.SETR = 1U;
                                                                                                     
} /* End of Qspi_TxRx() */

Std_ReturnType Qspi_CddRxDone(uint8 eCfgIndex)
{
    Std_ReturnType Result = E_NOT_OK;
    uint32 Error = 0;

    /* Read error information */
    Error = Qspi_Data[eCfgIndex].QspiModptr->STATUS.U & QSPI_STAT_ERRFLGMASK;

    /* Check if any error bits are set */
    if(Error == 0U)
    {
        /* No Error */
        /* Check the transfer count of DMA channels to know if transfer is complete */
        if(MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCSR.B.ICH == 1U)
        {
            if(MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCSR.B.ICH == 1U)
            {
                /* Clear ICH Bit for Tx and Rx channels */
                MODULE_DMA.CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCSR.B.CICH = 1U;
                MODULE_DMA.CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCSR.B.CICH = 1U;
                Qspi_Data[eCfgIndex].DataCount = 0U;
                Result = E_OK;
            }
        }
    }
    else
    {
        /* Error found, Cancel pending asynchronous data transfer.
           SPI communication error has occurred or a data transfer timed out */
        Qspi_Data[eCfgIndex].Count = 0U;
        Result = E_NOT_OK;
    }

    return Result;
} /* End of Qspi_RxDone() */


