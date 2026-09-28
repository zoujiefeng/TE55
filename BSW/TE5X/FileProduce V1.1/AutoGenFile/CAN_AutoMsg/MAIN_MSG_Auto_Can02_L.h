/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can02_L.h
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-09-20 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"

#ifndef __MAIN_MSG_AUTO_CAN02_L__
#define __MAIN_MSG_AUTO_CAN02_L__

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"

extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx01_MC2_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx02_CCVS_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_TS1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx01_MS0_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx02_MS1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_MS2_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx04_MDM1_buf[8];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx05_MS3_buf[8];

extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw;

extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd;
extern VAR(boolean, MAIN_VAR) MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx02_HCU1_PKB;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx02_HCU1_BrakePed;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx03_HCU_GearNum;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_Targear_State;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_HandleShift;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed;
extern VAR(uint16, MAIN_VAR) MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx04_MCU_Err_level;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8Can02_Tx04_MCU_Err_code;
extern VAR(float32, MAIN_VAR) MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp;


#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"

#endif /*End of __MAIN_MSG_AUTO_CAN02__*/
/*-------------------------------------EOF--------------------------------------*/

