/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */
#ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT
#error The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#else
#warning The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#endif /* NOT_READY_FOR_TESTING_OR_DEPLOYMENT */




#ifndef E2E_USERCFG_H
#define E2E_USERCFG_H


#endif /* E2E_USERCFG_H */

/*
 **********************************************************************************************************************
 * Defines/Macros
 **********************************************************************************************************************
*/

//If the Callouts are enabled E2E will call E2E_Prv_PXXCalcCRCXXXX_Callout(…) instead of E2E_Prv_PXXCalcCRC32XXXX(…)
//The user is supposed to implement the _Callout functions in E2E_Callout.c

#define E2E_USERCFG_ENABLE    1
#define E2E_USERCFG_DISABLE   0

#define E2E_P01USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P02USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P04USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P05USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P06USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P07USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P11USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P22USER_CALLOUT E2E_USERCFG_DISABLE
#define E2E_P44USER_CALLOUT E2E_USERCFG_DISABLE

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#if E2E_P01USER_CALLOUT || E2E_P02USER_CALLOUT || E2E_P04USER_CALLOUT || E2E_P05USER_CALLOUT || E2E_P06USER_CALLOUT || E2E_P07USER_CALLOUT || E2E_P11USER_CALLOUT || E2E_P22USER_CALLOUT || E2E_P44USER_CALLOUT
#include "E2E_CallOut.h"
#endif
