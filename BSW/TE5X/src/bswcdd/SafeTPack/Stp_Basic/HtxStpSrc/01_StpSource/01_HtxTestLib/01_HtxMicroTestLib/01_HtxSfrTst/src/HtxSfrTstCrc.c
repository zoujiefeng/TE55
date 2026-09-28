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
** FILENAME : HtxSfrTstCrc.c                                                  **
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
**  DESCRIPTION  : SFR CRC Test Source File                                   **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxCpu_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxSfrTstCrc.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* The initial CRC to be used for SFR CRC test */
/* Note: a value of all 1's is not used to avoid the corner case in
 * CRC calculation for subsequent SFRs with all zero values */
#define HTXSFR_CRC_INIT_VAL     ((uint32)0xFFFFFFFEU)

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
#define HTXSFRTSTCRC_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static HtxTestHnd_TstRsltType HtxSfrTst_lSfrCrcTst
(
    const uint8 ParamSetIndex,
    uint32* const TstSignature
);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxSfrTst_TestCrc
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                   )
 *
 * \description   : This function verifies the SFR contents by CRC calculation.
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
 * \service id:   : 0x0E
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2195
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2220
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2217
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2218
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2220
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2219
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1717
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2222
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxSfrTst_TestCrc
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType Result;

    /* Initialize Test Signature */
    *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_SFR_CRC_TST, TstSeed);

    /* Verify the ParamSetIndex via signature */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

    /* Check for invalid ParamSetIndex */
    if(ParamSetIndex < HTXSFRTST_CFG_PARAM_COUNT)
    {
        /* Compare actual CRC value against expected CRC value */
        Result = HtxSfrTst_lSfrCrcTst(ParamSetIndex, TstSignature);
    }
    else
    {
        /* If invalid ParamSetIndex, report error */
        Result = HTXSFRTST_CRC_INV_PARAM_ERR;
    }

    return(Result);

} /* End of HtxSfrTst_TestCrc() */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxSfrTst_lSfrCrcTst
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This function verifies the SFR contents by CRC calculation.
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1719
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxSfrTst_lSfrCrcTst
(
    const uint8 ParamSetIndex,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType Result;
    uint32 CalculatedCRC;
    uint32 CurrentRegValue;
    uint32 Mask;
    uint32 Index;

    CalculatedCRC = HTXSFR_CRC_INIT_VAL;

    for(Index = 0U; Index < HtxSfrTst_kConfigSet[ParamSetIndex].NumOfSfr; Index++)
    {
        /* obtain current register value */
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

        /* Calculate the test signature */
        *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, CurrentRegValue);

        /* Calculate the CRC */
        CalculatedCRC = (uint32)HTXSTPIF_CRC32(CalculatedCRC, CurrentRegValue);
    }

    #if(HTXSFRTST_CSFR_CHECK == STD_ON)
    Index = 0U;
    while(Index < HtxSfrTst_kConfigSet[ParamSetIndex].NumOfCpuSfr)
    {
        if(HtxSfrTst_kConfigSet[ParamSetIndex].CpuSfrList[Index] != NULL_PTR)
        {
            CurrentRegValue = HtxSfrTst_kConfigSet[ParamSetIndex].CpuSfrList[Index]();

            /* Calculate the test signature */
            *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, CurrentRegValue);

            /* Calculate the CRC */
            CalculatedCRC = (uint32)HTXSTPIF_CRC32(CalculatedCRC, CurrentRegValue);

            Index++;
        }
        else
        {   /* Exit the loop */
            Index = HtxSfrTst_kConfigSet[ParamSetIndex].NumOfCpuSfr;
            CalculatedCRC = HTXSFR_CRC_INIT_VAL;
        }
    }
    #endif /* HTXSFRTEST_CSFR_CHECK == STD_ON */


    /* If the calculated CRC doesn't match the expected CRC */
    if(HtxSfrTst_kConfigSet[ParamSetIndex].ExpectedCRCResult != CalculatedCRC)
    {
        /* Report CRC mismatch */
        Result = HTXSFRTST_CRC_DATAMISMATCH;
    }
    else
    {
        Result = HTXSFRTST_CRC_SUCCESS;
    }

    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, Result);

    return (Result);

} /* End of HtxSfrTst_lSfrCrcTst() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
