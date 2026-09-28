
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "NvM.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_RunTime.h"
#include "IfxStm_reg.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 **** Exported Variable Definitions
 ******************************************************************************/
uint64 MAIN_u64RunTime_NVM;
const uint64 MAIN_u64RunTimeRom_NVM = 0;
uint64 MAIN_u64RunTime_s;       /* Time uint : second */
uint64 MAIN_u64RunTime_ms;      /* Time uint : millisecond */

/*******************************************************************************
 **** Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_vidGetSystemRunTime(void)
{
   uint64 tick = 0;

   tick = STM0_TIM0.U;
   tick = tick | ((uint64)STM0_CAP.U << 32);

   MAIN_u64RunTime_s  = tick / 100000000;
   MAIN_u64RunTime_ms = tick / 100000;
}

void MAIN_vidUpdateSystemRunTime(void)
{  
   MAIN_u64RunTime_NVM = MAIN_u64RunTime_NVM + MAIN_u64RunTime_s;
}

uint32 MAIN_u32GetRunTime_ms(void)
{
   return (uint32)MAIN_u64RunTime_ms;
}

uint32 MAIN_u32GetRunTime_s(void)
{
   return (uint32)MAIN_u64RunTime_s;
}

uint32 MAIN_u32GetFactoryRunTime_s(void)
{
   uint32 u32Ret = 0;

   u32Ret = (uint32)MAIN_u64RunTime_NVM + (uint32)MAIN_u64RunTime_s;

   return u32Ret;
}

