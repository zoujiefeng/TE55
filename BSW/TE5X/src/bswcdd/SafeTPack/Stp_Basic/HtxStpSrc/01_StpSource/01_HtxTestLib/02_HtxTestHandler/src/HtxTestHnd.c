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
** FILENAME : HtxTestHnd.c                                                    **
**                                                                            **
** REVISION : \$Revision: 28367 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-04-01 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2230             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2288             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2229             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2227             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2228             **
**                                                                            **
** DESCRIPTION : AURIX 2G SafeTpack Test Handler Source File                  **
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

#include "HtxTestHnd.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

#define HTXTESTHND_CORRECT_VALUE         (0xFFFFFFFFU)

/* SMU SW Alarm Group ID */
#define HTXTESTHND_SMU_SW_ALARM_GROUP    (10U)

#define HTXTESTHND_MAX_TEST_SEED         (0xFU)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

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
#define HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

/* Redundant storage for Test phase */
static HtxTestHnd_TstPhaseType HtxTestHnd_Phase;
static HtxTestHnd_TstPhaseType HtxTestHnd_PhaseBackup;

/* Test results buffer */
#if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
static HtxTestHnd_TstRsltType HtxTestHnd_StartupTestResults[HTXTESTHND_TOTAL_STARTUP_TESTS];
#endif

#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
static HtxTestHnd_TstRsltType HtxTestHnd_RuntimeTestResults[HTXTESTHND_TOTAL_RUNTIME_TESTS];
#endif

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static void HtxTestHnd_lSetPhase(const HtxTestHnd_TstPhaseType TestPhase);

static HtxTestHnd_TstPhaseType HtxTestHnd_lGetPhase(void);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTestHnd_Init(void)
 *
 * \description   : This function initialises test handler for startup test phase
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : E_OK: Successful initialisation
 *                  E_NOT_OK: Initialisation failed
 *
 *******************************************************************************
 *
 * \service id:   : 0x31
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1728
 *
 ******************************************************************************/
Std_ReturnType HtxTestHnd_Init(void)
{
    Std_ReturnType Result;
    uint8 TestIndex;
    uint8 CoreId;

    Result = E_NOT_OK;

    CoreId = (uint8)HTXSTPIF_GET_CPU_INDEX();

    /* Check if the Core Id is the Master */
    if(CoreId == HTXTESTHND_MASTER_CORE_ID)
    {
        #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
        /* Initialise Startup Test Results */
        for(TestIndex = 0U; TestIndex < HTXTESTHND_TOTAL_STARTUP_TESTS; TestIndex++)
        {
            HtxTestHnd_StartupTestResults[TestIndex] = HTXTESTHND_TEST_NOT_EXECUTED;
        }
        #endif /* #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U) */

        /* Set the Start phase */
        HtxTestHnd_lSetPhase(HTXTESTHND_STARTUP_PHASE);

        Result = E_OK;
    }

    return Result;

} /* End of HtxTestHnd_Init() */

#if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTestHnd_ExecStartupTestGrp
 *                  (
 *                      const uint8 TstSeed,
 *                      const uint8 TstGroupIndex,
 *                      uint32* const TstSignaturePtr,
 *                  )
 *
 * \description   : This function executes the given startup phase test group
 *
 *******************************************************************************
 *
 * \param[in]     : TstSeed - Test seed
 * \param[in]     : TstGroupIndex - Test group index
 *
 * \param[in,out] : TstSignaturePtr - Pointer to test signature
 *
 * \param[out]    : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x32
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1729
 *
 ******************************************************************************/
