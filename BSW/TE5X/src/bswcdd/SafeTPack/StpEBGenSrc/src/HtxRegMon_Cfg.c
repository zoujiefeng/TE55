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
** FILENAME : HtxRegMon_Cfg.c                                                 **
**                                                                            **
** REVISION : \$Revision: 26142 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-26, 09:38:32                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxRegMon configuration file                                 **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "HtxRegMon.h"

/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

static const uint8 Htx_kRegMonMtuTestId_0[] =
{
    HTXREGMON_CPU1_DMEM,
    HTXREGMON_CPU1_DTAG,
    HTXREGMON_CPU1_PMEM,
    HTXREGMON_CPU1_PTAG,
    HTXREGMON_CPU1_DLMU_STBY
};
static const uint8 Htx_kRegMonMtuTestId_1[] =
{
    HTXREGMON_CPU0_DMEM,
    HTXREGMON_CPU0_DTAG,
    HTXREGMON_CPU0_PMEM,
    HTXREGMON_CPU0_PTAG,
    HTXREGMON_CPU0_DLMU_STBY
};
static const uint8 Htx_kRegMonMtuTestId_2[] =
{
    HTXREGMON_CPU2_DMEM,
    HTXREGMON_CPU2_DTAG,
    HTXREGMON_CPU2_PMEM,
    HTXREGMON_CPU2_PTAG,
    HTXREGMON_CPU2_DLMU
};
static const uint8 Htx_kRegMonMtuTestId_3[] =
{
    HTXREGMON_CPU3_DMEM,
    HTXREGMON_CPU3_DTAG,
    HTXREGMON_CPU3_PMEM,
    HTXREGMON_CPU3_PTAG,
    HTXREGMON_CPU3_DLMU
};

const HtxRegMon_ConfigSetType HtxRegMon_kConfigSet[HTXREGMON_CFG_COUNT] =
{
    /* Configset: HtxRegMonConfigSet_0 */
    {
        /* Stm 1us ticks */
        100U,
        /* Bitmask for individual module SFF tests triggered via SMU */
        /* IR-bit:2 PMS-bit:5 */
        0x00000024U,
        /* Number of MTU SFF tests */
        5U,
        /* list of SFF tests(5) triggered via MTU */
        &Htx_kRegMonMtuTestId_0[0U]
    },
    /* Configset: HtxRegMonConfigSet_1 */
    {
        /* Stm 1us ticks */
        100U,
        /* Bitmask for individual module SFF tests triggered via SMU */
        /* SMU_core-bit:7 SYS_PLL_PER_PLL-bit:9 */
        0x00000280U,
        /* Number of MTU SFF tests */
        5U,
        /* list of SFF tests(5) triggered via MTU */
        &Htx_kRegMonMtuTestId_1[0U]
    },
    /* Configset: HtxRegMonConfigSet_2 */
    {
        /* Stm 1us ticks */
        100U,
        /* Bitmask for individual module SFF tests triggered via SMU */
        /* CCU-bit:10 */
        0x00000400U,
        /* Number of MTU SFF tests */
        5U,
        /* list of SFF tests(5) triggered via MTU */
        &Htx_kRegMonMtuTestId_2[0U]
    },
    /* Configset: HtxRegMonConfigSet_3 */
    {
        /* Stm 1us ticks */
        100U,
        /* Bitmask for individual module SFF tests triggered via SMU */
        /* No Smu SFF test selected in this configuration */
        0x00000000U,
        /* Number of MTU SFF tests */
        5U,
        /* list of SFF tests(5) triggered via MTU */
        &Htx_kRegMonMtuTestId_3[0U]
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* EOF */
