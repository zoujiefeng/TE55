
#include "Os_DisableInterrupts.h"

#include "CCU6_Hal.h"

void CCU6_vidDisableTrap(void)
{
   Os_Disable_SRC_CCU60SR2();
}

void CCU6_vidEnableTrap(void)
{
   Os_Enable_CCU60SR2_ISR();
}

void GCCU6_vidDisableTrap(void)
{
   Os_Disable_SRC_CCU61SR2();
}

void GCCU6_vidEnableTrap(void)
{
   Os_Enable_CCU61SR2_ISR();
}



