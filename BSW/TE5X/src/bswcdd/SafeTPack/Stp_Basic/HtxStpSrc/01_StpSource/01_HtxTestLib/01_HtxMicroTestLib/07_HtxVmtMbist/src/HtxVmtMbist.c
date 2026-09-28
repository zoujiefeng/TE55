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
** FILENAME : HtxVmtMbist.c                                                   **
**                                                                            **
** REVISION : \$Revision: 31936 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2022-03-08 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2258             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2257             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2300             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2254             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2253             **
**                                                                            **
** DESCRIPTION : This file provides a non destructive test routine for        **
**               for volatile RAM.                                            **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxMtu_bf.h"
#include "IfxMtu_reg.h"
#include "IfxScu_bf.h"
#include "IfxScu_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxVmtMbist.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* SFR value MCONTROL := 4008H
   (use redundancy, direction up = 1, ROW first 0, EN_DESCR = 0, START = 0) */
#define HTXVMTMBIST_TESTSRAMSTOP                 (0x4008U)

/* MCONTROL := 4009H
   (use redundancy, direction up = 1, ROW first 0, EN_DESCR = 0, START = 1) */
#define HTXVMTMBIST_TESTSRAMSTART                (0x4009U)

/* Config values for NDT test as per the algorithm in UM */
#define HTXVMTMBIST_CONFIG0                      ((uint16)0x4005U)
#define HTXVMTMBIST_CONFIG1                      ((uint16)0x5008U)

/* Err flag clear mask */
#define HTXVMTMBIST_TEST_CLEAR_ERR_FLAGS         (0x0000U)

/* Set ENDINIT */
#define HTXVMTMBIST_SAFETY_ENDINIT_PROTECTED     (1U)

/* Watchdog timer reload value */
#define HTXVMTMBIST_SAFETY_ENDINIT_WDT_TIMER_REL (0xFFFC0000U)

/* watchdog inverted password mask */
#define HTXVMTMBIST_ENDINIT_WDT_PWD_INV          (0x3FU)
#define HTXVMTMBIST_ENDINIT_WDT_PWD_MASK         (0x0000FFFCU)

/* "*ERR" flags of MCi_ECCD SFR */
#define HTXVMTMBIST_ERROR_FLAGS                  ((uint16)0x7C0FU)

/* Timeout value for the MBIST NDT test. 10,000,000 represents 
at least 100ms given the worst case (fastest) CPU Frequency 300MHz,
considering 3 instructions per loop. */
#define HTXVMTMBIST_TEST_TIMEOUT                 ((uint32)10000000U)

/* Maximum CPUn_PMEM SSHs per GANG */
#define HTXVMTMBIST_MAX_PMEM_GANG                (3U)
#define HTXVMTMBIST_MAX_TEST_GANG                (18U)

/* Maximum SSH available */
#define HTXVMTMBIST_MAX_SSH                       ((uint8)96U)

/* Mask for the All the PMEM across all the TC3xx devices */
#define HTXVMTMBIST_PMEM_MASK                    ((uint32)0x08421084U)

/* Constant 32 */
#define HTXVMTMBIST_CONST_32                     ((uint8)32U)

/* Mask to clear ECCD flags,
   SERR[0]=CERR[1]=UCERR[2]=MERR[3]=VAL[9:5]=EOV[15]=0, TRC[4]=1 */
#define HTXVMTMBIST_CLR_ECCD_ERR_FLAGS           ((uint16)0x0010U)

#define HTXVMTMBIST_MTU_MEMTEST                  ((volatile Ifx_MTU_MEMTEST0*)(volatile void*)&(MTU_MEMTEST0))

#define HTXVMTMBIST_MEMTEST0ID                   (32U)
#define HTXVMTMBIST_MEMTEST1ID                   (64U)

/** \brief Mask values is used to invert the password value bits */
#define HTXVMTMBIST_WDT_PSW_INV_MSK              (0x003FU)

/* MAcro to specify the constant value 2 */
#define HTXVMTMBIST_CONST_2                      (2U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

typedef struct HtxVmtMbist_GroupType
{
    uint8 NumberOfTests;
    uint8 TestIds[HTXVMTMBIST_MAX_TEST_GANG];
} HtxVmtMbist_GroupType;

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

static uint8 HtxVmtMbist_Backup;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static void HtxVmtMbist_lMtuRestoreClc(void);

static void HtxVmtMbist_lMtuEnable(void);

static INLINE void HtxVmtMbist_lWrSeInitSfr16
(
    volatile uint16 * const RegAddress,
    const uint16 DataValue
);

static Std_ReturnType HtxVmtMbist_lCheckPmem(const uint8 MtuIndex);

static INLINE uint32 HtxVmtMbist_lDecryptPw(const uint32 Value);

static void HtxVmtMbist_lClearMtuErrSfr(const uint8 MtuIndex);

#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGroup
(
    const uint8 ParamSetIndex,
    const uint8 GroupIndex
);

static Std_ReturnType HtxVmtMbist_lSetAllMemtest
(
    const uint32 lMemtest0,
    const uint32 lMemtest1,
    const uint32 lMemtest2
);

static Std_ReturnType HtxVmtMbist_lTriggerTest(const uint8 lSramId);

static HtxTestHnd_TstRsltType HtxVmtMbist_lGetResults(const uint8 index);

static void HtxVmtMbist_lWrSeInitSfr32
(
    volatile uint32 * const RegAddress,
    const uint32 DataValue
);

static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGangEnabled(const uint8 ParamSetIndex);

#endif /* #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */

#if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON)

static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGangDisabled(const uint8 ParamSetIndex);

static HtxTestHnd_TstRsltType HtxVmtMbist_lTestOneShot
(
    const uint8 ParamSetIndex,
    const uint8 GroupIndex
);

static HtxTestHnd_TstRsltType HtxVmtMbist_lTrigAndResult(uint8 lSramIdArg);

static void HtxVmtMbist_lClrSafetyEndinit(uint16 password);

static uint16 HtxVmtMbist_lGetSafeWdgPswd(void);

static void HtxVmtMbist_lSetSafetyEndinit(uint16 password);

