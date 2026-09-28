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
** FILENAME : HtxSfrTstCmp.c                                                  **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2298             **
**                                                                            **
** DESCRIPTION  : SFR Compare Test Source File                                **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxSfrTstCmp.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

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
 /* MISRA2012_RULE_20_1_JUSTIFICATION:
    MemMap header usage as per AUTOSAR guideline */
 /* MISRA2012_RULE_4_10_JUSTIFICATION:
    MemMap header is repeatedly included without safeguard.
    It complies to AUTOSAR guidelines */
#define HTXSFRTSTCMP_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static HtxTestHnd_TstRsltType HtxSfrTst_lSfrCmpTst
(
    const uint8 ParamSetIndex,
    uint32* const TstSignature
);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCMP_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
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
HtxTestHnd_TstRsltType HtxSfrTst_TestCmp
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType Result;

    /* Initialize Test Signature: */
    *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_SFR_CMP_TST, TstSeed);

    /* Verify the ParamSetIndex via signature */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

    /* Check for invalid ParamSetIndex */
    if (ParamSetIndex < HTXSFRTST_CFG_PARAM_COUNT)
    {
        /* Compare actual register value against expected value */
        Result = HtxSfrTst_lSfrCmpTst(ParamSetIndex, TstSignature);
    }
    else
    {
        /* If invalid ParamSetIndex, report error */
        Result = HTXSFRTST_CMP_INV_PARAM_ERR;
    }

    return(Result);

} /* End of HtxSfrTst_TestCmp() */

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxSfrTst_lSfrCmpTst
 *                  (
 *                      const uint8 ParamSetIndex,
 *                      uint32* const TstSignature
 *                  )
 *
 * \description   : This function verifies the SFR contents
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 *
 * \param[in,out] : TstSignature - Signature generated by the test
 *
 * \return        : Test result
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1718
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxSfrTst_lSfrCmpTst
(
    const uint8 ParamSetIndex,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType Result;
    uint32 Mask;
    uint32 CurrentRegValue;
    uint32 Index;

    Result = HTXSFRTST_CMP_OVERLOAD;

    /* Proceed only if number of registers to test is less than the maximum value allowed */
    if(HTXSFRTST_REGCOUNT_MAX >= HtxSfrTst_kConfigSet[ParamSetIndex].NumOfSfr)
    {
        Index = 0U;
        while((Index < HtxSfrTst_kConfigSet[ParamSetIndex].NumOfSfr) && (HTXSFRTST_CMP_OVERLOAD == Result))
        {
            /* Obtain current register value */
            if(HTXSFRTST_SFR_BIT_16 == (HtxSfrTst_kConfigSet[ParamSetIndex].SfrList[Index].RegisterBitWidth))
            {
                /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
                   pointer to other type is done to Fetch the data pointed by the void address */
                /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
                   object type and a pointer to a different object type is to fetch the data in the address of type void */
                CurrentRegValue = (uint32)(*(volatile uint16*)(HtxSfrTst_kConfigSet[ParamSetIndex].SfrList[Index].RegisterAddress));
            }
            else
            {
                /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
                   pointer to other type is done to Fetch the data pointed by the void address */
                /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
                   object type and a pointer to a different object type is to fetch the data in the address of type void */
                CurrentRegValue = *(volatile uint32*)(HtxSfrTst_kConfigSet[ParamSetIndex].SfrList[Index].RegisterAddress);
            }

            /* Obtain mask value */
            Mask = HtxSfrTst_kConfigSet[ParamSetIndex].SfrList[Index].RegisterMask;
            CurrentRegValue = CurrentRegValue & Mask;

            /* Check if current value equals expected value */
            if(CurrentRegValue != ((HtxSfrTst_kConfigSet[ParamSetIndex].SfrList[Index].RegisterValue) & Mask))
            {
                /* FAILED: Form the error code */
                Result = HTXSFRTST_CMP_VAL_ERR | Index;
            }
            else
            {
                Index++;
                *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, Index);
            }
        }

        /* If no errors: value of Index would be (maximum Sfr) to be compared */
        /* If errors: value of Index would be (maximum Sfr + 1) to be compared */
        if(Index == (HtxSfrTst_kConfigSet[ParamSetIndex].NumOfSfr))
        {
            Result = HTXSFRTST_CMP_SUCCESS;
        }
    }

    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
        Its definition/declaration is specific to the compiler */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, Result);

    return (Result);

} /* End of HtxSfrTst_lSfrCmpTst() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCMP_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
