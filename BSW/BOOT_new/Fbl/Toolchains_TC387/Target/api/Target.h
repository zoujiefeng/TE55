/*
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, INVT, 2021. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
 ************************************************************************************************
 * Component : Target.h
 * Date      : June 5, 2021
 * Version   : 2.0
 * Description  : This module implements Timer driver for RTA-OS TASK tick.
 *                Note: This file contains sample implementation only. It is not part of the
 *                      production deliverables. 
 ***********************************************************************************************
*/
#ifndef TARGET_H
#define TARGET_H

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "Os.h"


/*
 **********************************************************************************************************************
 *  Defines
 **********************************************************************************************************************
 */


/*
 **********************************************************************************************************************
 *  Global Macros definition
 **********************************************************************************************************************
 */
#ifndef RTM_H
#define TARGET_IDLE()                 /* idle without doing anything. */
#else
#define TARGET_IDLE()                 /* idle without doing anything. */
#endif
#define TARGET_GETSYSTICKS32BITS()    Target_GetSysTicks32Bits()
#define TARGET_GETMSTICKS32BITS()     Target_Get1msTicks()


/*
 **********************************************************************************************************************
 * Public Function declarations
 **********************************************************************************************************************
 */
#define STARTUP_START_SEC_CODE
#include "MemMap.h"
extern void Target_Init(void);
extern uint32 Target_GetSysTicks32Bits(void);
extern uint32 Target_Get1msTicks(void);
#define STARTUP_STOP_SEC_CODE
#include "MemMap.h"


#endif /* TARGET_H */

/*
 **********************************************************************************************************************
 * End of the file
 **********************************************************************************************************************
 */
