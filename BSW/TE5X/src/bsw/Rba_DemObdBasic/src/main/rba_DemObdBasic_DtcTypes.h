 

#ifndef RBA_DEMOBDBASIC_DTCTYPES_H
#define RBA_DEMOBDBASIC_DTCTYPES_H

#include "Std_Types.h"
#include "Dem_Cfg.h"
#include "rba_DemObdBasic_PdtcMemTypes.h"

typedef struct
{
    uint16_least evMemLocIt;
    rba_DemObdBasic_PdtcMemIterator pdtcLocIt;
} rba_DemObdBasic_DTCFilterState;

#endif

