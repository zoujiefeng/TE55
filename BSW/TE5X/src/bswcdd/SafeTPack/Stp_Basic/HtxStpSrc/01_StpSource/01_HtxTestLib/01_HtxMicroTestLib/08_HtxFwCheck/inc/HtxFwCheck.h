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
** FILENAME : HtxFwCheck.h                                                    **
**                                                                            **
** REVISION : \$Revision: 27431 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-01-11 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-1646             **
**                                                                            **
** DESCRIPTION : Header file for the module HtxFwCheck                        **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXFWCHECK_H
#define HTXFWCHECK_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "HtxStpIf.h"
#include "HtxTestHnd_ErrorCodes.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "HtxFwCheck_Cfg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
/* This type defines the CRC of SFRs, for different types of RESETS */
typedef struct HtxFwCheck_ConfigSetType
{
    uint32 CrcColdPorst;
    uint32 CrcStby;
    uint32 CrcWarmPorst;
    uint32 CrcSysReset;
    #if(HTXFWCHECK_ADAS_GETH_EXIST == STD_ON)
    uint32 CrcApplRstGeth1Adas0;
    uint32 CrcApplRstGeth0Adas0;
    #if(HTXFWCHECK_ADAS_EXIST == STD_ON)
    uint32 CrcApplRstGeth1Adas1;
    uint32 CrcApplRstGeth0Adas1;
    #endif /* #if(HTXFWCHECK_ADAS_EXIST == STD_ON) */
    #else
    uint32 CrcApplRst;
    #endif /* #if(HTXFWCHECK_ADAS_GETH_EXIST == STD_ON) */
} HtxFwCheck_ConfigSetType;

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
#define HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

extern const HtxFwCheck_ConfigSetType HtxFwCheck_kConfigSet[HTXFWCHECK_CFG_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxFwCheck_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API performs the firmware check as given
 *                  by the ESM[SW]:SYS:MCU_FW_CHECK
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 * \param[out]    : TstSignature - Test signature generated by the test
 *
 * \return        : HTXFWCHECK_PASSED: Firmware check passed
 *                  HTXFWCHECK_FAILED: Firmware check failed
 *                  HTXFWCHECK_INV_PARAM_ERR: Test failed due to invalid parameter
 *                  HTXFWCHECK_RST_UNKNOWN: Test failed due to unknown reset detected
 *                  HTXFWCHECK_SFR_NOT_CLEARED: Test failed due SFRS are not cleared
 *                  HTXFWCHECK_DATA_ERR: Test failed due to data integrity error
 *
 *******************************************************************************
 * \service id:   : 0x02
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1651
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2210
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1751
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2294
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxFwCheck_Test
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
#define HTXFWCHECK_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"


#endif /* HTXFWCHECK_H */

/* EOF */
