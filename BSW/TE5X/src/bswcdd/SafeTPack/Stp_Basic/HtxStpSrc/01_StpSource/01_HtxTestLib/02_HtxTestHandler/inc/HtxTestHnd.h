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
** FILENAME : HtxTestHnd.h                                                    **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-1744             **
**                                                                            **
** DESCRIPTION : AURIX 2G SafeTpack Test Handler Header File                  **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXTESTHND_H
#define HTXTESTHND_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "HtxStpIf.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxTestHnd_ErrorCodes.h"
#include "HtxTestHnd_Cfg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/* Macro to specify the invalid test ID */
#define HTXTESTHND_INVALID_TEST_ID     (0xFFU)

/* Macro to specify all the test phases in the test handler */
#define HTXTESTHND_INVALID_PHASE       ((HtxTestHnd_TstPhaseType)0U)
#define HTXTESTHND_STARTUP_PHASE       ((HtxTestHnd_TstPhaseType)1U)
#define HTXTESTHND_RUN_PHASE           ((HtxTestHnd_TstPhaseType)2U)

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* SafeTpack Test Phase */
typedef uint32 HtxTestHnd_TstPhaseType;

/* Test Function Pointer Type */
typedef HtxTestHnd_TstRsltType (*HtxTestHnd_TestFptrType)
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);

#if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)

/* Startup Test Info Type */
typedef struct HtxTestHnd_StartupTestInfoType
{
    HtxTestHnd_TestFptrType TestFuncPtr;
    uint8 ParamSetIdx;
} HtxTestHnd_StartupTestInfoType;

#endif

#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)

/* Run-time Test Info Type */
typedef struct HtxTestHnd_RunTimeTestInfoType
{
    HtxTestHnd_TestFptrType TestFuncPtr;
    uint8 ParamSetIdx;
    uint8 SmuSoftwareAlarmIdx;
} HtxTestHnd_RunTimeTestInfoType;

#endif

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/



#if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* Startup Test Info */
extern const HtxTestHnd_StartupTestInfoType HtxTestHnd_kStartupTestInfo[HTXTESTHND_TOTAL_STARTUP_TESTS];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

/* Startup Test Group Info */
extern const uint8 HtxTestHnd_kStartupTestGroup[HTXTESTHND_STARTUP_TEST_GROUPS][HTXTESTHND_STARTUP_TST_GRP_SIZE];

/* Startup Test Group Execution Core Info */
extern const uint8 HtxTestHnd_kStartupTestGrpCore[HTXTESTHND_STARTUP_TEST_GROUPS];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

#endif /* #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U) */

#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* Run-time Test Info */
extern const HtxTestHnd_RunTimeTestInfoType HtxTestHnd_kRunTimeTestInfo[HTXTESTHND_TOTAL_RUNTIME_TESTS];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"


/* Run-time Test Group Info */
extern const uint8 HtxTestHnd_kRunTimeTestGroup[HTXTESTHND_RUNTIME_TEST_GROUPS][HTXTESTHND_RUNTIME_TST_GRP_SIZE];

/* Run-time Test Group Execution Core Info */
extern const uint8 HtxTestHnd_kRunTimeTestGrpCore[HTXTESTHND_RUNTIME_TEST_GROUPS];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

#endif /* #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U) */



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
extern Std_ReturnType HtxTestHnd_Init(void);


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

extern Std_ReturnType HtxTestHnd_ExecStartupTestGrp
(
    const uint8 TstSeed,
    const uint8 TstGroupIndex,
    uint32* const TstSignaturePtr
);

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
extern Std_ReturnType HtxTestHnd_SwitchToRunPhase(void);


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
extern Std_ReturnType HtxTestHnd_ExecRuntimeTestGrp
(
    const uint8 TstSeed,
    const uint8 TstGroupIndex,
    uint32* const TstSignaturePtr
);

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
extern void HtxTestHnd_ClearRuntimeTestData(void);

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
extern HtxTestHnd_TstRsltType HtxTestHnd_GetStartupTestResult(const uint8 TestIndex);

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
extern HtxTestHnd_TstRsltType HtxTestHnd_GetRuntimeTestResult(const uint8 TestIndex);

#endif /* #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U) */


 /* MISRA2012_RULE_20_1_JUSTIFICATION:
    MemMap header usage as per AUTOSAR guideline */
 /* MISRA2012_RULE_4_10_JUSTIFICATION:
    MemMap header is repeatedly included without safeguard.
    It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"


#endif /* HTXTESTHND_H */

/* EOF */
