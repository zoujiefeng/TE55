/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can02_DEF.c
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-08-19 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"
#include "MAIN_MSG_Auto_Can02_L.h"

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"

VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx01_MC2_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx02_CCVS_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_TS1_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx01_MS0_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx02_MS1_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_MS2_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx04_MDM1_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx05_MS3_buf[8] = 
{
    0, 0, 0, 0, 0, 0, 0, 0
};

VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw;

VAR(boolean, MAIN_VAR) MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd = 0;
VAR(boolean, MAIN_VAR) MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num = 0;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh = 0;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx02_HCU1_PKB = 0;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current = 0;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx02_HCU1_BrakePed = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq = 0;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx03_HCU_GearNum = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_Targear_State = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_HandleShift = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed = 0;
VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx04_MCU_Err_level = 0;
VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx04_MCU_Err_code = 0;
VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp = 0;

#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"

/*-------------------------------------EOF--------------------------------------*/



