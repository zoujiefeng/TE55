# 1 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c"







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
# 9 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c" 2
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
# 10 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c" 2
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
# 11 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 17 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c" 2
boolean Bsw_IPduCallout_CanNodeNum_02_Rx_01(PduIdType id, const PduInfoType * ptr)
{
   return (1 != 0);
}

boolean Bsw_IPduCallout_CanNodeNum_02_Rx_02(PduIdType id, const PduInfoType * ptr)
{
   return (1 != 0);
}

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 28 "bswcdd\\BSW\\CAN02\\CAN02_CalloutRx.c" 2
