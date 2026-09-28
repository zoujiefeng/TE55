# 1 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c"





# 1 ".\\output\\inc/Xcp.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 1
# 19 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 20 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 2
# 1 ".\\output\\inc/ComStack_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h" 1
# 44 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef uint16 PduIdType;



typedef uint16 PduLengthType;
# 57 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef struct
{
    uint8 * SduDataPtr;
    uint8 * MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;
# 71 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef uint8 BusTrcvErrorType;
# 2 ".\\output\\inc/ComStack_Cfg.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 2
# 44 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
typedef uint8 PNCHandleType;


typedef enum
{
    TP_STMIN = 0x00,
    TP_BS = 0x01,
    TP_BC = 0x02
} TPParameterType;


typedef enum
{
    BUFREQ_OK = 0x00,
    BUFREQ_E_NOT_OK = 0x01,
    BUFREQ_E_BUSY = 0x02,
    BUFREQ_E_OVFL = 0x03
} BufReq_ReturnType;


typedef enum
{
    TP_DATACONF = 0x00,
    TP_DATARETRY = 0x01,
    TP_CONFPENDING = 0x02
} TpDataStateType;


typedef struct
{
    TpDataStateType TpDataState;
    PduLengthType TxTpDataCnt;
} RetryInfoType;


typedef uint8 NetworkHandleType;


typedef uint8 IcomConfigIdType;


typedef enum
{
    ICOM_SWITCH_E_OK,
    ICOM_SWITCH_E_FAILED
} IcomSwitch_ErrorType;
# 2 ".\\output\\inc/ComStack_Types.h" 2
# 10 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h" 1
# 249 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
typedef enum{
  XCP_STATE_DISCONNECTED = 0x00u,
  XCP_STATE_DISCONNECTING = 0x01u,
  XCP_STATE_CONNECTED = 0x02u,
  XCP_STATE_RESUME = 0x03u,
  XCP_STATE_DISABLED = 0xF0u
}Xcp_State_t;
# 415 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
typedef struct
{
  uint8 Dummy_u8;
}Xcp_ConfigType;

typedef uint8 Xcp_PacketType_t;
# 446 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
typedef uint32 Xcp_AddrValue;


typedef struct
{
  Xcp_AddrValue AddrValue;
  uint8 Extension;
} Xcp_AddrType_t;

typedef uint8 Xcp_PduIdType;


typedef enum
{
  XCP_ERR_CMD_SYNCH = 0x00u,
  XCP_ERR_CMD_BUSY = 0x10u,
  XCP_ERR_DAQ_ACTIVE = 0x11u,
  XCP_ERR_PGM_ACTIVE = 0x12u,
  XCP_ERR_CMD_UNKNOWN = 0x20u,
  XCP_ERR_CMD_SYNTAX = 0x21u,
  XCP_ERR_OUT_OF_RANGE = 0x22u,
  XCP_ERR_WRITE_PROTECTED = 0x23u,
  XCP_ERR_ACCESS_DENIED = 0x24u,
  XCP_ERR_ACCESS_LOCKED = 0x25u,
  XCP_ERR_PAGE_NOT_VALID = 0x26u,
  XCP_ERR_MODE_NOT_VALID = 0x27u,
  XCP_ERR_SEGMENT_NOT_VALID = 0x28u,
  XCP_ERR_SEQUENCE = 0x29u,
  XCP_ERR_DAQ_CONFIG = 0x2Au,
  XCP_ERR_MEMORY_OVERFLOW = 0x30u,
  XCP_ERR_GENERIC = 0x31u,
  XCP_ERR_VERIFY = 0x32u,
  XCP_ERR_RES_TEMP_NOT_ACCESS = 0x33u,
  XCP_ERR_SUBCMD_UNKNOWN = 0x34u,

  XCP_REPEAT_COMMAND = 0xFCu,
  XCP_NO_ACCESS_HIDE = 0xFDu,
  XCP_NO_RESPONSE = 0xFEu,
  XCP_NO_ERROR = 0xFFu
}Xcp_ErrorCode;


typedef enum
{
  XCP_DAQ_STATE_NO_DAQ = 0x00u,
  XCP_DAQ_STATE_FREE_DAQ = 0x01u,
  XCP_DAQ_STATE_ALLOC_DAQ = 0x02u,
  XCP_DAQ_STATE_ALLOC_ODT = 0x03u,
  XCP_DAQ_STATE_ALLOC_ODT_ENTRY = 0x04u,
  XCP_DAQ_STATE_WRITE_DAQ = 0x05u,
  XCP_DAQ_STATE_PREPARE_START = 0x06u,
  XCP_DAQ_STATE_SHIFTING = 0x07u,
  XCP_DAQ_STATE_STOP_REQUESTED = 0x08u,
  XCP_DAQ_STATE_READY_TO_RUN = 0x09u,
  XCP_DAQ_STATE_RUNNING = 0x0Au
}Xcp_DaqState_t;


typedef enum
{
  XCP_DAQ_NO_OVERLOAD_INDICATION = 0x00u,
  XCP_DAQ_OVERLOAD_INDICATION_PID = 0x01u,
  XCP_DAQ_OVERLOAD_INDICATION_EVENT = 0x02u
}Xcp_Overload_t;




typedef enum
{
  XCP_IDENTIFICATION_FIELD_TYPE_ABSOLUTE = 1u,
  XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_BYTE = 2u,
  XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD = 3u,
  XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD_ALIGNED = 4u
}Xcp_IdField_t;


typedef enum
{
  XCP_ODT_OPTIMIZATION_OM_DEFAULT = 0u,
  XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_16 = 1u,
  XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_32 = 2u,
  XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_64 = 3u,
  XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_ALIGNMENT = 4u,
  XCP_ODT_OPTIMIZATION_OM_MAX_ENTRY_SIZE = 5u
}Xcp_OdtOptimizationType_t;


typedef enum
{
  XCP_CONSISTENCY_ODT = 0u,
  XCP_CONSISTENCY_DAQ = 1u,
  XCP_CONSISTENCY_EVENT = 2u,
  XCP_CONSISTENCY_NONE = 3u
}Xcp_Consistency_t;


typedef enum
{
  XCP_TIMESTAMP_TYPE_NO_TIME_STAMP = 0u,
  XCP_TIMESTAMP_TYPE_ONE_BYTE = 1u,
  XCP_TIMESTAMP_TYPE_TWO_BYTE = 2u,
  XCP_TIMESTAMP_TYPE_FOUR_BYTE = 4u
}Xcp_Timestamp_t;

typedef enum
{
  XCP_CONTEXT_DAQ = 0u,
  XCP_CONTEXT_STIM = 1u,
  XCP_CONTEXT_DOWNLOAD = 2u,
  XCP_CONTEXT_UPLOAD = 3u,
  XCP_CONTEXT_CHECKSUM = 4u
}Xcp_ContextType_t;


typedef enum
{

  XCP_DTO_CTR_DAQ_MODE_INSERT_COUNTER = 0u,
  XCP_DTO_CTR_DAQ_MODE_INSERT_STIM_COUNTER_COPY = 1u,

  XCP_DTO_CTR_STIM_MODE_DO_NOT_CHECK_COUNTER = 2u,
  XCP_DTO_CTR_STIM_MODE_CHECK_COUNTER = 3u,

  XCP_MODE_DEFAULT = 4u
}Xcp_DtoCtrMode_t;

typedef struct
{
  uint8 status_u8;
  uint8 numOfReceivedStimdata_u8;
  uint16 reserved_u16;
}Xcp_EventChannelStatus_t;


typedef struct
{
  Xcp_State_t XcpStatus_en;
  boolean DaqActive_b;
  boolean StimActive_b;
}Xcp_GetStatus_t;

typedef struct
{
  Xcp_State_t XcpState_en;
  uint8 DaqState_u8;
  uint8 StimState_u8;
  uint8 reserved_u8;
}Xcp_GetState_t;

typedef struct
{
  uint8 Buffer_au8[8];
  uint32 Length_u32;
}Xcp_Cto8_t;


typedef enum
{

  XCP_INITIALIZE_SID = 0x00u,
  XCP_GET_VERSION_INFO_SID = 0x01u,
  XCP_TX_CONFIRMATION_SID = 0x02u,
  XCP_RX_INDICATION_SID = 0x03u,
  XCP_MAINFUNCTION_SID = 0x04u,
  XCP_SET_TRANSMISSION_MODE_SID = 0x05u,
  XCP_TRIGGER_TRANSMIT_SID = 0x41u,

  XCP_RECEIVE_SID = 0x50u,
  XCP_TRANSMIT_SID = 0x51u,
  XCP_CMD_SID = 0x52u,
  XCP_CONNECT_SID = 0x53u,
  XCP_DISCONNECT_SID = 0x54u,
  XCP_TRANSPORT_LAYER_CMD_SID = 0x55u,
  XCP_STIM_SID = 0x56u,
  XCP_DAQRAM_SID = 0x57u,
  XCP_UTILS_SID = 0x58u,
  XCP_PRODUCTLINE_SID = 0x60u
}Xcp_DetServiceId_t;


typedef enum
{

  XCP_E_INV_POINTER = 0x01u,
  XCP_E_NOT_INITIALIZED = 0x02u,
  XCP_E_INVALID_PDUID = 0x03u,
  XCP_E_INIT_FAILED = 0x04u,
  XCP_E_PARAM_POINTER = 0x12u,

  XCP_E_DAQ_SIZE_MISMATCH = 0x30u,
  XCP_E_ODT_SIZE_MISMATCH = 0x31u,
  XCP_E_ODTENTRY_SIZE_MISMATCH = 0x32u,

  XCP_E_INVALID_TRANSPORT_LAYER_ID = 0x40u,
  XCP_E_INVALID_PROTOCOL_LAYER_ID = 0x41u,
  XCP_E_INVALID_SOCON_ID = 0x42u,

  XCP_E_ALREADY_CONNECTED = 0x50u,
  XCP_E_DISCONNECT_FAILED = 0x51u,
  XCP_E_RESOURCE_DISABLED = 0x52u,
  XCP_E_CONNECT_FAILED = 0x53u,
  XCP_E_OPEN_SOCON_FAILED = 0x54u,

  XCP_E_DATA_PACKET_EMPTY = 0x60u,
  XCP_E_DATA_PACKET_TOO_LONG = 0x61u,
  XCP_E_DATA_PACKET_NOK = 0x62u,



  XCP_E_RX_STIM_DISABLED = 0x80u,
  XCP_E_STIM_PACKET_NOK = 0x81u,
  XCP_E_NO_BUF_AVAIL = 0x82u,

  XCP_E_DAQRAM_SHIFTING = 0x90u,
  XCP_E_DAQRAM_INCONSISTENCY = 0x91u,
  XCP_E_DAQRAM_ALLOCATION = 0x92u,

  XCP_E_UNEXPECTED_FUNCTION_CALL = 0xA0u,
  XCP_E_INVALIDATE_NVBLOCK_FAILED = 0xA1U,

  XCP_E_ECUSECU_NOK = 0xB0u
}Xcp_DetErrorId_t;
# 11 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 1 ".\\output\\inc/Xcp_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Symbolic_Names_Cfg.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h" 2
# 170 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h"
typedef struct
{
  Std_ReturnType (*TLTransmit_pfct) (const PduInfoType* XcpPacketPtr, uint8 XcpTransportLayerId, Xcp_PduIdType XcpTxPduId);
  void (*TLInit_pfct) (uint8 XcpTransportLayerId, uint8 XcpInitStatus);
  void (*TLConnect_pfct) (uint8 XcpTransportLayerId);
  Std_ReturnType (*TLDisconnect_pfct) (uint8 XcpTransportLayerId);
  void (*TLTransportLayerCmd_pfct) (const PduInfoType* XcpCmdPacketPtr, PduInfoType* XcpResPacketPtr, uint8 XcpTransportLayerId);
  Xcp_PduIdType (*TLGetTxPduId_pfct) (uint8 XcpPacketId, uint16 XcpEventChannelNumber, uint8 XcpTransportLayerId);



  uint8 MaxCto_u8;
  uint16 MaxDto_u16;
  Xcp_Timestamp_t TimestampType_en;
  Xcp_IdField_t IdFieldType_en;
  Xcp_Overload_t OverloadType_en;
  Xcp_OdtOptimizationType_t OdtOptimizationType_en;
  Xcp_Consistency_t Consistency_en;
  uint32 PdRam_u32;
  uint32 EdRam_u32;
}Xcp_PL_TL_Cfg_t;



typedef enum
{
  XCP_RAMSECTION_INVALID = 0u,
  XCP_RAMSECTION_PD = 1u,
  XCP_RAMSECTION_ED = 2u
}Xcp_RamSectionType_t;

typedef struct
{
  uint8* DaqRamPtr_pu8;
  uint32 DaqRamTotalSize_u32;
  Xcp_RamSectionType_t RamSectionType_en;
}Xcp_DaqRamSection_Cfg_t;


typedef struct{
  uint32 DaqRamFreeSize_u32;

  boolean PLConnected_ab[1u];
}Xcp_DaqRamSections_t;
# 236 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h"
typedef struct
{

 uint8 EventChannelDirection_u8;
 uint8 EventChannelNameLength_u8;
 uint8 EventChannelTimeCycle_u8;
 uint8 EventChannelTimeUnit_u8;
 uint8 EventChannelPriority_u8;
 const char* EventChannelName;

 uint8 ScheduleCallFlag_u8;
}Xcp_EventChannel_Cfg_t;



typedef struct
{



  Xcp_PL_TL_Cfg_t TlCfg[1u];



  Xcp_DaqRamSection_Cfg_t DaqRamCfg[1u];






  Xcp_EventChannel_Cfg_t EventChannelCfg[3u];
}Xcp_PlCfgConst_t;






# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 119 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 120 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 276 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h" 2

extern const Xcp_PlCfgConst_t Xcp_PlCfgConst;

extern const Xcp_ConfigType Xcp_Config;






# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 124 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 287 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h" 2






# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 294 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h" 2

extern void Xcp_EventChannel_10ms(void);
extern void Xcp_EventChannel_100ms(void);
extern void Xcp_EventChannel_50ms(void);


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 301 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h" 2
# 2 ".\\output\\inc/Xcp_Cfg.h" 2
# 12 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h" 1
# 29 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct
{
  uint8 CommandCode_u8;
  uint8 Mode_u8;
}Xcp_CmdConnect_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Resource_u8;
  uint8 CommModeBasic_u8;
  uint8 MaxCto_u8;
  uint16 MaxDto_u16;
  uint8 XcpProtocolLayerVersion_u8;
  uint8 XcpTransportLayerVersion_u8;
}Xcp_ResConnect_t;
# 61 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct
{
  uint8 CommandCode_u8;
}Xcp_CmdDisconnect_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResDisconnect_t;
# 87 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct
{
  uint8 CommandCode_u8;
}Xcp_CmdGetStatus_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Status_u8;
  uint8 ProtectionStatus_u8;
  uint8 Reserved_u8;
  uint16 SessionConfigID_u16;
}Xcp_ResGetStatus_t;
# 117 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct
{
  uint8 CommandCode_u8;
}Xcp_CmdSynch_t;
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdGetCommModeInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint8 CommModeOptional_u8;
  uint8 Reserved2_u8;
  uint8 MaxBs_u8;
  uint8 MinSt_u8;
  uint8 QueueSize_u8;
  uint8 XcpDriverVerNum_u8;
}Xcp_ResGetCommModeInfo_t;
# 173 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 ReqIdentificationType_u8;
}Xcp_CmdGetId_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Mode_u8;
  uint16 Reserved_u16;
  uint32 Length_u32;



}Xcp_ResGetId_t;
# 207 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint16 SessionConfigID_u16;
}Xcp_CmdSetRequest_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetRequest_t;
# 235 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint8 Resource_u8;
}Xcp_CmdGetSeed_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 LengthOfSeed_u8;
  uint8 Seed_au8[8u -2u];
}Xcp_ResGetSeed_t;
# 266 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 LengthOfKey_u8;
  uint8 Key_au8[8u -2u];
}Xcp_CmdUnlock_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 ProtectionStatus_u8;
}Xcp_ResUnlock_t;
# 294 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint8 Reserved2_u8;
  uint8 AddrExtension_u8;
  uint32 Address_u32;
}Xcp_CmdSetMta_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetMta_t;
# 323 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
}Xcp_CmdUpload_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 DataElement_au8[8u -1u];
}Xcp_ResUpload_t;
# 350 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
  uint8 Reserved_u8;
  uint8 AddrExtension_u8;
  uint32 Address_u32;
}Xcp_CmdShortUpload_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 DataElement_au8[8u -1u];
}Xcp_ResShortUpload_t;
# 381 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 Reserved_u16;
  uint32 BlockSize_u32;
}Xcp_CmdBuildChecksum_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 ChecksumType_u8;
  uint16 Reserved_u16;
  uint32 Checksum_u32;
}Xcp_ResBuildChecksum_t;
# 413 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 SubCmdcode_u8;
  uint8 Parameters_au8[8u -2u];
}Xcp_CmdTransportLayerCmd_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Data_au8[8u -1u];
}Xcp_ResTransportLayerCmd_t;
# 443 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 SubCommandCode_u8;
  uint8 Parameters_au8[8u -2u];
}Xcp_CmdUserCmd_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 DataElement_au8[8u -1u];
}Xcp_ResUserCmd_t;
# 478 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
  uint8 DataElement_au8[8u -2u];
}Xcp_CmdDownload_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResDownload_t;
# 509 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
  uint8 DataElement_au8[8u -2u];
}Xcp_CmdDownloadNext_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResDownloadNext_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 ErrCode_u8;
  uint8 NumOfDataElements_u8;
}Xcp_ErrResDownloadNext_t;
# 546 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 DataElement_au8[8u -1u];
}Xcp_CmdDownloadMax_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResDownloadMax_t;
# 577 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
  uint8 Reserved_u8;
  uint8 AddrExtension_u8;
  uint32 Address_u32;



}Xcp_CmdShortDownload_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResShortDownload_t;
# 611 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 ShiftValue_u8;
  uint16 ANDmask_u16;
  uint16 XORmask_u16;
}Xcp_CmdModifyBits_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResModifyBits_t;
# 646 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint8 LogicalDataSegNum_u8;
  uint8 LogicalDataPgNum_u8;
}Xcp_CmdSetCalPage_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetCalPage_t;
# 676 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 AccessMode_u8;
  uint8 LogicalDataSegNum_u8;
}Xcp_CmdGetCalPage_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint8 Reserved2_u8;
  uint8 LogicalDataPgNum_u8;
}Xcp_ResGetCalPage_t;
# 708 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct
{
  uint8 CommandCode_u8;
}Xcp_CmdGetPagProcessorInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 MaxSegment_u8;
  uint8 PagProperties_u8;
}Xcp_ResGetPagProcessorInfo_t;
# 741 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint8 SegmentNum_u8;
  uint8 SegmentInfo_u8;
  uint8 MappingIndex_u8;
}Xcp_CmdGetSegmentInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint16 Reserved_u16;
  uint32 BasicInfo_u32;
}Xcp_ResGetSegmentInfo_Mode0_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 MaxPages_u8;
  uint8 AddrExtension_u8;
  uint8 MaxMapping_u8;
  uint8 CompressionMethod_u8;
  uint8 EncryptionMethod_u8;
}Xcp_ResGetSegmentInfo_Mode1_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint16 Reserved_u16;
  uint32 MappingInfo_u32;
}Xcp_ResGetSegmentInfo_Mode2_t;
# 793 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint8 SegmentNum_u8;
  uint8 PageNumber_u8;
}Xcp_CmdGetPageInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 PageProperties_u8;
  uint8 InitSegment_u8;
}Xcp_ResGetPageInfo_t;
# 825 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint8 SegmentNum_u8;
}Xcp_CmdSetSegmentMode_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetSegmentMode_t;
# 854 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint8 SegmentNum_u8;
}Xcp_CmdGetSegmentMode_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint8 Mode_u8;
}Xcp_ResGetSegmentMode_t;
# 885 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 LogicalDataSegNumSource_u8;
  uint8 LogicalDataSegPageNumSource_u8;
  uint8 LogicalDataSegNumDest_u8;
  uint8 LogicalDataSegPageNumDest_u8;
}Xcp_CmdCopyCalPage_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResCopyCalPage_t;
# 921 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqListNum_u16;
  uint8 OdtNum_u8;
  uint8 OdtEntryNum_u8;
}Xcp_CmdSetDaqPtr_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetDaqPtr_t;
# 952 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 BitOffset_u8;
  uint8 Size_u8;
  uint8 AddrExtension_u8;
  uint32 Address_u32;
}Xcp_CmdWriteDaq_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResWriteDaq_t;
# 983 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint16 DaqListNum_u16;
  uint16 EventChannelNum_u16;
  uint8 TransmissionRatePrescaler_u8;
  uint8 DaqListPriority_u8;
}Xcp_CmdSetDaqListMode_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetDaqListMode_t;
# 1015 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint16 DaqListNum_u16;
}Xcp_CmdStartStopDaqList_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 FirstPid_u8;
}Xcp_ResStartStopDaqList_t;
# 1045 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
}Xcp_CmdStartStopSynch_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResStartStopSynch_t;
# 1078 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumDaq_u8;
  uint8 Data_au8[8u -2u];
}Xcp_CmdWriteDaqMultiple_t;


