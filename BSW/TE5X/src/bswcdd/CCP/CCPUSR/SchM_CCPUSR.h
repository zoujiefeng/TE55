/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/*                                                                                                                    */
/* !Component       : SchM                                                                                            */
/*                                                                                                                    */
/* !Module          : SchM_CCPUSR                                                                                     */
/* !Description     : SchM configuration for CCPUSR component                                                         */
/*                                                                                                                    */
/* !File            : SchM_CCPUSR.h                                                                                   */
/*                                                                                                                    */
/* !Target          : All                                                                                             */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/

#ifndef SCHM_CCPUSR_H
#define SCHM_CCPUSR_H

#include "OS.h"

/**********************************************************************************************************************/
/* MACRO FUNCTIONS DEFINITION                                                                                         */
/**********************************************************************************************************************/
/* This critical section shall guarantee the consistency of the content of each ODT independently */
#define SchM_Enter_CCPUSR_FillOdtContent() SuspendAllInterrupts()
#define SchM_Exit_CCPUSR_FillOdtContent() ResumeAllInterrupts()

/* This critical section shall guarantee that CCP_vidDaqListSetEvent */
/* will not be reentrant whatever the parameters are.                */
#define SchM_Enter_CCPUSR_UpdtDaqListPrio() SuspendOSInterrupts()
#define SchM_Exit_CCPUSR_UpdtDaqListPrio() ResumeOSInterrupts()

/* This critical section protects the entry in the Suspended state of a DAQ list. */
/* It shall guarantee that CCP_vidDaqListSetEvent and CCP_vidDaqListTxMgr will    */
/* not preempt each other or themselves whatever the parameters are.              */
#define SchM_Enter_CCPUSR_SuspDaqListTx() SuspendOSInterrupts()
#define SchM_Exit_CCPUSR_SuspDaqListTx() ResumeOSInterrupts()

/* This critical section protects the search and exit of the Suspended state */
/* of the DAQ list with the highest priority.                                */
/* It shall guarantee that CCP_vidDaqListSetEvent and CCP_vidDaqListTxMgr    */
/* will not preempt each other nor themselves whatever their parameters are. */
#define SchM_Enter_CCPUSR_ResuDaqListTx() SuspendOSInterrupts()
#define SchM_Exit_CCPUSR_ResuDaqListTx() ResumeOSInterrupts()

#endif /* SCHM_CCPUSR_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
