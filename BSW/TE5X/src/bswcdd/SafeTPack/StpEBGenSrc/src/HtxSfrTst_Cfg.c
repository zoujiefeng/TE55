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
** FILENAME : HtxSfrTst_Cfg.c                                                 **
**                                                                            **
** REVISION : \$Revision: 26142 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-27, 09:27:06                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxSfrTst_LCfg configuration file                            **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "Ifx_reg.h"

#include "HtxSfrTstCrc.h"
#include "HtxSfrTstCmp.h"

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

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static uint32 HtxSfrTst_MfcrFunc3_0(void);

static uint32 HtxSfrTst_MfcrFunc4_0(void);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"
/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* SfrTest configuration  */
static const HtxSfrTst_SfrCmpType HtxSfrTst_kSfrCmp0[] =
{
    /* SFR Address, value, mask, bit-field width */
    {&DMU_HP_PROCONP01.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP02.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP03.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP04.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP04.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP05.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP10.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP11.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP12.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP13.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP14.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONP15.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HF_PROCONPF.U, 0x0U,  0x80000000U, HTXSFRTST_SFR_BIT_32},
    {&DMU_HF_PROCONUSR.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HF_PROCONDF.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HF_PROCONRAM.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_SF_PROCONUSR.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP00.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP01.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP02.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP03.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP04.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP05.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP10.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP11.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP12.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP13.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP14.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONOTP15.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP00.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP01.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP02.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP03.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP04.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP05.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP10.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP11.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP12.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP13.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP14.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&DMU_HP_PROCONWOP15.U, 0x0U,  0xffffffffU, HTXSFRTST_SFR_BIT_32}
};
/* SfrTest configuration  */
static const HtxSfrTst_SfrCmpType HtxSfrTst_kSfrCmp1[] =
{
    /* SFR Address, value, mask, bit-field width */
    {&SCU_SYSPLLCON0.U, 0x40013a00U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&SCU_SYSPLLCON1.U, 0x1U,  0xffffffffU, HTXSFRTST_SFR_BIT_32}
};
/* SfrTest configuration  */
static const HtxSfrTst_SfrCmpType HtxSfrTst_kSfrCmp2[] =
{
    /* SFR Address, value, mask, bit-field width */
    {&SCU_PERPLLCON0.U, 0x13e00U,  0xffffffffU, HTXSFRTST_SFR_BIT_32},
    {&SCU_PERPLLCON1.U, 0x103U,  0xffffffffU, HTXSFRTST_SFR_BIT_32}
};


/* CSfrTest configuration  */
static const HtxSfrTst_MfcrFuncPtrType HtxSfrTst_kMfcrPtr3[] =
{
    /* SFR Address, value, mask, bit-field width */
    &HtxSfrTst_MfcrFunc3_0
};
/* CSfrTest configuration  */
static const HtxSfrTst_MfcrFuncPtrType HtxSfrTst_kMfcrPtr4[] =
{
    /* SFR Address, value, mask, bit-field width */
    &HtxSfrTst_MfcrFunc4_0
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static uint32 HtxSfrTst_MfcrFunc3_0(void)
{
    return ((uint32)0xfU & (uint32)HTXSTPIF_MFCR(CPU_CORE_ID));
} /* End of HtxSfrTst_MfcrFunc3_0() */

static uint32 HtxSfrTst_MfcrFunc4_0(void)
{
    return ((uint32)0xfU & (uint32)HTXSTPIF_MFCR(CPU_CORE_ID));
} /* End of HtxSfrTst_MfcrFunc4_0() */


/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* The index given in the API function is used to
   choose which configuration is used from HtxSfrTst_kConfigSet */
const HtxSfrTst_ConfigSetType HtxSfrTst_kConfigSet[HTXSFRTST_CFG_PARAM_COUNT] =
{
    /* ConfigSet: 0 */
    {41U, 0U, 0xe66a9f24U, HtxSfrTst_kSfrCmp0, NULL_PTR},
    /* ConfigSet: 1 */
    {2U, 0U, 0x6e592265U, HtxSfrTst_kSfrCmp1, NULL_PTR},
    /* ConfigSet: 2 */
    {2U, 0U, 0x2b40f2f3U, HtxSfrTst_kSfrCmp2, NULL_PTR},
    /* ConfigSet: 3 */
    {0U, 1U, 0xa94df9b6U, NULL_PTR, HtxSfrTst_kMfcrPtr3},
    /* ConfigSet: 4 */
    {0U, 1U, 0xde4ac920U, NULL_PTR, HtxSfrTst_kMfcrPtr4}
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* EOF */
