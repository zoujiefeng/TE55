/* BSW-11069 */

#ifndef DEM_PENDING_DTC_BIT_HANDLING_H
#define DEM_PENDING_DTC_BIT_HANDLING_H

/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * \brief This configuration switch the setting of status bit 2 (PendingDTC) is independent from successful event storage
 *
 * TRUE: the setting of status bit 2 (PendingDTC) is independent from successful event storage 
 * FALSE: the setting of status bit 2 (PendingDTC) is dependent from successful event storage 
 */

#define DEM_CFG_SETTING_PENDINGDTC_INDEPENDENT_FROM_STOCO FALSE

#endif
/* END BSW-11069 */
