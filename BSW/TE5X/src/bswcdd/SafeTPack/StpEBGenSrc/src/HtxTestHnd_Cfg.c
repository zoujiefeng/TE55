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
** FILENAME : HtxTestHnd_Cfg.c                                                **
**                                                                            **
** REVISION : \$Revision: 31004 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-27, 15:18:16                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTestHnd configuration file                                **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "HtxTestHnd.h"

/* SafeTpack Test header file */
#include "HtxLbist.h"
#include "HtxMonbist.h"
#include "HtxSfrTstCmp.h"
#include "HtxSfrTstCrc.h"
#include "HtxSmuAliveAlarm.h"
#include "HtxRegMon.h"
#include "HtxVmtMbist.h"
#include "HtxDtsResultA.h"
#include "HtxDtsResultB.h"

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/

/*******************************************************************************
**                      Configuration Options                                 **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* Startup Test Info */
const HtxTestHnd_StartupTestInfoType HtxTestHnd_kStartupTestInfo[HTXTESTHND_TOTAL_STARTUP_TESTS] =
{
    /* 0 */ {&HtxLbist_Test, 0U},
    /* 1 */ {&HtxMonbist_Test, 0U},
    /* 2 */ {&HtxSfrTst_TestCrc, 0U},
    /* 3 */ {&HtxSmuAliveAlarm_Test, 0U},
    /* 4 */ {&HtxRegMon_Test, 0U},
    /* 5 */ {&HtxVmtMbist_Test, 0U},
    /* 6 */ {&HtxVmtMbist_Test, 1U},
    /* 7 */ {&HtxDtsResult_TestA, 0U},
};

/* Run-time Test Info */
const HtxTestHnd_RunTimeTestInfoType HtxTestHnd_kRunTimeTestInfo[HTXTESTHND_TOTAL_RUNTIME_TESTS] =
{
    /* 0 */ {&HtxDtsResult_TestA, 0U, 0U},
    /* 1 */ {&HtxSfrTst_TestCmp, 1U, 1U},
    /* 2 */ {&HtxSfrTst_TestCrc, 1U, 2U},
    /* 3 */ {&HtxSfrTst_TestCmp, 2U, 3U},
    /* 4 */ {&HtxSfrTst_TestCrc, 2U, 4U},
    /* 5 */ {&HtxDtsResult_TestB, 0U, 5U},
    /* 6 */ {&HtxSfrTst_TestCrc, 3U, 0U},
    /* 7 */ {&HtxSfrTst_TestCrc, 4U, 0U},
};

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
const uint8 HtxTestHnd_kStartupTestGroup[HTXTESTHND_STARTUP_TEST_GROUPS][HTXTESTHND_STARTUP_TST_GRP_SIZE] =
{
    {
        /* Test Group 0 */
        HTXTESTHND_LBIST,
        HTXTESTHND_MONBIST,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
    },
    {
        /* Test Group 1 */
        HTXTESTHND_MCU_STARTUP,
        HTXTESTHND_SMU_ALIVE_ALARM,
        HTXTESTHND_REG_MONITOR_TEST,
        HTXTESTHND_MBIST_CONFIG0,
        HTXTESTHND_DTS_RESULT_TEST,
    },
    {
        /* Test Group 2 */
        HTXTESTHND_MBIST_CONFIG1,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
    },
};

/* Startup Test Group Execution Core Info */
const uint8 HtxTestHnd_kStartupTestGrpCore[HTXTESTHND_STARTUP_TEST_GROUPS] =
{
    0U,
    0U,
    1U,
};

/* Run-time Test Group Info */
const uint8 HtxTestHnd_kRunTimeTestGroup[HTXTESTHND_RUNTIME_TEST_GROUPS][HTXTESTHND_RUNTIME_TST_GRP_SIZE] =
{
    {
        /* Test Group 0 */
        HTXTESTHND_DTS_RESULT_CHECK_A,
        HTXTESTHND_SFR_CMP_TEST_CONFIG1,
        HTXTESTHND_SFR_CRC_TEST_CONFIG1,
        HTXTESTHND_DTS_RESULT_CHECK_B,
    },
    {
        /* Test Group 1 */
        HTXTESTHND_SFR_CMP_TEST_CONFIG2,
        HTXTESTHND_SFR_CRC_TEST_CONFIG2,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
    },
    {
        /* Test Group 2 */
        HTXTESTHND_SFR_CRC_CSFR_CORE2,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
    },
    {
        /* Test Group 3 */
        HTXTESTHND_SFR_CRC_CSFR_CORE3,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
        HTXTESTHND_INVALID_TEST_ID,
    },
};

/* Run-time Test Group Execution Core Info */
const uint8 HtxTestHnd_kRunTimeTestGrpCore[HTXTESTHND_RUNTIME_TEST_GROUPS] =
{
    0U,
    1U,
    2U,
    3U,
};


/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

/* EOF */
