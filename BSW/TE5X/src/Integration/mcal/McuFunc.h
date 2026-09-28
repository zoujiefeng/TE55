#ifndef  _MCUFUNC_H
#define  _MCUFUNC_H

#define CPU0_START_SEC_CODE
#include "MemMap.h"
extern void McuFunc_InitializeClock(void);
extern void McuFunc_vidCddModuleInitCore0(void);
#define CPU0_STOP_SEC_CODE
#include "MemMap.h"

#define CPU1_START_SEC_CODE
#include "MemMap.h"
extern void McuFunc_vidCddModuleInitCore1(void);
#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

#define CPU2_START_SEC_CODE
#include "MemMap.h"
extern void McuFunc_vidCddModuleInitCore2(void);
#define CPU2_STOP_SEC_CODE
#include "MemMap.h"

#define CPU3_START_SEC_CODE
#include "MemMap.h"
extern void McuFunc_vidCddModuleInitCore3(void);
#define CPU3_STOP_SEC_CODE
#include "MemMap.h"


#endif /* _MCUFUNC_H */
