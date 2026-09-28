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

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "IFX_Os.h"
#include "SchM_HtxIntSafeWdg.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
 

/*******************************************************************************
** Traceability     :                                                         **
**                                                                            **
** Syntax           : void SchM_Enter_HtxIntSafeWdgWdtscon0(void)             **
**                                                                            **
** Description      : Enters Module exclusive area                            **
**                                                                            **
** Service ID       : NA                                                      **
**                                                                            **
** Sync/Async       : Synchronous                                             **
**                                                                            **
** Reentrancy       : Not Reentrant                                           **
**                                                                            **
** Parameters(in)   : None                                                    **
** Parameters (out) : None                                                    **
**                                                                            **
** Return value     : None                                                    **
**                                                                            **
*******************************************************************************/
void SchM_Enter_HtxIntSafeWdgWdtscon0(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
** Traceability     :                                                         **
**                                                                            **
** Syntax           : void SchM_Exit_HtxIntSafeWdgWdtscon0(void)              **
**                                                                            **
** Description      : Exit Module exclusive area                              **
**                                                                            **
** Service ID       : NA                                                      **
**                                                                            **
** Sync/Async       : Synchronous                                             **
**                                                                            **
** Reentrancy       : Not Reentrant                                           **
**                                                                            **
** Parameters(in)   : None                                                    **
** Parameters (out) : None                                                    **
**                                                                            **
** Return value     : None                                                    **
**                                                                            **
*******************************************************************************/
void SchM_Exit_HtxIntSafeWdgWdtscon0(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
** Traceability     :                                                         **
**                                                                            **
** Syntax           : void SchM_Enter_HtxIntSafeWdgWdtscon1(void)             **
**                                                                            **
** Description      : Enters Module exclusive area                            **
**                                                                            **
** Service ID       : NA                                                      **
**                                                                            **
** Sync/Async       : Synchronous                                             **
**                                                                            **
** Reentrancy       : Not Reentrant                                           **
**                                                                            **
** Parameters(in)   : None                                                    **
** Parameters (out) : None                                                    **
**                                                                            **
** Return value     : None                                                    **
**                                                                            **
*******************************************************************************/
void SchM_Enter_HtxIntSafeWdgWdtscon1(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
** Traceability     :                                                         **
**                                                                            **
** Syntax           : void SchM_Exit_HtxIntSafeWdgWdtscon1(void)              **
**                                                                            **
** Description      : Exit Module exclusive area                              **
**                                                                            **
** Service ID       : NA                                                      **
**                                                                            **
** Sync/Async       : Synchronous                                             **
**                                                                            **
** Reentrancy       : Not Reentrant                                           **
**                                                                            **
** Parameters(in)   : None                                                    **
** Parameters (out) : None                                                    **
**                                                                            **
** Return value     : None                                                    **
**                                                                            **
*******************************************************************************/
void SchM_Exit_HtxIntSafeWdgWdtscon1(void)
{
  ResumeAllInterrupts();
}


/* EOF */