typedef struct {
  uint16 DummySelfDefined_u16;
  uint8 BitOffset_u8;
  uint8 Size_u8;
  uint32 Address_u32;
  uint8 AddrExtension_u8;
  uint8 Dummy_u8;
}Xcp_CmdWriteDaqMultiple_SingleElement_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResWriteDaqMultiple_t;
# 1117 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdReadDaq_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 BitOffset_u8;
  uint8 SizeOfDaqElement_u8;
  uint8 AddrExtension_u8;
  uint32 Address_u32;
}Xcp_ResReadDaq_t;
# 1148 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdGetDaqClock_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint16 Reserved_u16;
  uint32 Timestamp_u32;
}Xcp_ResGetDaqClock_t;
# 1178 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdGetDaqProcInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 DaqProperties_u8;
  uint16 MaxDaq_u16;
  uint16 MaxEventChannel_u16;
  uint8 MinDaq_u8;
  uint8 DaqKeyByte_u8;
}Xcp_ResGetDaqProcInfo_t;
# 1210 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdGetDaqResolutionInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 GranularityOdtEntrySizeDaq_u8;
  uint8 MaxOdtEntrySizeDaq_u8;
  uint8 GranularityOdtEntrySizeStim_u8;
  uint8 MaxOdtEntrySizeStim_u8;
  uint8 TimeStampMode_u8;
  uint16 TimeStampTicks_u16;
}Xcp_ResGetDaqResolutionInfo_t;
# 1243 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqListNum_u16;
}Xcp_CmdGetDaqListMode_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Mode_u8;
  uint16 Reserved_u16;
  uint16 EventChannelNum_u16;
  uint8 Prescaler_u8;
  uint8 DaqListPriority_u8;
}Xcp_ResGetDaqListMode_t;
# 1277 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 EventChannelNum_u16;
}Xcp_CmdGetDaqEventInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 DaqEventProperties_u8;
  uint8 MaxDaqList_u8;
  uint8 EventChannelNameLength_u8;
  uint8 EventChannelTimeCycle_u8;
  uint8 EventChannelTimeUnit_u8;
  uint8 EventChannelPriority_u8;
}Xcp_ResGetDaqEventInfo_t;
# 1317 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqListNum_u16;
}Xcp_CmdClrDaqList_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResClrDaqList_t;
# 1346 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqListNum_u16;
}Xcp_CmdGetDaqListInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 DaqListProperties_u8;
  uint8 MaxOdt_u8;
  uint8 MaxOdtEntries_u8;
  uint16 FixedEvent_u16;
}Xcp_ResGetDaqListInfo_t;
# 1384 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdFreeDaq_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResFreeDaq_t;
# 1411 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqCount_u16;
}Xcp_CmdAllocDaq_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResAllocDaq_t;
# 1440 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqListNum_u16;
  uint8 OdtCount_u8;
}Xcp_CmdAllocOdt_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResAllocOdt_t;
# 1470 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Reserved_u8;
  uint16 DaqListNum_u16;
  uint8 OdtNum_u8;
  uint8 OdtEntriesCount_u8;
}Xcp_CmdAllocOdtEntry_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResAllocOdtEntry_t;
# 1506 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdProgramStart_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint8 CommModePgm_u8;
  uint8 MaxCtoPgm_u8;
  uint8 MaxBsPgm_u8;
  uint8 MinStPgm_u8;
  uint8 QueSizePgm_u8;
}Xcp_ResProgramStart_t;
# 1539 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint16 Reserved_u16;
  uint32 ClearRange_u32;
}Xcp_CmdProgramClear_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramClear_t;
# 1570 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
  uint8 DataElement_au8[8u -2u];
}Xcp_CmdProgram_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgram_t;
# 1599 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdProgramReset_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramReset_t;
# 1626 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
}Xcp_CmdGetProgramProcessorInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 PgmProperties_u8;
  uint8 MaxSector_u8;
}Xcp_ResGetProgramProcessorInfo_t;
# 1659 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 Mode_u8;
  uint8 SectorNum_u8;
}Xcp_CmdGetSectorInfo_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 ClrSequenceNum_u8;
  uint8 PgmSequenceNum_u8;
  uint8 PgmMethod_u8;
  uint32 SectorInfo_u32;
}Xcp_ResGetSectorInfo_Mode0_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 ClrSequenceNum_u8;
  uint8 PgmSequenceNum_u8;
  uint8 PgmMethod_u8;
  uint32 SectorInfo_u32;
}Xcp_ResGetSectorInfo_Mode1_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 SectorNameLength_u8;
}Xcp_ResGetSectorInfo_Mode2_t;
# 1707 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NotUsed_u8;
  uint8 CodeSize_u16;
}Xcp_CmdProgramPrepare_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramPrepare_t;
# 1736 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 CompressionMethod_u8;
  uint8 EncryptionMethod_u8;
  uint8 PgmMethod_u8;
  uint8 AccessMethod_u8;
}Xcp_CmdProgramFormat_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramFormat_t;
# 1768 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 NumOfDataElements_u8;
  uint8 DataElement_au8[8u -2u];
}Xcp_CmdProgramNext_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramNext_t;
# 1798 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 DataElement_au8[8u -2u];
}Xcp_CmdProgramMax_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramMax_t;
# 1826 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 VerficationMode_u8;
  uint16 VerficationType_u16;
  uint32 VerficationValue_u32;
}Xcp_CmdProgramVerify_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResProgramVerify_t;
# 1874 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct
{
  uint8 CommandCode_u8;
  uint8 SubCommandCode_u8;
}Xcp_SubCmdGetVersion_t;



typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint8 XcpMajorProtocolLayerVersion_u8;
  uint8 XcpMinorProtocolLayerVersion_u8;
  uint8 XcpMajorTransportLayerVersion_u8;
  uint8 XcpMinorTransportLayerVersion_u8;
}Xcp_SubResGetVersion_t;
# 1919 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 SubCommandCode_u8;
  uint16 DaqListNum_u16;
  uint8 DaqPackedMode_u8;
  uint8 DpmTimestampMode_u8;
  uint16 DpmSampleCount_u16;
}Xcp_CmdSetDaqPackedMode_t;


typedef struct {
  uint8 PacketId_u8;
}Xcp_ResSetDaqPackedMode_t;
# 1942 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 CommandCode_u8;
  uint8 SubCommandCode_u8;
  uint16 DaqListNum_u16;
}Xcp_SubCmdGetDaqPackedMode_t;


typedef struct {
  uint8 PacketId_u8;
  uint8 Reserved_u8;
  uint8 DaqPackedMode_u8;
  uint8 DpmTimestampMode_u8;
  uint16 DpmSampleCount_u16;
}Xcp_SubResGetDaqPackedMode_t;
# 1978 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 PacketId_u8;
  uint8 EventCode_u8;
}Xcp_Ev_t;
# 2034 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 PacketId_u8;
  uint8 EventCode_u8;
  uint8 InfoType_u8;
  uint8 Reserved_u8;
  uint16 Number_u16;
}Xcp_EvStimTimeout_t;
# 2051 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
typedef struct {
  uint8 PacketId_u8;
  uint8 ServiceReqCode_u8;
  uint8 OptionalServData_au8[8u - 2u];
}Xcp_ResService_t;
# 13 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2


# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h" 1
# 30 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 147 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 148 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h" 2
# 40 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h"
extern Std_ReturnType Xcp_CanTransmit(const PduInfoType* XcpPacketPtr, uint8 XcpTransportLayerId, Xcp_PduIdType XcpTxPduId);


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 152 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 153 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 44 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h" 2


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h" 2
# 55 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h"
extern void Xcp_CanInit(uint8 XcpTransportLayerId, uint8 XcpInitStatus);







extern void Xcp_CanConnect(uint8 XcpTransportLayerId);







extern Std_ReturnType Xcp_CanDisconnect(uint8 XcpTransportLayerId);
# 81 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h"
extern void Xcp_CanTransportLayerCmd(const PduInfoType* XcpCmdPacketPtr, PduInfoType* XcpResPacketPtr, uint8 XcpTransportLayerId);
# 91 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h"
extern Xcp_PduIdType Xcp_CanGetTxPduId(uint8 XcpPacketId, uint16 XcpEventChannelNumber, uint8 XcpTransportLayerId);
# 106 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\XcpOnCan.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
# 1 ".\\output\\inc/rba_BswSrv.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv_Cfg.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2
# 69 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2
extern void* rba_BswSrv_MemCopy(void* xDest_pv, const void* xSrc_pcv, uint32 numBytes_u32);
extern void* rba_BswSrv_MemSet(void* xDest_pv, sint32 xPattern_s32, uint32 numBytes_u32);
extern sint32 rba_BswSrv_MemCompare(const void* xSrc1_pcv, const void* xSrc2_pcv, uint32 numBytes_u32);

# 1 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv_MemMap.h" 1
# 75 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h" 2



static __inline__ uint32 rba_BswSrv_CountLeadingZero32(uint32 Input_u32);
static __inline__ uint32 rba_BswSrv_ByteOrderSwap32(uint32 Input_u32);
static __inline__ uint16 rba_BswSrv_ByteOrderSwap16(uint16 Input_u16);

static __inline__ void rba_BswSrv_MemCopy32(uint32* xDest_pu32, const uint32* xSrc_pcu32, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemCopy16(uint16* xDest_pu16, const uint16* xSrc_pcu16, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemCopy8(uint8* xDest_pu8, const uint8* xSrc_pcu8, uint32 numBytes_u32);

static __inline__ uint32 rba_BswSrv_MemCompare32(const uint32* xSrc1_pcu32, const uint32* xSrc2_pcu32, uint32 numBytes_u32);
static __inline__ uint32 rba_BswSrv_MemCompare16(const uint16* xSrc1_pcu16, const uint16* xSrc2_pcu16, uint32 numBytes_u32);
static __inline__ uint32 rba_BswSrv_MemCompare8(const uint8* xSrc1_pcu8, const uint8* xSrc2_pcu8, uint32 numBytes_u32);

static __inline__ void rba_BswSrv_MemSet32(uint32* xDest_pu32, uint32 xPattern_u32, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemSet16(uint16* xDest_pu16, uint32 xPattern_u32, uint32 numBytes_u32);
static __inline__ void rba_BswSrv_MemSet8(uint8* xDest_pu8, uint32 xPattern_u32, uint32 numBytes_u32);
# 119 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_CountLeadingZero32(uint32 Input_u32)
{
    uint32 numLeadingZero_u32;


    numLeadingZero_u32 = 32;
    while(Input_u32 != 0u)
    {
        Input_u32 >>= 1;
        numLeadingZero_u32--;
    }

    return numLeadingZero_u32;
}
# 148 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_ByteOrderSwap32(uint32 Input_u32)
{
    uint32 retVal_u32;

    retVal_u32 = (Input_u32 << 24) | ((Input_u32 & 0xFF00u) << 8) | ((Input_u32 & 0x00FF0000u) >> 8) | (Input_u32 >> 24);

    return retVal_u32;
}
# 171 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint16 rba_BswSrv_ByteOrderSwap16(uint16 Input_u16)
{
    uint16 retVal_u16;

    retVal_u16 = ((Input_u16 & 0x00FFu) << 8) | ((Input_u16 & 0xFF00u) >> 8);

    return retVal_u16;
}
# 225 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemCopy32(uint32* xDest_pu32, const uint32* xSrc_pcu32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0u; ctLoop_u32 < (numBytes_u32 / 4u); ctLoop_u32++)
    {
        *xDest_pu32 = *xSrc_pcu32;
        xDest_pu32++;
        xSrc_pcu32++;
    }

    return;
}
# 254 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemCopy16(uint16* xDest_pu16, const uint16* xSrc_pcu16, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0u; ctLoop_u32 < (numBytes_u32 / 2u); ctLoop_u32++)
    {
        *xDest_pu16 = *xSrc_pcu16;
        xDest_pu16++;
        xSrc_pcu16++;
    }

    return;
}
# 281 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemCopy8(uint8* xDest_pu8, const uint8* xSrc_pcu8, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < numBytes_u32; ctLoop_u32++)
    {
        *xDest_pu8 = *xSrc_pcu8;
        xDest_pu8++;
        xSrc_pcu8++;
    }

    return;
}
# 349 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_MemCompare32(const uint32* xSrc1_pcu32, const uint32* xSrc2_pcu32, uint32 numBytes_u32)
{
    uint32 stEqual_u32 = 0u;
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0u; ctLoop_u32 < (numBytes_u32 / 4u); ctLoop_u32++)
    {

        if (*xSrc1_pcu32++ != *xSrc2_pcu32++)
        {
            stEqual_u32 = 1u;
            break;
        }
    }
    return stEqual_u32;
}
# 383 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_MemCompare16(const uint16* xSrc1_pcu16, const uint16* xSrc2_pcu16, uint32 numBytes_u32)
{
    uint32 stEqual_u32 = 0u;
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < (numBytes_u32 / 2u); ctLoop_u32++)
    {

        if (*xSrc1_pcu16++ != *xSrc2_pcu16++)
        {
            stEqual_u32 = 1u;
            break;
        }
    }
    return stEqual_u32;
}
# 416 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ uint32 rba_BswSrv_MemCompare8(const uint8* xSrc1_pcu8, const uint8* xSrc2_pcu8, uint32 numBytes_u32)
{
    uint32 stEqual_u32 = 0u;
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < numBytes_u32; ctLoop_u32++)
    {

        if (*xSrc1_pcu8++ != *xSrc2_pcu8++)
        {
            stEqual_u32 = 1u;
            break;
        }
    }
    return stEqual_u32;
}
# 478 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemSet32(uint32* xDest_pu32, uint32 xPattern_u32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < (numBytes_u32 / 4u); ctLoop_u32++)
    {
        *xDest_pu32 = xPattern_u32;
        xDest_pu32++;
    }
    return;
}
# 505 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemSet16(uint16* xDest_pu16, uint32 xPattern_u32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < (numBytes_u32 / 2u); ctLoop_u32++)
    {
        *xDest_pu16 = (uint16)xPattern_u32;
        xDest_pu16++;
    }
    return;
}
# 530 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
static __inline__ void rba_BswSrv_MemSet8(uint8* xDest_pu8, uint32 xPattern_u32, uint32 numBytes_u32)
{
    uint32 ctLoop_u32;

    for(ctLoop_u32 = 0; ctLoop_u32 < numBytes_u32; ctLoop_u32++)
    {
        *xDest_pu8 = (uint8)xPattern_u32;
        xDest_pu8++;
    }
    return;
}
# 2 ".\\output\\inc/rba_BswSrv.h" 2
# 27 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 70 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 87 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
extern Xcp_EventChannelStatus_t Xcp_EventChannel(uint16 XcpEventChannelNumber_u16);


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 91 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 94 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2







extern void Xcp_Init(const Xcp_ConfigType* Xcp_ConfigPtr);







extern void Xcp_MainFunction(void);
# 125 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
extern void Xcp_SetControlMode(uint8 Xcp_CtlMode_u8);
# 142 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
extern uint8 Xcp_GetControlMode(void);







extern uint8 Xcp_GetConnectedTransportLayerId(uint8 ProtocolLayerId);
# 170 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
extern Xcp_GetState_t Xcp_GetStateForCalSup(void);
# 191 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
extern Xcp_GetStatus_t Xcp_GetStatus(void);
# 205 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 2
# 2 ".\\output\\inc/Xcp.h" 2
# 7 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c" 2
# 1 ".\\output\\inc/Xcp_Priv.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
# 1 ".\\output\\inc/Xcp_Cfg_SchM.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Cfg_SchM.h" 1




# 1 ".\\output\\inc/SchM.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\SchM\\SchM.h" 1
# 2 ".\\output\\inc/SchM.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Cfg_SchM.h" 2
# 20 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Cfg_SchM.h"
static __inline__ void SchM_Enter_Xcp_SendingShort(void);
static __inline__ void SchM_Exit_Xcp_SendingShort(void);
static __inline__ void SchM_Enter_Xcp_SendingLong(void);
static __inline__ void SchM_Exit_Xcp_SendingLong(void);
static __inline__ void SchM_Enter_Xcp_DownloadNoNest(void);
static __inline__ void SchM_Exit_Xcp_DownloadNoNest(void);
static __inline__ void SchM_Enter_Xcp_BufferAccessActiveNoNest(void);
static __inline__ void SchM_Exit_Xcp_BufferAccessActiveNoNest(void);
static __inline__ void SchM_Enter_Xcp_EthMainFunc(void);
static __inline__ void SchM_Exit_Xcp_EthMainFunc(void);
static __inline__ void SchM_Enter_Xcp_CanBuffering(void);
static __inline__ void SchM_Exit_Xcp_CanBuffering(void);
static __inline__ void SchM_Enter_Xcp_FrTransmit(void);
static __inline__ void SchM_Exit_Xcp_FrTransmit(void);
static __inline__ void SchM_Enter_Xcp_GetTimestamp(void);
static __inline__ void SchM_Exit_Xcp_GetTimestamp(void);
static __inline__ void SchM_Enter_Xcp_DaqRam(void);
static __inline__ void SchM_Exit_Xcp_DaqRam(void);

static __inline__ void SchM_Enter_Xcp_SendingShort(void)
{



}

static __inline__ void SchM_Exit_Xcp_SendingShort(void)
{



}

static __inline__ void SchM_Enter_Xcp_SendingLong(void)
{



}

