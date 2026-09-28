/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can01.c
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-09-20 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "MAIN_MSG_Auto_Can01.h"
#include "MAIN_MSG_RxValidFlag.h"

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"

void MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31(void)
{
    if (MAIN_MsgValidFlag_Can01_Rx01)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Rx_01,&MAIN_MSGu8Can01_Rx01_PDUMC1_buf);
        /*signalName:Power_Enable_Signal, DataOrder:Intel, startBit: 0, length: 1 */
        MAIN_MSGbCan01_Rx01_Power_Enable_Signal = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[0] & 0x01u) >> 0u);
        if(MAIN_MSGbCan01_Rx01_Power_Enable_Signal >= (1))
        {
             MAIN_MSGbCan01_Rx01_Power_Enable_Signal = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Power_Enable_Signal <= (0))
        {
             MAIN_MSGbCan01_Rx01_Power_Enable_Signal = 0;
        }
        /*signalName:Key_Signal, DataOrder:Intel, startBit: 1, length: 1 */
        MAIN_MSGbCan01_Rx01_Key_Signal = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[0] & 0x02u) >> 1u);
        if(MAIN_MSGbCan01_Rx01_Key_Signal >= (1))
        {
             MAIN_MSGbCan01_Rx01_Key_Signal = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Key_Signal <= (0))
        {
             MAIN_MSGbCan01_Rx01_Key_Signal = 0;
        }
        /*signalName:Auxiliary_Contactor_Enable, DataOrder:Intel, startBit: 2, length: 1 */
        MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[0] & 0x04u) >> 2u);
        if(MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable >= (1))
        {
             MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable <= (0))
        {
             MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable = 0;
        }
        /*signalName:PTC_Enable_Signal, DataOrder:Intel, startBit: 3, length: 1 */
        MAIN_MSGbCan01_Rx01_PTC_Enable_Signal = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[0] & 0x08u) >> 3u);
        if(MAIN_MSGbCan01_Rx01_PTC_Enable_Signal >= (1))
        {
             MAIN_MSGbCan01_Rx01_PTC_Enable_Signal = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_PTC_Enable_Signal <= (0))
        {
             MAIN_MSGbCan01_Rx01_PTC_Enable_Signal = 0;
        }
        /*signalName:Upper_Enable_Signal, DataOrder:Intel, startBit: 8, length: 1 */
        MAIN_MSGbCan01_Rx01_Upper_Enable_Signal = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[1] & 0x01u) >> 0u);
        if(MAIN_MSGbCan01_Rx01_Upper_Enable_Signal >= (1))
        {
             MAIN_MSGbCan01_Rx01_Upper_Enable_Signal = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Upper_Enable_Signal <= (0))
        {
             MAIN_MSGbCan01_Rx01_Upper_Enable_Signal = 0;
        }
        /*signalName:Keyon_Signal_Sts, DataOrder:Intel, startBit: 10, length: 1 */
        MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[1] & 0x04u) >> 2u);
        if(MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts >= (1))
        {
             MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts <= (0))
        {
             MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts = 0;
        }
        /*signalName:Insulationresistance_Ctrl_Cmd, DataOrder:Intel, startBit: 11, length: 1 */
        MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[1] & 0x08u) >> 3u);
        if(MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd = 0;
        }
        /*signalName:NegContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 12, length: 1 */
        MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[1] & 0x10u) >> 4u);
        if(MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd = 0;
        }
        /*signalName:Cab1_PTC_MOS_Switch_Cmd, DataOrder:Intel, startBit: 16, length: 1 */
        MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[2] & 0x01u) >> 0u);
        if(MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd = 0;
        }
        /*signalName:Cab2_PTC_MOS_Switch_Cmd, DataOrder:Intel, startBit: 17, length: 1 */
        MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[2] & 0x02u) >> 1u);
        if(MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd = 0;
        }
        /*signalName:Batteryheat1_MOS_Switch_Cmd, DataOrder:Intel, startBit: 18, length: 1 */
        MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[2] & 0x04u) >> 2u);
        if(MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd = 0;
        }
        /*signalName:Batteryheat2_MOS_Switch_Cmd, DataOrder:Intel, startBit: 19, length: 1 */
        MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[2] & 0x08u) >> 3u);
        if(MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd = 0;
        }
        /*signalName:Batteryheat3_MOS_Switch_Cmd, DataOrder:Intel, startBit: 20, length: 1 */
        MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[2] & 0x10u) >> 4u);
        if(MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd = 0;
        }
        /*signalName:Batteryheat4_MOS_Switch_Cmd, DataOrder:Intel, startBit: 21, length: 1 */
        MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[2] & 0x20u) >> 5u);
        if(MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd = 0;
        }
        /*signalName:ChargCircuit1_PosContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 24, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x01u) >> 0u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit1_NegContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 25, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x02u) >> 1u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit2_PosContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 26, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x04u) >> 2u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit2_NegContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 27, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x08u) >> 3u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit3_PosContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 28, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x10u) >> 4u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit3_NegContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 29, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x20u) >> 5u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit4_PosContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 30, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x40u) >> 6u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd = 0;
        }
        /*signalName:ChargCircuit4_NegContactor_Ctrl_Cmd, DataOrder:Intel, startBit: 31, length: 1 */
        MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[3] & 0x80u) >> 7u);
        if(MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd = 0;
        }
        /*signalName:Heartbeat_Signal, DataOrder:Intel, startBit: 56, length: 8 */
        MAIN_MSGu8Can01_Rx01_Heartbeat_Signal = ((uint8)(MAIN_MSGu8Can01_Rx01_PDUMC1_buf[7] & 0xFFu) >> 0u);
        if(MAIN_MSGu8Can01_Rx01_Heartbeat_Signal >= (255))
        {
             MAIN_MSGu8Can01_Rx01_Heartbeat_Signal = 255;
        }
        else if(MAIN_MSGu8Can01_Rx01_Heartbeat_Signal <= (0))
        {
             MAIN_MSGu8Can01_Rx01_Heartbeat_Signal = 0;
        }
    }
    else
    {
        MAIN_MSGbCan01_Rx01_Power_Enable_Signal = 0;
        MAIN_MSGbCan01_Rx01_Key_Signal = 0;
        MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable = 0;
        MAIN_MSGbCan01_Rx01_PTC_Enable_Signal = 0;
        MAIN_MSGbCan01_Rx01_Upper_Enable_Signal = 0;
        MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts = 0;
        MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd = 0;
        MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd = 0;
        MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd = 0;
        MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd = 0;
        MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd = 0;
        MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd = 0;
        MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd = 0;
        MAIN_MSGu8Can01_Rx01_Heartbeat_Signal = 0;
    }
}

void MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31(void)
{
    if (MAIN_MsgValidFlag_Can01_Rx02)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Rx_02,&MAIN_MSGu8Can01_Rx02_HSMC1_buf);
        /*signalName:HV_STEERING_REQUEST, DataOrder:Intel, startBit: 0, length: 2 */
        MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST = ((uint8)(MAIN_MSGu8Can01_Rx02_HSMC1_buf[0] & 0x03u) >> 0u);
        if(MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST >= (1))
        {
             MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST = 1;
        }
        else if(MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST <= (0))
        {
             MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST = 0;
        }
        /*signalName:HEARTBEAT, DataOrder:Intel, startBit: 56, length: 8 */
        MAIN_MSGu8Can01_Rx02_HEARTBEAT = ((uint8)(MAIN_MSGu8Can01_Rx02_HSMC1_buf[7] & 0xFFu) >> 0u);
        if(MAIN_MSGu8Can01_Rx02_HEARTBEAT >= (255))
        {
             MAIN_MSGu8Can01_Rx02_HEARTBEAT = 255;
        }
        else if(MAIN_MSGu8Can01_Rx02_HEARTBEAT <= (0))
        {
             MAIN_MSGu8Can01_Rx02_HEARTBEAT = 0;
        }
    }
    else
    {
        MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST = 0;
        MAIN_MSGu8Can01_Rx02_HEARTBEAT = 0;
    }
}

void MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31(void)
{
    float32 f32LocSteerpump_Motor_Targetspeed = 0;
    if (MAIN_MsgValidFlag_Can01_Rx03)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Rx_03,&MAIN_MSGu8Can01_Rx03_HSSTC_buf);

        /*signalName:Steerpump_Motor_Targetspeed, DataOrder:Intel, startBit: 0, length: 8 */
        MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw = ((uint8)(MAIN_MSGu8Can01_Rx03_HSSTC_buf[0] & 0xFFu) >> 0u);
        f32LocSteerpump_Motor_Targetspeed = (float32)((float32)MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw * (20) + (0));
        if(f32LocSteerpump_Motor_Targetspeed >= (3000))
        {
             MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed = 3000;
        }
        else if(f32LocSteerpump_Motor_Targetspeed <= (0))
        {
             MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed = 0;
        }
        else
        {
             MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed = f32LocSteerpump_Motor_Targetspeed;
        }
        /*signalName:Heartbeat_Signal, DataOrder:Intel, startBit: 56, length: 8 */
        MAIN_MSGu8Can01_Rx03_Heartbeat_Signal = ((uint8)(MAIN_MSGu8Can01_Rx03_HSSTC_buf[7] & 0xFFu) >> 0u);
        if(MAIN_MSGu8Can01_Rx03_Heartbeat_Signal >= (255))
        {
             MAIN_MSGu8Can01_Rx03_Heartbeat_Signal = 255;
        }
        else if(MAIN_MSGu8Can01_Rx03_Heartbeat_Signal <= (0))
        {
             MAIN_MSGu8Can01_Rx03_Heartbeat_Signal = 0;
        }
    }
    else
    {
        MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed = 0;
        MAIN_MSGu8Can01_Rx03_Heartbeat_Signal = 0;
    }
}

void MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031(void)
{
    float32 f32LocAircompressor_Motor_Targspeed = 0;
    if (MAIN_MsgValidFlag_Can01_Rx04)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Rx_04,&MAIN_MSGu8Can01_Rx04_ACUMC1_buf);
        /*signalName:Acu_Inhibit_Cmd, DataOrder:Intel, startBit: 0, length: 1 */
        MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd = ((boolean)(MAIN_MSGu8Can01_Rx04_ACUMC1_buf[0] & 0x01u) >> 0u);
        if(MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd >= (1))
        {
             MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd = 1;
        }
        else if(MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd <= (0))
        {
             MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd = 0;
        }

        /*signalName:Aircompressor_Motor_Targspeed, DataOrder:Intel, startBit: 8, length: 8 */
        MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw = ((uint8)(MAIN_MSGu8Can01_Rx04_ACUMC1_buf[1] & 0xFFu) >> 0u);
        f32LocAircompressor_Motor_Targspeed = (float32)((float32)MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw * (20) + (0));
        if(f32LocAircompressor_Motor_Targspeed >= (3000))
        {
             MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed = 3000;
        }
        else if(f32LocAircompressor_Motor_Targspeed <= (0))
        {
             MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed = 0;
        }
        else
        {
             MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed = f32LocAircompressor_Motor_Targspeed;
        }
        /*signalName:CtrlMsg_Cycle_Counter, DataOrder:Intel, startBit: 56, length: 8 */
        MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter = ((uint8)(MAIN_MSGu8Can01_Rx04_ACUMC1_buf[7] & 0xFFu) >> 0u);
        if(MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter >= (255))
        {
             MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter = 255;
        }
        else if(MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter <= (0))
        {
             MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter = 0;
        }
    }
    else
    {
        MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd = 0;
        MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed = 0;
        MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter = 0;
    }
}

void MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30(void)
{
    float32 f32LocTCU_MotorWorkModReq = 0;
    float32 f32LocTCU_MotorTorReq = 0;
    if (MAIN_MsgValidFlag_Can01_Rx05)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Rx_05,&MAIN_MSGu8Can01_Rx05_AIR1_buf);

        /*signalName:TCU_MotorWorkModReq, DataOrder:Intel, startBit: 16, length: 8 */
        MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw = ((uint8)(MAIN_MSGu8Can01_Rx05_AIR1_buf[2] & 0xFFu) >> 0u);
        f32LocTCU_MotorWorkModReq = (float32)((float32)MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw * (8) + (0));
        if(f32LocTCU_MotorWorkModReq >= (2000))
        {
             MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq = 2000;
        }
        else if(f32LocTCU_MotorWorkModReq <= (0))
        {
             MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq = 0;
        }
        else
        {
             MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq = f32LocTCU_MotorWorkModReq;
        }

        /*signalName:TCU_MotorTorReq, DataOrder:Intel, startBit: 24, length: 8 */
        MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw = ((uint8)(MAIN_MSGu8Can01_Rx05_AIR1_buf[3] & 0xFFu) >> 0u);
        f32LocTCU_MotorTorReq = (float32)((float32)MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw * (8) + (0));
        if(f32LocTCU_MotorTorReq >= (2000))
        {
             MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq = 2000;
        }
        else if(f32LocTCU_MotorTorReq <= (0))
        {
             MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq = 0;
        }
        else
        {
             MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq = f32LocTCU_MotorTorReq;
        }
    }
    else
    {
        MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq = 0;
        MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq = 0;
    }
}

void MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32(void)
{
    float32 f32LocTCU_MotorWorkModReq = 0;
    float32 f32LocTCU_MotorTorReq = 0;
    if (MAIN_MsgValidFlag_Can01_Rx06)
    {
        Com_ReceiveSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Rx_06,&MAIN_MSGu8Can01_Rx06_AIR1_buf);

        /*signalName:TCU_MotorWorkModReq, DataOrder:Intel, startBit: 16, length: 8 */
        MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw = ((uint8)(MAIN_MSGu8Can01_Rx06_AIR1_buf[2] & 0xFFu) >> 0u);
        f32LocTCU_MotorWorkModReq = (float32)((float32)MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw * (8) + (0));
        if(f32LocTCU_MotorWorkModReq >= (2000))
        {
             MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq = 2000;
        }
        else if(f32LocTCU_MotorWorkModReq <= (0))
        {
             MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq = 0;
        }
        else
        {
             MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq = f32LocTCU_MotorWorkModReq;
        }

        /*signalName:TCU_MotorTorReq, DataOrder:Intel, startBit: 24, length: 8 */
        MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw = ((uint8)(MAIN_MSGu8Can01_Rx06_AIR1_buf[3] & 0xFFu) >> 0u);
        f32LocTCU_MotorTorReq = (float32)((float32)MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw * (8) + (0));
        if(f32LocTCU_MotorTorReq >= (2000))
        {
             MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq = 2000;
        }
        else if(f32LocTCU_MotorTorReq <= (0))
        {
             MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq = 0;
        }
        else
        {
             MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq = f32LocTCU_MotorTorReq;
        }
    }
    else
    {
        MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq = 0;
        MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq = 0;
    }
}

void MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] = 0x00u;

    float32 f32LocLow_input_voltage = 0;

    if(MAIN_MSGf32Can01_Tx01_Low_input_voltage >= (102))
    {
         f32LocLow_input_voltage = 102;
    }
    else if(MAIN_MSGf32Can01_Tx01_Low_input_voltage <= (0))
    {
         f32LocLow_input_voltage = 0;
    }
    else
    {
         f32LocLow_input_voltage = MAIN_MSGf32Can01_Tx01_Low_input_voltage;
    }
    f32LocLow_input_voltage = (f32LocLow_input_voltage - (0)) / (0.4);
    MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw = (uint8)(f32LocLow_input_voltage);
    /*signalName:Low_input_voltage, DataOrder:Intel, startBit: 0, length: 8 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw << 0u) & 0xFFu );

    float32 f32LocPower_battery_pack_voltage = 0;

    if(MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage >= (6553.5))
    {
         f32LocPower_battery_pack_voltage = 6553.5;
    }
    else if(MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage <= (0))
    {
         f32LocPower_battery_pack_voltage = 0;
    }
    else
    {
         f32LocPower_battery_pack_voltage = MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage;
    }
    f32LocPower_battery_pack_voltage = (f32LocPower_battery_pack_voltage - (0)) / (0.1);
    MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw = (uint16)(f32LocPower_battery_pack_voltage);
    /*signalName:Power_battery_pack_voltage, DataOrder:Intel, startBit: 8, length: 16 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[1] |= ((uint8)(MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[2] |= ((uint8)(MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw >> 8u) & 0xFFu );

    float32 f32LocMain_pos_contactor_out_voltage = 0;

    if(MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage >= (6553.5))
    {
         f32LocMain_pos_contactor_out_voltage = 6553.5;
    }
    else if(MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage <= (0))
    {
         f32LocMain_pos_contactor_out_voltage = 0;
    }
    else
    {
         f32LocMain_pos_contactor_out_voltage = MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage;
    }
    f32LocMain_pos_contactor_out_voltage = (f32LocMain_pos_contactor_out_voltage - (0)) / (0.1);
    MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw = (uint16)(f32LocMain_pos_contactor_out_voltage);
    /*signalName:Main_pos_contactor_out_voltage, DataOrder:Intel, startBit: 24, length: 16 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[3] |= ((uint8)(MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[4] |= ((uint8)(MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw >> 8u) & 0xFFu );

    float32 f32LocPrecharg_resistor_temp = 0;

    if(MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp >= (200))
    {
         f32LocPrecharg_resistor_temp = 200;
    }
    else if(MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp <= (-20))
    {
         f32LocPrecharg_resistor_temp = -20;
    }
    else
    {
         f32LocPrecharg_resistor_temp = MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp;
    }
    f32LocPrecharg_resistor_temp = (f32LocPrecharg_resistor_temp - (-20)) / (1);
    MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw = (uint8)(f32LocPrecharg_resistor_temp);
    /*signalName:Precharg_resistor_temp, DataOrder:Intel, startBit: 40, length: 8 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw << 0u) & 0xFFu );

    float32 f32LocPrecharg_time_consumption = 0;

    if(MAIN_MSGf32Can01_Tx01_Precharg_time_consumption >= (25.5))
    {
         f32LocPrecharg_time_consumption = 25.5;
    }
    else if(MAIN_MSGf32Can01_Tx01_Precharg_time_consumption <= (0))
    {
         f32LocPrecharg_time_consumption = 0;
    }
    else
    {
         f32LocPrecharg_time_consumption = MAIN_MSGf32Can01_Tx01_Precharg_time_consumption;
    }
    f32LocPrecharg_time_consumption = (f32LocPrecharg_time_consumption - (0)) / (0.1);
    MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw = (uint8)(f32LocPrecharg_time_consumption);
    /*signalName:Precharg_time_consumption, DataOrder:Intel, startBit: 48, length: 8 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw << 0u) & 0xFFu );

    if(MAIN_MSGbCan01_Tx01_Enable_signal >= (1))
    {
         MAIN_MSGbCan01_Tx01_Enable_signal = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Enable_signal <= (0))
    {
         MAIN_MSGbCan01_Tx01_Enable_signal = 0;
    }
    /*signalName:Enable_signal, DataOrder:Intel, startBit: 56, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Enable_signal << 0u) & 0x01u );

    if(MAIN_MSGbCan01_Tx01_Key_signal >= (1))
    {
         MAIN_MSGbCan01_Tx01_Key_signal = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Key_signal <= (0))
    {
         MAIN_MSGbCan01_Tx01_Key_signal = 0;
    }
    /*signalName:Key_signal, DataOrder:Intel, startBit: 57, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Key_signal << 1u) & 0x02u );

    if(MAIN_MSGbCan01_Tx01_Precharge_contactor_on >= (1))
    {
         MAIN_MSGbCan01_Tx01_Precharge_contactor_on = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Precharge_contactor_on <= (0))
    {
         MAIN_MSGbCan01_Tx01_Precharge_contactor_on = 0;
    }
    /*signalName:Precharge_contactor_on, DataOrder:Intel, startBit: 58, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Precharge_contactor_on << 2u) & 0x04u );

    if(MAIN_MSGbCan01_Tx01_Positive_contactor_on >= (1))
    {
         MAIN_MSGbCan01_Tx01_Positive_contactor_on = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Positive_contactor_on <= (0))
    {
         MAIN_MSGbCan01_Tx01_Positive_contactor_on = 0;
    }
    /*signalName:Positive_contactor_on, DataOrder:Intel, startBit: 59, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Positive_contactor_on << 3u) & 0x08u );

    if(MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor >= (1))
    {
         MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor <= (0))
    {
         MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor = 0;
    }
    /*signalName:Voltage_diff_of_positive_contactor, DataOrder:Intel, startBit: 60, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor << 4u) & 0x10u );

    if(MAIN_MSGbCan01_Tx01_Positive_contactor_status  >= (1))
    {
         MAIN_MSGbCan01_Tx01_Positive_contactor_status  = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Positive_contactor_status  <= (0))
    {
         MAIN_MSGbCan01_Tx01_Positive_contactor_status  = 0;
    }
    /*signalName:Positive_contactor_status , DataOrder:Intel, startBit: 61, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Positive_contactor_status  << 5u) & 0x20u );

    if(MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal >= (1))
    {
         MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal <= (0))
    {
         MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal = 0;
    }
    /*signalName:Poweron_selftest_ok_signal, DataOrder:Intel, startBit: 62, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal << 6u) & 0x40u );

    if(MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor >= (1))
    {
         MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor = 1;
    }
    else if(MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor <= (0))
    {
         MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor = 0;
    }
    /*signalName:Highvoltage_of_circuit_positive_contactor, DataOrder:Intel, startBit: 63, length: 1 */
    MAIN_MSGu8Can01_Tx01_PDUST1_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor << 7u) & 0x80u );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_01,&MAIN_MSGu8Can01_Tx01_PDUST1_buf);
}

void MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[7] = 0x00u;

    if(MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback >= (3))
    {
         MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback = 3;
    }
    else if(MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback <= (0))
    {
         MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback = 0;
    }
    /*signalName:Stuck_Status_Feedback, DataOrder:Intel, startBit: 0, length: 2 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command >= (3))
    {
         MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command = 3;
    }
    else if(MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command <= (0))
    {
         MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command = 0;
    }
    /*signalName:1stStage_PTC_MOS_Switch_Command, DataOrder:Intel, startBit: 4, length: 2 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command << 4u) & 0x30u );

    if(MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command >= (3))
    {
         MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command = 3;
    }
    else if(MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command <= (0))
    {
         MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command = 0;
    }
    /*signalName:2stStage_PTC_MOS_Switch_Command, DataOrder:Intel, startBit: 6, length: 2 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command << 6u) & 0xC0u );

    if(MAIN_MSGbCan01_Tx02_PTC_Contactor_Status >= (1))
    {
         MAIN_MSGbCan01_Tx02_PTC_Contactor_Status = 1;
    }
    else if(MAIN_MSGbCan01_Tx02_PTC_Contactor_Status <= (0))
    {
         MAIN_MSGbCan01_Tx02_PTC_Contactor_Status = 0;
    }
    /*signalName:PTC_Contactor_Status, DataOrder:Intel, startBit: 11, length: 1 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[1] |= ((uint8)(MAIN_MSGbCan01_Tx02_PTC_Contactor_Status << 3u) & 0x08u );

    if(MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On >= (1))
    {
         MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On = 1;
    }
    else if(MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On <= (0))
    {
         MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On = 0;
    }
    /*signalName:UpperCircuit_Contactor_On, DataOrder:Intel, startBit: 13, length: 1 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[1] |= ((uint8)(MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On << 5u) & 0x20u );

    if(MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On >= (1))
    {
         MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On = 1;
    }
    else if(MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On <= (0))
    {
         MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On = 0;
    }
    /*signalName:UpperCircuit_Precharge_Contactor_On, DataOrder:Intel, startBit: 14, length: 1 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[1] |= ((uint8)(MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On << 6u) & 0x40u );

    if(MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status >= (1))
    {
         MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status = 1;
    }
    else if(MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status <= (0))
    {
         MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status = 0;
    }
    /*signalName:UpperCircuit_Contactor_Status, DataOrder:Intel, startBit: 15, length: 1 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[1] |= ((uint8)(MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status << 7u) & 0x80u );

    if(MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code >= (255))
    {
         MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code = 255;
    }
    else if(MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code <= (0))
    {
         MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code = 0;
    }
    /*signalName:Internal_Trouble_Code, DataOrder:Intel, startBit: 16, length: 8 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[2] |= ((uint8)(MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code << 0u) & 0xFFu );

    float32 f32LocSoftware_Version = 0;

    if(MAIN_MSGf32Can01_Tx02_Software_Version >= (2.54))
    {
         f32LocSoftware_Version = 2.54;
    }
    else if(MAIN_MSGf32Can01_Tx02_Software_Version <= (0))
    {
         f32LocSoftware_Version = 0;
    }
    else
    {
         f32LocSoftware_Version = MAIN_MSGf32Can01_Tx02_Software_Version;
    }
    f32LocSoftware_Version = (f32LocSoftware_Version - (0)) / (0.01);
    MAIN_MSGu8Can01_Tx02_Software_VersionRaw = (uint8)(f32LocSoftware_Version);
    /*signalName:Software_Version, DataOrder:Intel, startBit: 24, length: 8 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[3] |= ((uint8)(MAIN_MSGu8Can01_Tx02_Software_VersionRaw << 0u) & 0xFFu );

    float32 f32LocOutputvoltage_of_UpperCircuit_Contactor = 0;

    if(MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor >= (6553.5))
    {
         f32LocOutputvoltage_of_UpperCircuit_Contactor = 6553.5;
    }
    else if(MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor <= (0))
    {
         f32LocOutputvoltage_of_UpperCircuit_Contactor = 0;
    }
    else
    {
         f32LocOutputvoltage_of_UpperCircuit_Contactor = MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor;
    }
    f32LocOutputvoltage_of_UpperCircuit_Contactor = (f32LocOutputvoltage_of_UpperCircuit_Contactor - (0)) / (0.1);
    MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw = (uint16)(f32LocOutputvoltage_of_UpperCircuit_Contactor);
    /*signalName:Outputvoltage_of_UpperCircuit_Contactor, DataOrder:Intel, startBit: 32, length: 16 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[4] |= ((uint8)(MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[5] |= ((uint8)(MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw >> 8u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx02_Heartbeat_Signal >= (255))
    {
         MAIN_MSGu8Can01_Tx02_Heartbeat_Signal = 255;
    }
    else if(MAIN_MSGu8Can01_Tx02_Heartbeat_Signal <= (0))
    {
         MAIN_MSGu8Can01_Tx02_Heartbeat_Signal = 0;
    }
    /*signalName:Heartbeat_Signal, DataOrder:Intel, startBit: 48, length: 8 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx02_Heartbeat_Signal << 0u) & 0xFFu );

    MAIN_MSGu8Can01_Tx02_Heartbeat_Signal++;
    if(MAIN_MSGu8Can01_Tx02_Heartbeat_Signal > 255)
    {
         MAIN_MSGu8Can01_Tx02_Heartbeat_Signal = 0;
    }

    if(MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status >= (1))
    {
         MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status = 1;
    }
    else if(MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status <= (0))
    {
         MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status = 0;
    }
    /*signalName:AuxiliaryContactor_Status, DataOrder:Intel, startBit: 56, length: 1 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[7] |= ((uint8)(MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status << 0u) & 0x01u );

    if(MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On >= (3))
    {
         MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On = 3;
    }
    else if(MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On <= (0))
    {
         MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On = 0;
    }
    /*signalName:AuxiliaryContactor_On, DataOrder:Intel, startBit: 57, length: 2 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[7] |= ((uint8)(MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On << 1u) & 0x06u );

    if(MAIN_MSGu8Can01_Tx02_PTCContactor_On >= (3))
    {
         MAIN_MSGu8Can01_Tx02_PTCContactor_On = 3;
    }
    else if(MAIN_MSGu8Can01_Tx02_PTCContactor_On <= (0))
    {
         MAIN_MSGu8Can01_Tx02_PTCContactor_On = 0;
    }
    /*signalName:PTCContactor_On, DataOrder:Intel, startBit: 59, length: 2 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[7] |= ((uint8)(MAIN_MSGu8Can01_Tx02_PTCContactor_On << 3u) & 0x18u );

    if(MAIN_MSGu8Can01_Tx02_PTCContactor2_On >= (3))
    {
         MAIN_MSGu8Can01_Tx02_PTCContactor2_On = 3;
    }
    else if(MAIN_MSGu8Can01_Tx02_PTCContactor2_On <= (0))
    {
         MAIN_MSGu8Can01_Tx02_PTCContactor2_On = 0;
    }
    /*signalName:PTCContactor2_On, DataOrder:Intel, startBit: 61, length: 2 */
    MAIN_MSGu8Can01_Tx02_PDUST2_buf[7] |= ((uint8)(MAIN_MSGu8Can01_Tx02_PTCContactor2_On << 5u) & 0x60u );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_02,&MAIN_MSGu8Can01_Tx02_PDUST2_buf);
}

void MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[7] = 0x00u;

    if(MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts = 0;
    }
    /*signalName:Insulation_Resistance_Sts, DataOrder:Intel, startBit: 0, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts = 0;
    }
    /*signalName:Negative_Contactor_Sts, DataOrder:Intel, startBit: 2, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts << 2u) & 0x0Cu );

    if(MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors >= (7))
    {
         MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors = 7;
    }
    else if(MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors = 0;
    }
    /*signalName:Number_of_Positive_Contactors, DataOrder:Intel, startBit: 4, length: 3 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors << 4u) & 0x70u );

    if(MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts = 0;
    }
    /*signalName:Positive_Contactor1_Sts, DataOrder:Intel, startBit: 8, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[1] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts = 0;
    }
    /*signalName:Positive_Contactor2_Sts, DataOrder:Intel, startBit: 10, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[1] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts << 2u) & 0x0Cu );

    if(MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts = 0;
    }
    /*signalName:Positive_Contactor3_Sts, DataOrder:Intel, startBit: 12, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[1] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts << 4u) & 0x30u );

    if(MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts = 0;
    }
    /*signalName:Positive_Contactor4_Sts, DataOrder:Intel, startBit: 14, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[1] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts << 6u) & 0xC0u );

    if(MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch >= (1))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch = 1;
    }
    else if(MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch = 0;
    }
    /*signalName:OnStatus_of_Cab1_Stage_PTC_Switch, DataOrder:Intel, startBit: 16, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[2] |= ((uint8)(MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch >= (1))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch = 1;
    }
    else if(MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch = 0;
    }
    /*signalName:OnStatus_of_Cab2_Stage_PTC_Switch, DataOrder:Intel, startBit: 18, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[2] |= ((uint8)(MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch << 2u) & 0x0Cu );

    if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch >= (1))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch = 1;
    }
    else if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch = 0;
    }
    /*signalName:OnStatus_of_BatteryHeating1_Switch, DataOrder:Intel, startBit: 24, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[3] |= ((uint8)(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch >= (1))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch = 1;
    }
    else if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch = 0;
    }
    /*signalName:OnStatus_of_BatteryHeating2_Switch, DataOrder:Intel, startBit: 26, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[3] |= ((uint8)(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch << 2u) & 0x0Cu );

    if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch >= (1))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch = 1;
    }
    else if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch = 0;
    }
    /*signalName:OnStatus_of_BatteryHeating3_Switch, DataOrder:Intel, startBit: 28, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[3] |= ((uint8)(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch << 4u) & 0x30u );

    if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch >= (1))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch = 1;
    }
    else if(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch = 0;
    }
    /*signalName:OnStatus_of_BatteryHeating4_Switch, DataOrder:Intel, startBit: 30, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[3] |= ((uint8)(MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch << 6u) & 0xC0u );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit1_Positive_Contactor_Sts, DataOrder:Intel, startBit: 32, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[4] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit1_Negative_Contactor_Sts, DataOrder:Intel, startBit: 34, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[4] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts << 2u) & 0x0Cu );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit2_Positive_Contactor_Sts, DataOrder:Intel, startBit: 36, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[4] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts << 4u) & 0x30u );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit2_Negative_Contactor_Sts, DataOrder:Intel, startBit: 38, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[4] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts << 6u) & 0xC0u );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit3_Positive_Contactor_Sts, DataOrder:Intel, startBit: 40, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit3_Negative_Contactor_Sts, DataOrder:Intel, startBit: 42, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts << 2u) & 0x0Cu );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit4_Positive_Contactor_Sts, DataOrder:Intel, startBit: 44, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts << 4u) & 0x30u );

    if(MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts = 0;
    }
    /*signalName:ChargeCircuit4_Negative_Contactor_Sts, DataOrder:Intel, startBit: 46, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts << 6u) & 0xC0u );

    if(MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch >= (3))
    {
         MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch = 3;
    }
    else if(MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch = 0;
    }
    /*signalName:Number_of_Cab_PTC_Switch, DataOrder:Intel, startBit: 48, length: 2 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch >= (7))
    {
         MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch = 7;
    }
    else if(MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch <= (0))
    {
         MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch = 0;
    }
    /*signalName:Number_of_BatteryHeating_PTC_Switch, DataOrder:Intel, startBit: 50, length: 3 */
    MAIN_MSGu8Can01_Tx03_PDUST3_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch << 2u) & 0x1Cu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_03,&MAIN_MSGu8Can01_Tx03_PDUST3_buf);
}

void MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[7] = 0x00u;

    float32 f32LocPositivepole_to_ground_resistance_value = 0;

    if(MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value >= (655.35))
    {
         f32LocPositivepole_to_ground_resistance_value = 655.35;
    }
    else if(MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value <= (0))
    {
         f32LocPositivepole_to_ground_resistance_value = 0;
    }
    else
    {
         f32LocPositivepole_to_ground_resistance_value = MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value;
    }
    f32LocPositivepole_to_ground_resistance_value = (f32LocPositivepole_to_ground_resistance_value - (0)) / (0.01);
    MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw = (uint16)(f32LocPositivepole_to_ground_resistance_value);
    /*signalName:Positivepole_to_ground_resistance_value, DataOrder:Intel, startBit: 0, length: 16 */
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[0] |= ((uint8)(MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[1] |= ((uint8)(MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw >> 8u) & 0xFFu );

    float32 f32LocNegativepole_to_ground_resistance_value = 0;

    if(MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value >= (655.35))
    {
         f32LocNegativepole_to_ground_resistance_value = 655.35;
    }
    else if(MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value <= (0))
    {
         f32LocNegativepole_to_ground_resistance_value = 0;
    }
    else
    {
         f32LocNegativepole_to_ground_resistance_value = MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value;
    }
    f32LocNegativepole_to_ground_resistance_value = (f32LocNegativepole_to_ground_resistance_value - (0)) / (0.01);
    MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw = (uint16)(f32LocNegativepole_to_ground_resistance_value);
    /*signalName:Negativepole_to_ground_resistance_value, DataOrder:Intel, startBit: 16, length: 16 */
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[2] |= ((uint8)(MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[3] |= ((uint8)(MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw >> 8u) & 0xFFu );

    float32 f32LocChargingpile_voltage = 0;

    if(MAIN_MSGf32Can01_Tx04_Chargingpile_voltage >= (6553.5))
    {
         f32LocChargingpile_voltage = 6553.5;
    }
    else if(MAIN_MSGf32Can01_Tx04_Chargingpile_voltage <= (0))
    {
         f32LocChargingpile_voltage = 0;
    }
    else
    {
         f32LocChargingpile_voltage = MAIN_MSGf32Can01_Tx04_Chargingpile_voltage;
    }
    f32LocChargingpile_voltage = (f32LocChargingpile_voltage - (0)) / (0.1);
    MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw = (uint16)(f32LocChargingpile_voltage);
    /*signalName:Chargingpile_voltage, DataOrder:Intel, startBit: 32, length: 16 */
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[4] |= ((uint8)(MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx04_PDUST4_buf[5] |= ((uint8)(MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw >> 8u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_04,&MAIN_MSGu8Can01_Tx04_PDUST4_buf);
}

void MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E (void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx05_HSST1_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx05_HSST1_buf[7] = 0x00u;

    if(MAIN_MSGu8Can01_Tx05_Heartbeat_Signal >= (255))
    {
         MAIN_MSGu8Can01_Tx05_Heartbeat_Signal = 255;
    }
    else if(MAIN_MSGu8Can01_Tx05_Heartbeat_Signal <= (0))
    {
         MAIN_MSGu8Can01_Tx05_Heartbeat_Signal = 0;
    }
    /*signalName:Heartbeat_Signal, DataOrder:Intel, startBit: 0, length: 8 */
    MAIN_MSGu8Can01_Tx05_HSST1_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx05_Heartbeat_Signal << 0u) & 0xFFu );

    MAIN_MSGu8Can01_Tx05_Heartbeat_Signal++;
    if(MAIN_MSGu8Can01_Tx05_Heartbeat_Signal > 255)
    {
         MAIN_MSGu8Can01_Tx05_Heartbeat_Signal = 0;
    }

    if(MAIN_MSGu16Can01_Tx05_Motor_Speed >= (5000))
    {
         MAIN_MSGu16Can01_Tx05_Motor_Speed = 5000;
    }
    else if(MAIN_MSGu16Can01_Tx05_Motor_Speed <= (0))
    {
         MAIN_MSGu16Can01_Tx05_Motor_Speed = 0;
    }
    /*signalName:Motor_Speed, DataOrder:Intel, startBit: 8, length: 16 */
    MAIN_MSGu8Can01_Tx05_HSST1_buf[1] |= ((uint8)(MAIN_MSGu16Can01_Tx05_Motor_Speed << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx05_HSST1_buf[2] |= ((uint8)(MAIN_MSGu16Can01_Tx05_Motor_Speed >> 8u) & 0xFFu );

    float32 f32LocOutput_Current = 0;

    if(MAIN_MSGf32Can01_Tx05_Output_Current >= (100))
    {
         f32LocOutput_Current = 100;
    }
    else if(MAIN_MSGf32Can01_Tx05_Output_Current <= (0))
    {
         f32LocOutput_Current = 0;
    }
    else
    {
         f32LocOutput_Current = MAIN_MSGf32Can01_Tx05_Output_Current;
    }
    f32LocOutput_Current = (f32LocOutput_Current - (0)) / (0.1);
    MAIN_MSGu16Can01_Tx05_Output_CurrentRaw = (uint16)(f32LocOutput_Current);
    /*signalName:Output_Current, DataOrder:Intel, startBit: 24, length: 16 */
    MAIN_MSGu8Can01_Tx05_HSST1_buf[3] |= ((uint8)(MAIN_MSGu16Can01_Tx05_Output_CurrentRaw << 0u) & 0xFFu );
    MAIN_MSGu8Can01_Tx05_HSST1_buf[4] |= ((uint8)(MAIN_MSGu16Can01_Tx05_Output_CurrentRaw >> 8u) & 0xFFu );

    float32 f32LocSteering_Oil_DCAC_Module_Temp = 0;

    if(MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp >= (215))
    {
         f32LocSteering_Oil_DCAC_Module_Temp = 215;
    }
    else if(MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp <= (-40))
    {
         f32LocSteering_Oil_DCAC_Module_Temp = -40;
    }
    else
    {
         f32LocSteering_Oil_DCAC_Module_Temp = MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp;
    }
    f32LocSteering_Oil_DCAC_Module_Temp = (f32LocSteering_Oil_DCAC_Module_Temp - (-40)) / (1);
    MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw = (uint8)(f32LocSteering_Oil_DCAC_Module_Temp);
    /*signalName:Steering_Oil_DCAC_Module_Temp, DataOrder:Intel, startBit: 40, length: 8 */
    MAIN_MSGu8Can01_Tx05_HSST1_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx05_Motor_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx05_Motor_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx05_Motor_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx05_Motor_Sts = 0;
    }
    /*signalName:Motor_Sts, DataOrder:Intel, startBit: 48, length: 2 */
    MAIN_MSGu8Can01_Tx05_HSST1_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx05_Motor_Sts << 0u) & 0x03u );

    if(MAIN_MSGu8Can01_Tx05_Fault_Level >= (3))
    {
         MAIN_MSGu8Can01_Tx05_Fault_Level = 3;
    }
    else if(MAIN_MSGu8Can01_Tx05_Fault_Level <= (0))
    {
         MAIN_MSGu8Can01_Tx05_Fault_Level = 0;
    }
    /*signalName:Fault_Level, DataOrder:Intel, startBit: 50, length: 2 */
    MAIN_MSGu8Can01_Tx05_HSST1_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx05_Fault_Level << 2u) & 0x0Cu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_05,&MAIN_MSGu8Can01_Tx05_HSST1_buf);
}

void MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx06_HSST2_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx06_HSST2_buf[7] = 0x00u;

    float32 f32LocSteer_Motor_Temp = 0;

    if(MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp >= (210))
    {
         f32LocSteer_Motor_Temp = 210;
    }
    else if(MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp <= (-40))
    {
         f32LocSteer_Motor_Temp = -40;
    }
    else
    {
         f32LocSteer_Motor_Temp = MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp;
    }
    f32LocSteer_Motor_Temp = (f32LocSteer_Motor_Temp - (-40)) / (1);
    MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw = (uint8)(f32LocSteer_Motor_Temp);
    /*signalName:Steer_Motor_Temp, DataOrder:Intel, startBit: 0, length: 8 */
    MAIN_MSGu8Can01_Tx06_HSST2_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw << 0u) & 0xFFu );

    float32 f32LocInput_Voltage = 0;

    if(MAIN_MSGf32Can01_Tx06_Input_Voltage >= (1020))
    {
         f32LocInput_Voltage = 1020;
    }
    else if(MAIN_MSGf32Can01_Tx06_Input_Voltage <= (0))
    {
         f32LocInput_Voltage = 0;
    }
    else
    {
         f32LocInput_Voltage = MAIN_MSGf32Can01_Tx06_Input_Voltage;
    }
    f32LocInput_Voltage = (f32LocInput_Voltage - (0)) / (4);
    MAIN_MSGu8Can01_Tx06_Input_VoltageRaw = (uint8)(f32LocInput_Voltage);
    /*signalName:Input_Voltage, DataOrder:Intel, startBit: 8, length: 8 */
    MAIN_MSGu8Can01_Tx06_HSST2_buf[1] |= ((uint8)(MAIN_MSGu8Can01_Tx06_Input_VoltageRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx06_Input_Current >= (255))
    {
         MAIN_MSGu8Can01_Tx06_Input_Current = 255;
    }
    else if(MAIN_MSGu8Can01_Tx06_Input_Current <= (0))
    {
         MAIN_MSGu8Can01_Tx06_Input_Current = 0;
    }
    /*signalName:Input_Current, DataOrder:Intel, startBit: 16, length: 8 */
    MAIN_MSGu8Can01_Tx06_HSST2_buf[2] |= ((uint8)(MAIN_MSGu8Can01_Tx06_Input_Current << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx06_Internal_FaultCode >= (255))
    {
         MAIN_MSGu8Can01_Tx06_Internal_FaultCode = 255;
    }
    else if(MAIN_MSGu8Can01_Tx06_Internal_FaultCode <= (0))
    {
         MAIN_MSGu8Can01_Tx06_Internal_FaultCode = 0;
    }
    /*signalName:Internal_FaultCode, DataOrder:Intel, startBit: 48, length: 8 */
    MAIN_MSGu8Can01_Tx06_HSST2_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx06_Internal_FaultCode << 0u) & 0xFFu );

    float32 f32LocSoftware_Version = 0;

    if(MAIN_MSGf32Can01_Tx06_Software_Version >= (2.54))
    {
         f32LocSoftware_Version = 2.54;
    }
    else if(MAIN_MSGf32Can01_Tx06_Software_Version <= (0))
    {
         f32LocSoftware_Version = 0;
    }
    else
    {
         f32LocSoftware_Version = MAIN_MSGf32Can01_Tx06_Software_Version;
    }
    f32LocSoftware_Version = (f32LocSoftware_Version - (0)) / (0.01);
    MAIN_MSGu8Can01_Tx06_Software_VersionRaw = (uint8)(f32LocSoftware_Version);
    /*signalName:Software_Version, DataOrder:Intel, startBit: 56, length: 8 */
    MAIN_MSGu8Can01_Tx06_HSST2_buf[7] |= ((uint8)(MAIN_MSGu8Can01_Tx06_Software_VersionRaw << 0u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_06,&MAIN_MSGu8Can01_Tx06_HSST2_buf);
}

void MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[7] = 0x00u;

    float32 f32LocInput_Voltage = 0;

    if(MAIN_MSGf32Can01_Tx07_Input_Voltage >= (1020))
    {
         f32LocInput_Voltage = 1020;
    }
    else if(MAIN_MSGf32Can01_Tx07_Input_Voltage <= (0))
    {
         f32LocInput_Voltage = 0;
    }
    else
    {
         f32LocInput_Voltage = MAIN_MSGf32Can01_Tx07_Input_Voltage;
    }
    f32LocInput_Voltage = (f32LocInput_Voltage - (0)) / (4);
    MAIN_MSGu8Can01_Tx07_Input_VoltageRaw = (uint8)(f32LocInput_Voltage);
    /*signalName:Input_Voltage, DataOrder:Intel, startBit: 0, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx07_Input_VoltageRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx07_Input_Current >= (255))
    {
         MAIN_MSGu8Can01_Tx07_Input_Current = 255;
    }
    else if(MAIN_MSGu8Can01_Tx07_Input_Current <= (0))
    {
         MAIN_MSGu8Can01_Tx07_Input_Current = 0;
    }
    /*signalName:Input_Current, DataOrder:Intel, startBit: 8, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[1] |= ((uint8)(MAIN_MSGu8Can01_Tx07_Input_Current << 0u) & 0xFFu );

    float32 f32LocOutput_Voltage = 0;

    if(MAIN_MSGf32Can01_Tx07_Output_Voltage >= (1020))
    {
         f32LocOutput_Voltage = 1020;
    }
    else if(MAIN_MSGf32Can01_Tx07_Output_Voltage <= (0))
    {
         f32LocOutput_Voltage = 0;
    }
    else
    {
         f32LocOutput_Voltage = MAIN_MSGf32Can01_Tx07_Output_Voltage;
    }
    f32LocOutput_Voltage = (f32LocOutput_Voltage - (0)) / (4);
    MAIN_MSGu8Can01_Tx07_Output_VoltageRaw = (uint8)(f32LocOutput_Voltage);
    /*signalName:Output_Voltage, DataOrder:Intel, startBit: 16, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[2] |= ((uint8)(MAIN_MSGu8Can01_Tx07_Output_VoltageRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx07_Output_Current >= (255))
    {
         MAIN_MSGu8Can01_Tx07_Output_Current = 255;
    }
    else if(MAIN_MSGu8Can01_Tx07_Output_Current <= (0))
    {
         MAIN_MSGu8Can01_Tx07_Output_Current = 0;
    }
    /*signalName:Output_Current, DataOrder:Intel, startBit: 24, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[3] |= ((uint8)(MAIN_MSGu8Can01_Tx07_Output_Current << 0u) & 0xFFu );

    float32 f32LocSDCAC_MotorTemp = 0;

    if(MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp >= (210))
    {
         f32LocSDCAC_MotorTemp = 210;
    }
    else if(MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp <= (-40))
    {
         f32LocSDCAC_MotorTemp = -40;
    }
    else
    {
         f32LocSDCAC_MotorTemp = MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp;
    }
    f32LocSDCAC_MotorTemp = (f32LocSDCAC_MotorTemp - (-40)) / (1);
    MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw = (uint8)(f32LocSDCAC_MotorTemp);
    /*signalName:SDCAC_MotorTemp, DataOrder:Intel, startBit: 32, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[4] |= ((uint8)(MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw << 0u) & 0xFFu );

    float32 f32LocAirCompressor_Temp = 0;

    if(MAIN_MSGf32Can01_Tx07_AirCompressor_Temp >= (210))
    {
         f32LocAirCompressor_Temp = 210;
    }
    else if(MAIN_MSGf32Can01_Tx07_AirCompressor_Temp <= (-40))
    {
         f32LocAirCompressor_Temp = -40;
    }
    else
    {
         f32LocAirCompressor_Temp = MAIN_MSGf32Can01_Tx07_AirCompressor_Temp;
    }
    f32LocAirCompressor_Temp = (f32LocAirCompressor_Temp - (-40)) / (1);
    MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw = (uint8)(f32LocAirCompressor_Temp);
    /*signalName:AirCompressor_Temp, DataOrder:Intel, startBit: 40, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[5] |= ((uint8)(MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts >= (3))
    {
         MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts = 3;
    }
    else if(MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts <= (0))
    {
         MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts = 0;
    }
    /*signalName:Controller_Operating_Sts, DataOrder:Intel, startBit: 48, length: 2 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts << 0u) & 0x03u );

    if(MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts >= (1))
    {
         MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts = 1;
    }
    else if(MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts <= (0))
    {
         MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts = 0;
    }
    /*signalName:Hardwire_Enable_Signal_Sts, DataOrder:Intel, startBit: 50, length: 1 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[6] |= ((uint8)(MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts << 2u) & 0x04u );

    if(MAIN_MSGu8Can01_Tx07_Heartbeat_Signal >= (255))
    {
         MAIN_MSGu8Can01_Tx07_Heartbeat_Signal = 255;
    }
    else if(MAIN_MSGu8Can01_Tx07_Heartbeat_Signal <= (0))
    {
         MAIN_MSGu8Can01_Tx07_Heartbeat_Signal = 0;
    }
    /*signalName:Heartbeat_Signal, DataOrder:Intel, startBit: 56, length: 8 */
    MAIN_MSGu8Can01_Tx07_ACUST1_buf[7] |= ((uint8)(MAIN_MSGu8Can01_Tx07_Heartbeat_Signal << 0u) & 0xFFu );

    MAIN_MSGu8Can01_Tx07_Heartbeat_Signal++;
    if(MAIN_MSGu8Can01_Tx07_Heartbeat_Signal > 255)
    {
         MAIN_MSGu8Can01_Tx07_Heartbeat_Signal = 0;
    }

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_07,&MAIN_MSGu8Can01_Tx07_ACUST1_buf);
}

void MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230(void)
{
    /*Clear Message Buffer first!*/
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[0] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[1] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[2] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[3] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[4] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[5] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[6] = 0x00u;
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[7] = 0x00u;

    float32 f32LocAirCompressor_Motor_Speed = 0;

    if(MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed >= (3000))
    {
         f32LocAirCompressor_Motor_Speed = 3000;
    }
    else if(MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed <= (0))
    {
         f32LocAirCompressor_Motor_Speed = 0;
    }
    else
    {
         f32LocAirCompressor_Motor_Speed = MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed;
    }
    f32LocAirCompressor_Motor_Speed = (f32LocAirCompressor_Motor_Speed - (0)) / (20);
    MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw = (uint8)(f32LocAirCompressor_Motor_Speed);
    /*signalName:AirCompressor_Motor_Speed, DataOrder:Intel, startBit: 0, length: 8 */
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[0] |= ((uint8)(MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw << 0u) & 0xFFu );

    if(MAIN_MSGu8Can01_Tx08_Internal_Fault_Code >= (255))
    {
         MAIN_MSGu8Can01_Tx08_Internal_Fault_Code = 255;
    }
    else if(MAIN_MSGu8Can01_Tx08_Internal_Fault_Code <= (0))
    {
         MAIN_MSGu8Can01_Tx08_Internal_Fault_Code = 0;
    }
    /*signalName:Internal_Fault_Code, DataOrder:Intel, startBit: 48, length: 8 */
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[6] |= ((uint8)(MAIN_MSGu8Can01_Tx08_Internal_Fault_Code << 0u) & 0xFFu );

    float32 f32LocSoftware_Version = 0;

    if(MAIN_MSGf32Can01_Tx08_Software_Version >= (2.54))
    {
         f32LocSoftware_Version = 2.54;
    }
    else if(MAIN_MSGf32Can01_Tx08_Software_Version <= (0))
    {
         f32LocSoftware_Version = 0;
    }
    else
    {
         f32LocSoftware_Version = MAIN_MSGf32Can01_Tx08_Software_Version;
    }
    f32LocSoftware_Version = (f32LocSoftware_Version - (0)) / (0.01);
    MAIN_MSGu8Can01_Tx08_Software_VersionRaw = (uint8)(f32LocSoftware_Version);
    /*signalName:Software_Version, DataOrder:Intel, startBit: 56, length: 8 */
    MAIN_MSGu8Can01_Tx08_ACUST2_buf[7] |= ((uint8)(MAIN_MSGu8Can01_Tx08_Software_VersionRaw << 0u) & 0xFFu );

    Com_SendSignal(ComConf_ComSignal_Com_Signal_CanNodeNum_01_Tx_08,&MAIN_MSGu8Can01_Tx08_ACUST2_buf);
}

#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"
/*-------------------------------------EOF--------------------------------------*/



