#ifndef RBA_DEMOBDBASIC_IUMPREXTENSION_H
#define RBA_DEMOBDBASIC_IUMPREXTENSION_H

#include "rba_DemObdBasic_Types.h"

/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * Called by Dem_DcmGetInfoTypeValue08/Dem_DcmGetInfoTypeValue0B.
 * Fill the output according your needs.
 *
 * Hint:
 * rba_DemObdBasic_Ratio_GetMinRatioIdxForGroup can be used to get the min ratio of the group.
 *
 */
Std_ReturnType rba_DemObdBasic_Iumpr_PrepareDcmOutput(Dcm_OpStatusType OpStatus, uint8* Iumprdata, uint8* IumprdataBufferSize);

#endif
