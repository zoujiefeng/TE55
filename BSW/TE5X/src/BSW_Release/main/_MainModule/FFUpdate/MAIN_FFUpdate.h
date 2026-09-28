#ifndef __MAIN_FF_UPDATE_H_
#define __MAIN_FF_UPDATE_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
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
 ****  Private Macro Definitions
 ******************************************************************************/
#define SRC_DATA(x)   (CDD_uCTablePtr)&x, TYPE_ID(x)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void MAIN_FFDataUpdate_1ms(void);
extern void MAIN_FFDataUpdate_10ms(void);
extern void MAIN_FFDataUpdate_100us(void);
extern void GMAIN_FFDataUpdate_1ms(void);
extern void GMAIN_FFDataUpdate_10ms(void);
extern void GMAIN_FFDataUpdate_100us(void);
extern void AMAIN_FFDataUpdate_1ms(void);
extern void AMAIN_FFDataUpdate_10ms(void);
extern void AMAIN_FFDataUpdate_100us(void);
extern void OMAIN_FFDataUpdate_1ms(void);
extern void OMAIN_FFDataUpdate_10ms(void);
extern void OMAIN_FFDataUpdate_100us(void);

#endif /* __MAIN_FF_UPDATE_H_ */

