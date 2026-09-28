
/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef RBA_DEMOBDBASIC_CFG_MAIN_H
#define RBA_DEMOBDBASIC_CFG_MAIN_H

#include "Dem_Cfg_Main.h"
#include "rba_DemObdBasic_Cfg_Iumpr.h"
#include "rba_DemObdBasic_Cfg_Rdy.h"
/* BSW-8793 */
#include "rba_DemObdBasic_Cfg_Dtr.h"
/* END BSW-8793 */

/* ----------------------------------------------------------------------------
 OBD SUPPORT
 ----------------------------------------------------------------------------
 */
#define DEM_OBD_NO_OBD_SUPPORT          0     
#define DEM_OBD_DEP_SEC_ECU             1       
#define DEM_OBD_PRIMARY_ECU             2
#define DEM_OBD_MASTER_ECU              3                    
#define DEM_CFG_OBD_SUPPORT             DEM_OBD_PRIMARY_ECU

/* ----------------------------------------------------------------------------
 COMMON MIL DEBOUNCING
 ----------------------------------------------------------------------------
 */

/* Support of grouping of association of events for OBD purpose */
#define DEM_CFG_OBDCOMMONMILDEB_OFF                   0                /* Not supported */
#define DEM_CFG_OBDCOMMONMILDEB_ON                    1                /* Supported     */
#define DEM_CFG_OBDCOMMONMILDEB                       DEM_CFG_OBDCOMMONMILDEB_OFF

/* ----------------------------------------------------------------------------
 DTC CONFIGURATION
 ----------------------------------------------------------------------------
 */

#define DEM_CFG_OBD_DTC_CONFIG_OFF                     0                /* OBD DTC code = ((UDS DTC Code) & 0xFFFF00) */
#define DEM_CFG_OBD_DTC_CONFIG_ON                      1                /* OBD DTC code configurable */
#define DEM_CFG_OBD_DTC_CONFIG                         DEM_CFG_OBD_DTC_CONFIG_ON

/* ----------------------------------------------------------------------------
 OBD MIL
 ----------------------------------------------------------------------------
 */

#define DEM_OBD_CFG_MIL_INDICATOR_ID                   2

/* ----------------------------------------------------------------------------
 SUPPORT FOR DEACTIVATING OBD FOR VARIANT CODING
 ----------------------------------------------------------------------------
 */
#define DEM_CFG_SUPPORT_OBD_DEACTIVATION_ON             1
#define DEM_CFG_SUPPORT_OBD_DEACTIVATION_OFF            2
#define DEM_CFG_SUPPORT_OBD_DEACTIVATION                 DEM_CFG_SUPPORT_OBD_DEACTIVATION_OFF

/* ----------------------------------------------------------------------------
 OBD PERMANENT DTCS
 ----------------------------------------------------------------------------
 */

#define DEM_CFG_PERMANENT_MEMORY_SIZE                  6u

/* NVRAM IDs */
#define DEM_CFG_OBD_PERMANENT_MEMORY_NVMIDS \
{ \
   DEM_NVM_ID_OBD_PERMANENT_MEMORY_LOC_0, \
   DEM_NVM_ID_OBD_PERMANENT_MEMORY_LOC_1, \
   DEM_NVM_ID_OBD_PERMANENT_MEMORY_LOC_2, \
   DEM_NVM_ID_OBD_PERMANENT_MEMORY_LOC_3, \
   DEM_NVM_ID_OBD_PERMANENT_MEMORY_LOC_4, \
   DEM_NVM_ID_OBD_PERMANENT_MEMORY_LOC_5, \
}

/* OBD Permanent DTCs visibility */
#define DEM_CFG_OBD_PDTC_VISIBILITY_END_OF_CYCLE       1
#define DEM_CFG_OBD_PDTC_VISIBILITY_IMMEDIATELY        2
#define DEM_CFG_OBD_PDTC_VISIBILITY                    DEM_CFG_OBD_PDTC_VISIBILITY_IMMEDIATELY

/* ----------------------------------------------------------------------------
 SUPPORT FOR BLOCKING OBD PERMANENT DTC
 ----------------------------------------------------------------------------
 */
#define DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEM_ON             1
#define DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEM_OFF            2
#define DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEMORY                 DEM_CFG_SUPPORT_OBD_BLOCK_PERM_MEM_OFF

/* ----------------------------------------------------------------------------
 OBD OPERATION CYCLE 
 ----------------------------------------------------------------------------
 */
#define DEM_OPCYC_OBD_PFCCycle                          DemConf_DemOperationCycle_DEM_OPCYC_PFC
#define DEM_OPCYC_OBD_WarmUpCycle                       DemConf_DemOperationCycle_DEM_OPCYC_WARMUP
#define DEM_OPCYC_OBD_DrivingCycle                      DemConf_DemOperationCycle_DemOperationCycle_Ignition
#define DEM_OPCYC_OBD_IgnitionCycle                     DemConf_DemOperationCycle_DemOperationCycle_Ignition

/* BSW-13093 */
/* ----------------------------------------------------------------------------
 OBD CENTRAL HANDLING OF PID21, PID31, PID4D, PID4E
 ----------------------------------------------------------------------------
 */
/* END BSW-13093 */

#define DEM_CFG_OBD_PID21_CENTRAL_OFF                   0                /* Not supported */
#define DEM_CFG_OBD_PID21_CENTRAL_ON                    1                /* Supported     */
/* BSW-13093 */
#define DEM_CFG_OBD_PID21_CENTRAL                       DEM_CFG_OBD_PID21_CENTRAL_OFF
/* END BSW-13093 */

