#include "Dem_KL15Persistence.h"

#include "Dem.h"

/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * See Dem_KL15Persistence.h_tpl for documentation
 */

/* Internal flag. Please use the KL15Persistence functions instead of setting it directly.
 * Will be automatically initialized to 0. */
static boolean Dem_Prv_KL15PersistenceIsStorageScheduled;

void Dem_KL15PersistenceMain(void)
{
    if (Dem_Prv_KL15PersistenceIsStorageScheduled)
    {
        Dem_Prv_KL15PersistenceIsStorageScheduled = FALSE;
        /*Agt1hc: Comment for used*/
         (void)Dem_TriggerStorageToNvm();
    }
}

void Dem_KL15PersistenceScheduleStorage(void)
{
    Dem_Prv_KL15PersistenceIsStorageScheduled = TRUE;
}

Std_ReturnType Dem_KL15PersistenceImmediateStorage(void)
{
    Dem_Prv_KL15PersistenceIsStorageScheduled = FALSE;
    /*Agt1hc: Comment for used*/
    return Dem_TriggerStorageToNvm();
   // return 0;
}
