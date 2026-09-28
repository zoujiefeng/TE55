/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can01_L.h
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-08-19 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"

#ifndef __MAIN_MSG_AUTO_CAN01_L__
#define __MAIN_MSG_AUTO_CAN01_L__

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"

extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx01_PDUMC1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx02_HSMC1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx03_HSSTC_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx04_ACUMC1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx05_AIR1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx06_AIR1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx01_PDUST1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_PDUST2_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_PDUST3_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx04_PDUST4_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx05_HSST1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx06_HSST2_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_ACUST1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx08_ACUST2_buf[8];

extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_Software_VersionRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx05_Output_CurrentRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx06_Input_VoltageRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx06_Software_VersionRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_Input_VoltageRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_Output_VoltageRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx08_Software_VersionRaw;

extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Power_Enable_Signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Key_Signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_PTC_Enable_Signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Upper_Enable_Signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx01_Heartbeat_Signal;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx02_HEARTBEAT;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx03_Heartbeat_Signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx01_Low_input_voltage;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx01_Precharg_time_consumption;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Enable_signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Key_signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Precharge_contactor_on;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Positive_contactor_on;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Positive_contactor_status ;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx02_PTC_Contactor_Status;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx02_Software_Version;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_Heartbeat_Signal;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_PTCContactor_On;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx02_PTCContactor2_On;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx04_Chargingpile_voltage;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx05_Heartbeat_Signal;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can01_Tx05_Motor_Speed;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx05_Output_Current;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx05_Motor_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx05_Fault_Level;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx06_Input_Voltage;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx06_Input_Current;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx06_Internal_FaultCode;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx06_Software_Version;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx07_Input_Voltage;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_Input_Current;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx07_Output_Voltage;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_Output_Current;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx07_AirCompressor_Temp;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx07_Heartbeat_Signal;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can01_Tx08_Internal_Fault_Code;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can01_Tx08_Software_Version;


#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"

#endif /*End of __MAIN_MSG_AUTO_CAN01__*/
/*-------------------------------------EOF--------------------------------------*/