static __inline__ void SchM_Exit_Xcp_SendingLong(void)
{



}

static __inline__ void SchM_Enter_Xcp_DownloadNoNest(void)
{

}

static __inline__ void SchM_Exit_Xcp_DownloadNoNest(void)
{

}

static __inline__ void SchM_Enter_Xcp_BufferAccessActiveNoNest(void)
{

}

static __inline__ void SchM_Exit_Xcp_BufferAccessActiveNoNest(void)
{

}

static __inline__ void SchM_Enter_Xcp_EthMainFunc(void)
{

}

static __inline__ void SchM_Exit_Xcp_EthMainFunc(void)
{

}

static __inline__ void SchM_Enter_Xcp_CanBuffering(void)
{

}

static __inline__ void SchM_Exit_Xcp_CanBuffering(void)
{

}

static __inline__ void SchM_Enter_Xcp_FrTransmit(void)
{

}

static __inline__ void SchM_Exit_Xcp_FrTransmit(void)
{

}

static __inline__ void SchM_Enter_Xcp_GetTimestamp(void)
{

}

static __inline__ void SchM_Exit_Xcp_GetTimestamp(void)
{

}

static __inline__ void SchM_Enter_Xcp_DaqRam(void)
{

}

static __inline__ void SchM_Exit_Xcp_DaqRam(void)
{

}
# 2 ".\\output\\inc/Xcp_Cfg_SchM.h" 2
# 10 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp.h" 1
# 10 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 32 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h" 2
# 45 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_BuildChecksumTrigger(const Xcp_AddrType_t XcpAddr, uint32 BlockSize, uint8 ProtocolLayerId);
# 59 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_BuildChecksumMainFunction(uint32* ChecksumPtr, uint8* ChecksumType, uint8 ProtocolLayerId);
# 75 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_SetCalPage(uint8 Mode, uint8 SegNum, uint8 PageNum, uint8 ProtocolLayerId);
# 89 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_GetCalPage(uint8 Mode, uint8 SegNum, uint8* PageNum, uint8 ProtocolLayerId);
# 105 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_CopyCalPage(uint8 SegNumSrc, uint8 PageNumSrc, uint8 SegNumDst, uint8 PageNumDst, uint8 ProtocolLayerId);
# 161 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern void XcpAppl_CmdReceived(const uint8* XcpCmd, uint8 Length, uint8 ProtocolLayerId);
# 239 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Std_ReturnType XcpAppl_Init(uint8 XcpInitStatus, uint8 ProtocolLayerId);
# 297 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_MemRead(uint8* AddrPtrDst, const Xcp_AddrType_t XcpAddrSrc, uint8 Length, uint8 ProtocolLayerId);
# 312 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_MemWrite(Xcp_AddrType_t XcpAddrDst, const uint8* AddrPtrSrc, uint8 Length, uint8 ProtocolLayerId);
# 323 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_MemWriteMainFunction(uint8 ProtocolLayerId);
# 376 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern uint8 XcpAppl_GetSeed(uint8** SeedAdrPtr, uint8 ResourceType, uint8 ProtocolLayerId);
# 397 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern Xcp_ErrorCode XcpAppl_Unlock(const uint8* KeyPtr, uint8 KeyPartLength, uint8 RemainingKeyLength, uint8* UnlockedResource, uint8 ProtocolLayerId);
# 411 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
extern uint32 XcpAppl_GetTimestamp(void);
# 462 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 463 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h" 2
# 11 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2




# 1 ".\\output\\inc/Det.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 1
# 27 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 2
# 1 ".\\output\\inc/Rte_Det_Type.h" 1
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h"
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
# 1 ".\\output\\inc/..\\..\\rte\\Rte.h" 1
# 18 ".\\output\\inc/..\\..\\rte\\Rte.h"
# 1 ".\\output\\inc/Rte_UserCfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_UserCfg.h" 1
# 23 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_UserCfg.h"
# 1 ".\\output\\inc/Can.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can.h" 1





# 1 ".\\output\\inc/Can_17_McmCan.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
# 1 ".\\output\\inc/IfxCan_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_reg.h" 1
# 62 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef struct _Ifx_CAN_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_CAN_ACCEN0_Bits;


typedef struct _Ifx_CAN_ACCENCTR0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_CAN_ACCENCTR0_Bits;


typedef struct _Ifx_CAN_BUFADR_Bits
{
    Ifx_UReg_32Bit TXBUF:14;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit RXBUF:14;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_BUFADR_Bits;


typedef struct _Ifx_CAN_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_CAN_CLC_Bits;


typedef struct _Ifx_CAN_DB_Bits
{
    Ifx_UReg_8Bit DB:8;
} Ifx_CAN_DB_Bits;


typedef struct _Ifx_CAN_EXTMSG_F0_Bits
{
    Ifx_UReg_32Bit EFID1:29;
    Ifx_UReg_32Bit EFEC:3;
} Ifx_CAN_EXTMSG_F0_Bits;


typedef struct _Ifx_CAN_EXTMSG_F1_Bits
{
    Ifx_UReg_32Bit EFID2:29;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit EFT:2;
} Ifx_CAN_EXTMSG_F1_Bits;


typedef struct _Ifx_CAN_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:16;
} Ifx_CAN_ID_Bits;


typedef struct _Ifx_CAN_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_CAN_KRST0_Bits;


typedef struct _Ifx_CAN_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CAN_KRST1_Bits;


typedef struct _Ifx_CAN_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CAN_KRSTCLR_Bits;


typedef struct _Ifx_CAN_MCR_Bits
{
    Ifx_UReg_32Bit CLKSEL0:2;
    Ifx_UReg_32Bit CLKSEL1:2;
    Ifx_UReg_32Bit CLKSEL2:2;
    Ifx_UReg_32Bit CLKSEL3:2;
    Ifx_UReg_32Bit reserved_8:16;
    Ifx_UReg_32Bit NODE:3;
    Ifx_UReg_32Bit DXCM:1;
    Ifx_UReg_32Bit RBUSY:1;
    Ifx_UReg_32Bit RINIT:1;
    Ifx_UReg_32Bit CI:1;
    Ifx_UReg_32Bit CCCE:1;
} Ifx_CAN_MCR_Bits;


