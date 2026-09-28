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
** FILENAME : SafeWdgM.c                                                      **
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
**  DESCRIPTION  : Safety Watchdog Manager source file.                       **
**                 This module interfaces with SafeTpack's Watchdog Interface **
**                 module.                                                    **
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
#include "HtxStpIf.h"

#if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)

#include "HtxWdgIf.h"
#include "SafeWdgM.h"
#include "AppCbk.h"
#include "TstM.h"
#include "bswsrv.h"

#if (HTXSTPIF_PFM_STATUS == STD_ON)
#include "HtxPfm.h"
#endif

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
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
void SafeWdgM_Init(uint8 ConfigIdx)
{
    HtxWdgIf_ResultType InitResult;

    InitResult = HTXWDGIF_JOB_FAILED;

    if(ConfigIdx < HTXWDGIF_CFG_COUNT)
    {         
        /* Initialise watchdog interface */
        InitResult = HtxWdgIf_Init(&HtxWdgIf_ConfigRoot[ConfigIdx]);
    }

    /* Call error handler if watchdog init is not successful*/
    if((InitResult != HTXWDGIF_JOB_SUCCESS) && (InitResult != HTXWDGIF_JOB_ACCEPTED))
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_INIT_FAIL);
    }

} /* End of SafeWdgM_Init() */


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
void SafeWdgM_DeInit(void)
{
    HtxWdgIf_ResultType DeInitResult;

    /* Deinitise configurd Watchdog */
    DeInitResult = HtxWdgIf_DeInit();    

    /* Check if Deinit is succesful */
    if((DeInitResult != HTXWDGIF_JOB_SUCCESS) && (DeInitResult != HTXWDGIF_JOB_ACCEPTED))
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_DEINIT_FAIL);
    }
    
} /* End of SafeWdgM_DeInit() */


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
void SafeWdgM_Activate(void)
{
    HtxWdgIf_ResultType ActivateResult;

    ActivateResult = HtxWdgIf_Activate();    

    /* Check if activation request is accepted */
    if((ActivateResult != HTXWDGIF_JOB_SUCCESS) && (ActivateResult != HTXWDGIF_JOB_ACCEPTED))
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_ACTIVATE_FAIL);
    }

} /* End of SafeWdgM_Activate() */


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
void SafeWdgM_GetSeed(uint8* TestSeed)
{
    HtxWdgIf_ResultType ResultGetSeed;
    uint8 NewSeed;
    
    NewSeed = HTXWDGIF_SAFEWDG_SEED_NOTVALID;

    ResultGetSeed = HtxWdgIf_GetSeed(&NewSeed);

    /* Check if GetSeed call was successful; if not, report error */
    if(ResultGetSeed != HTXWDGIF_JOB_SUCCESS)
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_GETSEED_FAIL);
    }
    else
    {
        /* Check if received seed is valid */
        if(NewSeed != HTXWDGIF_SAFEWDG_SEED_NOTVALID)
        {
            *TestSeed = NewSeed;
        }
    }

} /* End of SafeWdgM_GetSeed() */


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
HtxWdgIf_ResultType ServiceResult;
void SafeWdgM_Service(void)
{

#if (HTXSTPIF_PFM_STATUS == STD_ON)
    uint8 Seed;
    SafeWdgM_GetSeed(&Seed);
    ServiceResult = HtxWdgIf_Service(HtxPfm_GetSignature((uint32)Seed, TstM_GetConsolidatedSignature()));
#else
    ServiceResult = HtxWdgIf_Service(TstM_GetConsolidatedSignature());
#endif

    /* Report error if job result is not success/accepted */
    if((ServiceResult != HTXWDGIF_JOB_SUCCESS) && (ServiceResult != HTXWDGIF_JOB_ACCEPTED))
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_SERVICE_FAIL);
    }

    /* Invalidate Test Seed and Data */
    TstM_InvalidateSeed();
    BSW_vidSetProgFlowSeed(0xFF);
    TstM_InvalidateRunTimeTestData();  
    
} /* End of SafeWdgM_Service() */


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
void SafeWdgM_UserRequest(HtxWdgIf_CmdType* UserCmd, uint8 Size)
{
    HtxWdgIf_ResultType Result = HTXWDGIF_JOB_FAILED;

    /* Send User request */
    Result = HtxWdgIf_UserRequest(UserCmd, Size);

    /* Report error if the request is not accepted */
    if (Result != HTXWDGIF_JOB_ACCEPTED)
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_USERREQ_FAIL);
    }  

} /* End of SafeWdgM_UserRequest() */

#endif /* #ifndef HTXWDGIF_INT_WDG_ONLY */


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
HtxWdgIf_ResultType SafeWdgM_GetJobResult(void)
{
    HtxWdgIf_ResultType RetVal;

    /* Get job result */
    RetVal = HtxWdgIf_GetJobResult();
    
    return(RetVal);
    
} /* End of SafeWdgM_GetJobResult() */

#endif /* #ifndef HTXWDGIF_INT_WDG_ONLY */


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
void SafeWdgM_GetErrCntr(uint8* const ErrCtr)
{
    HtxWdgIf_ResultType Result;
    uint8 NewErrCtr;
    
    NewErrCtr = 0U;

    /* Get watchdog error counter  */
    Result = HtxWdgIf_GetErrCntr(&NewErrCtr);

    /* Check for error */
    if(Result != HTXWDGIF_JOB_SUCCESS)
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_GETERRCNTR_FAIL);
    }
    else
    {
        /* Store error counter value */
        *ErrCtr = NewErrCtr;
    }

} /* End of SafeWdgM_GetErrCntr() */

#endif /* #ifndef HTXWDGIF_INT_WDG_ONLY */


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
void SafeWdgM_GetWdgInfo(void)
{  
    HtxWdgIf_ResultType Result;

    /* Get watchdog info */
    Result = (uint8)HtxWdgIf_GetWdgInfo();

    /* Check and report error */
    if (Result != HTXWDGIF_JOB_ACCEPTED)
    {
        AppCbk_ErrorHandler(APPCBK_SWDGM_GETINFO_FAIL);
    }

} /* End of SafeWdgM_GetWdgInfo() */

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
HtxWdgIf_StateType SafeWdgM_GetState(void)
{
  HtxWdgIf_StateType RetVal;

  /* Get watchdog state */
  RetVal = HtxWdgIf_GetState();

  return(RetVal);
  
} /* End of SafeWdgM_GetState() */

#endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */

#endif /* (HTXSTPIF_WDG_STACK_STATUS == STD_ON) */

/* EOF */
