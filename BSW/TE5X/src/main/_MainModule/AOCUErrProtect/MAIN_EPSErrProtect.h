#ifndef __MAIN_EPS_ERR_PROTRCT_H_
#define __MAIN_EPS_ERR_PROTRCT_H_

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* !Comment: EPS ASC type. */
enum
{
   EPS_ASC_TYPE_STARTUP_CHECK = 0,
   EPS_ASC_TYPE_NORMAL,
   EPS_ASC_TYPE_FAULT,
   EPS_ASC_TYPE_RECOVER,
   EPS_ASC_TYPE_LOCK
};

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
/******************************************************************************
*  
* !FuncName    : MAIN_bGetEPSASCEnableState  
* !Description : Get EPS ASC EnableState.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
extern boolean MAIN_bGetEPSASCEnableState(void);
extern void    EPS_CallBack(void);
extern uint8   MAIN_u8GetEPSASCStep(void);
extern void    MAIN_bSetEPSASCEnableState(boolean bState);

#endif /* __MAIN_ROLL_ERR_CODE_H_ */