#endif /* #if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
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
HtxTestHnd_TstRsltType HtxVmtMbist_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    #if((HTXVMTMBIST_GANG_ENABLE_API == STD_ON) && (HTXVMTMBIST_GANG_DISABLE_API == STD_ON))
    uint8 lTestType;
    #endif
    uint32 lGang = 0U;
    uint32 lTest = 0U;

    ReturnValue = HTXVMTMBIST_INV_PARAM_ERR;

    if(ParamSetIndex < HTXVMTMBIST_CFG_COUNT)
    {
        /* Initialise Test Signature */
        *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_VMT_MBIST_NDT_TST, TstSeed);

        /* Verify the ParamSetIndex via signature */
        *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

        /* Enable the Mtu */
        HtxVmtMbist_lMtuEnable();

        #if((HTXVMTMBIST_GANG_ENABLE_API == STD_ON) && (HTXVMTMBIST_GANG_DISABLE_API == STD_ON))
        lTestType = HtxVmtMbist_kConfigSet[ParamSetIndex].MbistTestType;

        if(HTXVMTMBIST_GANG_ENABLE == lTestType)
        #endif
        {
            #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
            ReturnValue = HtxVmtMbist_lTestGangEnabled(ParamSetIndex);
            #endif
        }
        #if((HTXVMTMBIST_GANG_ENABLE_API == STD_ON) && (HTXVMTMBIST_GANG_DISABLE_API == STD_ON))
        else
        #endif
        {
            #if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON)
            ReturnValue = HtxVmtMbist_lTestGangDisabled(ParamSetIndex);
            #endif
        }

        if (HTXVMTMBIST_PASSED == ReturnValue)
        {
            const uint8 lTestSize = HtxVmtMbist_kConfigSet[ParamSetIndex].TestSize;

            for (lGang = 0U; lGang < HtxVmtMbist_kConfigSet[ParamSetIndex].GangSize; lGang++)
            {
                for (lTest = 0U; lTest < lTestSize; lTest++)
                {
                    /* No out of bounds access possbile as GangSize and TestSize are used as limits */
                    const uint8 lSshId = HtxVmtMbist_kConfigSet[ParamSetIndex].GroupTests[(lTestSize * lGang) + lTest];

                    if (lSshId != HTXVMTMBIST_NONE)
                    {
                        /* 13. Clear the flags and the error tracking registers
                         to enable further error tracking after the test. */
                        HtxVmtMbist_lClearMtuErrSfr(lSshId);
                    }
                }
            }

            /* Proceed to restore the MTU clock setting */
            HtxVmtMbist_lMtuRestoreClc();
        }
    }

    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ReturnValue);

    return ReturnValue;

} /* End of HtxVmtMbist_Test() */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGangEnabled
 *                  (
 *                     const uint8 ParamSetIndex
 *                  )
 *
 * \description   : Function which tests the SRAM by doing a
 *                  non destructive test utilizing the HW GANG feature
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set.
 *
 * \param[out]    : None
 *
 * \return        : HtxTestHnd_TstRsltType, specifies the status of the Test.
 *                  A unique ID for Passed and Failed scenarios.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : The SRAM needs to be filled with ECC correct data.
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2697
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGangEnabled(const uint8 ParamSetIndex)
{
    HtxTestHnd_TstRsltType ReturnValue;
    uint8 index;
    uint8 NumOfGangs;
    Std_ReturnType lMemtestStat;

    ReturnValue = HTXVMTMBIST_ERR_MTU_UNDEFINED;

    /* 2. Enter memory test mode (set the corresponding bit in the MTU_MEMTEST register) */
    lMemtestStat = HtxVmtMbist_lSetAllMemtest(HtxVmtMbist_kConfigSet[ParamSetIndex].MtuMemTestMask0,
                                              HtxVmtMbist_kConfigSet[ParamSetIndex].MtuMemTestMask1,
                                              HtxVmtMbist_kConfigSet[ParamSetIndex].MtuMemTestMask2);

    NumOfGangs = HtxVmtMbist_kConfigSet[ParamSetIndex].GangSize;

    /* Check if MEMTEST SFR is set properly within the timeout period */
    if(lMemtestStat == E_OK)
    {
        /* Execute each gang in sequence */
        index = 0U;
        while(index < NumOfGangs)
        {
            ReturnValue = HtxVmtMbist_lTestGroup(ParamSetIndex,index);

            if(ReturnValue != HTXVMTMBIST_PASSED)
            {   /* if Failed, Exit the loop */
                index = NumOfGangs;
            }
            else
            {
                index++;
            }
        }
    }

    /* 10. Disable the memory test mode (clear the corresponding bit in the MTU_MEMTEST register) */
    lMemtestStat = HtxVmtMbist_lSetAllMemtest((uint32)0U,(uint32)0U,(uint32)0U);

    /* Check if the MEMTEST SFR is not restored properly */
    if(lMemtestStat == E_NOT_OK)
    {
        /* Note: MTU clock is not disabled for debugging the
           errors related to test failures (present in the SFRs) */
        ReturnValue = HTXVMTMBIST_ERR_MTU_TIMEOUT_UND;
    }

    return ReturnValue;
} /* End of HtxVmtMbist_lTestGangEnabled() */

#endif /* #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGangDisabled
 *                  (const uint8 ParamSetIndex)
 *
 * \description   : Function which tests the SRAM in serial by doing a
 *                  non destructive test
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set.
 *
 * \param[out]    : None
 *
 * \return        : HtxTestHnd_TstRsltType, specifies the status of the Test.
 *                  A unique ID for Passed and Failed scenarios.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : The SRAM needs to be filled with ECC correct data.
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2698
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGangDisabled(const uint8 ParamSetIndex)
{
    HtxTestHnd_TstRsltType ReturnValue;
    uint8 index;
    uint8 NumOfGangs;

    ReturnValue = HTXVMTMBIST_ERR_MTU_UNDEFINED;

    NumOfGangs = HtxVmtMbist_kConfigSet[ParamSetIndex].GangSize;

    /* Execute each gang in sequence */
    index = 0U;
    while(index < NumOfGangs)
    {
        ReturnValue = HtxVmtMbist_lTestOneShot(ParamSetIndex,index);

        if(ReturnValue != HTXVMTMBIST_PASSED)
        {   /* if Failed, Exit the loop */
            index = NumOfGangs;
        }
        else
        {
            index++;
        }
    } /* while(index < NumOfGangs) */

    return ReturnValue;
} /* End of HtxVmtMbist_lTestGangDisabled() */

