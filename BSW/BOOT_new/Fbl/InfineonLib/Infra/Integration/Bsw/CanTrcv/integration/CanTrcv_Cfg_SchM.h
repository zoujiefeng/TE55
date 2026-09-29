#ifndef CANTRCV_CFG_SCHM_H_
# define CANTRCV_CFG_SCHM_H_

/*
 ***************************************************************************************************
 * Includes
 ***************************************************************************************************
 */
#include "SchM_Default.h"

/* Include the below file if OS locks are used */
//# include "os.h"

#define SchM_Enter_CanTrcv_RESOURCE SCHM_ENTER_DEFAULT()
#define SchM_Exit_CanTrcv_RESOURCE  SCHM_EXIT_DEFAULT()

/* BSW-17387 */
#endif
