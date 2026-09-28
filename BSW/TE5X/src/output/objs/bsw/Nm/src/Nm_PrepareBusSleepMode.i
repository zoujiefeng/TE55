# 1 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c"
# 10 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c"
# 1 ".\\output\\inc/Nm_Cbk.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h" 1
# 43 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
typedef enum
{
    NM_MODE_BUS_SLEEP,
    NM_MODE_PREPARE_BUS_SLEEP,
    NM_MODE_SYNCHRONIZE,
    NM_MODE_NETWORK
} Nm_ModeType;
# 67 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
typedef enum
{
    NM_STATE_UNINIT,
    NM_STATE_BUS_SLEEP,
    NM_STATE_PREPARE_BUS_SLEEP,
    NM_STATE_READY_SLEEP,
    NM_STATE_NORMAL_OPERATION,
    NM_STATE_REPEAT_MESSAGE,
    NM_STATE_SYNCHRONIZE,
    NM_STATE_OFFLINE
} Nm_StateType;
# 94 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
typedef enum
{
    NM_BUSNM_CANNM = 0,
    NM_BUSNM_FRNM = 1,
    NM_BUSNM_LINNM = 2,
    NM_BUSNM_UDPNM = 3,
    NM_BUSNM_GENERICNM = 4,
    NM_BUSNM_J1939NM = 5,
    NM_BUSNM_UNDEF = 0xFFu
} Nm_BusNmType;
# 116 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
typedef enum
{
   NM_ACTIVE_CHANNEL,
   NM_PASSIVE_CHANNEL
} Nm_ChannelType_ten;
# 26 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2

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
# 28 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2

# 1 ".\\output\\inc/Nm_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h" 1
# 95 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h"
# 1 ".\\output\\inc/CanNm.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h"
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 1 ".\\output\\inc/CanNm_Cfg_Internal.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg_Internal.h" 1
# 2 ".\\output\\inc/CanNm_Cfg_Internal.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 1 ".\\output\\inc/CanNm_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h" 1
# 31 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg_Internal.h" 1
# 32 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h" 2
# 66 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
typedef uint32 CanNm_TimerType;







typedef struct {
 CanNm_TimerType MsgCycleTime;
 CanNm_TimerType MsgCycleOffset;
 CanNm_TimerType MsgTimeoutTime;
 CanNm_TimerType MsgReducedTime;
 CanNm_TimerType ImmediateNmCycleTime;
 CanNm_TimerType NMTimeoutTime;
 CanNm_TimerType RepeatMessageTime;
 CanNm_TimerType RemoteSleepIndTime;
 CanNm_TimerType WaitBusSleepTime;
 PduIdType TxPduId;



 NetworkHandleType NetworkHandle;
 uint8 PduLength_u8;
 uint8 NodeIdPos_u8;
 uint8 ControlBitVectorPos_u8;
 boolean NodeDetectionEnabled_b;
 boolean NodeIdEnabled_b;
 boolean RepeatMsgIndEnabled_b;
 uint8 NodeId_u8;
 uint8 UserDataLength_u8;
 uint8 ImmediateNmTransmissions_u8;






 boolean stChannelActive_b;
 boolean stBusLoadReductionActive_b;
# 124 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
 boolean ActiveWakeupBitEnabled_b;
} CanNm_ChannelConfigType;


typedef struct {
 uint8 ByteNum;
 uint8 BitMask;

} CanNm_PNConfigType;
# 162 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
typedef struct {
 const void *CanNm_ConfigData;

 const Std_VersionInfoType *versionInfo;
} CanNm_ConfigType;
# 2 ".\\output\\inc/CanNm_Cfg.h" 2
# 15 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 1 ".\\output\\inc/CanNm_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_PBcfg.h" 1
# 2 ".\\output\\inc/CanNm_PBcfg.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 25 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h"
# 1 ".\\output\\inc/Nm.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 1
# 2 ".\\output\\inc/Nm.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 64 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h"
# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern void CanNm_Init(
                                          const CanNm_ConfigType * cannmConfigPtr
                                         );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 70 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2



# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 74 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_PassiveStartUp(
                                                              NetworkHandleType nmChannelHandle
                                                             );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2



# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_NetworkRequest(
                                                              NetworkHandleType nmChannelHandle
                                                             );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 88 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2



# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 92 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_NetworkRelease(
                                                              NetworkHandleType nmChannelHandle
                                                             );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 97 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2


# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 100 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_DisableCommunication(
                                                                    NetworkHandleType nmChannelHandle
                                                                   );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2


# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 108 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_EnableCommunication(
                                                                   NetworkHandleType nmChannelHandle
                                                                  );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 113 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2




# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_SetUserData(
                                                           NetworkHandleType nmChannelHandle,
                                                           const uint8 * nmUserDataPtr
                                                          );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 124 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2



# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 128 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_GetUserData(
                                                           NetworkHandleType nmChannelHandle,
                                                           uint8 * nmUserDataPtr
                                                          );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 134 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 148 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h"
# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 149 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_GetNodeIdentifier(
                                                              NetworkHandleType nmChannelHandle,
                                                                 uint8 * nmNodeIdPtr
                                                                );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 155 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2




# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 160 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_GetLocalNodeIdentifier(
                                                                      NetworkHandleType nmChannelHandle,
                                                                    uint8 * nmNodeIdPtr
                                                                     );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 166 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2




# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 171 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_RepeatMessageRequest(
                                                                    NetworkHandleType nmChannelHandle
                                                                   );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 176 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2



# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 180 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_GetPduData(
                                                          NetworkHandleType nmChannelHandle,
                                                          uint8 * nmPduDataPtr
                                                         );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 186 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2


# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 189 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_GetState(
                                                        NetworkHandleType nmChannelHandle,
                                                        Nm_StateType * nmStatePtr,
                                                        Nm_ModeType * nmModePtr
                                                       );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 196 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h"
# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 219 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
extern Std_ReturnType CanNm_CheckRemoteSleepIndication(
                                                                          NetworkHandleType nmChannelHandle,
                                                                          boolean * nmRemoteSleepIndPtr
                                                                         );

# 1 ".\\output\\inc/CanNm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_MemMap.h" 2
# 2 ".\\output\\inc/CanNm_MemMap.h" 2
# 225 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm.h" 2
# 2 ".\\output\\inc/CanNm.h" 2
# 96 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h" 2
# 104 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h"
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
# 105 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h" 2
# 190 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h"
typedef enum {
 NM_BUS_TYPE_CAN = 0
} Nm_BusType_ten;
# 201 ".\\output\\inc/..\\..\\bsw\\Nm\\Nm_Cfg.h"
extern void TestNm_RemoteSleepIndication(const NetworkHandleType NetworkHandle);

extern void TestNm_RemoteSleepCancellation(
  const NetworkHandleType NetworkHandle);

extern void Nm_RxIndicationCallback(const NetworkHandleType NetworkHandle);

extern void Nm_StateChangeIndication(const NetworkHandleType NetworkHandle,
  const Nm_StateType nmPreviousState, const Nm_StateType nmCurrentState);
