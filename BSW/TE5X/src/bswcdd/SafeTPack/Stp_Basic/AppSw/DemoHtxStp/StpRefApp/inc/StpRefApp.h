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
** FILENAME : StpRefApp.h                                                     **
**                                                                            **
** REVISION : \$Revision: 29886 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-08-03 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Demo application header file                                 **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef STPREFAPP_H
#define STPREFAPP_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

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
extern uint8 GetActiveCall(void);
extern void SetActiveCall(uint8 u8Called);

/*******************************************************************************
 *
 * \function      : void StpRefApp_SafeTpackMain(void)
 *
 * \description   : This function handles SafeTpack Startup tests
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
 * \reentrancy    : Non-reentrant (Reentrant by different cores)
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_SafeTpackMain(void);


/*******************************************************************************
 *
 * \function      : void StpRefApp_Tick(void)
 *
 * \description   : This function handles timer interrupt used for SafeTpack demo application
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
 * \service id:   : 0x02
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : This function is called from STM interrupt context
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Tick(void);


/*******************************************************************************
 *
 * \function      : void StpRefApp_WaitForTick(void)
 *
 * \description   : This function waits for timer tick interrupt
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
 * \reentrancy    : Non-reentrant (Reentrant by different cores)
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_WaitForTick(void);


/*******************************************************************************
 *
 * \function      : void StpRefApp_SafeWdgInit(void)
 *
 * \description   : This function initialises the configured watchdog
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
 * \service id:   : 0x04
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_SafeWdgInit(void);


/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu0(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
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
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Runtime_Cpu0(void);

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu1(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
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
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Runtime_Cpu1(void);

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu2(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
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
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Runtime_Cpu2(void);

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu3(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
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
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Runtime_Cpu3(void);

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu4(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
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
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Runtime_Cpu4(void);

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu5(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
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
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_Runtime_Cpu5(void);


/*******************************************************************************
 *
 * \function      : uint8 TLF35584Demo_IsSsspActive(void)
 *
 * \description   : This function checks Secondary Safety Shutdown Path Activation
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : 0: SS1 pin (P33.9) is high
 *                  1: SS1 pin (P33.9) is low
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : User shall implement the following:
                    Check on application level that the safe state outputs SS1/2 are low and
                    the secondary safety shutdown path has been activated on application level.
 * \traceability  :
 *
 ******************************************************************************/
extern uint8 TLF35584Demo_IsSsspActive(void);


/*******************************************************************************
 *
 * \function      : void TLF35584Demo_InterruptHandler(void)
 *
 * \description   : This function is the interrupt handler for TLF35584 INT pin activation.
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
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : HtxTLF35584Test module forwards any unexpected interrupt to application
 *                  for servicing.
 * \traceability  :
 *
 ******************************************************************************/
extern void TLF35584Demo_InterruptHandler(void);

/*******************************************************************************
 *
 * \function      : void StpRefApp_TlfDisable(void)
 *
 * \description   : This function disables the TLF35584
 *                  (avoids the need to service the watchdog)
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
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
extern void StpRefApp_TlfDisable(void);

#endif /* <STPREFAPP_H */

/* EOF */
