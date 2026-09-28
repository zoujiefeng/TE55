 
 
/*<VersionHead>
 * This Configuration File is generated using versions (automatically filled in) as listed below.
 *
 * $Generator__: CanTrcv / AR42.10.0.0                Module Package Version
 * $Editor_____: ISOLAR-A/B 9.2.1_9.2.1                Tool Version
 * $Model______: 2.3.0.4                 ECU Parameter Definition Version
 *

 </VersionHead>*/



#include "CanTrcv_Prv.h"

#define CANTRCV_START_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "CanTrcv_MemMap.h"


/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/ 
const uint8 CanTrcv_TrcvType[]=
{
    CANTRCV_TRCVTYPE_TJA1145
};




/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical" External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
const CanTrcv_FctP_tst CanTrcv_FctP_st[]=
{
    {    // Trcv:CanTrcvChannel_0   Type: TJA1145
        &CanTrcv_Init_TJA1145,
        &CanTrcv_SetOpMode_TJA1145,
        &CanTrcv_GetOpMode_TJA1145,
        &CanTrcv_GetBusWuReason_TJA1145,
        &CanTrcv_SetWakeupMode_TJA1145,
        &CanTrcv_CheckWakeup_TJA1145,
        0,
    }
};
 
/* Links to canTrcv_Generate_CanTrcv_SpiArray_ast and canTrcv_Generate_CanTrcv_FctP_st */
/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical".External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/ 
const uint8 CanTrcv_Cfg_SpiPos_au8[]=
{
    0
};


/* MR12 RULE 5.8 VIOLATION: Warning is  "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/ 
const CanTrcv_Spi_tst CanTrcv_SpiArray_ast[]=
{
    {       // Tja1145 CanTrcvChannel_0
        0,
        1,
        SpiConf_SpiChannel_CAN_Trcv_Tja1145,      // SpiChannel   Spi_ChannelType     Channel
        SpiConf_SpiSequence_SpiSequence_0,      //  Sequence     Spi_SequenceType    Sequence
        0, /* !not configured!, no wakeupinformation is given by CanTrcv_CheckWakeFlag to EcuM! */
        0,  // Starpos for init
        29,  // Startpos for Control Reg
        48,  // Endpos for Control Reg
        0x02u       // CMC or-Mask in normal-mode 
    }

};


