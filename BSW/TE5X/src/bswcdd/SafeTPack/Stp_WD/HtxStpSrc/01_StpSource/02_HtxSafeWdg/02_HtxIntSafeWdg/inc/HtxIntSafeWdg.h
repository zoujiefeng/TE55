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
** FILENAME : HtxIntSafeWdg.h                                                 **
**                                                                            **
** REVISION : \$Revision: 26580 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-10-18 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2305             **
**                                                                            **
** DESCRIPTION : Internal Safety Watchdog Driver Header File                  **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXINTSAFEWDG_H
#define HTXINTSAFEWDG_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxWdgIf_Types.h"
#include "HtxIntSafeWdg_Cfg.h"
#include "HtxStpIf.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* Configuration container for seed/signature pairs for internal watchdog */
typedef struct HtxIntSafeWdg_SignaturesType
{
    /* Password value for internal watchdog: */
    uint32 BaseValue;
    /* Expected signature to be used for watchdog service: */
    uint32 ExptdTstSig;
} HtxIntSafeWdg_SignaturesType;

/* Configuration container for internal watchdog */
typedef struct HtxIntSafeWdg_ConfigType
{
    /* Input frequency selector for slow service interval */
    uint8 SwdtInputFreq;
    /* Timer reload value for slow service interval */
    uint16 SwdtTimerReload;
    /* Signature table */
    HtxIntSafeWdg_SignaturesType SwdtSignTable[HTXWDGIF_SAFEWDG_MAXNBR_SEED];
} HtxIntSafeWdg_ConfigType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxIntSafeWdg_MemMap.h"

extern const HtxIntSafeWdg_ConfigType HtxIntSafeWdg_ConfigRoot[HTXINTSAFEWDG_CFG_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxIntSafeWdg_MemMap.h"

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
#define HTXINTSAFEWDG_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxIntSafeWdg_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_Init
 *                  (const HtxIntSafeWdg_ConfigType* const ConfigPtr)
 *
 * \description   : This function initialises the internal safety watchdog driver
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigPtr - Pointer to driver configuration structure
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x06
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1668
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxIntSafeWdg_Init(const HtxIntSafeWdg_ConfigType* const ConfigPtr);


/*******************************************************************************
 *
 * \function      : void HtxIntSafeWdg_DeInit(void)
 *
 * \description   : This function enables the internal safety watchdog driver
 *                  (the default state ofsafety watchdog after reset)
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x07
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1669
 *
 ******************************************************************************/
extern void HtxIntSafeWdg_DeInit(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_Activate(void)
 *
 * \description   : This function enables watchdog with slow interval settings
 *                  and set initial
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x08
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1671
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxIntSafeWdg_Activate(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_Service (const uint32 Signature)
 *
 * \description   : This function services the watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : Signature - signature to be used for servicing the watchdog
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result:
 *                  HTXWDGIF_JOB_SUCCESS:
 *                  Operation successfully performed.
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  Job failed due to driver internal data checksum failure.
 *
 *                  HTXWDGIF_JOB_INV_STATE:
 *                  Job failed because job is requested from a forbidden state.
 *
 *                  HTXWDGIF_JOB_FAILED_SERVICE:
 *                  Job failed due to service failure.
 *
 *******************************************************************************
 *
 * \service id:   : 0x09
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1682
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxIntSafeWdg_Service(const uint32 Signature);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_IntWdgStateType HtxIntSafeWdg_GetState(void)
 *
 * \description   : This function reads back the current state (active / failed)
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result:
 *                  HTXWDGIF_INT_SWDG_INIT:
 *                  Watchdog is initialized and it is in OFF state.
 *
 *                  HTXWDGIF_INT_SWDG_ACTIVE:
 *                  Watchdog is activated and it is in ON state. and requires servicing
 *
 *                  HTXWDGIF_INT_SWDG_FAIL:
 *                  The watchdog is in ON state however the servicing failed
 *                  i.e.overflow error / access error
 *
 *                  HTXWDGIF_INT_SWDG_UNKNOWN:
 *                  The watchdog state is unknown.
 *
 *******************************************************************************
 *
 * \service id:   : 0x0A
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2211
 *
 ******************************************************************************/
extern HtxWdgIf_IntWdgStateType HtxIntSafeWdg_GetState(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_GetSeed(uint8* const NextSeedPtr)
 *
 * \description   : This function returns the next seed value to be used
 *
 *******************************************************************************
 *
 * \param[in]     : NextSeedPtr - Pointer to next Seed
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result:
 *                  HTXWDGIF_JOB_SUCCESS:
 *                  Operation successfully performed.
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  Job failed due to driver internal data checksum failure.
 *
 *                  HTXWDGIF_JOB_INV_STATE:
 *                  Job failed because job is requested from a forbidden state.
 *
 *                  HTXWDGIF_JOB_INV_PARAM:
 *                  Job failed due to invalid parameter.
 *******************************************************************************
 *
 * \service id:   : 0x0B
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1683
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxIntSafeWdg_GetSeed(uint8* const NextSeedPtr);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxIntSafeWdg_MemMap.h"


#endif /* HTXINTSAFEWDG_H */

/* EOF */

