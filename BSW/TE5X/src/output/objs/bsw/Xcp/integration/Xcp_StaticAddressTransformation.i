# 1 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c"



# 1 ".\\output\\inc/Xcp_Cbk.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
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
# 2 ".\\output\\inc/Xcp_Cbk.h" 2
# 5 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c" 2
# 19 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c"
# 1 "bsw\\Xcp\\integration\\Xcp_MemMap.h" 1
# 134 "bsw\\Xcp\\integration\\Xcp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 "bsw\\Xcp\\integration\\Xcp_MemMap.h" 2
# 20 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c" 2
# 53 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c"
# 1 "bsw\\Xcp\\integration\\Xcp_MemMap.h" 1
# 139 "bsw\\Xcp\\integration\\Xcp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 140 "bsw\\Xcp\\integration\\Xcp_MemMap.h" 2
# 54 "bsw\\Xcp\\integration\\Xcp_StaticAddressTransformation.c" 2
