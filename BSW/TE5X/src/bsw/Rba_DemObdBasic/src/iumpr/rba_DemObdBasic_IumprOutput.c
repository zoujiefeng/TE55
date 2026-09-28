

#include "rba_DemObdBasic_Prv.h"

#if DEM_CFG_OBD_IUMPR

#include "rba_DemObdBasic_IumprExtension.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

Std_ReturnType Dem_DcmGetInfoTypeValue08(Dcm_OpStatusType OpStatus, uint8* Iumprdata08, uint8* Iumprdata08BufferSize)
{
    /* Update the buffer with the values using the internal utility function */
    return rba_DemObdBasic_Iumpr_PrepareDcmOutput(OpStatus, Iumprdata08, Iumprdata08BufferSize);
}

Std_ReturnType Dem_DcmGetInfoTypeValue0B(Dcm_OpStatusType OpStatus, uint8* Iumprdata0B, uint8* Iumprdata0BBufferSize)
{
    /* Update the buffer with the values using the internal utility function */
    return rba_DemObdBasic_Iumpr_PrepareDcmOutput(OpStatus, Iumprdata0B, Iumprdata0BBufferSize);
}

uint16 rba_DemObdBasic_Iumpr_GetGenDenomCntr(void)
{
    return (rba_DemObdBasic_Iumpr_GenDenom);
}

uint16 rba_DemObdBasic_Iumpr_GetIgnCycCntr(void)
{
    return (rba_DemObdBasic_Iumpr_IgnCycCntr);
}


#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif
