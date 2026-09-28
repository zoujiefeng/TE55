#ifndef __DRV8340_H_
#define __DRV8340_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions (User Config)
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void DRV8340_vidModuleInit(void);
extern void DRV8340_vidMainFunction(void);
extern boolean DRV8340_bIsWorkModeNormal(void);

boolean DRV8340_bGetErrorPinLevel(void);
boolean DRV8340_bGetDrvUnderVolt(void);
boolean DRV8340_bGetDrvOverVolt(void);
boolean DRV8340_bGetDrvOverCurr(void);
boolean DRV8340_bGetDrvOverTemp(void);
boolean DRV8340_bGetPhsShortHigh(void);
boolean DRV8340_bGetPhsShortLow(void);

#endif /* __DRV8340_H_ */

/*-------------------------------- end of file -------------------------------*/
