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
** FILENAME : HtxSmuAliveAlarm.h                                              **
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
** DESCRIPTION : <brief description>                                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXSMUALIVEALARM_H
#define HTXSMUALIVEALARM_H

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
#define HTXSMUALIVEALARM_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxSmuAliveAlarm_Test
 *                  (
 *                    const uint8 ParamSetIndex,
 *                    const uint8 TstSeed,
 *                    uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  ESM[SW]:SMU:ALIVE_ALARM_TEST. It triggers and evaluates
 *                  test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HTXSMUALIVEALARM_PASSED - The test passed
 *                  HTXSMUALIVEALARM_ERR_ALM_STS - Test Failed due to SMU ALM flag not set
 *                  HTXSMUALIVEALARM_ERR_TRIG - Failed due to error in triggering the test
 *                  HTXSMUALIVEALARM_PREV_ALM_STS - Test failed due to previous ALM set
 *                  HTXSMUALIVEALARM_ERR_SMU_RUN - Test failed due to invalid SMU state
 *
 *******************************************************************************
 *
 * \service id:   : 0x0F
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : SMU_core should be in the START state.
 *                  Stdby_SMU shall be disabled
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2226
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2225
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1724
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1727
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1726
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxSmuAliveAlarm_Test
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
#define HTXSMUALIVEALARM_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

#endif /* HTXSMUALIVEALARM_H */

/* EOF */
