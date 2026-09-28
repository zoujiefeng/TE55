/** \file         Rte_UserCfg.h
  *
  * \brief        RTE user configuration header file
  *
  * [$crn:2007:dox 
  * \copyright Copyright 2007 - 2008 ETAS Engineering Tools Application and Services Ltd.
  *            Copyright 2008 ETAS GmbH.
  * $]
  *
  * \note         Implemented SWS: N/A
  *
  * \note         PLATFORM DEPENDANT [yes/no]: no
  *
  * \note         TO BE CHANGED BY USER [yes/no]: yes
  *
  * $Id: Rte_UserCfg.h 41380 2022-06-21 08:58:48Z IQU1SGH $
  */

#ifndef RTE_USERCFG_H
#define RTE_USERCFG_H

#ifdef _GNU_C_TRICORE_
#include "Can.h"
#endif 

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR Specification Version Information */
#define RTE_AR_RELEASE_MAJOR_VERSION         4
#define RTE_AR_RELEASE_MINOR_VERSION         2
#define RTE_AR_RELEASE_REVISION_VERSION      2

/* Software Version Information */
#define RTE_SW_MAJOR_VERSION         4
#define RTE_SW_MINOR_VERSION         2

/*  */
#define RTE_RESOURCE_IMPL_RESOURCE         1
#define RTE_RESOURCE_IMPL_INTLOCK_OS         2
#define RTE_RESOURCE_IMPL_INTLOCK_ALL         3
#define RTE_RESOURCE_IMPL_RB_CORELOCAL_INTLOCK         4
#define RTE_RESOURCE_IMPL_RB_COMMONLOCK         5

#define RTE_RESOURCE_IMPL RTE_RESOURCE_IMPL_INTLOCK_OS

/*  */
#define RTE_SUSPEND_RESUME_OS_INTERRUPTS_IMPL_INTLOCK         1
#define RTE_SUSPEND_RESUME_OS_INTERRUPTS_IMPL_RB_COMMON_LOCK         2

#define RTE_SUSPEND_RESUME_OS_INTERRUPTS_IMPL RTE_SUSPEND_RESUME_OS_INTERRUPTS_IMPL_INTLOCK

#define RTE_SUSPEND_RESUME_ALL_INTERRUPTS_IMPL_INTLOCK         1
#define RTE_SUSPEND_RESUME_ALL_INTERRUPTS_IMPL_RB_COMMON_LOCK         2

#define RTE_SUSPEND_RESUME_ALL_INTERRUPTS_IMPL RTE_SUSPEND_RESUME_ALL_INTERRUPTS_IMPL_INTLOCK


#endif /* RTE_USERCFG_H */
