/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can02.c
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-08-19 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"
#include "MAIN_MSG_Auto_Can02_L.h"
#include "MAIN_MSG_Auto_Can02.h"
#include "MAIN_MSG_RxValidFlag.h"

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"

void MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0(void)
{
    float32 f32LocMC1_Mor_Tgt_Trq = 0;
    float32 f32LocMC1_Mor_Tgt_Spd = 0;
    if (MAIN_MsgValidFlag_Can02_Rx01)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Rx_01,&MAIN_MSGu8Can02_Rx01_MC2_buf);
        /*signalName:MCU1_Mor_Cmd, DataOrder:Intel, startBit: 0, length: 1 */
        MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd = ((boolean)(MAIN_MSGu8Can02_Rx01_MC2_buf[0] & 0x01u) >> 0u);
        if(MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd >= (1))
        {
             MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd = 1;
        }
        else if(MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd <= (0))
        {
             MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd = 0;
        }
        /*signalName:MCU1_Mor_Fault_Reset, DataOrder:Intel, startBit: 1, length: 1 */
        MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset = ((boolean)(MAIN_MSGu8Can02_Rx01_MC2_buf[0] & 0x02u) >> 1u);
        if(MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset >= (1))
        {
             MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset = 1;
        }
        else if(MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset <= (0))
        {
             MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset = 0;
        }
        /*signalName:TCU3_Mor_Con_Mode, DataOrder:Intel, startBit: 2, length: 2 */
        MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode = ((uint8)(MAIN_MSGu8Can02_Rx01_MC2_buf[0] & 0x0Cu) >> 2u);
        if(MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode >= (3))
        {
             MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode = 3;
        }
        else if(MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode <= (0))
        {
             MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode = 0;
        }
        /*signalName:MCU1_CycMsg_Num, DataOrder:Intel, startBit: 4, length: 4 */
        MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num = ((uint8)(MAIN_MSGu8Can02_Rx01_MC2_buf[0] & 0xF0u) >> 4u);
        if(MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num >= (15))
        {
             MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num = 15;
        }
        else if(MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num <= (0))
        {
             MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num = 0;
        }
        /*signalName:MCU1_CycMsg_LimitHigh, DataOrder:Intel, startBit: 8, length: 12 */
        MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh = ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[1] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh |= ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[2] & 0x0Fu) << 8u);
        if(MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh >= (4095))
        {
             MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh = 4095;
        }
        else if(MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh <= (0))
        {
             MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh = 0;
        }
        /*signalName:MCU1_CycMsg_LimitLow, DataOrder:Intel, startBit: 20, length: 12 */
        MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow = ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[2] & 0xF0u) >> 4u);
        MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow |= ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[3] & 0xFFu) << 4u);
        if(MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow >= (4095))
        {
             MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow = 4095;
        }
        else if(MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow <= (0))
        {
             MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow = 0;
        }

        /*signalName:MC1_Mor_Tgt_Trq, DataOrder:Intel, startBit: 32, length: 16 */
        MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw = ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[4] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw |= ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[5] & 0xFFu) << 8u);
        f32LocMC1_Mor_Tgt_Trq = (float32)((float32)MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw * (1) + (-5000));
        if(f32LocMC1_Mor_Tgt_Trq >= (5000))
        {
             MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq = 5000;
        }
        else if(f32LocMC1_Mor_Tgt_Trq <= (-5000))
        {
             MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq = -5000;
        }
        else
        {
             MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq = f32LocMC1_Mor_Tgt_Trq;
        }

        /*signalName:MC1_Mor_Tgt_Spd, DataOrder:Intel, startBit: 48, length: 16 */
        MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw = ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[6] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw |= ((uint16)(MAIN_MSGu8Can02_Rx01_MC2_buf[7] & 0xFFu) << 8u);
        f32LocMC1_Mor_Tgt_Spd = (float32)((float32)MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw * (1) + (-15000));
        if(f32LocMC1_Mor_Tgt_Spd >= (15000))
        {
             MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd = 15000;
        }
        else if(f32LocMC1_Mor_Tgt_Spd <= (-15000))
        {
             MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd = -15000;
        }
        else
        {
             MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd = f32LocMC1_Mor_Tgt_Spd;
        }
    }
    else
    {
        MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd = 0;
        MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset = 0;
        MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode = 0;
        MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num = 0;
        MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh = 0;
        MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow = 0;
        MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq = 0;
        MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd = 0;
    }
}

void MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0(void)
{
    float32 f32LocHCU1_MCU_LimitLowTrq = 0;
    if (MAIN_MsgValidFlag_Can02_Rx02)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Rx_02,&MAIN_MSGu8Can02_Rx02_CCVS_buf);
        /*signalName:HCU1_PKB, DataOrder:Intel, startBit: 2, length: 2 */
        MAIN_MSGu8Can02_Rx02_HCU1_PKB = ((uint8)(MAIN_MSGu8Can02_Rx02_CCVS_buf[0] & 0x0Cu) >> 2u);
        if(MAIN_MSGu8Can02_Rx02_HCU1_PKB >= (3))
        {
             MAIN_MSGu8Can02_Rx02_HCU1_PKB = 3;
        }
        else if(MAIN_MSGu8Can02_Rx02_HCU1_PKB <= (0))
        {
             MAIN_MSGu8Can02_Rx02_HCU1_PKB = 0;
        }
        /*signalName:Allow_Pulse_Discharge_Current, DataOrder:Intel, startBit: 4, length: 12 */
        MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current = ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[0] & 0xF0u) >> 4u);
        MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current |= ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[1] & 0xFFu) << 4u);
        if(MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current >= (4095))
        {
             MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current = 4095;
        }
        else if(MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current <= (0))
        {
             MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current = 0;
        }
        /*signalName:Allow_Pulse_Charge_Current, DataOrder:Intel, startBit: 16, length: 12 */
        MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current = ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[2] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current |= ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[3] & 0x0Fu) << 8u);
        if(MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current >= (4095))
        {
             MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current = 4095;
        }
        else if(MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current <= (0))
        {
             MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current = 0;
        }
        /*signalName:HCU1_BrakePed, DataOrder:Intel, startBit: 28, length: 2 */
        MAIN_MSGu8Can02_Rx02_HCU1_BrakePed = ((uint8)(MAIN_MSGu8Can02_Rx02_CCVS_buf[3] & 0x30u) >> 4u);
        if(MAIN_MSGu8Can02_Rx02_HCU1_BrakePed >= (3))
        {
             MAIN_MSGu8Can02_Rx02_HCU1_BrakePed = 3;
        }
        else if(MAIN_MSGu8Can02_Rx02_HCU1_BrakePed <= (0))
        {
             MAIN_MSGu8Can02_Rx02_HCU1_BrakePed = 0;
        }

        /*signalName:HCU1_MCU_LimitLowTrq, DataOrder:Intel, startBit: 32, length: 16 */
        MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw = ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[4] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw |= ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[5] & 0xFFu) << 8u);
        f32LocHCU1_MCU_LimitLowTrq = (float32)((float32)MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw * (1) + (-5000));
        if(f32LocHCU1_MCU_LimitLowTrq >= (0))
        {
             MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq = 0;
        }
        else if(f32LocHCU1_MCU_LimitLowTrq <= (-5000))
        {
             MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq = -5000;
        }
        else
        {
             MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq = f32LocHCU1_MCU_LimitLowTrq;
        }
        /*signalName:HCU1_MCU_LimitHighTrq, DataOrder:Intel, startBit: 48, length: 16 */
        MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq = ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[6] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq |= ((uint16)(MAIN_MSGu8Can02_Rx02_CCVS_buf[7] & 0xFFu) << 8u);
        if(MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq >= (5000))
        {
             MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq = 5000;
        }
        else if(MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq <= (0))
        {
             MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq = 0;
        }
    }
    else
    {
        MAIN_MSGu8Can02_Rx02_HCU1_PKB = 0;
        MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current = 0;
        MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current = 0;
        MAIN_MSGu8Can02_Rx02_HCU1_BrakePed = 0;
        MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq = 0;
        MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq = 0;
    }
}

void MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0(void)
{
    float32 f32LocHCU_GearNum = 0;
    float32 f32LocHCU_OutputShaftSpeed = 0;
    if (MAIN_MsgValidFlag_Can02_Rx03)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Rx_03,&MAIN_MSGu8Can02_Rx03_TS1_buf);

        /*signalName:HCU_GearNum, DataOrder:Intel, startBit: 0, length: 8 */
        MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw = ((uint8)(MAIN_MSGu8Can02_Rx03_TS1_buf[0] & 0xFFu) >> 0u);
        f32LocHCU_GearNum = (float32)((float32)MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw * (1) + (-125));
        if(f32LocHCU_GearNum >= (130))
        {
             MAIN_MSGf32Can02_Rx03_HCU_GearNum = 130;
        }
        else if(f32LocHCU_GearNum <= (0))
        {
             MAIN_MSGf32Can02_Rx03_HCU_GearNum = 0;
        }
        else
        {
             MAIN_MSGf32Can02_Rx03_HCU_GearNum = f32LocHCU_GearNum;
        }
        /*signalName:HCU_Targear_State, DataOrder:Intel, startBit: 8, length: 4 */
        MAIN_MSGu8Can02_Rx03_HCU_Targear_State = ((uint8)(MAIN_MSGu8Can02_Rx03_TS1_buf[1] & 0x0Fu) >> 0u);
        if(MAIN_MSGu8Can02_Rx03_HCU_Targear_State >= (15))
        {
             MAIN_MSGu8Can02_Rx03_HCU_Targear_State = 15;
        }
        else if(MAIN_MSGu8Can02_Rx03_HCU_Targear_State <= (0))
        {
             MAIN_MSGu8Can02_Rx03_HCU_Targear_State = 0;
        }
        /*signalName:HCU_Gearshift_State, DataOrder:Intel, startBit: 14, length: 2 */
        MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State = ((uint8)(MAIN_MSGu8Can02_Rx03_TS1_buf[1] & 0xC0u) >> 6u);
        if(MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State >= (3))
        {
             MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State = 3;
        }
        else if(MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State <= (0))
        {
             MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State = 0;
        }
        /*signalName:HCU_HandleShift, DataOrder:Intel, startBit: 28, length: 4 */
        MAIN_MSGu8Can02_Rx03_HCU_HandleShift = ((uint8)(MAIN_MSGu8Can02_Rx03_TS1_buf[3] & 0xF0u) >> 4u);
        if(MAIN_MSGu8Can02_Rx03_HCU_HandleShift >= (15))
        {
             MAIN_MSGu8Can02_Rx03_HCU_HandleShift = 15;
        }
        else if(MAIN_MSGu8Can02_Rx03_HCU_HandleShift <= (0))
        {
             MAIN_MSGu8Can02_Rx03_HCU_HandleShift = 0;
        }
        /*signalName:HCU_SelfLearningSignal, DataOrder:Intel, startBit: 38, length: 2 */
        MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal = ((uint8)(MAIN_MSGu8Can02_Rx03_TS1_buf[4] & 0xC0u) >> 6u);
        if(MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal >= (3))
        {
             MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal = 3;
        }
        else if(MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal <= (0))
        {
             MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal = 0;
        }
        /*signalName:HCU_PTOWorkState, DataOrder:Intel, startBit: 46, length: 2 */
        MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState = ((uint8)(MAIN_MSGu8Can02_Rx03_TS1_buf[5] & 0xC0u) >> 6u);
        if(MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState >= (3))
        {
             MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState = 3;
        }
        else if(MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState <= (0))
        {
             MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState = 0;
        }

        /*signalName:HCU_OutputShaftSpeed, DataOrder:Intel, startBit: 48, length: 16 */
        MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw = ((uint16)(MAIN_MSGu8Can02_Rx03_TS1_buf[6] & 0xFFu) >> 0u);
        MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw |= ((uint16)(MAIN_MSGu8Can02_Rx03_TS1_buf[7] & 0xFFu) << 8u);
        f32LocHCU_OutputShaftSpeed = (float32)((float32)MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw * (0.125) + (0));
        if(f32LocHCU_OutputShaftSpeed >= (8031.875))
        {
             MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed = 8031.875;
        }
        else if(f32LocHCU_OutputShaftSpeed <= (0))
        {
             MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed = 0;
        }
        else
        {
             MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed = f32LocHCU_OutputShaftSpeed;
        }
    }
    else
    {
        MAIN_MSGf32Can02_Rx03_HCU_GearNum = 0;
        MAIN_MSGu8Can02_Rx03_HCU_Targear_State = 0;
        MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State = 0;
        MAIN_MSGu8Can02_Rx03_HCU_HandleShift = 0;
        MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal = 0;
        MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState = 0;
        MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed = 0;
    }
}

void MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can02_Tx01_MS0_buf[0] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[1] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[2] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[3] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[4] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[5] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[6] = 0x00u;
    MAIN_MSGu8Can02_Tx01_MS0_buf[7] = 0x00u;

    float32 f32LocTS3_Motor_Out_Current = 0;

    if(MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current >= (6553.5))
    {
         f32LocTS3_Motor_Out_Current = 6553.5;
    }
    else if(MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current <= (0))
    {
         f32LocTS3_Motor_Out_Current = 0;
    }
    else
    {
         f32LocTS3_Motor_Out_Current = MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current;
    }
    f32LocTS3_Motor_Out_Current = (f32LocTS3_Motor_Out_Current - (0)) / (0.1);
    MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw = (uint16)(f32LocTS3_Motor_Out_Current);
    /*signalName:TS3_Motor_Out_Current, DataOrder:Intel, startBit: 32, length: 16 */
    MAIN_MSGu8Can02_Tx01_MS0_buf[4] |= ((uint8)(MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx01_MS0_buf[5] |= ((uint8)(MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw >> 8u) & 0xFFu );

    if(MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode >= (3))
    {
         MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode = 3;
    }
    else if(MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode <= (0))
    {
         MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode = 0;
    }
    /*signalName:TS3_Mor_Con_Mode, DataOrder:Intel, startBit: 48, length: 2 */
    MAIN_MSGu8Can02_Tx01_MS0_buf[6] |= ((uint8)(MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode << 0u) & 0x03u );

    float32 f32LocTS3_Motor_Speed = 0;

    if(MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed >= (15000))
    {
         f32LocTS3_Motor_Speed = 15000;
    }
    else if(MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed <= (-15000))
    {
         f32LocTS3_Motor_Speed = -15000;
    }
    else
    {
         f32LocTS3_Motor_Speed = MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed;
    }
    f32LocTS3_Motor_Speed = (f32LocTS3_Motor_Speed - (-15000)) / (1);
    MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw = (uint16)(f32LocTS3_Motor_Speed);
    /*signalName:TS3_Motor_Speed, DataOrder:Intel, startBit: 0, length: 16 */
    MAIN_MSGu8Can02_Tx01_MS0_buf[0] |= ((uint8)(MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx01_MS0_buf[1] |= ((uint8)(MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw >> 8u) & 0xFFu );

    float32 f32LocTS3_Motor_Torque = 0;

    if(MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque >= (5000))
    {
         f32LocTS3_Motor_Torque = 5000;
    }
    else if(MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque <= (-5000))
    {
         f32LocTS3_Motor_Torque = -5000;
    }
    else
    {
         f32LocTS3_Motor_Torque = MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque;
    }
    f32LocTS3_Motor_Torque = (f32LocTS3_Motor_Torque - (-5000)) / (1);
    MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw = (uint16)(f32LocTS3_Motor_Torque);
    /*signalName:TS3_Motor_Torque, DataOrder:Intel, startBit: 16, length: 16 */
    MAIN_MSGu8Can02_Tx01_MS0_buf[2] |= ((uint8)(MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx01_MS0_buf[3] |= ((uint8)(MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw >> 8u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Tx_01,&MAIN_MSGu8Can02_Tx01_MS0_buf);
}

void MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can02_Tx02_MS1_buf[0] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[1] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[2] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[3] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[4] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[5] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[6] = 0x00u;
    MAIN_MSGu8Can02_Tx02_MS1_buf[7] = 0x00u;

    float32 f32LocTS3_Motor_DC_Current = 0;

    if(MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current >= (5553.5))
    {
         f32LocTS3_Motor_DC_Current = 5553.5;
    }
    else if(MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current <= (-1000))
    {
         f32LocTS3_Motor_DC_Current = -1000;
    }
    else
    {
         f32LocTS3_Motor_DC_Current = MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current;
    }
    f32LocTS3_Motor_DC_Current = (f32LocTS3_Motor_DC_Current - (-1000)) / (0.1);
    MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw = (uint16)(f32LocTS3_Motor_DC_Current);
    /*signalName:TS3_Motor_DC_Current, DataOrder:Intel, startBit: 0, length: 16 */
    MAIN_MSGu8Can02_Tx02_MS1_buf[0] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx02_MS1_buf[1] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw >> 8u) & 0xFFu );

    float32 f32LocTS3_Motor_AC_Voltage = 0;

    if(MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage >= (6553.5))
    {
         f32LocTS3_Motor_AC_Voltage = 6553.5;
    }
    else if(MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage <= (0))
    {
         f32LocTS3_Motor_AC_Voltage = 0;
    }
    else
    {
         f32LocTS3_Motor_AC_Voltage = MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage;
    }
    f32LocTS3_Motor_AC_Voltage = (f32LocTS3_Motor_AC_Voltage - (0)) / (0.1);
    MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw = (uint16)(f32LocTS3_Motor_AC_Voltage);
    /*signalName:TS3_Motor_AC_Voltage, DataOrder:Intel, startBit: 16, length: 16 */
    MAIN_MSGu8Can02_Tx02_MS1_buf[2] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx02_MS1_buf[3] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw >> 8u) & 0xFFu );

    float32 f32LocTS3_Motor_Speed = 0;

    if(MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed >= (16383.75))
    {
         f32LocTS3_Motor_Speed = 16383.75;
    }
    else if(MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed <= (0))
    {
         f32LocTS3_Motor_Speed = 0;
    }
    else
    {
         f32LocTS3_Motor_Speed = MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed;
    }
    f32LocTS3_Motor_Speed = (f32LocTS3_Motor_Speed - (0)) / (0.25);
    MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw = (uint16)(f32LocTS3_Motor_Speed);
    /*signalName:TS3_Motor_Speed, DataOrder:Intel, startBit: 32, length: 16 */
    MAIN_MSGu8Can02_Tx02_MS1_buf[4] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx02_MS1_buf[5] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw >> 8u) & 0xFFu );

    if(MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque >= (65535))
    {
         MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque = 65535;
    }
    else if(MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque <= (0))
    {
         MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque = 0;
    }
    /*signalName:TS3_Motor_Torque, DataOrder:Intel, startBit: 48, length: 16 */
    MAIN_MSGu8Can02_Tx02_MS1_buf[6] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque << 0u) & 0xFFu );
    MAIN_MSGu8Can02_Tx02_MS1_buf[7] |= ((uint8)(MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque >> 8u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Tx_02,&MAIN_MSGu8Can02_Tx02_MS1_buf);
}

void MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can02_Tx03_MS2_buf[0] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[1] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[2] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[3] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[4] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[5] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[6] = 0x00u;
    MAIN_MSGu8Can02_Tx03_MS2_buf[7] = 0x00u;

    if(MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed >= (15))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed = 15;
    }
    else if(MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed <= (0))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed = 0;
    }
    /*signalName:TS3_Motor_WORKfeed, DataOrder:Intel, startBit: 0, length: 4 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[0] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed << 0u) & 0x0Fu );

    if(MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed >= (15))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed = 15;
    }
    else if(MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed <= (0))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed = 0;
    }
    /*signalName:TS3_Motor_WORKmodefeed, DataOrder:Intel, startBit: 4, length: 4 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[0] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed << 4u) & 0xF0u );

    float32 f32LocTS3_Motor_MaxDrviTrqLmt = 0;

    if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt >= (4000))
    {
         f32LocTS3_Motor_MaxDrviTrqLmt = 4000;
    }
    else if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt <= (0))
    {
         f32LocTS3_Motor_MaxDrviTrqLmt = 0;
    }
    else
    {
         f32LocTS3_Motor_MaxDrviTrqLmt = MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt;
    }
    f32LocTS3_Motor_MaxDrviTrqLmt = (f32LocTS3_Motor_MaxDrviTrqLmt - (0)) / (16);
    MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw = (uint8)(f32LocTS3_Motor_MaxDrviTrqLmt);
    /*signalName:TS3_Motor_MaxDrviTrqLmt, DataOrder:Intel, startBit: 8, length: 8 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[1] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw << 0u) & 0xFFu );

    float32 f32LocTS3_Motor_MaxBrkiTrqLmt = 0;

    if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt >= (4000))
    {
         f32LocTS3_Motor_MaxBrkiTrqLmt = 4000;
    }
    else if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt <= (0))
    {
         f32LocTS3_Motor_MaxBrkiTrqLmt = 0;
    }
    else
    {
         f32LocTS3_Motor_MaxBrkiTrqLmt = MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt;
    }
    f32LocTS3_Motor_MaxBrkiTrqLmt = (f32LocTS3_Motor_MaxBrkiTrqLmt - (0)) / (16);
    MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw = (uint8)(f32LocTS3_Motor_MaxBrkiTrqLmt);
    /*signalName:TS3_Motor_MaxBrkiTrqLmt, DataOrder:Intel, startBit: 16, length: 8 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[2] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw << 0u) & 0xFFu );

    float32 f32LocTS3_Motor_MotMaxspdLmt = 0;

    if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt >= (12750))
    {
         f32LocTS3_Motor_MotMaxspdLmt = 12750;
    }
    else if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt <= (0))
    {
         f32LocTS3_Motor_MotMaxspdLmt = 0;
    }
    else
    {
         f32LocTS3_Motor_MotMaxspdLmt = MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt;
    }
    f32LocTS3_Motor_MotMaxspdLmt = (f32LocTS3_Motor_MotMaxspdLmt - (0)) / (50);
    MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw = (uint8)(f32LocTS3_Motor_MotMaxspdLmt);
    /*signalName:TS3_Motor_MotMaxspdLmt, DataOrder:Intel, startBit: 24, length: 8 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[3] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw << 0u) & 0xFFu );

    float32 f32LocTS3_Motor_MotTemp = 0;

    if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp >= (175))
    {
         f32LocTS3_Motor_MotTemp = 175;
    }
    else if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp <= (-80))
    {
         f32LocTS3_Motor_MotTemp = -80;
    }
    else
    {
         f32LocTS3_Motor_MotTemp = MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp;
    }
    f32LocTS3_Motor_MotTemp = (f32LocTS3_Motor_MotTemp - (-80)) / (1);
    MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw = (uint8)(f32LocTS3_Motor_MotTemp);
    /*signalName:TS3_Motor_MotTemp, DataOrder:Intel, startBit: 32, length: 8 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[4] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw << 0u) & 0xFFu );

    float32 f32LocTS3_Motor_MotControllerTemp = 0;

    if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp >= (175))
    {
         f32LocTS3_Motor_MotControllerTemp = 175;
    }
    else if(MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp <= (-80))
    {
         f32LocTS3_Motor_MotControllerTemp = -80;
    }
    else
    {
         f32LocTS3_Motor_MotControllerTemp = MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp;
    }
    f32LocTS3_Motor_MotControllerTemp = (f32LocTS3_Motor_MotControllerTemp - (-80)) / (1);
    MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw = (uint8)(f32LocTS3_Motor_MotControllerTemp);
    /*signalName:TS3_Motor_MotControllerTemp, DataOrder:Intel, startBit: 40, length: 8 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[5] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction >= (3))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction = 3;
    }
    else if(MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction <= (0))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction = 0;
    }
    /*signalName:TS3_Motor_MotContrlReqInstruction, DataOrder:Intel, startBit: 48, length: 2 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[6] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction << 0u) & 0x03u );

    if(MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter >= (15))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter = 15;
    }
    else if(MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter <= (0))
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter = 0;
    }
    /*signalName:TS3_Motor_LiveCounter, DataOrder:Intel, startBit: 52, length: 4 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[6] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter << 4u) & 0xF0u );

    MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter++;
    if(MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter > 15)
    {
         MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter = 0;
    }

    float32 f32LocTS3_Motor_CanVersion = 0;

    if(MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion >= (2.5))
    {
         f32LocTS3_Motor_CanVersion = 2.5;
    }
    else if(MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion <= (1))
    {
         f32LocTS3_Motor_CanVersion = 1;
    }
    else
    {
         f32LocTS3_Motor_CanVersion = MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion;
    }
    f32LocTS3_Motor_CanVersion = (f32LocTS3_Motor_CanVersion - (0)) / (0.01);
    MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw = (uint8)(f32LocTS3_Motor_CanVersion);
    /*signalName:TS3_Motor_CanVersion, DataOrder:Intel, startBit: 56, length: 8 */
    MAIN_MSGu8Can02_Tx03_MS2_buf[7] |= ((uint8)(MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw << 0u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Tx_03,&MAIN_MSGu8Can02_Tx03_MS2_buf);
}

void MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can02_Tx04_MDM1_buf[0] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[1] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[2] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[3] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[4] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[5] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[6] = 0x00u;
    MAIN_MSGu8Can02_Tx04_MDM1_buf[7] = 0x00u;

    if(MAIN_MSGu8Can02_Tx04_MCU_Err_level >= (3))
    {
         MAIN_MSGu8Can02_Tx04_MCU_Err_level = 3;
    }
    else if(MAIN_MSGu8Can02_Tx04_MCU_Err_level <= (0))
    {
         MAIN_MSGu8Can02_Tx04_MCU_Err_level = 0;
    }
    /*signalName:MCU_Err_level, DataOrder:Intel, startBit: 22, length: 2 */
    MAIN_MSGu8Can02_Tx04_MDM1_buf[2] |= ((uint8)(MAIN_MSGu8Can02_Tx04_MCU_Err_level << 6u) & 0xC0u );

    if(MAIN_MSGu8Can02_Tx04_MCU_Err_code >= (255))
    {
         MAIN_MSGu8Can02_Tx04_MCU_Err_code = 255;
    }
    else if(MAIN_MSGu8Can02_Tx04_MCU_Err_code <= (0))
    {
         MAIN_MSGu8Can02_Tx04_MCU_Err_code = 0;
    }
    /*signalName:MCU_Err_code, DataOrder:Intel, startBit: 24, length: 8 */
    MAIN_MSGu8Can02_Tx04_MDM1_buf[3] |= ((uint8)(MAIN_MSGu8Can02_Tx04_MCU_Err_code << 0u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Tx_04,&MAIN_MSGu8Can02_Tx04_MDM1_buf);
}

void MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can02_Tx05_MS3_buf[0] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[1] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[2] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[3] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[4] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[5] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[6] = 0x00u;
    MAIN_MSGu8Can02_Tx05_MS3_buf[7] = 0x00u;

    float32 f32LocTS3_DC_NTC_Temp = 0;

    if(MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp >= (175))
    {
         f32LocTS3_DC_NTC_Temp = 175;
    }
    else if(MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp <= (-80))
    {
         f32LocTS3_DC_NTC_Temp = -80;
    }
    else
    {
         f32LocTS3_DC_NTC_Temp = MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp;
    }
    f32LocTS3_DC_NTC_Temp = (f32LocTS3_DC_NTC_Temp - (-80)) / (1);
    MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw = (uint8)(f32LocTS3_DC_NTC_Temp);
    /*signalName:TS3_DC_NTC_Temp, DataOrder:Intel, startBit: 0, length: 8 */
    MAIN_MSGu8Can02_Tx05_MS3_buf[0] |= ((uint8)(MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw << 0u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_02_Tx_05,&MAIN_MSGu8Can02_Tx05_MS3_buf);
}

#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"
/*-------------------------------------EOF--------------------------------------*/