#endif /* #if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxVmtMbist_lTestOneShot
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 GroupIndex
 *                  )
 *
 * \description   : Function which tests the SRAM in serial by doing a
 *                  non destructive test
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set.
 * \param[in]     : GroupIndex - index of the group of SRAMs to be tested.
 *
 * \param[out]    : None
 *
 * \return        : HtxTestHnd_TstRsltType, specifies the status of the Test.
 *                  A unique ID for Passed and Failed scenarios.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : The SRAM needs to be filled with ECC correct data.
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2692
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxVmtMbist_lTestOneShot
(
    const uint8 ParamSetIndex,
    const uint8 GroupIndex
)
{
    HtxVmtMbist_GroupType lGroupTest;
    HtxTestHnd_TstRsltType ReturnValue;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_ECCS lEccsRegVal;
    uint8 index;
    uint8 lSramId;
    uint8 MaxNumOfTests;
    uint8 PmemCount;
    uint8 PmemArr[HTXVMTMBIST_MAX_PMEM_GANG];

    /* Initialise Pmem Array */
    PmemCount = 0U;
    for(index=0U; index<HTXVMTMBIST_MAX_PMEM_GANG; index++)
    {
        PmemArr[index] = 0U;
    }

    lGroupTest.NumberOfTests = 0U;
    MaxNumOfTests = HtxVmtMbist_kConfigSet[ParamSetIndex].TestSize;
    ReturnValue = HTXVMTMBIST_ERR_MTU_TIMEOUT_UND;

    /* Initialise the Array with invalid Test ID */
    for(index=0U; index<HTXVMTMBIST_MAX_TEST_GANG; index++)
    {
        lGroupTest.TestIds[index] = HTXVMTMBIST_NONE;
    }

    /* Fetch the test ID from the GroupIndex to the local array */
    index = 0U;
    while (index < MaxNumOfTests)
    {
        /* No out of bounds access possbile as NumOfGangs and MaxNumOfTests are used as limits */
        const uint8 lSshId = HtxVmtMbist_kConfigSet[ParamSetIndex].GroupTests[(GroupIndex * MaxNumOfTests) + index];

        if (lSshId != HTXVMTMBIST_NONE)
        {
            lGroupTest.TestIds[index] = lSshId;
            lGroupTest.NumberOfTests++;
            index++;
        }
        else
        { /* Break the loop if reached the end of the tests HTXVMTMBIST_NONE */
            index = MaxNumOfTests;
        }
    } /* while(index < MaxNumOfTests) */

    /* Configure all the tests in the Gang and trigger the tests */
    index = 0U;
    while(index < lGroupTest.NumberOfTests)
    {
        lSramId = lGroupTest.TestIds[index];

        /* Check if the memory is a PMEM, as the PMEM needs both of its towers tested */
        if(E_OK == HtxVmtMbist_lCheckPmem(lSramId))
        {
            lEccsRegVal.U = MODULE_MTU.MC[lSramId].ECCS.U;
            lEccsRegVal.B.TC_TWR_SEL = 0U;
            /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
               pointer to other type is done to Fetch the data pointed by the void address */
            /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
               object type and a pointer to a different object type is to fetch the data in the address of type void */
            HtxVmtMbist_lWrSeInitSfr16((volatile uint16*)(volatile void*)&MODULE_MTU.MC[lSramId].ECCS.U,(uint16)lEccsRegVal.U);

            /* Store the PMEM index */
            PmemArr[PmemCount] = lSramId;
            PmemCount++;
        }

        /* Configure and trigger the NDT MBIST */
        ReturnValue = HtxVmtMbist_lTrigAndResult(lSramId);

        if(ReturnValue != HTXVMTMBIST_PASSED)
        {
            index = lGroupTest.NumberOfTests;
        }
        else
        {
            index++;
        }
    } /* while(index < lGroupTest.NumberOfTests) */

    if((PmemCount > 0U) && (ReturnValue == HTXVMTMBIST_PASSED))
    {
        index = 0U;
        while(index < PmemCount)
        {
            lSramId = PmemArr[index];
            lEccsRegVal.U = MODULE_MTU.MC[lSramId].ECCS.U;
            lEccsRegVal.B.TC_TWR_SEL = 1U;
            /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
               pointer to other type is done to Fetch the data pointed by the void address */
            /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
               object type and a pointer to a different object type is to fetch the data in the address of type void */
            HtxVmtMbist_lWrSeInitSfr16((volatile uint16*)(volatile void*)&MODULE_MTU.MC[lSramId].ECCS.U,(uint16)lEccsRegVal.U);

            ReturnValue = HtxVmtMbist_lTrigAndResult(lSramId);

            if(ReturnValue != HTXVMTMBIST_PASSED)
            {   /* if Failed, Exit the loop */
                index = PmemCount;
            }
            else
            {
                index++;
            }
        } /* while(index < PmemCount) */
    } /* End of if((PmemCount > 0U) && (ReturnValue != HTXVMTMBIST_PASSED)) */

    return ReturnValue;
} /* End of HtxVmtMbist_lTestOneShot() */

