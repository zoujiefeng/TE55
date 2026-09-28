# 1 "bsw\\CanTp\\integration\\CanTp_CallOut.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\CanTp\\integration\\CanTp_CallOut.c"

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
# 3 "bsw\\CanTp\\integration\\CanTp_CallOut.c" 2
# 1 ".\\output\\inc/CanTp.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h" 1




# 1 ".\\output\\inc/CanTp_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanTp_PreCompile\\CanTp_Cfg.h" 1




# 1 ".\\output\\inc/ComStack_Types.h" 1
# 6 ".\\output\\inc/..\\..\\bsw\\CanTp_PreCompile\\CanTp_Cfg.h" 2
# 90 ".\\output\\inc/..\\..\\bsw\\CanTp_PreCompile\\CanTp_Cfg.h"
struct CanTp_ConfigStructType;
typedef struct CanTp_ConfigStructType CanTp_ConfigType;

extern const struct CanTp_ConfigStructType CanTp_Config;
# 2 ".\\output\\inc/CanTp_Cfg.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h" 2
# 46 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h"
# 1 ".\\output\\inc/CanTp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 13 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 2
# 2 ".\\output\\inc/CanTp_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h" 2

extern uint8 CanTp_MainState;


# 1 ".\\output\\inc/CanTp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 2
# 2 ".\\output\\inc/CanTp_MemMap.h" 2
# 52 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h" 2




# 1 ".\\output\\inc/CanTp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 1
# 56 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 2
# 2 ".\\output\\inc/CanTp_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h" 2


extern void CanTp_GetVersionInfo(Std_VersionInfoType* versioninfo);

extern void CanTp_Init(const CanTp_ConfigType *CfgPtr);

extern void CanTp_Shutdown(void);




extern Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr);

extern Std_ReturnType CanTp_CancelTransmit(PduIdType CanTpTxSduId);
extern Std_ReturnType CanTp_CancelReceive(PduIdType CanTpRxSduId);
# 81 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h"
# 1 ".\\output\\inc/CanTp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 1
# 61 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bsw\\CanTp\\integration\\CanTp_MemMap.h" 2
# 2 ".\\output\\inc/CanTp_MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bsw\\CanTp\\api\\CanTp.h" 2
# 2 ".\\output\\inc/CanTp.h" 2
# 4 "bsw\\CanTp\\integration\\CanTp_CallOut.c" 2


# 1 "bsw\\CanTp\\integration\\CanTp_MemMap.h" 1
# 67 "bsw\\CanTp\\integration\\CanTp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 68 "bsw\\CanTp\\integration\\CanTp_MemMap.h" 2
# 7 "bsw\\CanTp\\integration\\CanTp_CallOut.c" 2







Std_ReturnType CanTp_XX_YY_ExternalFdSupportCallback(PduIdType RxPduId, const PduInfoType *PduInfoPtr,
                                                     const boolean FdEnabled)
{
    (void)RxPduId;
    (void)PduInfoPtr;
    (void)FdEnabled;

    return 0x00u;
}


# 1 "bsw\\CanTp\\integration\\CanTp_MemMap.h" 1
# 72 "bsw\\CanTp\\integration\\CanTp_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 73 "bsw\\CanTp\\integration\\CanTp_MemMap.h" 2
# 26 "bsw\\CanTp\\integration\\CanTp_CallOut.c" 2
