 

/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * See Dem_PrjEraseAllNvMDataHandling.h_tpl for documentation
 */

#include "Dem_PrjEraseAllNvMDataHandling.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"


Dem_EraseAllRequestType Dem_PrjEraseAllNvMDataHandling(Dem_HashIdCheckResultType HashIdCheckResult)
{
    Dem_EraseAllRequestType eraseAll = DEM_ERASE_ALL_REQUEST_NONE;

    /* ProjectSpecific logic for executing clear all
     * Just an Example implementation given here */

    if(HashIdCheckResult == DEM_HASH_ID_MISMATCH)
    {
        eraseAll = DEM_ERASE_ALL_REQUEST_ALL;
    }

    return eraseAll;
}


#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

