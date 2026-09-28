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
** FILENAME : HtxRegMon.h                                                     **
**                                                                            **
** REVISION : \$Revision: 26925 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-11-10 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : This file contains the function declarations                 **
**               for the MTU safety flip flop test.                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXREGMON_H
#define HTXREGMON_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"
#include "HtxRegMon_Cfg.h"
#include "HtxTestHnd_ErrorCodes.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* Type definition for the REG_MONITOR test sets */
typedef struct HtxRegMon_ConfigSetType
{
    uint32 Stm1usTicks;
    #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)
    uint16 SmuSffBitMask;
    #endif
    #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
    uint8 MtuNumTests;
    const uint8 *MtuTestId;
    #endif
}HtxRegMon_ConfigSetType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

extern const HtxRegMon_ConfigSetType HtxRegMon_kConfigSet[HTXREGMON_CFG_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#define HTXREGMON_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxRegMon_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  ESM[SW]:<MOD>:REG_MONITOR_TEST and ESM[SW]:REG_MONITO_TEST
 *                  It triggers and evaluates the test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 * \param[in]     : TstSignature - Test signature to be generated by the Test
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \param[in,out] : TstSignature - Test signature to be generated by the Test
 *
 * \return        : HTXREGMON_PASSED: Test passed
 *                  HTXREGMON_SMU_TIMEOUT: Test failed due to SMU SFF test timeout
 *                  HTXREGMON_ERR_UNDEFINED: Test failed due to undefined error
 *                 (HTXREGMON_ERR_MTU_TIMEOUT_UND | Index): Test failed due to MTU SFF
 *                                                          test timeout for the SSH 'Index'
 *                  HTXREGMON_INV_PARAM_ERR: Test failed due to invalid parameter set index
 *                 (HTXREGMON_ERR_MTU_FAILED | Index): Test failed for SSH 'Index'
 *
 *******************************************************************************
 *
 * \service id:   : 0x0C
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : Modules being tested should be enabled (CLC), e.g. IOM
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1708
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2200
 *
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxRegMon_Test
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
#define HTXREGMON_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

#endif /* HTXREGMON_H*/

/* EOF */
