/*
 * File: ASW_COM_private.h
 *
 * Code generated for Simulink model 'ASW_COM'.
 *
 * Model version                  : 1.394
 * Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
 * C/C++ source code generated on : Mon Dec  5 00:58:28 2022
 *
 * Target selection: autosar.tlc
 * Embedded hardware selection: Renesas->RH850
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_ASW_COM_private_h_
#define RTW_HEADER_ASW_COM_private_h_
#include "rtwtypes.h"
#ifdef __cplusplus

extern "C" {

#endif

  extern void GCU1_Fun_Cal_Start_wrapper(void);
  extern void GCU1_Fun_Cal_Outputs_wrapper(const float32 *R_GCU_GeneratorDCVolt,
    const float32 *R_GCU_GeneratorDCCurrent,
    const float32 *R_GCU_GeneratorMaxSpd,
    const float32 *R_GCU_GeneratorSt,
    const float32 *R_GCU_Fault_PowerDerating,
    const float32 *R_GCU_FaultCode,
    const float32 *R_GCU_Fault_ShutOff_HV_Req,
    const float32 *R_RollingCounter335,
    const float32 *R_Checksum335,
    float32 *S_GCU_GeneratorDCVolt,
    float32 *S_GCU_GeneratorDCCurrent,
    uint16 *S_GCU_GeneratorMaxSpd,
    uint8 *S_GCU_GeneratorSt,
    boolean *S_GCU_Fault_PowerDerating,
    uint8 *S_GCU_FaultCode,
    boolean *S_GCU_Fault_ShutOff_HV_Req,
    uint8 *S_RollingCounter335,
    uint8 *S_Checksum335);
  extern void GCU1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM22_Fun_Cal_Start_wrapper(void);
  extern void PDCM22_Fun_Cal_Outputs_wrapper(const uint8 *R_Checksum0B5,
    const uint8 *R_HVCO_MCUR_StateCmd,
    const boolean *R_PDCM_MCUR_AntiJerk,
    const uint16 *R_PDCM_MCUR_SpeedReq,
    const float32 *R_PDCM_MCUR_TorqueReq,
    const uint8 *R_RollingCounter0B5,
    const float32 *R_PDCM_GCU_MaxPower_G,
    const boolean *R_PDCM_SelfheatingReq_MCUR,
    float32 *S_Checksum0B5,
    float32 *S_HVCO_MCUR_StateCmd,
    float32 *S_PDCM_MCUR_AntiJerk,
    float32 *S_PDCM_MCUR_SpeedReq,
    float32 *S_PDCM_MCUR_TorqueReq,
    float32 *S_RollingCounter0B5,
    float32 *S_PDCM_GCU_MaxPower_G,
    float32 *S_PDCM_SelfheatingReq_MCUR);
  extern void PDCM22_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM24_Fun_Cal_Start_wrapper(void);
  extern void PDCM24_Fun_Cal_Outputs_wrapper(const uint8 *R_Checksum0B9,
    const boolean *R_HVCO_ActiveDischarge_Req,
    const uint8 *R_HVCO_EmergencyShutdown_Req,
    const boolean *R_PDCM_Dcy_valid,
    const boolean *R_PDCM_DrivingCycle,
    const uint16 *R_PDCM_Max_Voltage,
    const uint16 *R_PDCM_Min_Voltage,
    const uint8 *R_RollingCounter0B9,
    const uint16 *R_PDCM_EngIdleTgtSpd,
    const float32 *R_PDCM_ClutchCommandTransferTorque,
    const uint8 *R_PDCM_ClutchCommand,
    float32 *S_Checksum0B9,
    float32 *S_HVCO_ActiveDischarge_Req,
    float32 *S_HVCO_EmergencyShutdown_Req,
    float32 *S_PDCM_Dcy_valid,
    float32 *S_PDCM_DrivingCycle,
    float32 *S_PDCM_Max_Voltage,
    float32 *S_PDCM_Min_Voltage,
    float32 *S_RollingCounter0B9,
    float32 *S_COM_PDCM_EngIdleTgtSpd,
    float32 *S_COM_PDCM_ClutchCommandTransferTorque,
    float32 *S_COM_PDCM_ClutchCommand);
  extern void PDCM24_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void EMS1_Fun_Cal_Start_wrapper(void);
  extern void EMS1_Fun_Cal_Outputs_wrapper(const float32
    *R_EMS_calculatedLoadValue,
    const boolean *R_EMS_calculatedLoadValueValid,
    const float32 *R_EMS_EngSpd,
    const boolean *R_EMS_EngSpdValid,
    const float32 *R_EMS_TargetIdleEngSpd,
    const boolean *R_EMS_StartAllowed,
    const boolean *R_EMS_StopAllowed,
    const boolean *R_EMS_engStartfailure,
    const boolean *R_EMS_EngRunningStatusValid,
    const uint8 *R_EMS_EngRunningStatus,
    const uint8 *R_RollingCounter083,
    const uint8 *R_Checksum083,
    float32 *S_EMS_calculatedLoadValue,
    float32 *S_EMS_calculatedLoadValueValid,
    float32 *S_EMS_EngSpd,
    float32 *S_EMS_EngSpdValid,
    float32 *S_EMS_TargetIdleEngSpd,
    float32 *S_EMS_StartAllowed,
    float32 *S_EMS_StopAllowed,
    float32 *S_EMS_engStartfailure,
    float32 *S_EMS_EngRunningStatusValid,
    float32 *S_EMS_EngRunningStatus,
    float32 *S_RollingCounter083,
    float32 *S_Checksum083);
  extern void EMS1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF1_Fun_Cal_Start_wrapper(void);
  extern void MCUF1_Fun_Cal_Outputs_wrapper(const float32 *R_Checksum0A1,
    const float32 *R_RollingCounter0A1,
    const float32 *R_MCUF_SelfheatingMode,
    const float32 *R_MCUF_SelfheatingAllow,
    const float32 *R_MCUF_MotorPower,
    const float32 *R_MCUF_MotorSpd,
    const float32 *R_MCUF_MotorSpdValid,
    const float32 *R_MCUF_ActualTorque,
    uint8 *S_Checksum0A1,
    uint8 *S_RollingCounter0A1,
    boolean *S_MCUF_SelfheatingMode,
    boolean *S_MCUF_SelfheatingAllow,
    float32 *S_MCUF_MotorPower,
    uint16 *S_MCUF_MotorSpd,
    boolean *S_MCUF_MotorSpdValid,
    float32 *S_MCUF_ActualTorque);
  extern void MCUF1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM_ACU_EPS_Fun_Cal_Start_wrapper(void);
  extern void PDCM_ACU_EPS_Fun_Cal_Outputs_wrapper(const uint8
    *R_acu_crashOutputStsValid,
    const uint8 *R_acu_crashOutputSts,
    const float32 *R_eps_sasSteeringAngle,
    const boolean *R_eps_sasSteeringAngleValid,
    const uint8 *R_RollingCounter0B3,
    const uint8 *R_Checksum0B3,
    float32 *S_acu_crashOutputStsValid,
    float32 *S_acu_crashOutputSts,
    float32 *S_eps_sasSteeringAngle,
    float32 *S_eps_sasSteeringAngleValid,
    float32 *S_RollingCounter0B3,
    float32 *S_Checksum0B3);
  extern void PDCM_ACU_EPS_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM10_Fun_Cal_Start_wrapper(void);
  extern void PDCM10_Fun_Cal_Outputs_wrapper(const uint8 *R_Checksum2C8,
    const boolean *R_HV_Network_active,
    const boolean *R_HV_Network_Fault,
    const float32 *R_PDCM_AccelPedal_Status,
    const boolean *R_PDCM_AccelPedal_Valid,
    const uint8 *R_PDCM_actualGear,
    const boolean *R_PDCM_actualGearValid,
    const uint8 *R_PDCM_DriveReady,
    const uint16 *R_PDCM_VehicleSpeed,
    const uint8 *R_RollingCounter2C8,
    const boolean *R_PDCM_targetGearValid,
    const uint8 *R_PDCM_targetGear,
    const boolean *R_PDCM_BrakePedal_Valid,
    const boolean *R_PDCM_BrakePedal_Status,
    const boolean *R_PDCM_BrakePedal_PressRemind,
    const boolean *R_PDCM_APADrvAst_allow,
    const boolean *R_PDCM_ACCDrvAst_allow,
    const boolean *R_PDCM_Gear_intervention,
    const uint8 *R_PDCM_EVMode_Status,
    const uint8 *R_PDCM_driveMode,
    const uint8 *R_PDCM_authenticationResult,
    float32 *S_Checksum2C8,
    float32 *S_HV_Network_active,
    float32 *S_HV_Network_Fault,
    float32 *S_PDCM_AccelPedal_Status,
    float32 *S_PDCM_AccelPedal_Valid,
    float32 *S_PDCM_actualGear,
    float32 *S_PDCM_actualGearValid,
    float32 *S_PDCM_DriveReady,
    float32 *S_PDCM_VehicleSpeed,
    float32 *S_RollingCounter2C8,
    float32 *S_PDCM_targetGearValid,
    float32 *S_PDCM_targetGear,
    float32 *S_PDCM_BrakePedal_Valid,
    float32 *S_PDCM_BrakePedal_Status,
    float32 *S_PDCM_BrakePedal_PressRemind,
    float32 *S_PDCM_APADrvAst_allow,
    float32 *S_PDCM_ACCDrvAst_allow,
    float32 *S_PDCM_Gear_intervention,
    float32 *S_PDCM_EVMode_Status,
    float32 *S_PDCM_driveMode,
    float32 *S_PDCM_authenticationResult);
  extern void PDCM10_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM30_Fun_Cal_Start_wrapper(void);
  extern void PDCM30_Fun_Cal_Outputs_wrapper(const uint8 *R_Checksum3D7,
    const float32 *R_PDCM_MCUF_MaxPower_D,
    const float32 *R_PDCM_MCUF_MaxPower_G,
    const float32 *R_PDCM_MCUR_MaxPower_D,
    const float32 *R_PDCM_MCUR_MaxPower_G,
    const uint8 *R_RollingCounter3D7,
    float32 *S_Checksum3D7,
    float32 *S_PDCM_MCUF_MaxPower_D,
    float32 *S_PDCM_MCUF_MaxPower_G,
    float32 *S_PDCM_MCUR_MaxPower_D,
    float32 *S_PDCM_MCUR_MaxPower_G,
    float32 *S_RollingCounter3D7);
  extern void PDCM30_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void IPB7_Fun_Start_wrapper(void);
  extern void IPB7_Fun_Outputs_wrapper(const boolean *R_IPB_absFault,
    const boolean *R_IPB_absActive,
    const float32 *R_IPB_vehicleSpeed,
    const boolean *R_IPB_vehicleSpeedValid,
    const boolean *R_IPB_vdcActive,
    const boolean *R_IPB_tcsActive,
    const uint8 *R_IPB_avhSts,
    const boolean *R_IPB_avhAvailable,
    const boolean *R_IPB_cdpActive,
    const boolean *R_IPB_cdpAvailable,
    const boolean *R_IPB_hdcAvailable,
    const uint8 *R_IPB_epbRequest,
    const uint8 *R_IPB_vehicleStandstill,
    const boolean *R_IPB_vehicleStandstillValid,
    const boolean *R_IPB_ModeSts,
    const boolean *R_IPB_brakelightRequest,
    const uint8 *R_IPB_hdcSts,
    const boolean *R_IPB_hhcActive,
    const boolean *R_IPB_hhcAvailable,
    const boolean *R_IPB_ebdFault,
    const boolean *R_IPB_ebd_active,
    const boolean *R_IPB_ESCoffSts,
    const boolean *R_IPB_escFault,
    const boolean *R_IPB_haz_active,
    const boolean *R_IPB_hazErrorSt,
    const boolean *R_IPB_hba_active,
    const boolean *R_IPB_dtcActive,
    const uint8 *R_IPB_esclampdisplay,
    const boolean *R_IPB_BDWActive,
    const boolean *R_IPB_HRBActive,
    const uint8 *R_RollingCounter0A0,
    const uint8 *R_Checksum0A0,
    float32 *S_IPB_absFault,
    float32 *S_IPB_absActive,
    float32 *S_IPB_vehicleSpeed,
    float32 *S_IPB_vehicleSpeedValid,
    float32 *S_IPB_vdcActive,
    float32 *S_IPB_tcsActive,
    float32 *S_IPB_avhSts,
    float32 *S_IPB_avhAvailable,
    float32 *S_IPB_cdpActive,
    float32 *S_IPB_cdpAvailable,
    float32 *S_IPB_hdcAvailable,
    float32 *S_IPB_epbRequest,
    float32 *S_IPB_vehicleStandstill,
    float32 *S_IPB_vehicleStandstillValid,
    float32 *S_IPB_ModeSts,
    float32 *S_IPB_brakelightRequest,
    float32 *S_IPB_hdcSts,
    float32 *S_IPB_hhcActive,
    float32 *S_IPB_hhcAvailable,
    float32 *S_IPB_ebdFault,
    float32 *S_IPB_ebd_active,
    float32 *S_IPB_ESCoffSts,
    float32 *S_IPB_escFault,
    float32 *S_IPB_haz_active,
    float32 *S_IPB_hazErrorSt,
    float32 *S_IPB_hba_active,
    float32 *S_IPB_dtcActive,
    float32 *S_IPB_esclampdisplay,
    float32 *S_IPB_BDWActive,
    float32 *S_IPB_HRBActive,
    float32 *S_RollingCounter0A0,
    float32 *S_Checksum0A0);
  extern void IPB7_Fun_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM_IC_ACU_Fun_Cal_Start_wrapper(void);
  extern void PDCM_IC_ACU_Fun_Cal_Outputs_wrapper(const float32
    *R_ic_totalMileage,
    const boolean *R_ic_totalMileageValid,
    const float32 *R_LgtA,
    const uint8 *R_LgtAValSts,
    const uint8 *R_EPBS_FaultLamp,
    const uint8 *R_EPBS_Sts,
    const uint8 *R_EPBS_BrakeSwInfo,
    const uint8 *R_RollingCounter202,
    const uint8 *R_Checksum202,
    float32 *S_ic_totalMileage,
    float32 *S_ic_totalMileageValid,
    float32 *S_LgtA,
    float32 *S_LgtAValSts,
    float32 *S_EPBS_FaultLamp,
    float32 *S_EPBS_Sts,
    float32 *S_EPBS_BrakeSwInfo,
    float32 *S_RollingCounter202,
    float32 *S_Checksum202);
  extern void PDCM_IC_ACU_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM_SelfHeat_Fun_Cal_Start_wrapper(void);
  extern void PDCM_SelfHeat_Fun_Cal_Outputs_wrapper(const boolean
    *R_PDCM_SelfheatingMode,
    float32 *S_PDCM_SelfheatingMode);
  extern void PDCM_SelfHeat_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void IVI_timeAndGPS_Fun_Cal_Start_wrapper(void);
  extern void IVI_timeAndGPS_Fun_Cal_Outputs_wrapper(const uint8
    *R_ivi_timeInfoDay,
    const uint8 *R_ivi_timeInfoHour,
    const uint8 *R_ivi_timeInfoMinute,
    const uint8 *R_ivi_timeInfoMonth,
    const uint8 *R_ivi_timeInfoSecond,
    const uint8 *R_ivi_timeInfoYear,
    const boolean *R_ivi_timeValid,
    const uint8 *R_ivi_altitude,
    float32 *S_ivi_timeInfoDay,
    float32 *S_ivi_timeInfoHour,
    float32 *S_ivi_timeInfoMinute,
    float32 *S_ivi_timeInfoMonth,
    float32 *S_ivi_timeInfoSecond,
    float32 *S_ivi_timeInfoYear,
    float32 *S_ivi_timeValid,
    float32 *S_ivi_altitude);
  extern void IVI_timeAndGPS_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void EMS8_Fun_Cal_Start_wrapper(void);
  extern void EMS8_Fun_Cal_Outputs_wrapper(const uint8 *R_Checksum333,
    const float32 *R_EMS_eng_OilTemp,
    const float32 *R_EMS_engCoolantTemp,
    const boolean *R_EMS_engCoolantTempValid,
    const uint8 *R_RollingCounter333,
    const uint8 *R_EMS_thermostat_valve,
    const boolean *R_EMS_catalystWarmupsta,
    const float32 *R_EMS_engStartCoolantTemp,
    const uint8 *R_EMS_SystemErrorLevel,
    float32 *S_Checksum333,
    float32 *S_EMS_eng_OilTemp,
    float32 *S_EMS_engCoolantTemp,
    float32 *S_EMS_engCoolantTempValid,
    float32 *S_RollingCounter333,
    float32 *S_EMS_thermostat_valve,
    float32 *S_EMS_catalystWarmupsta,
    float32 *S_EMS_engStartCoolantTemp,
    float32 *S_EMS_SystemErrorLevel);
  extern void EMS8_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM_OBD_Fun_Cal_Start_wrapper(void);
  extern void PDCM_OBD_Fun_Cal_Outputs_wrapper(const float32
    *R_PDCM_AccelPedal_Position,
    const boolean *R_PDCM_OBD_DenoGeneral,
    const boolean *R_PDCM_OBD_DenoGenValid,
    const boolean *R_PDCM_OBD_DenoSpecial,
    const boolean *R_PDCM_OBD_DenoSpecValid,
    const boolean *R_PDCM_OBD_FaultClrInhibit,
    const boolean *R_PDCM_OBD_PDTCClrSts,
    const boolean *R_PDCM_OBD_WarmCycleSts,
    const boolean *R_PDCM_OBD_FaultClrReq,
    float32 *S_PDCM_AccelPedal_Position,
    float32 *S_PDCM_OBD_DenoGeneral,
    float32 *S_PDCM_OBD_DenoGenValid,
    float32 *S_PDCM_OBD_DenoSpecial,
    float32 *S_PDCM_OBD_DenoSpecValid,
    float32 *S_PDCM_OBD_FaultClrInhibit,
    float32 *S_PDCM_OBD_PDTCClrSts,
    float32 *S_PDCM_OBD_WarmCycleSts,
    float32 *S_PDCM_OBD_FaultClrReq);
  extern void PDCM_OBD_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void BCM_peps_Fun_Cal_Start_wrapper(void);
  extern void BCM_peps_Fun_Cal_Outputs_wrapper(const uint8 *R_bcm_pepsPowerMode,
    const boolean *R_bcm_IMMOReleaseIndication,
    const boolean *R_bcm_pepsKeyNotInCarInd,
    const uint8 *R_bcm_keyValid,
    const boolean *R_bcm_pepsKeySerchFailInd,
    const boolean *R_bcm_pepsKeyCloserInd,
    const boolean *R_bcm_pepsFobLowBatWarning,
    const boolean *R_bcm_pepsPowerRelayErrWarning,
    const boolean *R_bcm_IndicationPressBrake,
    const boolean *R_bcm_LowFrequencyAntennaFault,
    const boolean *R_BCM_RainWinowCloseWarning,
    const uint8 *R_bcm_remoteMode,
    const uint8 *R_bcm_ble_response,
    const uint8 *R_BCM_RKEWindowCmd,
    const boolean *R_bcm_srSsAndWindowsEnable,
    const uint8 *R_bcm_rke_fuelPortCapOpenCtrl,
    const boolean *R_bcm_pepsKeyInCarInd,
    const uint8 *R_bcm_tbox_response,
    const uint8 *R_bcm_approachingUnlockFedb,
    const uint8 *R_bcm_12VBatterySOC,
    const uint8 *R_BCM_sunroofGlassCmd,
    const uint8 *R_bcm_followMeHomeFedb,
    const uint8 *R_bcm_awayLockFeedback,
    const uint8 *R_bcm_PepsKeyIncarIndi,
    const uint8 *R_RollingCounter2C1,
    const uint8 *R_Checksum2C1,
    float32 *S_bcm_pepsPowerMode,
    float32 *S_bcm_IMMOReleaseIndication,
    float32 *S_bcm_pepsKeyNotInCarInd,
    float32 *S_bcm_keyValid,
    float32 *S_bcm_pepsKeySerchFailInd,
    float32 *S_bcm_pepsKeyCloserInd,
    float32 *S_bcm_pepsFobLowBatWarning,
    float32 *S_bcm_pepsPowerRelayErrWarning,
    float32 *S_bcm_IndicationPressBrake,
    float32 *S_bcm_LowFrequencyAntennaFault,
    float32 *S_BCM_RainWinowCloseWarning,
    float32 *S_bcm_remoteMode,
    float32 *S_bcm_ble_response,
    float32 *S_BCM_RKEWindowCmd,
    float32 *S_bcm_srSsAndWindowsEnable,
    float32 *S_bcm_rke_fuelPortCapOpenCtrl,
    float32 *S_bcm_pepsKeyInCarInd,
    float32 *S_bcm_tbox_response,
    float32 *S_bcm_approachingUnlockFedb,
    float32 *S_bcm_12VBatterySOC,
    float32 *S_BCM_sunroofGlassCmd,
    float32 *S_bcm_followMeHomeFedb,
    float32 *S_bcm_awayLockFeedback,
    float32 *S_bcm_PepsKeyIncarIndi,
    float32 *S_RollingCounter2C1,
    float32 *S_Checksum2C1);
  extern void BCM_peps_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM_Body_IC_Fun_Cal_Start_wrapper(void);
  extern void PDCM_Body_IC_Fun_Cal_Outputs_wrapper(const uint8 *R_bcm_fuelCapSts,
    const boolean *R_BCM_refuelReq,
    const boolean *R_bcm_hoodSts,
    const uint8 *R_rls_lightSWReason,
    const float32 *R_ebs_U_BATT,
    const uint8 *R_ic_oilPercent,
    const uint16 *R_IC_OilSensorResistance,
    const uint8 *R_ic_oilPercentFail,
    const boolean *R_ic_AC_WarmWindReq,
    const boolean *R_AC_ambientTempValid,
    const uint8 *R_AC_WarmvalveReq,
    const float32 *R_AC_ambientTemp,
    float32 *S_bcm_fuelCapSts,
    float32 *S_BCM_refuelReq,
    float32 *S_bcm_hoodSts,
    float32 *S_rls_lightSWReason,
    float32 *S_ebs_U_BATT,
    float32 *S_ic_oilPercent,
    float32 *S_IC_OilSensorResistance,
    float32 *S_ic_oilPercentFail,
    float32 *S_ic_AC_WarmWindReq,
    float32 *S_AC_ambientTempValid,
    float32 *S_AC_WarmvalveReq,
    float32 *S_AC_ambientTemp);
  extern void PDCM_Body_IC_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void EMS5_Fun_Cal_Start_wrapper(void);
  extern void EMS5_Fun_Cal_Outputs_wrapper(const float32 *R_EMS_altitudeFactor,
    const boolean *R_EMS_DrivingCycle,
    const uint16 *R_EMS_Fault_Code,
    const uint8 *R_EMS_ToltalFaultNum,
    const uint8 *R_EMS_FuelCharingSts,
    const uint8 *R_EMS_relifValveOpenState,
    const uint8 *R_EMS_Warmvalvestate,
    const uint8 *R_RollingCounter305,
    const uint8 *R_Checksum305,
    float32 *S_EMS_altitudeFactor,
    float32 *S_EMS_DrivingCycle,
    float32 *S_EMS_Fault_Code,
    float32 *S_EMS_ToltalFaultNum,
    float32 *S_EMS_FuelCharingSts,
    float32 *S_EMS_relifValveOpenState,
    float32 *S_EMS_Warmvalvestate,
    float32 *S_RollingCounter305,
    float32 *S_Checksum305);
  extern void EMS5_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM5_Fun_Cal_Start_wrapper(void);
  extern void PDCM5_Fun_Cal_Outputs_wrapper(const uint8 *R_HVCM_ChargeState,
    const uint16 *R_HVCM_ChargeSpeed,
    const uint8 *R_HVCM_ChargeSpeed_Unit,
    const uint8 *R_HVCM_maxChargeSOC,
    const uint16 *R_HVCM_RestchargingTime,
    const uint8 *R_HVCM_ChargeSpeed_Valid,
    const uint8 *R_HVCM_RestchargingTime_Valid,
    const uint8 *R_HVCM_VehicleHold_Req,
    const uint8 *R_HVCM_AWC_AssemblyStatus,
    const uint8 *R_HVCM_Charge_Req,
    const boolean *R_HVCM_ChargePlugUnlock_Req,
    const boolean *R_HVCM_HV_Req,
    float32 *S_HVCM_ChargeState,
    float32 *S_HVCM_ChargeSpeed,
    float32 *S_HVCM_ChargeSpeed_Unit,
    float32 *S_HVCM_maxChargeSOC,
    float32 *S_HVCM_RestchargingTime,
    float32 *S_HVCM_ChargeSpeed_Valid,
    float32 *S_HVCM_RestchargingTime_Valid,
    float32 *S_HVCM_VehicleHold_Req,
    float32 *S_HVCM_AWC_AssemblyStatus,
    float32 *S_HVCM_Charge_Req,
    float32 *S_HVCM_ChargePlugUnlock_Req,
    float32 *S_HVCM_HV_Req);
  extern void PDCM5_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM1_Fun_Cal_Start_wrapper(void);
  extern void PDCM1_Fun_Cal_Outputs_wrapper(const float32 *R_PDCM_SOC,
    const boolean *R_HVEM_HV_Req,
    const float32 *R_HVEM_Power_Aux,
    const float32 *R_HVEM_Current_HVAux,
    float32 *S_PDCM_SOC,
    float32 *S_HVEM_HV_Req,
    float32 *S_HVEM_Power_Aux,
    float32 *S_HVEM_Current_HVAux);
  extern void PDCM1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void TBOX_VehicleMode_Fun_Cal_Start_wrapper(void);
  extern void TBOX_VehicleMode_Fun_Cal_Outputs_wrapper(const uint8
    *R_tbox_vehicleMode,
    const uint8 *R_TBOX_OTAEnergyCtl,
    const uint8 *R_TBOX_OTATimeSet,
    const uint8 *R_RollingCounter4FE,
    const uint8 *R_Checksum4FE,
    float32 *S_tbox_vehicleMode,
    float32 *S_TBOX_OTAEnergyCtl,
    float32 *S_TBOX_OTATimeSet,
    float32 *S_RollingCounter4FE,
    float32 *S_Checksum4FE);
  extern void TBOX_VehicleMode_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF3_Fun_Cal_Start_wrapper(void);
  extern void MCUF3_Fun_Cal_Outputs_wrapper(const float32 *R_MCUF_Checksum_30B,
    const float32 *R_MCUF_MaxTorque_total,
    const float32 *R_MCUF_MinTorque_total,
    const float32 *R_MCUF_MotorMaxPositiveTorque,
    const float32 *R_MCUF_MotorMinNegativeTorque,
    const float32 *R_MCUF_RollingCount_30B,
    uint8 *S_MCUF_Checksum_30B,
    float32 *S_MCUF_MaxTorque_total,
    float32 *S_MCUF_MinTorque_total,
    float32 *S_MCUF_MotorMaxPositiveTorque,
    float32 *S_MCUF_MotorMinNegativeTorque,
    uint8 *S_MCUF_RollingCount_30B);
  extern void MCUF3_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF2_Fun_Cal_Start_wrapper(void);
  extern void MCUF2_Fun_Cal_Outputs_wrapper(const float32 *R_Checksum0A2,
    const float32 *R_MCUF_Actual_Voltage,
    const float32 *R_MCUF_AS_Activ,
    const float32 *R_MCUF_Current_HV,
    const float32 *R_MCUF_Fault_ASC,
    const float32 *R_MCUF_Fault_ShutOff_HV_Req,
    const float32 *R_MCUF_MotorMaxSpd,
    const float32 *R_MCUF_State,
    const float32 *R_MCUF_TMReq_ASC,
    const float32 *R_RollingCounter0A2,
    uint8 *S_Checksum0A2,
    float32 *S_MCUF_Actual_Voltage,
    boolean *S_MCUF_AS_Activ,
    float32 *S_MCUF_Current_HV,
    boolean *S_MCUF_Fault_ASC,
    boolean *S_MCUF_Fault_ShutOff_HV_Req,
    uint16 *S_MCUF_MotorMaxSpd,
    uint8 *S_MCUF_State,
    boolean *S_MCUF_TMReq_ASC,
    uint8 *S_RollingCounter0A2);
  extern void MCUF2_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF6_Fun_Cal_Start_wrapper(void);
  extern void MCUF6_Fun_Cal_Outputs_wrapper(const float32 *R_Checksum315,
    const float32 *R_MCUF_Fault_ActiveDischarge,
    const float32 *R_MCUF_Fault_Code,
    const float32 *R_MCUF_Fault_PowerDerating,
    const float32 *R_MCUF_FaultLamp_Req,
    const float32 *R_MCUF_MotorStatus,
    const float32 *R_MCUF_OBD_Lamp_Req,
    const float32 *R_MCUF_PerInd_MaxPower,
    const float32 *R_MCUF_PerInd_MaxTorque,
    const float32 *R_MCUF_Status_ActiveDischarge,
    const float32 *R_MCUF_ToltalFaultNum,
    const float32 *R_RollingCounter315,
    uint8 *S_Checksum315,
    boolean *S_MCUF_Fault_ActiveDischarge,
    uint8 *S_MCUF_Fault_Code,
    boolean *S_MCUF_Fault_PowerDerating,
    uint8 *S_MCUF_FaultLamp_Req,
    uint8 *S_MCUF_MotorStatus,
    uint8 *S_MCUF_OBD_Lamp_Req,
    float32 *S_MCUF_PerInd_MaxPower,
    float32 *S_MCUF_PerInd_MaxTorque,
    boolean *S_MCUF_Status_ActiveDischarge,
    uint8 *S_MCUF_ToltalFaultNum,
    uint8 *S_RollingCounter315);
  extern void MCUF6_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF4_Fun_Cal_Start_wrapper(void);
  extern void MCUF4_Fun_Cal_Outputs_wrapper(const float32 *R_Checksum351,
    const float32 *R_MCUF_ControllerTemp,
    const float32 *R_MCUF_Motor_Current_Phase_A,
    const float32 *R_MCUF_Motor_Current_Phase_B,
    const float32 *R_MCUF_Motor_Current_Phase_C,
    const float32 *R_MCUF_MotorTemp,
    const float32 *R_RollingCounter351,
    uint8 *S_Checksum351,
    uint8 *S_MCUF_ControllerTemp,
    uint16 *S_MCUF_Motor_Current_Phase_A,
    uint16 *S_MCUF_Motor_Current_Phase_B,
    uint16 *S_MCUF_Motor_Current_Phase_C,
    uint8 *S_MCUF_MotorTemp,
    uint8 *S_RollingCounter351);
  extern void MCUF4_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_SelfHeat2_Fun_Cal_Start_wrapper(void);
  extern void MCUF_SelfHeat2_Fun_Cal_Outputs_wrapper(const float32
    *R_MCUF_BusFreq,
    const float32 *R_MCUF_BusCurrent,
    uint16 *S_MCUF_BusFreq,
    float32 *S_MCUF_BusCurrent);
  extern void MCUF_SelfHeat2_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_SelfHeat1_Fun_Cal_Start_wrapper(void);
  extern void MCUF_SelfHeat1_Fun_Cal_Outputs_wrapper(const float32
    *R_MCUF_UdFreq,
    const float32 *R_MCUF_UdVolt,
    uint16 *S_MCUF_UdFreq,
    float32 *S_MCUF_UdVolt);
  extern void MCUF_SelfHeat1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF8_Fun_Cal_Start_wrapper(void);
  extern void MCUF8_Fun_Cal_Outputs_wrapper(const float32 *R_Checksum415,
    const float32 *R_MCUF_Derating_OverTemp,
    const float32 *R_MCUF_Efficiency,
    const float32 *R_MCUF_HV_Voltg_Free,
    const float32 *R_MCUF_HW_Version,
    const float32 *R_MCUF_RTM_OverCurrent,
    const float32 *R_MCUF_RTM_OverSpeed,
    const float32 *R_MCUF_RTM_OverTemp_EM,
    const float32 *R_MCUF_RTM_OverTemp_MCU,
    const float32 *R_MCUF_RTM_WarnComm,
    const float32 *R_MCUF_SW_Major_Version,
    const float32 *R_MCUF_SW_Minor_Version,
    const float32 *R_MCUF_Vehicle_Type,
    const float32 *R_RollingCounter415,
    uint8 *S_Checksum415,
    boolean *S_MCUF_Derating_OverTemp,
    float32 *S_MCUF_Efficiency,
    uint8 *S_MCUF_HV_Voltg_Free,
    uint8 *S_MCUF_HW_Version,
    uint8 *S_MCUF_RTM_OverCurrent,
    uint8 *S_MCUF_RTM_OverSpeed,
    uint8 *S_MCUF_RTM_OverTemp_EM,
    uint8 *S_MCUF_RTM_OverTemp_MCU,
    uint8 *S_MCUF_RTM_WarnComm,
    uint8 *S_MCUF_SW_Major_Version,
    uint8 *S_MCUF_SW_Minor_Version,
    uint8 *S_MCUF_Vehicle_Type,
    uint8 *S_RollingCounter415);
  extern void MCUF8_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void GCU2_Fun_Cal_Start_wrapper(void);
  extern void GCU2_Fun_Cal_Outputs_wrapper(const float32 *R_GCU_ActualTorque,
    const float32 *R_GCU_GeneratorSpd,
    const float32 *R_GCU_GeneratorSpdValid,
    const float32 *R_GCU_State,
    const float32 *R_GCU_MotorPower,
    const float32 *R_RollingCounter0A7,
    const float32 *R_Checksum0A7,
    float32 *S_GCU_ActualTorque,
    float32 *S_GCU_GeneratorSpd,
    boolean *S_GCU_GeneratorSpdValid,
    uint8 *S_GCU_State,
    float32 *S_GCU_MotorPower,
    uint8 *S_RollingCounter0A7,
    uint8 *S_Checksum0A7);
  extern void GCU2_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void GCU3_Fun_Cal_Start_wrapper(void);
  extern void GCU3_Fun_Cal_Outputs_wrapper(const float32
    *R_GCU_GeneratorMaxPositiveTorque,
    const float32 *R_GCU_GeneratorMinNegativeTorque,
    const float32 *R_GCU_MaxTorque_total,
    const float32 *R_GCU_MinTorque_total,
    const float32 *R_GCU_HV_Voltg_Free,
    const float32 *R_RollingCounter337,
    const float32 *R_Checksum337,
    float32 *S_GCU_GeneratorMaxPositiveTorque,
    float32 *S_GCU_GeneratorMinNegativeTorque,
    float32 *S_GCU_MaxTorque_total,
    float32 *S_GCU_MinTorque_total,
    uint8 *S_GCU_HV_Voltg_Free,
    uint8 *S_RollingCounter337,
    uint8 *S_Checksum337);
  extern void GCU3_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void GCU4_Fun_Cal_Start_wrapper(void);
  extern void GCU4_Fun_Cal_Outputs_wrapper(const float32 *R_GCU_ControllerTemp,
    const float32 *R_GCU_MotorTemp,
    const float32 *R_GCU_GeneratorFaultLamp,
    const float32 *R_GCU_OBD_Lamp_Req,
    const float32 *R_GCU_ActiveDischargeState,
    const float32 *R_RollingCounter360,
    const float32 *R_Checksum360,
    uint8 *S_GCU_ControllerTemp,
    uint8 *S_GCU_MotorTemp,
    uint8 *S_GCU_GeneratorFaultLamp,
    uint8 *S_GCU_OBD_Lamp_Req,
    uint8 *S_GCU_ActiveDischargeState,
    uint8 *S_RollingCounter360,
    uint8 *S_Checksum360);
  extern void GCU4_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_TCU1_Fun_Cal_Start_wrapper(void);
  extern void MCUF_TCU1_Fun_Cal_Outputs_wrapper(const float32
    *R_TCU_CrankingAuthorizationEnable,
    const float32 *R_TCU_Clutch_Status,
    const float32 *R_TCU_GearEngagementAvailable,
    const float32 *R_TCU_ClutchAvailableMaximumTorque,
    const float32 *R_TCU_ClutchAvailableMinimumTorque,
    const float32 *R_TCU_ClutchCapacityAct,
    const float32 *R_RollingCounter095,
    const float32 *R_Checksum095,
    uint8 *S_TCU_CrankingAuthorizationEnable,
    uint8 *S_TCU_Clutch_Status,
    boolean *S_TCU_GearEngagementAvailable,
    float32 *S_TCU_ClutchAvailableMaximumTorque,
    float32 *S_TCU_ClutchAvailableMinimumTorque,
    float32 *S_TCU_ClutchCapacityAct,
    uint8 *S_RollingCounter095,
    uint8 *S_Checksum095);
  extern void MCUF_TCU1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_TCU2_Fun_Cal_Start_wrapper(void);
  extern void MCUF_TCU2_Fun_Cal_Outputs_wrapper(const float32
    *R_TCU_MaxFrtMotPwr_Req,
    const float32 *R_TCU_Fault_Reaction_Req,
    const float32 *R_TCU_MaxGCUPwr_Req,
    const float32 *R_RollingCounter097,
    const float32 *R_Checksum097,
    float32 *S_TCU_MaxFrtMotPwr_Req,
    uint8 *S_TCU_Fault_Reaction_Req,
    float32 *S_TCU_MaxGCUPwr_Req,
    uint8 *S_RollingCounter097,
    uint8 *S_Checksum097);
  extern void MCUF_TCU2_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_TCU3_Fun_Cal_Start_wrapper(void);
  extern void MCUF_TCU3_Fun_Cal_Outputs_wrapper(const float32
    *R_TCU_OBD_Lamp_Req,
    const float32 *R_TCU_FaultLamp_Req,
    const float32 *R_TCU_TransmissionFluidTemp,
    const float32 *R_TCU_AirFlowRequest,
    const float32 *R_RollingCounter331,
    const float32 *R_Checksum331,
    uint8 *S_TCU_OBD_Lamp_Req,
    uint8 *S_TCU_FaultLamp_Req,
    uint8 *S_TCU_TransmissionFluidTemp,
    float32 *S_TCU_AirFlowRequest,
    uint8 *S_RollingCounter331,
    uint8 *S_Checksum331);
  extern void MCUF_TCU3_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void EMS3_Fun_Cal_Start_wrapper(void);
  extern void EMS3_Fun_Cal_Outputs_wrapper(const float32 *R_EMS_FrictionTorque,
    const boolean *R_EMS_FuelcutAllowed,
    const uint16 *R_EMS_EngineFuelCutOff,
    const boolean *R_EMS_engIdleCtrlState,
    const uint16 *R_EMS_EngineSpeedLimitation,
    const boolean *R_EMS_EngineOverSpeed,
    const boolean *R_EMS_Workpoint_Req,
    const float32 *R_EMS_EngFlywh,
    const boolean *R_RollingCounter086,
    const uint8 *R_Checksum086,
    float32 *S_EMS_FrictionTorque,
    float32 *S_EMS_FuelcutAllowed,
    float32 *S_EMS_EngineFuelCutOff,
    float32 *S_EMS_engIdleCtrlState,
    float32 *S_EMS_EngineSpeedLimitation,
    float32 *S_EMS_EngineOverSpeed,
    float32 *S_EMS_Workpoint_Req,
    float32 *S_EMS_EngFlywh,
    float32 *S_RollingCounter086,
    float32 *S_Checksum086);
  extern void EMS3_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_Inner1_Fun_Cal_Start_wrapper(void);
  extern void MCUF_Inner1_Fun_Cal_Outputs_wrapper(const uint8
    *R_MCUF_Inner1_FaultData0,
    const uint8 *R_MCUF_Inner1_FaultData1,
    const uint8 *R_MCUF_Inner1_FaultData2,
    const uint8 *R_MCUF_Inner1_FaultData3,
    const uint8 *R_MCUF_Inner1_FaultData4,
    const uint8 *R_MCUF_Inner1_FaultData5,
    const uint8 *R_MCUF_Inner1_FaultData6,
    const uint8 *R_MCUF_Inner1_FaultData7,
    float64 *S_MCUF_Inner1_FaultData);
  extern void MCUF_Inner1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM_GCU_Fun_Cal_Start_wrapper(void);
  extern void PDCM_GCU_Fun_Cal_Outputs_wrapper(const float32
    *R_PDCM_GCU_TorqueReq,
    const uint8 *R_PDCM_GCU_SpeedReq,
    const float32 *R_PDCM_GCU_Torque_Ref,
    const uint16 *R_HVCO_GCU_StateCmd,
    const uint16 *R_RollingCounter0BA,
    const uint8 *R_Checksum0BA,
    float32 *S_PDCM_GCU_TorqueReq,
    float32 *S_PDCM_GCU_SpeedReq,
    float32 *S_PDCM_GCU_Torque_Ref,
    float32 *S_HVCO_GCU_StateCmd,
    float32 *S_RollingCounter0BA,
    float32 *S_Checksum0BA);
  extern void PDCM_GCU_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void MCUF_Inner2_Fun_Cal_Start_wrapper(void);
  extern void MCUF_Inner2_Fun_Cal_Outputs_wrapper(const uint8
    *R_MCUF_Inner2_FaultData8,
    const uint8 *R_MCUF_Inner2_FaultData9,
    const uint8 *R_MCUF_Inner2_FaultData10,
    const uint8 *R_MCUF_Inner2_FaultData11,
    const uint8 *R_MCUF_Inner2_FaultData12,
    const uint8 *R_MCUF_Inner2_FaultData13,
    const uint8 *R_MCUF_Inner2_FaultData14,
    const uint8 *R_MCUF_Inner2_FaultData15,
    float64 *S_MCUF_Inner2_FaultData);
  extern void MCUF_Inner2_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void GCU_Inner1_Fun_Cal_Start_wrapper(void);
  extern void GCU_Inner1_Fun_Cal_Outputs_wrapper(const uint8
    *R_GCU_Inner1_FaultData0,
    const uint8 *R_GCU_Inner1_FaultData1,
    const uint8 *R_GCU_Inner1_FaultData2,
    const uint8 *R_GCU_Inner1_FaultData3,
    const uint8 *R_GCU_Inner1_FaultData4,
    const uint8 *R_GCU_Inner1_FaultData5,
    const uint8 *R_GCU_Inner1_FaultData6,
    const uint8 *R_GCU_Inner1_FaultData7,
    float64 *S_GCU_Inner1_FaultData);
  extern void GCU_Inner1_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void GCU_Inner2_Fun_Cal_Start_wrapper(void);
  extern void GCU_Inner2_Fun_Cal_Outputs_wrapper(const uint8
    *R_GCU_Inner2_FaultData8,
    const uint8 *R_GCU_Inner2_FaultData9,
    const uint8 *R_GCU_Inner2_FaultData10,
    const uint8 *R_GCU_Inner2_FaultData11,
    const uint8 *R_GCU_Inner2_FaultData12,
    const uint8 *R_GCU_Inner2_FaultData13,
    const uint8 *R_GCU_Inner2_FaultData14,
    const uint8 *R_GCU_Inner2_FaultData15,
    float64 *S_GCU_Inner2_FaultData);
  extern void GCU_Inner2_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void IPB4_Fun_Cal_Start_wrapper(void);
  extern void IPB4_Fun_Cal_Outputs_wrapper(const float32 *R_IPB_wheelSpeedRL,
    const boolean *R_IPB_wheelSpeedRLValid,
    const float32 *R_IPB_wheelSpeedRR,
    const boolean *R_IPB_wheelSpeedRRValid,
    const uint8 *R_RollingCounter122,
    const uint8 *R_Checksum122,
    float32 *S_IPB_wheelSpeedRL,
    float32 *S_IPB_wheelSpeedRLValid,
    float32 *S_IPB_wheelSpeedRR,
    float32 *S_IPB_wheelSpeedRRValid,
    float32 *S_RollingCounter122,
    float32 *S_Checksum122);
  extern void IPB4_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void IPB5_Fun_Cal_Start_wrapper(void);
  extern void IPB5_Fun_Cal_Outputs_wrapper(const float32 *R_IPB_wheelSpeedFL,
    const boolean *R_IPB_wheelSpeedFLValid,
    const float32 *R_IPB_wheelSpeedFR,
    const boolean *R_IPB_wheelSpeedFRValid,
    const uint8 *R_RollingCounter142,
    const uint8 *R_Checksum142,
    float32 *S_IPB_wheelSpeedFL,
    float32 *S_IPB_wheelSpeedFLValid,
    float32 *S_IPB_wheelSpeedFR,
    float32 *S_IPB_wheelSpeedFRValid,
    float32 *S_RollingCounter142,
    float32 *S_Checksum142);
  extern void IPB5_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  extern void PDCM21_Fun_Cal_Start_wrapper(void);
  extern void PDCM21_Fun_Cal_Outputs_wrapper(const uint8 *R_Checksum0B2,
    const uint8 *R_HVCO_MCUF_StateCmd,
    const boolean *R_PDCM_MCUF_AntiJerk,
    const uint16 *R_PDCM_MCUF_SpeedReq,
    const float32 *R_PDCM_MCUF_TorqueReq,
    const boolean *R_PDCM_SelfheatingReq_MCUF,
    const uint8 *R_RollingCounter0B2,
    const float32 *R_PDCM_GCU_MaxPower_D,
    float32 *S_Checksum0B2,
    float32 *S_HVCO_MCUF_StateCmd,
    float32 *S_PDCM_MCUF_AntiJerk,
    float32 *S_PDCM_MCUF_SpeedReq,
    float32 *S_PDCM_MCUF_TorqueReq,
    float32 *S_PDCM_SelfheatingReq_MCUF,
    float32 *S_RollingCounter0B2,
    float32 *S_PDCM_GCU_MaxPower_D);
  extern void PDCM21_Fun_Cal_Terminate_wrapper(void);

#ifdef __cplusplus

}
#endif
#endif                                 /* RTW_HEADER_ASW_COM_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
