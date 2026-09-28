/*
 * This file includes application functions that are called by CanIf
 * A dummy implementation is provided here. User has to implement the actual functionality
 * */

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/

#include "CanIf_Prv.h"

/***************************************************************************************************
 Function name    : CanIfAppl_IncompatibleGenerator

 Description      : This is CanIfAppl function called when the Incompatible version of the generator
                    is used in comparison to what was originally used.
                    This error is detected during CanIf_Init() function call
                    If there is an error, then CanIf module will remain in NM_STATE_UNINIT.
                    It will not be possible to use the module functionality, in case of this failure
                    NOTE : If DET is enabled, then most of APIs check if the module is initialised. If DET is disabled
                    most of the APIs will not check for uninitialised state. If the module APIs are called when this
                    error happens , s/w might go to trap.
                    Hence user has to ensure that when this error is detected, module APIs are not called. Ex : Don't
                    start OS
                    This function is called only when post-build loadable feature is used.
 Parameter        : void
 Return value     : void
 ***************************************************************************************************
 */
#if(CANIF_CONFIGURATION_VARIANT > 1)

#define CANIF_START_SEC_CODE
#include "CanIf_MemMap.h"

void CanIfAppl_IncompatibleGenerator(void)
{
    // User can report DET error / DEM error etc here

}


#define CANIF_STOP_SEC_CODE
#include "CanIf_MemMap.h"

#endif