Std_ReturnType HtxTestHnd_ExecStartupTestGrp
(
    const uint8 TstSeed,
    const uint8 TstGroupIndex,
    uint32* const TstSignaturePtr
)
{
    HtxTestHnd_TstRsltType lTestResult;
    uint32 lTestSignature;
    Std_ReturnType lRetVal;
    uint8 lTestIndex;
    uint8 lTestFailCount;
    uint8 lParamSetIndex;
    uint8 lTestNum;
    uint8 lCoreId;

    lRetVal = E_NOT_OK;
    lTestSignature = 0U;
    lTestFailCount = 0U;

    if(HTXTESTHND_STARTUP_PHASE == HtxTestHnd_lGetPhase())
    {
        lCoreId = (uint8)HTXSTPIF_GET_CPU_INDEX();

        /* Check for valid Test Group index */
        if(TstGroupIndex < HTXTESTHND_STARTUP_TEST_GROUPS)
        {   /* Check for valid Core */
            if(lCoreId == HtxTestHnd_kStartupTestGrpCore[TstGroupIndex])
            {   /* Check for valid Test seed */
                if (TstSeed <= HTXTESTHND_MAX_TEST_SEED)
                {   /* Check for valid signature address */
                    if (TstSignaturePtr != NULL_PTR)
                    {
                        lRetVal = E_OK;
                    }
                }
            }
        } /* if(CoreId == HtxTestHnd_kStartupTestGrpCore[TstGroupIndex]) */
    }

    /* Check if all the input parameters are valid/correct */
    if(lRetVal == E_OK)
    {
        for (lTestIndex = 0U; lTestIndex < HTXTESTHND_STARTUP_TST_GRP_SIZE; lTestIndex++)
        {
            /* MISRA2012_RULE_18_1_JUSTIFICATION:
               2-dimensional array, HtxTestHnd_kStartupTestGroup of size
               [HTXTESTHND_STARTUP_TEST_GROUPS]*[HTXTESTHND_STARTUP_TST_GRP_SIZE]
               is accessed within the range.
               i.e.,
               TstGroupIndex is always less than HTXTESTHND_STARTUP_TEST_GROUPS,
               lTestIndex is always less than HTXTESTHND_STARTUP_TST_GRP_SIZE */
            lTestNum = HtxTestHnd_kStartupTestGroup[TstGroupIndex][lTestIndex];

            /* Check if the test index is less than maximum */
            #if(HTXTESTHND_STARTUP_INV_CHECK == STD_ON)
            if(lTestNum < HTXTESTHND_TOTAL_STARTUP_TESTS)
            #endif
            {
                lParamSetIndex = HtxTestHnd_kStartupTestInfo[lTestNum].ParamSetIdx;

                if(HtxTestHnd_kStartupTestInfo[lTestNum].TestFuncPtr != NULL_PTR)
                {
                    /* Invoke the Startup test */
                    lTestResult = HtxTestHnd_kStartupTestInfo[lTestNum].TestFuncPtr(lParamSetIndex, TstSeed, TstSignaturePtr);

                    /* TstSignaturePtr is validated to be not NULL and is sent to SafeTpack tests for signature calculation
                       argument of the test, which is a const type and its value is not corrupted within the SafeTpack test.
                       Hence a NULL pointer check is avoided for better performance */
                    lTestSignature = (uint32)HTXSTPIF_CRC32(lTestSignature, *TstSignaturePtr);

                    HtxTestHnd_StartupTestResults[lTestNum] = lTestResult;

                    /* Check if the previous test execution passed/failed */
                    if(!HTXTESTHND_SUCCESS(lTestResult))
                    {
                        lTestFailCount++;
                    }
                }
                else
                {
                    lTestFailCount++;
                }
            } /* if(TestIndex < HTXTESTHND_TOTAL_STARTUP_TESTS) */
        }

        /* Check If atleast one of the test failed OR the test pointer is NULL */
        if(lTestFailCount == 0U)
        {
            lRetVal = E_OK;
        }
        else
        {
            lRetVal = E_NOT_OK;
        }

        *TstSignaturePtr = lTestSignature;
    }

    return lRetVal;

} /* End of HtxTestHnd_ExecStartupTestGrp() */
#endif /* #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U) */

/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTestHnd_SwitchToRunPhase(void)
 *
 * \description   : This function switches test phase from STARTUP to RUN phase.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x33
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1740
 *
 ******************************************************************************/
Std_ReturnType HtxTestHnd_SwitchToRunPhase(void)
{
    HtxTestHnd_TstPhaseType TestPhase;
    Std_ReturnType Result;
    uint8 CoreId;

    Result = E_NOT_OK;

    CoreId = (uint8)HTXSTPIF_GET_CPU_INDEX();

    if(CoreId == HTXTESTHND_MASTER_CORE_ID)
    {
        TestPhase = HtxTestHnd_lGetPhase();

        if(TestPhase == HTXTESTHND_STARTUP_PHASE)
        {
            HtxTestHnd_lSetPhase(HTXTESTHND_RUN_PHASE);

            Result = E_OK;
        }
    }

    return Result;

} /* End of HtxTestHnd_InitRunPhase() */


#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxTestHnd_ExecRuntimeTestGrp
 *                                 (
 *                                     const uint8 TstSeed,
 *                                     const uint8 TstGroupIndex,
 *                                     uint32* const TstSignaturePtr,
 *                                 )
 *
 * \description   : This function executes the given run-time test group
 *
 *******************************************************************************
 *
 * \param[in]     : TstSeed - Test seed
 * \param[in]     : TstGroupIndex - Test group index
 *
 * \param[in,out] : TstSignaturePtr - Pointer to test signature
 *
 * \param[out]    : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x34
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1743
 *
 ******************************************************************************/
