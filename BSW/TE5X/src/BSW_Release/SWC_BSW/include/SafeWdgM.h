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
** FILENAME : SafeWdgM.h                                                      **
**                                                                            **
** REVISION : \$Revision: 29886 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-08-03 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
**  DESCRIPTION  : Safety Watchdog Manager header file.                       **
**                 This module interfaces with SafeTpack's Watchdog Interface **
**                 module.                                                    **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef SAFEWDGM_H
#define SAFEWDGM_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxWdgIf.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)

/*******************************************************************************
 *
 * \function      : void SafeWdgM_Init(uint8 ConfigIdx)
 *
 * \description   : This function initialises SafeWdgM module
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigIdx - Configuration index
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
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_Init(uint8 ConfigIdx);


/*******************************************************************************
 *
 * \function      : void SafeWdgM_DeInit(void)
 *
 * \description   : This function deinitialises SafeWdgM module
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
 * \service id:   : 0x02
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_DeInit(void);


/*******************************************************************************
 *
 * \function      : void SafeWdgM_Activate(void)
 *
 * \description   : This function activates the configured watchdog
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
 * \service id:   : 0x03
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_Activate(void);


/*******************************************************************************
 *
 * \function      : void SafeWdgM_GetSeed(uint8* TestSeed)
 *
 * \description   : This function provides the Watchdog seed
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : TestSeed - Pointer to store Seed.
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x04
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_GetSeed(uint8* TestSeed);


/*******************************************************************************
 *
 * \function      : void SafeWdgM_Service(void)
 *
 * \description   : This function services the Watchdog
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
 * \service id:   : 0x05
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_Service(void);


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/*******************************************************************************
 *
 * \function      : void SafeWdgM_UserRequest(HtxWdgIf_CmdType* UserCmd, uint8 Size)
 *
 * \description   : This function send user defined commands to external watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : Size - Data length
 *
 * \param[in/out] : UserCmd - Pointer to user command/data
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x06
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_UserRequest(HtxWdgIf_CmdType* UserCmd, uint8 Size);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)

/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType SafeWdgM_GetJobResult(void)
 *
 * \description   : This function send user defined function to external watchdog
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
 * \service id:   : 0x07
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
HtxWdgIf_ResultType SafeWdgM_GetJobResult(void);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)

/*******************************************************************************
 *
 * \function      : void SafeWdgM_GetErrCntr(uint8* const ErrCtr)
 *
 * \description   : This function provides the watchdog error counter value
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : ErrCtr - Pointer to store error counter value
 *
 * \return        : None
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
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_GetErrCntr(uint8* const ErrCtr);

#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)

/*******************************************************************************
 *
 * \function      : void SafeWdgM_GetWdgInfo(void)
 *
 * \description   : This function provides the watchdog info
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
 * \service id:   : 0x09
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  :
 *
 ******************************************************************************/
void SafeWdgM_GetWdgInfo(void);

#endif


/*******************************************************************************
 *
 * \function      : HtxWdgIf_StateType SafeWdgM_GetState(void)
 *
 * \description   : This function provides the watchdog state
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \param[out]    : None
 *
 * \return        : Watchdog state
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
 * \traceability  :
 *
 ******************************************************************************/
HtxWdgIf_StateType SafeWdgM_GetState(void);

#endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */


#endif /* SAFEWDGM_H */

/* EOF */
