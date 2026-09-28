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
** FILENAME : HtxSfrTstCmp.h                                                  **
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
**  DESCRIPTION  : SFR Compare Test Header File                               **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXSFRTSTCMP_H
#define HTXSFRTSTCMP_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"
#include "HtxTestHnd_ErrorCodes.h"
#include "HtxSfrTst_Cfg.h"


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
#define HTXSFRTSTCMP_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxSfrTst_TestCmp
 *                  (
 *                      const uint8 ParamSetIndex,
 *                      const uint8 TstSeed,
 *                      uint32* const TstSignature
 *                  )
 *
 * \description   : This function verifies the SFR contents.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Signature generated by the test
 *
 * \return        : Test result
 *
 *******************************************************************************
 *
 * \service id:   : 0x0D
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2217
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2218
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2195
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1716
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2220
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2219
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2221
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxSfrTst_TestCmp
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
#define HTXSFRTSTCMP_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"


#endif /* HTXSFRTSTCMP_H */

/* EOF */
