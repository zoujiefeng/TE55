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
** FILENAME : SchM_HtxIntSafeWdg.h                                            **
**                                                                            **
** REVISION : \$Revision: 27140 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-12-02 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Provides the macro and function definitions required for     **
**               critical section of HtxIntSafwWdg module                     **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef HTXINTSAFEWDG_SCHM_H
#define HTXINTSAFEWDG_SCHM_H
/*******************************************************************************
**                      Includes
*******************************************************************************/


/*******************************************************************************
**                Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : void SchM_Enter_HtxIntSafeWdgWdtscon0(void)
 *
 * \description   : Enter critical section
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
 * \service id:   : None
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : None
 ******************************************************************************/
extern void SchM_Enter_HtxIntSafeWdgWdtscon0(void);

/*******************************************************************************
 *
 * \function      : void SchM_Exit_HtxIntSafeWdgWdtscon0(void)
 *
 * \description   : Exit critical section
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
 * \service id:   : None
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : None
 ******************************************************************************/
extern void SchM_Exit_HtxIntSafeWdgWdtscon0(void);

/*******************************************************************************
 *
 * \function      : void SchM_Enter_HtxIntSafeWdgWdtscon1(void)
 *
 * \description   : Enter critical section
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
 * \service id:   : None
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : None
 ******************************************************************************/
extern void SchM_Enter_HtxIntSafeWdgWdtscon1(void);

/*******************************************************************************
 *
 * \function      : void SchM_Exit_HtxIntSafeWdgWdtscon1(void)
 *
 * \description   : Exit critical section
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
 * \service id:   : None
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : None
 ******************************************************************************/
extern void SchM_Exit_HtxIntSafeWdgWdtscon1(void);




#endif /* HTXINTSAFEWDG_SCHM_H */

/* EOF */

