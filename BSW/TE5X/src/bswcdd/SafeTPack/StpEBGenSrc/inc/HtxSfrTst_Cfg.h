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
** FILENAME : HtxSfrTst_Cfg.h                                                 **
**                                                                            **
** REVISION : \$Revision: 26580 $                                              **
**                                                                            **
** DATE, TIME: 2023-10-20, 10:23:03                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxSfrTst configuration header file                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
#ifndef HTXSFRTST_CFG_H
#define HTXSFRTST_CFG_H
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "HtxStpIf.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/* Number of available configurations for the SFR test */

#define HTXSFRTST_CFG_PARAM_COUNT      (5U)
#define HTXSFRTST_REGCOUNT_MAX         (4095U)
#define HTXSFRTST_SFR_BIT_32           ((uint8)0U)
#define HTXSFRTST_SFR_BIT_16           ((uint8)1U)

#define HTXSFRTST_CSFR_CHECK           (STD_ON)


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
typedef struct HtxSfrTst_SfrCmpType
{
    /* Contains the address of the register to test */
    volatile void* RegisterAddress;
    /* Contains the expected register value */
    uint32 RegisterValue;
    /* Contains the mask used for the test. This mask allows to omit bits within the register */
    uint32 RegisterMask;
    /* Used to select register type */
    uint8 RegisterBitWidth;
} HtxSfrTst_SfrCmpType;

typedef uint32 (*HtxSfrTst_MfcrFuncPtrType)(void);

typedef struct HtxSfrTst_ConfigSetType
{
    /* Gives the number of registers within this set */
    uint32 NumOfSfr;
    /* Gives the number of registers within this set */
    uint32 NumOfCpuSfr;
    /* Holds the expected CRC checksum for test 2 */
    uint32 ExpectedCRCResult;
    /* Actual register configuration */
    const HtxSfrTst_SfrCmpType* SfrList;
    /* Actual register configuration */
    const HtxSfrTst_MfcrFuncPtrType* CpuSfrList;
} HtxSfrTst_ConfigSetType;

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/* Exported SFR test configuration */
extern const HtxSfrTst_ConfigSetType HtxSfrTst_kConfigSet[HTXSFRTST_CFG_PARAM_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Prototypes                            **
*******************************************************************************/

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
#endif  /* HTXSFRTST_CFG_H */

/* EOF */
