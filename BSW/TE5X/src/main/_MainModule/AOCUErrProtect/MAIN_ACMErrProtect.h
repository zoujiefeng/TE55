#ifndef __MAIN_ACM_ERR_PROTRCT_H_
#define __MAIN_ACM_ERR_PROTRCT_H_

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* !Comment: ACM ASC type. */
enum
{
   ACM_ASC_TYPE_STARTUP_CHECK = 0,
   ACM_ASC_TYPE_NORMAL,
   ACM_ASC_TYPE_FAULT,
   ACM_ASC_TYPE_RECOVER,
   ACM_ASC_TYPE_LOCK
};

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
/******************************************************************************
*  
* !FuncName    : MAIN_bGetACMASCEnableState  
* !Description : Get ACM ASC EnableState.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
extern boolean MAIN_bGetACMASCEnableState(void);
extern void    ACM_CallBack(void);
extern uint8   MAIN_u8GetACMASCStep(void);
extern void    MAIN_bSetACMASCEnableState(boolean bState);

#endif /* __MAIN_ROLL_ERR_CODE_H_ */