typedef struct _Ifx_CAN_MECR_Bits
{
    Ifx_UReg_32Bit TH:16;
    Ifx_UReg_32Bit INP:4;
    Ifx_UReg_32Bit NODE:3;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit ANYED:1;
    Ifx_UReg_32Bit CAPEIE:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit DEPTH:3;
    Ifx_UReg_32Bit SOF:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_CAN_MECR_Bits;


typedef struct _Ifx_CAN_MESTAT_Bits
{
    Ifx_UReg_32Bit CAPT:16;
    Ifx_UReg_32Bit CAPRED:1;
    Ifx_UReg_32Bit CAPE:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_CAN_MESTAT_Bits;


typedef struct _Ifx_CAN_N_ACCENNODE0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_CAN_N_ACCENNODE0_Bits;


typedef struct _Ifx_CAN_N_CCCR_Bits
{
    Ifx_UReg_32Bit INIT:1;
    Ifx_UReg_32Bit CCE:1;
    Ifx_UReg_32Bit ASM:1;
    Ifx_UReg_32Bit CSA:1;
    Ifx_UReg_32Bit CSR:1;
    Ifx_UReg_32Bit MON:1;
    Ifx_UReg_32Bit DAR:1;
    Ifx_UReg_32Bit TEST:1;
    Ifx_UReg_32Bit FDOE:1;
    Ifx_UReg_32Bit BRSE:1;
    Ifx_UReg_32Bit reserved_10:2;
    Ifx_UReg_32Bit PXHD:1;
    Ifx_UReg_32Bit EFBI:1;
    Ifx_UReg_32Bit TXP:1;
    Ifx_UReg_32Bit NISO:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_CCCR_Bits;


typedef struct _Ifx_CAN_N_CREL_Bits
{
    Ifx_UReg_32Bit DAY:8;
    Ifx_UReg_32Bit MON:8;
    Ifx_UReg_32Bit YEAR:4;
    Ifx_UReg_32Bit SUBSTEP:4;
    Ifx_UReg_32Bit STEP:4;
    Ifx_UReg_32Bit REL:4;
} Ifx_CAN_N_CREL_Bits;


typedef struct _Ifx_CAN_N_DBTP_Bits
{
    Ifx_UReg_32Bit DSJW:4;
    Ifx_UReg_32Bit DTSEG2:4;
    Ifx_UReg_32Bit DTSEG1:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit DBRP:5;
    Ifx_UReg_32Bit reserved_21:2;
    Ifx_UReg_32Bit TDC:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_DBTP_Bits;


typedef struct _Ifx_CAN_N_ECR_Bits
{
    Ifx_UReg_32Bit TEC:8;
    Ifx_UReg_32Bit REC:7;
    Ifx_UReg_32Bit RP:1;
    Ifx_UReg_32Bit CEL:8;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_ECR_Bits;


typedef struct _Ifx_CAN_N_ENDADR_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit END:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_ENDADR_Bits;


typedef struct _Ifx_CAN_N_ENDN_Bits
{
    Ifx_UReg_32Bit ETV:32;
} Ifx_CAN_N_ENDN_Bits;


typedef struct _Ifx_CAN_N_GFC_Bits
{
    Ifx_UReg_32Bit RRFE:1;
    Ifx_UReg_32Bit RRFS:1;
    Ifx_UReg_32Bit ANFE:2;
    Ifx_UReg_32Bit ANFS:2;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_CAN_N_GFC_Bits;


typedef struct _Ifx_CAN_N_GRINT1_Bits
{
    Ifx_UReg_32Bit TEFIFO:4;
    Ifx_UReg_32Bit HPE:4;
    Ifx_UReg_32Bit WATI:4;
    Ifx_UReg_32Bit ALRT:4;
    Ifx_UReg_32Bit MOER:4;
    Ifx_UReg_32Bit SAFE:4;
    Ifx_UReg_32Bit BOFF:4;
    Ifx_UReg_32Bit LOI:4;
} Ifx_CAN_N_GRINT1_Bits;


typedef struct _Ifx_CAN_N_GRINT2_Bits
{
    Ifx_UReg_32Bit REINT:4;
    Ifx_UReg_32Bit RXF1F:4;
    Ifx_UReg_32Bit RXF0F:4;
    Ifx_UReg_32Bit RXF1N:4;
    Ifx_UReg_32Bit RXF0N:4;
    Ifx_UReg_32Bit RETI:4;
    Ifx_UReg_32Bit TRAQ:4;
    Ifx_UReg_32Bit TRACO:4;
} Ifx_CAN_N_GRINT2_Bits;


typedef struct _Ifx_CAN_N_HPMS_Bits
{
    Ifx_UReg_32Bit BIDX:6;
    Ifx_UReg_32Bit MSI:2;
    Ifx_UReg_32Bit FIDX:7;
    Ifx_UReg_32Bit FLST:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_HPMS_Bits;


typedef struct _Ifx_CAN_N_IE_Bits
{
    Ifx_UReg_32Bit RF0NE:1;
    Ifx_UReg_32Bit RF0WE:1;
    Ifx_UReg_32Bit RF0FE:1;
    Ifx_UReg_32Bit RF0LE:1;
    Ifx_UReg_32Bit RF1NE:1;
    Ifx_UReg_32Bit RF1WE:1;
    Ifx_UReg_32Bit RF1FE:1;
    Ifx_UReg_32Bit RF1LE:1;
    Ifx_UReg_32Bit HPME:1;
    Ifx_UReg_32Bit TCE:1;
    Ifx_UReg_32Bit TCFE:1;
    Ifx_UReg_32Bit TFEE:1;
    Ifx_UReg_32Bit TEFNE:1;
    Ifx_UReg_32Bit TEFWE:1;
    Ifx_UReg_32Bit TEFFE:1;
    Ifx_UReg_32Bit TEFLE:1;
    Ifx_UReg_32Bit TSWE:1;
    Ifx_UReg_32Bit MRAFE:1;
    Ifx_UReg_32Bit TOOE:1;
    Ifx_UReg_32Bit DRXE:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit ELOE:1;
    Ifx_UReg_32Bit EPE:1;
    Ifx_UReg_32Bit EWE:1;
    Ifx_UReg_32Bit BOE:1;
    Ifx_UReg_32Bit WDIE:1;
    Ifx_UReg_32Bit PEAE:1;
    Ifx_UReg_32Bit PEDE:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_IE_Bits;


typedef struct _Ifx_CAN_N_IR_Bits
{
    Ifx_UReg_32Bit RF0N:1;
    Ifx_UReg_32Bit RF0W:1;
    Ifx_UReg_32Bit RF0F:1;
    Ifx_UReg_32Bit RF0L:1;
    Ifx_UReg_32Bit RF1N:1;
    Ifx_UReg_32Bit RF1W:1;
    Ifx_UReg_32Bit RF1F:1;
    Ifx_UReg_32Bit RF1L:1;
    Ifx_UReg_32Bit HPM:1;
    Ifx_UReg_32Bit TC:1;
    Ifx_UReg_32Bit TCF:1;
    Ifx_UReg_32Bit TFE:1;
    Ifx_UReg_32Bit TEFN:1;
    Ifx_UReg_32Bit TEFW:1;
    Ifx_UReg_32Bit TEFF:1;
    Ifx_UReg_32Bit TEFL:1;
    Ifx_UReg_32Bit TSW:1;
    Ifx_UReg_32Bit MRAF:1;
    Ifx_UReg_32Bit TOO:1;
    Ifx_UReg_32Bit DRX:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit ELO:1;
    Ifx_UReg_32Bit EP:1;
    Ifx_UReg_32Bit EW:1;
    Ifx_UReg_32Bit BO:1;
    Ifx_UReg_32Bit WDI:1;
    Ifx_UReg_32Bit PEA:1;
    Ifx_UReg_32Bit PED:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_IR_Bits;


typedef struct _Ifx_CAN_N_ISREG_Bits
{
    Ifx_UReg_32Bit REINT:1;
    Ifx_UReg_32Bit RXF1F:1;
    Ifx_UReg_32Bit RXF0F:1;
    Ifx_UReg_32Bit RXF1N:1;
    Ifx_UReg_32Bit RXF0N:1;
    Ifx_UReg_32Bit RETI:1;
    Ifx_UReg_32Bit TRAQ:1;
    Ifx_UReg_32Bit TRACO:1;
    Ifx_UReg_32Bit TEFIFO:1;
    Ifx_UReg_32Bit HPE:1;
    Ifx_UReg_32Bit WATI:1;
    Ifx_UReg_32Bit ALRT:1;
    Ifx_UReg_32Bit MOER:1;
    Ifx_UReg_32Bit SAFE:1;
    Ifx_UReg_32Bit BOFF:1;
    Ifx_UReg_32Bit LOI:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_ISREG_Bits;


typedef struct _Ifx_CAN_N_NBTP_Bits
{
    Ifx_UReg_32Bit NTSEG2:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit NTSEG1:8;
    Ifx_UReg_32Bit NBRP:9;
    Ifx_UReg_32Bit NSJW:7;
} Ifx_CAN_N_NBTP_Bits;


typedef struct _Ifx_CAN_N_NDAT1_Bits
{
    Ifx_UReg_32Bit ND0:1;
    Ifx_UReg_32Bit ND1:1;
    Ifx_UReg_32Bit ND2:1;
    Ifx_UReg_32Bit ND3:1;
    Ifx_UReg_32Bit ND4:1;
    Ifx_UReg_32Bit ND5:1;
    Ifx_UReg_32Bit ND6:1;
    Ifx_UReg_32Bit ND7:1;
    Ifx_UReg_32Bit ND8:1;
    Ifx_UReg_32Bit ND9:1;
    Ifx_UReg_32Bit ND10:1;
    Ifx_UReg_32Bit ND11:1;
    Ifx_UReg_32Bit ND12:1;
    Ifx_UReg_32Bit ND13:1;
    Ifx_UReg_32Bit ND14:1;
    Ifx_UReg_32Bit ND15:1;
    Ifx_UReg_32Bit ND16:1;
    Ifx_UReg_32Bit ND17:1;
    Ifx_UReg_32Bit ND18:1;
    Ifx_UReg_32Bit ND19:1;
    Ifx_UReg_32Bit ND20:1;
    Ifx_UReg_32Bit ND21:1;
    Ifx_UReg_32Bit ND22:1;
    Ifx_UReg_32Bit ND23:1;
    Ifx_UReg_32Bit ND24:1;
    Ifx_UReg_32Bit ND25:1;
    Ifx_UReg_32Bit ND26:1;
    Ifx_UReg_32Bit ND27:1;
    Ifx_UReg_32Bit ND28:1;
    Ifx_UReg_32Bit ND29:1;
    Ifx_UReg_32Bit ND30:1;
    Ifx_UReg_32Bit ND31:1;
} Ifx_CAN_N_NDAT1_Bits;


typedef struct _Ifx_CAN_N_NDAT2_Bits
{
    Ifx_UReg_32Bit ND32:1;
    Ifx_UReg_32Bit ND33:1;
    Ifx_UReg_32Bit ND34:1;
    Ifx_UReg_32Bit ND35:1;
    Ifx_UReg_32Bit ND36:1;
    Ifx_UReg_32Bit ND37:1;
    Ifx_UReg_32Bit ND38:1;
    Ifx_UReg_32Bit ND39:1;
    Ifx_UReg_32Bit ND40:1;
    Ifx_UReg_32Bit ND41:1;
    Ifx_UReg_32Bit ND42:1;
    Ifx_UReg_32Bit ND43:1;
    Ifx_UReg_32Bit ND44:1;
    Ifx_UReg_32Bit ND45:1;
    Ifx_UReg_32Bit ND46:1;
    Ifx_UReg_32Bit ND47:1;
    Ifx_UReg_32Bit ND48:1;
    Ifx_UReg_32Bit ND49:1;
    Ifx_UReg_32Bit ND50:1;
    Ifx_UReg_32Bit ND51:1;
    Ifx_UReg_32Bit ND52:1;
    Ifx_UReg_32Bit ND53:1;
    Ifx_UReg_32Bit ND54:1;
    Ifx_UReg_32Bit ND55:1;
    Ifx_UReg_32Bit ND56:1;
    Ifx_UReg_32Bit ND57:1;
    Ifx_UReg_32Bit ND58:1;
    Ifx_UReg_32Bit ND59:1;
    Ifx_UReg_32Bit ND60:1;
    Ifx_UReg_32Bit ND61:1;
    Ifx_UReg_32Bit ND62:1;
    Ifx_UReg_32Bit ND63:1;
} Ifx_CAN_N_NDAT2_Bits;


typedef struct _Ifx_CAN_N_NPCR_Bits
{
    Ifx_UReg_32Bit RXSEL:3;
    Ifx_UReg_32Bit reserved_3:5;
    Ifx_UReg_32Bit LBM:1;
    Ifx_UReg_32Bit LOUT:1;
    Ifx_UReg_32Bit DELE:1;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_CAN_N_NPCR_Bits;


typedef struct _Ifx_CAN_N_NT_ATTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit TXMO:8;
    Ifx_UReg_32Bit STRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_CAN_N_NT_ATTR_Bits;


typedef struct _Ifx_CAN_N_NT_BTTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit TXMO:8;
    Ifx_UReg_32Bit STRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_CAN_N_NT_BTTR_Bits;


typedef struct _Ifx_CAN_N_NT_CCR_Bits
{
    Ifx_UReg_32Bit reserved_0:8;
    Ifx_UReg_32Bit TPSC:4;
    Ifx_UReg_32Bit reserved_12:2;
    Ifx_UReg_32Bit STRESET:1;
    Ifx_UReg_32Bit STSTART:1;
    Ifx_UReg_32Bit reserved_16:2;
    Ifx_UReg_32Bit TRIGSRC:3;
    Ifx_UReg_32Bit reserved_21:11;
} Ifx_CAN_N_NT_CCR_Bits;


typedef struct _Ifx_CAN_N_NT_CTTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit TXMO:8;
    Ifx_UReg_32Bit STRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_CAN_N_NT_CTTR_Bits;


typedef struct _Ifx_CAN_N_NT_RTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit reserved_16:6;
    Ifx_UReg_32Bit TEIE:1;
    Ifx_UReg_32Bit TE:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_NT_RTR_Bits;


typedef struct _Ifx_CAN_N_PSR_Bits
{
    Ifx_UReg_32Bit LEC:3;
    Ifx_UReg_32Bit ACT:2;
    Ifx_UReg_32Bit EP:1;
    Ifx_UReg_32Bit EW:1;
    Ifx_UReg_32Bit BO:1;
    Ifx_UReg_32Bit DLEC:3;
    Ifx_UReg_32Bit RESI:1;
    Ifx_UReg_32Bit RBRS:1;
    Ifx_UReg_32Bit RFDF:1;
    Ifx_UReg_32Bit PXE:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit TDCV:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_CAN_N_PSR_Bits;


typedef struct _Ifx_CAN_N_RWD_Bits
{
    Ifx_UReg_32Bit WDC:8;
    Ifx_UReg_32Bit WDV:8;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_RWD_Bits;


typedef struct _Ifx_CAN_N_RX_BC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit RBSA:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_RX_BC_Bits;


typedef struct _Ifx_CAN_N_RX_ESC_Bits
{
    Ifx_UReg_32Bit F0DS:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit F1DS:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit RBDS:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_CAN_N_RX_ESC_Bits;


typedef struct _Ifx_CAN_N_RX_F0A_Bits
{
    Ifx_UReg_32Bit F0AI:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_CAN_N_RX_F0A_Bits;


typedef struct _Ifx_CAN_N_RX_F0C_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit F0SA:14;
    Ifx_UReg_32Bit F0S:7;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit F0WM:7;
    Ifx_UReg_32Bit F0OM:1;
} Ifx_CAN_N_RX_F0C_Bits;


typedef struct _Ifx_CAN_N_RX_F0S_Bits
{
    Ifx_UReg_32Bit F0FL:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit F0GI:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit F0PI:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit F0F:1;
    Ifx_UReg_32Bit RF0L:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_CAN_N_RX_F0S_Bits;


typedef struct _Ifx_CAN_N_RX_F1A_Bits
{
    Ifx_UReg_32Bit F1AI:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_CAN_N_RX_F1A_Bits;


typedef struct _Ifx_CAN_N_RX_F1C_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit F1SA:14;
    Ifx_UReg_32Bit F1S:7;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit F1WM:7;
    Ifx_UReg_32Bit F1OM:1;
} Ifx_CAN_N_RX_F1C_Bits;


typedef struct _Ifx_CAN_N_RX_F1S_Bits
{
    Ifx_UReg_32Bit F1FL:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit F1GI:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit F1PI:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit F1F:1;
    Ifx_UReg_32Bit RF1L:1;
    Ifx_UReg_32Bit reserved_26:4;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_RX_F1S_Bits;


typedef struct _Ifx_CAN_N_SIDFC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit FLSSA:14;
    Ifx_UReg_32Bit LSS:8;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_SIDFC_Bits;


typedef struct _Ifx_CAN_N_STARTADR_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit START:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_STARTADR_Bits;


typedef struct _Ifx_CAN_N_TDCR_Bits
{
    Ifx_UReg_32Bit TDCF:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit TDCO:7;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_CAN_N_TDCR_Bits;


typedef struct _Ifx_CAN_N_TEST_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit LBCK:1;
    Ifx_UReg_32Bit TX:2;
    Ifx_UReg_32Bit RX:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_CAN_N_TEST_Bits;


typedef struct _Ifx_CAN_N_TOCC_Bits
{
    Ifx_UReg_32Bit ETOC:1;
    Ifx_UReg_32Bit TOS:2;
    Ifx_UReg_32Bit reserved_3:13;
    Ifx_UReg_32Bit TOP:16;
} Ifx_CAN_N_TOCC_Bits;


typedef struct _Ifx_CAN_N_TOCV_Bits
{
    Ifx_UReg_32Bit TOC:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TOCV_Bits;


typedef struct _Ifx_CAN_N_TSCC_Bits
{
    Ifx_UReg_32Bit TSS:2;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit TCP:4;
    Ifx_UReg_32Bit reserved_20:12;
} Ifx_CAN_N_TSCC_Bits;


typedef struct _Ifx_CAN_N_TSCV_Bits
{
    Ifx_UReg_32Bit TSC:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TSCV_Bits;


typedef struct _Ifx_CAN_N_TTCR_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit ETESEL:2;
    Ifx_UReg_32Bit ETSSEL:3;
    Ifx_UReg_32Bit reserved_7:2;
    Ifx_UReg_32Bit TTCTSS:3;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_CAN_N_TTCR_Bits;


typedef struct _Ifx_CAN_N_TT_CPT_Bits
{
    Ifx_UReg_32Bit CCV:6;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit SWV:16;
} Ifx_CAN_N_TT_CPT_Bits;


typedef struct _Ifx_CAN_N_TT_CSM_Bits
{
    Ifx_UReg_32Bit CSM:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TT_CSM_Bits;


typedef struct _Ifx_CAN_N_TT_CTC_Bits
{
    Ifx_UReg_32Bit CT:16;
    Ifx_UReg_32Bit CC:6;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_CAN_N_TT_CTC_Bits;


typedef struct _Ifx_CAN_N_TT_GTP_Bits
{
    Ifx_UReg_32Bit TP:16;
    Ifx_UReg_32Bit CTP:16;
} Ifx_CAN_N_TT_GTP_Bits;


typedef struct _Ifx_CAN_N_TT_IE_Bits
{
    Ifx_UReg_32Bit SBCE:1;
    Ifx_UReg_32Bit SMCE:1;
    Ifx_UReg_32Bit CSME:1;
    Ifx_UReg_32Bit SOGE:1;
    Ifx_UReg_32Bit RTMIE:1;
    Ifx_UReg_32Bit TTMIE:1;
    Ifx_UReg_32Bit SWEE:1;
    Ifx_UReg_32Bit GTWE:1;
    Ifx_UReg_32Bit GTDE:1;
    Ifx_UReg_32Bit GTEE:1;
    Ifx_UReg_32Bit TXUE:1;
    Ifx_UReg_32Bit TXOE:1;
    Ifx_UReg_32Bit SE1E:1;
    Ifx_UReg_32Bit SE2E:1;
    Ifx_UReg_32Bit ELCE:1;
    Ifx_UReg_32Bit IWTE:1;
    Ifx_UReg_32Bit WTE:1;
    Ifx_UReg_32Bit AWE:1;
    Ifx_UReg_32Bit CERE:1;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_CAN_N_TT_IE_Bits;


typedef struct _Ifx_CAN_N_TT_IR_Bits
{
    Ifx_UReg_32Bit SBC:1;
    Ifx_UReg_32Bit SMC:1;
    Ifx_UReg_32Bit CSM:1;
    Ifx_UReg_32Bit SOG:1;
    Ifx_UReg_32Bit RTMI:1;
    Ifx_UReg_32Bit TTMI:1;
    Ifx_UReg_32Bit SWE:1;
    Ifx_UReg_32Bit GTW:1;
    Ifx_UReg_32Bit GTD:1;
    Ifx_UReg_32Bit GTE:1;
    Ifx_UReg_32Bit TXU:1;
    Ifx_UReg_32Bit TXO:1;
    Ifx_UReg_32Bit SE1:1;
    Ifx_UReg_32Bit SE2:1;
    Ifx_UReg_32Bit ELC:1;
    Ifx_UReg_32Bit IWT:1;
    Ifx_UReg_32Bit WT:1;
    Ifx_UReg_32Bit AW:1;
    Ifx_UReg_32Bit CER:1;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_CAN_N_TT_IR_Bits;


typedef struct _Ifx_CAN_N_TT_LGT_Bits
{
    Ifx_UReg_32Bit LT:16;
    Ifx_UReg_32Bit GT:16;
} Ifx_CAN_N_TT_LGT_Bits;


typedef struct _Ifx_CAN_N_TT_MLM_Bits
{
    Ifx_UReg_32Bit CCM:6;
    Ifx_UReg_32Bit CSS:2;
    Ifx_UReg_32Bit TXEW:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit ENTT:12;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_CAN_N_TT_MLM_Bits;


typedef struct _Ifx_CAN_N_TT_OCF_Bits
{
    Ifx_UReg_32Bit OM:2;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit GEN:1;
    Ifx_UReg_32Bit TM:1;
    Ifx_UReg_32Bit LDSDL:3;
    Ifx_UReg_32Bit IRTO:7;
    Ifx_UReg_32Bit EECS:1;
    Ifx_UReg_32Bit AWL:8;
    Ifx_UReg_32Bit EGTF:1;
    Ifx_UReg_32Bit ECC:1;
    Ifx_UReg_32Bit EVTP:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_CAN_N_TT_OCF_Bits;


typedef struct _Ifx_CAN_N_TT_OCN_Bits
{
    Ifx_UReg_32Bit SGT:1;
    Ifx_UReg_32Bit ECS:1;
    Ifx_UReg_32Bit SWP:1;
    Ifx_UReg_32Bit SWS:2;
    Ifx_UReg_32Bit RTIE:1;
    Ifx_UReg_32Bit TMC:2;
    Ifx_UReg_32Bit TTIE:1;
    Ifx_UReg_32Bit GCS:1;
    Ifx_UReg_32Bit FGP:1;
    Ifx_UReg_32Bit TMG:1;
    Ifx_UReg_32Bit NIG:1;
    Ifx_UReg_32Bit ESCN:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit LCKC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TT_OCN_Bits;


typedef struct _Ifx_CAN_N_TT_OST_Bits
{
    Ifx_UReg_32Bit EL:2;
    Ifx_UReg_32Bit MS:2;
    Ifx_UReg_32Bit SYS:2;
    Ifx_UReg_32Bit QGTP:1;
    Ifx_UReg_32Bit QCS:1;
    Ifx_UReg_32Bit RTO:8;
    Ifx_UReg_32Bit reserved_16:6;
    Ifx_UReg_32Bit WGTD:1;
    Ifx_UReg_32Bit GFI:1;
    Ifx_UReg_32Bit TMP:3;
    Ifx_UReg_32Bit GSI:1;
    Ifx_UReg_32Bit WFE:1;
    Ifx_UReg_32Bit AWE:1;
    Ifx_UReg_32Bit WECS:1;
    Ifx_UReg_32Bit SPL:1;
} Ifx_CAN_N_TT_OST_Bits;


typedef struct _Ifx_CAN_N_TT_RMC_Bits
{
    Ifx_UReg_32Bit RID:29;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit RMPS:1;
} Ifx_CAN_N_TT_RMC_Bits;


typedef struct _Ifx_CAN_N_TT_TMC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit TMSA:14;
    Ifx_UReg_32Bit TME:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_CAN_N_TT_TMC_Bits;


typedef struct _Ifx_CAN_N_TT_TMK_Bits
{
    Ifx_UReg_32Bit TM:16;
    Ifx_UReg_32Bit TICC:7;
    Ifx_UReg_32Bit reserved_23:8;
    Ifx_UReg_32Bit LCKM:1;
} Ifx_CAN_N_TT_TMK_Bits;


typedef struct _Ifx_CAN_N_TT_TURCF_Bits
{
    Ifx_UReg_32Bit NCL:16;
    Ifx_UReg_32Bit DC:14;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit ELT:1;
} Ifx_CAN_N_TT_TURCF_Bits;


typedef struct _Ifx_CAN_N_TT_TURNA_Bits
{
    Ifx_UReg_32Bit NAV:18;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_CAN_N_TT_TURNA_Bits;


typedef struct _Ifx_CAN_N_TX_BAR_Bits
{
    Ifx_UReg_32Bit AR0:1;
    Ifx_UReg_32Bit AR1:1;
    Ifx_UReg_32Bit AR2:1;
    Ifx_UReg_32Bit AR3:1;
    Ifx_UReg_32Bit AR4:1;
    Ifx_UReg_32Bit AR5:1;
    Ifx_UReg_32Bit AR6:1;
    Ifx_UReg_32Bit AR7:1;
    Ifx_UReg_32Bit AR8:1;
    Ifx_UReg_32Bit AR9:1;
    Ifx_UReg_32Bit AR10:1;
    Ifx_UReg_32Bit AR11:1;
    Ifx_UReg_32Bit AR12:1;
    Ifx_UReg_32Bit AR13:1;
    Ifx_UReg_32Bit AR14:1;
    Ifx_UReg_32Bit AR15:1;
    Ifx_UReg_32Bit AR16:1;
    Ifx_UReg_32Bit AR17:1;
    Ifx_UReg_32Bit AR18:1;
    Ifx_UReg_32Bit AR19:1;
    Ifx_UReg_32Bit AR20:1;
    Ifx_UReg_32Bit AR21:1;
    Ifx_UReg_32Bit AR22:1;
    Ifx_UReg_32Bit AR23:1;
    Ifx_UReg_32Bit AR24:1;
    Ifx_UReg_32Bit AR25:1;
    Ifx_UReg_32Bit AR26:1;
    Ifx_UReg_32Bit AR27:1;
    Ifx_UReg_32Bit AR28:1;
    Ifx_UReg_32Bit AR29:1;
    Ifx_UReg_32Bit AR30:1;
    Ifx_UReg_32Bit AR31:1;
} Ifx_CAN_N_TX_BAR_Bits;


typedef struct _Ifx_CAN_N_TX_BC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit TBSA:14;
    Ifx_UReg_32Bit NDTB:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit TFQS:6;
    Ifx_UReg_32Bit TFQM:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_CAN_N_TX_BC_Bits;


typedef struct _Ifx_CAN_N_TX_BCF_Bits
{
    Ifx_UReg_32Bit CF0:1;
    Ifx_UReg_32Bit CF1:1;
    Ifx_UReg_32Bit CF2:1;
    Ifx_UReg_32Bit CF3:1;
    Ifx_UReg_32Bit CF4:1;
    Ifx_UReg_32Bit CF5:1;
    Ifx_UReg_32Bit CF6:1;
    Ifx_UReg_32Bit CF7:1;
    Ifx_UReg_32Bit CF8:1;
    Ifx_UReg_32Bit CF9:1;
    Ifx_UReg_32Bit CF10:1;
    Ifx_UReg_32Bit CF11:1;
    Ifx_UReg_32Bit CF12:1;
    Ifx_UReg_32Bit CF13:1;
    Ifx_UReg_32Bit CF14:1;
    Ifx_UReg_32Bit CF15:1;
    Ifx_UReg_32Bit CF16:1;
    Ifx_UReg_32Bit CF17:1;
    Ifx_UReg_32Bit CF18:1;
    Ifx_UReg_32Bit CF19:1;
    Ifx_UReg_32Bit CF20:1;
    Ifx_UReg_32Bit CF21:1;
    Ifx_UReg_32Bit CF22:1;
    Ifx_UReg_32Bit CF23:1;
    Ifx_UReg_32Bit CF24:1;
    Ifx_UReg_32Bit CF25:1;
    Ifx_UReg_32Bit CF26:1;
    Ifx_UReg_32Bit CF27:1;
    Ifx_UReg_32Bit CF28:1;
    Ifx_UReg_32Bit CF29:1;
    Ifx_UReg_32Bit CF30:1;
    Ifx_UReg_32Bit CF31:1;
} Ifx_CAN_N_TX_BCF_Bits;


typedef struct _Ifx_CAN_N_TX_BCIE_Bits
{
    Ifx_UReg_32Bit CFIE0:1;
    Ifx_UReg_32Bit CFIE1:1;
    Ifx_UReg_32Bit CFIE2:1;
    Ifx_UReg_32Bit CFIE3:1;
    Ifx_UReg_32Bit CFIE4:1;
    Ifx_UReg_32Bit CFIE5:1;
    Ifx_UReg_32Bit CFIE6:1;
    Ifx_UReg_32Bit CFIE7:1;
    Ifx_UReg_32Bit CFIE8:1;
    Ifx_UReg_32Bit CFIE9:1;
    Ifx_UReg_32Bit CFIE10:1;
    Ifx_UReg_32Bit CFIE11:1;
    Ifx_UReg_32Bit CFIE12:1;
    Ifx_UReg_32Bit CFIE13:1;
    Ifx_UReg_32Bit CFIE14:1;
    Ifx_UReg_32Bit CFIE15:1;
    Ifx_UReg_32Bit CFIE16:1;
    Ifx_UReg_32Bit CFIE17:1;
    Ifx_UReg_32Bit CFIE18:1;
    Ifx_UReg_32Bit CFIE19:1;
    Ifx_UReg_32Bit CFIE20:1;
    Ifx_UReg_32Bit CFIE21:1;
    Ifx_UReg_32Bit CFIE22:1;
    Ifx_UReg_32Bit CFIE23:1;
    Ifx_UReg_32Bit CFIE24:1;
    Ifx_UReg_32Bit CFIE25:1;
    Ifx_UReg_32Bit CFIE26:1;
    Ifx_UReg_32Bit CFIE27:1;
    Ifx_UReg_32Bit CFIE28:1;
    Ifx_UReg_32Bit CFIE29:1;
    Ifx_UReg_32Bit CFIE30:1;
    Ifx_UReg_32Bit CFIE31:1;
} Ifx_CAN_N_TX_BCIE_Bits;


typedef struct _Ifx_CAN_N_TX_BCR_Bits
{
    Ifx_UReg_32Bit CR0:1;
    Ifx_UReg_32Bit CR1:1;
    Ifx_UReg_32Bit CR2:1;
    Ifx_UReg_32Bit CR3:1;
    Ifx_UReg_32Bit CR4:1;
    Ifx_UReg_32Bit CR5:1;
    Ifx_UReg_32Bit CR6:1;
    Ifx_UReg_32Bit CR7:1;
    Ifx_UReg_32Bit CR8:1;
    Ifx_UReg_32Bit CR9:1;
    Ifx_UReg_32Bit CR10:1;
    Ifx_UReg_32Bit CR11:1;
    Ifx_UReg_32Bit CR12:1;
    Ifx_UReg_32Bit CR13:1;
    Ifx_UReg_32Bit CR14:1;
    Ifx_UReg_32Bit CR15:1;
    Ifx_UReg_32Bit CR16:1;
    Ifx_UReg_32Bit CR17:1;
    Ifx_UReg_32Bit CR18:1;
    Ifx_UReg_32Bit CR19:1;
    Ifx_UReg_32Bit CR20:1;
    Ifx_UReg_32Bit CR21:1;
    Ifx_UReg_32Bit CR22:1;
    Ifx_UReg_32Bit CR23:1;
    Ifx_UReg_32Bit CR24:1;
    Ifx_UReg_32Bit CR25:1;
    Ifx_UReg_32Bit CR26:1;
    Ifx_UReg_32Bit CR27:1;
    Ifx_UReg_32Bit CR28:1;
    Ifx_UReg_32Bit CR29:1;
    Ifx_UReg_32Bit CR30:1;
    Ifx_UReg_32Bit CR31:1;
} Ifx_CAN_N_TX_BCR_Bits;


typedef struct _Ifx_CAN_N_TX_BRP_Bits
{
    Ifx_UReg_32Bit TRP0:1;
    Ifx_UReg_32Bit TRP1:1;
    Ifx_UReg_32Bit TRP2:1;
    Ifx_UReg_32Bit TRP3:1;
    Ifx_UReg_32Bit TRP4:1;
    Ifx_UReg_32Bit TRP5:1;
    Ifx_UReg_32Bit TRP6:1;
    Ifx_UReg_32Bit TRP7:1;
    Ifx_UReg_32Bit TRP8:1;
    Ifx_UReg_32Bit TRP9:1;
    Ifx_UReg_32Bit TRP10:1;
    Ifx_UReg_32Bit TRP11:1;
    Ifx_UReg_32Bit TRP12:1;
    Ifx_UReg_32Bit TRP13:1;
    Ifx_UReg_32Bit TRP14:1;
    Ifx_UReg_32Bit TRP15:1;
    Ifx_UReg_32Bit TRP16:1;
    Ifx_UReg_32Bit TRP17:1;
    Ifx_UReg_32Bit TRP18:1;
    Ifx_UReg_32Bit TRP19:1;
    Ifx_UReg_32Bit TRP20:1;
    Ifx_UReg_32Bit TRP21:1;
    Ifx_UReg_32Bit TRP22:1;
    Ifx_UReg_32Bit TRP23:1;
    Ifx_UReg_32Bit TRP24:1;
    Ifx_UReg_32Bit TRP25:1;
    Ifx_UReg_32Bit TRP26:1;
    Ifx_UReg_32Bit TRP27:1;
    Ifx_UReg_32Bit TRP28:1;
    Ifx_UReg_32Bit TRP29:1;
    Ifx_UReg_32Bit TRP30:1;
    Ifx_UReg_32Bit TRP31:1;
} Ifx_CAN_N_TX_BRP_Bits;


typedef struct _Ifx_CAN_N_TX_BTIE_Bits
{
    Ifx_UReg_32Bit TIE0:1;
    Ifx_UReg_32Bit TIE1:1;
    Ifx_UReg_32Bit TIE2:1;
    Ifx_UReg_32Bit TIE3:1;
    Ifx_UReg_32Bit TIE4:1;
    Ifx_UReg_32Bit TIE5:1;
    Ifx_UReg_32Bit TIE6:1;
    Ifx_UReg_32Bit TIE7:1;
    Ifx_UReg_32Bit TIE8:1;
    Ifx_UReg_32Bit TIE9:1;
    Ifx_UReg_32Bit TIE10:1;
    Ifx_UReg_32Bit TIE11:1;
    Ifx_UReg_32Bit TIE12:1;
    Ifx_UReg_32Bit TIE13:1;
    Ifx_UReg_32Bit TIE14:1;
    Ifx_UReg_32Bit TIE15:1;
    Ifx_UReg_32Bit TIE16:1;
    Ifx_UReg_32Bit TIE17:1;
    Ifx_UReg_32Bit TIE18:1;
    Ifx_UReg_32Bit TIE19:1;
    Ifx_UReg_32Bit TIE20:1;
    Ifx_UReg_32Bit TIE21:1;
    Ifx_UReg_32Bit TIE22:1;
    Ifx_UReg_32Bit TIE23:1;
    Ifx_UReg_32Bit TIE24:1;
    Ifx_UReg_32Bit TIE25:1;
    Ifx_UReg_32Bit TIE26:1;
    Ifx_UReg_32Bit TIE27:1;
    Ifx_UReg_32Bit TIE28:1;
    Ifx_UReg_32Bit TIE29:1;
    Ifx_UReg_32Bit TIE30:1;
    Ifx_UReg_32Bit TIE31:1;
} Ifx_CAN_N_TX_BTIE_Bits;


typedef struct _Ifx_CAN_N_TX_BTO_Bits
{
    Ifx_UReg_32Bit TO0:1;
    Ifx_UReg_32Bit TO1:1;
    Ifx_UReg_32Bit TO2:1;
    Ifx_UReg_32Bit TO3:1;
    Ifx_UReg_32Bit TO4:1;
    Ifx_UReg_32Bit TO5:1;
    Ifx_UReg_32Bit TO6:1;
    Ifx_UReg_32Bit TO7:1;
    Ifx_UReg_32Bit TO8:1;
    Ifx_UReg_32Bit TO9:1;
    Ifx_UReg_32Bit TO10:1;
    Ifx_UReg_32Bit TO11:1;
    Ifx_UReg_32Bit TO12:1;
    Ifx_UReg_32Bit TO13:1;
    Ifx_UReg_32Bit TO14:1;
    Ifx_UReg_32Bit TO15:1;
    Ifx_UReg_32Bit TO16:1;
    Ifx_UReg_32Bit TO17:1;
    Ifx_UReg_32Bit TO18:1;
    Ifx_UReg_32Bit TO19:1;
    Ifx_UReg_32Bit TO20:1;
    Ifx_UReg_32Bit TO21:1;
    Ifx_UReg_32Bit TO22:1;
    Ifx_UReg_32Bit TO23:1;
    Ifx_UReg_32Bit TO24:1;
    Ifx_UReg_32Bit TO25:1;
    Ifx_UReg_32Bit TO26:1;
    Ifx_UReg_32Bit TO27:1;
    Ifx_UReg_32Bit TO28:1;
    Ifx_UReg_32Bit TO29:1;
    Ifx_UReg_32Bit TO30:1;
    Ifx_UReg_32Bit TO31:1;
} Ifx_CAN_N_TX_BTO_Bits;


typedef struct _Ifx_CAN_N_TX_EFA_Bits
{
    Ifx_UReg_32Bit EFAI:5;
    Ifx_UReg_32Bit reserved_5:27;
} Ifx_CAN_N_TX_EFA_Bits;


typedef struct _Ifx_CAN_N_TX_EFC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit EFSA:14;
    Ifx_UReg_32Bit EFS:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit EFWM:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_TX_EFC_Bits;


typedef struct _Ifx_CAN_N_TX_EFS_Bits
{
    Ifx_UReg_32Bit EFFL:6;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit EFGI:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit EFPI:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit EFF:1;
    Ifx_UReg_32Bit TEFL:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_CAN_N_TX_EFS_Bits;


typedef struct _Ifx_CAN_N_TX_ESC_Bits
{
    Ifx_UReg_32Bit TBDS:3;
    Ifx_UReg_32Bit reserved_3:29;
} Ifx_CAN_N_TX_ESC_Bits;


typedef struct _Ifx_CAN_N_TX_FQS_Bits
{
    Ifx_UReg_32Bit TFFL:6;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit TFGI:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit TFQPI:5;
    Ifx_UReg_32Bit TFQF:1;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_CAN_N_TX_FQS_Bits;


typedef struct _Ifx_CAN_N_XIDAM_Bits
{
    Ifx_UReg_32Bit EIDM:29;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_CAN_N_XIDAM_Bits;


typedef struct _Ifx_CAN_N_XIDFC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit FLESA:14;
    Ifx_UReg_32Bit LSE:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_CAN_N_XIDFC_Bits;


typedef struct _Ifx_CAN_OCS_Bits
{
    Ifx_UReg_32Bit TGS:2;
    Ifx_UReg_32Bit TGB:1;
    Ifx_UReg_32Bit TG_P:1;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_OCS_Bits;


typedef struct _Ifx_CAN_R0_Bits
{
    Ifx_UReg_32Bit ID:29;
    Ifx_UReg_32Bit RTR:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit ESI:1;
} Ifx_CAN_R0_Bits;


typedef struct _Ifx_CAN_R1_Bits
{
    Ifx_UReg_32Bit RXTS:16;
    Ifx_UReg_32Bit DLC:4;
    Ifx_UReg_32Bit BRS:1;
    Ifx_UReg_32Bit FDF:1;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit FIDX:7;
    Ifx_UReg_32Bit ANMF:1;
} Ifx_CAN_R1_Bits;


typedef struct _Ifx_CAN_STDMSG_S0_Bits
{
    Ifx_UReg_32Bit SFID2:11;
    Ifx_UReg_32Bit reserved_11:5;
    Ifx_UReg_32Bit SFID1:11;
    Ifx_UReg_32Bit SFEC:3;
    Ifx_UReg_32Bit SFT:2;
} Ifx_CAN_STDMSG_S0_Bits;


typedef struct _Ifx_CAN_TRIGMSG_TM0_Bits
{
    Ifx_UReg_32Bit TYPE:4;
    Ifx_UReg_32Bit TMEX:1;
    Ifx_UReg_32Bit TMIN:1;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit CC:7;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit TM:16;
} Ifx_CAN_TRIGMSG_TM0_Bits;


typedef struct _Ifx_CAN_TRIGMSG_TM1_Bits
{
    Ifx_UReg_32Bit MSC:3;
    Ifx_UReg_32Bit reserved_3:13;
    Ifx_UReg_32Bit MMR:7;
    Ifx_UReg_32Bit FTYPE:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_TRIGMSG_TM1_Bits;


typedef struct _Ifx_CAN_TXEVENT_E0_Bits
{
    Ifx_UReg_32Bit ID:29;
    Ifx_UReg_32Bit RTR:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit ESI:1;
} Ifx_CAN_TXEVENT_E0_Bits;


typedef struct _Ifx_CAN_TXEVENT_E1_Bits
{
    Ifx_UReg_32Bit TXTS:16;
    Ifx_UReg_32Bit DLC:4;
    Ifx_UReg_32Bit BRS:1;
    Ifx_UReg_32Bit FDF:1;
    Ifx_UReg_32Bit ET:2;
    Ifx_UReg_32Bit MM:8;
} Ifx_CAN_TXEVENT_E1_Bits;


typedef struct _Ifx_CAN_TXMSG_DB_Bits
{
    Ifx_UReg_8Bit DB:8;
} Ifx_CAN_TXMSG_DB_Bits;


typedef struct _Ifx_CAN_TXMSG_T0_Bits
{
    Ifx_UReg_32Bit ID:29;
    Ifx_UReg_32Bit RTR:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit ESI:1;
} Ifx_CAN_TXMSG_T0_Bits;


typedef struct _Ifx_CAN_TXMSG_T1_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit DLC:4;
    Ifx_UReg_32Bit BRS:1;
    Ifx_UReg_32Bit FDF:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit EFC:1;
    Ifx_UReg_32Bit MM:8;
} Ifx_CAN_TXMSG_T1_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_ACCEN0_Bits B;
} Ifx_CAN_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_ACCENCTR0_Bits B;
} Ifx_CAN_ACCENCTR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_BUFADR_Bits B;
} Ifx_CAN_BUFADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_CLC_Bits B;
} Ifx_CAN_CLC;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_CAN_DB_Bits B;
} Ifx_CAN_DB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_EXTMSG_F0_Bits B;
} Ifx_CAN_EXTMSG_F0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_EXTMSG_F1_Bits B;
} Ifx_CAN_EXTMSG_F1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_ID_Bits B;
} Ifx_CAN_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_KRST0_Bits B;
} Ifx_CAN_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_KRST1_Bits B;
} Ifx_CAN_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_KRSTCLR_Bits B;
} Ifx_CAN_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_MCR_Bits B;
} Ifx_CAN_MCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_MECR_Bits B;
} Ifx_CAN_MECR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_MESTAT_Bits B;
} Ifx_CAN_MESTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ACCENNODE0_Bits B;
} Ifx_CAN_N_ACCENNODE0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_CCCR_Bits B;
} Ifx_CAN_N_CCCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_CREL_Bits B;
} Ifx_CAN_N_CREL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_DBTP_Bits B;
} Ifx_CAN_N_DBTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ECR_Bits B;
} Ifx_CAN_N_ECR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ENDADR_Bits B;
} Ifx_CAN_N_ENDADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ENDN_Bits B;
} Ifx_CAN_N_ENDN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_GFC_Bits B;
} Ifx_CAN_N_GFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_GRINT1_Bits B;
} Ifx_CAN_N_GRINT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_GRINT2_Bits B;
} Ifx_CAN_N_GRINT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_HPMS_Bits B;
} Ifx_CAN_N_HPMS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_IE_Bits B;
} Ifx_CAN_N_IE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_IR_Bits B;
} Ifx_CAN_N_IR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ISREG_Bits B;
} Ifx_CAN_N_ISREG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NBTP_Bits B;
} Ifx_CAN_N_NBTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NDAT1_Bits B;
} Ifx_CAN_N_NDAT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NDAT2_Bits B;
} Ifx_CAN_N_NDAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NPCR_Bits B;
} Ifx_CAN_N_NPCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_ATTR_Bits B;
} Ifx_CAN_N_NT_ATTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_BTTR_Bits B;
} Ifx_CAN_N_NT_BTTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_CCR_Bits B;
} Ifx_CAN_N_NT_CCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_CTTR_Bits B;
} Ifx_CAN_N_NT_CTTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_RTR_Bits B;
} Ifx_CAN_N_NT_RTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_PSR_Bits B;
} Ifx_CAN_N_PSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RWD_Bits B;
} Ifx_CAN_N_RWD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_BC_Bits B;
} Ifx_CAN_N_RX_BC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_ESC_Bits B;
} Ifx_CAN_N_RX_ESC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F0A_Bits B;
} Ifx_CAN_N_RX_F0A;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F0C_Bits B;
} Ifx_CAN_N_RX_F0C;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F0S_Bits B;
} Ifx_CAN_N_RX_F0S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F1A_Bits B;
} Ifx_CAN_N_RX_F1A;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F1C_Bits B;
} Ifx_CAN_N_RX_F1C;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F1S_Bits B;
} Ifx_CAN_N_RX_F1S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_SIDFC_Bits B;
} Ifx_CAN_N_SIDFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_STARTADR_Bits B;
} Ifx_CAN_N_STARTADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TDCR_Bits B;
} Ifx_CAN_N_TDCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TEST_Bits B;
} Ifx_CAN_N_TEST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TOCC_Bits B;
} Ifx_CAN_N_TOCC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TOCV_Bits B;
} Ifx_CAN_N_TOCV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TSCC_Bits B;
} Ifx_CAN_N_TSCC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TSCV_Bits B;
} Ifx_CAN_N_TSCV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TTCR_Bits B;
} Ifx_CAN_N_TTCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_CPT_Bits B;
} Ifx_CAN_N_TT_CPT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_CSM_Bits B;
} Ifx_CAN_N_TT_CSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_CTC_Bits B;
} Ifx_CAN_N_TT_CTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_GTP_Bits B;
} Ifx_CAN_N_TT_GTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_IE_Bits B;
} Ifx_CAN_N_TT_IE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_IR_Bits B;
} Ifx_CAN_N_TT_IR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_LGT_Bits B;
} Ifx_CAN_N_TT_LGT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_MLM_Bits B;
} Ifx_CAN_N_TT_MLM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_OCF_Bits B;
} Ifx_CAN_N_TT_OCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_OCN_Bits B;
} Ifx_CAN_N_TT_OCN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_OST_Bits B;
} Ifx_CAN_N_TT_OST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_RMC_Bits B;
} Ifx_CAN_N_TT_RMC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TMC_Bits B;
} Ifx_CAN_N_TT_TMC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TMK_Bits B;
} Ifx_CAN_N_TT_TMK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TURCF_Bits B;
} Ifx_CAN_N_TT_TURCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TURNA_Bits B;
} Ifx_CAN_N_TT_TURNA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BAR_Bits B;
} Ifx_CAN_N_TX_BAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BC_Bits B;
} Ifx_CAN_N_TX_BC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BCF_Bits B;
} Ifx_CAN_N_TX_BCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BCIE_Bits B;
} Ifx_CAN_N_TX_BCIE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BCR_Bits B;
} Ifx_CAN_N_TX_BCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BRP_Bits B;
} Ifx_CAN_N_TX_BRP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BTIE_Bits B;
} Ifx_CAN_N_TX_BTIE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BTO_Bits B;
} Ifx_CAN_N_TX_BTO;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_EFA_Bits B;
} Ifx_CAN_N_TX_EFA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_EFC_Bits B;
} Ifx_CAN_N_TX_EFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_EFS_Bits B;
} Ifx_CAN_N_TX_EFS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_ESC_Bits B;
} Ifx_CAN_N_TX_ESC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_FQS_Bits B;
} Ifx_CAN_N_TX_FQS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_XIDAM_Bits B;
} Ifx_CAN_N_XIDAM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_XIDFC_Bits B;
} Ifx_CAN_N_XIDFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_OCS_Bits B;
} Ifx_CAN_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_R0_Bits B;
} Ifx_CAN_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_R1_Bits B;
} Ifx_CAN_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_STDMSG_S0_Bits B;
} Ifx_CAN_STDMSG_S0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TRIGMSG_TM0_Bits B;
} Ifx_CAN_TRIGMSG_TM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TRIGMSG_TM1_Bits B;
} Ifx_CAN_TRIGMSG_TM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXEVENT_E0_Bits B;
} Ifx_CAN_TXEVENT_E0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXEVENT_E1_Bits B;
} Ifx_CAN_TXEVENT_E1;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_CAN_TXMSG_DB_Bits B;
} Ifx_CAN_TXMSG_DB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXMSG_T0_Bits B;
} Ifx_CAN_TXMSG_T0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXMSG_T1_Bits B;
} Ifx_CAN_TXMSG_T1;
# 2282 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_NT
{
       Ifx_CAN_N_NT_CCR CCR;
       Ifx_CAN_N_NT_ATTR ATTR;
       Ifx_CAN_N_NT_BTTR BTTR;
       Ifx_CAN_N_NT_CTTR CTTR;
       Ifx_CAN_N_NT_RTR RTR;
} Ifx_CAN_N_NT;
# 2304 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_RX
{
       Ifx_CAN_N_RX_F0C F0C;
       Ifx_CAN_N_RX_F0S F0S;
       Ifx_CAN_N_RX_F0A F0A;
       Ifx_CAN_N_RX_BC BC;
       Ifx_CAN_N_RX_F1C F1C;
       Ifx_CAN_N_RX_F1S F1S;
       Ifx_CAN_N_RX_F1A F1A;
       Ifx_CAN_N_RX_ESC ESC;
} Ifx_CAN_N_RX;
# 2329 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_TX
{
       Ifx_CAN_N_TX_BC BC;
       Ifx_CAN_N_TX_FQS FQS;
       Ifx_CAN_N_TX_ESC ESC;
       Ifx_CAN_N_TX_BRP BRP;
       Ifx_CAN_N_TX_BAR BAR;
       Ifx_CAN_N_TX_BCR BCR;
       Ifx_CAN_N_TX_BTO BTO;
       Ifx_CAN_N_TX_BCF BCF;
       Ifx_CAN_N_TX_BTIE BTIE;
       Ifx_CAN_N_TX_BCIE BCIE;
       Ifx_UReg_8Bit reserved_28[8];
       Ifx_CAN_N_TX_EFC EFC;
       Ifx_CAN_N_TX_EFS EFS;
       Ifx_CAN_N_TX_EFA EFA;
} Ifx_CAN_N_TX;
# 2360 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_TT
{
       Ifx_CAN_N_TT_TMC TMC;
       Ifx_CAN_N_TT_RMC RMC;
       Ifx_CAN_N_TT_OCF OCF;
       Ifx_CAN_N_TT_MLM MLM;
       Ifx_CAN_N_TT_TURCF TURCF;
       Ifx_CAN_N_TT_OCN OCN;
       Ifx_CAN_N_TT_GTP GTP;
       Ifx_CAN_N_TT_TMK TMK;
       Ifx_CAN_N_TT_IR IR;
       Ifx_CAN_N_TT_IE IE;
       Ifx_UReg_8Bit reserved_28[4];
       Ifx_CAN_N_TT_OST OST;
       Ifx_CAN_N_TT_TURNA TURNA;
       Ifx_CAN_N_TT_LGT LGT;
       Ifx_CAN_N_TT_CTC CTC;
       Ifx_CAN_N_TT_CPT CPT;
       Ifx_CAN_N_TT_CSM CSM;
} Ifx_CAN_N_TT;
# 2394 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N
{
       Ifx_CAN_N_ACCENNODE0 ACCENNODE0;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_CAN_N_STARTADR STARTADR;
       Ifx_CAN_N_ENDADR ENDADR;
       Ifx_CAN_N_ISREG ISREG;
       Ifx_CAN_N_GRINT1 GRINT1;
       Ifx_CAN_N_GRINT2 GRINT2;
       Ifx_UReg_8Bit reserved_1C[4];
       Ifx_CAN_N_NT NT;
       Ifx_UReg_8Bit reserved_34[12];
       Ifx_CAN_N_NPCR NPCR;
       Ifx_UReg_8Bit reserved_44[172];
       Ifx_CAN_N_TTCR TTCR;
       Ifx_UReg_8Bit reserved_F4[12];
       Ifx_CAN_N_CREL CREL;
       Ifx_CAN_N_ENDN ENDN;
       Ifx_UReg_8Bit reserved_108[4];
       Ifx_CAN_N_DBTP DBTP;
       Ifx_CAN_N_TEST TEST;
       Ifx_CAN_N_RWD RWD;
       Ifx_CAN_N_CCCR CCCR;
       Ifx_CAN_N_NBTP NBTP;
       Ifx_CAN_N_TSCC TSCC;
       Ifx_CAN_N_TSCV TSCV;
       Ifx_CAN_N_TOCC TOCC;
       Ifx_CAN_N_TOCV TOCV;
       Ifx_UReg_8Bit reserved_130[16];
       Ifx_CAN_N_ECR ECR;
       Ifx_CAN_N_PSR PSR;
       Ifx_CAN_N_TDCR TDCR;
       Ifx_UReg_8Bit reserved_14C[4];
       Ifx_CAN_N_IR IR;
       Ifx_CAN_N_IE IE;
       Ifx_UReg_8Bit reserved_158[40];
       Ifx_CAN_N_GFC GFC;
       Ifx_CAN_N_SIDFC SIDFC;
       Ifx_CAN_N_XIDFC XIDFC;
       Ifx_UReg_8Bit reserved_18C[4];
       Ifx_CAN_N_XIDAM XIDAM;
       Ifx_CAN_N_HPMS HPMS;
       Ifx_CAN_N_NDAT1 NDAT1;
       Ifx_CAN_N_NDAT2 NDAT2;
       Ifx_CAN_N_RX RX;
       Ifx_CAN_N_TX TX;
       Ifx_UReg_8Bit reserved_1FC[4];
       Ifx_CAN_N_TT TT;
       Ifx_UReg_8Bit reserved_244[444];
} Ifx_CAN_N;
# 2458 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_STDMSG
{
       Ifx_CAN_STDMSG_S0 S0;
} Ifx_CAN_STDMSG;
# 2476 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_EXTMSG
{
       Ifx_CAN_EXTMSG_F0 F0;
       Ifx_CAN_EXTMSG_F1 F1;
} Ifx_CAN_EXTMSG;
# 2495 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_RXMSG
{
       Ifx_CAN_R0 R0;
       Ifx_CAN_R1 R1;
       Ifx_CAN_DB DB[64];
} Ifx_CAN_RXMSG;
# 2515 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_TXEVENT
{
       Ifx_CAN_TXEVENT_E0 E0;
       Ifx_CAN_TXEVENT_E1 E1;
} Ifx_CAN_TXEVENT;
# 2534 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_TXMSG
{
       Ifx_CAN_TXMSG_T0 T0;
       Ifx_CAN_TXMSG_T1 T1;
       Ifx_CAN_TXMSG_DB DB[64];
} Ifx_CAN_TXMSG;
# 2554 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_TRIGMSG
{
       Ifx_CAN_TRIGMSG_TM0 TM0;
       Ifx_CAN_TRIGMSG_TM1 TM1;
} Ifx_CAN_TRIGMSG;
# 2573 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN
{
       Ifx_UReg_32Bit RAM[8192];
       Ifx_CAN_CLC CLC;
       Ifx_UReg_8Bit reserved_8004[4];
       Ifx_CAN_ID ID;
       Ifx_UReg_8Bit reserved_800C[36];
       Ifx_CAN_MCR MCR;
       Ifx_CAN_BUFADR BUFADR;
       Ifx_UReg_8Bit reserved_8038[8];
       Ifx_CAN_MECR MECR;
       Ifx_CAN_MESTAT MESTAT;
       Ifx_UReg_8Bit reserved_8048[148];
       Ifx_CAN_ACCENCTR0 ACCENCTR0;
       Ifx_UReg_8Bit reserved_80E0[8];
       Ifx_CAN_OCS OCS;
       Ifx_CAN_KRSTCLR KRSTCLR;
       Ifx_CAN_KRST1 KRST1;
       Ifx_CAN_KRST0 KRST0;
       Ifx_UReg_8Bit reserved_80F8[4];
       Ifx_CAN_ACCEN0 ACCEN0;
       Ifx_CAN_N N[4];
} Ifx_CAN;
# 63 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_reg.h" 2
# 2 ".\\output\\inc/IfxCan_reg.h" 2
# 51 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/ComStack_Types.h" 1
# 53 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/Can_17_McmCan_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_Cfg.h" 1
# 2 ".\\output\\inc/Can_17_McmCan_Cfg.h" 2
# 55 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2




