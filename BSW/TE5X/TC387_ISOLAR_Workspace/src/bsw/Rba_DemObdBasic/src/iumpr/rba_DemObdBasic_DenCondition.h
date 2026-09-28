

#ifndef RBA_DEMOBDBASIC_DENOMINATOR_H
#define RBA_DEMOBDBASIC_DENOMINATOR_H

#include "rba_DemObdBasic_Types.h"

#if DEM_CFG_OBD_IUMPR

#include "rba_DiagLib.h"

#define RBA_DEMOBDBASIC_BITPOS_LOCK         0u
#define RBA_DEMOBDBASIC_BITPOS_REACHED      1u

DEM_INLINE boolean rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_DenCondType cond)
{
    return rba_DiagLib_Bit8IsBitSet(cond, RBA_DEMOBDBASIC_BITPOS_LOCK);
}

DEM_INLINE boolean rba_DemObdBasic_DenCond_IsReached(rba_DemObdBasic_DenCondType cond)
{
    return rba_DiagLib_Bit8IsBitSet(cond, RBA_DEMOBDBASIC_BITPOS_REACHED);
}

void rba_DemObdBasic_DenCond_StartDrivingCycle(void);

#endif

#endif

