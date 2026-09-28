# 1 "bsw\\Com\\src\\Com_TpRxIndication.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Com\\src\\Com_TpRxIndication.c"







# 1 "bsw\\Com\\src\\Com_Prv.h" 1
# 11 "bsw\\Com\\src\\Com_Prv.h"
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
# 12 "bsw\\Com\\src\\Com_Prv.h" 2
# 1 ".\\output\\inc/Com_Cfg_Internal.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 1
# 436 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint8 Com_NoOfTxGrpSignal_tuo;

typedef uint8 Com_NoOfRxGrpSignal_tuo;
# 449 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint8 Com_TxIntSignalId_tuo;
typedef uint8 Com_RxIntSignalId_tuo;
# 462 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint16 Com_IpduId_tuo;

typedef uint8 Com_GrpSignalId_tuo;
# 475 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint8 Com_Bitsize_tuo;
typedef uint8 Com_Bitposition_tuo;




typedef uint8 Com_RxGwQueueIndex_tuo;


typedef uint16 Com_SigBuffIndex_tuo;



typedef uint8 Com_RxGrpSigBuffIndex_tuo;


typedef uint8 Com_TxGrpSigBuffIndex_tuo;
# 518 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint32 Com_SigMax_tuo;
# 574 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint8 Com_MainFunc_tuo;

typedef uint16 Com_NumOfIpdus_tuo;

typedef uint16 Com_TimeBase_tuo;
# 591 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
typedef uint8 Com_TxIpduCtrlVector_tau8[18u];


typedef uint8 Com_RxIpduCtrlVector_tau8[15u];
# 641 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 642 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_01_Rx_01(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 647 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 649 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_01_Rx_02(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 654 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 656 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_01_Rx_03(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 661 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 663 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_01_Rx_04(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 668 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 670 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_01_Rx_05(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 675 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 677 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_01_Rx_06(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 682 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 684 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_02_Rx_01(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 689 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 691 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_02_Rx_02(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 696 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 698 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_02_Rx_03(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 703 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 705 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_03_Rx_01(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 710 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 712 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_03_Rx_02(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 717 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 719 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_03_Rx_03(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 724 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 726 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2

void Com_RxTONotify_Com_IPdu_CanNodeNum_03_Rx_04(void);


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 731 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h" 2
# 2 ".\\output\\inc/Com_Cfg_Internal.h" 2
# 13 "bsw\\Com\\src\\Com_Prv.h" 2
# 1 ".\\output\\inc/Com_Cfg_SchM.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h" 1




# 1 ".\\output\\inc/SchM.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\SchM\\SchM.h" 1
# 2 ".\\output\\inc/SchM.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h" 2



# 1 ".\\output\\inc/SchM_Com.h" 1
# 1 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\SchM_Com.h"
# 1 ".\\output\\inc/..\\..\\rte\\SchM_Com_Type.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\SchM_Com_Type.h"
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
# 17 ".\\output\\inc/..\\..\\rte\\SchM_Com_Type.h" 2
# 17 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 2
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 1
# 23 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h"
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Const.h" 1
# 24 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
# 1 ".\\output\\inc/Os.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os.h" 1
# 39 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 40 ".\\output\\inc/..\\..\\os\\Os.h" 2
# 94 ".\\output\\inc/..\\..\\os\\Os.h"
 extern int __builtin_clz(unsigned int reg);






typedef struct {
  uint8 Class;
  uint8 TIN;
  uint32 ReturnAddress;
} OsTrapInfoType;
typedef OsTrapInfoType * OsTrapInfoRefType;




typedef uint32 uint32_aligned __attribute__ ((aligned (4)));
# 131 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern StatusType Os_Cbk_StartCore(uint16 CoreID);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 137 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 142 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern void Os_InitializeInterruptTable(void);
extern void Os_InitializeTrapTable(void);
extern void Os_InitializeServiceRequests(void);
extern void Os_StartCoreGate(void);
extern StatusType Os_GetTrapInfo(OsTrapInfoRefType Info);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 151 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 156 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper0(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 165 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 170 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper2(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 184 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper3(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\os\\Os.h" 2






typedef struct {
  uint32 store[17U];
} Os_JumpBufType[1];
extern sint32 Os_setjmp(Os_JumpBufType j);
extern void Os_longjmp(Os_JumpBufType j);
extern void Os_longjmp_ext(Os_JumpBufType j);
extern void Os_ECClongjmp(Os_JumpBufType j);
# 218 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned char Os_ResourceCountType;
typedef unsigned Os_StackTraceType;
typedef struct {Os_StackTraceType sp; Os_StackTraceType ctx;} Os_StackValueType;
typedef Os_StackValueType Os_StackSizeType;


typedef void (*Os_VoidVoidFunctionType)(void);
typedef Os_VoidVoidFunctionType Os_TaskEntryFunctionType;
typedef Os_VoidVoidFunctionType Os_IsrEntryFunctionType;
typedef Std_VersionInfoType * Std_VersionInfoRefType;

typedef enum {OS_BUDGET = 0U, OS_ECC_START, OS_ECC_RESUME, OS_ECC_WAIT} Os_StackOverrunType;
# 238 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned char ApplicationType;


typedef void (*Os_AppErrorHookFunctionType)(StatusType Error);
typedef uint32 Os_tmaskType;
typedef struct Os_ApplicationConfigurationType_s {
  ApplicationType app_id;
  Os_AppErrorHookFunctionType errorhook;
  uint8 access;
} Os_ApplicationConfigurationType;

typedef uint32 Os_CoreStateType;
typedef uint16 AreaIdType;
typedef const uint8 * const Os_ucharConstRefType;
typedef const uint8 * const Os_uint8ConstRefType;
typedef uint8 * const Os_uint8RefType;
typedef const uint16 * const Os_uint16ConstRefType;
typedef uint16 * const Os_uint16RefType;
typedef const uint32 * const Os_uint32ConstRefType;
typedef uint32 * const Os_uint32RefType;
typedef unsigned int Os_PeripheralAddressType;
typedef struct {
  AreaIdType id;
  uint8 access;
  Os_PeripheralAddressType start;
  Os_PeripheralAddressType end;
} Os_PeripheralAreaType;


typedef unsigned int TickType;
typedef signed int SignedTickType;
typedef TickType * TickRefType;
typedef uint32 PhysicalTimeType;
typedef unsigned int Os_StopwatchTickType;
typedef Os_StopwatchTickType * Os_StopwatchTickRefType;
typedef signed int Os_TimeLimitType;

typedef enum {PRO_IGNORE = 0U, PRO_SHUTDOWN} ProtectionReturnType;
typedef Os_JumpBufType * Os_TerminatorType;

typedef uint32 IdleModeType;


typedef uint32_aligned Os_Lockable;
typedef const void * Os_LockerRefType;
typedef uint16 CoreIdType;
typedef uint16 SpinlockIdType;

typedef enum {TRYTOGETSPINLOCK_SUCCESS = 0U, TRYTOGETSPINLOCK_NOSUCCESS} TryToGetSpinlockType;
typedef TryToGetSpinlockType * Os_TryToGetSpinlockRefType;
struct Os_ControlledCoreType_s;
typedef struct Os_SpinlockDynType_s {
  volatile Os_Lockable lock;
  SpinlockIdType predecessor;
} Os_SpinlockDynType;
typedef struct Os_SpinlockType_s {
  uint8 access;
  SpinlockIdType successor;
} Os_SpinlockType;
# 330 ".\\output\\inc/..\\..\\os\\Os.h"
typedef StatusType * Os_StatusRefType;


typedef unsigned char AppModeType;



typedef unsigned int AccessType;
# 347 ".\\output\\inc/..\\..\\os\\Os.h"
typedef const uint8 * MemoryStartAddressType;
typedef unsigned int MemorySizeType;

typedef enum {RESTART = 1U, NO_RESTART} RestartType;
typedef enum {APPLICATION_ACCESSIBLE = 0U, APPLICATION_RESTARTING, APPLICATION_TERMINATED} ApplicationStateType;
typedef ApplicationStateType * ApplicationStateRefType;
typedef enum {ACCESS = 0U, NO_ACCESS} ObjectAccessType;
typedef enum {OBJECT_TASK = 0U, OBJECT_ISR, OBJECT_ALARM, OBJECT_RESOURCE, OBJECT_COUNTER, OBJECT_SCHEDULETABLE} ObjectTypeType;
typedef const void * const Os_AnyType;

typedef unsigned char TrustedFunctionIndexType;
typedef void * TrustedFunctionParameterRefType;

typedef void (*Os_FunctionEntryType)(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams);
typedef struct Os_TrustedFunctionType_s {
  Os_FunctionEntryType function;
  CoreIdType core_id;
  const Os_ApplicationConfigurationType * const application;
} Os_TrustedFunctionType;

typedef uint16 Os_IdleType;


typedef struct Os_MeterInfoType_s {
  Os_StopwatchTickType elapsed;
  Os_StopwatchTickType previous;
  Os_StopwatchTickType max;
   Os_StopwatchTickType cumulative;
  Os_StackValueType stackbase;
  Os_StackSizeType stackusage;
  Os_StackSizeType stackmax;
  Os_StackSizeType stackbudget;
} Os_MeterInfoType;
typedef Os_MeterInfoType * Os_MeterInfoRefType;


typedef uint8 EventMaskType;
typedef EventMaskType * EventMaskRefType;



typedef uint32 Os_imaskType;

typedef struct Os_ISRDynType_s {
  boolean terminating;
  Os_MeterInfoType meter;
} Os_ISRDynType;
typedef void (*Os_IsrTerminatedFunctionType)(void);
typedef struct Os_ISRType_s {
  Os_VoidVoidFunctionType entry_function;
  Os_IsrTerminatedFunctionType terminated_function;
  Os_ISRDynType * const dynamic;
  Os_imaskType imask;
  uint32 index;
  Os_StackSizeType stackbudget;
  uint8 access;
  ApplicationType application;
} Os_ISRType;
typedef const Os_ISRType * ISRType;






typedef ISRType * ISRRefType;
# 423 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned int Os_bitmask;
typedef Os_bitmask Os_pset0Type;
typedef Os_bitmask Os_pset1Type;
typedef Os_bitmask Os_pset2Type;
typedef Os_bitmask Os_pset3Type;
typedef union {
  Os_pset0Type p0;
  Os_pset1Type p1;
  Os_pset2Type p2;
  Os_pset3Type p3;
} Os_psetType;

typedef union {
  Os_bitmask t0;
  Os_bitmask t1;
  Os_bitmask t2;
  Os_bitmask t3;
} Os_tpmaskType;

typedef struct Os_TaskDynType_s {
  Os_JumpBufType terminate_jump_buf;
  Os_MeterInfoType meter;
  uint32 termination_state;
} Os_TaskDynType;

typedef struct Os_TaskType_s {
  Os_TaskDynType * const dynamic;
  Os_VoidVoidFunctionType entry_function;
  Os_psetType pset;
  Os_tpmaskType base_tpmask;
  Os_tpmaskType tpmask;
  CoreIdType core_id;
  uint32 index;
  Os_StackSizeType stackbudget;
  uint8 access;
  ApplicationType application;
} Os_TaskType;
typedef const Os_TaskType * TaskType;






typedef TaskType * TaskRefType;
enum Os_TaskStateType {SUSPENDED = 0U, READY, WAITING, RUNNING};
typedef enum Os_TaskStateType TaskStateType;
typedef TaskStateType * TaskStateRefType;
# 481 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_ResourceDynType_s {
  TaskType locker;
  union {
    Os_tpmaskType tpmask;
  } saved_priority;
} Os_ResourceDynType;
typedef struct Os_ResourceType_s {
  Os_ResourceDynType * const dynamic;
  Os_tpmaskType tpmask;
  uint8 access;
} Os_ResourceType;
typedef const Os_ResourceType * ResourceType;




typedef struct {
  TickType maxallowedvalue;
  TickType ticksperbase;
  TickType mincycle;
} AlarmBaseType;
typedef AlarmBaseType * AlarmBaseRefType;
typedef struct Os_AlarmDynType_s {
  boolean running;
  TickType match;
  TickType period;
} Os_AlarmDynType;
typedef struct Os_AlarmType_s {
  uint8 config;
  uint8 access;
  ApplicationType application;
} Os_AlarmType;
typedef unsigned char AlarmType;



typedef void (*Os_AlarmCallbackType)(void);




typedef struct {
  boolean Running;
  boolean Pending;
  TickType Delay;
} Os_CounterStatusType;
typedef Os_CounterStatusType * Os_CounterStatusRefType;

typedef TickType (*Os_HwCounterNowType)(void);
typedef void (*Os_HwCounterSetType)(TickType Value);
typedef void (*Os_HwCounterStateType)(Os_CounterStatusRefType State);
typedef void (*Os_HwCounterCancelType)(void);
typedef StatusType (*Os_CounterIncrAdvType)(void);
typedef void (*Os_CounterStartType)(Os_AnyType ctr, TickType requested, TickType relative, TickRefType match_value);

typedef struct Os_CounterDynType_s {
  union {
    struct s_swd {
      TickType count;
    } sw;
  } type_dependent;
} Os_CounterDynType;
typedef struct Os_CounterType_s {
  Os_CounterDynType * const dynamic;
  Os_CounterIncrAdvType advincr;
  AlarmBaseType base;
  const void *core;
  uint8 access;
  ApplicationType application;
} Os_CounterType;
typedef const Os_CounterType * CounterType;




enum Os_ScheduleTableStatusType {SCHEDULETABLE_STOPPED = 0U, SCHEDULETABLE_NEXT, SCHEDULETABLE_WAITING, SCHEDULETABLE_RUNNING, SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS};
typedef enum Os_ScheduleTableStatusType ScheduleTableStatusType;
typedef ScheduleTableStatusType * ScheduleTableStatusRefType;
typedef enum {OS_SYNC_NONE, OS_SYNC_IMPLICIT, OS_SYNC_EXPLICIT} Os_ScheduleTableSyncType;
typedef enum {OS_SYNC_ASYNC, OS_SYNC_ADVANCING, OS_SYNC_RETARDING, OS_SYNC_INSYNC} Os_ScheduleTableSyncStateType;

struct Os_ScheduleTableDynType_s;
typedef struct Os_ScheduleTableType_s {
  struct Os_ScheduleTableDynType_s * const dynamic;
  CounterType counter;
  TickType sync_precision;
  TickType maxallowedvalue;
  boolean repeat;
  uint32 config;
  uint8 initial;
  uint8 access;
  Os_ScheduleTableSyncType sync_type;
  ApplicationType application;
} Os_ScheduleTableType;
typedef const Os_ScheduleTableType * ScheduleTableType;
typedef ScheduleTableType * ScheduleTableRefType;
typedef struct Os_ScheduleTableDynType_s {
  TickType match;
  TickType drift;
  ScheduleTableType next;
  ScheduleTableStatusType state;
  uint32 config;
  TickType sync_count_tracker;
  Os_ScheduleTableSyncStateType sync_state;
} Os_ScheduleTableDynType;





typedef unsigned char OSServiceIdType;
# 687 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned int Os_BiggestType;
typedef unsigned int Os_BiggestCommonType;
# 798 ".\\output\\inc/..\\..\\os\\Os.h"
typedef StatusType Os_TraceStatusType;
typedef uint8 Os_TraceDataType;
# 905 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 906 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern Os_TraceStatusType Os_Cbk_TraceCommInitTarget(void) ;
extern void Os_Cbk_TraceCommDataReady(void) ;
extern void Os_Cbk_TraceCommTxStart(void) ;
extern void Os_Cbk_TraceCommTxByte(Os_TraceDataType val) ;
extern void Os_Cbk_TraceCommTxEnd(void) ;
extern boolean Os_Cbk_TraceCommTxReady(void) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 916 ".\\output\\inc/..\\..\\os\\Os.h" 2



typedef struct Os_ControlledCoreType_s {
  OsTrapInfoType TrapInfo;
  volatile Os_Lockable lock_taskaccess;
  volatile Os_psetType ReadyTasks ;
  volatile ISRType RunningISR;
  volatile TaskType RunningTask;
  volatile Os_tpmaskType RunningTPMask ;
  volatile Os_psetType TerminatingTasks;
  volatile Os_TerminatorType CurrentTerminator;
  Os_MeterInfoRefType CurrentMeteredObject;
  Os_MeterInfoType IdleMeter;
  uint8 AppAccess;
  volatile ApplicationType AppOverride;
  Os_StackSizeType GetStackValueAdjust;
  boolean InErrorHook;
  volatile TaskType ChainTaskRef;
  Os_StackSizeType GetStackUsageAdjust;
  boolean InProtectionHook;
  boolean CoreIsActive;
  boolean InShutdownHook;
} Os_ControlledCoreType;
# 951 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_AnyCoreType_s {
  volatile Os_imaskType DisableAllImask;
  volatile Os_imaskType SuspendAllImask;
  volatile Os_imaskType SuspendOSImask;
  volatile uint32 DisableAllCount;
  volatile uint32 SuspendAllCount;
  volatile uint32 SuspendOSCount;
  Os_JumpBufType RestartJumpBuf;
  boolean Restartable;
  StatusType LastProtectionFault;
} Os_AnyCoreType;
# 970 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_CoreConfiguration_s {
  Os_ControlledCoreType * const controlled;
  Os_AnyCoreType * const any;
  volatile Os_CoreStateType * const state;
  Os_VoidVoidFunctionType dispatch;
  ResourceType Os_Res_Scheduler;
  CoreIdType core_id;
} Os_CoreConfiguration;




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 983 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern void ErrorHook(StatusType Error) ;
extern void PreTaskHook(void) ;
extern void PostTaskHook(void) ;
extern ProtectionReturnType ProtectionHook(StatusType FatalError) ;
extern void StartupHook(void) ;
extern void ShutdownHook(StatusType Error) ;
extern void Os_Cbk_StackOverrunHook(Os_StackSizeType Overrun, Os_StackOverrunType Reason);
extern AccessType Os_Cbk_CheckMemoryAccess(ApplicationType Application, TaskType TaskID, ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size);
extern boolean Os_Cbk_Idle(void) ;
extern void Os_Cbk_InShutdown(void) ;
extern void Os_Cbk_CheckStackDepth(CoreIdType Core_id, Os_StackSizeType Depth, Os_StackSizeType CurrentPos);

 extern Os_StopwatchTickType Os_Cbk_GetStopwatch(void) ;

