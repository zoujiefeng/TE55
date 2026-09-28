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
** FILENAME : HtxFwCheck_Cfg.c                                                **
**                                                                            **
** REVISION : \$Revision: 28351 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-27, 15:18:15                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxFwCheck configuration file                                **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "HtxFwCheck.h"

/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

const HtxFwCheck_ConfigSetType HtxFwCheck_kConfigSet[HTXFWCHECK_CFG_COUNT] =
{
    {
        0xe7670e33U,  /* HtxFwCheck_CrcColdPORST */
        0x42b64e98U,  /* HtxFwCheck_CrcStdbyExit */
        0x18838931U,  /* HtxFwCheck_CrcWarmPORST */
        0xb8b24b70U,  /* HtxFwCheck_CrcSysReset  */
        0x8b649565U,  /* HtxFwCheck_CrcApplRstGeth1Adas0 */
        0x4a1a6ba2U,  /* HtxFwCheck_CrcApplRstGeth0Adas0 */
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* EOF */