#endif /* #if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxVmtMbist_lTrigAndResult
 *                  (uint8 lSramIdArg)
 *
 * \description   : A helper function which tests the chosen
 *                  SRAM by doing a non destructive test.
 *
 *******************************************************************************
 *
 * \param[in]     : lSramIdArg - index of the of SRAM to be tested
 *
 * \param[out]    : None
 *
 * \return        : HtxTestHnd_TstRsltType, Specifies the status of the Test.
 *                  A unique ID for Passed and Failed scenarios.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : The SRAM needs to be filled with ECC correct data.
 * \post          : None
 * \attention     : This function shall not use RAM during the memory test
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2693
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxVmtMbist_lTrigAndResult(uint8 lSramIdArg)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_ALMSRCS lAlmSrcsRegVal;
    Ifx_MTU_MC_ECCS lEccsRegVal;
    HtxTestHnd_TstRsltType ReturnValue;
    register uint32 lMemtestRegVal;
    register uint8 MtuSfrIndex;
    register uint8 lSramId;
    register uint32 lTimeoutCounter1 = 0U;
    register uint32 lTimeoutCounter2 = 0U;
    register uint32 lTimeoutCounter3 = 0U;
    register uint32 lTimeoutCounter4 = 0U;
    uint8 MtuIndex;

    lSramId = lSramIdArg;
    ReturnValue = (uint32)HTXVMTMBIST_ERR_MTU_UNDEFINED | (uint32)lSramId;

    /* Check if the lSram ID is within the range */
    /* If not in range then it will be caught in the result verification stage */
    if(lSramId < HTXVMTMBIST_MAX_SSH)
    {
        /* Clear back the Safety ENDINIT bit */
        HtxVmtMbist_lClrSafetyEndinit(HtxVmtMbist_lGetSafeWdgPswd());

        /* 1. Ensure that error detection is enabled, via the ALMSRCS and ECCS registers, and check for errors already
              present before the test */
        lAlmSrcsRegVal.U = MODULE_MTU.MC[lSramId].ALMSRCS.U;
        lAlmSrcsRegVal.B.SBE = 1U;
        lAlmSrcsRegVal.B.DBE = 1U;
        lAlmSrcsRegVal.B.ADDRE = 1U;
        lAlmSrcsRegVal.B.OVFE = 1U;
        lAlmSrcsRegVal.B.OPENE = 0U;
        lAlmSrcsRegVal.B.MISCE = 1U;
        MODULE_MTU.MC[lSramId].ALMSRCS.U = (uint16)lAlmSrcsRegVal.U;

        lEccsRegVal.U = MODULE_MTU.MC[lSramId].ECCS.U;
        lEccsRegVal.B.CENE = 1U;
        lEccsRegVal.B.UCENE = 1U;
        lEccsRegVal.B.MENE = 1U;
        lEccsRegVal.B.ECE = 1U;
        lEccsRegVal.B.TRE = 1U;
        MODULE_MTU.MC[lSramId].ECCS.U = (uint16)lEccsRegVal.U;

        if(lSramId < HTXVMTMBIST_MEMTEST0ID)
        {
            MtuSfrIndex = 0U;
            MtuIndex = lSramId;
        }
        else if(lSramId < HTXVMTMBIST_MEMTEST1ID)
        {
            MtuSfrIndex = 1U;
            MtuIndex = lSramId - HTXVMTMBIST_MEMTEST0ID;
        }
        else
        {
            MtuSfrIndex = HTXVMTMBIST_CONST_2;
            MtuIndex = lSramId - HTXVMTMBIST_MEMTEST1ID;
        }

        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address.
           Also, "unsigned long" and "unsigned int" are 32-bit and hence conversion is unaffected */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        lMemtestRegVal = (uint32)HTXVMTMBIST_MTU_MEMTEST[MtuSfrIndex].U;
        lMemtestRegVal |= ((uint32)((uint32)1U << MtuIndex));

        /* 2. Enter memory test mode (set the corresponding bit in the MTU_MEMTEST register) */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address.
           Also, "unsigned long" and "unsigned int" are 32-bit and hence conversion is unaffected */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HTXVMTMBIST_MTU_MEMTEST[MtuSfrIndex].U = lMemtestRegVal;

        /* Wait for Auto initialization of memory, AIU */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address.
           Also, "unsigned long" and "unsigned int" are 32-bit and hence conversion is unaffected */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        while ((HTXVMTMBIST_MTU_MEMTEST[MtuSfrIndex].U != lMemtestRegVal) && (lTimeoutCounter1 < HTXVMTMBIST_TEST_TIMEOUT))
        {
            lTimeoutCounter1++;
        }

        /* 3. RANGE =<memory range to be tested> register assumed to have default reset value. */
        /* This step is skipped as we are testing the entire memory range */

        /* 4. CONFIG0 = 0x4005 */
        MODULE_MTU.MC[lSramId].CONFIG0.U = (uint16)HTXVMTMBIST_CONFIG0;

        /* 5. CONFIG1 = 0x5008 */
        MODULE_MTU.MC[lSramId].CONFIG1.U = (uint16)HTXVMTMBIST_CONFIG1;

        /* (*ERR) flags clear */
        MODULE_MTU.MC[lSramId].ECCD.U = (uint16)HTXVMTMBIST_TEST_CLEAR_ERR_FLAGS;

        /* 6. Set MCONTROL.DIR, RCADR and EN_DESCR and start the test by writing a 1 to register bit MCONTROL.START.
           USERED is ignored and redundancy is always used during an NDT, but still software shall program it to 1.
           MCONTROL := 4009H (use redundancy, direction up = 1, ROW first 0, EN_DESCR = 0, START = 1) */
        MODULE_MTU.MC[lSramId].MCONTROL.U = HTXVMTMBIST_TESTSRAMSTART;

        /* 7. Wait until MSTATUS.DONE is reset */
        while ((MODULE_MTU.MC[lSramId].MSTATUS.B.DONE != 0U) && (lTimeoutCounter2 < HTXVMTMBIST_TEST_TIMEOUT))
        {
            lTimeoutCounter2++;
        }

        /* 8. Clear MCONTROL.START
           MCONTROL := 4008H (use redundancy, direction up, ROW first, EN_DESCR = 0, START = 0) */
        MODULE_MTU.MC[lSramId].MCONTROL.U = HTXVMTMBIST_TESTSRAMSTOP;

        /* 9. Wait for the end of the test - wait for MTU_DONE interrupt to be triggered, or poll MSTATUS.DONE bit to be set,
           via MTU_MEMDONE register.*/
        while((MODULE_MTU.MC[lSramId].MSTATUS.B.DONE == 0U) && (lTimeoutCounter3 < HTXVMTMBIST_TEST_TIMEOUT))
        {
            lTimeoutCounter3++;
        }

        /* 10. Disable the memory test mode (clear the corresponding bit in the MTU_MEMTEST register). */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address.
           Also, "unsigned long" and "unsigned int" are 32-bit and hence conversion is unaffected */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HTXVMTMBIST_MTU_MEMTEST[MtuSfrIndex].U = (uint32)0U;

        /* Wait for Auto initialization of memory, AIU */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address.
           Also, "unsigned long" and "unsigned int" are 32-bit and hence conversion is unaffected */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        while((HTXVMTMBIST_MTU_MEMTEST[MtuSfrIndex].U != 0U) && (lTimeoutCounter4 < HTXVMTMBIST_TEST_TIMEOUT))
        {
            lTimeoutCounter4++;
        }

        /* Set back the Safety ENDINIT bit */
        HtxVmtMbist_lSetSafetyEndinit(HtxVmtMbist_lGetSafeWdgPswd());

        if ((lTimeoutCounter1 < HTXVMTMBIST_TEST_TIMEOUT) &&
            (lTimeoutCounter2 < HTXVMTMBIST_TEST_TIMEOUT) &&
            (lTimeoutCounter3 < HTXVMTMBIST_TEST_TIMEOUT) &&
            (lTimeoutCounter4 < HTXVMTMBIST_TEST_TIMEOUT))
        {
            /* 11. Check the result of the test, verify *ERR bits in ECCD register */
            /* Bits SERR, CERR, UCERR, MERR are checked, bits EOV are indirect error flags */
            if ((MODULE_MTU.MC[lSramId].ECCD.U & (uint16)HTXVMTMBIST_ERROR_FLAGS) == 0U)
            {
                ReturnValue = HTXVMTMBIST_PASSED;
            }
        }
        else
        {
            ReturnValue = HTXVMTMBIST_ERR_MTU_TIMEOUT_UND | lSramId;
        }

        /* 12. If the test failed check the error tracking register and ETRR overflow bit. */
        /* Further error checking shall be done in the application layer */

    } /* if(lSramId < HTXVMTMBIST_MAX_SSH) */

    return ReturnValue;

} /* End of HtxVmtMbist_lTrigAndResult() */

