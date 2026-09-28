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
** FILENAME : HtxIntSafeWdg_Cfg.c                                             **
**                                                                            **
** REVISION : \$Revision: 31004 $                                              **
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
** DESCRIPTION : HtxIntSafeWdg configuration file                             **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "HtxIntSafeWdg.h"

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/

#define HTXINTSAFEWDG_PW_FIXPART_READ      (0x000CU)

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
#define HTXINTSAFEWDG_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxIntSafeWdg_MemMap.h"

/* internal watchdog configuration */
const HtxIntSafeWdg_ConfigType HtxIntSafeWdg_ConfigRoot[HTXINTSAFEWDG_CFG_COUNT] =
{
    {   /* Input frequency */
        0U,
        /* Timer reload value */
        65352U,
        /* Signature table */
        {
            {HTXINTSAFEWDG_PW_FIXPART_READ,        0xB1FEB757U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x300u, 0xE4F3C7A6U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x500u, 0xAFA19196U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x700u, 0xFAACE167U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x900u, 0x65A54D8FU},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0xb00u, 0x30A83D7EU},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0xd00u, 0x7BFA6B4EU},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0xf00u, 0x2EF71BBFU},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0xe00u, 0x0BD49101U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0xc00u, 0x5ED9E1F0U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0xa00u, 0x158BB7C0U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x800u, 0x4086C731U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x600u, 0xDF8F6BD9U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x400u, 0x8A821B28U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x200u, 0xC1D04D18U},
            {HTXINTSAFEWDG_PW_FIXPART_READ+0x100u, 0x94DD3DE9U}
        }
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxIntSafeWdg_MemMap.h"

/*******************************************************************************
**                      Global Funtion Declarations                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/* EOF */
