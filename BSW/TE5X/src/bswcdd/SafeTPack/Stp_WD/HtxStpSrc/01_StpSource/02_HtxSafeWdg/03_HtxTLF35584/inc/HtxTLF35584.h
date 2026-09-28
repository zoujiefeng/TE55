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
** FILENAME : HtxTLF35584.h                                                   **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2243             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2231             **
**                                                                            **
** DESCRIPTION : TLF35584 watchdog Driver Header File                         **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXTLF35584_H
#define HTXTLF35584_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxPort_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"
#include "HtxTLF35584_Cfg.h"
#include "HtxWdgIf_Types.h"
#include "HtxTLF35584Qspi.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* Operation mode of window watchdog: */
typedef enum
{
    TLF_WM_FWD = 0,         /* Use functional watchdog */
    TLF_WM_FWD_WWD_SPI, /* Use functional watchdog & window watchdog with SPI trig */
    TLF_WM_WWD_WDI,     /* Use window watchdog with triggering via WDI pin */
    TLF_WM_WWD_SPI      /* Use window watchdog with SPI triggering*/
} HtxTLF35584_WdgModeType;


/* MISRA2012_RULE_4_8_JUSTIFICATION:
   This type is defined to specify the command format to be used by upper layer(HtxWdgIf) */
/* Configuration container for external watchdog */
typedef struct HtxTLF35584_ConfigType
{
    /* Config ptr to QSPI: */
    const HtxTLF35584Qspi_ChConfigType* QspiCfgPtr;
    /* Window watchdog operation mode (disabled/WDI triggering/SPI trig.): */
    HtxTLF35584_WdgModeType WatchdogMode;
    uint8 HeartbeatBase;
    uint8 OpenWindowHeartbeat;
    uint8 CloseWindowHeartbeat;
    uint8 FwdHeartbeat;
    /* Window Watchdog error threshold: */
    uint8 WWDWdgErrorThreshold;
    /* Functional Watchdog error threshold: */
    uint8 FWDWdgErrorThreshold;
    volatile Ifx_P* WdiPort; /* Pointer to WDI GPIO port */
    uint8 WdiPin; /* WDI port pin index (0..15) */
    /* Signature XOR table: */
    uint32 XorResponse[HTXWDGIF_SAFEWDG_MAXNBR_SEED];
} HtxTLF35584_ConfigType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

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
#define HTXTLF35584_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584_MemMap.h"


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_Init
 *                  (const HtxTLF35584_ConfigType* const ConfigPtr)
 *
 * \description   : Reads default configuration register data from TLF, and
 *                  disables the watchdog, Error pin monitoring
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigPtr - pointer to the module's configuration
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED: Watchdog init accepted
 *                  HTXWDGIF_JOB_INV_PARAM: Invalid configuration
 *
 *******************************************************************************
 *
 * \service id:   : 0x1C
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2246
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_Init(const HtxTLF35584_ConfigType* const ConfigPtr);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_DeInit(void)
 *
 * \description   : De-initializes the driver and disables the watchdog and
 *                  error pin monitoring
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED: Watchdog de-initialization accepted
 *                  HTXWDGIF_JOB_BUSY: Last transmission is not yet completed
 *
 *******************************************************************************
 *
 * \service id:   : 0x1D
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2232
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_DeInit(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_Activate(void)
 *
 * \description   : Enables the watchdog, error pin monitoring and puts the
 *                  driver to ACTIVE state.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED:
 *                    Watchdog Activation Job accepted
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                    CRC check on internal data structure failed
 *                  HTXWDGIF_JOB_INV_STATE:
 *                    TLF35584 is not in INIT or WAKE state
 *                  HTXWDGIF_JOB_BUSY:
 *                    HtxTLF35584 driver is already busy, processing another job
 *
 *******************************************************************************
 *
 * \service id:   : 0x1E
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2233
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_Activate(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_Service
 *                  (const uint32 Signature)
 *
 * \description   : Services the watchdog and requests a new seed value
 *
 *******************************************************************************
 *
 * \param[in]     : Signature - The signature to be used for watchdog service
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED:
 *                  Job accepted and ongoing
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_INV_STATE:
 *                  TLF35584 is not in INIT, SLEEP, WAKE or NORMAL state
 *
 *                  HTXWDGIF_JOB_BUSY:
 *                  HtxTLF35584 driver is already busy, processing another job
 *
 *                  HTXWDGIF_JOB_INVALID_SEED:
 *                  Invalid seed is stored internally, (call HtxTLF35584_GetSeed)
 *
 *                  HTXWDGIF_JOB_SUCCESS:
 *                  Successful servicing of the watchdog (window)
 *
 *******************************************************************************
 *
 * \service id:   : 0x1F
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2234
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_Service(const uint32 Signature);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetWdgInfo(void)
 *
 * \description   : Initiates the read of TLF status registers
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED : Job accepted and ongoing
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_BUSY:
 *                  The service not accepted as the bus is busy
 *******************************************************************************
 *
 * \service id:   : 0x20
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2235
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_GetWdgInfo(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetSeed
 *                  (uint8* const NextSeedPtr)
 *
 * \description   : Returns the next seed value to be used
 *
 *******************************************************************************
 *
 * \param[in]     : NextSeedPtr - address to store the seed
 *
 * \param[out]    : NextSeedPtr - Pointer that will receive the next seed value
 *                                in case of success,remains unchanged otherwise
 *
 * \return        : HTXWDGIF_JOB_SUCCESS :
 *                     Operation successfully performed
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                     CRC check on internal data structure failed
 *                  HTXWDGIF_JOB_INV_PARAM : Invalid parameter supplied
 *                  HTXWDGIF_JOB_INVALID_SEED : No valid seed available
 *
 *******************************************************************************
 *
 * \service id:   : 0x21
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2236
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_GetSeed(uint8* const NextSeedPtr);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ExtWdgStateType HtxTLF35584_GetState(void)
 *
 * \description   : Returns the current state of the watchdog driver
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_EXT_TLF_INIT    - TLF35584 INIT state
 *                  HTXWDGIF_EXT_TLF_NORMAL  - TLF35584 in NORMAL state
 *                  HTXWDGIF_EXT_TLF_SLEEP   - TLF35584 in SLEEP state
 *                  HTXWDGIF_EXT_TLF_STANDBY - TLF35584 in STANDBY state
 *                  HTXWDGIF_EXT_TLF_WAKE    - TLF35584 in WAKE state
 *                  HTXWDGIF_EXT_TLF_NONE    - TLF35584 in RESET state
 *                  HTXWDGIF_EXT_TLF_UNDEFINED1 - TLF35584 in Undefined state
 *                  HTXWDGIF_EXT_TLF_UNDEFINED2 - TLF35584 in Undefined state
 *******************************************************************************
 *
 * \service id:   : 0x22
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2237
 *
 ******************************************************************************/
extern HtxWdgIf_ExtWdgStateType HtxTLF35584_GetState(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetJobResult(void)
 *
 * \description   : Returns the state / result of the last asynchronous
 *                  data transmission, i.e. either watchdog servicing
 *                  or user requests.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_<JobResult>
 *                  (Refer User manual for all the possible values of
 *                   HtxWdgIf_ResultType return type)
 *
 *******************************************************************************
 *
 * \service id:   : 0x23
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2238
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_GetJobResult(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_UserRequest
 *                  (
 *                      HtxWdgIf_CmdType* const UserCmdPtr,
 *                      const uint8 Count
 *                  )
 *
 * \description   : This API sends user requests to the watchdog and
 *                  returns the watchdog response to the caller. The
 *                  requests are transferred asynchronously and the
 *                  HtxTLF35584_GetJobResult API needs to be polled to
 *                  check whether transmission succeeded and the response
 *                  is available.
 *
 *******************************************************************************
 *
 * \param[in]     : UserCmdPtr - pointer to the structure which has the
                        command nad data to be sent to the TLF35584 device
 *
 * \param[in]     : Count - Number of User commands to be sent
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED: Job accepted and ongoing
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_INV_PARAM: Invalid parameter supplied
 *
 *                  HTXWDGIF_JOB_BUSY: HtxTLF35584 driver is already busy,
 *                  processing another job
 *
 *******************************************************************************
 *
 * \service id:   : 0x24
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2239
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    const uint8 Count
);


/*******************************************************************************
 *
 * \function      : void HtxTLF35584_MainFunction(void)
 *
 * \description   : Main function handles watchdog servicing and cyclically
 *                  updates device information.
 *                  If the window watchdog mode is enabled, the WDI pin will be
 *                  set to high in this API. All asynchronous request's
 *                  responses will be evaluated in this function.
 *                  It should be called periodically by the OS or the
 *                  application software
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x25
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2240
 *
 ******************************************************************************/
extern void HtxTLF35584_MainFunction(void);


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetErrCntr
 *                  (uint8* const ErrCtrPtr)
 *
 * \description   : Returns error counter of configured watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : ErrCtrPtr - pointer to report back error counter value
 *
 * \param[out]    : ErrCtrPtr - returned error counter value
 *
 * \return        : HTXWDGIF_JOB_SUCCESS: Operation successfully performed
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_INV_PARAM: Failed due to invalid input parameter
 *
 *******************************************************************************
 *
 * \service id:   : 0x30
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2244
 *
 ******************************************************************************/
extern HtxWdgIf_ResultType HtxTLF35584_GetErrCntr(uint8* const ErrCtrPtr);


/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584_MemMap.h"

/*******************************************************************************
**                   Imported Post-Build Data from Configuration files        **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584_MemMap.h"

extern const HtxTLF35584_ConfigType HtxTLF35584_ConfigRoot[HTXTLF35584_CFG_PARAM_COUNT];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584_MemMap.h"


#endif /* HTXTLF35584_H */

/* EOF */