#endif /* #if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGroup
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 GroupIndex
 *                  )
 *
 * \description   : Function which tests the SRAM by doing a
 *                  non destructive test utilizing the HW GANG feature
 *
 *******************************************************************************
 *
 * \param[in]     : GroupIndex - index of the group of SRAMs to be tested.
 * \param[in]     : ParamSetIndex - Index of the configuration set.
 *
 * \param[out]    : None
 *
 * \return        : HtxTestHnd_TstRsltType, specifies the status of the Test.
 *                  A unique ID for Passed and Failed scenarios.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : The SRAM needs to be filled with ECC correct data.
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2628
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxVmtMbist_lTestGroup
(
    const uint8 ParamSetIndex,
    const uint8 GroupIndex
)
{
    HtxVmtMbist_GroupType lGroupTest;
    HtxTestHnd_TstRsltType ReturnValue;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_ECCS lEccsRegVal;
    uint8 index;
    uint8 lSramId;
    uint8 MaxNumOfTests;
    uint8 PmemCount;
    uint8 PmemArr[HTXVMTMBIST_MAX_PMEM_GANG];
    Std_ReturnType lTriggerTestSuccess = E_OK;

    /* Initialise Pmem Array */
    PmemCount = 0U;
    for(index=0U; index<HTXVMTMBIST_MAX_PMEM_GANG; index++)
    {
        PmemArr[index] = 0U;
    }

    lGroupTest.NumberOfTests = 0U;
    MaxNumOfTests = HtxVmtMbist_kConfigSet[ParamSetIndex].TestSize;
    ReturnValue = HTXVMTMBIST_ERR_MTU_TIMEOUT_UND;

    /* Initialise the Array with invalid Test ID */
    for(index=0U; index<HTXVMTMBIST_MAX_TEST_GANG; index++)
    {
        lGroupTest.TestIds[index] = HTXVMTMBIST_NONE;
    }

    /* Fetch the test ID from the GroupIndex to the local array */
    index = 0U;
    while(index < MaxNumOfTests)
    {
        if(HtxVmtMbist_kConfigSet[ParamSetIndex].GroupTests[(GroupIndex*MaxNumOfTests)+index] != HTXVMTMBIST_NONE)
        {
            lGroupTest.TestIds[index] = HtxVmtMbist_kConfigSet[ParamSetIndex].GroupTests[(GroupIndex*MaxNumOfTests)+index];
            lGroupTest.NumberOfTests++;
            index++;
        }
        else
        {   /* Break the loop if reached the end of the tests HTXVMTMBIST_NONE */
            index = MaxNumOfTests;
        }
    }

    /* Configure all the tests in the Gang and trigger the tests */
    index = 0U;
    while((index < lGroupTest.NumberOfTests) && (lTriggerTestSuccess == E_OK))
    {
        lSramId = lGroupTest.TestIds[index];

        /* Check if the memory is a PMEM, as the PMEM needs both of its towers tested */
        if(E_OK == HtxVmtMbist_lCheckPmem(lSramId))
        {
            lEccsRegVal.U = MODULE_MTU.MC[lSramId].ECCS.U;
            lEccsRegVal.B.TC_TWR_SEL = 0U;
            /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
               pointer to other type is done to Fetch the data pointed by the void address */
            /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
               object type and a pointer to a different object type is to fetch the data in the address of type void */
            HtxVmtMbist_lWrSeInitSfr16((volatile uint16*)(volatile void*)&MODULE_MTU.MC[lSramId].ECCS.U,(uint16)lEccsRegVal.U);
            PmemArr[PmemCount] = lSramId;
            PmemCount++;
        } /* if(E_OK == HtxVmtMbist_lCheckPmem(lSramId)) */

        /* Configure and trigger the NDT MBIST */
        lTriggerTestSuccess = HtxVmtMbist_lTriggerTest(lSramId);

        index++;
    } /* while(index < lGroupTest.NumberOfTests) */

    if (lTriggerTestSuccess == E_OK)
    {
        /* Analyze the results of test for each SSH in the Gang */
        index = 0U;
        while (index < lGroupTest.NumberOfTests)
        {
            ReturnValue = HtxVmtMbist_lGetResults(lGroupTest.TestIds[index]);

            if (ReturnValue != HTXVMTMBIST_PASSED)
            { /* if Failed, Exit the loop */
                index = lGroupTest.NumberOfTests + 1U;
            }
            else
            {
                index++;
            }
        } /* while(index < lGroupTest.NumberOfTests) */

        /* Check if any CPUx_PMEME SSH are to be tested again by switching the tower used */
        /* i.e., For testing the complete CPU PMEM (i.e. PSPR + PCACHE area),
           the Non-Destructive test shall be run twice on the
           same memory, once with ECCS.TC_TWR_SEL = 0 and once with ECCS.TC_TWR_SEL = 1 */
        if ((PmemCount > 0U) && (ReturnValue == HTXVMTMBIST_PASSED))
        {
            index = 0U;
            while ((index < PmemCount) && (lTriggerTestSuccess == E_OK))
            {
                lSramId = PmemArr[index];
                lEccsRegVal.U = MODULE_MTU.MC[lSramId].ECCS.U;
                lEccsRegVal.B.TC_TWR_SEL = 1U;
                /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
                   pointer to other type is done to Fetch the data pointed by the void address */
                /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
                   object type and a pointer to a different object type is to fetch the data in the address of type void */
                HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].ECCS.U, (uint16)lEccsRegVal.U);
                lTriggerTestSuccess = HtxVmtMbist_lTriggerTest(lSramId);
                index++;
            } /* while(index < PmemCount) */

            if (lTriggerTestSuccess == E_OK)
            {
                index = 0U;
                while (index < PmemCount)
                {
                    ReturnValue = HtxVmtMbist_lGetResults(PmemArr[index]);
                    if (ReturnValue != HTXVMTMBIST_PASSED)
                    { /* if Failed, Exit the loop */
                        index = PmemCount;
                    }
                    else
                    {
                        index++;
                    }
                } /* while(index < PmemCount) */
            }
            else
            {
                ReturnValue = HTXVMTMBIST_ERR_MTU_TIMEOUT_UND | index;
            }
        }
    }
    else
    {
        ReturnValue = HTXVMTMBIST_ERR_MTU_TIMEOUT_UND | ((uint32)index - 1U);
    }

    return ReturnValue;
} /* End of HtxVmtMbist_lTestGroup() */
#endif /* (HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static Std_ReturnType 
 *                  HtxVmtMbist_lTriggerTest(const uint8 lSramId)
 *
 * \description   : Helper function which triggers the start of the
 *                  MBIST
 *
 *******************************************************************************
 *
 * \param[in]     : lSramId - The index of the memory to be tested.
 *
 * \param[out]    : None
 *
 * \return        : E_OK - When the test was triggered as expected
 *                  E_NOT_OK - When the test wasn't triggered properly 
 * due to timeout
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2637
 *
 ******************************************************************************/
