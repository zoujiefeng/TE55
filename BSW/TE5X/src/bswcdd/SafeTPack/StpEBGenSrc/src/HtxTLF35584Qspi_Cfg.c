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
** FILENAME : HtxTLF35584Qspi_Cfg.c                                           **
**                                                                            **
** REVISION : \$Revision: 26773 $                                             **
**                                                                            **
** DATE, TIME: 2023-11-08, 11:12:44                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTLF35584Qspi configuration file                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "HtxTLF35584Qspi.h"

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/


/*******************************************************************************
**                      Configuration Options                                 **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584Qspi_MemMap.h"

/* QSPI Module configuration */
const HtxTLF35584Qspi_ModConfigType HtxTLF35584Qspi_ModConfigRoot =
{
    &MODULE_QSPI1,  /* QSPI module 1selected */
    &SRC_QSPI1TX,   /* SRC register for Tx interrupt */
    &SRC_QSPI1RX,   /* SRC register for Rx interrupt */
    14U,            /* DMA Tx channel */
    15U,            /* DMA Rx channel */
    0U,             /* Receive input selection */
    13U,            /* HtxTLF35584QspiModuleTQLen */
    NULL_PTR        /* No User callback function for HtxTLF35584Qspi_CustomerTxRx()*/
};

const HtxTLF35584Qspi_ChConfigType HtxTLF35584Qspi_ChConfigRoot[HTXTLF35584QSPI_CFG_COUNT] =
{
    {
        10U,   /* Channel 10 selected */
        0U,   /* Slave select SSOC.AOL*/
        1U,   /* HtxTLF35584QspiChannelTQLen */
        0U,   /* HtxTLF35584QspiECONzBitSeg1 */
        0U,   /* HtxTLF35584QspiECONzBitSeg2 */
        1U,   /* HtxTLF35584QspiECONzBitSeg3 */
        0U,   /* Clock Phase (ECONz.CPH) */
        0U,   /* Clock Polarity (ECONz.CPOL) */
        1U,   /* Parity Enable (ECONz.PAREN) */
        0U,   /* Even parity (BACON.PARTYP) */
        1U,   /* MSB first (BACON.MSB) */
        14U,  /* 15-bits data length (BACON.DL) */
        3U,   /* Idle delay prescaler (BACON.IPRE) */
        0U,   /* Idle delay length (BACON.IDLE) */
        2U,   /* Leading delay prescaler (BACON.LPRE) */
        3U,   /* Leading delay length (BACON.LEAD) */
        2U,   /* Trailing delay prescaler (BACON.TPRE) */
        7U    /* Trailing delay length (BACON.TRAIL) */
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584QSPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584Qspi_MemMap.h"

/*******************************************************************************
**                      Global Function Declarations                           **
*******************************************************************************/

/* EOF */