# 2 ".\\output\\inc/Nm_Cfg.h" 2
# 30 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 511 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
typedef uint32 Nm_TimerType;
# 533 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
typedef struct
{
    Nm_TimerType ShutdownDelay;



    Nm_BusType_ten BusNmType;
    Nm_ChannelType_ten NmChannelType;
    NetworkHandleType ClusterIdx;
    NetworkHandleType comMHandle;
    boolean NmChannelSleepMaster;
    boolean NmSynchronizingNetwork;
    boolean NmNodeDetectionEnabled;
    boolean NmNodeIdEnabled;
    boolean NmRepeatMsgIndEnabled;
} Nm_ConfigType;
# 592 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 593 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern void Nm_Init(const Nm_ConfigType * ConfigPtr);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 596 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 610 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 611 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_PassiveStartUp(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 614 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 628 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 629 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_NetworkRequest(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 632 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 647 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 648 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_NetworkRelease(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 651 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 669 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 670 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_GetState
(
    NetworkHandleType NetworkHandle,
    Nm_StateType * nmStatePtr,
    Nm_ModeType * nmModePtr
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 678 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 696 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 697 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_SetUserData
(
    NetworkHandleType NetworkHandle,
    const uint8 * nmUserDataPtr
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 704 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 722 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 723 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_GetUserData
(
    NetworkHandleType NetworkHandle,
    uint8 * nmUserDataPtr
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 730 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 746 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 747 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_GetPduData
(
    NetworkHandleType NetworkHandle,
    uint8 * nmPduData
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 754 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 771 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 772 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_GetNodeIdentifier
(
     NetworkHandleType NetworkHandle,
     uint8 * nmNodeIdPtr
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 779 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 796 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 797 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_GetLocalNodeIdentifier
(
    NetworkHandleType NetworkHandle,
    uint8 * nmNodeIdPtr
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 804 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 820 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 821 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_CheckRemoteSleepIndication
(
    NetworkHandleType NetworkHandle,
    boolean * nmRemoteSleepIndPtr
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 828 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 843 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 844 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_RepeatMessageRequest(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 847 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 862 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 863 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_DisableCommunication(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 866 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 879 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 880 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern Std_ReturnType Nm_EnableCommunication(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 883 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 894 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 895 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
extern void Nm_GetVersionInfo (Std_VersionInfoType * nmVerInfoPtr);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 898 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 51 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_NetworkMode(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 66 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_BusSleepMode(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 70 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 84 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_PrepareBusSleepMode(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 88 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 101 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 102 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_SynchronizeMode(NetworkHandleType nmNetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 117 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_NetworkStartIndication(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 121 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 133 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 134 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_RemoteSleepIndication(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 137 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 149 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 150 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_RemoteSleepCancellation(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 153 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 166 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 167 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_TxTimeoutException(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 170 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2


# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 173 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_NetworkTimeoutException(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 176 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 209 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 210 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_PduRxIndication(NetworkHandleType NetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 213 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 227 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 228 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_StateChangeNotification
(
    NetworkHandleType nmNetworkHandle,
    Nm_StateType nmPreviousState,
    Nm_StateType nmCurrentState
);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 236 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 249 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 250 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
extern void Nm_RepeatMessageIndication(NetworkHandleType nmNetworkHandle);

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 253 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Cbk.h" 2
# 2 ".\\output\\inc/Nm_Cbk.h" 2
# 11 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c" 2

# 1 ".\\output\\inc/Nm_Priv.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 1
# 26 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
# 1 ".\\output\\inc/Nm_Cfg_SchM.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_Cfg_SchM.h" 1
# 32 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_Cfg_SchM.h"
static __inline__ void SchM_Enter_Nm_CallbacksNoNest(void);
static __inline__ void SchM_Exit_Nm_CallbacksNoNest(void);

static __inline__ void SchM_Enter_Nm_MainFunctionNoNest(void);
static __inline__ void SchM_Exit_Nm_MainFunctionNoNest(void);


static __inline__ void SchM_Enter_Nm_ChangeStateNoNest(void);
static __inline__ void SchM_Exit_Nm_ChangeStateNoNest(void);


static __inline__ void SchM_Enter_Nm_GetStateNoNest(void);
static __inline__ void SchM_Exit_Nm_GetStateNoNest(void);






static __inline__ void SchM_Enter_Nm_CallbacksNoNest(void)
{


}

static __inline__ void SchM_Exit_Nm_CallbacksNoNest(void)
{


}







static __inline__ void SchM_Enter_Nm_MainFunctionNoNest(void)
{


}

static __inline__ void SchM_Exit_Nm_MainFunctionNoNest(void)
{


}
# 88 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_Cfg_SchM.h"
static __inline__ void SchM_Enter_Nm_ChangeStateNoNest(void)
{


}

static __inline__ void SchM_Exit_Nm_ChangeStateNoNest(void)
{


}







static __inline__ void SchM_Enter_Nm_GetStateNoNest(void)
{


}

static __inline__ void SchM_Exit_Nm_GetStateNoNest(void)
{


}
# 2 ".\\output\\inc/Nm_Cfg_SchM.h" 2
# 27 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2
# 379 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef enum
{
    NM_INTERNAL_REQUEST,
    NM_EXTERNAL_REQUEST
} Nm_NetworkRequestSource_ten;
# 398 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef enum
{
    NM_SYNCPOINT_INVALID,
    NM_SYNCPOINT_INIT,
    NM_SYNCPOINT_READY,
    NM_SYNCPOINT_REACHED
} Nm_SynchType_ten;
# 417 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef enum
{
    NM_CLUSTER_INIT,
    NM_CLUSTER_PASSIVE,
    NM_CLUSTER_ACTIVE_ACTIVE,
    NM_CLUSTER_ACTIVE_PASSIVE
} Nm_ClusterStateType_ten;
# 439 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef enum
{
    NM_CHANNEL_STATE_UNINIT,
    NM_CHANNEL_STATE_INIT,
    NM_CHANNEL_STATE_NORMAL,
    NM_CHANNEL_STATE_PREPARE_WAIT_SLEEP,
    NM_CHANNEL_STATE_WAIT_SLEEP,
    NM_CHANNEL_STATE_BUS_SLEEP
} Nm_ChannelStateType_ten;
# 461 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef enum
{
    NM_CHANNEL_MODE_INIT,
    NM_CHANNEL_MODE_BUS_SLEEP,
    NM_CHANNEL_MODE_PREPARE_BUS_SLEEP,
    NM_CHANNEL_MODE_SYNCHRONIZE,
    NM_CHANNEL_MODE_NETWORK
} Nm_ChannelModeType_ten;
# 501 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef struct
{
    Nm_ChannelStateType_ten ChannelState_en;
    Nm_ChannelModeType_ten ChannelMode_en;
    Nm_TimerType ShutdownDelayTimeStamp_u32;
    boolean ComMRequest_b;
    boolean RemoteSleepStatus_b;
    boolean ChannelModeStatus_b;
 } Nm_NetworkRamType_tst;
# 527 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef struct
{
    Nm_ClusterStateType_ten ClusterState_en;
    Nm_SynchType_ten SyncPointState_en;
    uint8 ctComMRequests_u8;
    uint8 ctActive_u8;
    uint8 ctPassive_u8;
    uint8 ctBusSleep_u8;
    boolean InitStatus_b;
} Nm_GlobalRamType_tst;
# 569 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef struct
{
    Std_ReturnType (*BusNm_NetworkRelease_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_NetworkRequest_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_PassiveStartUp_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_RequestBusSynchronization_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_CheckRemoteSleepIndication_pfct) ( NetworkHandleType nw,
                                           boolean *ntw);
    Std_ReturnType (*BusNm_DisableCommunication_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_EnableCommunication_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_GetLocalNodeIdentifier_pfct) ( NetworkHandleType nw,
                                            uint8 *ntw);
    Std_ReturnType (*BusNm_GetNodeIdentifier_pfct) ( NetworkHandleType nw,
                                            uint8 *ntw );
    Std_ReturnType (*BusNm_GetPduData_pfct) ( NetworkHandleType nw,
                                            uint8 *ntw);
    Std_ReturnType (*BusNm_GetState_pfct) ( NetworkHandleType nw,
                                            Nm_StateType *ntw,
                                            Nm_ModeType *nk);
    Std_ReturnType (*BusNm_GetUserData_pfct) ( NetworkHandleType nw,
                                            uint8 *ntw);
    Std_ReturnType (*BusNm_RepeatMessageRequest_pfct) ( NetworkHandleType nw);
    Std_ReturnType (*BusNm_SetUserData_pfct) ( NetworkHandleType nw,
                                            const uint8 *ntw );
    Std_ReturnType (*BusNm_SetSleepReadyBit_pfct) ( NetworkHandleType nw, boolean ntw);
} Nm_BusNmApiType_tst;
# 612 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
typedef struct
{
    void (*PduRxIndication) (const NetworkHandleType NetworkHandle);
    void (*RemoteSleepCancellation) (const NetworkHandleType NetworkHandle);
    void (*RemoteSleepIndication) (const NetworkHandleType NetworkHandle);
    void (*StateChangeInd) (const NetworkHandleType NetworkHandle, const Nm_StateType nmPreviousState,
                                                                           const Nm_StateType nmCurrentState);

} Nm_UserCallbackType_tst;
# 634 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 635 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2
extern const Nm_ConfigType Nm_ConfData_cs[];

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 30 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 638 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2







# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 646 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2
extern const Nm_BusNmApiType_tst Nm_BusNmApi[];

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 30 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 649 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2







# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 657 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2
extern const Nm_UserCallbackType_tst Nm_UserCallbacks;

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 30 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 660 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2







# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 668 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2
extern const NetworkHandleType Nm_HandleTable[];

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 30 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 671 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h" 2
# 2 ".\\output\\inc/Nm_Priv.h" 2
# 13 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c" 2

# 1 ".\\output\\inc/ComM.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg.h" 1
# 22 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg.h"
# 1 ".\\output\\inc/ComM_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 10 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
typedef enum
{
    COMM_GATEWAY_TYPE_ACTIVE,
    COMM_GATEWAY_TYPE_PASSIVE,
    COMM_GATEWAY_TYPE_NONE
}ComM_PncGatewayType_ten;
# 73 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
typedef enum
{
    COMM_UNINIT,
    COMM_INIT
} ComM_InitStatusType;
# 92 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
typedef enum
{
    COMM_BUS_TYPE_CAN,
    COMM_BUS_TYPE_ETH,
    COMM_BUS_TYPE_FR,
    COMM_BUS_TYPE_INTERNAL,
    COMM_BUS_TYPE_LIN
} ComM_BusType_ten;
# 113 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
typedef enum
{
   FULL,
   LIGHT,
   NONE,
   PASSIVE
} ComM_NMVariantType_ten;
# 136 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
typedef enum
{
    COMM_NO_COM_NO_PENDING_REQUEST,
    COMM_NO_COM_REQUEST_PENDING,
    COMM_FULL_COM_NETWORK_REQUESTED,
    COMM_FULL_COM_READY_SLEEP,
    COMM_SILENT_COM
} ComM_StateType;
# 158 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
typedef enum
{
    COMM_PNC_REQUESTED,
    COMM_PNC_READY_SLEEP,
    COMM_PNC_PREPARE_SLEEP,
    COMM_PNC_NO_COMMUNICATION
} ComM_PncModeType;
# 2 ".\\output\\inc/ComM_Types.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg.h" 2
# 1 ".\\output\\inc/Rte_ComM_Type.h" 1
# 1 ".\\output\\inc/..\\..\\rte\\Rte_ComM_Type.h" 1
# 27 ".\\output\\inc/..\\..\\rte\\Rte_ComM_Type.h"
typedef uint8 Rte_ModeType_ComMMode;
# 2 ".\\output\\inc/Rte_ComM_Type.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg.h" 2
# 2 ".\\output\\inc/ComM_Cfg.h" 2
# 12 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h"
# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 15 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h" 2
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h" 2
# 28 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h"
# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h"
extern void ComM_DCM_ActiveDiagnostic(NetworkHandleType Channel);
# 50 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h"
extern void ComM_DCM_InactiveDiagnostic(NetworkHandleType Channel);


# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h" 2
# 13 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h"
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h" 2
# 1 ".\\output\\inc/Rte_ComM_Type.h" 1
# 15 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h" 2
# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h"
# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h" 2




extern void ComM_BusSM_ModeIndication(NetworkHandleType Channel, ComM_ModeType * ComMode);



# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h"
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 10 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h" 2
# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h"
# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 25 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h" 2
# 35 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h"
extern void ComM_EcuM_WakeUpIndication(NetworkHandleType Channel);
# 47 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h"
extern void ComM_EcuM_PNCWakeUpIndication(PNCHandleType PNCid);
# 60 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h"
extern void ComM_CommunicationAllowed(NetworkHandleType Channel, boolean Allowed);


# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 64 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h" 2
# 15 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h" 2
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 15 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h" 2
# 44 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 45 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h" 2
# 56 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_NetworkStartIndication(NetworkHandleType Channel);
# 70 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_BusSleepMode(NetworkHandleType Channel);
# 83 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_NetworkMode(NetworkHandleType Channel);
# 99 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_RestartIndication(NetworkHandleType Channel);
# 113 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_PrepareBusSleepMode(NetworkHandleType Channel);
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_TransmissionFailure(NetworkHandleType Channel_tu8);
# 138 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
extern void ComM_Nm_NetworkTimeoutException(NetworkHandleType Channel_tu8);


# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 142 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 1 ".\\output\\inc/ComM_Main.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Main.h" 1
# 20 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Main.h"
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Main.h" 2





# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 27 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Main.h" 2
# 65 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Main.h"
# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 66 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Main.h" 2
# 2 ".\\output\\inc/ComM_Main.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 28 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
typedef struct
{
    const void * ComM_GlobalConfigData_pcs;
    const Std_VersionInfoType * versionInfo;
} ComM_ConfigType;
# 57 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern void ComM_Init(const ComM_ConfigType * config);
# 90 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern void ComM_DeInit(void);
# 105 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_GetState(NetworkHandleType Channel, ComM_StateType * State);
# 119 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_GetStatus(ComM_InitStatusType * Status);
# 134 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern void ComM_GetVersionInfo(Std_VersionInfoType * versioninfo);
# 158 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_RequestComMode(ComM_UserHandleType User, ComM_ModeType ComMode);
# 180 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_GetMaxComMode(ComM_UserHandleType User, ComM_ModeType * ComMode);
# 202 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_GetRequestedComMode(ComM_UserHandleType User, ComM_ModeType * ComMode);
# 224 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_GetCurrentComMode(ComM_UserHandleType User, ComM_ModeType * ComMode);
# 243 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_LimitChannelToNoComMode(NetworkHandleType Channel, boolean Status);
# 262 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_LimitECUToNoComMode(boolean Status);
# 281 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_PreventWakeUp(NetworkHandleType Channel, boolean Status);
# 300 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_SetECUGroupClassification(ComM_InhibitionStatusType Status);
# 319 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_ReadInhibitCounter(uint16 * CounterValue);
# 338 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_ResetInhibitCounter(void);
# 357 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
extern Std_ReturnType ComM_GetInhibitionStatus(NetworkHandleType Channel, ComM_InhibitionStatusType * Status);




# 1 ".\\output\\inc/ComM_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 1



# 1 ".\\output\\inc/ComM_Cfg.h" 1
# 5 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_MemMap.h" 2
# 2 ".\\output\\inc/ComM_MemMap.h" 2
# 363 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h" 2
# 2 ".\\output\\inc/ComM.h" 2
# 15 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c" 2
# 51 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c"
# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 53 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 52 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c" 2
void Nm_PrepareBusSleepMode(NetworkHandleType NetworkHandle)
{
    NetworkHandleType Nm_NetworkHandle_u8;
# 63 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c"
    Nm_NetworkHandle_u8 = (((NetworkHandle) < ( 2u)) && (Nm_HandleTable[NetworkHandle] != 0xFFu)) ? Nm_HandleTable[NetworkHandle] : 0xFFu;

    if (Nm_NetworkHandle_u8 < (1u))
    {

        ComM_Nm_PrepareBusSleepMode(NetworkHandle);
# 78 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c"
    }
}

# 1 ".\\output\\inc/Nm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 1
# 60 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bsw\\Nm\\integration\\Nm_MemMap.h" 2
# 2 ".\\output\\inc/Nm_MemMap.h" 2
# 82 "bsw\\Nm\\src\\Nm_PrepareBusSleepMode.c" 2
