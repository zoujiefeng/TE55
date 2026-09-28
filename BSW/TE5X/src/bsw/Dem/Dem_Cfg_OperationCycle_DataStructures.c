/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#include "Dem_Cfg_OperationCycle_DataStructures.h"

#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"

const Dem_Cfg_OperationCycleType Dem_Cfg_OperationCycle[5] = { { 0x0, FALSE }, /* DEM_OPCYC_WARMUP */
{ 0x0, FALSE }, /* DEM_OPCYC_PFC */
{ 0x0, TRUE }, /* WARM_UP */
{ 0x3, TRUE }, /* DemOperationCycle_Ignition */
{ 0x0, TRUE } /* DemOperationCycle_Power */
};

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

