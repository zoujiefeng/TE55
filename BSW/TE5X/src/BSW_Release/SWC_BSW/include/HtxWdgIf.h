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
** FILENAME : HtxWdgIf.h.h                                                    **
**                                                                            **
** REVISION : \$Revision: 26773 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-11-02 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Watchdog Interface Header File                               **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXWDGIF_H
#define HTXWDGIF_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"
#include "HtxWdgIf_Types.h"
#include "HtxWdgIf_Cfg.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

#define HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxWdgIf_MemMap.h"

extern const HtxWdgIf_ConfigType HtxWdgIf_ConfigRoot[HTXWDGIF_CFG_COUNT];

#define HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxWdgIf_MemMap.h"

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
#define HTXWDGIF_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxWdgIf_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_Init
 *                  (
 *                      const HtxWdgIf_ConfigType* const ConfigPtr
 *                  )
 *
 * \description   : Initialize Safe watchdog Interface
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigPtr - pointer to configuration
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_SUCCESS   : No error occurred
 *                  HTXWDGIF_JOB_ACCEPTED  : Init Job accepted and ongoing
 *                  HTXWDGIF_JOB_INV_PARAM : Job failed due to invalid parameter
 *                  HTXWDGIF_JOB_INV_STATE : Job failed because job is requested
 *                                           from a forbidden state
 *******************************************************************************
 *
 * \service id:   : 0x11
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2271
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_Init(const HtxWdgIf_ConfigType* const ConfigPtr);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_DeInit (void)
 *
 * \description   : Move driver state back to reset state
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_SUCCESS   : DeInit successful
 *                  HTXWDGIF_JOB_ACCEPTED  : Job Accepted
 *                  HTXWDGIF_JOB_BUSY      : Job failed because driver is busy
 *                                           processing the earlier job request
 *
 *******************************************************************************
 *
 * \service id:   : 0x12
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2272
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_DeInit(void);

/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_Activate (void)
 *
 * \description   : Activate the watchdog to require being serviced afterwards
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_SUCCESS    : Underlying watchdog(s)activated.
 *                  HTXWDGIF_JOB_ACCEPTED   : Job ongoing
 *                  HTXWDGIF_JOB_BUSY       : Job failed because driver is busy
 *                                                 processing the earlier job request.
 *                  HTXWDGIF_JOB_INV_STATE  : Job failed because job is
 *                                                 requested from a forbidden state.
 *                  HTXWDGIF_JOB_FAILED_CRC : Job failed due to driver
 *                                                 internal data checksum failure
 *                  HTXWDGIF_JOB_INV_PARAM  : Job failed due to invalid
 *                                                 parameter.
 *
 *******************************************************************************
 *
 * \service id:   : 0x13
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : HtxWdgIf_Init API should be invoked
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2262
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_Activate(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_Service(const uint32 Signature)
 *
 * \description   : Watchdog service with given signature
 *
 *******************************************************************************
 *
 * \param[in]     : Signature : value to be used to service underlying watchdog
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_SUCCESS        : Watchdog serviced successfully.
 *                  HTXWDGIF_JOB_ACCEPTED       : Service job accepted and ongoing
 *                  HTXWDGIF_JOB_FAILED_SERVICE : Job failed due to service failure.
 *                  HTXWDGIF_JOB_INV_STATE      : Job failed because job is
 *                                                requested from a forbidden state.
 *                  HTXWDGIF_JOB_FAILED_CRC     : Job failed due to driver
 *                                                internal data checksum failure
 *                  HTXWDGIF_JOB_BUSY           : Job failed because the driver is
 *                                                busy processing the earlier job request.
 *                  HTXWDGIF_JOB_INVALID_SEED   : Job failed due to invalid last seed
 *
 *******************************************************************************
 *
 * \service id:   : 0x14
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : HtxWdgIf_Activate API should be invoked
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2263
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_Service(const uint32 Signature);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_GetSeed
 *                  (
 *                      uint8* const NextSeedPtr
 *                  )
 *
 * \description   : Deliver next seed to be used
 *
 *******************************************************************************
 * \param[in]     : none
 * \param[in,out]): *NextSeedPtr: pointer to store the the seed value
 *
 * \return        : HTXWDGIF_JOB_SUCCESS      : Seed value updated successfully.
 *                  HTXWDGIF_JOB_FAILED_CRC   : Job failed due to driver internal
 *                                                   data checksum failure.
 *                  HTXWDGIF_JOB_INV_PARAM    : Job failed due to invalid
 *                                                   parameter.
 *                  HTXWDGIF_JOB_INVALID_SEED : Job failed due to invalid seed.
 *                  HTXWDGIF_JOB_INV_STATE    : Job failed because job is
 *                                                   requested from a forbidden state
 *
 *******************************************************************************
 *
 * \service id:   : 0x15
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2264
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_GetSeed(uint8* const NextSeedPtr);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_StateType HtxWdgIf_GetState(void)
 *
 * \description   : Read current state of watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : This API delivers the actual device status of the underlying watchdog.
 *                  Note: In case of driver's data integrity error,
 *                        HTXWDGIF_EXT_TLF_UNDEFINED1 is returned for the external watchdog,
 *                        HTXWDGIF_INT_SWDG_UNKNOWN is returned for the internal watchdog
 *
 *******************************************************************************
 *
 * \service id:   : 0x16
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2265
 *
 ******************************************************************************/
