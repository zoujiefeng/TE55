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
** FILENAME : HtxVmtMbist_Cfg.c                                               **
**                                                                            **
** REVISION : \$Revision: 28367 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-24, 13:35:56                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxVmtMbist configuration file                               **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "HtxVmtMbist.h"

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/

#define HTXVMTMBIST_GANG_SET0_SIZE_A       ((uint8)6U)
#define HTXVMTMBIST_GANG_SET0_SIZE_B       ((uint8)7U)

#define HTXVMTMBIST_GANG_SET1_SIZE_A       ((uint8)4U)
#define HTXVMTMBIST_GANG_SET1_SIZE_B       ((uint8)2U)

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
#define HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

static const uint8 HtxVmtMbist_kGroupSet_0[HTXVMTMBIST_GANG_SET0_SIZE_A][HTXVMTMBIST_GANG_SET0_SIZE_B] =
{
    {   /* Gang 0 */
        HTXVMTMBIST_CPU1_DLMU_STBY,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 2 */
        HTXVMTMBIST_CPU1_DMEM,
        HTXVMTMBIST_CPU2_DMEM,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 3 */
        HTXVMTMBIST_CPU3_DMEM,
        HTXVMTMBIST_CPU3_DLMU,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 4 */
        HTXVMTMBIST_CPU2_DLMU,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 5 */
        HTXVMTMBIST_CPU1_PMEM,
        HTXVMTMBIST_CPU2_PMEM,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 6 */
        HTXVMTMBIST_CPU1_DTAG,
        HTXVMTMBIST_CPU1_PTAG,
        HTXVMTMBIST_CPU2_DTAG,
        HTXVMTMBIST_CPU2_PTAG,
        HTXVMTMBIST_CPU3_DTAG,
        HTXVMTMBIST_CPU3_PMEM,
        HTXVMTMBIST_CPU3_PTAG
    }
};

static const uint8 HtxVmtMbist_kGroupSet_1[HTXVMTMBIST_GANG_SET1_SIZE_A][HTXVMTMBIST_GANG_SET1_SIZE_B] =
{
    {   /* Gang 0 */
        HTXVMTMBIST_CPU0_DLMU_STBY,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 1 */
        HTXVMTMBIST_CPU0_DMEM,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 4 */
        HTXVMTMBIST_CPU0_PMEM,
        HTXVMTMBIST_NONE
    },
    {   /* Gang 6 */
        HTXVMTMBIST_CPU0_DTAG,
        HTXVMTMBIST_CPU0_PTAG
    }
};
const HtxVmtMbist_ConfigSetType HtxVmtMbist_kConfigSet[HTXVMTMBIST_CFG_COUNT] =
{
    /* Configset: HtxVmtMbistConfigSet_0 */
    {
        /* MemTest0 mask */
        0xfffe0U,
        /* MemTest1 mask */
        0x0U,
        /* MemTest2 mask */
        0x0U,
        /* List of SFF group tests triggered via MTU */
        &HtxVmtMbist_kGroupSet_0[0U][0U],
        /* Number of gangs */
        6U,
        /* Number of tests per gang */
        7U,
        /* MBIST test type */
        HTXVMTMBIST_GANG_ENABLE
    },
    /* Configset: HtxVmtMbistConfigSet_1 */
    {
        /* MemTest0 mask */
        0x1fU,
        /* MemTest1 mask */
        0x0U,
        /* MemTest2 mask */
        0x0U,
        /* List of SFF group tests triggered via MTU */
        &HtxVmtMbist_kGroupSet_1[0U][0U],
        /* Number of gangs */
        4U,
        /* Number of tests per gang */
        2U,
        /* MBIST test type */
        HTXVMTMBIST_GANG_ENABLE
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* EOF */
