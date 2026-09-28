/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * See rba_DemObdBasic_ProjectExtension.h_tpl for documentation
 */

#include "rba_DemObdBasic_ProjectExtension.h"

boolean rba_DemObdBasic_IsObdDeactivatedByVariant(void)
 {
     return FALSE;
     /*
      * This callback is provided to Deactivate OBD MIL for the usecase where project has both OBD and non-OBD variants with same software.
      * For non-OBD variant the call back shall return TRUE to disable MIL.
      *
      * !!!!!!!!!!!!CAUTION: THIS CALLBACK SHOULD ONLY BE USED FOR VARIANT HANDLING.
      * FOR OBD COMPLIANT VEHICLES THIS CALLBACK MUST ALWAYS RETURN FALSE !!! OTHERWISE OBD CONFORMITY IS VIOLATED.
      *
      * Integration HINT:-Dem doesn't store the Variant information in NVRAM.Variant information must be handled outside the Dem and based on that
      * this callback shall be implemented project specific to return TRUE or FALSE.However this callback won't stop storage of permant DTCs.
      * In addition to disabling the MIL,if its required to stop storage of permant DTCs in non-obd variant, then the callback rba_DemObdBasic_IsPermanentDTCStorageDisabled shall be used.
      */
}

boolean rba_DemObdBasic_IsPermanentDTCStorageDisabled(void)
{
    return FALSE;
    /*
     * This callback is provided to stop the storage of OBD permanent DTCs for the usecase to stop storage of permanent DTCs during production.
     * If this callback returns TRUE, then entering of OBD DTCs to permanent memory is blocked.
     *
     * !!!!!!!!!!!!CAUTION: THIS CALLBACK SHOULD ONLY BE USED DURING PRODUCTION, NEVER USE THIS CALLBACK FOR OTHER PURPOSES!!! OTHERWISE OBD CONFORMITY IS VIOLATED.
     *
     * Integration HINT:-Dem doesn't store this status of "permant DTCs storage being disabled" in NVRam and hence if this blocking is required across power cycles, then it must be handled
     * outside Dem and based on that this callback shall be implemented project specific to return TRUE or FALSE.
     */
}
