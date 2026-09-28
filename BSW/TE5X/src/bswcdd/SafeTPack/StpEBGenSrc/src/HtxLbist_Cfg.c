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
** FILENAME : HtxLbist_Cfg.c                                                  **
**                                                                            **
** REVISION : \$Revision: 26142 $                                              **
**                                                                            **
** DATE, TIME: 2023-10-20, 10:23:03                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxLbist configuration file                                  **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "HtxLbist.h"

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
#define HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

const HtxLbist_ConfigSetType HtxLbist_kConfigSet[HTXLBIST_CFG_COUNT] =
{
    {
        /* SFR LBISTCTRL0 */
        /* LBISTCTRL0.LBISTREQRED = 0,
           LBISTCTRL0.PATTERNS = 0x100,
           LBISTCTRL0.LBISTREQ = 0 */
        0x00000400U,

        /* SFR LBISTCTRL1 */
        /* LBISTCTRL1.LBISTFREQU = 0x5,
           LBISTCTRL1.BODY = 0,
           LBISTCTRL1.SPLITSH = 4,
           LBISTCTRL1.SEED = 0x7 */
        0x54000007U,

        /* SFR LBISTCTRL2 */
        /* LBISTCTRL2.LENGTH = 0x3d */
        0x0000003dU,

        /* SFR LBISTCTRL3 */
        /* LBISTCTRL3.SIGNATURE = 0xf132ffa */
        0x0f132ffaU
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* EOF */
