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
** FILENAME : HtxWdgIf.c                                                      **
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
** DESCRIPTION : Watchdog Interface Source File                               **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxWdgIf.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

#define HTXWDGIF_INVALIDATE_CRC (0x0U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/* Used module local safe variables */
typedef struct HtxWdgIf_DataType
{
    /* Current configuration pointer */
    const HtxWdgIf_ConfigType* ConfigPtr;
    /* CRC for this safety relevant data set */
    uint32 Crc;
} HtxWdgIf_DataType;

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxWdgIf_MemMap.h"

static HtxWdgIf_DataType HtxWdgIfData;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxWdgIf_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXWDGIF_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxWdgIf_MemMap.h"

static Std_ReturnType HtxWdgIf_lCheckDataCrc(void);
static void HtxWdgIf_lSetDataCrc(void);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXWDGIF_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxWdgIf_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
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
HtxWdgIf_ResultType HtxWdgIf_Init(const HtxWdgIf_ConfigType* const ConfigPtr)
{
    volatile HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    /* Store configuration pointer */
    if(ConfigPtr != NULL_PTR)
    {
        HtxWdgIfData.ConfigPtr = ConfigPtr;

        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
        /* Init is success if both Internal and TLF watchdog is initialized */
        if(ConfigPtr->DriverIntConfigPtr != NULL_PTR)
        #endif
        {
            #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
            /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from void to
               pointer to other type is done to Fetch the data pointed by the void address */
            Result = HTXWDGIF_INT_INIT(ConfigPtr->DriverIntConfigPtr);

            #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_CNR_WDG_TLF_WINDOW)
            if(Result == HTXWDGIF_JOB_SUCCESS)
            #endif
            #endif
            {
                #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
                /* Check if IntWdg + TLF mode is selected */
                if(ConfigPtr->DriverExtConfigPtr != NULL_PTR)
                {
                    /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from void to
                       pointer to other type is done to Fetch the data pointed by the void address */
                    /* Init external Tlf watchdog */
                    Result = HTXWDGIF_EXT_INIT(ConfigPtr->DriverExtConfigPtr);
                }
                else
                {
                    Result = HTXWDGIF_JOB_INV_PARAM;
                }
                #endif
            } /* END Of if(Result == HTXWDGIF_JOB_SUCCESS) */

        } /* END Of if ( ConfigPtr->DriverIntConfigPtr != NULL_PTR ) */
        HtxWdgIf_lSetDataCrc();

    } /* END of if (ConfigPtr != NULL_PTR) */

    return (Result);

} /* End of HtxWdgIf_Init(const HtxWdgIf_ConfigType* const ConfigPtr) */


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
HtxWdgIf_ResultType HtxWdgIf_DeInit(void)
{
    HtxWdgIf_ResultType Result;

    #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
    /* DeInit intenal configured watchdog */
    HTXWDGIF_INT_DE_INIT();
    
    #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_WDG_ONLY)
    Result = HTXWDGIF_JOB_SUCCESS;
    #endif
    #endif

    #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
    /* DeInit external configured watchdog */
    Result = HTXWDGIF_EXT_DE_INIT();

    if((Result == HTXWDGIF_JOB_SUCCESS) ||
       (Result == HTXWDGIF_JOB_ACCEPTED))
    #endif
    {
        /* Result is success in case of internal watchdog and Accepted in case
         * of External watchdog */
        /* Change driver state */
        HtxWdgIfData.ConfigPtr = NULL_PTR;
        HtxWdgIfData.Crc      ^= ~(HTXWDGIF_INVALIDATE_CRC);
    } /* END Of if ( ( Result == HTXWDGIF_JOB_SUCCESS) ||
                     ( Result == HTXWDGIF_JOB_ACCEPTED) ) */

    HtxWdgIf_lSetDataCrc();

    return (Result);

} /* END Of HtxWdgIf_DeInit(void) */


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
HtxWdgIf_ResultType HtxWdgIf_Activate(void)
{
    volatile HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == E_OK)
    {
        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
        /* Activate internal watchdog */
        Result = HTXWDGIF_INT_ACTIVATE();

        #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_CNR_WDG_TLF_WINDOW)
        if (Result == HTXWDGIF_JOB_SUCCESS)
        #endif
        #endif
        {
            #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
            /* Activate external TLF watchdog */
            Result = HTXWDGIF_EXT_ACTIVATE();
            #endif
        }
    } /* END Of if (HtxWdgIf_lCheckDataCrc() == E_OK) */

    return (Result);

} /* END Of HtxWdgIf_Activate(void) */


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
HtxWdgIf_ResultType HtxWdgIf_Service(const uint32 Signature)
{
    volatile HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == E_OK)
    {
        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
        /* Service internal watchdog*/
        Result = HTXWDGIF_INT_SERVICE(Signature);

        #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_CNR_WDG_TLF_WINDOW)
        /* Service external TLF watchdog only if internal watchdog
           service has passed */
        if (Result == HTXWDGIF_JOB_SUCCESS)
       	#endif
        #endif
        {
           #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
            /* Service external TLF watchdog */
            Result = HTXWDGIF_EXT_SERVICE(Signature);
           #endif
        } /* END Of if (Result == HTXWDGIF_JOB_SUCCESS) */
    } /* END of if (HtxWdgIf_lCheckDataCrc() == E_OK) */

    return (Result);

} /* END Of HtxWdgIf_Service(const uint32 Signature) */

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
HtxWdgIf_ResultType HtxWdgIf_GetSeed(uint8* const NextSeedPtr)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if(NextSeedPtr != NULL_PTR)
    {
        if(HtxWdgIf_lCheckDataCrc() == E_OK)
        {
            #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_EXT_WDG_ONLY)
            Result = HTXWDGIF_EXT_GET_SEED(NextSeedPtr);
            #endif

            #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
            /* Note: If HTXWDGIF_SWDG_INT_CNR_WDG_EXT_TLF_WINDOW_WDG option is
               configured, External watchdog used will be TLF configured in
               Window mode. Hence there is no need to get seed from external
               Watchdog(TLF). Seed got from internal watchdog will be used */
            Result = HTXWDGIF_INT_GET_SEED(NextSeedPtr);
            #endif
        }
        else
        {
            Result = HTXWDGIF_JOB_FAILED_CRC;
        } /* END Of if (HtxWdgIf_lCheckDataCrc() == E_OK) */
    } /* END Of if (NextSeedPtr != NULL_PTR) */

    return (Result);

} /* END Of HtxWdgIf_GetSeed(uint8* const NextSeedPtr) */


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
HtxWdgIf_StateType HtxWdgIf_GetState(void)
{
    HtxWdgIf_StateType WdgState;

    WdgState.IntWdgState = HTXWDGIF_INT_SWDG_UNKNOWN;
    WdgState.ExtWdgState = HTXWDGIF_EXT_TLF_UNDEFINED1;

    /* Get state from underlying watchdog */
    if(HtxWdgIf_lCheckDataCrc() == E_OK)
    {
        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_EXT_WDG_ONLY)
        /* Get state info from internal watchdog */
        WdgState.IntWdgState = HTXWDGIF_INT_GET_STATE();
        #endif

        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
        /* Get state info from configured external watchdog */
        WdgState.ExtWdgState = HTXWDGIF_EXT_GET_STATE();
        #endif
    } /* if (HtxWdgIf_lCheckDataCrc() == E_OK) */

    return (WdgState);
} /* END Of HtxWdgIf_GetState(void) */


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
HtxWdgIf_ResultType HtxWdgIf_GetWdgInfo(void)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == E_OK)
    {
        /* Update information about configured external watchdog */
        Result = HTXWDGIF_EXT_GET_WDG_INFO();
    } /* if(HtxWdgIf_lCheckDataCrc() == E_OK) */

    return (Result);
}
/* END Of HtxWdgIf_GetWdgInfo (void) */
#endif /* (HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


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
void HtxWdgIf_MainFunction(void)
{
    if(HtxWdgIf_lCheckDataCrc() == E_OK)
    {
        /* Update information about configured external watchdog */
        HTXWDGIF_EXT_MAIN_FUNCTION();
    }
}
/* END Of HtxWdgIf_GetWdgInfo (void) */

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
HtxWdgIf_ResultType HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if(ErrCtrPtr != NULL_PTR)
    {
        if(HtxWdgIf_lCheckDataCrc() == E_OK)
        {
            /* Get Error count from underlying watchdog */
            Result = HTXWDGIF_EXT_GET_ERR_CNTR(ErrCtrPtr);
        }
        else
        {
            Result = HTXWDGIF_JOB_FAILED_CRC;
        }
    }
    return (Result);

} /* END Of HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr) */
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
HtxWdgIf_ResultType HtxWdgIf_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    uint8 Count
)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if((UserCmdPtr != NULL_PTR) && (Count > 0U))
    {
        if(HtxWdgIf_lCheckDataCrc() == E_OK)
        {
             /* Forward request to underlying external watchdog driver */
             Result = HTXWDGIF_EXT_USER_REQUEST(UserCmdPtr,Count);
        }
        else
        {
            Result = HTXWDGIF_JOB_FAILED_CRC;
        }
    }

    return (Result);

} /* END Of HtxWdgIf_UserRequest() */
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
HtxWdgIf_ResultType HtxWdgIf_GetJobResult(void)
{
    HtxWdgIf_ResultType RetVal;

    RetVal = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == E_OK)
    {
        /* Forward request to underlying external watchdog driver */
        RetVal = HTXWDGIF_EXT_GET_JOB_RESULT( );
    }
    return(RetVal);

} /* END Of HtxWdgIf_GetJobResult(void) */
#endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxWdgIf_lCheckDataCrc(void)
 *
 * \description   : Check data set integrity by CRC validation.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK     : If Crc matches the stored on, data integrity okay
 *                  E_NOT_OK : otherwise
 *
 *******************************************************************************
 *
 * \service id:   : <function_service_id>
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2639
 *
 ******************************************************************************/
