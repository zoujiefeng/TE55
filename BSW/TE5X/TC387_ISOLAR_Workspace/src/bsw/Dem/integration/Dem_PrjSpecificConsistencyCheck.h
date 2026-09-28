#ifndef DEM_PRJSPECIFICCONSISTENCYCHECK_H
#define DEM_PRJSPECIFICCONSISTENCYCHECK_H

#include "Dem_EvBuffEvent.h"


/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * \brief Custom Consistency Check during Init
 *
 * \See Dem_PrjSpecificConsistencyCheck.h_tpl for documentation
 */
#if(DEM_CFG_SUPPORT_PROJECTSPECIFIC_CONSISTENCYCHECK == DEM_CFG_CONSISTENCY_CHECK_ON)

/**
 * \brief Any Project Specific Consistency Checks
 *
 * Called at the start of Dem_Init to allow any project specific consistency checks
 * Implementation of the checks need to be present in the function definition.
 *
 */
void Dem_ProjectSpecificConsistencyCheck();

#endif

#endif  /* INCLUDE_PROTECTION */
