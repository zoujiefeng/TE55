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
** FILENAME : HtxDtsResultB.h                                                 **
**                                                                            **
** REVISION : \$Revision: 26580 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-10-18 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : This file contains the function declaration for the          **
**               temperature sensors result test.                             **
**                                                                            **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXDTSRESULTB_H
#define HTXDTSRESULTB_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
 
#include "HtxStpIf.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
 
#include "HtxTestHnd_ErrorCodes.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXDTSRESULTB_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxDtsResult_TestB
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  ESM[SW]:DTS:DTS_RESULT It triggers and evaluates
 *                  test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HtxTestHnd_TstRsltType,
 *                  HTXDTSRESULT_B_PASSED - The test passed
 *                  HTXDTSRESULT_B_FAILED_ERR_DIFF - The test failed as the
 *                  difference in temperature is more than the threshold (9)
 *
 *******************************************************************************
 *
 * \service id:   : 0x04
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Reentrant
 *
 * \pre           : The DTSC must be enabled
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2193
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2191
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2192
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1639
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1636
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2194
 *
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxDtsResult_TestB
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXDTSRESULTB_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"


#endif /* HTXDTSRESULT_H*/

/* EOF */
