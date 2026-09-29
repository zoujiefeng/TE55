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
**  $FILENAME   : Dem_Types.h $                                              **
**                                                                           **
**  $CC VERSION : \main\3 $                                                  **
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

#ifndef  _DEM_TYPES_H
#define  _DEM_TYPES_H                

/*******************************************************************************
**                      Includes
*******************************************************************************/

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define DEM_EVENT_STATUS_PASSED ((Dem_EventStatusType)0x00)
#define DEM_EVENT_STATUS_FAILED ((Dem_EventStatusType)0x01)

#define DEM_CONTROL_DTC_SETTING_OK      0x00
#define DEM_CONTROL_DTC_SETTING_N_OK    0x01
#define DEM_CONTROL_DTC_WRONG_DTCGROUP  0x02

#define DEM_DTC_GROUP_EMISSION_REL_DTCS     0x00000000
#define DEM_DTC_GROUP_ALL_DTCS              0xFFFFFFFFu
#define DEM_DTC_KIND_ALL_DTCS                  0x01
#define DEM_DTC_KIND_EMISSION_REL_DTCS         0x02
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
typedef uint16 Dem_EventIdType; 
typedef uint8 Dem_EventStatusType;
typedef uint8 Dem_ReturnControlDTCSettingType;
typedef uint8 Dem_InitMonitorReasonType;

typedef uint32 Dem_DTCGroupType;

typedef uint8  Dem_DTCKindType;
/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
#endif
