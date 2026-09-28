/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : DEVHAL                                                  */
/* !Description     : DEVHAL Component                                        */
/*                                                                            */
/* !File            : DEVHAL_1.c                                              */
/* !Description     : DEVHAL Component                                        */
/*                                                                            */
/* !Reference       :                                                         */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT invt  all rights reserved                                        */
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID: %
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"

#include "DEVHAL_Cfg.h"
#include "DEVHAL_Def.h"
#include "DEVHAL_I.h"
#include "IfxCbs_reg.h"
#include "IfxScu_reg.h"

#if ( (DEVHAL_OVERLAY_RAM_END_ADDRESS - DEVHAL_OVERLAY_RAM_START_ADDRESS) \
    < (DEVHAL_u32CALIB_END_ADDRESS - DEVHAL_u32CALIB_START_ADDRESS))
   #error Calibration Size shall be smaller than emulation RAM.
#endif

#if (DEVHAL_u16NB_BLOCKS > 32)
   #error Maximal number of Calibration block shall be 32. Check configuration.
#endif

#define DEVHAL_START_SEC_CODE
#include "DEVHAL_MemMap.h"




#define DEVHAL_STOP_SEC_CODE
#include "DEVHAL_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
