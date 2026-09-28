/*******************************************************************************
**                                                                            **
** Copyright (C) Hitex (UK) Ltd. (2018)                                       **
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
** FILENAME : AppCbk.h                                                        **
**                                                                            **
** REVISION : \$Revision: 31188 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-12-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Application Callback header file                             **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef APPCBK_H
#define APPCBK_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Platform_Types.h"
/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/* Error Identifiers */
#define APPCBK_TLF_MAXJOBS_FAIL         ((AppCbk_ErrorIdType)0x01U)
#define APPCBK_ERR_TASK_BUDGET_OVRRUN   ((AppCbk_ErrorIdType)0x02U)
#define APPCBK_SWDGM_INIT_FAIL          ((AppCbk_ErrorIdType)0x03U)
#define APPCBK_SWDGM_DEINIT_FAIL        ((AppCbk_ErrorIdType)0x04U)
#define APPCBK_SWDGM_ACTIVATE_FAIL      ((AppCbk_ErrorIdType)0x05U)
#define APPCBK_SWDGM_GETSEED_FAIL       ((AppCbk_ErrorIdType)0x06U)
#define APPCBK_SWDGM_USERREQ_FAIL       ((AppCbk_ErrorIdType)0x07U)
#define APPCBK_SWDGM_GETERRCNTR_FAIL    ((AppCbk_ErrorIdType)0x08U)
#define APPCBK_SWDGM_GETINFO_FAIL       ((AppCbk_ErrorIdType)0x09U)
#define APPCBK_SWDGM_SERVICE_FAIL       ((AppCbk_ErrorIdType)0x0AU)
#define APPCBK_TSTM_STARTUP_TEST_FAIL   ((AppCbk_ErrorIdType)0x0BU)
#define APPCBK_TSTM_RUNTIME_TEST_FAIL   ((AppCbk_ErrorIdType)0x0CU)
#define APPCBK_TSTM_INIT_FAIL           ((AppCbk_ErrorIdType)0x0DU)
#define APPCBK_TSTM_SWITCH_TO_RUN_FAIL  ((AppCbk_ErrorIdType)0x0EU)
#define APPCBK_STPREFAPP_TLF_TEST_FAIL  ((AppCbk_ErrorIdType)0x0FU)

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

typedef uint32 AppCbk_ErrorIdType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : void AppCbk_ErrorHandler(AppCbk_ErrorIdType ErrorId)
 *
 * \description   : This is an error handler function
 *
 *******************************************************************************
 *
 * \param[in]     : ErrorId - Error Identifier
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x01
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant (reentrant from other cores)
 *
 * \pre           : None
 * \post          : None
 * \attention     : Integrator shall implement appropriate error handling in
 *                  this function.
 * \traceability  :
 *
 ******************************************************************************/
extern void AppCbk_ErrorHandler(AppCbk_ErrorIdType ErrorId);
extern void AppCbk_PfmErrorHandler(uint32 ErrorType);
extern void AppCbk_PfmMonitorFaultHandler(uint32 Seid, uint32 FaultType);

#endif /* APPCBK_H */


/* EOF */