/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical".External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/ 
const uint16 CanTrcv_CfgSpiChannel_ao[]=
{
#if (1 == CANNM_ENABLE)
    // Tja1145 CanTrcvChannel_0
    0x1400,   // Reg:0x0A Lock control. Spi write access enable
    0x0207,   // Reg 1 Mode control,07 is normal mode
    0x0800,   // Reg 4 System event enable
    0x4601,   // Reg 23 Transceiver event enable,CAN wakeup detection enable
    0x4c05,   // Reg 26 Data rate,baud rate 500kbs
    0x4e00,   // Reg 27 Identifier 0
    0x5000,   // Reg 28 Identifier 1
    0x5200,   // Reg 29 Identifier 2
    0x5416,   // Reg 2A Identifier 3  NM Rx canid range from 0x580 to 0x5FF
    0x5600,   // Reg 2B Mask0
    0x5800,   // Reg 2C Mask1
    0x5afc,   // Reg 2D Mask2
    0x5c01,   // Reg 2E Mask3
    0x5e08,   // Reg 2F Frame control  data length and data field are evaluted 
    0xd0ff,   // Reg 68 Data Mask0
    0xd2ff,   // Reg 69 Data Mask1
    0xd4ff,   // Reg 6A Data Mask2
    0xd6ff,   // Reg 6B Data Mask3
    0xd8ff,   // Reg 6C Data Mask4
    0xdaff,   // Reg 6D Data Mask5
    0xdcff,   // Reg 6E Data Mask6
    0xdeff,   // Reg 6F Data Mask7
    0x9802,   // Reg 4C WAKE pin enable
    0xc300,   // Reg 61 Not clear register and old errors
    0xc700,   // Reg 63 Not clear register and old errors
    0xc100,   // Reg 60 Not clear register and old errors
    0x4032,   // Reg 0x20 Can control
    0x147F,   // Reg:0x0A Lock control. Spi write access disable
    0x4100,   // Reg 0x20 CAN control
    // Startpos for Control Reg
    0x1400,   // 0 Reg:0x0A Lock control. Spi write access enable
    0xc100,   // 1 Reg 60 Event capture status
    0xc300,   // 2 Reg 61 System event status
    0xc700,   // 3 Reg 63 Transceiver event status
    0x4032,   // 4 Reg 20 CAN control
    0x0207,   // 5 Reg 1 Mode control
    0x9802,   // 6 Reg 4C WAKE pin enable
    0x0600,   // 7 Reg 03 Main status
    0x4500,   // 8 Reg 22 Transceiver status
    0x9700,   // 9 Reg 4b WAKE pin status
    0xc900,   // 10 Reg 64 WAKE pin event status
    0x147F,   // 11 Reg:0x0A Lock control. Spi write access disable
    // Startpos for Diag Reg
    0x0300,   // 12 Reg 01 ModeControl
    0x0700,   // 13 Reg 03 MainStatus
    0x4100,   // 14 Reg 20 CANControl
    0x4500,   // 15 Reg 22 TransceiverStatus
    0x4700,   // 16 Reg 23 TransceiverEventEnable
    0xc300,   // 17 Reg 61 SystemEventStatus
    0xc700,   // 18 Reg 63 TransceiverEventStatus
#else
    // Tja1145 CanTrcvChannel_0
    0x1400,   // Reg:0x0A Lock control. Spi write access enable
    0x0201,   // Reg 1 Mode control
    0x0800,   // Reg 4 System event enable
    0x4600,   // Reg 23 Transceiver event enable
    0x4c05,   // Reg 26 Data rate
    0x4e00,   // Reg 27 Identifier 0
    0x5000,   // Reg 28 Identifier 1
    0x5200,   // Reg 29 Identifier 2
    0x5400,   // Reg 2A Identifier 3
    0x5600,   // Reg 2B Mask0
    0x5800,   // Reg 2C Mask1
    0x5a00,   // Reg 2D Mask2
    0x5c00,   // Reg 2E Mask3
    0x5e00,   // Reg 2F Frame control
    0xd000,   // Reg 68 Data Mask0
    0xd200,   // Reg 69 Data Mask1
    0xd400,   // Reg 6A Data Mask2
    0xd600,   // Reg 6B Data Mask3
    0xd800,   // Reg 6C Data Mask4
    0xda00,   // Reg 6D Data Mask5
    0xdc00,   // Reg 6E Data Mask6
    0xde00,   // Reg 6F Data Mask7
    0x9802,   // Reg 4C WAKE pin enable
    0xc300,   // Reg 61 Not clear register and old errors
    0xc700,   // Reg 63 Not clear register and old errors
    0xc100,   // Reg 60 Not clear register and old errors
    0x4000,   // Reg 0x20 Can control
    0x147F,   // Reg:0x0A Lock control. Spi write access disable
    0x4100,   // Reg 0x20 CAN control
    // Startpos for Control Reg
    0x1400,   // 0 Reg:0x0A Lock control. Spi write access enable
    0xc100,   // 1 Reg 60 Event capture status
    0xc300,   // 2 Reg 61 System event status
    0xc700,   // 3 Reg 63 Transceiver event status
    0x4000,   // 4 Reg 20 CAN control
    0x0201,   // 5 Reg 1 Mode control
    0x9802,   // 6 Reg 4C WAKE pin enable
    0x0602,   // 7 Reg 03 Main status
    0x4500,   // 8 Reg 22 Transceiver status
    0x9700,   // 9 Reg 4b WAKE pin status
    0xc900,   // 10 Reg 64 WAKE pin event status
    0x147F,   // 11 Reg:0x0A Lock control. Spi write access disable
    // Startpos for Diag Reg
    0x0300,   // 12 Reg 01 ModeControl
    0x0700,   // 13 Reg 03 MainStatus
    0x4500,   // 14 Reg 22 TransceiverStatus
    0x4700,   // 15 Reg 23 TransceiverEventEnable
    0x9900,   // 16 Reg 4C WakePinEnable
    0xc300,   // 17 Reg 61 SystemEventStatus
    0xc700,   // 18 Reg 63 TransceiverEventStatus
#endif
};





const EcuM_WakeupSourceType CanTrcv_WakeupSource_ao[]=
{
    0,    //  CanTrcvChannel_0 not configured canTrcvWakeupSourceRef  0
    0,    //  CanTrcvChannel_0 not configured  canTrcvPorWakeupSourceRef  1
    0     //  CanTrcvChannel_0 not configured CanTrcvSyserrWakeupSourceRef  2
};



#define CANTRCV_STOP_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "CanTrcv_MemMap.h"
