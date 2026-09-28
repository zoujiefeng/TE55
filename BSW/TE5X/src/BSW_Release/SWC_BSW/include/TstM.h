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
** FILENAME : TstM.h                                                          **
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
** DESCRIPTION : Test Manager Header File                                     **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef TSTM_H
#define TSTM_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxTestHnd.h"

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
uint8 TstM_u8GetProgFlowStartFlag(void);

/*******************************************************************************
 *
 * \function      : extern void TstM_Init(void)
 *
 * \description   : This function initialises Test Manager Module
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
 * \service id:   : 0x01
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     : Only the Master Core shall call this function.
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_Init(void);

#if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : extern void TstM_ExecStartupTestGroup(uint8 GroupIndex)
 *
 * \description   : This function executes the given Startup Test Group
 *
 *******************************************************************************
 *
 * \param[in]     : GroupIndex - Startup Test Group Index
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
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
 * \pre           :
 * \post          :
 * \attention     : GroupIndex shall belong to the calling core
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_ExecStartupTestGroup(uint8 GroupIndex);
#endif


/*******************************************************************************
 *
 * \function      : extern void TstM_SwitchToRunPhase(void)
 *
 * \description   : This function switches Test Handler to RUN phase
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
 * \service id:   : 0x03
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     : Only the Master Core shall call this function.
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_SwitchToRunPhase(void);


#if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
/*******************************************************************************
 *
 * \function      : extern void TstM_ExecRuntimeTest(void)
 *
 * \description   : This function executes the runtime tests
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
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_ExecRuntimeTest(void);
#endif

#if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
/*******************************************************************************
 *
 * \function      : extern void TstM_InvalidateSeed(void)
 *
 * \description   : This function invalidates Test Seed
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
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_InvalidateSeed(void);
#endif

/*******************************************************************************
 *
 * \function      : extern void TstM_InvalidateRunTimeTestData(void)
 *
 * \description   : This function invalidates Run-time Test Data
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
 * \service id:   : 0x06
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_InvalidateRunTimeTestData(void);


/*******************************************************************************
 *
 * \function      : extern uint32 TstM_GetConsolidatedSignature(void)
 *
 * \description   : This function provides the consolidated run-time test group signature
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Consolidated run-time test group signature
 *
 *******************************************************************************
 *
 * \service id:   : 0x07
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern uint32 TstM_GetConsolidatedSignature(void);


#if(HTXSTPIF_WDG_STACK_STATUS == STD_OFF)
/*******************************************************************************
 *
 * \function      : void TstM_VerifyRuntimeTestSig(void)
 *
 * \description   : This function verifies the Signature of the runtime tests
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
 * \service id:   :
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           :
 * \post          :
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void TstM_VerifyRuntimeTestSig(void);

#endif

#endif /* TSTM_H */


/* EOF */
