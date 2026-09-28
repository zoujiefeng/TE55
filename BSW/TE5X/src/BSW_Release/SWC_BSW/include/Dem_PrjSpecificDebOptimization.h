#ifndef DEM_PRJSPECIFICDEBOPTIMIZATION_H
#define DEM_PRJSPECIFICDEBOPTIMIZATION_H

#include "Dem.h"
#include "Dem_Events.h"

#if (DEM_CFG_PRJSPECIFIC_DEB_OPTIMIZATION == DEM_CFG_PRJSPECIFIC_DEB_OPTIMIZATION_ON)
/**
 * \file
 * \ingroup DEM_PRJ_TPL
 *
 * If DemRbProjectSpecificDebOptimization is enabled, then a callout-point will be enabled and
 * the callout function has to be defined. And it must return a boolean value.
 * Refer documentation in the header file for more details.
 */

Dem_boolean_least Dem_PrjSpecificDebOptimizationDone(Dem_EventIdType EventId, Dem_EventStatusType* status);

#endif /* DEM_CFG_PRJSPECIFIC_DEB_OPTIMIZATION == DEM_CFG_PRJSPECIFIC_DEB_OPTIMIZATION_ON */

#endif /* INCLUDE_PROTECTION */
