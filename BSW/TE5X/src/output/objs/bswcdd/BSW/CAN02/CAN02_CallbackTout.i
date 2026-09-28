# 1 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c"







# 1 ".\\output\\inc/Com.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 1
# 22 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
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
# 23 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 1 ".\\output\\inc/Com_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h" 1
# 24 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_SymbolicNames.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h" 2
# 113 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
typedef uint16 Com_SignalIdType;


typedef uint16 Com_SignalGroupIdType;


typedef uint16 Com_IpduGroupIdType;

typedef uint8 Com_IpduGroupVector[1u];


typedef enum
{
    COM_UNINIT,
    COM_INIT
} Com_StatusType;


typedef struct
{
    const void * configData_pcv;
    const void * commonData_pcv;
    const PduLengthType * rxPduLength_pcauo;
    const PduLengthType * txPduLength_pcauo;
    const PduIdType * txPduRSrcPduId_pcauo;

} Com_ConfigType;
# 151 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 582 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 583 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h" 2


extern const Com_ConfigType ComConfig;

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 588 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 589 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 157 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h" 2
# 2 ".\\output\\inc/Com_Cfg.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 1 ".\\output\\inc/Com_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 582 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 583 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg.h" 2



extern const Com_ConfigType Com_Config;





# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 588 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 589 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg.h" 2
# 2 ".\\output\\inc/Com_PBcfg.h" 2
# 25 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 128 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 129 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_Init(const Com_ConfigType * config_pcst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 143 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 144 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_DeInit(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 147 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 161 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 162 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_IpduGroupControl(Com_IpduGroupVector ipduGroupVector_au8, boolean initialize_b );

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 165 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 178 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_ClearIpduGroupVector(Com_IpduGroupVector ipduGroupVector_au8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 182 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 197 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 198 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_SetIpduGroup(Com_IpduGroupVector ipduGroupVector_au8, Com_IpduGroupIdType idIpduGroup_u16, boolean bitval_b);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 201 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 214 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 215 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_ReceptionDMControl(Com_IpduGroupVector ipduGroupVector_au8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 229 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 230 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern Com_StatusType Com_GetStatus(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 233 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 245 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 246 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_GetVersionInfo(Std_VersionInfoType * versioninfo_pst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 249 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 261 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 262 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_SendSignal(Com_SignalIdType idSignal_u16, const void * signalDataPtr_pcv);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 265 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 278 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 279 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_SendSignalWithMetaData(Com_SignalIdType idSignal_u16, const void * signalDataPtr_pcv, const uint8 * metaDataPtr_pu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 282 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 295 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 296 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_SendSignalGroupWithMetaData(Com_SignalGroupIdType idSignal_u16, const uint8 * metaDataPtr_pu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 299 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 316 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 317 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_SendSignalGroupArrayWithMetaData(Com_SignalGroupIdType idSignalGroup_u16, uint8 * signalGroupArrayPtr_pcu8, const uint8 * metaDataPtr_pu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 320 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 332 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 333 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReceiveSignal(Com_SignalIdType idSignal_u16, void * signalDataPtr_pv);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 336 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 349 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 350 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_InvalidateSignal(Com_SignalIdType idSignal_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 353 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 471 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 472 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_SendDynSignal(Com_SignalIdType idSignal_u16, const void * signalDataPtr_pcv, uint16 length_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 475 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 490 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 491 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReceiveDynSignal(Com_SignalIdType idSignal_u16, void * signalDataPtr_pv, uint16 * lengthPtr_pu16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 494 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 510 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 511 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_SendSignalGroupArray(Com_SignalGroupIdType idSignalGroup_u16, const uint8 *signalGroupArrayPtr_pcu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 514 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 531 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 532 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReceiveSignalGroupArray(Com_SignalGroupIdType idSignalGroup_u16, uint8 *signalGroupArrayPtr_pu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 535 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 546 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 547 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_TriggerIPDUSend(PduIdType idPdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 550 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 564 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 565 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern Std_ReturnType Com_TriggerIPDUSendWithMetaData(PduIdType idPdu_uo, uint8 * metaData_pu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 568 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 580 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 581 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReceiveSignalWithMetaData(Com_SignalIdType idSignal_u16, void * signalDataPtr_pv, uint8 * metaDataPtr_pv);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 584 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 595 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 596 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReceiveSignalGroupWithMetaData(Com_SignalGroupIdType idSignalGroup_u16, uint8* metaDataPtr_pv);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 599 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 612 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 613 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReceiveSignalGroupArrayWithMetaData(Com_SignalGroupIdType idSignalGroup_u16,
                                    uint8 * signalGroupArrayPtr_pu8, uint8* MetaDataPtr_pu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 617 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 630 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 631 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern Std_ReturnType Com_TriggerTransmit(PduIdType idTxPdu_uo, PduInfoType * pduInfoPtr_pst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 634 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 645 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 646 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_RxIndication(PduIdType idRxPdu_uo, const PduInfoType * pduInfoPtr_pcst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 649 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 659 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 660 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2



extern void Com_TxConfirmation(PduIdType idTxPdu_uo);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 667 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 721 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 722 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_ReduceBusload(uint16 commonPeriod_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 725 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 734 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 735 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_RestoreBusload(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 738 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 753 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 754 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern boolean Com_IsTxScheduled(PduIdType idTxPdu_uo, uint16 callerTaskCycleInMs_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 757 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 771 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 772 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern uint8 Com_ReadRxIPduLength(PduIdType idRxPdu_uo, PduLengthType * rxIPduLengthPtr_puo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 775 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 787 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 788 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_SwitchIpduTxMode(PduIdType idPdu_uo, boolean mode_b);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 791 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 803 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 804 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern boolean Com_ProvideRxIpduStatus(PduIdType idPdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 807 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 819 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 820 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern boolean Com_ProvideTxIpduStatus(PduIdType idPdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 823 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 826 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern BufReq_ReturnType Com_StartOfReception(PduIdType idComRxPdu_uo, const PduInfoType* pduInfoPtr_pcst, PduLengthType tpSduLength_uo, PduLengthType* rxBufferSizePtr_puo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 829 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 832 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern BufReq_ReturnType Com_CopyRxData(PduIdType idPdu_uo,const PduInfoType* pduInfoPtr_pcst, PduLengthType* rxBufferSizePtr_puo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 835 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 838 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2



extern BufReq_ReturnType Com_CopyTxData(PduIdType idPdu_uo, const PduInfoType* pduInfoPtr_pcst, RetryInfoType* retryInfoPtr_pcst, PduLengthType* availableDataPtr_puo);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 845 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 848 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_TpRxIndication(PduIdType idPdu_uo, Std_ReturnType result_u8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 851 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 854 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_TpTxConfirmation(PduIdType idPdu_uo, Std_ReturnType result_u8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 857 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2




# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 862 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_SetTxIPduControlViaRbaNdsEcuVariant(PduIdType idIpdu_uo, boolean ipduStatus_b);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 865 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 868 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern void Com_SetRxIPduControlViaRbaNdsEcuVariant(PduIdType idIpdu_uo, boolean ipduStatus_b);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 871 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 874 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
extern Std_ReturnType Com_SetRxIPduTimeoutTicks(PduIdType idRxPdu_uo, uint16 timeoutTicks_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 877 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 2
# 2 ".\\output\\inc/Com.h" 2
# 9 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c" 2
# 1 ".\\output\\inc/Com_Cbk.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 1
# 52 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 53 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_01_Rx_01(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 56 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 59 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_01_Rx_02(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_01_Rx_03(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 68 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_01_Rx_04(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 74 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_01_Rx_05(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_01_Rx_06(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_02_Rx_01(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 92 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_02_Rx_02(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 98 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 101 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_02_Rx_03(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 104 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_03_Rx_01(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 113 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_03_Rx_02(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 119 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_03_Rx_03(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComIPduAck_CanNodeNum_03_Rx_04(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 128 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
# 171 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 172 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_01(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 178 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_02(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 181 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 184 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_03(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 187 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 190 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_04(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 196 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_05(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 199 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 202 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_06(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 205 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 208 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 211 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 214 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 217 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 220 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 223 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 226 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_03_Rx_01(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 229 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 232 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_03_Rx_02(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 235 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 238 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_03_Rx_03(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 241 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 244 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
void Bsw_ComSignalTimeout_CanNodeNum_03_Rx_04(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 247 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
# 276 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 277 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_01_Rx_05(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 280 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 283 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_01_Rx_06(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 286 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 289 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_01_Rx_08(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 292 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 295 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_02_Rx_01(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 298 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 301 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_02_Rx_02(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 304 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 307 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_03_Rx_01(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 310 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 313 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_03_Rx_02(PduIdType id, const PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 316 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2




# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 321 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_02_Tx_01(PduIdType id, PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 324 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 327 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_02_Tx_02(PduIdType id, PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 330 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 333 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_03_Tx_01(PduIdType id, PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 336 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 339 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
boolean Bsw_IPduCallout_CanNodeNum_03_Tx_02(PduIdType id, PduInfoType * ptr);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 342 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cbk.h" 2
# 2 ".\\output\\inc/Com_Cbk.h" 2
# 10 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c" 2
# 1 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 1
# 11 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can02_Rx01;
extern boolean BSW_bRxTOutFlag_Can02_Rx02;
extern boolean BSW_bRxTOutFlag_Can02_Rx03;
extern boolean BSW_bRxTOutFlag_Can02_Rx04;
extern boolean BSW_bRxTOutFlag_Can02_Rx05;
extern boolean BSW_bRxTOutFlag_Can02_Rx06;
extern boolean BSW_bRxTOutFlag_Can02_Rx07;
extern boolean BSW_bRxTOutFlag_Can02_Rx08;
extern boolean BSW_bRxTOutFlag_Can02_Rx09;
extern boolean BSW_bRxTOutFlag_Can02_Rx10;
extern boolean BSW_bRxTOutFlag_Can02_Rx11;
extern boolean BSW_bRxTOutFlag_Can02_Rx12;
extern boolean BSW_bRxTOutFlag_Can02_Rx13;
extern boolean BSW_bRxTOutFlag_Can02_Rx14;
extern boolean BSW_bRxTOutFlag_Can02_Rx15;
extern boolean BSW_bRxTOutFlag_Can02_Rx16;
extern boolean BSW_bRxTOutFlag_Can02_Rx17;
extern boolean BSW_bRxTOutFlag_Can02_Rx18;
extern boolean BSW_bRxTOutFlag_Can02_Rx19;
extern boolean BSW_bRxTOutFlag_Can02_Rx20;
extern boolean BSW_bRxTOutFlag_Can02_Rx21;
extern boolean BSW_bRxTOutFlag_Can02_Rx22;
extern boolean BSW_bRxTOutFlag_Can02_Rx23;
extern boolean BSW_bRxTOutFlag_Can02_Rx24;
extern boolean BSW_bRxTOutFlag_Can02_Rx25;
extern boolean BSW_bRxTOutFlag_Can02_Rx26;
extern boolean BSW_bRxTOutFlag_Can02_Rx27;
extern boolean BSW_bRxTOutFlag_Can02_Rx28;
extern boolean BSW_bRxTOutFlag_Can02_Rx29;
extern boolean BSW_bRxTOutFlag_Can02_Rx30;
extern boolean BSW_bRxTOutFlag_Can02_Rx31;
extern boolean BSW_bRxTOutFlag_Can02_Rx32;
extern boolean BSW_bRxTOutFlag_Can02_Rx33;
extern boolean BSW_bRxTOutFlag_Can02_Rx34;
extern boolean BSW_bRxTOutFlag_Can02_Rx35;
extern boolean BSW_bRxTOutFlag_Can02_Rx36;
extern boolean BSW_bRxTOutFlag_Can02_Rx37;
extern boolean BSW_bRxTOutFlag_Can02_Rx38;
extern boolean BSW_bRxTOutFlag_Can02_Rx39;
extern boolean BSW_bRxTOutFlag_Can02_Rx40;

extern boolean BSW_bMsgValidState_Can02_Rx01;
extern boolean BSW_bMsgValidState_Can02_Rx02;
extern boolean BSW_bMsgValidState_Can02_Rx03;
extern boolean BSW_bMsgValidState_Can02_Rx04;
extern boolean BSW_bMsgValidState_Can02_Rx05;
extern boolean BSW_bMsgValidState_Can02_Rx06;
extern boolean BSW_bMsgValidState_Can02_Rx07;
extern boolean BSW_bMsgValidState_Can02_Rx08;
extern boolean BSW_bMsgValidState_Can02_Rx09;
extern boolean BSW_bMsgValidState_Can02_Rx10;
extern boolean BSW_bMsgValidState_Can02_Rx11;
extern boolean BSW_bMsgValidState_Can02_Rx12;
extern boolean BSW_bMsgValidState_Can02_Rx13;
extern boolean BSW_bMsgValidState_Can02_Rx14;
extern boolean BSW_bMsgValidState_Can02_Rx15;
extern boolean BSW_bMsgValidState_Can02_Rx16;
extern boolean BSW_bMsgValidState_Can02_Rx17;
extern boolean BSW_bMsgValidState_Can02_Rx18;
extern boolean BSW_bMsgValidState_Can02_Rx19;
extern boolean BSW_bMsgValidState_Can02_Rx20;
extern boolean BSW_bMsgValidState_Can02_Rx21;
extern boolean BSW_bMsgValidState_Can02_Rx22;
extern boolean BSW_bMsgValidState_Can02_Rx23;
extern boolean BSW_bMsgValidState_Can02_Rx24;
extern boolean BSW_bMsgValidState_Can02_Rx25;
extern boolean BSW_bMsgValidState_Can02_Rx26;
extern boolean BSW_bMsgValidState_Can02_Rx27;
extern boolean BSW_bMsgValidState_Can02_Rx28;
extern boolean BSW_bMsgValidState_Can02_Rx29;
extern boolean BSW_bMsgValidState_Can02_Rx30;
extern boolean BSW_bMsgValidState_Can02_Rx31;
extern boolean BSW_bMsgValidState_Can02_Rx32;
extern boolean BSW_bMsgValidState_Can02_Rx33;
extern boolean BSW_bMsgValidState_Can02_Rx34;
extern boolean BSW_bMsgValidState_Can02_Rx35;
extern boolean BSW_bMsgValidState_Can02_Rx36;
extern boolean BSW_bMsgValidState_Can02_Rx37;
extern boolean BSW_bMsgValidState_Can02_Rx38;
extern boolean BSW_bMsgValidState_Can02_Rx39;
extern boolean BSW_bMsgValidState_Can02_Rx40;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 101 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern void CAN02_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
# 11 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c" 2
# 1 ".\\output\\inc/MAIN_MSG_Auto_Can02.h" 1
# 1 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 1
# 11 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h"
# 1 ".\\output\\inc/BSW.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 1 ".\\output\\inc/CAN01_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 15 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern const boolean CAN01_bE2ERxValidC;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 21 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern const uint8 CAN01_u8ChecksumErrThdC;
extern const uint8 CAN01_u8RCUnchgErrThdC;
extern const uint8 CAN01_u8RcJumpErrThdC;
extern const uint8 CAN01_u8Rx6RcErrThdC;
extern const uint8 CAN01_u8RcErrRecThdC;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 28 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 34 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can01_Rx01;
extern boolean BSW_bRxTOutFlag_Can01_Rx02;
extern boolean BSW_bRxTOutFlag_Can01_Rx03;
extern boolean BSW_bRxTOutFlag_Can01_Rx04;
extern boolean BSW_bRxTOutFlag_Can01_Rx05;
extern boolean BSW_bRxTOutFlag_Can01_Rx06;
extern boolean BSW_bRxTOutFlag_Can01_Rx07;
extern boolean BSW_bRxTOutFlag_Can01_Rx08;
extern boolean BSW_bRxTOutFlag_Can01_Rx09;
extern boolean BSW_bRxTOutFlag_Can01_Rx10;
extern boolean BSW_bRxTOutFlag_Can01_Rx11;
extern boolean BSW_bRxTOutFlag_Can01_Rx12;
extern boolean BSW_bRxTOutFlag_Can01_Rx13;
extern boolean BSW_bRxTOutFlag_Can01_Rx14;
extern boolean BSW_bRxTOutFlag_Can01_Rx15;
extern boolean BSW_bRxTOutFlag_Can01_Rx16;
extern boolean BSW_bRxTOutFlag_Can01_Rx17;
extern boolean BSW_bRxTOutFlag_Can01_Rx18;
extern boolean BSW_bRxTOutFlag_Can01_Rx19;
extern boolean BSW_bRxTOutFlag_Can01_Rx20;
extern boolean BSW_bRxTOutFlag_Can01_Rx21;
extern boolean BSW_bRxTOutFlag_Can01_Rx22;
extern boolean BSW_bRxTOutFlag_Can01_Rx23;
extern boolean BSW_bRxTOutFlag_Can01_Rx24;
extern boolean BSW_bRxTOutFlag_Can01_Rx25;
extern boolean BSW_bRxTOutFlag_Can01_Rx26;
extern boolean BSW_bRxTOutFlag_Can01_Rx27;
extern boolean BSW_bRxTOutFlag_Can01_Rx28;
extern boolean BSW_bRxTOutFlag_Can01_Rx29;
extern boolean BSW_bRxTOutFlag_Can01_Rx30;
extern boolean BSW_bRxTOutFlag_Can01_Rx31;
extern boolean BSW_bRxTOutFlag_Can01_Rx32;
extern boolean BSW_bRxTOutFlag_Can01_Rx33;
extern boolean BSW_bRxTOutFlag_Can01_Rx34;
extern boolean BSW_bRxTOutFlag_Can01_Rx35;
extern boolean BSW_bRxTOutFlag_Can01_Rx36;
extern boolean BSW_bRxTOutFlag_Can01_Rx37;
extern boolean BSW_bRxTOutFlag_Can01_Rx38;
extern boolean BSW_bRxTOutFlag_Can01_Rx39;
extern boolean BSW_bRxTOutFlag_Can01_Rx40;

extern boolean BSW_bMsgValidState_Can01_Rx01;
extern boolean BSW_bMsgValidState_Can01_Rx02;
extern boolean BSW_bMsgValidState_Can01_Rx03;
extern boolean BSW_bMsgValidState_Can01_Rx04;
extern boolean BSW_bMsgValidState_Can01_Rx05;
extern boolean BSW_bMsgValidState_Can01_Rx06;
extern boolean BSW_bMsgValidState_Can01_Rx07;
extern boolean BSW_bMsgValidState_Can01_Rx08;
extern boolean BSW_bMsgValidState_Can01_Rx09;
extern boolean BSW_bMsgValidState_Can01_Rx10;
extern boolean BSW_bMsgValidState_Can01_Rx11;
extern boolean BSW_bMsgValidState_Can01_Rx12;
extern boolean BSW_bMsgValidState_Can01_Rx13;
extern boolean BSW_bMsgValidState_Can01_Rx14;
extern boolean BSW_bMsgValidState_Can01_Rx15;
extern boolean BSW_bMsgValidState_Can01_Rx16;
extern boolean BSW_bMsgValidState_Can01_Rx17;
extern boolean BSW_bMsgValidState_Can01_Rx18;
extern boolean BSW_bMsgValidState_Can01_Rx19;
extern boolean BSW_bMsgValidState_Can01_Rx20;
extern boolean BSW_bMsgValidState_Can01_Rx21;
extern boolean BSW_bMsgValidState_Can01_Rx22;
extern boolean BSW_bMsgValidState_Can01_Rx23;
extern boolean BSW_bMsgValidState_Can01_Rx24;
extern boolean BSW_bMsgValidState_Can01_Rx25;
extern boolean BSW_bMsgValidState_Can01_Rx26;
extern boolean BSW_bMsgValidState_Can01_Rx27;
extern boolean BSW_bMsgValidState_Can01_Rx28;
extern boolean BSW_bMsgValidState_Can01_Rx29;
extern boolean BSW_bMsgValidState_Can01_Rx30;
extern boolean BSW_bMsgValidState_Can01_Rx31;
extern boolean BSW_bMsgValidState_Can01_Rx32;
extern boolean BSW_bMsgValidState_Can01_Rx33;
extern boolean BSW_bMsgValidState_Can01_Rx34;
extern boolean BSW_bMsgValidState_Can01_Rx35;
extern boolean BSW_bMsgValidState_Can01_Rx36;
extern boolean BSW_bMsgValidState_Can01_Rx37;
extern boolean BSW_bMsgValidState_Can01_Rx38;
extern boolean BSW_bMsgValidState_Can01_Rx39;
extern boolean BSW_bMsgValidState_Can01_Rx40;

extern boolean CAN01_bCsumErrFlag_SGRx5Req;
extern boolean CAN01_bRcErrFlag_SGRx5Req;
extern boolean CAN01_bCsumErrFlag_SGRx6Req;
extern boolean CAN01_bRcErrFlag_SGRx6Req;
extern boolean CAN01_bCsumErrFlag_SGRx8Req;
extern boolean CAN01_bRcErrFlag_SGRx8Req;
extern boolean CAN01_bRcCsErrFlagReq;

extern uint8 CAN01_u8Rx5CsumErrCnt;
extern uint8 CAN01_u8Rx5RcLast;
extern uint8 CAN01_u8Rx5RollingCod;
extern uint8 CAN01_u8Rx5RcErrCnt;
extern uint8 CAN01_u8Rx5RcUnchangedErrCnt;
extern uint8 CAN01_u8Rx6CsumErrCnt;
extern uint8 CAN01_u8Rx6RcLast;
extern uint8 CAN01_u8Rx6RollingCod;
extern uint8 CAN01_u8Rx6RcErrCnt;
extern uint8 CAN01_u8Rx6RcRecCnt;
extern uint8 CAN01_u8Rx6RcUnchangedErrCnt;
extern uint8 CAN01_u8Rx8CsumErrCnt;
extern uint8 CAN01_u8Rx8RcLast;
extern uint8 CAN01_u8Rx8RollingCod;
extern uint8 CAN01_u8Rx8RcErrCnt;
extern uint8 CAN01_u8Rx8RcUnchangedErrCnt;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 143 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 149 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern void CAN01_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
# 2 ".\\output\\inc/CAN01_DEF.h" 2
# 39 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 1 ".\\output\\inc/CAN02_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 1
# 2 ".\\output\\inc/CAN02_DEF.h" 2
# 40 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 1 ".\\output\\inc/CAN03_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can03_Rx01;
extern boolean BSW_bRxTOutFlag_Can03_Rx02;
extern boolean BSW_bRxTOutFlag_Can03_Rx03;
extern boolean BSW_bRxTOutFlag_Can03_Rx04;
extern boolean BSW_bRxTOutFlag_Can03_Rx05;
extern boolean BSW_bRxTOutFlag_Can03_Rx06;
extern boolean BSW_bRxTOutFlag_Can03_Rx07;
extern boolean BSW_bRxTOutFlag_Can03_Rx08;
extern boolean BSW_bRxTOutFlag_Can03_Rx09;
extern boolean BSW_bRxTOutFlag_Can03_Rx10;
extern boolean BSW_bRxTOutFlag_Can03_Rx11;
extern boolean BSW_bRxTOutFlag_Can03_Rx12;
extern boolean BSW_bRxTOutFlag_Can03_Rx13;
extern boolean BSW_bRxTOutFlag_Can03_Rx14;
extern boolean BSW_bRxTOutFlag_Can03_Rx15;
extern boolean BSW_bRxTOutFlag_Can03_Rx16;
extern boolean BSW_bRxTOutFlag_Can03_Rx17;
extern boolean BSW_bRxTOutFlag_Can03_Rx18;
extern boolean BSW_bRxTOutFlag_Can03_Rx19;
extern boolean BSW_bRxTOutFlag_Can03_Rx20;
extern boolean BSW_bRxTOutFlag_Can03_Rx21;
extern boolean BSW_bRxTOutFlag_Can03_Rx22;
extern boolean BSW_bRxTOutFlag_Can03_Rx23;
extern boolean BSW_bRxTOutFlag_Can03_Rx24;
extern boolean BSW_bRxTOutFlag_Can03_Rx25;
extern boolean BSW_bRxTOutFlag_Can03_Rx26;
extern boolean BSW_bRxTOutFlag_Can03_Rx27;
extern boolean BSW_bRxTOutFlag_Can03_Rx28;
extern boolean BSW_bRxTOutFlag_Can03_Rx29;
extern boolean BSW_bRxTOutFlag_Can03_Rx30;
extern boolean BSW_bRxTOutFlag_Can03_Rx31;
extern boolean BSW_bRxTOutFlag_Can03_Rx32;
extern boolean BSW_bRxTOutFlag_Can03_Rx33;
extern boolean BSW_bRxTOutFlag_Can03_Rx34;
extern boolean BSW_bRxTOutFlag_Can03_Rx35;
extern boolean BSW_bRxTOutFlag_Can03_Rx36;
extern boolean BSW_bRxTOutFlag_Can03_Rx37;
extern boolean BSW_bRxTOutFlag_Can03_Rx38;
extern boolean BSW_bRxTOutFlag_Can03_Rx39;
extern boolean BSW_bRxTOutFlag_Can03_Rx40;

extern boolean BSW_bMsgValidState_Can03_Rx01;
extern boolean BSW_bMsgValidState_Can03_Rx02;
extern boolean BSW_bMsgValidState_Can03_Rx03;
extern boolean BSW_bMsgValidState_Can03_Rx04;
extern boolean BSW_bMsgValidState_Can03_Rx05;
extern boolean BSW_bMsgValidState_Can03_Rx06;
extern boolean BSW_bMsgValidState_Can03_Rx07;
extern boolean BSW_bMsgValidState_Can03_Rx08;
extern boolean BSW_bMsgValidState_Can03_Rx09;
extern boolean BSW_bMsgValidState_Can03_Rx10;
extern boolean BSW_bMsgValidState_Can03_Rx11;
extern boolean BSW_bMsgValidState_Can03_Rx12;
extern boolean BSW_bMsgValidState_Can03_Rx13;
extern boolean BSW_bMsgValidState_Can03_Rx14;
extern boolean BSW_bMsgValidState_Can03_Rx15;
extern boolean BSW_bMsgValidState_Can03_Rx16;
extern boolean BSW_bMsgValidState_Can03_Rx17;
extern boolean BSW_bMsgValidState_Can03_Rx18;
extern boolean BSW_bMsgValidState_Can03_Rx19;
extern boolean BSW_bMsgValidState_Can03_Rx20;
extern boolean BSW_bMsgValidState_Can03_Rx21;
extern boolean BSW_bMsgValidState_Can03_Rx22;
extern boolean BSW_bMsgValidState_Can03_Rx23;
extern boolean BSW_bMsgValidState_Can03_Rx24;
extern boolean BSW_bMsgValidState_Can03_Rx25;
extern boolean BSW_bMsgValidState_Can03_Rx26;
extern boolean BSW_bMsgValidState_Can03_Rx27;
extern boolean BSW_bMsgValidState_Can03_Rx28;
extern boolean BSW_bMsgValidState_Can03_Rx29;
extern boolean BSW_bMsgValidState_Can03_Rx30;
extern boolean BSW_bMsgValidState_Can03_Rx31;
extern boolean BSW_bMsgValidState_Can03_Rx32;
extern boolean BSW_bMsgValidState_Can03_Rx33;
extern boolean BSW_bMsgValidState_Can03_Rx34;
extern boolean BSW_bMsgValidState_Can03_Rx35;
extern boolean BSW_bMsgValidState_Can03_Rx36;
extern boolean BSW_bMsgValidState_Can03_Rx37;
extern boolean BSW_bMsgValidState_Can03_Rx38;
extern boolean BSW_bMsgValidState_Can03_Rx39;
extern boolean BSW_bMsgValidState_Can03_Rx40;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 101 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
extern void CAN03_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
# 2 ".\\output\\inc/CAN03_DEF.h" 2
# 41 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 56 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
extern const boolean BSW_bSPYBenchOnC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2

extern boolean BSW_bCAN0BusOff;
extern boolean BSW_bComIsNormalFlg;
extern boolean BSW_bMKeyOnStatus;
extern boolean BSW_bOCDataNotRation;
extern boolean GBSW_bOCDataNotRation;
extern boolean BSW_bVsiReadySts;
extern uint16 BSW_u16RawVolt15VRdc;
extern uint32 BSW_u32VSICounterCkreq;
extern uint32 GBSW_u32VSICounterCkreq;
extern uint32 ABSW_u32VSICounterCkreq;
extern uint32 OBSW_u32VSICounterCkreq;
extern uint32 BSW_u8CAN0BusOffCounter;
extern uint32 BSW_u8CAN1BusOffCounter;
extern uint32 BSW_u8CAN2BusOffCounter;
extern uint32 BSW_u8CAN3BusOffCounter;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2




# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h" 1
# 68 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h"
#pragma section ".version_bsw" a
# 91 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2

extern const uint8 BSW_kau8IntOfflineDate[4];
extern const uint8 BSW_kau8IntProductionLineId[4];
extern const uint8 BSW_kau8IntProjectId[8];
extern const uint8 BSW_kau8IntBswLibDate[6];
extern const uint8 BSW_kau8IntBswSvnRev[2];
extern const uint8 BSW_kau8IntBootSvnRev[2];
extern const uint8 BSW_kau8IntFpgaSvnRev[2];
extern const uint8 BSW_kau8IntCpldSvnRev[2];
extern const uint8 BSW_kau8IntHwSvnRev[2];
extern const uint8 BSW_kau8IntAddlInfo[8];


# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h" 1
# 92 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h"
#pragma section
# 105 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2






void BSW_vidInit(void);
void BSW_vidSetOcDataNotRatFlg(const boolean);
void GBSW_vidSetOcDataNotRatFlg(const boolean);
uint8 BSW_u8GetSelfChkErrSts(void);
boolean BSW_bGetBswReadySts(void);
# 2 ".\\output\\inc/BSW.h" 2
# 12 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2
# 1 ".\\output\\inc/Com_Cfg_SymbolicNames.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_SymbolicNames.h" 1
# 2 ".\\output\\inc/Com_Cfg_SymbolicNames.h" 2
# 13 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2
# 1 ".\\output\\inc/MAIN_L.h" 1
# 1 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 1
# 37 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2
# 53 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 105 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2
extern const boolean MAIN_bMSGRxToutBenchOnC;
extern const boolean MAIN_bComRxDisableFlgByUds;
extern const boolean MAIN_HARDBenchOnC;
extern const boolean MAIN_MSGRxBenchOnC;
extern const boolean MAIN_VSIBenchOnWriteDataC;
extern const boolean MAIN_MSGbIsulationTxOnC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 72 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2
extern const float32 MAIN_f32UvwOvCurrThdC;
extern const uint32 MAIN_u32VSICntCkreqESMStartedC;
extern const uint32 MAIN_u32VSICntCkreqVSIStartedC;
extern const uint32 MAIN_ku32ProgFlowSeq01Step01C;
extern const uint32 MAIN_ku32ProgFlowSeq01Step02C;
extern const uint32 MAIN_ku32ProgFlowSeq01Step03C;
extern const sint32 MAIN_s32CurHardDelayC;
extern const sint32 MAIN_s32ResHardDelayC;
extern const sint32 MAIN_s32SampleDelayC;
extern const float32 MAIN_f32PowerdownVoltC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2
extern const uint8 MAIN_MSGu8PwModFiltCntC;
extern const uint8 MAIN_u8IgbtFltConfirmCntC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 99 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 87 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2
extern const uint16 MAIN_ku16SpdReadyEstConfirmC;
extern const uint16 MAIN_u16OverBhvThdC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 91 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 97 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2
extern boolean MAIN_bAkdAfterAscReq;
extern boolean MAIN_bBswReadySts;
extern boolean MAIN_bResExcFltDetEna;
extern boolean MAIN_bSoftOvBhvFlg;
extern boolean MAIN_bSoftOvCurrPhsUFlg;
extern boolean MAIN_bSoftOvCurrPhsVFlg;
extern boolean MAIN_bSoftOvCurrPhsWFlg;
extern volatile boolean MAIN_bSpdReadyEst;
extern boolean MAIN_bSpeedReadyFlg;
extern boolean MAIN_bProgConditionOk;
extern boolean MAIN_bCurGainStoreResult;
extern boolean MAIN_bDflashWriteReq;
extern volatile float32 MAIN_f32ElecSpeedRds;
extern volatile float32 MAIN_f32EmailElecSpeedRds;
extern volatile float32 MAIN_f32EmailErrThetaRdSurPi;
extern volatile float32 MAIN_f32EmailMecaSpeedRds;
extern volatile float32 MAIN_f32EmailMecaSpeedRpm;
extern volatile float32 MAIN_f32EmailThetaElecRdSurPi;
extern volatile float32 MAIN_f32ErrThetaRdSurPi;
extern float32 MAIN_f32IuFrequency;
extern float32 MAIN_f32IuPeriod;
extern volatile float32 MAIN_f32MecaSpeedRds;
extern volatile float32 MAIN_f32MecaSpeedRpm;
extern volatile float32 MAIN_f32MotSpdEst;
extern float32 MAIN_f32PWMDutyUPhys;
extern float32 MAIN_f32PWMDutyVPhys;
extern float32 MAIN_f32PWMDutyWPhys;
extern volatile float32 MAIN_f32ThetaElecRdSurPi;
extern volatile float32 MAIN_f32VsiPwmPeriod;
extern uint32 MAIN_u32EmailCkreq;
extern volatile uint32 MAIN_u32EmailPosATimeStamp;
extern uint32 MAIN_u32IuCycleTim;
extern volatile uint32 MAIN_u32PosATimeStamp;
extern volatile uint32 MAIN_u32PosBTimeStamp;
extern uint32 MAIN_u32PosTreatCkreq;
extern uint32 MAIN_u32TestVar2;
extern uint32 MAIN_u32WaitValueVSITreatment;
extern uint8 MAIN_u8DEV_Fault[( 16 )];
extern uint8 MAIN_MSGu8bcm_pepsPwrMode;
extern uint8 MAIN_u8TestVar1;
extern volatile uint8 MAIN_u8IgbtHighFltCnt;
extern volatile uint8 MAIN_u8IgbtLowFltCnt;
extern uint16 MAIN_u16IuCycleCnt;
extern uint16 MAIN_u16IuMiddleCnt;
extern uint16 MAIN_u16IuMiddleSum;
extern uint16 MAIN_u16IuNegtiveCnt;
extern uint16 MAIN_u16IuNegtiveSum;
extern uint16 MAIN_u16IuPositiveCnt;
extern uint16 MAIN_u16IuPositiveSum;
extern uint16 MAIN_u16SpdReadyEstCnt;
extern uint16 MAIN_u16VadcBhv;

extern uint16 MAIN_u16HVInputCheck;
extern uint16 MAIN_u16SuperStructureCheck;
extern uint16 MAIN_u16DCACResevedCheck;
extern uint16 MAIN_u16DCACInverterCheck;
extern uint16 MAIN_u16AirConditionerCheck;
extern uint16 MAIN_u16HVFanCheck;
extern uint16 MAIN_u16WaterCoolingCheck;
extern uint16 MAIN_u16BatHeatPTCCheck;

extern uint32 OBD_u32CalVerifyNum;

extern sint32 MAIN_s32Email2PosTreqDiff;
extern sint32 MAIN_s32PosA2BDeltTime;
extern uint8 MAIN_MSGu8PwModOnCnt;
extern uint8 MAIN_MSGu8PwModOffCnt;
extern uint8 UDS_au8CalibSoftId[16];
extern uint8 MAIN_u8UdsSwVerVeh[13];
extern uint8 MAIN_u8UdsSwVerSup[21];
extern uint8 MAIN_u8UdsOEMPartNum[13];
extern uint8 MAIN_u8UdsManufPartNum[12];
extern uint8 MAIN_u8UdsSupplHwVersion[8];
extern uint8 MAIN_u8UdsManufHwVersion[13];
extern uint8 MAIN_u8UdsSupplyerId[10];
extern uint8 MAIN_u8UdsEcuName[10];
extern uint8 MAIN_u8UdsEcuSerialNum[12];
extern uint8 MAIN_u8UdsBootVersion[16];

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 177 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h" 2





boolean MAIN_bSpeedReadyMng(void);
void MAIN_vidMotorSpeedEst(const float);
void MAIN_Wait(uint32 time);
# 2 ".\\output\\inc/MAIN_L.h" 2
# 14 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2
# 1 ".\\output\\inc/Com.h" 1
# 15 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2

# 1 ".\\output\\inc/CAN02_DEF.h" 1
# 17 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2
# 49 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h"
# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 206 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2
extern void MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0(void);
extern void MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0(void);
extern void MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0(void);
extern void MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308(void);
extern void MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008(void);
extern void MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108(void);
extern void MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208(void);
extern void MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309(void);


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
#pragma section
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can02.h" 2
# 2 ".\\output\\inc/MAIN_MSG_Auto_Can02.h" 2
# 12 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 18 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c" 2


void Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01(void)
{

      BSW_bRxTOutFlag_Can02_Rx01 = (1 != 0);
      BSW_bMsgValidState_Can02_Rx01 = (1 != 0);

}



void Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02(void)
{

      BSW_bRxTOutFlag_Can02_Rx02 = (1 != 0);
      BSW_bMsgValidState_Can02_Rx02 = (1 != 0);

}



void Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03(void)
{

      BSW_bRxTOutFlag_Can02_Rx03 = (1 != 0);
      BSW_bMsgValidState_Can02_Rx03 = (1 != 0);

}
# 420 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c"
# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 421 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c" 2
