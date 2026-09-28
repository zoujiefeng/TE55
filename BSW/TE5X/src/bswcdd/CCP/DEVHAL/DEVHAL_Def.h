/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : DEVHAL                                                  */
/* !Description     : DEVHAL Component                                        */
/*                                                                            */
/* !File            : DEVHAL_Def.h                                            */
/* !Description     : DEVHAL data declaration                                 */
/*                                                                            */
/* !Reference       :                                                         */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT invt  all rights reserved                                        */
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID: %
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef DEVHAL_DEF_H
#define DEVHAL_DEF_H

#include "Std_Types.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

#define DEVHAL_START_SEC_VAR_CLEARED_BOOLEAN
#include "DEVHAL_MemMap.h"

#define DEVHAL_STOP_SEC_VAR_CLEARED_BOOLEAN
#include "DEVHAL_MemMap.h"

#define DEVHAL_START_SEC_VAR_CLEARED_8BIT
#include "DEVHAL_MemMap.h"

extern uint8 DEVHAL_u8CheckEngineState;

#define DEVHAL_STOP_SEC_VAR_CLEARED_8BIT
#include "DEVHAL_MemMap.h"

#define DEVHAL_START_SEC_VAR_INIT_UNSPECIFIED
#include "DEVHAL_MemMap.h"

#define DEVHAL_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "DEVHAL_MemMap.h"

#endif /* DEVHAL_DEF_H */

/*-------------------------------- end of file -------------------------------*/