extern void Os_Cbk_TimeOverrunHook(Os_StopwatchTickType Overrun) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1002 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1007 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern Os_StackValueType Os_GetSP(void);
extern void Os_GetVersionInfo(Std_VersionInfoType *versioninfo) ;
extern Os_StopwatchTickType Os_GetExecutionTime(void) ;
extern Os_StopwatchTickType Os_GetTaskMaxExecutionTime(TaskType TaskID) ;
extern Os_StopwatchTickType Os_GetISRMaxExecutionTime(ISRType ISRID) ;
extern StatusType Os_ResetTaskMaxExecutionTime(TaskType TaskID) ;
extern StatusType Os_ResetISRMaxExecutionTime(ISRType ISRID) ;
extern Os_StopwatchTickType Os_GetElapsedTime(void) ;
extern Os_StopwatchTickType Os_GetTaskElapsedTime(TaskType TaskID) ;
extern Os_StopwatchTickType Os_GetISRElapsedTime(ISRType ISRID) ;
extern Os_StopwatchTickType Os_GetIdleElapsedTime(Os_IdleType IdleID) ;
extern StatusType Os_ResetTaskElapsedTime(TaskType TaskID) ;
extern StatusType Os_ResetISRElapsedTime(ISRType ISRID) ;
extern StatusType Os_ResetIdleElapsedTime(Os_IdleType IdleID) ;
extern Os_StackSizeType Os_GetStackUsage(void) ;
extern Os_StackSizeType Os_GetTaskMaxStackUsage(TaskType TaskID) ;
extern Os_StackSizeType Os_GetISRMaxStackUsage(ISRType ISRID) ;
extern StatusType Os_ResetTaskMaxStackUsage(TaskType TaskID) ;
extern StatusType Os_ResetISRMaxStackUsage(ISRType ISRID) ;
extern Os_StackValueType Os_GetStackValue(void) ;
extern Os_StackSizeType Os_GetStackSize(Os_StackValueType Base, Os_StackValueType Sample) ;
extern StatusType Os_ActivateTask(TaskType TaskID) ;
extern StatusType Os_GetTaskID(TaskRefType TaskID) ;
extern StatusType Os_GetTaskState(TaskType TaskID, TaskStateRefType State) ;
extern StatusType Os_Schedule(void) ;
extern StatusType Os_SetEvent(TaskType TaskID, EventMaskType Mask) ;
extern StatusType Os_ClearEvent(EventMaskType Mask) ;
extern StatusType Os_GetEvent(TaskType TaskID, EventMaskRefType Mask) ;
extern StatusType Os_WaitEvent(EventMaskType Mask) ;
extern StatusType Os_GetResource(ResourceType ResID) ;
extern StatusType Os_ReleaseResource(ResourceType ResID) ;
extern void Os_DisableAllInterrupts(void) ;
extern void Os_EnableAllInterrupts(void) ;
extern void Os_SuspendAllInterrupts(void) ;
extern void Os_ResumeAllInterrupts(void) ;
extern void Os_SuspendOSInterrupts(void) ;
extern void Os_ResumeOSInterrupts(void) ;
extern ISRType Os_GetISRID(void) ;
extern AppModeType Os_GetActiveApplicationMode(void) ;
extern ApplicationType Os_CheckObjectOwnership(ObjectTypeType ObjectType, Os_AnyType Object) ;
extern ObjectAccessType Os_CheckObjectAccess(ApplicationType ApplID, ObjectTypeType ObjectType, Os_AnyType Object) ;
extern ApplicationType Os_GetApplicationID(void) ;
extern ApplicationType Os_GetCurrentApplicationID(void) ;
extern StatusType Os_TerminateTask(void) ;
extern AccessType Os_CheckTaskMemoryAccess(TaskType TaskID, MemoryStartAddressType Address, MemorySizeType Size) ;
extern AccessType Os_CheckISRMemoryAccess(ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size) ;
extern StatusType Os_GetCounterValue(CounterType CounterID, TickRefType Value) ;
extern StatusType Os_GetElapsedCounterValue(CounterType CounterID, TickRefType Value, TickRefType ElapsedValue) ;
extern StatusType Os_IncrementCounter(CounterType CounterID) ;
extern StatusType Os_AdvanceCounter(CounterType CounterID) ;
extern StatusType Os_GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info) ;
extern StatusType Os_CancelAlarm(AlarmType AlarmID) ;
extern StatusType Os_GetAlarm(AlarmType AlarmID, TickRefType Tick) ;
extern StatusType Os_SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle) ;
extern StatusType Os_SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle) ;
extern StatusType Os_StopScheduleTable(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_StartScheduleTableRel(ScheduleTableType ScheduleTableID, TickType Offset) ;
extern StatusType Os_StartScheduleTableAbs(ScheduleTableType ScheduleTableID, TickType Start) ;
extern StatusType Os_StartScheduleTableSynchron(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_SyncScheduleTable(ScheduleTableType ScheduleTableID, TickType Value) ;
extern StatusType Os_SyncScheduleTableRel(ScheduleTableType ScheduleTableID, SignedTickType RelativeValue) ;
extern StatusType Os_SetScheduleTableAsync(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_GetScheduleTableStatus(ScheduleTableType ScheduleTableID, ScheduleTableStatusRefType ScheduleStatus) ;
extern StatusType Os_NextScheduleTable(ScheduleTableType ScheduleTableID_From, ScheduleTableType ScheduleTableID_To) ;
extern boolean Os_StartOS(AppModeType Mode) ;
extern void Os_ShutdownOS(StatusType Error) ;
extern void Os_ProtectionLog(StatusType os_status);
extern StatusType Os_ControlIdle(CoreIdType CoreID, IdleModeType IdleMode) ;
extern IdleModeType Os_CurrentIdleMode(void);
extern uint32 Os_GetCurrentTPL(void) ;
extern Os_imaskType Os_GetCurrentIMask(void) ;
extern StatusType Os_EnableInterruptSource(ISRType ISRID, boolean ClearPending) ;
extern StatusType Os_DisableInterruptSource(ISRType ISRID) ;
extern StatusType Os_ClearPendingInterrupt(ISRType ISRID) ;
extern uint32 Os_GetNumberOfActivatedCores(void) ;
extern void Os_ShutdownAllCores(StatusType Error) ;
extern void Os_StartCore(CoreIdType CoreID, Os_StatusRefType Status) ;
extern StatusType Os_GetSpinlock(SpinlockIdType SpinlockId) ;
extern StatusType Os_TryToGetSpinlock(SpinlockIdType SpinlockId, TryToGetSpinlockType* Success) ;
extern StatusType Os_ReleaseSpinlock(SpinlockIdType SpinlockId) ;
extern void Os_CrossCoreCheck(Os_ControlledCoreType *os_current_controlled_core, const Os_CoreConfiguration *os_current_core_const);
extern StatusType Os_Restart(void) ;
extern StatusType Os_ChainTask(TaskType TaskID) ;
extern StatusType Os_TerminateApplication(ApplicationType Application, RestartType RestartOption) ;
extern StatusType Os_GetApplicationState(ApplicationType Application, ApplicationStateRefType Value) ;
extern StatusType Os_AllowAccess(void) ;
extern StatusType Os_CallTrustedFunction(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) ;
extern StatusType Os_ReadPeripheral8(AreaIdType Area, Os_uint8ConstRefType Address, Os_uint8RefType ReadValue) ;
extern StatusType Os_WritePeripheral8(AreaIdType Area, Os_uint8RefType Address, uint8 WriteValue) ;
extern StatusType Os_ModifyPeripheral8(AreaIdType Area, Os_uint8RefType Address, uint8 Clearmask, uint8 Setmask) ;
extern StatusType Os_ReadPeripheral16(AreaIdType Area, Os_uint16ConstRefType Address, Os_uint16RefType ReadValue) ;
extern StatusType Os_WritePeripheral16(AreaIdType Area, Os_uint16RefType Address, uint16 WriteValue) ;
extern StatusType Os_ModifyPeripheral16(AreaIdType Area, Os_uint16RefType Address, uint16 Clearmask, uint16 Setmask) ;
extern StatusType Os_ReadPeripheral32(AreaIdType Area, Os_uint32ConstRefType Address, Os_uint32RefType ReadValue) ;
extern StatusType Os_WritePeripheral32(AreaIdType Area, Os_uint32RefType Address, uint32 WriteValue) ;
extern StatusType Os_ModifyPeripheral32(AreaIdType Area, Os_uint32RefType Address, uint32 Clearmask, uint32 Setmask) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1107 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 347 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 372 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.DEFAULT_CONST_UNSPECIFIED" a
# 2 ".\\output\\inc/MemMap.h" 2
# 348 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1112 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern const CoreIdType Os_TotalNumberOfCores;
extern const Os_CoreConfiguration Os_const_coreconfiguration[];
extern const Os_ApplicationConfigurationType Os_const_applications[];
extern const Os_ISRType Os_const_isrs[];
extern const TaskType Os_const_tasks[];
extern const Os_ResourceType Os_const_resources[];
extern const Os_CounterType Os_const_counters[];
extern const Os_ScheduleTableType Os_const_scheduletables[];
extern const Os_TaskType Os_const_tasks0[];
extern const Os_TaskType Os_const_tasks1[];
extern const Os_TaskType Os_const_tasks2[];
extern const Os_TaskType Os_const_tasks3[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 351 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 382 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 352 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1128 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 104 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 427 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".bss.DEFAULT_VAR_CLEARED_UNSPECIFIED"
# 2 ".\\output\\inc/MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1133 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern volatile AppModeType Os_CurrentAppMode;
extern Os_AnyCoreType Os_AnyCoreInfo[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 109 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 435 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1139 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 227 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".bss.DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED"
# 2 ".\\output\\inc/MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1144 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern StatusType Os_ShutdownAllCores_Indicator;
extern Os_StackValueType Os_StackBase[];
extern volatile Os_Lockable Os_lock_alarmaccess;
extern ApplicationStateType Os_dyn_appstate[];
extern Os_TaskDynType Os_dyn_tasks[];
extern Os_ISRDynType Os_dyn_isrs[];
extern Os_ControlledCoreType Os_ControlledCoreInfo[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 66 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 236 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1155 ".\\output\\inc/..\\..\\os\\Os.h" 2



# 1 ".\\output\\inc/Os_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 1
# 171 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"
extern void Os_CrossCoreISR0(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR1(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR2(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR3(void) __attribute__((interrupt_handler));

extern void ADC8SR0_ISR(void) __attribute__((interrupt_handler));
extern void GTMTIM2SR4_ISR(void) __attribute__((interrupt_handler));
extern void GTMTIM3SR6_ISR(void) __attribute__((interrupt_handler));
extern void ADC0SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC2SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC3SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC1SR0_ISR(void) __attribute__((interrupt_handler));
extern void CCU61SR2_ISR(void) __attribute__((interrupt_handler));
extern void CCU60SR2_ISR(void) __attribute__((interrupt_handler));
extern void DefaultInterruptHandler(void) __attribute__((interrupt_handler));
# 249 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 250 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2

extern void ErrorHook_OsApplication_Core0(StatusType Error) ;
extern void ErrorHook_OsApplication_Core1(StatusType Error) ;
extern void ErrorHook_OsApplication_Core2(StatusType Error) ;
extern void ErrorHook_OsApplication_Core3(StatusType Error) ;
extern void Os_Cbk_Terminated_CAN1SR11_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR10_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR9_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR8_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR11_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR10_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR9_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR8_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR0_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR7_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR6_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR5_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR4_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR3_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR2_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR1_ISR(void) ;
extern void Os_Cbk_Terminated_ADC4SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC11SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC10SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC9SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC8SR1_ISR(void) ;
extern void Os_Cbk_Terminated_ADC3SR1_ISR(void) ;
extern void Os_Cbk_Terminated_STM0SR1_ISR(void) ;
extern void Os_Cbk_Terminated_Millisecond(void) ;
extern void Os_Cbk_Disable_CAN1SR11_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR10_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR9_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR8_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR11_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR10_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR9_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR8_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR0_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR7_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR6_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR5_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR4_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR3_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR2_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR1_ISR(void) ;
extern void Os_Cbk_Disable_ADC4SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC11SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC10SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC9SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC8SR1_ISR(void) ;
extern void Os_Cbk_Disable_ADC3SR1_ISR(void) ;
extern void Os_Cbk_Disable_STM0SR1_ISR(void) ;
extern void Os_Cbk_Disable_Millisecond(void) ;
extern void Os_Cbk_Disable_ADC8SR0_ISR(void) ;
extern void Os_Cbk_Disable_GTMTIM2SR4_ISR(void) ;
extern void Os_Cbk_Disable_GTMTIM3SR6_ISR(void) ;
extern void Os_Cbk_Disable_ADC0SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC2SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC3SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC1SR0_ISR(void) ;
extern void Os_Cbk_Disable_CCU61SR2_ISR(void) ;
extern void Os_Cbk_Disable_CCU60SR2_ISR(void) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 315 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 320 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2

extern StatusType Os_IncrementCounter_Rte_TickCounter(void);
extern void Os_Entry_Core0_OsTask_Background_1ms(void);
extern void Os_Entry_Core3_OsTask_ASW_5ms(void);
extern void Os_Entry_Core3_OsTask_ASW_1ms(void);
extern void Os_Entry_Core3_OsTask_BSW_10ms(void);
extern void Os_Entry_Core2_OsTask_ASW_100ms(void);
extern void Os_Entry_Core2_OsTask_ASW_10ms(void);
extern void Os_Entry_Core2_OsTask_ASW_5ms(void);
extern void Os_Entry_Core2_OsTask_ASW_1ms(void);
extern void Os_Entry_Core2_OsTask_BSW_10ms(void);
extern void Os_Entry_Core1_OsTask_ASW_100ms(void);
extern void Os_Entry_Core0_OsTask_ASW_100ms(void);
extern void Os_Entry_Core1_OsTask_ASW_10ms(void);
extern void Os_Entry_Core0_BSW_OsTask_SwcRequest(void);
extern void Os_Entry_Core1_OsTask_BSW_10ms(void);
extern void Os_Entry_Core1_OsTask_ASW_1ms(void);
extern void Os_Entry_Core0_OsTask_BSW_100ms(void);
extern void Os_Entry_Core0_OsTask_BSW_50ms(void);
extern void Os_Entry_Core0_OsTask_ASW_10ms(void);
extern void Os_Entry_Core0_OsTask_BSW_10ms(void);
extern void Os_Entry_Core0_OsTask_ASW_1ms(void);
extern void Os_Entry_Core0_OsTask_BSW_1ms(void);
extern void Os_Entry_Core0_ECU_StartupTask(void);
extern void Os_Entry_CAN1SR11_ISR(void);
extern void Os_Entry_CAN1SR10_ISR(void);
extern void Os_Entry_CAN1SR9_ISR(void);
extern void Os_Entry_CAN1SR8_ISR(void);
extern void Os_Entry_CAN0SR11_ISR(void);
extern void Os_Entry_CAN0SR10_ISR(void);
extern void Os_Entry_CAN0SR9_ISR(void);
extern void Os_Entry_CAN0SR8_ISR(void);
extern void Os_Entry_CAN0SR0_ISR(void);
extern void Os_Entry_CAN0SR7_ISR(void);
extern void Os_Entry_CAN0SR6_ISR(void);
extern void Os_Entry_CAN0SR5_ISR(void);
extern void Os_Entry_CAN0SR4_ISR(void);
extern void Os_Entry_CAN0SR3_ISR(void);
extern void Os_Entry_CAN0SR2_ISR(void);
extern void Os_Entry_CAN0SR1_ISR(void);
extern void Os_Entry_ADC4SR0_ISR(void);
extern void Os_Entry_ADC11SR0_ISR(void);
extern void Os_Entry_ADC10SR0_ISR(void);
extern void Os_Entry_ADC9SR0_ISR(void);
extern void Os_Entry_ADC8SR1_ISR(void);
extern void Os_Entry_ADC3SR1_ISR(void);
extern void Os_Entry_STM0SR1_ISR(void);
extern void Os_Entry_Millisecond(void);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 371 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2
# 403 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"































































































































# 543 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"




















































































































# 668 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"



























# 2 ".\\output\\inc/Os_Cfg.h" 2
# 1159 ".\\output\\inc/..\\..\\os\\Os.h" 2
# 2 ".\\output\\inc/Os.h" 2
# 25 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
# 96 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h"
# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 97 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern const Rte_AlarmRefType Rte_TimeoutAlarms[];

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 100 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
# 181 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h"
typedef uint16 * Rte_ResourceCountRefType;

typedef TaskType Rte_TaskRefType;
typedef EventMaskType Rte_EventRefType;
typedef uint32 Rte_EventType;
# 194 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h"
# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 195 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2

extern Rte_ResourceRefType Rte_Resources[(4U) + 1];

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 199 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2




# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 204 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2

extern Rte_ResourceCountRefType Rte_ResourceCount[(4U) + 1];

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 208 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2






# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 215 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern uint16 Rte_SpinlockCount[(3) + 1];

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
# 296 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h"
typedef uint8 Rte_REActCounterType;
typedef Rte_REActCounterType * Rte_REActCounterRefType;

typedef struct {
   Rte_TaskRefType task;
   Rte_REActCounterRefType acnt;
} Rte_REContainerType;

typedef const Rte_REContainerType * Rte_REContainerRefType;


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 308 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern Std_ReturnType Rte_ActivateRE(Rte_REContainerRefType c);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 311 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2


typedef struct
{
   Rte_AlarmRefType osAlarm;
   TickType increment;
   TickType period;
} Rte_AlarmTable;


typedef uint16 Rte_MSICounterType;
typedef Rte_MSICounterType * Rte_MSICounterRefType;

typedef boolean Rte_MSIPendingFlagType;
typedef Rte_MSIPendingFlagType * Rte_MSIPendingFlagRefType;


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 329 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern boolean Rte_MSITest(Rte_MSICounterType,
                                              Rte_MSIPendingFlagRefType,
                                              Rte_MSICounterType);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 334 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2

typedef struct
{
   Rte_MSICounterRefType counter;
   boolean incCounter;
   Rte_MSIPendingFlagRefType pending;
   Rte_TaskRefType osTask;
   Rte_REActCounterRefType acnt;
   Rte_EventRefType osEvent;
   Rte_MSICounterType MSIInit;
} Rte_MSITableEntry;

typedef const Rte_MSITableEntry * Rte_MSITableEntryRef;




typedef uint32 Rte_TaskArrayIndex;
typedef uint32 Rte_NrWaitingTasks;

typedef struct {
   uint8 pending;
   Rte_NrWaitingTasks count;
   Rte_TaskArrayIndex firstWaitingTask;
} Rte_WaitableDatum;

typedef struct {
   Rte_TaskRefType task;
   Rte_AlarmIndexType alarm;
   Rte_EventType * waitingEv;
} Rte_TaskInfo;


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 368 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern Std_ReturnType Rte_WaitWithTimeout(Rte_WaitableDatum * datum,
                                                             Rte_EventType event,
                                                             const TickType timeout);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 373 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 376 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern Std_ReturnType Rte_SetEvent(Rte_WaitableDatum * datum,
                                                      Rte_EventType event);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 380 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 383 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern void Rte_DecrementWaitingCount( Rte_WaitableDatum * datum,
                                                          Rte_TaskArrayIndex idx,
                                                          Rte_EventType event );

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 388 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 391 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern Rte_TaskArrayIndex Rte_GetCurrentTaskIndex( TaskType * taskRef );

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 394 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2




typedef struct {
   Rte_EventType event_id;
   Rte_WaitableDatum * wd;
   TickType timeout;
} Rte_WOWP_NotificationType;

typedef const Rte_WOWP_NotificationType * Rte_WOWP_NotificationRefType;

typedef Rte_REContainerType Rte_ARE_NotificationType;

typedef const Rte_ARE_NotificationType * Rte_ARE_NotificationRefType;

typedef struct Rte_QDRAType {
   Rte_QCmnType cmn;

} Rte_QDRAType;

typedef struct Rte_QTaskType {
   Rte_QCmnType cmn;
   Rte_TaskRefType task;
} Rte_QTaskType;

typedef const Rte_QTaskType * Rte_QRefTaskType;

typedef struct Rte_QREType {
   Rte_QCmnType cmn;
   Rte_REContainerRefType re;
} Rte_QREType;

typedef const Rte_QREType * Rte_QRefREType;

typedef struct Rte_QWWPType {
   Rte_QCmnType cmn;
   Rte_WOWP_NotificationRefType wwp;
} Rte_QWWPType;

typedef const Rte_QWWPType * Rte_QRefWWPType;

typedef struct Rte_QEvType {
   Rte_QCmnType cmn;
   Rte_TaskRefType task;
   Rte_EventRefType mask;
   Rte_REActCounterRefType acnt;
} Rte_QEvType;

typedef const Rte_QEvType * Rte_QRefEvType;

typedef struct Rte_QMSIType {
   Rte_QCmnType cmn;
   Rte_TaskRefType task;
   Rte_EventRefType mask;
   Rte_REActCounterRefType acnt;
   Rte_MSICounterRefType msiCounter;
   Rte_MSIPendingFlagRefType msiPending;
   uint16 msiLimit;
} Rte_QMSIType;

typedef const Rte_QMSIType * Rte_QRefMSIType;

typedef void * Rte_VarDataPtr;
typedef const void * Rte_ConstDataPtr;


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 462 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern Std_ReturnType Rte_WriteQueue(Rte_QCmnRefType q,
                                                        Rte_ConstDataPtr data);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 466 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2


# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 469 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern Std_ReturnType Rte_ReadQueue(Rte_QCmnRefType q,
                                                       Rte_VarDataPtr data);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 473 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2




typedef boolean (*Rte_MddGuard)(void);
# 527 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h"
# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 528 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
extern boolean Rte_Initialized;
extern boolean SchM_Initialized;

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 532 ".\\output\\inc/..\\..\\rte\\Rte_Intl.h" 2
# 18 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 2
# 43 ".\\output\\inc/..\\..\\rte\\SchM_Com.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 44 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 2
void Com_MainFunctionRx(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 2

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 49 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 2
void Com_MainFunctionTx(void);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 52 ".\\output\\inc/..\\..\\rte\\SchM_Com.h" 2
# 2 ".\\output\\inc/SchM_Com.h" 2
# 10 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h" 2
# 18 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_INVALIDATESIGNAL(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_INVALIDATESIGNAL(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_MAINFUNCTIONTX(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_MAINFUNCTIONTX(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_MAINFUNCTION_ROUTE_SIGNALS(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_MAINFUNCTION_ROUTE_SIGNALS(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDDYNSIGNAL(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDDYNSIGNAL(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDIPDU_DATA(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDIPDU_DATA(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDIPDU_TXFLAGS(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDIPDU_TXFLAGS(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDSIGNAL(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDSIGNAL(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDSIGNALGRP(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDSIGNALGRP(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_TRIGGERTRANSMIT(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_TRIGGERTRANSMIT(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_TRIGGERIPDUSENDWITHMETADATA(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_TRIGGERIPDUSENDWITHMETADATA(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SIGTXCHANGEMODE(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SIGTXCHANGEMODE(void);






static __inline__ void SchM_Enter_Com_TxIpduProtArea_TXCONFIRMATION(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_TXCONFIRMATION(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SEND_DYNGROUPSIGNAL(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SEND_DYNGROUPSIGNAL(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_IPDUGROUPSTART(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_IPDUGROUPSTART(void);

static __inline__ void SchM_Enter_Com_TxIpduProtArea_SWITCHTXIPDU(void);
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SWITCHTXIPDU(void);
# 78 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_RxPduBuffer(void);
static __inline__ void SchM_Exit_Com_RxPduBuffer(void);
# 96 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_RxSigBuff_MAINFUNCTIONRX (void);
static __inline__ void SchM_Exit_Com_RxSigBuff_MAINFUNCTIONRX (void);

static __inline__ void SchM_Enter_Com_RxSigBuff_RECEIVESIGNAL (void);
static __inline__ void SchM_Exit_Com_RxSigBuff_RECEIVESIGNAL (void);

static __inline__ void SchM_Enter_Com_RxSigBuff_RXINDICATION (void);
static __inline__ void SchM_Exit_Com_RxSigBuff_RXINDICATION (void);
# 175 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_INVALIDATESIGNAL (void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_INVALIDATESIGNAL (void)
{

}
# 201 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_MAINFUNCTIONTX(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_MAINFUNCTIONTX(void)
{

}
# 222 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_MAINFUNCTION_ROUTE_SIGNALS(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_MAINFUNCTION_ROUTE_SIGNALS(void)
{

}
# 257 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDDYNSIGNAL(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDDYNSIGNAL(void)
{

}
# 288 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SEND_DYNGROUPSIGNAL(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SEND_DYNGROUPSIGNAL(void)
{

}
# 326 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDIPDU_DATA(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDIPDU_DATA(void)
{

}
# 349 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDIPDU_TXFLAGS(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDIPDU_TXFLAGS(void)
{

}
# 383 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDSIGNAL(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDSIGNAL(void)
{

}
# 418 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SENDSIGNALGRP(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SENDSIGNALGRP(void)
{

}
# 451 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_TRIGGERTRANSMIT(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_TRIGGERTRANSMIT(void)
{

}
# 490 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_TRIGGERIPDUSENDWITHMETADATA(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_TRIGGERIPDUSENDWITHMETADATA(void)
{

}
# 517 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SIGTXCHANGEMODE(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SIGTXCHANGEMODE(void)
{

}
# 576 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_TXCONFIRMATION(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_TXCONFIRMATION(void)
{

}
# 609 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_IPDUGROUPSTART(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_IPDUGROUPSTART(void)
{

}
# 638 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_TxIpduProtArea_SWITCHTXIPDU(void)
{

}
static __inline__ void SchM_Exit_Com_TxIpduProtArea_SWITCHTXIPDU(void)
{

}
# 705 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_RxPduBuffer(void)
{

}
static __inline__ void SchM_Exit_Com_RxPduBuffer(void)
{

}
# 775 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_RxSigBuff_MAINFUNCTIONRX (void)
{

}
static __inline__ void SchM_Exit_Com_RxSigBuff_MAINFUNCTIONRX (void)
{

}
# 797 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_RxSigBuff_RXINDICATION (void)
{

}

static __inline__ void SchM_Exit_Com_RxSigBuff_RXINDICATION (void)
{

}
# 820 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
static __inline__ void SchM_Enter_Com_RxSigBuff_RECEIVESIGNAL (void)
{

}

static __inline__ void SchM_Exit_Com_RxSigBuff_RECEIVESIGNAL (void)
{

}
# 2 ".\\output\\inc/Com_Cfg_SchM.h" 2
# 14 "bsw\\Com\\src\\Com_Prv.h" 2
# 1 "bsw\\Com\\src\\Com_Prv_Types.h" 1
# 50 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    unsigned int isEventTrig_u1 : 1;
    unsigned int isModeChangd_u1 : 1;
    unsigned int isSigTriggered_u1 : 1;
    unsigned int isTimeoutReq_u1 : 1;
    unsigned int ignoreRepetitions_u1 : 1;
    unsigned int isSwtIpduTxMode_u1 : 1;
} Com_SendIpduInfo_tst;
# 75 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    uint16 timePeriod_u16;
    uint16 timeOffset_u16;
    uint16 repetitionPeriod_u16;
    uint8 numOfRepetitions_u8;






    uint8 mode_u8;



} Com_TransModeInfo_tst;
# 101 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef const Com_TransModeInfo_tst * Com_TMConstPtr_tpcst;
# 139 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
# 163 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint32 initVal_u32;
# 175 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint16 txSignalFields_u16;





    Com_Bitposition_tuo bitPos_uo;

    Com_Bitsize_tuo bitSize_uo;
# 193 "bsw\\Com\\src\\Com_Prv_Types.h"
    Com_IpduId_tuo idComIPdu_uo;
# 206 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint8 general_u8;

} Com_Prv_xTxSigCfg_tst;







typedef const Com_Prv_xTxSigCfg_tst * Com_TxSigCfg_tpcst;
# 259 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
# 278 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint32 initVal_u32;




    Com_Bitposition_tuo bitPos_uo;
    Com_SigBuffIndex_tuo idxSigBuff_uo;
    Com_Bitsize_tuo bitSize_uo;





    Com_IpduId_tuo idComIPdu_uo;
# 304 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint8 general_u8;
# 314 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint8 rxSignalFields_u8;

} Com_Prv_xRxSigCfg_tst;
# 325 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef const Com_Prv_xRxSigCfg_tst * Com_RxSigCfg_tpcst;
# 802 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    uint8 * buffPtr_pu8;

    const Com_TransModeInfo_tst * tMConstPtr_pcst;


    boolean (*callOut_pfct) (PduIdType id, PduInfoType * ptr);
# 834 "bsw\\Com\\src\\Com_Prv_Types.h"
    PduLengthType size_uo;
# 845 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint16 minDelayTime_u16;

    uint16 numOfSig_u16;




    PduIdType idPduRSrcPdu_uo;

    Com_TxIntSignalId_tuo idTxSig_uo;
# 885 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint16 txIPduFields_u16;



    Com_MainFunc_tuo idMainFunc_uo;
    uint8 paddingByte_u8;

} Com_Prv_xTxIpduInfoCfg_tst;
# 901 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef const Com_Prv_xTxIpduInfoCfg_tst * Com_TxIpduCfg_tpcst;
# 1040 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    uint8 * buffPtr_pau8;
# 1053 "bsw\\Com\\src\\Com_Prv_Types.h"
    boolean (*callOut_pfct) (PduIdType id, const PduInfoType * ptr);



    void (*timeoutNotification_pfct) (void);



    void (*notification_pfct) (void);






    PduLengthType size_uo;





    uint16 firstTimeout_u16;
    uint16 timeout_u16;

    uint16 numOfSig_u16;



    Com_RxIntSignalId_tuo idRxSig_uo;
# 1096 "bsw\\Com\\src\\Com_Prv_Types.h"
    Com_MainFunc_tuo idMainFunc_uo;
# 1114 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint8 rxIPduFields_u8;

} Com_Prv_xRxIpduInfoCfg_tst;
# 1125 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef const Com_Prv_xRxIpduInfoCfg_tst * Com_RxIpduCfg_tpcst;
# 1138 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    uint16 idFirstIpdu_u16;
    uint16 numOfRxPdus_u16;

} Com_Prv_xIpduGrpInfoCfg_tst;
# 1152 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef const Com_Prv_xIpduGrpInfoCfg_tst * Com_IpduGrpCfg_tpcst;
# 1163 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    uint8 txSigRAMFields_u8;

} Com_TxSignalFlagType_tst;







typedef Com_TxSignalFlagType_tst * Com_TxSigRam_tpst;
# 1214 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    uint8 rxSigRAMFields_u8;

} Com_RxSignalFlagType_tst;
# 1227 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef Com_RxSignalFlagType_tst * Com_RxSigRam_tpst;
# 1316 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    Com_TMConstPtr_tpcst currentTxModePtr_pcst;






    uint16 cntrMinDelayTime_u16;
    uint16 cntrTimePeriod_u16;



    uint16 cntrRepPeriod_u16;
# 1365 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint16 txFlags_u16;
    uint8 cntrRepetitions_u8;
# 1378 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint8 transMode_u8;

} Com_TxIpduRamData_tst;
# 1389 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef Com_TxIpduRamData_tst * Com_TxIpduRam_tpst;
# 1412 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    PduLengthType rxIPduLength_uo;




    uint16 cntrRxTimeout_u16;
# 1446 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint8 rxFlags_u8;

} Com_RxIpduRamData_tst;
# 1457 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef Com_RxIpduRamData_tst * Com_RxIpduRam_tpst;

typedef struct
{
    PduIdType * rxGwQueuePtr_puo;
    Com_RxGwQueueIndex_tuo rxGwQueueWrite_uo;
    Com_RxGwQueueIndex_tuo rxGwQueueRead_uo;
} Com_RxGwQueueRAMType_tst;


typedef Com_RxGwQueueRAMType_tst * Com_RxGwQueueRam_tpst;

typedef struct
{
    Com_SignalIdType idxGwMapSigDestIdArray_u16;
    uint8 destCount_u8;
} Com_Prv_xGwMapSigCfg_tst;


typedef const Com_Prv_xGwMapSigCfg_tst * Com_GwMapSigCfg_tpcst;

typedef struct
{
    Com_SignalIdType gwMapDestId_u16;
} Com_Prv_xGwMapSigIdCfg_tst;

typedef const Com_Prv_xGwMapSigIdCfg_tst * Com_GwMapSigIdCfg_tpcst;
# 1514 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    Com_IpduId_tuo idFirstIpdu_uo;
    Com_NumOfIpdus_tuo numOfIpdus_uo;
    Com_TimeBase_tuo timeBaseInMs_uo;
} Com_MainFunctionCfgType_tst;





typedef struct
{
    uint8 * sigType_pau8;





    uint16 * sigType_pau16;

    uint32 * sigType_pau32;
# 1588 "bsw\\Com\\src\\Com_Prv_Types.h"
} Com_Prv_xRxRamBuf_tst;
# 1620 "bsw\\Com\\src\\Com_Prv_Types.h"
typedef struct
{
    const Com_Prv_xTxSigCfg_tst * txSigCfg_pcast;

    const Com_SignalIdType * txSignalMappingCfg_pcau16;

    const Com_Prv_xRxSigCfg_tst * rxSigCfg_pcast;

    const Com_SignalIdType * rxSignalMappingCfg_pcau16;
# 1654 "bsw\\Com\\src\\Com_Prv_Types.h"
    const Com_Prv_xTxIpduInfoCfg_tst * txIpduCfg_pcast;

    const PduIdType * txIpduMappingCfg_pcauo;

    const Com_Prv_xRxIpduInfoCfg_tst * rxIpduCfg_pcast;

    const PduIdType * rxIpduMappingCfg_pcauo;

    const Com_Prv_xIpduGrpInfoCfg_tst * ipduGrpCfg_pcast;

    const uint16 * ipduGrpMappingCfg_pcau16;
# 1678 "bsw\\Com\\src\\Com_Prv_Types.h"
    const Com_IpduId_tuo * ipduGrpIpduIdCfg_pcauo;
# 1704 "bsw\\Com\\src\\Com_Prv_Types.h"
    const Com_MainFunctionCfgType_tst * mainFunctionCfg_pcast;
# 1718 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint16 numOfIpduGroup_u16;


    Com_IpduId_tuo numOfIpdusInLastIpduGrp_uo;

    Com_SignalIdType numOfTxSignals_u16;

    Com_SignalIdType numOfRxSignals_u16;

    Com_SignalGroupIdType numOfTxSignalGroup_u16;

    Com_SignalGroupIdType numOfRxSignalGroup_u16;

    Com_GrpSignalId_tuo numOfTxGroupSignal_uo;

    Com_GrpSignalId_tuo numOfRxGroupSignal_uo;

    Com_IpduId_tuo numOfTxIpdu_uo;

    Com_IpduId_tuo numOfRxIpdu_uo;

    Com_IpduId_tuo numOfGwSrcIpdu_uo;

    Com_GrpSignalId_tuo numOfGrpSigNoGw_uo;

    Com_SignalIdType numOfTxSignalsAndGrpSignals_u16;

    Com_SignalIdType numOfRxSignalsAndGrpSignals_u16;





} Com_ConfigData_tst;


typedef struct
{




    const Com_Prv_xRxRamBuf_tst * rxRamBufCfg_pcast;
# 1787 "bsw\\Com\\src\\Com_Prv_Types.h"
    Com_TxIpduRamData_tst * txIpduRam_past;

    Com_RxIpduRamData_tst * rxIpduRam_past;

    Com_TxSignalFlagType_tst * txSignalFlag_past;

    Com_RxSignalFlagType_tst * rxSignalFlag_past;

    uint8 * ipduCounter_pau8;


    uint8 * ipduCounter_DM_pau8;
# 1831 "bsw\\Com\\src\\Com_Prv_Types.h"
    uint16 numOfRxIpdusInAllVariants_u16;
    uint16 numOfRxSignalsInAllVariants_u16;





    uint16 numOfTxIpdusInAllVariants_u16;
    uint16 numOfTxSignalsInAllVariants_u16;





    uint16 numOfRxSig_GrpSigInAllVariants_u16;
    uint16 numOfTxSig_GrpSigInAllVariants_u16;
    uint16 numOfIPduGroupsInAllVariants_u16;

} Com_CommonData_tst;
# 15 "bsw\\Com\\src\\Com_Prv.h" 2
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
# 16 "bsw\\Com\\src\\Com_Prv.h" 2


# 1 ".\\output\\inc/Com_PBcfg_Common.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 1
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
# 107 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
extern Com_RxIpduRamData_tst Com_RxIpduRam_ast[];


extern Com_TxIpduRamData_tst Com_TxIpduRam_ast[];


extern Com_TxSignalFlagType_tst Com_TxSignalFlag_ast[];


extern Com_RxSignalFlagType_tst Com_RxSignalFlag_ast[];


extern PduIdType Com_RxGwQueue_auo[];


extern Com_RxGwQueueRAMType_tst Com_RxGwQueue_st;
# 136 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 82 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 137 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
# 154 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 155 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2


extern uint8 Com_IpduCounter_au8[];



extern uint8 Com_IpduCounter_DM_au8[];




# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 167 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 176 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 181 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 185 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 190 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 194 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 199 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 203 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 208 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 212 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 217 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 221 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 226 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 230 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 235 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 239 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 244 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 253 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 257 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 262 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 266 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 271 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 275 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 280 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 284 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 289 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 293 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 298 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 307 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 311 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 316 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 320 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 325 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 329 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 334 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 338 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 343 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 347 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 352 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 356 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 361 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 365 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 370 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 374 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 379 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 383 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 388 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 392 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 397 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 401 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 406 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 410 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 415 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 419 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 424 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 428 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 433 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 437 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 442 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 446 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 451 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 455 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 460 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 464 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 469 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 473 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 478 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 482 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 487 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 491 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 496 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 500 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 505 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 509 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 514 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 518 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 523 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 527 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 532 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 536 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_21Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 541 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 545 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_22Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 550 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 554 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_23Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 559 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 563 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_24Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 568 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 572 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_25Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 577 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 581 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_25_00Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 586 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 590 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_25_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 595 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 599 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_26Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 604 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 608 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 613 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 617 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 622 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 626 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 631 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 635 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 640 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 644 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 649 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 653 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 658 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 662 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 667 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 671 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 676 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 680 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 685 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 689 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 694 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 698 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 703 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 707 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 712 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 716 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 721 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 725 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 730 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 734 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 739 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 743 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 748 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 752 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 757 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 761 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 766 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 770 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 775 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 779 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 784 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 788 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 793 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 797 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 802 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 806 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 811 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 815 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 820 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 824 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 829 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 833 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 838 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 842 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 847 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 851 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 856 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 860 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 865 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 869 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 874 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 878 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 883 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 887 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 892 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 896 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 901 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 905 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 910 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 914 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 919 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 923 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 928 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 932 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 937 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 941 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 946 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 950 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 955 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 959 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 964 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 968 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_21Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 973 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 977 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_22Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 982 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 986 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_23Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 991 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 995 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_24Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1000 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1004 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_25Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1009 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1013 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_26Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1018 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1022 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1027 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1031 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1036 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1040 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1045 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1049 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1054 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1058 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1063 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1067 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1072 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1076 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1081 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1085 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1090 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1094 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1099 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1103 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1108 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1112 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1117 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1121 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1126 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1130 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1135 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1139 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1144 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1148 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1153 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1157 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1162 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1166 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1171 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1175 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1180 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1184 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1189 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1193 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1198 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1202 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1207 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1211 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1216 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1220 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1225 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1229 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1234 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1238 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1243 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1247 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1252 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1256 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1261 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1265 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1270 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1274 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1279 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1283 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1288 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1292 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1297 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1301 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1306 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1310 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1315 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1319 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1324 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1328 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1333 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1337 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1342 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1346 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1351 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1355 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1360 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1364 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1369 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1373 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1378 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1382 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_21Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1387 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1391 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_22Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1396 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1400 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_23Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1405 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1409 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_24Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1414 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1418 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_25Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1423 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1427 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_26Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1432 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2




# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1437 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1442 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1446 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1451 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1455 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1460 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1464 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1469 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1473 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1478 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1482 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1487 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1491 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1496 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1500 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1505 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1509 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1514 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1518 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1523 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1527 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1532 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1536 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1541 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1545 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1550 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1554 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1559 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1563 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1568 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1572 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1577 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1581 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1586 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1590 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1595 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1599 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1604 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1608 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1613 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1617 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_21Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1622 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1626 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_22Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1631 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1635 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_23Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1640 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1644 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_24Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1649 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1653 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_25Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1658 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1662 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_26Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1667 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1671 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_27Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1676 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1680 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_28Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1685 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1689 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_29Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1694 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1698 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_30Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1703 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1707 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_31Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1712 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1716 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_32Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1721 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1725 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_33Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1730 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1734 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_34Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1739 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1743 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_35Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1748 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1752 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_36Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1757 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1761 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_37Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1766 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1770 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_38Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1775 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1779 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_39Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1784 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1788 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_40Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1793 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1797 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1802 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1806 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1811 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1815 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1820 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1824 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1829 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1833 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1838 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1842 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1847 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1851 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1856 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1860 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1865 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1869 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1874 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1878 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1883 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1887 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1892 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1896 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1901 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1905 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1910 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1914 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1919 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1923 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1928 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1932 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1937 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1941 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1946 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1950 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1955 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1959 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1964 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1968 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1973 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1977 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_21Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1982 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1986 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_22Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1991 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 1995 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_23Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2000 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2004 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_24Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2009 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2013 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_25Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2018 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2022 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_26Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2027 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2031 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_27Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2036 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2040 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_28Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2045 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2049 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_29Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2054 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2058 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_30Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2063 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2067 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_31Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2072 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2076 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_32Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2081 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2085 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_33Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2090 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2094 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_34Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2099 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2103 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_35Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2108 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2112 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_36Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2117 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2121 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_37Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2126 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2130 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_38Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2135 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2139 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_39Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2144 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2148 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_40Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2153 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2157 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_01Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2162 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2166 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_02Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2171 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2175 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_03Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2180 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2184 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_04Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2189 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2193 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_05Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2198 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2202 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_06Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2207 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2211 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_07Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2216 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2220 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_08Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2225 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2229 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_09Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2234 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2238 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_10Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2243 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2247 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_11Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2252 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2256 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_12Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2261 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2265 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_13Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2270 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2274 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_14Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2279 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2283 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_15Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2288 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2292 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_16Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2297 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2301 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_17Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2306 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2310 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_18Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2315 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2319 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_19Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2324 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2328 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_20Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2333 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2337 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_21Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2342 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2346 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_22Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2351 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2355 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_23Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2360 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2364 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_24Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2369 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2373 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_25Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2378 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2382 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_26Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2387 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2391 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_27Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2396 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2400 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_28Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2405 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2409 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_29Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2414 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2418 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_30Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2423 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2427 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_31Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2432 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2436 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_32Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2441 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2445 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_33Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2450 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2454 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_34Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2459 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2463 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_35Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2468 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2472 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_36Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2477 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2481 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_37Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2486 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2490 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_38Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2495 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2499 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_39Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2504 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2508 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_40Byte[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2513 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
# 2522 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2523 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
extern uint8 Com_SigType_au8[];



# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2528 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
# 2540 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 582 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 583 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2541 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2







extern const Com_Prv_xRxRamBuf_tst Com_Prv_xRxRamBuf_acst[];
# 2559 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 588 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 589 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 2560 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h" 2
# 2 ".\\output\\inc/Com_PBcfg_Common.h" 2
# 19 "bsw\\Com\\src\\Com_Prv.h" 2
# 1 ".\\output\\inc/Com_PBcfg_Variant.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h" 1
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 582 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 583 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h" 2
# 103 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
extern const Com_Prv_xTxSigCfg_tst Com_Prv_xTxSigCfg_acst[];


extern const Com_Prv_xRxSigCfg_tst Com_Prv_xRxSigCfg_acst[];


extern const Com_Prv_xTxIpduInfoCfg_tst Com_Prv_xTxIpduCfg_acst[];


extern const Com_Prv_xRxIpduInfoCfg_tst Com_Prv_xRxIpduCfg_acst[];
# 127 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
extern const Com_Prv_xIpduGrpInfoCfg_tst Com_Prv_xIpduGrpCfg_acst[];







extern const Com_IpduId_tuo Com_Prv_xIPduGrp_IpduRefCfg_acuo[];
# 177 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
extern const Com_MainFunctionCfgType_tst Com_MainFunctionCfg_acst[];




# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 588 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 589 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 183 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h" 2
# 2 ".\\output\\inc/Com_PBcfg_Variant.h" 2
# 20 "bsw\\Com\\src\\Com_Prv.h" 2



# 1 ".\\output\\inc/Det.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 1
# 27 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 2
# 1 ".\\output\\inc/Rte_Det_Type.h" 1
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h" 1
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
# 24 "bsw\\Com\\src\\Com_Prv.h" 2
# 36 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Bfx.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Types.h" 1






typedef unsigned long long Bfx_uint64;
# 18 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 1 ".\\output\\inc/Bfx_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h" 1
# 151 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h"
# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 31 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 32 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h" 2
    extern boolean Bfx_GetBit_u32u8_u8(uint32 Data, uint8 BitPn);

# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 36 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 37 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 155 ".\\output\\inc/..\\..\\bsw\\Bfx\\Bfx_Cfg.h" 2
# 2 ".\\output\\inc/Bfx_Cfg.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h" 1
# 103 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u16u8_Inl(uint16* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBit_u32u8_Inl(uint32* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBit_u8u8_Inl(uint8* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_ClrBitMask_u16u16_Inl(uint16* Data, uint16 Mask);
static __inline__ void Bfx_Prv_ClrBitMask_u32u32_Inl(uint32* Data, uint32 Mask);
static __inline__ void Bfx_Prv_ClrBitMask_u8u8_Inl(uint8* Data, uint8 Mask);
static __inline__ void Bfx_Prv_ClrBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_CopyBit_u16u8u16u8_Inl(uint16* DestinationData, uint8 DestinationPosition, uint16 SourceData,
                                                                                                 uint8 SourcePosition);
static __inline__ void Bfx_Prv_CopyBit_u32u8u32u8_Inl(uint32* DestinationData, uint8 DestinationPosition, uint32 SourceData,
                                                                                                 uint8 SourcePosition);
static __inline__ void Bfx_Prv_CopyBit_u8u8u8u8_Inl(uint8* DestinationData, uint8 DestinationPosition, uint8 SourceData,
                                                                                                 uint8 SourcePosition);
static __inline__ void Bfx_Prv_CopyBit_u64u8u64u8_Inl(Bfx_uint64* DestinationData, uint8 DestinationPosition,
                                                                          Bfx_uint64 SourceData, uint8 SourcePosition);
static __inline__ boolean Bfx_Prv_GetBit_u16u8_u8_Inl(uint16 Data, uint8 BitPn);
static __inline__ boolean Bfx_Prv_GetBit_u32u8_u8_Inl(uint32 Data, uint8 BitPn);
static __inline__ boolean Bfx_Prv_GetBit_u8u8_u8_Inl(uint8 Data, uint8 BitPn);
static __inline__ boolean Bfx_Prv_GetBit_u64u8_u8_Inl(Bfx_uint64 Data, uint8 BitPn);
static __inline__ uint16 Bfx_Prv_GetBits_u16u8u8_u16_Inl(uint16 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ uint32 Bfx_Prv_GetBits_u32u8u8_u32_Inl(uint32 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ uint8 Bfx_Prv_GetBits_u8u8u8_u8_Inl(uint8 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ Bfx_uint64 Bfx_Prv_GetBits_u64u8u8_u64_Inl(Bfx_uint64 Data, uint8 BitStartPn, uint8 BitLn);
static __inline__ void Bfx_Prv_PutBit_u16u8u8_Inl(uint16* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBit_u32u8u8_Inl(uint32* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBit_u8u8u8_Inl(uint8* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBit_u64u8u8_Inl(Bfx_uint64* Data, uint8 BitPn, boolean Status);
static __inline__ void Bfx_Prv_PutBits_u16u8u8u16_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint16 Pattern);
static __inline__ void Bfx_Prv_PutBits_u32u8u8u32_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint32 Pattern);
static __inline__ void Bfx_Prv_PutBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Pattern);
static __inline__ void Bfx_Prv_PutBits_u64u8u8u64_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, Bfx_uint64 Pattern);
static __inline__ void Bfx_Prv_PutBitsMask_u16u16u16_Inl(uint16* Data, uint16 Pattern, uint16 Mask);
static __inline__ void Bfx_Prv_PutBitsMask_u32u32u32_Inl(uint32* Data, uint32 Pattern, uint32 Mask);
static __inline__ void Bfx_Prv_PutBitsMask_u8u8u8_Inl(uint8* Data, uint8 Pattern, uint8 Mask);
static __inline__ void Bfx_Prv_PutBitsMask_u64u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Pattern, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_RotBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_RotBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_SetBit_u16u8_Inl(uint16* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBit_u32u8_Inl(uint32* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBit_u8u8_Inl(uint8* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn);
static __inline__ void Bfx_Prv_SetBitMask_u16u16_Inl(uint16* Data, uint16 Mask);
static __inline__ void Bfx_Prv_SetBitMask_u32u32_Inl(uint32* Data, uint32 Mask);
static __inline__ void Bfx_Prv_SetBitMask_u8u8_Inl(uint8* Data, uint8 Mask);
static __inline__ void Bfx_Prv_SetBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_SetBits_u16u8u8u8_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_SetBits_u32u8u8u8_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_SetBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_SetBits_u64u8u8u8_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status);
static __inline__ void Bfx_Prv_ShiftBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ShiftBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt);
static __inline__ void Bfx_Prv_ToggleBitMask_u16u16_Inl(uint16* Data, uint16 Mask);
static __inline__ void Bfx_Prv_ToggleBitMask_u32u32_Inl(uint32* Data, uint32 Mask);
static __inline__ void Bfx_Prv_ToggleBitMask_u8u8_Inl(uint8* Data, uint8 Mask);
static __inline__ void Bfx_Prv_ToggleBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask);
static __inline__ void Bfx_Prv_ToggleBits_u16_Inl(uint16* Data);
static __inline__ void Bfx_Prv_ToggleBits_u32_Inl(uint32* Data);
static __inline__ void Bfx_Prv_ToggleBits_u8_Inl(uint8* Data);
static __inline__ void Bfx_Prv_ToggleBits_u64_Inl(Bfx_uint64* Data);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u16u16_u8_Inl(uint16 Data, uint16 Mask);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u32u32_u8_Inl(uint32 Data, uint32 Mask);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u8u8_u8_Inl(uint8 Data, uint8 Mask);
static __inline__ boolean Bfx_Prv_TstBitLnMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u16u16_u8_Inl(uint16 Data, uint16 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u32u32_u8_Inl(uint32 Data, uint32 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u8u8_u8_Inl(uint8 Data, uint8 Mask);
static __inline__ boolean Bfx_Prv_TstBitMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask);
static __inline__ boolean Bfx_Prv_TstParityEven_u16_u8_Inl(uint16 Data);
static __inline__ boolean Bfx_Prv_TstParityEven_u32_u8_Inl(uint32 Data);
static __inline__ boolean Bfx_Prv_TstParityEven_u8_u8_Inl(uint8 Data);
static __inline__ boolean Bfx_Prv_TstParityEven_u64_u8_Inl(Bfx_uint64 Data);
# 207 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u16u8_Inl(uint16* Data, uint8 BitPn)
{

    *Data &= ((uint16)(~(uint16)(1uL << BitPn)));
}
# 228 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u32u8_Inl(uint32* Data, uint8 BitPn)
{

    *Data &= ((uint32)(~(1uL << BitPn)));
}
# 249 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u8u8_Inl(uint8* Data, uint8 BitPn)
{

    *Data &= ((uint8)(~(uint8)(1u << BitPn)));
}
# 270 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn)
{

    *Data &= ((Bfx_uint64)(~(1uLL << BitPn)));
}
# 290 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u16u16_Inl(uint16* Data, uint16 Mask)
{
    *Data &= ((uint16)(~Mask));
}
# 309 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u32u32_Inl(uint32* Data, uint32 Mask)
{
    *Data &= ((uint32)(~Mask));
}
# 328 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u8u8_Inl(uint8* Data, uint8 Mask)
{
    *Data &= ((uint8)(~Mask));
}
# 347 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ClrBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask)
{
    *Data &= ((Bfx_uint64)(~Mask));
}
# 370 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u16u8u16u8_Inl(uint16* DestinationData, uint8 DestinationPosition, uint16 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u16u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u16u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 394 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u32u8u32u8_Inl(uint32* DestinationData, uint8 DestinationPosition, uint32 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u32u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u32u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 418 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u8u8u8u8_Inl(uint8* DestinationData, uint8 DestinationPosition, uint8 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u8u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u8u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 441 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_CopyBit_u64u8u64u8_Inl(Bfx_uint64* DestinationData, uint8 DestinationPosition,
                                                                           Bfx_uint64 SourceData, uint8 SourcePosition)
{
    Bfx_Prv_PutBit_u64u8u8_Inl(DestinationData, DestinationPosition, Bfx_Prv_GetBit_u64u8_u8_Inl(SourceData,
                                                                                                      SourcePosition));
}
# 465 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u16u8_u8_Inl(uint16 Data, uint8 BitPn)
{
    return ((((Data) & ((uint16) (1uL << BitPn))) != 0u));
}
# 487 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u32u8_u8_Inl(uint32 Data, uint8 BitPn)
{
    return (((Data) & ((uint32)(1uL << BitPn))) != 0uL);
}
# 509 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u8u8_u8_Inl(uint8 Data, uint8 BitPn)
{
    return (((Data) & ((uint8)(1uL << BitPn))) != 0u);
}
# 531 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_GetBit_u64u8_u8_Inl(Bfx_uint64 Data, uint8 BitPn)
{
    return (((Data) & ((Bfx_uint64)(1uLL << BitPn))) != 0uLL);
}
# 553 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ uint16 Bfx_Prv_GetBits_u16u8u8_u16_Inl(uint16 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((uint16)((Data >> BitStartPn) & ((0xffffu) >> (16uL - BitLn))));
}
# 575 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ uint32 Bfx_Prv_GetBits_u32u8u8_u32_Inl(uint32 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((Data >> BitStartPn) & ((0xffffffffuL) >> (32uL - BitLn)));
}
# 597 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ uint8 Bfx_Prv_GetBits_u8u8u8_u8_Inl(uint8 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((uint8)((Data >> BitStartPn) & ((0xffu) >> (8uL - BitLn))));
}
# 618 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ Bfx_uint64 Bfx_Prv_GetBits_u64u8u8_u64_Inl(Bfx_uint64 Data, uint8 BitStartPn, uint8 BitLn)
{
    return ((Data >> BitStartPn) & ((0xFFFFFFFFFFFFFFFFuLL) >> (64uLL - BitLn)));
}
# 641 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u16u8u8_Inl(uint16* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((uint16)~(1uL << BitPn))) | ((uint16)((uint16)tmp_u8 << BitPn)));
}
# 667 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u32u8u8_Inl(uint32* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((uint32)~(1uL << BitPn))) | ((uint32)((uint32)tmp_u8 << BitPn)));
}
# 693 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u8u8u8_Inl(uint8* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((uint8)~(1uL <<BitPn))) | ((uint8)(tmp_u8 << BitPn)));
}
# 719 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBit_u64u8u8_Inl(Bfx_uint64* Data, uint8 BitPn, boolean Status)
{
    uint8 tmp_u8;
    tmp_u8 = (Status)? 1u : 0u;

    *Data = ((*Data & ((Bfx_uint64)~(1uLL << BitPn))) | ((Bfx_uint64)((Bfx_uint64)tmp_u8 << BitPn)));
}
# 747 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u16u8u8u16_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint16 Pattern)
{

    *Data = (((uint16) (~(uint16) (((0xffffu) >> (16uL - BitLn)) << BitStartPn))) & *Data) |
                                                (uint16)((((0xffffu) >> (16uL - BitLn)) & Pattern) << BitStartPn);
}
# 773 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u32u8u8u32_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint32 Pattern)
{

    *Data = (((uint32) (~(uint32)(((0xffffffffuL) >> (32uL - BitLn)) << BitStartPn))) & *Data) |
                                                (uint32)((((0xffffffffuL) >> (32uL - BitLn)) & Pattern) << BitStartPn);
}
# 799 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Pattern)
{

    *Data = (((uint8) (~(uint8)(((0xffu) >> (8uL - BitLn)) << BitStartPn))) & *Data) | (uint8)((((0xffu)
                                                                            >> (8uL - BitLn)) & Pattern) << BitStartPn);
}
# 825 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBits_u64u8u8u64_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, Bfx_uint64 Pattern)
{

    *Data = (((Bfx_uint64) (~(Bfx_uint64)(((0xFFFFFFFFFFFFFFFFuLL) >> (64uLL - BitLn)) << BitStartPn))) & *Data) |
                                           (Bfx_uint64)((((0xFFFFFFFFFFFFFFFFuLL) >> (64uLL - BitLn)) & Pattern) << BitStartPn);
}
# 848 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u16u16u16_Inl(uint16* Data, uint16 Pattern, uint16 Mask)
{
    *Data = (*Data & ((uint16)~(Mask)) ) | (Pattern & Mask);
}
# 869 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u32u32u32_Inl(uint32* Data, uint32 Pattern, uint32 Mask)
{
    *Data = (*Data & (~(Mask)) ) | (Pattern & Mask);
}
# 890 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u8u8u8_Inl(uint8* Data, uint8 Pattern, uint8 Mask)
{
    *Data = (*Data & ((uint8)~(Mask)) ) | (Pattern & Mask);
}
# 911 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_PutBitsMask_u64u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Pattern, Bfx_uint64 Mask)
{
    *Data = (*Data & (~(Mask)) ) | (Pattern & Mask);
}
# 931 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data = ((uint16) (*Data << ShiftCnt) | (uint16) (*Data >> (16u - ShiftCnt)));
}
# 951 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data = (*Data << ShiftCnt) | (*Data >> (32u - ShiftCnt));
}
# 971 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data = ((uint8) (*Data << ShiftCnt) | (uint8) (*Data >> (8u - ShiftCnt)));
}
# 991 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data = (*Data << ShiftCnt) | (*Data >> (64u - ShiftCnt));
}
# 1011 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data = ((uint16) (*Data >> ShiftCnt) | (uint16) (*Data << (16u - ShiftCnt)));
}
# 1031 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data = (*Data >> ShiftCnt) | (*Data << (32u - ShiftCnt));
}
# 1051 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data = ((uint8) (*Data >> ShiftCnt) | (uint8) (*Data << (8u - ShiftCnt)));
}
# 1071 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_RotBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data = (*Data >> ShiftCnt) | (*Data << (64u - ShiftCnt));
}
# 1090 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u16u8_Inl(uint16* Data, uint8 BitPn)
{
    *Data |= ((uint16) (1uL << BitPn));
}
# 1110 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u32u8_Inl(uint32* Data, uint8 BitPn)
{
    *Data |= ((uint32)(1uL << BitPn));
}
# 1129 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u8u8_Inl(uint8* Data, uint8 BitPn)
{
    *Data |= ((uint8)(1uL << BitPn));
}
# 1149 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBit_u64u8_Inl(Bfx_uint64* Data, uint8 BitPn)
{
    *Data |= ((Bfx_uint64)(1uLL << BitPn));
}
# 1168 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u16u16_Inl(uint16* Data, uint16 Mask)
{
    *Data |= Mask;
}
# 1187 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u32u32_Inl(uint32* Data, uint32 Mask)
{
    *Data |= Mask;
}
# 1206 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u8u8_Inl(uint8* Data, uint8 Mask)
{
    *Data |= Mask;
}
# 1225 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask)
{
    *Data |= Mask;
}
# 1246 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u16u8u8u8_Inl(uint16* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    uint16 mask_u16;



    mask_u16 = (uint16) ((0xffffu) >> BitStartPn);
    mask_u16 = (uint16) (mask_u16 << (16u - BitLn));
    mask_u16 = (uint16) (mask_u16 >> (16u - BitStartPn - BitLn));


    *Data |= mask_u16;


    if (Status == 0u)
    {
        *Data ^= mask_u16;
    }
}
# 1282 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u32u8u8u8_Inl(uint32* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    uint32 mask_u32;



    mask_u32 = (uint32) ((0xffffffffuL) >> BitStartPn);
    mask_u32 = (uint32) (mask_u32 << (32u - BitLn));
    mask_u32 = (uint32) (mask_u32 >> (32u - BitStartPn - BitLn));


    *Data |= mask_u32;


    if (Status == 0u)
    {
        *Data ^= mask_u32;
    }
}
# 1319 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u8u8u8u8_Inl(uint8* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    uint8 mask_u8;



    mask_u8 = (uint8) ((0xffu) >> BitStartPn);
    mask_u8 = (uint8) (mask_u8 << (8u - BitLn));
    mask_u8 = (uint8) (mask_u8 >> (8u - BitStartPn - BitLn));


    *Data |= mask_u8;


    if (Status == 0u)
    {
        *Data ^= mask_u8;
    }
}
# 1355 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_SetBits_u64u8u8u8_Inl(Bfx_uint64* Data, uint8 BitStartPn, uint8 BitLn, uint8 Status)
{
    Bfx_uint64 mask_u64;



    mask_u64 = (Bfx_uint64) ((0xFFFFFFFFFFFFFFFFuLL) >> BitStartPn);
    mask_u64 = (Bfx_uint64) (mask_u64 << (64u - BitLn));
    mask_u64 = (Bfx_uint64) (mask_u64 >> (64u - BitStartPn - BitLn));


    *Data |= mask_u64;


    if (Status == 0u)
    {
        *Data ^= mask_u64;
    }
}
# 1390 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1409 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1428 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1447 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitLt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data <<= ShiftCnt;
}
# 1466 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u16u8_Inl(uint16* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1485 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u32u8_Inl(uint32* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1504 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u8u8_Inl(uint8* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1523 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ShiftBitRt_u64u8_Inl(Bfx_uint64* Data, uint8 ShiftCnt)
{
    *Data >>= ShiftCnt;
}
# 1542 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u16u16_Inl(uint16* Data, uint16 Mask)
{
    *Data ^= Mask;
}
# 1561 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u32u32_Inl(uint32* Data, uint32 Mask)
{
    *Data ^= Mask;
}
# 1579 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u8u8_Inl(uint8* Data, uint8 Mask)
{
    *Data ^= Mask;
}
# 1598 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBitMask_u64u64_Inl(Bfx_uint64* Data, Bfx_uint64 Mask)
{
    *Data ^= Mask;
}
# 1616 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u16_Inl(uint16* Data)
{
    *Data ^= 0xFFFFu;
}
# 1634 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u32_Inl(uint32* Data)
{
    *Data ^= 0xFFFFFFFFuL;
}
# 1652 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u8_Inl(uint8* Data)
{
    *Data ^= 0xFFu;
}
# 1670 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ void Bfx_Prv_ToggleBits_u64_Inl(Bfx_uint64* Data)
{
    *Data ^= 0xFFFFFFFFFFFFFFFFuLL;
}
# 1691 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u16u16_u8_Inl(uint16 Data, uint16 Mask)
{
    return((Data & Mask) != 0uL);
}
# 1712 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u32u32_u8_Inl(uint32 Data, uint32 Mask)
{
    return ((Data & Mask) != 0uL);
}
# 1733 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u8u8_u8_Inl(uint8 Data, uint8 Mask)
{
    return ((Data & Mask) != 0uL);
}
# 1754 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitLnMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask)
{
    return ((Data & Mask) != 0uLL);
}
# 1775 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u16u16_u8_Inl(uint16 Data, uint16 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1796 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u32u32_u8_Inl(uint32 Data, uint32 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1817 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u8u8_u8_Inl(uint8 Data, uint8 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1838 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstBitMask_u64u64_u8_Inl(Bfx_uint64 Data, Bfx_uint64 Mask)
{
    return ((Data & Mask) == (Mask));
}
# 1856 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
 static __inline__ boolean Bfx_Prv_TstParityEven_u16_u8_Inl(uint16 Data)
{
     uint16 tmp0_u16;
     uint16 tmp1_u16;
     boolean res_b;

     tmp0_u16 = Data;

     tmp1_u16 = (tmp0_u16 >> 8U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp1_u16 = (tmp0_u16 >> 4U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp1_u16 = (tmp0_u16 >> 2U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp1_u16 = (tmp0_u16 >> 1U);
     tmp0_u16 = (tmp0_u16 ^ tmp1_u16);

     tmp0_u16 = (tmp0_u16 & 0x1U);
     res_b = (boolean)((tmp0_u16 == 0u) ? (1 != 0) : (0 != 0));

     return (res_b);
}
# 1895 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstParityEven_u32_u8_Inl(uint32 Data)
{
    uint32 tmp0_u32;
    uint32 tmp1_u32;
    boolean res_b;

    tmp0_u32 = Data;

    tmp1_u32 = (tmp0_u32 >> 16UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 8UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 4UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 2UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp1_u32 = (tmp0_u32 >> 1UL);
    tmp0_u32 = (tmp0_u32 ^ tmp1_u32);

    tmp0_u32 = (tmp0_u32 & 0x1UL);
    res_b = (boolean)((tmp0_u32 == 0uL) ? (1 != 0) : (0 != 0));

    return (res_b);
}
# 1937 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstParityEven_u8_u8_Inl(uint8 Data)
{
    uint8 tmp0_u8;
    uint8 tmp1_u8;
    boolean res_b;

    tmp0_u8 = Data;

    tmp1_u8 = (tmp0_u8 >> 4U);
    tmp0_u8 = (tmp0_u8 ^ tmp1_u8);

    tmp1_u8 = (tmp0_u8 >> 2U);
    tmp0_u8 = (tmp0_u8 ^ tmp1_u8);

    tmp1_u8 = (tmp0_u8 >> 1U);
    tmp0_u8 = (tmp0_u8 ^ tmp1_u8);

    tmp0_u8 = (tmp0_u8 & 0x1U);
    res_b = (boolean)((tmp0_u8 == 0u) ? (1 != 0) : (0 != 0));

    return (res_b);
}
# 1973 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
static __inline__ boolean Bfx_Prv_TstParityEven_u64_u8_Inl(Bfx_uint64 Data)
{
        Bfx_uint64 tmp0_u64;
        Bfx_uint64 tmp1_u64;
        boolean res_b;

        tmp0_u64 = Data;

        tmp1_u64 = (tmp0_u64 >> 32ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 16ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 8ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 4ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 2ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp1_u64 = (tmp0_u64 >> 1ULL);
        tmp0_u64 = (tmp0_u64 ^ tmp1_u64);

        tmp0_u64 = (tmp0_u64 & 0x1ULL);
        res_b = (boolean)((tmp0_u64 == 0uLL) ? (1 != 0) : (0 != 0));

        return (res_b);
}
# 40 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 79 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h"
# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
    extern void Bfx_GetVersionInfo(Std_VersionInfoType* versionInfo);

# 1 ".\\output\\inc/Bfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Bfx\\integration\\Bfx_MemMap.h" 2
# 2 ".\\output\\inc/Bfx_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx.h" 2
# 2 ".\\output\\inc/Bfx.h" 2
# 37 "bsw\\Com\\src\\Com_Prv.h" 2
# 3286 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3287 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_ByteCopy( uint8 * dest_pu8, const uint8 * src_pcu8, uint32 len_u32 );

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3290 "bsw\\Com\\src\\Com_Prv.h" 2
# 3302 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3303 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_ByteCopyInit(uint8 * dest_pu8, uint32 initVal_u32, uint32 length_u32);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3306 "bsw\\Com\\src\\Com_Prv.h" 2
# 3317 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3318 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_CopyData_Sig_UnsignedType(Com_SignalIdType idSignal_u16, void * signalDataPtr_pv);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3321 "bsw\\Com\\src\\Com_Prv.h" 2
# 3332 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3333 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_CopyData_Sig_SignedType(Com_SignalIdType idSignal_u16, void * signalDataPtr_pv);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3336 "bsw\\Com\\src\\Com_Prv.h" 2
# 3346 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3347 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_ReceiveSignalGroup(Com_SignalGroupIdType idSignalGroup_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3350 "bsw\\Com\\src\\Com_Prv.h" 2
# 3364 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3365 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_PackSignal( uint8 endianess_u8, Com_Bitposition_tuo bitPos_uo, Com_Bitsize_tuo bitSize_uo, Com_SigMax_tuo srcBuf_uo,
                                                                                                   uint8 * destBuf_pu8 );

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3369 "bsw\\Com\\src\\Com_Prv.h" 2
# 3404 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3405 "bsw\\Com\\src\\Com_Prv.h" 2
Com_SigMax_tuo Com_Prv_UnpackSignal(
                            uint8 endianess_u8,
                            Com_Bitposition_tuo bitPos_uo,
                            Com_Bitsize_tuo bitSize_uo,
                            const uint8 * srcBuf_pcu8,
                            boolean isSigned_b
                               );


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3415 "bsw\\Com\\src\\Com_Prv.h" 2
# 3447 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3448 "bsw\\Com\\src\\Com_Prv.h" 2
uint32 Com_Prv_UnpackOpaqueSignal(Com_Bitposition_tuo bitPos_uo, Com_Bitsize_tuo signalLength_uo, const uint8 * srcBuf_pcu8);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3451 "bsw\\Com\\src\\Com_Prv.h" 2
# 3461 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3462 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_SendIpdu(PduIdType idTxPdu_uo, Com_SendIpduInfo_tst sendIpduFlag_st);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3465 "bsw\\Com\\src\\Com_Prv.h" 2
# 3475 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3476 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_TxChangeMode(Com_IpduId_tuo idTxIpdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3479 "bsw\\Com\\src\\Com_Prv.h" 2
# 3528 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3529 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_ProcessSignal(PduIdType idRxPdu_uo, const PduInfoType * pduInfoPtr_pcst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3532 "bsw\\Com\\src\\Com_Prv.h" 2
# 3583 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3584 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_TxIPduStop(Com_IpduId_tuo idIpdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3587 "bsw\\Com\\src\\Com_Prv.h" 2
# 3660 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3661 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_ProcessRxIPdu(PduIdType idRxPdu_uo, const PduInfoType * pduInfoPtr_pcst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3664 "bsw\\Com\\src\\Com_Prv.h" 2
# 3676 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3677 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_ClearUpdateBits(Com_TxIpduCfg_tpcst txIpduConstPtr_pcst);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3680 "bsw\\Com\\src\\Com_Prv.h" 2
# 3691 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3692 "bsw\\Com\\src\\Com_Prv.h" 2
Std_ReturnType Com_Prv_WriteSigGwReceiveQueue(PduIdType idComRxPdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3695 "bsw\\Com\\src\\Com_Prv.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3698 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_PackRxSignalGwBufferData(Com_RxSigCfg_tpcst rxSigConstPtr_pcst, Com_SignalIdType idTxGwDest_u16);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3701 "bsw\\Com\\src\\Com_Prv.h" 2
# 3713 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3714 "bsw\\Com\\src\\Com_Prv.h" 2
void Com_Prv_InternalTxConfirmation(PduIdType idTxPdu_uo);

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3717 "bsw\\Com\\src\\Com_Prv.h" 2


# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3720 "bsw\\Com\\src\\Com_Prv.h" 2





extern uint8 Com_Prv_InternalSendSignal(Com_SignalIdType idSignal_u16, const void * signalDataPtr_pcv );
extern uint8 Com_Prv_InternalSendSignalGroup(Com_SignalGroupIdType idSignalGroup_u16);





extern void Com_Prv_InternalMainFunctionRx(Com_MainFunc_tuo idRxMainFunc_uo );


extern void Com_Prv_InternalMainFunctionTx(Com_MainFunc_tuo idTxMainFunc_uo );


extern boolean Com_Prv_EnableRxDeadlineMonitoring(Com_IpduId_tuo idIpdu_uo);



extern void Com_Prv_InvokeRxNotifications( PduIdType idRxPdu_uo );



extern boolean Com_Prv_IsValidRxIpdu(PduIdType idPdu_uo, const PduInfoType * pduInfoPtr_pcst);
# 3758 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 47 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3759 "bsw\\Com\\src\\Com_Prv.h" 2
# 3782 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3783 "bsw\\Com\\src\\Com_Prv.h" 2
extern Com_StatusType Com_InitStatus_en;

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 82 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3786 "bsw\\Com\\src\\Com_Prv.h" 2
# 3796 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3797 "bsw\\Com\\src\\Com_Prv.h" 2
extern Com_IpduGroupVector Com_IpduGrpVector_au8;

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 82 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3800 "bsw\\Com\\src\\Com_Prv.h" 2
# 3811 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3812 "bsw\\Com\\src\\Com_Prv.h" 2
extern Com_IpduGroupVector Com_IpduGrpVector_DM_au8;

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 82 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3815 "bsw\\Com\\src\\Com_Prv.h" 2
# 3857 "bsw\\Com\\src\\Com_Prv.h"
# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 10 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3858 "bsw\\Com\\src\\Com_Prv.h" 2
extern const Com_TransModeInfo_tst Com_NONE_TransModeInfo_cst;

# 1 ".\\output\\inc/Com_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 15 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_MemMap.h" 2
# 2 ".\\output\\inc/Com_MemMap.h" 2
# 3861 "bsw\\Com\\src\\Com_Prv.h" 2
# 9 "bsw\\Com\\src\\Com_TpRxIndication.c" 2
# 1 "bsw\\Com\\src\\Com_Prv_Inl.h" 1
# 45 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_SetCurrentTxModePtr(
                                    Com_TxIpduRam_tpst txIpduRamPtr_pst,
                                    Com_TxIpduCfg_tpcst txIpduConstPtr_pcst,
                                    boolean modeRequested_b
                                         );






static __inline__ void Com_Prv_UpdateRxSignalBuffer(
                                    Com_RxSigCfg_tpcst rxSigConstPtr_pcst,
                                    Com_SigMax_tuo rxNewValSig_uo,
                                    Com_MainFunc_tuo idRxMainFunc_uo
                                          );
# 80 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_InitializePduBuffWithSignalInitValue(
                                    uint8 * buffPtr_pu8,
                                    Com_SigMax_tuo sigInitVal_uo,
                                    Com_Bitposition_tuo sigBitPos_uo,
                                    Com_Bitsize_tuo sigBitSize_uo,
                                    uint8 sigType_u8,
                                    uint8 sigEndianess_u8
                                             );
# 107 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ Com_SigMax_tuo Com_Prv_GetRxSigInitValue(Com_RxSigCfg_tpcst rxSigConstPtr_pcst);
static __inline__ Com_SigMax_tuo Com_Prv_GetTxSigInitValue(Com_TxSigCfg_tpcst txSigConstPtr_pcst);
# 121 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_CheckRxIPduStatus(PduIdType idIpdu_uo);
static __inline__ boolean Com_Prv_CheckTxIPduStatus(PduIdType idIpdu_uo);
# 157 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_ProceedToSendIpdu(Com_IpduId_tuo idComTxPdu_uo, Com_SendIpduInfo_tst sendIpduFlag_st);
# 183 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_IsValidRxIpduId(PduIdType idPdu_uo);
static __inline__ boolean Com_Prv_IsValidTxIpduId(PduIdType idPdu_uo);

static __inline__ boolean Com_Prv_IsValidRxSignalId(Com_SignalIdType idSignal_u16);
static __inline__ boolean Com_Prv_IsValidTxSignalId(Com_SignalIdType idSignal_u16);
# 199 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_IsValidIpduGroupId(Com_IpduGroupIdType idIpduGroup_u16);
# 248 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_SetCurrentTxModePtr(
                                    Com_TxIpduRam_tpst txIpduRamPtr_pst,
                                    Com_TxIpduCfg_tpcst txIpduConstPtr_pcst,
                                    boolean modeRequested_b
                                         )
{
    uint16 tmsStatus_u16;

    tmsStatus_u16 = Bfx_Prv_GetBits_u16u8u8_u16_Inl((txIpduConstPtr_pcst->txIPduFields_u16),1u,2u);


    txIpduRamPtr_pst->currentTxModePtr_pcst = txIpduConstPtr_pcst->tMConstPtr_pcst;

    if (modeRequested_b == ((0 != 0)))
    {
        if (tmsStatus_u16 == (1u))
        {

            txIpduRamPtr_pst->currentTxModePtr_pcst = &Com_NONE_TransModeInfo_cst;
        }
        else if (tmsStatus_u16 == (0u))
        {

            txIpduRamPtr_pst->currentTxModePtr_pcst++;
        }
        else
        {


        }
    }
    else
    {
        if (tmsStatus_u16 == (2u))
        {
            txIpduRamPtr_pst->currentTxModePtr_pcst = &Com_NONE_TransModeInfo_cst;
        }
        else
        {



        }
    }
}
# 384 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_UpdateRxSignalBuffer(
                                    Com_RxSigCfg_tpcst rxSigConstPtr_pcst,
                                    Com_SigMax_tuo rxNewValSig_uo,
                                    Com_MainFunc_tuo idRxMainFunc_uo
                                          )
{
    uint8 type_u8;

    type_u8 = Bfx_Prv_GetBits_u8u8u8_u8_Inl((rxSigConstPtr_pcst->general_u8),0u,5u);

    switch(type_u8 >> 1u)
    {
    case 0x00u:
    case ((0x06u) >> 1u):
        (Com_Prv_xRxRamBuf_acst[idRxMainFunc_uo].sigType_pau8[rxSigConstPtr_pcst->idxSigBuff_uo]) = (uint8)rxNewValSig_uo;
        break;

    case 0x01u:
        (Com_Prv_xRxRamBuf_acst[idRxMainFunc_uo].sigType_pau16[rxSigConstPtr_pcst->idxSigBuff_uo]) = (uint16)rxNewValSig_uo;
        break;

    case 0x02u:






        (Com_Prv_xRxRamBuf_acst[idRxMainFunc_uo].sigType_pau32[rxSigConstPtr_pcst->idxSigBuff_uo]) = (uint32)rxNewValSig_uo;
        break;







    case 0x04u:
        Com_ByteCopyInit(&(Com_Prv_xRxRamBuf_acst[idRxMainFunc_uo].sigType_pau8[rxSigConstPtr_pcst->idxSigBuff_uo]),
                         (uint32)rxNewValSig_uo,rxSigConstPtr_pcst->bitSize_uo);
        break;
    default:




        break;
    }
}
# 445 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_InitializePduBuffWithSignalInitValue(
                                    uint8 * buffPtr_pu8,
                                    Com_SigMax_tuo sigInitVal_uo,
                                    Com_Bitposition_tuo sigBitPos_uo,
                                    Com_Bitsize_tuo sigBitSize_uo,
                                    uint8 sigType_u8,
                                    uint8 sigEndianess_u8
                                                          )
{
    if ( sigType_u8 != (uint8)(0x08u) )
    {
# 467 "bsw\\Com\\src\\Com_Prv_Inl.h"
        {

            Com_Prv_PackSignal( sigEndianess_u8, sigBitPos_uo, sigBitSize_uo, sigInitVal_uo, buffPtr_pu8 );
        }
    }
    else
    {
        PduLengthType byteOffset_uo;

        byteOffset_uo = ( PduLengthType )( sigBitPos_uo >> 3 );


        Com_ByteCopyInit( (buffPtr_pu8 + byteOffset_uo), (uint32)sigInitVal_uo, sigBitSize_uo );
    }
}
# 646 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ Com_SigMax_tuo Com_Prv_GetRxSigInitValue(Com_RxSigCfg_tpcst rxSigConstPtr_pcst)
{
    Com_SigMax_tuo rxSigVal_uo;
# 662 "bsw\\Com\\src\\Com_Prv_Inl.h"
    rxSigVal_uo = rxSigConstPtr_pcst->initVal_u32;


    return rxSigVal_uo;
}
# 677 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ Com_SigMax_tuo Com_Prv_GetTxSigInitValue(Com_TxSigCfg_tpcst txSigConstPtr_pcst)
{
    Com_SigMax_tuo txSigNewVal_uo;
# 693 "bsw\\Com\\src\\Com_Prv_Inl.h"
    txSigNewVal_uo = txSigConstPtr_pcst->initVal_u32;

    return txSigNewVal_uo;
}
# 991 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_CheckTxIPduStatus(PduIdType idIpdu_uo)
{
    boolean txIPduStatus_b;

    txIPduStatus_b = (Bfx_Prv_GetBit_u16u8_u8_Inl(((Com_TxIpduRam_ast[idIpdu_uo]).txFlags_u16),0u))
# 1007 "bsw\\Com\\src\\Com_Prv_Inl.h"
                         ;

    return txIPduStatus_b;
}
# 1019 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_CheckRxIPduStatus(PduIdType idIpdu_uo)
{
    boolean rxIPduStatus_b;

    rxIPduStatus_b = (Bfx_Prv_GetBit_u8u8_u8_Inl(((Com_RxIpduRam_ast[idIpdu_uo]).rxFlags_u8),0u))
# 1035 "bsw\\Com\\src\\Com_Prv_Inl.h"
                        ;

    return rxIPduStatus_b;
}
# 1095 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ void Com_Prv_ProceedToSendIpdu(Com_IpduId_tuo idComTxPdu_uo, Com_SendIpduInfo_tst sendIpduFlag_st)
{
    Com_TxIpduRam_tpst txIpduRamPtr_pst;

    txIpduRamPtr_pst = &(Com_TxIpduRam_ast[idComTxPdu_uo]);
# 1149 "bsw\\Com\\src\\Com_Prv_Inl.h"
    {
# 1159 "bsw\\Com\\src\\Com_Prv_Inl.h"
        if (((sendIpduFlag_st.isSigTriggered_u1 != (0u)) &&
             (((Bfx_Prv_GetBits_u8u8u8_u8_Inl((txIpduRamPtr_pst->transMode_u8),0u,2u)) < (0x02u))))



           )
        {


            sendIpduFlag_st.isEventTrig_u1 = (1u);

            Com_Prv_SendIpdu((PduIdType)idComTxPdu_uo, sendIpduFlag_st);
        }
    }
}
# 1449 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_IsValidRxIpduId(PduIdType idPdu_uo)
{
    return (((idPdu_uo) < (120u)));
}







static __inline__ boolean Com_Prv_IsValidTxIpduId(PduIdType idPdu_uo)
{
    return (((idPdu_uo) < (140u)));
}







static __inline__ boolean Com_Prv_IsValidRxSignalId(Com_SignalIdType idSignal_u16)
{
    return (((idSignal_u16) < (120u)));
}







static __inline__ boolean Com_Prv_IsValidTxSignalId(Com_SignalIdType idSignal_u16)
{
    return (((idSignal_u16) < (140u)));
}
# 1541 "bsw\\Com\\src\\Com_Prv_Inl.h"
static __inline__ boolean Com_Prv_IsValidIpduGroupId(Com_IpduGroupIdType idIpduGroup_u16)
{
    return (((idIpduGroup_u16) < 6u));
}
# 10 "bsw\\Com\\src\\Com_TpRxIndication.c" 2
