/* BSW-1915 */
#ifndef RBA_FEEFS1_SYNCREAD_H
#define RBA_FEEFS1_SYNCREAD_H

#include "Fls.h"
/* BSW-15413 */
#define FEE_START_SEC_CODE
#include "Fee_MemMap.h"
/* END BSW-15413 */
extern Std_ReturnType Fee_Fls_SyncRead( Fls_AddressType SourceAddress,
                                uint8 *TargetAddressPtr,
                                Fls_LengthType Length
                               );

#endif /* RBA_FEEFS1_SYNCREAD_H */
/* END BSW-1915 */
/* BSW-15413 */
#define FEE_STOP_SEC_CODE
#include "Fee_MemMap.h"
/* END BSW-15413 */