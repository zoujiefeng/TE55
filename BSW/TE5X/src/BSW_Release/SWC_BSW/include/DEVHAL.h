/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : DEVHAL                                                  */
/* !Description     : DEVHAL Component                                        */
/*                                                                            */
/* !File            : DEVHAL.h                                                */
/* !Description     : APIs of DEVHAL Component                                */
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

#ifndef DEVHAL_H
#define DEVHAL_H

#include "Std_Types.h"
#include "IfxScu_reg.h" 

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/* !MComment: DEVHAL_u8CheckEngineState available values                      */
#define DEVHAL_u8ENG_STATE_DENIED            0U
#define DEVHAL_u8ENG_STATE_IN_PROGRESS       2U
#define DEVHAL_u8ENG_STATE_AUTHORISED        1U

/******************************************************************************/
/* MACROS                                                                     */
/******************************************************************************/
/* Data cache shall be invalidated for the 4 cores  */
/******************************************************************************/
/* !FuncName    : DEVHAL_vidInvalidateDataCache                               */
/* !Description : Data cache is invalidated for the 3 cores                   */
/*                                                                            */
/* !LastAuthor  :                                                  */
/******************************************************************************/
#define DEVHAL_vidInvalidateDataCache() \
do \
{ \
   /* !Comment: DCINVAL, CSEL0, CSEL1, CSEL2 and CSEL3 bits set to 1               */ \
   SCU_OVCCON.U = 0x0004000FU; \
} \
while (0U)

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

#define DEVHAL_START_SEC_CODE
#include "DEVHAL_MemMap.h"

boolean DEVHAL_bCheckEmulCard(void);
Std_ReturnType DEVHAL_udtCheckEngineState(void);

#define DEVHAL_STOP_SEC_CODE
#include "DEVHAL_MemMap.h"

#endif /* DEVHAL_H */

/*-------------------------------- end of file -------------------------------*/