Std_ReturnType HtxTestHnd_ExecRuntimeTestGrp
(
    const uint8 TstSeed,
    const uint8 TstGroupIndex,
    uint32* const TstSignaturePtr
)
{
    HtxTestHnd_TstRsltType lTestResult;
    uint32 lTestSignature;
    Std_ReturnType lRetVal;
    uint8 lTestIndex;
    uint8 lTestFailCount;
    uint8 lParamSetIndex;
    uint8 lSmuSwAlarmIdx;
    uint8 lTestNum;
    uint8 lCoreId;

    /* Initialise */
    lRetVal = E_NOT_OK;
    lTestSignature = 0U;
    lTestFailCount = 0U;
    lCoreId = (uint8)HTXSTPIF_GET_CPU_INDEX();

    if(HTXTESTHND_RUN_PHASE == HtxTestHnd_lGetPhase())
    {
        if(TstGroupIndex < HTXTESTHND_RUNTIME_TEST_GROUPS)
        {
            if(lCoreId == HtxTestHnd_kRunTimeTestGrpCore[TstGroupIndex])
            {
                if(TstSeed <= HTXTESTHND_MAX_TEST_SEED)
                {
                    if(TstSignaturePtr != NULL_PTR)
                    {
                        lRetVal = E_OK;
                    }
                }
            }
        } /* if(CoreId == HtxTestHnd_kRunTimeTestGrpCore[TstGroupIndex]) */
    }

    if(E_OK == lRetVal)
    {   /* Fetch all the tests from the test group */
        for (lTestIndex = 0U; lTestIndex < HTXTESTHND_RUNTIME_TST_GRP_SIZE; lTestIndex++)
        {
            /* MISRA2012_RULE_18_1_JUSTIFICATION:
               2-dimensional array, HtxTestHnd_kRuntimeTestGroup of size
               [HTXTESTHND_RUNTIME_TEST_GROUPS]*[HTXTESTHND_RUNTIME_TST_GRP_SIZE]
               is accessed within the range.
               i.e.,
               TstGroupIndex is always less than HTXTESTHND_RUNTIME_TEST_GROUPS,
               lTestIndex is always less than HTXTESTHND_RUNTIME_TST_GRP_SIZE */
            lTestNum = HtxTestHnd_kRunTimeTestGroup[TstGroupIndex][lTestIndex];

            /* Check if the test index is less than maximum */
            #if(HTXTESTHND_RUNTIME_INV_CHECK == STD_ON)
            if(lTestNum < HTXTESTHND_TOTAL_RUNTIME_TESTS)
            #endif
            {
                lParamSetIndex = HtxTestHnd_kRunTimeTestInfo[lTestNum].ParamSetIdx;

                /* Fetch the SMU SW alarm Id */
                lSmuSwAlarmIdx = HtxTestHnd_kRunTimeTestInfo[lTestNum].SmuSoftwareAlarmIdx;

                if(HtxTestHnd_kRunTimeTestInfo[lTestNum].TestFuncPtr != NULL_PTR)
                {
                    /* Invoke the Runtime test */
                    lTestResult = HtxTestHnd_kRunTimeTestInfo[lTestNum].TestFuncPtr(lParamSetIndex, TstSeed, TstSignaturePtr);

                    /* TstSignaturePtr is validated to be not NULL and is sent to SafeTpack tests for signature calculation
                       argument of the test is a const type and its value is not corrupted within the test.
                       Hence a NULL pointer check is avoided for better performance */
                    /* MISRA2012_RULE_8_5_JUSTIFICATION:
                       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
                       Its definition/declaration is specific to the compiler */
                    lTestSignature = (uint32)HTXSTPIF_CRC32(lTestSignature, *TstSignaturePtr);

                    HtxTestHnd_RuntimeTestResults[lTestNum] = lTestResult;

                    /* Check if the previous test execution passed/failed */
                    if(!HTXTESTHND_SUCCESS(lTestResult))
                    {
                        #if (HTXTESTHND_SET_SMU_ALM_CALLER != HTXTESTHND_ALM_NONE)
                        #if(HTXTESTHND_SET_SMU_ALM_CALLER == HTXTESTHND_ALM_MASTER_CORE_ONLY)
                        if(lCoreId == HTXTESTHND_MASTER_CORE_ID)
                        #endif
                        {
                            /* MISRA2012_RULE_10_3_JUSTIFICATION:
                               (1) Value of "HTXTESTHND_SMU_SW_ALARM_GROUP" is fixed to 10,
                               (2) Value of variable "lSmuSwAlarmIdx" is fethced from configuration and has range(0-15)
                               Conversion of the values (1) and (2), to any enumeration defined for SMU alarm group and
                               SMU alarm index respectively would produce the expected valid results */
                            /* MISRA2012_RULE_10_5_JUSTIFICATION:
                               To maintain the compatibility/common-source-code, independent of SMU driver implementation */
                            /* Raise SMU alarm to indicate that the SafeTpack test has failed */
                            (void)HTXSTPIF_SET_SMU_ALARM_FUNC((uint8)HTXTESTHND_SMU_SW_ALARM_GROUP,lSmuSwAlarmIdx);
                        }
                        #endif
                        lTestFailCount++;
                    }
                }
                else
                {
                    lTestFailCount++;
                }
            } /* if(TestIndex < HTXTESTHND_TOTAL_RUNTIME_TESTS) */
        }

        /* Check If atleast one of the test failed OR the test pointer is NULL */
        if(lTestFailCount == 0U)
        {
            lRetVal = E_OK ;
        }
        else
        {
            lRetVal = E_NOT_OK ;
        }
        *TstSignaturePtr = lTestSignature;
    }

    return lRetVal;

} /* End of HtxTestHnd_ExecRunTimeTestGrp() */
#endif /* #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U) */