# 1 ".\\output\\inc/Can_GeneralTypes.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h" 1






# 1 ".\\output\\inc/ComStack_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef uint32 Can_IdType;
# 30 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef uint16 Can_HwHandleType;
# 42 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef struct
{
    Can_IdType CanId;
    Can_HwHandleType Hoh;
    uint8 ControllerId;
}Can_HwType;
# 62 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef struct
{
    uint8 * sdu;
    Can_IdType id;
    PduIdType swPduHandle;
    uint8 length;

}Can_PduType;
# 83 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{
    CAN_T_START,
    CAN_T_STOP,
    CAN_T_SLEEP,
    CAN_T_WAKEUP,
    CAN_T_MAXTRANSITION

}Can_StateTransitionType;
# 104 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{
    CAN_OK,
    CAN_NOT_OK,
    CAN_BUSY

}Can_ReturnType;
# 131 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{
    CANTRCV_TRCVMODE_NORMAL=0,
    CANTRCV_TRCVMODE_SLEEP,
    CANTRCV_TRCVMODE_STANDBY

}CanTrcv_TrcvModeType;


typedef enum
{
    CANTRCV_WUMODE_ENABLE=0,
    CANTRCV_WUMODE_DISABLE,
    CANTRCV_WUMODE_CLEAR

}CanTrcv_TrcvWakeupModeType;
# 164 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{

    CANTRCV_WU_ERROR=0,
    CANTRCV_WU_NOT_SUPPORTED,
    CANTRCV_WU_BY_BUS,
    CANTRCV_WU_INTERNALLY,
    CANTRCV_WU_RESET,
    CANTRCV_WU_POWER_ON,
    CANTRCV_WU_BY_PIN

}CanTrcv_TrcvWakeupReasonType;
# 2 ".\\output\\inc/Can_GeneralTypes.h" 2
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/McalLib.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 1
# 41 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
# 1 ".\\output\\inc/McalLib_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\McalLib_Cfg.h" 1
# 2 ".\\output\\inc/McalLib_Cfg.h" 2
# 42 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2






# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 54 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
typedef unsigned int unsigned_int;
# 201 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32bw( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32bw( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32b.w %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32b( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32b( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32.b %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 613 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned _extru(unsigned a, unsigned p, unsigned w) {
  unsigned res;
  __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                    : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14","d15");
  return res;
}
# 717 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int cmpswap_w (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 839 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int swapmskw (unsigned int *address,
                                           unsigned int value,unsigned int mask)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) mask << 32;

    __asm__ __volatile__( "swapmsk.w [%[addr]] 0,%A[reg]"
        : [reg]"+d" (reg64)
        : [addr]"a" (address)
        : "memory");
     return ((unsigned int)reg64 & mask);
}
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 273 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
# 1 ".\\output\\inc/McalLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/McalLib_MemMap.h" 2
# 274 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 297 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuWdgPassword(void);
# 324 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetCpuWdgPassword(const uint32 Password);
# 350 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteCpuEndInitProtReg
(volatile void* const RegAddress, const uint32 DataValue);
# 377 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetSafetyEndInitPassword(void);
# 405 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetSafetyEndInitPassword(const uint32 Password);
# 432 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtReg
( volatile void* const RegAddress, const uint32 DataValue);
# 466 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtRegMask
(volatile void* const RegAddress, const uint32 DataValue, uint32 Mask);
# 492 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetPeripheralEndInitPassword(void);
# 520 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetPeripheralEndInitPassword(const uint32 Password);
# 547 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WritePeripEndInitProtReg
( volatile void* const RegAddress, const uint32 DataValue);
# 573 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuPhysicalId(void);
# 609 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetGlobalDsprAddress
(const uint32 CpuId, const uint32 LocalDsprAddress);
# 642 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetLocalDsprAddress(const uint32 GlobalDsprAddress);
# 677 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetGlobalPsprAddress
(const uint32 CpuId, const uint32 LocalPsprAddress);
# 711 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetLocalPsprAddress(const uint32 GlobalPsprAddress);
# 734 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayTickResolution(void);
# 762 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayResetTickCalibration(void);
# 794 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayGetTick(void);
# 821 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuIndex(void);
# 853 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_GetSpinlock
(volatile uint32 * const LockAddress, const uint32 Timeout);
# 879 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_ReleaseSpinlock(volatile uint32 * const LockAddress);
# 903 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void McalLib_GetVersionInfo( Std_VersionInfoType* const versioninfo);
# 930 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtReg16(volatile void* const RegAddress,
                                      const uint16 DataValue);
# 963 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_UpdateSafetyEndInit(const uint32 NewPassword,
                                       const boolean UpdatePassword,
                                       const boolean SetResetProtection);
# 995 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_UpdatePeripheralEndInit(const uint32 NewPassword,
                                           const boolean UpdatePassword,
                                           const boolean SetResetProtection);





# 1 ".\\output\\inc/McalLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h" 1
# 149 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/McalLib_MemMap.h" 2
# 1004 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 2 ".\\output\\inc/McalLib.h" 2
# 62 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 63 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 1 ".\\output\\inc/Can_17_McmCan_Externals.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_Externals.h" 1
# 2 ".\\output\\inc/Can_17_McmCan_Externals.h" 2
# 64 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 261 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef enum
{
  CAN_17_MCMCAN_TX_DED_BUFFER = 0,
  CAN_17_MCMCAN_TX_QUEUE = 1
} Can_17_McmCan_TxBufferType;




typedef enum
{
  CAN_17_MCMCAN_RX_DED_BUFFER = 0,
  CAN_17_MCMCAN_RX_FIFO0 = 1,
  CAN_17_MCMCAN_RX_FIFO1 = 2
} Can_17_McmCan_RxBufferType;
# 294 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef struct
{

  Ifx_CAN* CanBaseAddress;

  boolean CanUsedHwCfgIndx [(4U)];
} Can_17_McmCan_McmModuleConfigType;




typedef struct
{

  uint32 CanControllerMsgRAMMap [(7U)];

  uint8 CanTxDedBuffCount;

  uint8 CanTxEvntFIFOSize;

  uint8 CanRxFIFO0Size;

  uint8 CanRxFIFO0Threshold;

  uint8 CanRxFIFO1Size;

  uint8 CanRxFIFO1Threshold;



  uint8 CanTxQueueSize;

  boolean CanTxQueueStatus;

} Can_17_McmCan_ControllerMsgRAMConfigType;




typedef struct
{

  uint32 CanControllerBaudrate;

  uint16 CanBaudrateCfg;






} Can_17_McmCan_ControllerBaudrateConfigType;
# 366 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef struct
{

  uint32 CanSIDFiltEleS0;

  Can_HwHandleType CanSidHwObjId;

  uint8 HwControllerId;

  Can_17_McmCan_RxBufferType CanSidBufferType;






} Can_17_McmCan_SIDFilterConfigType;





typedef struct
{

  uint32 CanXIDFiltEleF0;

  uint32 CanXIDFiltEleF1;

  Can_HwHandleType CanXidHwObjId;

  uint8 HwControllerId;

  Can_17_McmCan_RxBufferType CanXidBufferType;






} Can_17_McmCan_XIDFilterConfigType;




typedef struct
{

  Can_HwHandleType CanTxHwObjId;

  uint8 CanTxBuffIndx;

  uint8 HwControllerId;







  uint8 CanTxHwObjIdType;

  Can_17_McmCan_TxBufferType CanTxBufferType;




} Can_17_McmCan_TxHwObjectConfigType;




typedef struct
{
  uint8 CanEventType[(4U)];
} Can_17_McmCan_EventHandlingType;
# 553 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef struct
{

  Ifx_CAN_N* CanNodeAddress;

  uint32 CanNPCRValue;


  uint16 CanControllerMOMap[(6U)];

  uint16 CanDefaultBRCfgIndx;

  uint16 CanBaudrateCfgIndx;

  uint16 CanNoOfBaudrateCfg;

  uint8 CanKernelHwId;

  uint8 CanControllerHwId;

  uint8 CanControllerLogicalId;






} Can_17_McmCan_ControllerConfigType;




typedef uint8 Can_17_McmCan_ControllerIndexType;




typedef uint8 Can_17_McmCan_HthPeriodIndexType;




typedef uint8 Can_17_McmCan_HrhPeriodIndexType;






typedef struct
{

  uint8 CanHthCoreAssigned;

  uint8 CanHthLogicContIndex;

  uint16 CanHthCoreSpecIndex;
} Can_17_McmCan_HthIndexType;





typedef struct
{

  uint8 CanLCoreAssigned;

  uint8 CanLCoreSpecContIndex;

  uint8 CanLContPhyIndex;

  uint8 CanLKerPhyIndex;
} Can_17_McmCan_LogicalControllerIndexType;







typedef struct
{

  uint8 CanPLogicContIndex;

  uint8 CanPCoreSpecContIndex;

  uint8 CanPCoreAssigned;
} Can_17_McmCan_PhyControllerIndexType;






typedef struct
{

  const uint8 CanCoreContCnt;

  const Can_17_McmCan_ControllerIndexType* CanControllerIndexingPtr;

  const Can_17_McmCan_ControllerConfigType* CanControllerConfigPtr;


  const Can_17_McmCan_ControllerMsgRAMConfigType*
  CanControllerMsgRAMMapConfigPtr;

  const Can_17_McmCan_EventHandlingType* CanEventHandlingConfigPtr;

  const Can_17_McmCan_ControllerBaudrateConfigType* CanBaudrateConfigPtr;







  const Can_17_McmCan_TxHwObjectConfigType* CanTxHwObjectConfigPtr;

  const Can_17_McmCan_SIDFilterConfigType* CanSIDFilterConfigPtr;

  const Can_17_McmCan_XIDFilterConfigType* CanXIDFilterConfigPtr;
# 697 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
} Can_17_McmCan_CoreConfigType;






typedef struct
{



  const Can_17_McmCan_CoreConfigType* CanCoreConfigPtr[(0x4U)];



  const uint8 CanNoOfKernel;

  const Can_HwHandleType CanNoOfHrh;

  const Can_17_McmCan_McmModuleConfigType* CanMCMModuleConfigPtr;

  const Can_17_McmCan_PhyControllerIndexType* CanPhyControllerIndexPtr;

  const Can_17_McmCan_LogicalControllerIndexType* CanLogicalControllerIndexPtr;

  const Can_17_McmCan_HthIndexType* CanHthIndexPtr;
# 736 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
} Can_17_McmCan_ConfigType;
# 762 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 785 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 763 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 792 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_Init
(
  const Can_17_McmCan_ConfigType* const Config
);
# 975 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern Can_ReturnType Can_17_McmCan_SetControllerMode
(
  const uint8 Controller,
  const Can_StateTransitionType Transition
);
# 1004 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_DisableControllerInterrupts
(
  const uint8 Controller
);
# 1032 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_EnableControllerInterrupts
(
  const uint8 Controller
);
# 1063 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern Can_ReturnType Can_17_McmCan_Write
(
  const Can_HwHandleType Hth,
  const Can_PduType* const PduInfo
);
# 1094 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Write(void);
# 1122 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Read(void);
# 1148 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_BusOff
(
  void
);
# 1177 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Wakeup
(
  void
);
# 1205 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Mode
(
  void
);
# 1283 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrBusOffHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1319 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrReceiveHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1352 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrTransmitHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1387 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrRxFIFOHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1471 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 797 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 1472 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/Can_17_McmCan_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h" 1
# 62 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 588 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h" 2

extern const Can_17_McmCan_ConfigType Can_17_McmCan_Config;
# 82 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 601 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h" 2
# 2 ".\\output\\inc/Can_17_McmCan_PBcfg.h" 2
# 1474 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 2 ".\\output\\inc/Can_17_McmCan.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\mcal\\Can.h" 2
# 2 ".\\output\\inc/Can.h" 2
# 24 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_UserCfg.h" 2
# 2 ".\\output\\inc/Rte_UserCfg.h" 2
# 19 ".\\output\\inc/..\\..\\rte\\Rte.h" 2





# 1 ".\\output\\inc/Std_Types.h" 1
# 25 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
# 37 ".\\output\\inc/..\\..\\rte\\Rte.h"
# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
void Rte_Tick_Timeouts(void);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 41 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
# 132 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef uint8 Rte_TransformerErrorCode;
typedef uint8 Rte_TransformerClass;







typedef struct Rte_TransformerError {
   Rte_TransformerErrorCode errorCode;
   Rte_TransformerClass transformerClass;
} Rte_TransformerError;





typedef struct {
   uint16 clientId;
   uint16 sequenceCounter;
} Rte_Cs_TransactionHandleType;



# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 158 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
extern void Rte_memcpy(void * dst,
                                          const void * src,
                                          uint16 length);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 163 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
# 172 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef sint8 Rte_Char;
typedef sint8* Rte_String;


typedef struct {
   void * in;
   void * out;
   uint16 used;
   Std_ReturnType lost_data;
} Rte_QDynType;

typedef enum {
   RTE_DRA,
   RTE_WOWP,
   RTE_TASK,
   RTE_ARE,
   RTE_EV,
   RTE_MSI
} Rte_NotificationType;

typedef struct Rte_QCmnType {
   Rte_QDynType * dynamic;
   boolean copy;
   uint16 queue_size;
   uint16 element_size;
   void * buffer_start;
   void * buffer_end;
   Rte_NotificationType notification_type;
} Rte_QCmnType;