static Std_ReturnType HtxVmtMbist_lTriggerTest(const uint8 lSramId)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_ALMSRCS lAlmSrcsRegVal;
    Ifx_MTU_MC_ECCS lEccsRegVal;
    Std_ReturnType lReturnValue = E_NOT_OK;

    /* Check if the lSram ID is within the range */
    /* If not in range then it will be caught in the result verification stage */
    if (lSramId < HTXVMTMBIST_MAX_SSH)
    {
        /* 1. Ensure that error detection is enabled, via the ALMSRCS and ECCS registers, and check for errors already
              present before the test */
        lAlmSrcsRegVal.U = MODULE_MTU.MC[lSramId].ALMSRCS.U;
        lAlmSrcsRegVal.B.SBE = 1U;
        lAlmSrcsRegVal.B.DBE = 1U;
        lAlmSrcsRegVal.B.ADDRE = 1U;
        lAlmSrcsRegVal.B.OVFE = 1U;
        lAlmSrcsRegVal.B.OPENE = 0U;
        lAlmSrcsRegVal.B.MISCE = 1U;
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].ALMSRCS.U, (uint16)lAlmSrcsRegVal.U);
        lEccsRegVal.U = MODULE_MTU.MC[lSramId].ECCS.U;
        lEccsRegVal.B.CENE = 1U;
        lEccsRegVal.B.UCENE = 1U;
        lEccsRegVal.B.MENE = 1U;
        lEccsRegVal.B.ECE = 1U;
        lEccsRegVal.B.TRE = 1U;
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].ECCS.U, (uint16)lEccsRegVal.U);

        /* 3. RANGE =<memory range to be tested> register assumed to have default reset value. */
        /* This step is skipped as we are testing the entire memory range */

        /* 4. CONFIG0 = 0x4005 */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].CONFIG0.U, (uint16)HTXVMTMBIST_CONFIG0);

        /* 5. CONFIG1 = 0x5008 */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].CONFIG1.U, (uint16)HTXVMTMBIST_CONFIG1);

        /* *ERR flags clear */
        MODULE_MTU.MC[lSramId].ECCD.U = (uint16)HTXVMTMBIST_TEST_CLEAR_ERR_FLAGS;

        /* 6. Set MCONTROL.DIR, RCADR and EN_DESCR and start the test by writing a 1 to register bit MCONTROL.START.
           USERED is ignored and redundancy is always used during an NDT, but still software shall program it to 1.
           MCONTROL := 4009H (use redundancy, direction up = 1, ROW first 0, EN_DESCR = 0, START = 1) */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].MCONTROL.U, HTXVMTMBIST_TESTSRAMSTART);

        /* 7. Wait until MSTATUS.DONE is reset */
        uint32 lTimeoutCounter = 0U;

        while (((*(volatile uint16*)(&MODULE_MTU.MC[lSramId].MSTATUS) & 0x0001U) != 0U) && (lTimeoutCounter < HTXVMTMBIST_TEST_TIMEOUT))
        {
            lTimeoutCounter++;
        }

        if (lTimeoutCounter < HTXVMTMBIST_TEST_TIMEOUT)
        {
            lReturnValue = E_OK;
        }

        /* 8. Clear MCONTROL.START
           MCONTROL := 4008H (use redundancy, direction up, ROW first, EN_DESCR = 0, START = 0) */
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
           pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
           object type and a pointer to a different object type is to fetch the data in the address of type void */
        HtxVmtMbist_lWrSeInitSfr16((volatile uint16 *)(volatile void *)&MODULE_MTU.MC[lSramId].MCONTROL.U, HTXVMTMBIST_TESTSRAMSTOP);
    } /* if(lSramId < HTXVMTMBIST_MAX_SSH) */

    return lReturnValue;
} /* End of HtxVmtMbist_lTriggerTest() */
#endif /* #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxVmtMbist_lSetAllMemtest
 *                  (
 *                     const uint32 lMemtest0,
 *                     const uint32 lMemtest1,
 *                     const uint32 lMemtest2
 *                  )
 *
 * \description   :  Sets the MEMTESTx SFR with the given value
 *
 *******************************************************************************
 *
 * \param[in]     : lMemtest0 - Value to be set for SFR MEMTEST0
 *                  lMemtest1 - Value to be set for SFR MEMTEST1
 *                  lMemtest2 - Value to be set for SFR MEMTEST2
 *
 * \param[out]    : None
 *
 * \return        : E_OK - The MEMTEST SFRs are set properly
 *                  E_NOT_OK - MEMTEST SFR are not set properly
 *                             within the timeout period
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2631
 *
 ******************************************************************************/
static Std_ReturnType HtxVmtMbist_lSetAllMemtest
(
    const uint32 lMemtest0,
    const uint32 lMemtest1,
    const uint32 lMemtest2
)
{
    uint32 lCurMemtest0;
    uint32 lCurMemtest1;
    uint32 lCurMemtest2;
    uint32 Timeout;
    Std_ReturnType RetVal;

    RetVal = E_NOT_OK;

    /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
       pointer to other type is done to Fetch the data pointed by the void address */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
       object type and a pointer to a different object type is to fetch the data in the address of type void */
    /* Set all MEMTESTx SFRs */
    HtxVmtMbist_lWrSeInitSfr32((volatile uint32*)(volatile void*)&MODULE_MTU.MEMTEST0.U,lMemtest0);

    /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
       pointer to other type is done to Fetch the data pointed by the void address */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
       object type and a pointer to a different object type is to fetch the data in the address of type void */
    HtxVmtMbist_lWrSeInitSfr32((volatile uint32*)(volatile void*)&MODULE_MTU.MEMTEST1.U,lMemtest1);

    /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
       pointer to other type is done to Fetch the data pointed by the void address */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
       object type and a pointer to a different object type is to fetch the data in the address of type void */
    HtxVmtMbist_lWrSeInitSfr32((volatile uint32*)(volatile void*)&MODULE_MTU.MEMTEST2.U,lMemtest2);

    /* Wait for the auto initialisation of memories to be cleared.
       this occurs when MEMTESTx is set/cleared */
    Timeout = 0U;
    do
    {
        lCurMemtest0 = (uint32)MODULE_MTU.MEMTEST0.U;
        lCurMemtest1 = (uint32)MODULE_MTU.MEMTEST1.U;
        lCurMemtest2 = (uint32)MODULE_MTU.MEMTEST2.U;
        Timeout++;

    } while(((lCurMemtest0 != lMemtest0) ||
             (lCurMemtest1 != lMemtest1) ||
             (lCurMemtest2 != lMemtest2)) && (Timeout < HTXVMTMBIST_TEST_TIMEOUT));


    if(Timeout < HTXVMTMBIST_TEST_TIMEOUT)
    {
        RetVal = E_OK;
    }

    return RetVal;
} /* End of HtxVmtMbist_lSetAllMemtest() */
#endif /* #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */


#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxVmtMbist_lGetResults
 *                  (const uint8 index)
 *
 * \description   : Helper function which Gets the results of MBIST
 *                  for the selected memory and checks if the memory
 *                  passed the test.
 *
 *******************************************************************************
 *
 * \param[in]     : index - The index of the memory of the results to be checked
 *
 * \param[out]    : None
 *
 * \return        : HTXVMTMBIST_PASSED: Test passed
 *                 (HTXVMTMBIST_ERR_MTU_UNDEFINED | index): Test failed for the SSH index
 *                 (HTXVMTMBIST_ERR_MTU_TIMEOUT_UND | index): Test failed for the SSH index
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2638
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxVmtMbist_lGetResults(const uint8 index)
{
    HtxTestHnd_TstRsltType ReturnValue;
    uint32 TimeoutCounter;

    /* Initialize with the failure Id */
    ReturnValue = ((uint32)HTXVMTMBIST_ERR_MTU_TIMEOUT_UND | (uint32)index);

    if(index < HTXVMTMBIST_MAX_SSH)
    {
        /* 9. Wait for the end of the test - wait for MTU_DONE interrupt to be triggered, or poll MSTATUS.DONE bit to be set,
           via MTU_MEMDONE register.*/
        TimeoutCounter = 0U;
        
        while(((uint8)(*(volatile uint16*)(&MODULE_MTU.MC[index].MSTATUS) & 0x0001U) == (uint8)0U) && (TimeoutCounter < HTXVMTMBIST_TEST_TIMEOUT))
        {
            TimeoutCounter++;
        }

        if(TimeoutCounter < HTXVMTMBIST_TEST_TIMEOUT)
        {
            /* 11. Check the result of the test, verify *ERR bits in ECCD register */
            /* Bits SERR, CERR, UCERR, MERR are checked, bits EOV are indirect error flags */
            if((MODULE_MTU.MC[index].ECCD.U & (uint16)HTXVMTMBIST_ERROR_FLAGS) != 0U)
            {
                ReturnValue = HTXVMTMBIST_ERR_MTU_UNDEFINED | index;
                /* 12. If the test failed check the error tracking register and ETRR overflow bit. */
            }
            else
            {
                ReturnValue = HTXVMTMBIST_PASSED;
            }
        }
    } /* if(index < HTXVMTMBIST_MAX_SSH) */

    return ReturnValue;
} /* End of HtxVmtMbist_lGetResults() */
#endif /* #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */


