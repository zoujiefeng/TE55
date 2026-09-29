/******************************************************************************
**                                                                           **
** Copyright (C) Infineon Technologies (2013)                                **
**                                                                           **
** All rights reserved.                                                      **
**                                                                           **
** This document contains proprietary information belonging to Infineon      **
** Technologies. Passing on and copying of this document, and communication  **
** of its contents is not permitted without prior written authorization.     **
**                                                                           **
*******************************************************************************
**                                                                           **
**  $FILENAME   : Dem.h $                                                    **
**                                                                           **
**  $CC VERSION : \main\6 $                                                  **
**                                                                           **
**  $DATE       : 2013-06-19 $                                               **
**                                                                           **
**  AUTHOR      : DL-AUTOSAR-Engineering                                     **
**                                                                           **
**  VENDOR      : Infineon Technologies                                      **
**                                                                           **
**  DESCRIPTION  : Test Stub file for Dem Module                             **
**                                                                           **
**  MAY BE CHANGED BY USER [yes/no]: yes                                     **
**                                                                           **
******************************************************************************/

#ifndef     _DEM_H
#define     _DEM_H

/*******************************************************************************
**                      Includes
*******************************************************************************/
#include "Std_Types.h"
#include "Dem_Types.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define DEM_AR_RELEASE_MAJOR_VERSION      (4U)
#define DEM_AR_RELEASE_MINOR_VERSION      (2U)
#define DEM_AR_RELEASE_REVISION_VERSION   (2U)

// This value is defined in the DEM specification.
#ifndef DEM_EVENT_STATUS_PASSED
#define DEM_EVENT_STATUS_PASSED         0x00
#endif

// This value is defined in the DEM specification.
#ifndef DEM_EVENT_STATUS_FAILED
#define DEM_EVENT_STATUS_FAILED         0x01
#endif

// Value was selected as given in DEM SWS.
#ifndef DEM_EVENT_STATUS_PREPASSED
#define DEM_EVENT_STATUS_PREPASSED      0x02
#endif

// Value was selected as given in DEM SWS.
#ifndef DEM_EVENT_STATUS_PREFAILED
#define DEM_EVENT_STATUS_PREFAILED      0x03
#endif

#define DemConf_DemEventParameter_DemEventParameter   ((Dem_EventIdType) 0x1)
#define DemConf_DemEventParameter_DemEventParameter_001	((Dem_EventIdType) 0x2)
#define DemConf_DemEventParameter_DemEventParameter_002	((Dem_EventIdType) 0x3) //INVT 20200507 added for Cantrcv Added TJA1145 of SPI

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
extern void Dem_ReportErrorStatus ( Dem_EventIdType EventId,
                          Dem_EventStatusType EventStatus);

extern Std_ReturnType Dem_DisableDTCSetting(uint8 ClientId);

extern Std_ReturnType Dem_EnableDTCSetting(uint8 ClientId);
/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/

#endif
