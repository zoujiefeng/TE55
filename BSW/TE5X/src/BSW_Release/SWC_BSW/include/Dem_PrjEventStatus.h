#ifndef DEM_PRJEVENTSTATUS_H
#define DEM_PRJEVENTSTATUS_H

/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * \brief Custom immediate aging handling
 *
 * If DemRbProjectSpecificEventStatusHandling is enabled, this method replaces the Dem-internal
 * Dem_EvtSt_HandleImmediateAging()
 */

/**
 * Called when an event is reported as passed, may be aged and the aging threshold is zero.
 *
 * \warning If this project-specific override is used, the status byte will not be updated by the Dem. If that is
 *          needed, it has to be modified in this method too. As an alternative you may want to consider to use
 *          Dem_EvtSt_CustomSetPending() instead, which is called in addition to the Dem-internal behaviour.
 */
DEM_INLINE void Dem_EvtSt_HandleImmediateAging(Dem_EventIdType EventId)
{
    /*Fill with Project-specific implementation for ImmediateAging*/
}


#endif /* INCLUDE_PROTECTION */

