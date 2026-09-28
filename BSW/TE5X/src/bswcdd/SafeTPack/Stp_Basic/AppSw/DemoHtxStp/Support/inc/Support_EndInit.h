
#include "Ifx_Ssw_Infra.h"

#define Support_ClearCpuEndInit(cpuwatchdog)    ( Ifx_Ssw_clearCpuEndinit(cpuwatchdog, Ifx_Ssw_getCpuWatchdogPassword(cpuwatchdog) ) )
#define Support_SetCpuEndInit(cpuwatchdog)      ( Ifx_Ssw_setCpuEndinit(cpuwatchdog, Ifx_Ssw_getCpuWatchdogPassword(cpuwatchdog) ) )

#define Support_ClearSafetyEndInit()		        ( Ifx_Ssw_clearSafetyEndinit(Ifx_Ssw_getSafetyWatchdogPassword()) )
#define Support_SetSafetyEndInit()                ( Ifx_Ssw_setSafetyEndinit(Ifx_Ssw_getSafetyWatchdogPassword()) )
