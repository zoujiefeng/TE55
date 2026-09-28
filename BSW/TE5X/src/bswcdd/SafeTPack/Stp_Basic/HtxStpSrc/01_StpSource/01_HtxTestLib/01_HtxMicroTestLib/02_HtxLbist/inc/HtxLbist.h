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
** FILENAME : HtxLbist.h                                                      **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-1696             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1695             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1693             **
**                                                                            **
** DESCRIPTION : Header file for the module HtxLbist                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXLBIST_H
#define HTXLBIST_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxTestHnd_ErrorCodes.h"
#include "HtxStpIf.h"
#include "HtxLbist_Cfg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

#define HTXLBIST_HW_TRIG_DLMU_UNUSED               ((uint8)1U)

#define HTXLBIST_SW_CPU0_DLMU_USED                 ((uint8)2U)

#define HTXLBIST_SW_CPU1_DLMU_USED                 ((uint8)3U)

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* Type definition to specify the State machine of the module */
typedef enum HtxLbist_StateType
{
    HTXLBIST_START_STATE = 0U, /* No LBist triggered/result analysed yet */
    HTXLBIST_RUN_STATE,        /* LBIST Runs processing */
    HTXLBIST_PASS_STATE,       /* LBIST execution Passed */
    HTXLBIST_FAIL_STATE        /* LBIST execution Failed */
} HtxLbist_StateType;

/* Module data type to specify the Lbist state, Lbist runs */
typedef struct HtxLbist_DataType
{
    /* 128-bit */
    HtxTestHnd_TstRsltType LbistLastResult; /* Store result of previous LBIST run */
    HtxLbist_StateType LbistState;          /* LBIST state machine */
    uint32 LbistCrc;                        /* CRC of all the other elements in the structure */
    uint32 LbistRuns;                       /* No. of LBIST Runs triggered */
    /* 64-bit aligned */
    /* Used by HtxFwCheck */
    uint32 FwDataCrc;
    uint16 Cpu0DlmuEccd;
    uint16 Cpu0DlmuFaultsts;
    uint16 Cpu0DlmuErrinfo;
    uint16 Cpu1DlmuEccd;
    uint16 Cpu1DlmuFaultsts;
    uint16 Cpu1DlmuErrinfo;
    uint32 Dummy1;
    uint16 Dummy2;
    uint8 DlmuUsage;
    uint8 DlmuUsageRedn;

} HtxLbist_DataType;

/* Configuration data structure for the LBIST parameters */
typedef struct HtxLbist_ConfigSetType
{
    uint32 HtxLbist_LbistCtrl0RegVal;  /* Configured SFR value for LBISTCTRL0 */
    uint32 HtxLbist_LbistCtrl1RegVal;  /* Configured SFR value for LBISTCTRL1 */
    uint32 HtxLbist_LbistCtrl2RegVal;  /* Configured SFR value for LBISTCTRL2 */
    uint32 HtxLbist_LbistCtrl3RegVal;  /* Configured SFR value for LBISTCTRL3 */
} HtxLbist_ConfigSetType;

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
#define HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

extern const HtxLbist_ConfigSetType HtxLbist_kConfigSet[HTXLBIST_CFG_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxLbist_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API checks if the LBIST needs to be trigger
 *                  based on the LBIST status. It also handles the LBIST result
 *
 *                  The SafeTPack TstSeed is not directly used to generate
 *                  the seed value for the LBIST in this version.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HtxTestHnd_TstRsltType,
 *                  HTXLBIST_SUCCESS - The test passed
 *
 *                  HTXLBIST_CALLER_ADDR_ERR - Error caused by unexpected calling address
 *
 *                  HTXLBIST_PORST_ERR - A power on reset(PORST) occurred during LBIST
 *
 *                  HTXLBIST_TERMINATION_ERR - The LBIST did not terminate correctly
 *
 *                  HTXLBIST_DEFAULT_SIGNATURE_ERR - The default signature is incorrect
 *
 *                  HTXLBIST_CRC_ERR - CRC error
 *
 *                  HTXLBIST_UNDEFINED_ERR - This error is never intentionally
 *                  returned. If it is returned anyway, something  must be
 *                  very serious must be wrong
 *
 *                  HTXLBIST_INV_PARAM_ERR - Invalid parameter
 *
 *******************************************************************************
 *
 * \service id:   : 0x01
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1697
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1752
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2215
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2214
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2213
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2212
 *
 ******************************************************************************/
extern HtxTestHnd_TstRsltType HtxLbist_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);

/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxLbist_IsTrapExpected(void)
 *
 * \description   : This APi checks if the Trap is expected or not
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: Trap is expected from HtxList and can be ignored
 *                  E_NOT_OK: Unexpected TRAT, shall be handled
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
extern Std_ReturnType HtxLbist_IsTrapExpected(void);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

#endif /* HTXLBIST_H*/

/* EOF */