/*******************************************************************************
 *
 * \function      : static void HtxVmtMbist_lMtuEnable(void)
 *
 * \description   : Enables the MTU and backs up the MTU clock register.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2629
 *
 ******************************************************************************/
static void HtxVmtMbist_lMtuEnable(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;
    volatile uint32 ldummy;

    HtxVmtMbist_Backup = (uint8)MTU_CLC.B.DISS;

    /* Enables the MTU */
    if(HtxVmtMbist_Backup == 0x1U)
    {
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = 0U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U,(uint32)MtuClcReg.U);

        /* Dummy read to avoid pipeline issues related */
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to set the value in the SFR */
        ldummy = MTU_CLC.U;
        HTXSTPIF_UNUSED_PARAMETER(ldummy);
    }
} /* End of HtxVmtMbist_lMtuEnable() */


/*******************************************************************************
 *
 * \function      : static void HtxVmtMbist_lMtuRestoreClc(void)
 *
 * \description   : Restores the state of the MTU to before the test
 *                  was executed.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2630
 *
 ******************************************************************************/
static void HtxVmtMbist_lMtuRestoreClc(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;

    if(HtxVmtMbist_Backup == 0x1U)
    {
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = 1U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U,(uint32)MtuClcReg.U);
    } /* if(HtxVmtMbist_Backup == 0x1U) */

} /* End of HtxVmtMbist_lMtuRestoreClc() */


/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxVmtMbist_lCheckPmem(const uint8 MtuIndex)
 *
 * \description   : Check if the SSH Id is a CPUx_PMEM
 *
 *******************************************************************************
 *
 * \param[in]     : MtuIndex - SSH instance Id
 *
 * \param[out]    : None
 *
 * \return        : E_OK: the Id is a CPUx_PMEM
 *                  E_NOT_OK: The id is not a CPUx_PMEM
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2632
 *
 ******************************************************************************/
static Std_ReturnType HtxVmtMbist_lCheckPmem(const uint8 MtuIndex)
{
    Std_ReturnType RetVal;

    RetVal = E_NOT_OK;

    if(MtuIndex < HTXVMTMBIST_CONST_32)
    {
        if(((uint32)((uint32)1U<<MtuIndex) & HTXVMTMBIST_PMEM_MASK) != 0U)
        {
            RetVal = E_OK;
        }
    } /* if(MtuIndex < HTXVMTMBIST_CONST_32) */

    return RetVal;
} /* End of HtxVmtMbist_lCheckPmem() */

/*******************************************************************************
 *
 * \function      : static INLINE uint32 HtxVmtMbist_lDecryptPw(const uint32 Value)
 *
 * \description   : This function returns the decrypted password, which is
 *                    used to in unlocking the SEICON0 ENDINIT registers
 *
 *******************************************************************************
 *
 * \param[in]     : Value - Data from which password is extracted.
 *
 * \param[out]    : None
 *
 *
 * \return        : The decrypted password.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2633
 *
 ******************************************************************************/
static INLINE uint32 HtxVmtMbist_lDecryptPw(const uint32 Value)
{
    /* Decrypt the password, by extract password from positions [15:2], and
       inverting the last 6 bits on the extracted password */
    return((uint32)(((Value & (uint32)HTXVMTMBIST_ENDINIT_WDT_PWD_MASK) >> \
                     IFX_SCU_WDTCPU_CON0_PW_OFF) ^ \
                    (uint32)HTXVMTMBIST_ENDINIT_WDT_PWD_INV));

} /* End of HtxVmtMbist_lDecryptPw() */


#if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static void HtxVmtMbist_lWrSeInitSfr32
 *                  (
 *                     volatile uint32* const RegAddress,
 *                     const uint32 DataValue
 *                  )
 *
 * \description   : This API is needed to write required values to safety
 *                    end-init protected registers by not protecting to write
 *                    and protecting back to keep protection intact
 *
 *******************************************************************************
 *
 * \param[in]     : DataValue - Value to be written to the register located
 *                               at RegAddress.
 *
 * \param[out]    : RegAddress - Safety Endinit protected register address.
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Not Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2634
 *
 ******************************************************************************/
static void HtxVmtMbist_lWrSeInitSfr32
(
    volatile uint32 * const RegAddress,
    const uint32 DataValue
)
{
    uint32 Password;
    uint32 Seicon0Value;
    /* The variable 'dummy' is made volatile to prevent any optimization of the
     * variable during compilation, since the variable is used only for read back
     * of ENDINIT control registers, after the same register is written in the
     * previous statement */
    volatile uint32 dummy;

    /* Calculate the password from the retrieved SCU_SEICON0 register */
    /* Retrieved the decrypted password from  SCU_SEICON0 register */
    Password = HtxVmtMbist_lDecryptPw((uint32)(MODULE_SCU.SEICON0.U));

    /* Calculate the value to be written in SCU_SEICON0, to unlock it */
    /* Compute the SEICON0 register value to Disable the ENDINIT protection */
    Seicon0Value = ((uint32)HTXVMTMBIST_SAFETY_ENDINIT_WDT_TIMER_REL |
                   ((uint32)Password << (uint32)IFX_SCU_SEICON0_EPW_OFF));

    /* Unlock the SCU_SEICON0 register to disable ENDINIT protection */
    MODULE_SCU.SEICON0.U = Seicon0Value;

    /* Read back the SEICON0 sfr to ensure Write is is done correctly */
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = MODULE_SCU.SEICON0.U;

    /* Update the ENDINIT protected Register with the data passed as a input */
    *RegAddress = (uint32)DataValue;

    /* Calculate the value to be written in SCU_SEICON0,
     * to enable protection of Safety ENDINIT protected registers */
    /* Compute the SEICON0 register value to Re-enable the ENDINIT protection */
    Seicon0Value = ((uint32)HTXVMTMBIST_SAFETY_ENDINIT_WDT_TIMER_REL |
                   ((uint32)Password << (uint32)IFX_SCU_SEICON0_EPW_OFF)|
                   ((uint32)HTXVMTMBIST_SAFETY_ENDINIT_PROTECTED << IFX_SCU_SEICON0_ENDINIT_OFF));

    /* Update the SCU_SEICON0 to enable ENDINIT protection */
    /* Re-enable the ENDINIT protection */
    MODULE_SCU.SEICON0.U = Seicon0Value;

    /* Read back the SEICON0 sfr to ensure Write is done correctly */
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = MODULE_SCU.SEICON0.U;

    HTXSTPIF_UNUSED_PARAMETER(dummy);
} /* End of HtxVmtMbist_lWrSeInitSfr32() */
#endif /* #if(HTXVMTMBIST_GANG_ENABLE_API == STD_ON) */