extern HtxWdgIf_StateType  HtxWdgIf_GetState(void);

#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_GetWdgInfo (void)
 *
 * \description   : Read the status info of the configured watchdog.
 *                  Note: This API is not used in case of internal watchdog!
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED   : Accepted Job still ongoing
 *                  HTXWDGIF_JOB_FAILED_CRC : Job failed due to driver internal
 *                                            data checksum failure.
 *
 *                  HTXWDGIF_JOB_BUSY       : Job failed because driver is busy
 *                                            processing the earlier job request.
 *
 *******************************************************************************
 *
 * \service id:   : 0x1A
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : This API is available only if external watchdog is configured
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2269
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_GetWdgInfo(void);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */

#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/*******************************************************************************
 *
 * \function      : void HtxWdgIf_MainFunction(void)
 *
 * \description   : Main function handles watchdog servicing and cyclically
 *                  updates device information.
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
 * \service id:   : 0x1B
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : This API is available only if external watchdog is configured
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2270
 *
 ******************************************************************************/
extern void HtxWdgIf_MainFunction(void);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr)
 *
 * \description   : Read error counter status of the configured watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : ErrCtrPtr: Read error counter status
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED   : Accepted Job still ongoing
 *                  HTXWDGIF_JOB_FAILED_CRC : Job failed due to driver
 *                                                 internal data checksum failure.
 *                  HTXWDGIF_JOB_INV_PARAM  : Job failed due to invalid
 *                                                 parameter.
 *                  HTXWDGIF_JOB_INV_STATE  : Job failed because job is
 *                                                 requested from a forbidden state
 *
 *******************************************************************************
 *
 * \service id:   : 0x17
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : This API is available only if external watchdog is configured
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2266
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_UserRequest
 *                  (
 *                      HtxWdgIf_CmdType* const UserCmdPtr,
 *                      uint8 Count
 *                  )
 *
 * \description   : Manage user request to read/send user commands to external
 *                  watchdog.
 *                  Note: This API is not used in case of internal watchdog!
 *
 *******************************************************************************
 *
 * \param[in]     : Count      : No of commends to be sent to watchdog
 * \param[in]     : UserCmdPtr : User buffer pointer
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Directly returns result from underlying service:
 *                  HTXWDGIF_JOB_ACCEPTED   : Job accepted and ongoing
 *                  HTXWDGIF_JOB_FAILED_CRC : Job failed due to driver
 *                                            internal data checksum failure.
 *                  HTXWDGIF_JOB_BUSY       : Job failed because driver is busy
 *                                            processing the earlier job request.
 *                  HTXWDGIF_JOB_INV_PARAM  : Job failed due to invalid  parameter.
 *
 *******************************************************************************
 *
 * \service id:   : 0x18
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : This API is available only if external watchdog is configured
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2267
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    uint8 Count
);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxWdgIf_GetJobResult(void)
 *
 * \description   : This API provides the status of the job/operation requested
 *                  by the user. This is typically used for asynchronous API
 *                  requests.
 *                  Note: This API is not used in case of internal watchdog!
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED       : Accepted Job still ongoing
 *                  HTXWDGIF_JOB_FAILED         : Previous job request has failed
 *                  HTXWDGIF_JOB_FAILED_CRC     : Job failed due to driver
 *                                                internal data checksum failure.
 *                  HTXWDGIF_JOB_INV_PARAM      : Job failed due to invalid
 *                                                parameter.
 *                  HTXWDGIF_JOB_COM_ERR        : Job failed due to SPI
 *                  HTXWDGIF_JOB_BUSY           : Job failed because driver is busy
 *                                                processing the earlier job request.
 *                                                communication failure.
 *                  HTXWDGIF_JOB_INV_STATE      : Job failed because job is
 *                                                requested from a forbidden state
 *                  HTXWDGIF_JOB_READBACK_FAIL  : Job failed due TLF35584
 *                                                protected configuration register
 *                                                write failure.
 *                  HTXWDGIF_JOB_INIT_FAIL      : Job failed due to watchdog
 *                                                disable request failure.
 *                  HTXWDGIF_JOB_RD_DATA_FAIL   : Job failed due to mismatch in
 *                                                TLF35584 communication data
 *                                                readback.
 *                  HTXWDGIF_JOB_FAILED_SERVICE : Job failed due to service
 *                                                failure.
 *                  HTXWDGIF_JOB_INVALID_SEED   : Job failed due to invalid seed
 *                  HTXWDGIF_JOB_SUCCESS        : Operation successfully performed
 *******************************************************************************
 *
 * \service id:   : 0x19
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : This API is available only if external watchdog is configured
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2268
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxWdgIf_GetJobResult(void);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXWDGIF_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxWdgIf_MemMap.h"

#endif /* HTXWDGIF_H */

/* EOF */
