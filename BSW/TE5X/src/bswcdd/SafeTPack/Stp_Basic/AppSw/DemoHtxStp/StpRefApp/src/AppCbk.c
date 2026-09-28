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
** FILENAME : AppCbk.c                                                        **
**                                                                            **
** REVISION : \$Revision: 31188 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-12-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Application Callback source file                             **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "AppCbk.h"
#include "HtxTestHnd.h"
#include "irq.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/


#ifdef _TASKING_C_TRICORE_
#if (_TASKING_C_TRICORE_ == 1U)
#define DEBUG()  __debug()
#endif /* #if (_TASKING_C_TRICORE_ == 1U) */
#endif

#ifdef _GNU_C_TRICORE_
#if (_GNU_C_TRICORE_ == 1U)
#define DEBUG() __asm__ volatile ("debug")
#endif /* #if (_GNU_C_TRICORE_ == 1U) */
#endif

#ifdef _DIABDATA_C_TRICORE_
#if (_DIABDATA_C_TRICORE_ == 1U)
#define DEBUG() __debug()
#define __debug _debug
#endif /* #if (_DIABDATA_C_TRICORE_ == 1U) */
#endif
#ifdef _GHS_C_TRICORE_
#if (_GHS_C_TRICORE_ == 1U)
#define DEBUG() __debug()
#endif /* #if (_GNU_C_TRICORE_ == 1U) */
#endif

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

static uint32 AppCbk_StartupTestLog[HTXTESTHND_TOTAL_STARTUP_TESTS];

static uint32 AppCbk_RuntimeTestLog[HTXTESTHND_TOTAL_RUNTIME_TESTS];


/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

IFX_INTERRUPT(SMU0_ISR, 0, 250)
{
  /* Enable Global Interrupts */
  /* Mcal_EnableAllInterrupts(); */
  DISABLE();
  
  DEBUG();
  
  ENABLE();
  /*If Test module is pwm*/
  /*This piece of code introduces delay in isr for checking resilience
  against interrupt latency*/
}


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
void AppCbk_ErrorHandler(AppCbk_ErrorIdType ErrorId)
{
    uint8 i;

    DISABLE();

    #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
    /* Log Startup test results */
    for(i=0; i<HTXTESTHND_TOTAL_STARTUP_TESTS; i++)
    {
        AppCbk_StartupTestLog[i] = HtxTestHnd_GetStartupTestResult(i);
    }
    #endif

    #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
    /* Log Runtime test results */
    for(i=0; i<HTXTESTHND_TOTAL_RUNTIME_TESTS; i++)
    {
        AppCbk_RuntimeTestLog[i] = HtxTestHnd_GetRuntimeTestResult(i);
    }
    #endif

    switch(ErrorId)
    {
        case APPCBK_TLF_MAXJOBS_FAIL:
            DEBUG();
            break;

        case APPCBK_ERR_TASK_BUDGET_OVRRUN:
            DEBUG();
            break;

        case APPCBK_SWDGM_INIT_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_DEINIT_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_ACTIVATE_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_GETSEED_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_USERREQ_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_GETERRCNTR_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_GETINFO_FAIL:
            DEBUG();
            break;

        case APPCBK_SWDGM_SERVICE_FAIL:
            DEBUG();
            break;

        case APPCBK_TSTM_STARTUP_TEST_FAIL:
            DEBUG();
            break;

        case APPCBK_TSTM_RUNTIME_TEST_FAIL:
            DEBUG();
            break;

        case APPCBK_TSTM_INIT_FAIL:
            DEBUG();
            break;

        case APPCBK_TSTM_SWITCH_TO_RUN_FAIL:
            DEBUG();
            break;

        case APPCBK_STPREFAPP_TLF_TEST_FAIL:
            DEBUG();
            break;

        default:
            break;
    }

    while(1)
    {
        DEBUG();
    }

} /* End of AppCbk_ErrorHandler() */

/* Function to report PFM critical errors */
void AppCbk_PfmErrorHandler(uint32 ErrorType)
{
    /* User code...
    include "HtxPfm_ErrorTypes.h" for error types (struct PfmErrorType)ErrorType*/
    DEBUG();
}

/* Function to report PFM detected program sequence or timing faults 
   uint32 Seid range is checked in HtxPfm */
void AppCbk_PfmMonitorFaultHandler(uint32 Seid, uint32 FaultType)
{
    /* User code...
    include "HtxPfm_ErrorTypes.h" for fault types (struct PfmFaultType)FaultType*/
    DEBUG();
}

/* EOF */
