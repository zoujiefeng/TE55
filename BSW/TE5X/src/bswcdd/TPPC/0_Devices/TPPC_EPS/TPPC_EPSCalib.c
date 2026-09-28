/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_EPSCalib.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
/* HALL Detection */
#define TPPC_CALIB_START_SEC_CONST_BOOL
#include "TPPC_MemMap.h" 
#define TPPC_CALIB_STOP_SEC_CONST_BOOL
#include "TPPC_MemMap.h" 

/* Mid Point Detection */
#define TPPC_CALIB_START_SEC_CONST_16
#include "TPPC_MemMap.h" 
CONST(uint8, TPPC_CALIB) TPPC_ku8AscRecoverCntMaxC  = 10;
#define TPPC_CALIB_STOP_SEC_CONST_16
#include "TPPC_MemMap.h" 

#define TPPC_CALIB_START_SEC_CONST_UNSPECIFIED
#include "TPPC_MemMap.h" 
#define TPPC_CALIB_STOP_SEC_CONST_UNSPECIFIED
#include "TPPC_MemMap.h" 

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/



/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



