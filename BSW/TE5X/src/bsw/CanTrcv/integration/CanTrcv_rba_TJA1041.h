/*Please change the macro definition to enable integration code below*/

/*Please remove the conditional compilation and its corresponding #endif to enable integration code below*/
#if 0u
/* BSW-15603 */
#ifndef CANTRCV_RBA_TJA1041_H
# define CANTRCV_RBA_TJA1041_H

#include "CanTrcv.h"
#include "CanTrcv_Prv.h"

typedef struct
{
    uint8           IoNr;   /* DioPinNr  */
    Dio_LevelType   Value;  /* DioValue */
    uint16          WaitTime;
}CanTrcv_ModeStructChain_tst;


#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"
void CanTrcv_rba_TJA1041_CanTrcvInit();
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvSetOpMode(CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvGetOpMode(CanTrcv_TrcvModeType * OpMode);
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvGetBusWuReason (CanTrcv_TrcvWakeupReasonType * reason);
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvSetWakeupMode (CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvCheckWakeup (void);
#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#endif // CANTRCV_RBA_TJA1041_H
/* END BSW-15603 */
#endif /*End of #if 0*/