typedef const struct Rte_QCmnType * Rte_QCmnRefType;




typedef const void * RteCalprmRefTabEntryType;
# 219 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef const void * Rte_ResourceRefType;
# 232 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef unsigned int Rte_AlarmRefType;

typedef uint16 Rte_AlarmIndexType;

typedef uint16 Rte_SeqCounterType_16;




typedef void SchM_ConfigType;
# 17 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 2
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\rte\\Rte_Cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 15 ".\\output\\inc/..\\..\\rte\\Rte_Cfg.h" 2
# 18 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 2







struct Rte_CDS_ASW_BASE;
struct Rte_CDS_ASW_COM;
struct Rte_CDS_ASW_CORE0;
struct Rte_CDS_ASW_CORE1;
struct Rte_CDS_ASW_CORE2;
struct Rte_CDS_ASW_CORE3;
struct Rte_CDS_ASW_DCM;
struct Rte_CDS_ASW_DEM;
struct Rte_CDS_ASW_NM;
struct Rte_CDS_ASW_NVM;
struct Rte_CDS_ASW_WDG;
struct Rte_CDS_ASW_XCP;
struct Rte_CDS_BswM;
struct Rte_CDS_CDD_CORE0;
struct Rte_CDS_CDD_CORE1;
struct Rte_CDS_CDD_CORE2;
struct Rte_CDS_CDD_CORE3;
struct Rte_CDS_ComM;
struct Rte_CDS_Dcm;
struct Rte_CDS_Dem;
struct Rte_CDS_Det;
struct Rte_CDS_EcuM;
struct Rte_CDS_NvM;
struct Rte_CDS_RSID;
struct Rte_CDS_SWC_DEM;
struct Rte_CDS_WdgM;
struct Rte_CDS_rba_DiagLib;
# 61 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 Impl_NVM_DstPtrType_1024[1024];




typedef uint16 BswM_ModeType;

typedef uint16 BswM_UserType;
# 78 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint32 CanIf_u32_impl;

typedef uint16 CanIf_u16_impl;

typedef uint8 CanIf_u8_impl;

typedef struct {
   CanIf_u32_impl CanId;
   CanIf_u16_impl swPduHandle;
   CanIf_u8_impl SduLength;
   CanIf_u8_impl BufferIndex;
} CanIf_CanIdBuffer_struct_impl;







typedef uint8 CanIf_ControllerModeType_Enum_impl;

typedef struct {
   CanIf_u8_impl Ctrl_Pdu_mode;
} CanIf_ControllerStateType_struct_impl;

typedef CanIf_ControllerStateType_struct_impl CanIf_ControllerState_Astruct_impl[4];


typedef uint8 CanIf_NotifStatusType_Enum_impl;

typedef CanIf_NotifStatusType_Enum_impl CanIf_NotifStatusType_Aenum_impl[152];




typedef uint8 CanIf_PduModeType_Enum_impl;



typedef uint8 CanIf_Prv_BuffStatus_ten_Enum_impl;

typedef struct {
   CanIf_u8_impl last_index;
   CanIf_u8_impl bufferstatus;
} CanIf_Prv_TxBufferStatus_tst_struct_impl;

typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_01_Tx_25_Au8_impl[80];
typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_01_Tx_Basic_Au8_impl[240];
typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_02_Tx_Basic_Au8_impl[80];
typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_03_Tx_Basic_Au8_impl[80];
typedef CanIf_Prv_TxBufferStatus_tst_struct_impl CanIf_TxBufferRam_Astruct_impl[91];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_01_Tx_25_Astruct_impl[10];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_01_Tx_Basic_Astruct_impl[30];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_02_Tx_Basic_Astruct_impl[10];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_03_Tx_Basic_Astruct_impl[10];
typedef uint8 CanIf_boolean_impl;



typedef uint8 CanSM_boolean_Impl;

typedef CanSM_boolean_Impl CanSM_Aboolean_impl[4];
typedef uint8 CanSM_u8_Impl;

typedef CanSM_u8_Impl CanSM_Au8_impl[4];


typedef uint8 CanSM_BusOffRecoveryStateType_Enum_impl;



typedef uint8 CanSM_NetworkModeStateType_Enum_impl;



typedef uint16 CanSM_u16_Impl;

typedef uint8 CanSM_TimerStateType_Enum_impl;

typedef struct {
   CanSM_u16_Impl cntTick_u16;
   CanSM_TimerStateType_Enum_impl stTimer;
} CanSM_TimerConfig_tst_struct_impl;

typedef CanSM_TimerConfig_tst_struct_impl CanSM_TimerConfig_ast_Astruct_impl[4];
typedef CanSM_BusOffRecoveryStateType_Enum_impl CanSM_currBOR_State_a_Aenum_impl[4];
typedef CanSM_NetworkModeStateType_Enum_impl CanSM_currComM_Mode_a_Aenum_impl[4];
# 179 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 Com_impl_u8;

typedef Com_impl_u8 Com_SigBuf_au8_impl[960];
typedef Com_impl_u8 Com_implDataType_au8_Size8[8];


typedef boolean Com_impl_b;

typedef uint16 Com_impl_u16;

typedef uint32 Com_impl_u32;



typedef uint64 Com_impl_u64;

typedef uint32 ComM_uint32_Impl;

typedef uint16 ComM_uint16_Impl;

typedef uint8 ComM_uint8_Impl;

typedef uint8 ComM_bool_Impl;

typedef struct {
   ComM_uint32_Impl ChannelState_e;
   ComM_uint32_Impl LightTimeoutCtr_u32;
   ComM_uint16_Impl MinFullComTimeoutCtr_u16;
   ComM_uint16_Impl UserRequestCtr_u16;
   ComM_uint8_Impl ChannelMode_u8;
   ComM_uint8_Impl BusSmMode_u8;
   ComM_uint8_Impl PassiveRequestState_u8;
   ComM_uint8_Impl PncRequestCtr_u8;
   ComM_uint8_Impl InhibitionReqStatus_u8;
   ComM_bool_Impl NmNetworkRequestStatus_b;
   ComM_bool_Impl DiagnosticRequestState_b;
   ComM_bool_Impl CommunicationAllowed_b;
   ComM_bool_Impl NmBusSleepIndicationStatus_b;
   ComM_bool_Impl NmPrepareBusSleepIndicationStatus_b;
   ComM_bool_Impl NmNetworkModeStatus_b;
} ComM_ChannelStruct_Impl;

typedef ComM_ChannelStruct_Impl ComM_ChannelStruct_Array_Impl[4];
typedef uint8 ComM_InhibitionStatusType;

typedef uint8 ComM_ModeType;

typedef uint8 ComM_UserHandleType;

typedef struct {
   ComM_uint16_Impl WakeUpInhibitionCtr_u16;
   ComM_uint16_Impl LimitToNoComCtr_u16;
   ComM_uint8_Impl RequestedUserMode_u8;
   ComM_uint8_Impl IndicatedUserMode_u8;
   ComM_uint8_Impl numChannelsInFullCom_u8;
   ComM_uint8_Impl numChannelsInSilentCom_u8;
   ComM_uint8_Impl numChannelsInNoCom_u8;
} ComM_UserStruct_Impl;

typedef ComM_UserStruct_Impl ComM_UserStruct_Array_Impl[4];
# 263 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 Dcm_ConfirmationStatusType;

typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_04Type[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_05Type[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_0CType[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_0DType[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_21Type[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_30Type[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_31Type[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_41Type[4];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_42Type[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_49Type[1];
typedef uint8 Dcm_DidSupportedType;

typedef uint8 Dcm_InfoTypeServicesArray_DcmDspVehInfoData_04Type[16];
typedef uint8 Dcm_InfoTypeServicesArray_DcmDspVehInfoData_0AType[20];
typedef uint8 Dcm_InfoTypeServicesArray_VIT_06_0Type[4];
typedef uint8 Dcm_NegativeResponseCodeType;

typedef uint8 Dcm_OpStatusType;

typedef uint8 Dcm_ProtocolType;

typedef uint8 Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0PrimitivType;

typedef Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0PrimitivType Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0Type;

typedef uint8 Dcm_SecLevelType;

typedef uint8 Dcm_SesCtrlType;

typedef uint8 Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalPrimitivType;

typedef Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalPrimitivType Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalType;



typedef uint8 DemDataElememtDataSize_CS_ExtendedDataRecord_Aged_counter[1];
typedef uint8 DemDataElememtDataSize_CS_ExtendedDataRecord_Fault_pending_counter[1];
typedef uint8 DemDataElememtDataSize_PID_02[2];
typedef uint8 DemDataElememtDataSize_PID_04[1];
typedef uint8 DemDataElememtDataSize_PID_05[1];
typedef uint8 DemDataElememtDataSize_PID_0C[2];
typedef uint8 DemDataElememtDataSize_PID_0D[1];
typedef uint8 DemDataElememtDataSize_PID_42[2];
typedef uint8 DemDataElememtDataSize_PID_49[1];
typedef uint8 Dem_DTCFormatType;

typedef uint16 Dem_DTCOriginType;

typedef uint8 Dem_DTRControlType;

typedef uint8 Dem_DebounceResetStatusType;

typedef uint8 Dem_DebouncingStateType;

typedef uint32 Dem_DebugDataType;

typedef uint16 Dem_DtrIdType;

typedef uint16 Dem_EventIdType;

typedef uint8 Dem_EventStatusType;

typedef uint8 Dem_IndicatorIdType;

typedef uint8 Dem_IndicatorStatusType;

typedef uint8 Dem_InitMonitorReasonType;

typedef uint8 Dem_IumprDenomCondIdType;

typedef uint8 Dem_IumprDenomCondStatusType;

typedef uint8 Dem_MaxDataValueType[6];
typedef uint8 Dem_OperationCycleIdType;

typedef uint8 Dem_OperationCycleStateType;

typedef uint8 Dem_PID21valueType[2];
typedef uint8 Dem_PID31valueType[2];
typedef uint8 Dem_PID4DvalueType[2];
typedef uint8 Dem_PID4EvalueType[2];
typedef uint8 Dem_RatioIdType;

typedef uint8 Dem_UdsStatusByteType;
# 428 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 EcuM_BootTargetType;



typedef uint8 EcuM_ShutdownCauseType;



typedef uint16 EcuM_ShutdownModeType;

typedef uint8 EcuM_ShutdownTargetType;



typedef uint32 EcuM_TimeType;

typedef uint16 EcuM_UserType;
# 458 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint16 NvM_BlockIdType;

typedef const void * NvM_Rb_ConstVoidPtr;






typedef void * NvM_Rb_VoidPtr;
typedef uint8 NvM_RequestResultType;

typedef uint8 PduR_uint8_impl;
# 506 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 WdgM_CheckpointIdType;

typedef uint8 WdgM_SupervisedEntityIdType;



typedef uint8 WdgM_ModeType;
# 528 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 WdgM_GlobalStatusType;

typedef uint8 WdgM_LocalStatusType;

typedef uint8 Array100ByteDataElement[100];
typedef boolean Boolean;
typedef float64 Double;
typedef float32 Float;
typedef uint16 UInt16;
typedef uint32 UInt32;
typedef uint8 UInt8;
typedef Std_ReturnType (*Rte_CallFP_ASW_CORE0_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE0_Core_ClientServer_Interface_Core_ClientServer) (uint16 * CoreStatus, uint16 Data2Core, uint16 * DataOfCore);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE0_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE1_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE1_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE2_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE2_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE3_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE3_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_IndicatorStatus_GetIndicatorStatus) (Dem_IndicatorStatusType * IndicatorStatus);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_GetCycleQualified) (boolean * CycleState);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_GetOperationCycleState) (Dem_OperationCycleStateType * CycleState);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_SetCycleQualified) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_SetOperationCycleState) (Dem_OperationCycleStateType CycleState);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_LimitECUToNoComMode) (boolean Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_ReadInhibitCounter) (uint16 * CounterValue);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_ResetInhibitCounter) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_SetECUGroupClassification) (ComM_InhibitionStatusType Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_GetCurrentComMode) (ComM_ModeType * ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_GetMaxComMode) (ComM_ModeType * ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_GetRequestedComMode) (ComM_ModeType * ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_RequestComMode) (ComM_ModeType ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_EraseBlock) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_GetDataIndex) (uint8 * DataIndexPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_GetErrorStatus) (NvM_RequestResultType * RequestResultPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_InvalidateNvBlock) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_ReadBlock) (NvM_Rb_VoidPtr DstPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_RestoreBlockDefaults) (NvM_Rb_VoidPtr DstPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_SetDataIndex) (uint8 DataIndex);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_SetRamBlockStatus) (boolean BlockChanged);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_WriteBlock) (NvM_Rb_ConstVoidPtr SrcPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_WDG_WdgM_LocalSupervision_CheckpointReached) (void);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_04_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_05_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_0C_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_0D_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_21_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_30_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_31_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_41_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_42_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_49_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_InfotypeServices_DcmDspVehInfoData_04_GetInfotypeValueData) (Dcm_OpStatusType OpStatus, uint8 * DataValueBuffer, uint8 * DataValueBufferSize);

typedef Std_ReturnType (*Rte_CallFP_Dcm_InfotypeServices_DcmDspVehInfoData_0A_GetInfotypeValueData) (Dcm_OpStatusType OpStatus, uint8 * DataValueBuffer, uint8 * DataValueBufferSize);

typedef Std_ReturnType (*Rte_CallFP_Dcm_InfotypeServices_VIT_06_0_GetInfotypeValueData) (Dcm_OpStatusType OpStatus, uint8 * DataValueBuffer, uint8 * DataValueBufferSize);

typedef Std_ReturnType (*Rte_CallFP_Dcm_RoutineServices_DcmDspRoutine_0203_RequestResults) (Dcm_OpStatusType OpStatus, Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0Type * DataOut_DcmDspRequestRoutineResultsOutSignal_0, Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Rte_CallFP_Dcm_RoutineServices_DcmDspRoutine_0203_Start) (Dcm_OpStatusType OpStatus, Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalType * DataOut_DcmDspStartRoutineOutSignal, Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_02_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_04_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_05_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_0C_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_0D_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_42_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_49_ReadData) (uint8 * Data);

typedef void (*Rte_IrvReadFP_ASW_CORE0_RE_CORE0_SWC_100ms_Explicit_IRV_1) (uint8 * data);

typedef void (*Rte_IrvWriteFP_ASW_CORE0_RE_CORE0_SWC_10ms_Explicit_IRV_1) (const uint8 * data);

typedef Impl_NVM_DstPtrType_1024 Rte_PimType_ASW_NVM_ASW_NVM_BlockNative_1024_Type;
typedef Rte_PimType_ASW_NVM_ASW_NVM_BlockNative_1024_Type * (*Rte_PimFP_ASW_NVM_ASW_NVM_BlockNative_1024_1) (void);

typedef Impl_NVM_DstPtrType_1024 Rte_PimType_ASW_NVM_ASW_NVM_BlockRedundant_1024_Type;
typedef Rte_PimType_ASW_NVM_ASW_NVM_BlockRedundant_1024_Type * (*Rte_PimFP_ASW_NVM_ASW_NVM_BlockNative_1024_2) (void);

typedef Std_ReturnType (*Rte_ReadFP_ASW_CORE0_DataTransfer100Byte_Core0Core1_Data_ptr) (uint8 * data);

typedef Std_ReturnType (*Rte_ReadFP_ASW_CORE1_DataTransfer100Byte_Core0Core1_Data_ptr) (uint8 * data);

typedef Std_ReturnType (*Rte_ReadFP_BswM_ETAS_SenderReceiverInterface_uint8_uint8) (uint8 * data);

typedef Std_ReturnType (*Rte_ReadFP_BswM_ModeRequestInterface_AppMode) (uint8 * data);

typedef const struct Rte_CDS_ASW_BASE * Rte_SelfType_ASW_BASE;

typedef const struct Rte_CDS_ASW_COM * Rte_SelfType_ASW_COM;

typedef const struct Rte_CDS_ASW_CORE0 * Rte_SelfType_ASW_CORE0;

typedef const struct Rte_CDS_ASW_CORE1 * Rte_SelfType_ASW_CORE1;

typedef const struct Rte_CDS_ASW_CORE2 * Rte_SelfType_ASW_CORE2;

typedef const struct Rte_CDS_ASW_CORE3 * Rte_SelfType_ASW_CORE3;

typedef const struct Rte_CDS_ASW_DCM * Rte_SelfType_ASW_DCM;

typedef const struct Rte_CDS_ASW_DEM * Rte_SelfType_ASW_DEM;

typedef const struct Rte_CDS_ASW_NM * Rte_SelfType_ASW_NM;

typedef const struct Rte_CDS_ASW_NVM * Rte_SelfType_ASW_NVM;

typedef const struct Rte_CDS_ASW_WDG * Rte_SelfType_ASW_WDG;

typedef const struct Rte_CDS_ASW_XCP * Rte_SelfType_ASW_XCP;

typedef const struct Rte_CDS_BswM * Rte_SelfType_BswM;

typedef const struct Rte_CDS_CDD_CORE0 * Rte_SelfType_CDD_CORE0;

typedef const struct Rte_CDS_CDD_CORE1 * Rte_SelfType_CDD_CORE1;

typedef const struct Rte_CDS_CDD_CORE2 * Rte_SelfType_CDD_CORE2;

typedef const struct Rte_CDS_CDD_CORE3 * Rte_SelfType_CDD_CORE3;

typedef const struct Rte_CDS_ComM * Rte_SelfType_ComM;

typedef const struct Rte_CDS_Dcm * Rte_SelfType_Dcm;

typedef const struct Rte_CDS_Dem * Rte_SelfType_Dem;

typedef const struct Rte_CDS_Det * Rte_SelfType_Det;

typedef const struct Rte_CDS_EcuM * Rte_SelfType_EcuM;

typedef const struct Rte_CDS_NvM * Rte_SelfType_NvM;

typedef const struct Rte_CDS_RSID * Rte_SelfType_RSID;

typedef const struct Rte_CDS_SWC_DEM * Rte_SelfType_SWC_DEM;

typedef const struct Rte_CDS_WdgM * Rte_SelfType_WdgM;

typedef const struct Rte_CDS_rba_DiagLib * Rte_SelfType_rba_DiagLib;

typedef Std_ReturnType (*Rte_SwitchAckFP_WdgM_WdgM_GlobalMode_currentMode) (void);

typedef Std_ReturnType (*Rte_SwitchAckFP_WdgM_WdgM_LocalMode_currentMode) (void);

typedef Std_ReturnType (*Rte_SwitchFP_ComM_ComM_CurrentMode_currentMode) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01_MDGP_DcmCommunicationControl_Can_Network_CanNodeNum_01) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmControlDTCSetting_MDGP_DcmControlDTCSetting) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmDiagnosticSessionControl_MDGP_DcmDiagnosticSessionControl) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmEcuReset_MDGP_DcmEcuReset) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_WdgM_WdgM_GlobalMode_currentMode) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_WdgM_WdgM_LocalMode_currentMode) (uint8 data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_BASE_ModeRequestInterface_AppMode) (uint8 data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_CORE0_DataTransfer100Byte_Core0Core1_Data_ptr) (const uint8 * data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_CORE0_ModeRequestInterface_AppMode) (uint8 data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_CORE1_DataTransfer100Byte_Core0Core1_Data_ptr) (const uint8 * data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_NM_ETAS_SenderReceiverInterface_uint8_uint8) (uint8 data);

