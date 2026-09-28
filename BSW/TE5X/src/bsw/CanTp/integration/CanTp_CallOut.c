 
#include "ComStack_Types.h"
#include "CanTp.h"

#define CANTP_START_SEC_FDCALLOUT_CODE
#include "CanTp_MemMap.h"
/***********************************************************************************************************************
 Function name    : CanTp_XX_YY_ExternalFdSupportCallback
 Syntax           : CanTp_XX_YY_ExternalFdSupportCallback(RxPduId, PduInfoPtr, FdEnabled)
 Description      : Function will be as a final call just before starting the functionality.
 Parameter        : PduIdType, PduInfoType*, boolean
 Return value     : Std_ReturnType
***********************************************************************************************************************/
Std_ReturnType CanTp_XX_YY_ExternalFdSupportCallback(PduIdType RxPduId, const PduInfoType *PduInfoPtr,
                                                     const boolean FdEnabled)
{
    (void)RxPduId;
    (void)PduInfoPtr;
    (void)FdEnabled;

    return E_OK;
}

#define CANTP_STOP_SEC_FDCALLOUT_CODE
#include "CanTp_MemMap.h"