/*******************************************************************************
 *
 * \function      : static INLINE void HtxVmtMbist_lWrSeInitSfr16
 *                  (
 *                     volatile uint16 * const RegAddress,
 *                     const uint16 DataValue
 *                  )
 *
 * \description   : This API is needed to write required values to safety
 *                    end-init protected registers by not protecting to write
 *                    and protecting back to keep protection intact
 *
 *******************************************************************************
 *
 * \param[in]     : DataValue - Value to be written to the register located
 *                              at RegAddress.
 *
 * \param[out]    : RegAddress - Safety Endinit protected register address.
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Not Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2635
 *
 ******************************************************************************/
static INLINE void HtxVmtMbist_lWrSeInitSfr16
(
    volatile uint16 * const RegAddress,
    const uint16 DataValue
)
{
    uint32 Password;
    uint32 Seicon0Value;

    /* Retrieve the decrypted password from  SCU_SEICON0 register */
    Password = HtxVmtMbist_lDecryptPw((uint32)(MODULE_SCU.SEICON0.U));

    /* Compute the SEICON0 register value to Disable the ENDINIT protection */
    Seicon0Value = ((uint32)HTXVMTMBIST_SAFETY_ENDINIT_WDT_TIMER_REL |
                   ((uint32)Password << (uint32)IFX_SCU_SEICON0_EPW_OFF));

    /* Unlock the SCU_SEICON0 register to disable ENDINIT protection */
    MODULE_SCU.SEICON0.U = Seicon0Value;

    /* Read back the SEICON0 sfr to ensure Write is is done correctly */
    (void)MODULE_SCU.SEICON0.U;

    /* Compute the SEICON0 register value to Re-enable the ENDINIT protection */
    Seicon0Value = ((uint32)HTXVMTMBIST_SAFETY_ENDINIT_WDT_TIMER_REL |
                   ((uint32)Password << (uint32)IFX_SCU_SEICON0_EPW_OFF)|
                   ((uint32)HTXVMTMBIST_SAFETY_ENDINIT_PROTECTED << IFX_SCU_SEICON0_ENDINIT_OFF));

    /* Update the ENDINIT protected Register with the data passed as a input */
    *RegAddress = (uint16)DataValue;

    /* Update the SCU_SEICON0 to enable ENDINIT protection */
    /* Re-enable the ENDINIT protection */
    MODULE_SCU.SEICON0.U = Seicon0Value;

    /* Read back the SEICON0 sfr to ensure Write is done correctly */
    (void)MODULE_SCU.SEICON0.U;
} /* End of HtxVmtMbist_lWrSeInitSfr16() */


/*******************************************************************************
 *
 * \function      : static void HtxVmtMbist_lClearMtuErrSfr(const uint8 MtuIndex)
 *
 * \description   : This clears the MTU SFRs (ECCD, FAULTSTS and ERRINFO[0])
 *                  and re-enables ALMSRCS.OPENE
 *
 *******************************************************************************
 *
 * \param[in]     : MtuIndex - MTU SSH instance
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2636
 *
 ******************************************************************************/
static void HtxVmtMbist_lClearMtuErrSfr(const uint8 MtuIndex)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_FAULTSTS lFaultStsRegVal;

    /* This clears ECCD, ETRR and ERRINFO SFRs */
    MODULE_MTU.MC[MtuIndex].ECCD.U = HTXVMTMBIST_CLR_ECCD_ERR_FLAGS;

    /* This clears the FAULTSTS */
    lFaultStsRegVal.U = MODULE_MTU.MC[MtuIndex].FAULTSTS.U;
    lFaultStsRegVal.B.MISCERR = 0U;
    lFaultStsRegVal.B.OPERR = 0U;

    HtxVmtMbist_lWrSeInitSfr16(&MODULE_MTU.MC[MtuIndex].FAULTSTS.U, lFaultStsRegVal.U);

    /* This re-enables OPENE */
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_ALMSRCS lAlmSrcsRegVal;
    lAlmSrcsRegVal.U = MODULE_MTU.MC[MtuIndex].ALMSRCS.U;
    lAlmSrcsRegVal.B.OPENE = 1U;

    HtxVmtMbist_lWrSeInitSfr16(&MODULE_MTU.MC[MtuIndex].ALMSRCS.U, lAlmSrcsRegVal.U);
} /* End of HtxVmtMbist_lClearMtuErrSfr() */

#if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON)
/*******************************************************************************
 *
 * \function      : static void HtxVmtMbist_lClrSafetyEndinit(uint16 password)
 *
 * \description   : This function clears the ENDINIT bit in SEICON HW
 *
 *******************************************************************************
 *
 * \param[in]     : password - value to be written to unlock the SFR
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2694
 *
 ******************************************************************************/
static void HtxVmtMbist_lClrSafetyEndinit(uint16 password)
{
    /* Clear ENDINT and set LCK bit in Config_0 register */
    SCU_SEICON0.U = ((uint32)0U << IFX_SCU_SEICON0_ENDINIT_OFF) |
                    ((uint32)password << IFX_SCU_SEICON0_EPW_OFF) |
                    ((uint32)SCU_SEICON0.B.REL << IFX_SCU_SEICON0_REL_OFF);

    /* Read back of the register is mandatory to ensure the register update  */
    (void)SCU_SEICON0.U;
} /* End of HtxVmtMbist_lClrSafetyEndinit() */


/*******************************************************************************
 *
 * \function      : static uint16 HtxVmtMbist_lGetSafeWdgPswd(void)
 *
 * \description   : This function returns the password for the SEICON HW
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : 16-bit password value
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2695
 *
 ******************************************************************************/
static uint16 HtxVmtMbist_lGetSafeWdgPswd(void)
{
    uint16 lpassword;

    /* Read Password from Safety WDT CON0 register.
       NOTE: when read bottom six bit of password are inverted so we have
       to toggle them before returning password */
    lpassword  = (uint16)SCU_SEICON0.B.EPW;
    lpassword ^= (uint16)HTXVMTMBIST_WDT_PSW_INV_MSK;

    return lpassword;
} /* End of HtxVmtMbist_lGetSafeWdgPswd() */


/*******************************************************************************
 *
 * \function      : static void HtxVmtMbist_lSetSafetyEndinit(uint16 password)
 *
 * \description   : This function sets the ENDINIT bit in SEICON HW
 *
 *******************************************************************************
 *
 * \param[in]     : password - value to be written to unlock the SFR
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2696
 *
 ******************************************************************************/
static void HtxVmtMbist_lSetSafetyEndinit(uint16 password)
{
    /* Set ENDINT and set LCK bit in CON0 register */
    SCU_SEICON0.U = ((uint32)1U << IFX_SCU_SEICON0_ENDINIT_OFF) |
                    ((uint32)password << IFX_SCU_SEICON0_EPW_OFF) |
                    ((uint32)SCU_SEICON0.B.REL << IFX_SCU_SEICON0_REL_OFF);

    /* Read back of the register is mandatory to ensure the register update  */
    (void)SCU_SEICON0.U;

} /* End of HtxVmtMbist_lSetSafetyEndinit() */
#endif /* #if(HTXVMTMBIST_GANG_DISABLE_API == STD_ON) */


/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