# 1 ".\\output\\inc/..\\..\\rte\\iocNeeds.h" 1
# 752 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 2
# 17 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h" 2
# 2 ".\\output\\inc/Rte_Det_Type.h" 2
# 18 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 2
# 65 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h"
typedef uint16 Det_BufferIndexType;






typedef struct
{
    uint8 Dummy;
} Det_ConfigType;





typedef struct
{
    uint16 ModuleId;
    uint8 InstanceId;
    uint8 ApiId;
    uint8 ErrorId;
} Det_ErrorEntryBufferType;
# 28 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2
# 1 ".\\output\\inc/Det_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg_Version.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg.h" 2
# 2 ".\\output\\inc/Det_Cfg.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2







# 1 ".\\output\\inc/Det_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 2
# 2 ".\\output\\inc/Det_MemMap.h" 2
# 37 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2
# 75 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
void Det_Init(const Det_ConfigType* ConfigPtr);
# 85 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
void Det_Start(void);
# 112 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId);
# 126 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
Std_ReturnType Det_ReportRuntimeError(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId);
# 142 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
Std_ReturnType Det_ReportTransientFault(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 FaultId);



# 1 ".\\output\\inc/Det_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 91 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 2
# 2 ".\\output\\inc/Det_MemMap.h" 2
# 147 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2
# 2 ".\\output\\inc/Det.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
# 244 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
typedef enum
{
  XCP_BG_IDLE = 0x00u,
  XCP_BG_CHKSUM = 0x01u,
  XCP_BG_MEM_WRITE = 0x02u,
  XCP_BG_REPEAT_CMD = 0x03u,
  XCP_BG_DO_DISCONNECT = 0x04u,
  XCP_BG_CANCEL_REQ = 0x05u
} Xcp_BgActivity_t;





typedef void (*Xcp_CmdFunctionPtr)(const PduInfoType* XcpPacket, uint8 protLayerId);


typedef struct
{
  Xcp_CmdFunctionPtr Command_pfct;
  uint8 ResourceMask_u8;
  uint8 CmdMinLength_u8;
}Xcp_CmdTable_t;


typedef struct
{
  uint16 WritePos_u16;
  uint16 ReadPos_u16;
  uint16 ReadPos_OdtNum_u16;
  uint16 QueSize_u16;
} Xcp_Que_t;


typedef struct
{
  Xcp_State_t XcpState_en;
  uint8 ConnectedTlId_u8;
  uint8 ResourceProtStatus_u8;
  Xcp_AddrType_t Mta;
  uint16 MaxDto_u16;
  uint16 MaxDtoAligned_u16;
  uint8 MaxCto_u8;







}Xcp_Session_t;
# 305 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
typedef struct
{
  uint8 Buffer_au8[8u];
  uint32 Length_u32;
}Xcp_CtoMax_t;



typedef struct
{

  boolean UploadRunning_b;


  uint8 RemainingSize_u8;



  uint8 DownloadSize_u8;


  uint8 ReceivedSize_u8;
  uint8 DownloadBuffer_au8[255u];






}Xcp_Mem_t;




typedef struct
{
  boolean SeedWaitingKey_b;
  uint8 SeedRemaingSize_u8;
}Xcp_SeedAndKey_t;




typedef struct
{
  uint32 BlockSize_u32;



}Xcp_Checksum_t;




typedef struct
{
  uint16 Xcp_Debug_TransmitOkCtr_u16;
  uint16 Xcp_Debug_TransmitNotOkCtr_u16;
  uint16 Xcp_Debug_SendResTxConfCtr_u16;
  uint16 Xcp_Debug_SendResCtr_u16;
  uint16 Xcp_Debug_SendEvTxConfCtr_u16;
  uint16 Xcp_Debug_SendEvCtr_u16;

  uint16 Xcp_Debug_SendDaqTxConfCtr_u16;
  uint16 Xcp_Debug_SendDaqCtr_u16;

  uint16 Xcp_Debug_TxConfCtr_u16;
}Xcp_Debug_t;
# 381 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
typedef struct
{
  uint16 OdtEntryPos_u16;
  uint16 OdtEntryMax_u16;
  uint16 DaqListNum_u16;
  uint16 AbsOdtNum_u16;
}Xcp_SelectedOdtEntry_t;


typedef struct
{



  uint16 OdtEntryFirst_u16;
  uint16 Length_u16;
  uint8 OdtEntryCnt_u8;
  uint8 CopyRoutine_u8;
}Xcp_Odt_t;


typedef struct
{
  uint8 OdtReceiveCtr_u8;
  uint8 BufferNumReadActive_u8;
  uint8 BufferNumReadNext_u8;
  uint8 BufferNumWriteActive_u8;
  uint8 CntStimReceived_u8;
  uint8 Status_u8;
}Xcp_BufferInfo_t;


typedef struct
{
  uint8* DaqListQue_p;
  Xcp_Que_t DaqListQuePos;
  uint16 OdtFirst_u16;
  uint16 EventChannelNum_u16;
  uint8 OdtCnt_u8;



  Xcp_PduIdType XcpTxPduId;
  uint8 Prescaler_u8;
  uint8 CycleCnt_u8;
  uint8 Priority_u8;
  uint8 Flags_u8;
  volatile uint8 Mode_u8;
  volatile boolean CurrentlyRunning_b;






}Xcp_DaqList_t;


typedef struct
{

  Xcp_DaqList_t* DaqList_p;
  Xcp_Odt_t* Odt_p;
  Xcp_AddrValue* OdtEntryAddress_p;



  uint8* OdtEntrySize_p;
  uint16* PriorityList_p;
  uint8* DaqQue_p;


  uint16 DaqListCnt_u16;
  uint16 OdtCnt_u16;
  uint16 OdtEntryCnt_u16;




  Xcp_SelectedOdtEntry_t SelectedOdtEntry;


  uint8* DaqRamPtr_pu8;
  uint32 DaqRamSize_u32;


  uint16 DaqListSendingCnt_u16;
  uint16 DaqListSending_u16;

  boolean OverloadOccurred_b;

  Xcp_DaqState_t DaqState_en;
}Xcp_DaqConfig_t;
# 518 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
typedef struct
{
  Xcp_Session_t Session;




  Xcp_DaqConfig_t DaqConfig;

}Xcp_NoInit_t;

typedef struct
{

  Xcp_DaqRamSections_t DaqRamSections[1u];




  boolean DaqTransmissionStopped_b;




  uint8 Tl2PlRef_au8[1u];
  uint8 EnabledResources_u8;
  uint8 InitStatus_u8;



}Xcp_GlobalNoInit_t;


typedef struct
{
  uint8 Wait4TxConfCtr_u8;
  Xcp_ErrorCode BgDoDisconnect_Response;
  Xcp_BgActivity_t BgActivityState;
  Xcp_CtoMax_t ResBuffer;
  Xcp_Cto8_t EvBuffer;
  Xcp_Cto8_t CmdBuffer;
  Xcp_CtoMax_t ServBuffer;

  Xcp_Mem_t Mem;


  Xcp_SeedAndKey_t SeedAndKey;


  Xcp_Checksum_t Checksum;
  uint16 ReqTimeoutCnt_u16;


  Xcp_Debug_t Debug;

}Xcp_Cleared_t;






# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 61 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 581 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
extern Xcp_NoInit_t Xcp_NoInit[1u];
extern Xcp_GlobalNoInit_t Xcp_GlobalNoInit;

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 585 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 76 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 588 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
extern Xcp_Cleared_t Xcp_Cleared[1u];

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 81 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 591 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2






# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 598 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2



extern void Xcp_SendRes(uint8 protLayerId);
extern void Xcp_SendServiceRequestReset(uint8 protLayerId);
extern void Xcp_SendServiceRequestData(uint8 *DataStream, uint8 StreamSize_u8, uint8 protLayerId);
extern void Xcp_SendPosRes(uint8 protLayerId);
extern void Xcp_SendErrRes(Xcp_ErrorCode ErrorCode, uint8 protLayerId);
extern void Xcp_SendEv(const Xcp_Cto8_t* XcpPacketCtoPtr, uint8 protLayerId);
extern void Xcp_SendEv_Code(uint8 EventCode_u8, uint8 protLayerId);





extern boolean Xcp_DaqRamCheck(uint16 AddDaqList, uint8 AddOdt, uint8 AddOdtEntry, uint8 protLayerId);
extern uint32 Xcp_DaqRamCalc(uint16 AddDaqList, uint8 AddOdt, uint8 AddOdtEntry, uint8 protLayerId);
extern uint32 Xcp_DaqQueRamCalc(uint8 AddOdt, boolean setQuePointers, uint8 protLayerId);
extern void Xcp_DaqListStart(uint16 daqListNo, uint8 protLayerId);
extern void Xcp_DaqListStartSelected(uint8 protLayerId);
extern void Xcp_DaqProcessDaqState(uint8 protLayerId);
extern void Xcp_DaqCalculatePriorityList(uint8 protLayerId);
extern void Xcp_StoreCommand(const PduInfoType* XcpPacket, uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqListStopAll(uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqListStop(uint16 daqListNo, uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqListStopSelected(uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqTriggerStateStartStop(const PduInfoType* XcpPacket, uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqTransformAndCheckOdtEntry(Xcp_AddrType_t* XcpAddrPtr, uint8 Size, uint16 daqListNo_u16, uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqListFinalize(uint16 daqListNo_u16, uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqWriteDaq(uint32 Address, uint8 Extension, uint8 Size, uint8 protLayerId);



extern void Xcp_InitDaqConfig(uint8 protLayerId);
extern void Xcp_DaqRamRemove(uint8 protLayerId);
extern Xcp_ErrorCode Xcp_DaqRamSetRam(uint8 protLayerId);
# 644 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdSynch_Cancel(uint8 protLayerId);



extern void Xcp_BlockUpload(uint8 protLayerId);


extern void Xcp_DownloadRes(Xcp_ErrorCode Error, uint8 protLayerId);



extern void Xcp_DoDisconnect(uint8 protLayerId, Xcp_ErrorCode Response);


extern void Xcp_BuildChecksumMainFunction(uint8 protLayerId);





extern void Xcp_InitChecksum(uint8 protLayerId);


extern void Xcp_InitSeedKey(uint8 protLayerId);

extern void Xcp_InitUpload(uint8 protLayerId);

extern void Xcp_InitDownload(uint8 protLayerId);





extern void Xcp_ReceiveCommand(const PduInfoType* XcpPacketPtr, uint8 protLayerId);
extern void Xcp_Receive(const PduInfoType* XcpPacketPtr, uint8 XcpTransportLayerId);
# 695 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern Xcp_ErrorCode Xcp_MemRead(uint8* AddrPtrDst, uint8 Length, uint8 protLayerId);

extern Xcp_ErrorCode Xcp_MemWrite(const uint8* AddrPtrSrc, uint8 Length, uint8 protLayerId);
extern void Xcp_MemWriteMainFunction(uint8 protLayerId);



extern Xcp_ErrorCode Xcp_MemWriteProtectionCheck(const Xcp_AddrType_t XcpAddr, uint8 Length);

extern Xcp_ErrorCode Xcp_MemReadProtectionCheck(const Xcp_AddrType_t XcpAddr, uint8 Length, uint8 protLayerId);

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 707 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2



# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 147 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 148 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 711 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2



extern void Xcp_TxConfirmation(uint8 XcpTransportLayerId);


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 152 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 153 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 718 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 721 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2







extern void Xcp_SendDaq(uint16 daqListNo_u16, uint8 protLayerId);
extern uint8 Xcp_DaqEvent(uint16 daqListNo_u16, uint8 protLayerId);


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 733 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2




# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 738 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2

extern void Xcp_CreateQue(Xcp_DaqList_t* DaqListPtr, uint16 Size_u16);
extern void Xcp_InitDaqQueue(uint16 daqListNo_u16, uint8 protLayerId);

extern void Xcp_QueClearAll(uint8 protLayerId);

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 745 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2



# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 147 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 148 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 749 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
extern void Xcp_QueReadNext(Xcp_DaqList_t* DaqListPtr);

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 152 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 153 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 752 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2



# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 756 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
extern void Xcp_QueSetBack(Xcp_DaqList_t* DaqListPtr);

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 759 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
# 776 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 777 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2



extern void Xcp_CmdConnect (const PduInfoType* XcpPacket, uint8 protLayerId);


extern void Xcp_CmdDisconnect (const PduInfoType* XcpPacket, uint8 protLayerId);


extern void Xcp_CmdGetStatus (const PduInfoType* XcpPacket, uint8 protLayerId);


extern void Xcp_CmdSynch (const PduInfoType* XcpPacket, uint8 protLayerId);
# 814 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdGetSeed (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdUnlock (const PduInfoType* XcpPacket, uint8 protLayerId);





extern void Xcp_CmdSetMta (const PduInfoType* XcpPacket, uint8 protLayerId);


extern void Xcp_CmdUpload (const PduInfoType* XcpPacket, uint8 protLayerId);


extern void Xcp_CmdShortUpload (const PduInfoType* XcpPacket, uint8 protLayerId);



extern void Xcp_CmdBuildChecksum (const PduInfoType* XcpPacket, uint8 protLayerId);





extern void Xcp_CmdTransportLayerCmd (const PduInfoType* XcpPacket, uint8 protLayerId);
# 854 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdDownload (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdDownloadNext (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdDownloadMax (const PduInfoType* XcpPacket, uint8 protLayerId);
# 889 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdSetCalPage (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdGetCalPage (const PduInfoType* XcpPacket, uint8 protLayerId);
# 938 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdCopyCalPage (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdSetDaqPtr (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdWriteDaq (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdSetDaqListMode (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdStartStopDaqList (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdStartStopSynch (const PduInfoType* XcpPacket, uint8 protLayerId);
# 987 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdReadDaq (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdGetDaqClock (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdGetDaqProcessorInfo (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdGetDaqResolutionInfo (const PduInfoType* XcpPacket, uint8 protLayerId);
# 1022 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdGetDaqEventInfo (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdClearDaqList (const PduInfoType* XcpPacket, uint8 protLayerId);
# 1043 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
extern void Xcp_CmdFreeDaq (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdAllocDaq (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdAllocOdt (const PduInfoType* XcpPacket, uint8 protLayerId);






extern void Xcp_CmdAllocOdtEntry (const PduInfoType* XcpPacket, uint8 protLayerId);
# 1202 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 1203 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h" 2
# 2 ".\\output\\inc/Xcp_Priv.h" 2
# 8 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c" 2
# 21 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c"
# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 22 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c" 2
static boolean Xcp_DaqCheckOdtEntryInAllOdt(uint8 protLayerId);
static void Xcp_InitDaqOdtEntry(uint8 protLayerId);

# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 26 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c" 2







# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 34 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c" 2
# 42 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c"
void Xcp_CmdSetDaqPtr(const PduInfoType* XcpPacket, uint8 protLayerId)
{

 





  const Xcp_CmdSetDaqPtr_t* const CmdPtr = (const Xcp_CmdSetDaqPtr_t*) (void*) XcpPacket->SduDataPtr;


  Xcp_ErrorCode Error;
  uint16 AbsOdtNum;


  if (Xcp_NoInit[protLayerId].DaqConfig.DaqState_en == XCP_DAQ_STATE_ALLOC_ODT_ENTRY)
  {

    if (Xcp_DaqCheckOdtEntryInAllOdt(protLayerId) == (1 != 0) )
    {

      Xcp_InitDaqOdtEntry(protLayerId);
      Xcp_NoInit[protLayerId].DaqConfig.DaqState_en = XCP_DAQ_STATE_WRITE_DAQ;
    }
  }


  if( (CmdPtr->DaqListNum_u16 >= Xcp_NoInit[protLayerId].DaqConfig.DaqListCnt_u16)
         || (CmdPtr->OdtNum_u8 >= ((Xcp_NoInit[(protLayerId)].DaqConfig.DaqList_p[(CmdPtr->DaqListNum_u16)]).OdtCnt_u8))
         || (CmdPtr->OdtEntryNum_u8 >= ((Xcp_NoInit[(protLayerId)].DaqConfig.Odt_p[(((CmdPtr->OdtNum_u8) + ((Xcp_NoInit[(protLayerId)].DaqConfig.DaqList_p[(CmdPtr->DaqListNum_u16)]).OdtFirst_u16)))]).OdtEntryCnt_u8))
         )
  {

    Error = XCP_ERR_OUT_OF_RANGE;
  }


  else if (Xcp_NoInit[protLayerId].DaqConfig.DaqState_en < XCP_DAQ_STATE_WRITE_DAQ)
  {

    Error = XCP_ERR_SEQUENCE;
  }
  else
  {
    AbsOdtNum = ((CmdPtr->OdtNum_u8) + ((Xcp_NoInit[(protLayerId)].DaqConfig.DaqList_p[(CmdPtr->DaqListNum_u16)]).OdtFirst_u16));

    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.OdtEntryPos_u16 = ((Xcp_NoInit[(protLayerId)].DaqConfig.Odt_p[(AbsOdtNum)]).OdtEntryFirst_u16) + CmdPtr->OdtEntryNum_u8;
    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.OdtEntryMax_u16 = (((Xcp_NoInit[(protLayerId)].DaqConfig.Odt_p[(AbsOdtNum)]).OdtEntryFirst_u16) + ((Xcp_NoInit[(protLayerId)].DaqConfig.Odt_p[(AbsOdtNum)]).OdtEntryCnt_u8));
    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.AbsOdtNum_u16 = AbsOdtNum;
    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.DaqListNum_u16 = CmdPtr->DaqListNum_u16;

    Error = XCP_NO_ERROR;
  }

  if (Error == XCP_NO_ERROR)
  {

    Xcp_SendPosRes(protLayerId);
  }
  else
  {

    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.OdtEntryPos_u16 = 0;
    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.OdtEntryMax_u16 = 0;
    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.AbsOdtNum_u16 = 0;
    Xcp_NoInit[protLayerId].DaqConfig.SelectedOdtEntry.DaqListNum_u16 = 0;

    Xcp_SendErrRes(Error, protLayerId);
  }


 
}
# 130 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c"
static boolean Xcp_DaqCheckOdtEntryInAllOdt(uint8 protLayerId)
{

  uint32 OdtNo;
  boolean retVal ;


  retVal = (1 != 0) ;

  for (OdtNo = 0; OdtNo < Xcp_NoInit[protLayerId].DaqConfig.OdtCnt_u16; OdtNo++)
  {

    if (((Xcp_NoInit[(protLayerId)].DaqConfig.Odt_p[(OdtNo)]).OdtEntryCnt_u8) == 0)
    {
      retVal = (0 != 0) ;
    }
  }
  return retVal;
}
# 157 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c"
static void Xcp_InitDaqOdtEntry(uint8 protLayerId)
{


  (void)rba_BswSrv_MemSet( (void*)(&(Xcp_NoInit[(protLayerId)].DaqConfig.OdtEntryAddress_p[(0)])), (0), ((Xcp_NoInit[protLayerId].DaqConfig.OdtEntryCnt_u16 * ((sizeof(Xcp_AddrValue) + 1u)))));
}


# 1 ".\\output\\inc/Xcp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 1
# 139 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Memmap.h" 2
# 2 ".\\output\\inc/Xcp_MemMap.h" 2
# 166 "bsw\\Xcp\\src\\Xcp_CmdSetDaqPtr.c" 2
