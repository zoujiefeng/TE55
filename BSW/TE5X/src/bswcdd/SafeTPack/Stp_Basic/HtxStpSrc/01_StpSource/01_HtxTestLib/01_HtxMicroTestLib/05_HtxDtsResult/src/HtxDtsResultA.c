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
** FILENAME : HtxDtsResultA.c                                                  **
**                                                                            **
** REVISION : \$Revision: 26594 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-10-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2190             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2293             **
**                                                                            **
** DESCRIPTION : This is the source code file for the module HtxDtsResult     **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxPms_reg.h"
#include "IfxScu_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxDtsResultA.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* The temperature difference of 9 degrees (multiplied by 7505) */
#define HTXDTSRESULTA_TEMP_DIFF           (0x000107D9U)

/* Macro for constant 1000 */
#define HTXDTSRESULTA_CONST_1000          (0x000003E8U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXDTSRESULTA_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxDtsResult_TestA
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
 *                  HTXDTSRESULT_A_PASSED - The test passed
 *                  HTXDTSRESULT_A_FAILED_ERR_DIFF - The test failed as the
 *                  difference in temperature is more than the threshold (9)
 *
 *******************************************************************************
 *
 * \service id:   : 0x03
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
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1638
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1637
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2194
 *
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxDtsResult_TestA
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    uint32 TempDts;
    uint32 TempDtsc;
    uint32 TempDiff;

    /* Initialise Test Signature */
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_DTS_RESULT_TSTA, TstSeed);

    /* Verify the ParamSetIndex via signature */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

    /* To reduce the calculation and also convert float to integer, following simplification is done
       ESM[SW]:DTS:DTS_RESULT, the acceptable difference in temperature shall be less than 9 degree (C/F)
       i.e.,               T(DTS) - T(DTSC)                   <= 9
       (SCU_DTSCSTAT.RESULT/G_NOM - PMS_DTSSTAT.RESULT/G_NOM) <= 9
             (SCU_DTSCSTAT.RESULT - PMS_DTSSTAT.RESULT)/G_NOM <= 9
             (SCU_DTSCSTAT.RESULT - PMS_DTSSTAT.RESULT)/7.505 <= 9
        1000*(SCU_DTSCSTAT.RESULT - PMS_DTSSTAT.RESULT)/7505  <= 9
        1000*(SCU_DTSCSTAT.RESULT - PMS_DTSSTAT.RESULT)       <= 9*7505
        1000*(SCU_DTSCSTAT.RESULT - PMS_DTSSTAT.RESULT)       <= 0x000107D9U
    */

    /* Get the temperature results from the 2 sensors (DTS and DTSC) */
    TempDts = PMS_DTSSTAT.B.RESULT;
    TempDtsc = SCU_DTSCSTAT.B.RESULT;

    /* Compare the results of the 2 sensors. If the 2 sensor
       results differ by more than 9 degrees then the test fails */
    TempDiff = (TempDts > TempDtsc)?(TempDts - TempDtsc):(TempDtsc - TempDts);

    TempDiff *= HTXDTSRESULTA_CONST_1000;

    /* Check if the difference is within the limits */
    if(TempDiff <= HTXDTSRESULTA_TEMP_DIFF)
    {
        ReturnValue = HTXDTSRESULT_A_PASSED;
    }
    else
    {
        ReturnValue = HTXDTSRESULT_A_FAILED_ERR_DIFF;
    }

    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ReturnValue);

    return ReturnValue;
} /* End of HtxDtsResult_Test() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXDTSRESULTA_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/* EOF */