#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : void HtxTestHnd_ClearRuntimeTestData(void)
 *
 * \description   : This function clears the test data related to runtime tests
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x35
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2565
 *
 ******************************************************************************/
void HtxTestHnd_ClearRuntimeTestData(void)
{
    uint8 Index;

    /* Invalidate Runtime Test Results */
    for(Index = 0U; Index < HTXTESTHND_TOTAL_RUNTIME_TESTS; Index++)
    {
        HtxTestHnd_RuntimeTestResults[Index] = HTXTESTHND_TEST_NOT_EXECUTED;
    }

} /* End of HtxTestHnd_ClearRuntimeTestData() */
#endif /* #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U) */

#if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxTestHnd_GetStartupTestResult
 *                  (const uint8 TestIndex)
 *
 * \description   : This function returns the test result of the startup test
 *                  specified by the TestIndex
 *
 *******************************************************************************
 *
 * \param[in]     : TestIndex - This is the test index (startup)
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : Test Result (Startup test result)
 *                  (Refer to the user manual for the complete error list)
 *                  (defined in HtxTestHnd_ErrorCodes.h)
 *
 *******************************************************************************
 *
 * \service id:   : 0x36
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2655
 *
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxTestHnd_GetStartupTestResult(const uint8 TestIndex)
{
    HtxTestHnd_TstRsltType lRetVal;

    lRetVal = HTXTESTHND_INVALID_RESULT;

    if(TestIndex < HTXTESTHND_TOTAL_STARTUP_TESTS)
    {
        lRetVal = HtxTestHnd_StartupTestResults[TestIndex];
    }

    return lRetVal;
} /* End of HtxTestHnd_GetStartupTestResult() */
#endif /* #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U) */

#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxTestHnd_GetRuntimeTestResult
 *                  (const uint8 TestIndex)
 *
 * \description   : This function returns the test result of the runtime test
 *                  specified by the TestIndex
 *
 *******************************************************************************
 *
 * \param[in]     : TestIndex - This is the test index (runtime)
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : Test Result (Runtime test result)
 *                  (Refer to the user manual for the complete error list)
 *                  (defined in HtxTestHnd_ErrorCodes.h)
 *
 *******************************************************************************
 *
 * \service id:   : 0x37
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2656
 *
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxTestHnd_GetRuntimeTestResult(const uint8 TestIndex)
{
    HtxTestHnd_TstRsltType lRetVal;

    lRetVal = HTXTESTHND_INVALID_RESULT;

    if(TestIndex < HTXTESTHND_TOTAL_RUNTIME_TESTS)
    {
        lRetVal = HtxTestHnd_RuntimeTestResults[TestIndex];
    }

    return lRetVal;
} /* End of HtxTestHnd_GetRuntimeTestResult() */
#endif /* #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U) */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static void HtxTestHnd_lSetPhase(HtxTestHnd_TstPhaseType TestPhase)
 *
 * \description   : This function sets test phase.
 *
 *******************************************************************************
 *
 * \param[in]     : TestPhase - Test phase
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1742
 *
 ******************************************************************************/
static void HtxTestHnd_lSetPhase(const HtxTestHnd_TstPhaseType TestPhase)
{
    HtxTestHnd_Phase = TestPhase;
    HtxTestHnd_PhaseBackup = (~TestPhase);

} /* End of HtxTestHnd_lSetPhase() */

/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstPhaseType HtxTestHnd_lGetPhase(void)
 *
 * \description   : This function provides the test phase.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : Test phase
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1748
 *
 ******************************************************************************/
static HtxTestHnd_TstPhaseType HtxTestHnd_lGetPhase(void)
{
    HtxTestHnd_TstPhaseType TestPhase;

    TestPhase = HtxTestHnd_Phase;

    if ((HtxTestHnd_PhaseBackup ^ TestPhase) != HTXTESTHND_CORRECT_VALUE)
    {
        TestPhase = HTXTESTHND_INVALID_PHASE;
    }

    return TestPhase;

} /* End of HtxTestHnd_lGetPhase() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
