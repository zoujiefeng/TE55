#ifndef BSWM_CFG_SCHM_H
#define BSWM_CFG_SCHM_H

// ---- Includes --------------------------------------------------------------
#include "SchM_Default.h"

// The integrator shall implement the particular services SchM_Enter and SchM_Exit.


#define SchM_Enter_BswM_ExclusiveArea()    /* The integrator shall place his code here which would disable/lock the interrupt */
#define SchM_Exit_BswM_ExclusiveArea()     /* The integrator shall place his code here which would disable/lock the interrupt */


#endif /* BSWM_CFG_SCHM_H */

/**********************************************************************************************************************
 * End of header file
 **********************************************************************************************************************/
