
#include "CCU6_Cfg.h"


const IfxCcu6_TimerWithTrigger CCU6_kudtIfxCcu6TimerWithTriggerCfg =
{
   {
      2500,                                           /* Period in T12PV is 2500.      */
      FALSE,                                         /* Trigger disabled              */
      5000,                                          /* Frequency: 10KHZ; 5000 means 0.04us per CLK. */
      IfxStdIf_Timer_CountDir_upAndDown,             /* counting mode: center aligned */
   },
   &MODULE_CCU60                                      /* CCU6 module register address. */
};


