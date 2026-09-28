#include "Os.h"

void OsT_vidStopPreTaskElapsed(void)
{
  const Os_CoreConfiguration *os_current_core_const = &Os_const_coreconfiguration[0U];
  Os_ControlledCoreType *os_current_controlled_core = os_current_core_const->controlled;
   
  Os_StopwatchTickType now = Os_Cbk_GetStopwatch();

  Os_CurrentMeteredObject->elapsed += (now - Os_CurrentMeteredObject->previous);
  Os_CurrentMeteredObject->cumulative += (now - Os_CurrentMeteredObject->previous);
}

void OsT_vidStartPreTaskElapsed(void)
{
  const Os_CoreConfiguration *os_current_core_const = &Os_const_coreconfiguration[0U];
  Os_ControlledCoreType *os_current_controlled_core = os_current_core_const->controlled;
   
  Os_StopwatchTickType now = Os_Cbk_GetStopwatch();

  Os_CurrentMeteredObject->previous = now;
}