#define DEM_CFG_OBD_PID31_CENTRAL_OFF                   0                /* Not supported */
#define DEM_CFG_OBD_PID31_CENTRAL_ON                    1                /* Supported     */
#define DEM_CFG_OBD_PID31_CENTRAL                       DEM_CFG_OBD_PID31_CENTRAL_OFF

/* BSW-13093 */
#define DEM_CFG_OBD_PID4D_CENTRAL_OFF                   0                /* Not supported */
#define DEM_CFG_OBD_PID4D_CENTRAL_ON                    1                /* Supported     */
#define DEM_CFG_OBD_PID4D_CENTRAL                       DEM_CFG_OBD_PID4D_CENTRAL_OFF

#define DEM_CFG_OBD_PID4E_CENTRAL_OFF                   0                /* Not supported */
#define DEM_CFG_OBD_PID4E_CENTRAL_ON                    1                /* Supported     */
#define DEM_CFG_OBD_PID4E_CENTRAL                       DEM_CFG_OBD_PID4E_CENTRAL_OFF
/* END BSW-13093 */

/* ----------------------------------------------------------------------------
 OBD PID30 INCREMENT 
 ----------------------------------------------------------------------------
 */
#define DEM_CFG_OBD_PID30_INC_ON_WARMUP_CYC_QUALIFY                        1u
#define DEM_CFG_OBD_PID30_INC_ON_WARMUP_CYC_RESTART                        2u

/* ----------------------------------------------------------------------------
 OBD FREEZE FRAME
 ----------------------------------------------------------------------------
 */

/* OBD Freeze Frame Capture */
#define DEM_CFG_OBD_FREEZEFRAME_CAPTURE_PENDING        1
#define DEM_CFG_OBD_FREEZEFRAME_CAPTURE_CONFIRMED      2
#define DEM_CFG_OBD_FREEZEFRAME_CAPTURE                DEM_CFG_OBD_FREEZEFRAME_CAPTURE_CONFIRMED

/* OBD Freeze Frame Visibility timing */
#define DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED  1
#define DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_CONFIRMED              2
#define DEM_CFG_OBD_FREEZEFRAME_VISIBILITY                        DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_CONFIRMED

/* BSW-12998 */
/* Consideration of checking OBD MIL counter to get location ID of freeze frame */
#define DEM_CFG_OBD_CONSIDER_MILCNT_OFF                   1
#define DEM_CFG_OBD_CONSIDER_MILCNT_ON                    2
#define DEM_CFG_OBD_CONSIDER_MILCNT                       DEM_CFG_OBD_CONSIDER_MILCNT_OFF

/* END BSW-12998 */

#define RBA_DEMOBDBASIC_CFG_PID2DATAELEMENT \
{ \
   /* 0x2 */		DEM_DATAELEM_PID_02,  \
   /* 0x4 */		DEM_DATAELEM_PID_04,  \
   /* 0x5 */		DEM_DATAELEM_PID_05,  \
   /* 0xC */		DEM_DATAELEM_PID_0C,  \
   /* 0xD */		DEM_DATAELEM_PID_0D,  \
   /* 0x42 */		DEM_DATAELEM_PID_42,  \
   /* 0x49 */		DEM_DATAELEM_PID_49,  \
                    0 \
}

#define DEM_CFG_EVENT2DEBGROUPEVENT \
{ \
     DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
     ,DEM_EVENTID_INVALID \
}

#define DEM_NVM_OBD_RELEVANT_BLOCKS  \
{\
    DEM_NVM_ID_EVMEM_LOC_0,\
    DEM_NVM_ID_EVMEM_LOC_1,\
    DEM_NVM_ID_EVMEM_LOC_2,\
    DEM_NVM_ID_EVMEM_LOC_3,\
    DEM_NVM_ID_EVMEM_LOC_4,\
    DEM_NVM_ID_EVMEM_LOC_5,\
    DEM_NVM_ID_EVMEM_LOC_6,\
    DEM_NVM_ID_EVMEM_LOC_7,\
    DEM_NVM_ID_EVMEM_LOC_8,\
    DEM_NVM_ID_EVMEM_LOC_9,\
    DEM_NVM_ID_EVMEM_LOC_10,\
    DEM_NVM_ID_EVMEM_LOC_11,\
    DEM_NVM_ID_EVMEM_LOC_12,\
    DEM_NVM_ID_EVMEM_LOC_13,\
    DEM_NVM_ID_EVMEM_LOC_14,\
    DEM_NVM_ID_DEM_GENERIC_NV_DATA,\
    DEM_NVM_ID_OBD_PERMANENT_MEMORY,\
    DEM_NVM_ID_OBD_DTR_DATA\
}

#define  DEM_NVM_OBD_RELEVANT_BLOCKS_TOTAL        18

#define RBA_DEMOBDBASIC_CFG_PID \
{ \
    { 0, 0 } \
   ,{ 1, 0x2 }         /* PID_02 */ \
   ,{ 2, 0x4 }         /* PID_04 */ \
   ,{ 3, 0x5 }         /* PID_05 */ \
   ,{ 4, 0xC }         /* PID_0C */ \
   ,{ 5, 0xD }         /* PID_0D */ \
   ,{ 6, 0x42 }         /* PID_42 */ \
   ,{ 7, 0x49 }         /* PID_49 */ \
}

#define DEM_CFG_OBD_NUMBER_OF_PIDS_STORED       7
#define DEM_CFG_OBD_PID_ARRAY_LENGTH            8

#define DEM_CFG_OBD_FREEZEFRAME_LENGTH          10

#define DEM_CFG_OBD_COMPLIANCY           1 /* integer value which is used One-to-One for PID 1C output */

/* OBD related data elements */

#endif

