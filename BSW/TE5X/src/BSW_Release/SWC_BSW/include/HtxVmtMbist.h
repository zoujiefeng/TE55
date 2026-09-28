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
** FILENAME : HtxVmtMbist.h                                                   **
**                                                                            **
** REVISION : \$Revision: 28351 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-04-01 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Header file for the module HtxVmtMbist                       **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXVMTMBIST_H
#define HTXVMTMBIST_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "HtxStpIf.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxTestHnd_ErrorCodes.h"
#include "HtxVmtMbist_Cfg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

#define HTXVMTMBIST_GANG_ENABLE       (0x0011U)

#define HTXVMTMBIST_GANG_DISABLE      (0x0022U)

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* Type definition for the MTU Mbist test sets */
typedef struct HtxVmtMbist_ConfigSetType
{
    uint32 MtuMemTestMask0;
    uint32 MtuMemTestMask1;
    uint32 MtuMemTestMask2;
    const uint8 *GroupTests;
    uint8 GangSize;
    uint8 TestSize;
    uint8 MbistTestType;
} HtxVmtMbist_ConfigSetType;

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
#define HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

extern const HtxVmtMbist_ConfigSetType HtxVmtMbist_kConfigSet[HTXVMTMBIST_CFG_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"


/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxVmtMbist_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  ESM[SW]:VMT:MBIST and SMC[SW]:VMTMBIST. It triggers
 *                  and evaluates the test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HTXVMTMBIST_PASSED: Memory Test passed
 *                  HTXVMTMBIST_ERR_MTU_UNDEFINED | Index: Undefined error
 *                  HTXVMTMBIST_ERR_MTU_TIMEOUT_UND | Index: Test failed for the SSH index
 *                  HTXVMTMBIST_INV_PARAM_ERR: Test failed due to invalid input parameter
 *
 *******************************************************************************
 *
 * \service id:   : 0x10
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : The memory needs to be filled with ECC correct data
 *                  and the test needs to be done on a different
 *                  CPU core if CPU memories are being tested.
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2260
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2255
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2256
 *
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxVmtMbist_Test
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
#define HTXVMTMBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

#endif /* HTXVMTMBIST_H*/

/* EOF */
