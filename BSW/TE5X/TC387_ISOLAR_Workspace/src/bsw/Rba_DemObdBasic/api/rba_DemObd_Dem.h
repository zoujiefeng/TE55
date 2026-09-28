

#ifndef RBA_DEMOBD_DEM_H
#define RBA_DEMOBD_DEM_H

#include "rba_DemObdBasic_Dem.h"

DEM_INLINE void rba_DemObd_Init(void)
{
    rba_DemObdBasic_Init();
}

DEM_INLINE void rba_DemObd_MainFunction(void)
{
    rba_DemObdBasic_MainFunction();
}

DEM_INLINE void rba_DemObd_Clear(Dem_DTCOriginType DTCOrigin)
{
    rba_DemObdBasic_Clear(DTCOrigin);
}
#endif