static Std_ReturnType HtxWdgIf_lCheckDataCrc(void)
{
    uint32 CurrCrc;
    Std_ReturnType lRetVal;

    /* Initialise */
    lRetVal = E_NOT_OK;
    CurrCrc = 0U;

    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the config pointer is used to calculate the CRC */
    /* MISRA2012_RULE_11_6_JUSTIFICATION:The address of the buffer pointer is
       The address of the config pointer is used to calculate the CRC */
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc,(uint32)HtxWdgIfData.ConfigPtr);

    if(CurrCrc == HtxWdgIfData.Crc)
    {
        lRetVal = E_OK;
    }

    return lRetVal;
} /* END Of HtxWdgIf_lCheckDataCrc(void) */


/*******************************************************************************
 *
 * \function      : static void HtxWdgIf_lSetDataCrc(void)
 *
 * \description   : Calculate and update crc for data set.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : HtxWdgIfData.Crc
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : None
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2640
 *
 ******************************************************************************/
static void HtxWdgIf_lSetDataCrc(void)
{
    uint32 CurrCrc = 0U;

    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address of the config pointer is used to calculate the CRC */
    /* MISRA2012_RULE_11_6_JUSTIFICATION:The address of the buffer pointer is
       The address of the config pointer is used to calculate the CRC */
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, (uint32)HtxWdgIfData.ConfigPtr);

    HtxWdgIfData.Crc = CurrCrc;

} /* END Of HtxWdgIf_lSetDataCrc(void) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXWDGIF_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxWdgIf_MemMap.h"


/* EOF */
