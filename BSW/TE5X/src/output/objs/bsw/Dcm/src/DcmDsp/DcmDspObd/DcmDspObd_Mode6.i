# 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6.c"


# 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6_Inf.h" 1
# 12 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6_Inf.h"
# 1 ".\\output\\inc/Dcm.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h"
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
# 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2







# 1 ".\\output\\inc/Dcm_Cfg_Version.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_Version.h" 1
# 2 ".\\output\\inc/Dcm_Cfg_Version.h" 2
# 20 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 1 ".\\output\\inc/Dcm_Cfg_DslDsd.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 1
# 137 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 138 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2
extern uint8 Dcm_InParameterBuf_au8 [];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 141 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2
# 230 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 231 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 233 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 268 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 269 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 235 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 280 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 281 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 237 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 289 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 290 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 239 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 301 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 241 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 246 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2
extern uint8 Dcm_ObdArraySignal_au8 [];
extern sint8 Dcm_ObdArraySignal_as8 [];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 250 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 268 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 269 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 252 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2
extern uint16 Dcm_ObdArraySignal_au16[];
extern sint16 Dcm_ObdArraySignal_as16[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 280 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 281 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 256 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 289 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 290 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 258 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2
extern uint32 Dcm_ObdArraySignal_au32[];
extern sint32 Dcm_ObdArraySignal_as32[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 301 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 262 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h" 2
# 2 ".\\output\\inc/Dcm_Cfg_DslDsd.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm_Types.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm_Types.h"
# 1 ".\\output\\inc/Rte_Dcm_Type.h" 1
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Dcm_Type.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\Rte_Dcm_Type.h"
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
# 17 ".\\output\\inc/..\\..\\rte\\Rte_Dcm_Type.h" 2
# 27 ".\\output\\inc/..\\..\\rte\\Rte_Dcm_Type.h"
typedef uint8 Rte_ModeType_DcmCommunicationControl_Can_Network_CanNodeNum_01;





typedef uint8 Rte_ModeType_DcmControlDTCSetting;





typedef uint8 Rte_ModeType_DcmDiagnosticSessionControl;





typedef uint8 Rte_ModeType_DcmEcuReset;
# 2 ".\\output\\inc/Rte_Dcm_Type.h" 2
# 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm_Types.h" 2

# 1 ".\\output\\inc/Dcm_Type_Integration.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Type_Integration.h" 1
# 9 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Type_Integration.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 10 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Type_Integration.h" 2
# 2 ".\\output\\inc/Dcm_Type_Integration.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm_Types.h" 2
# 22 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 1
# 62 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef uint8 Dcm_SrvOpStatusType;
# 122 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    uint8 ProtocolId;
    uint8 Sid;
    uint8 SubFncId;
    uint8 StoreType;
    uint8 SessionLevel;
    uint8 SecurityLevel;
    uint8 ReqResLen;
    uint8 NumWaitPend;
    uint8 ReqResBuf[8];
    uint16 TesterSourceAddr;
    uint32 ElapsedTime;
    boolean ReprogramingRequest;
    boolean ApplUpdated;
    boolean ResponseRequired;




    uint8 freeForProjectUse[6];
}Dcm_ProgConditionsType;
# 153 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    uint8 ConfigSetId;
}Dcm_ConfigType;
# 169 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef uint8 Dcm_EcuStartModeType;
# 209 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef uint8 Dcm_StatusType;
# 258 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef uint8 Dcm_MsgItemType;





typedef Dcm_MsgItemType * Dcm_MsgType;
# 273 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef uint32 Dcm_MsgLenType;
# 282 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{


    uint8 reqType;



    boolean suppressPosResponse;



    uint8 sourceofRequest;
}Dcm_MsgAddInfoType;





typedef uint8 Dcm_IdContextType;
# 316 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{





    Dcm_MsgType resData;





    Dcm_MsgType reqData;





    Dcm_MsgAddInfoType msgAddInfo;





    Dcm_MsgLenType resDataLen;




    Dcm_MsgLenType reqDataLen;
# 364 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
    Dcm_MsgLenType resMaxDataLen;
# 375 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
    Dcm_IdContextType idContext;
# 390 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
    PduIdType dcmRxPduId;

}Dcm_MsgContextType;
# 538 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef uint8 Dcm_CommunicationModeType;
# 701 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    Dcm_MsgType tx_buffer_pa;
    Dcm_MsgType rx_mainBuffer_pa;
# 714 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
    Dcm_MsgLenType tx_buffer_size_u32;
    Dcm_MsgLenType rx_buffer_size_u32;

    Dcm_MsgLenType maxResponseLength_u32;

    uint32 dataP2TmrAdjust;
    uint32 dataP2StarTmrAdjust;
    uint8 protocolid_u8;
    uint8 sid_tableid_u8;
    uint8 premption_level_u8;
    uint8 pduinfo_idx_u8;







    uint8 demclientid;
    boolean nrc21_b;
    boolean sendRespPendTransToBoot;
}Dcm_Dsld_protocol_tableType;

typedef void (*Dcm_ConfirmationApiType)(Dcm_IdContextType dataIdContext_u8,PduIdType dataRxPduId_u8, uint16 dataSourceAddress_u16,Dcm_ConfirmationStatusType status_u8);
typedef boolean (*Dcm_ModeRuleType) (uint8* ErrorCode_u8);
# 750 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    uint32 allowed_session_b32;
    uint32 allowed_security_b32;



    Std_ReturnType (*adrUserSubServiceModeRule_pfct) (Dcm_NegativeResponseCodeType * ErrorCode ,uint8 dataSid_u8 ,uint8 subservice_id_u8);
    Std_ReturnType (*SubFunc_fp) (Dcm_SrvOpStatusType OpStatus ,Dcm_MsgContextType * pMsgContext ,Dcm_NegativeResponseCodeType * dataNegRespCode );
    uint8 subservice_id_u8;
    boolean isDspRDTCSubFnc_b;
}Dcm_Dsld_SubServiceType;
# 778 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    uint32 allowed_session_b32;
    uint32 allowed_security_b32;




    Std_ReturnType (*service_handler_fp) (Dcm_SrvOpStatusType SrvOpStatus ,Dcm_MsgContextType *Dcm_DsldMsgContext_st ,Dcm_NegativeResponseCodeType *dataNrc );
    void (*Service_init_fp) (void);
    uint8 sid_u8;
    boolean subfunction_exist_b;
    boolean servicelocator_b;
    const Dcm_Dsld_SubServiceType * ptr_subservice_table_pcs;
    uint8 num_sf_u8;
    Std_ReturnType (*adrUserServiceModeRule_pfct) (Dcm_NegativeResponseCodeType *ErrorCode,uint8 dataSid_u8 );

    Dcm_ConfirmationApiType Dcm_ConfirmationService;
} Dcm_Dsld_ServiceType;
# 810 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    const Dcm_Dsld_ServiceType * ptr_service_table_pcs;
    uint8 num_services_u8;
    uint8 nrc_sessnot_supported_u8;
    uint8 cdtc_index_u8;
} Dcm_Dsld_sid_tableType;
# 830 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    uint8 protocol_num_u8;
    PduIdType txpduid_num_u8;
    PduIdType roetype2_txpdu_u8;
    PduIdType rdpitype2_txpdu_u8;
    uint16 testaddr_u16;
  uint8 channel_idx_u8;
  uint8 ConnectionIndex_u8;
  uint8 NumberOfTxpdu_u8;
} Dcm_Dsld_connType;
# 851 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    PduIdType rxpduid_num_u8;
    uint16 testsrcaddr_u16;
} Dcm_Dsld_RoeRxToTestSrcMappingType;
# 866 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef enum
{
    DCM_DSLD_NO_COM_MODE,
    DCM_DSLD_SILENT_COM_MODE,
    DCM_DSLD_FULL_COM_MODE
}Dcm_Dsld_commodeType;
# 897 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef enum
{
    DCM_COMM_ACTIVE,
    DCM_COMM_NOT_ACTIVE
}Dcm_Dsld_activediagnostic_ten;
# 910 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{
    uint8 ComMChannelId;
    Dcm_Dsld_commodeType ComMState;



}Dcm_Dsld_ComMChannel;
# 956 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
typedef struct
{

    const uint8 * ptr_rxtable_pca;

    const PduIdType * ptr_txtable_pca;

    const Dcm_Dsld_connType * ptr_conntable_pcs;

    const Dcm_Dsld_protocol_tableType * protocol_table_pcs;

    const Dcm_Dsld_sid_tableType * sid_table_pcs;

    const uint8 * session_lookup_table_pcau8;

    const uint8 * security_lookup_table_pcau8;
} Dcm_Dsld_confType;
# 1031 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1032 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
extern Dcm_Dsld_activediagnostic_ten Dcm_ActiveDiagnosticState_en;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1035 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2





# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1041 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
extern const Dcm_Dsld_confType Dcm_Dsld_Conf_cs;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1044 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
# 1100 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1101 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2







extern void Dcm_Init(const Dcm_ConfigType * ConfigPtr );
# 1122 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern void Dcm_SetNegResponse ( const Dcm_MsgContextType * pMsgContext,
                                                Dcm_NegativeResponseCodeType ErrorCode
                                              );
# 1141 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern void Dcm_ProcessingDone (const Dcm_MsgContextType * pMsgContext);
# 1178 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1179 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1182 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
# 1193 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern void Dcm_StartPagedProcessing (const Dcm_MsgContextType * pMsgContext);







extern void Dcm_ProcessPage(Dcm_MsgLenType FilledPageLen );

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1204 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1206 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
extern void (*Dcm_adrUpdatePage_pfct) (
                                                 Dcm_MsgType PageBufPtr,
                                                 Dcm_MsgLenType PageLen
                                               );

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1212 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
# 1274 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1275 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
extern void Dcm_SetP3MaxMonitoring (boolean active);

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1278 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1281 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2






extern void Dcm_GetActiveServiceTable (uint8 * ActiveServiceTable);
# 1298 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern Std_ReturnType Dcm_GetActiveProtocolRxBufferSize
                            (Dcm_MsgLenType * const rxBufferLength);
# 1308 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern Std_ReturnType Dcm_ForceRespPend(void);
# 1318 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern boolean Dcm_IsInfrastructureErrorPresent_b(uint8 dataInfrastrutureCode_u8);
# 1352 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern Std_ReturnType Dcm_TriggerOnEvent( uint8 RoeEventId );







extern Std_ReturnType Dcm_GetActiveProtocol(Dcm_ProtocolType * ActiveProtocol);






extern Std_ReturnType Dcm_GetSesCtrlType(Dcm_SesCtrlType * SesCtrlType);






extern Std_ReturnType Dcm_GetSecurityLevel(Dcm_SecLevelType * SecLevel);
# 1384 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
extern Std_ReturnType Dcm_ResetToDefaultSession(void);
# 1395 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1396 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 415 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 416 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1398 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
extern Dcm_Dsld_ComMChannel Dcm_active_commode_e[1];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 427 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 428 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1401 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 58 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 59 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1403 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2

extern const uint8 Dcm_Dsld_ComMChannelId_acu8[1];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 1407 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 1 ".\\output\\inc/Dcm_Cfg_DspUds.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DspUds.h" 1
# 2 ".\\output\\inc/Dcm_Cfg_DspUds.h" 2
# 24 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2



# 1 ".\\output\\inc/Dcm_Lcfg_DspUds.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 1
# 10 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 11 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern Std_ReturnType Dcm_DidServices_F186_ReadData(uint8 * adrData_pu8);

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
# 32 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType DcmAppl_DcmReadDataNRC(uint16 Did,uint32 DidSignalPosn,Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspData_BootTime_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_ActiveBank_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_BootReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_BootRspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_AppReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_AppRspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntBswLibDate_0410_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntOfflineDate_0411_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntProductionLineId_0412_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntProjectId_0413_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntBswSvnRev_0414_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntBootSvnRev_0415_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntFpgaSvnRev_0416_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntCpldSvnRev_0417_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntHwSvnRev_0418_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntAddlInfo_0419_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_ResetLog_0420_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D000_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D001_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D002_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D003_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D004_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D005_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D007_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D008_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D009_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D010_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D011_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D012_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D013_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D014_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D015_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D016_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D017_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D018_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D019_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D020_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D021_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D022_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D023_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D024_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D025_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D026_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D027_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D028_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D029_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D030_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D031_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D032_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D033_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D034_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D035_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D036_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D037_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D038_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D039_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D040_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D041_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D042_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D043_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D044_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D045_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D046_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D047_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D048_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D049_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_RW_0E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D10_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D16_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D17_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D18_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D19_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D29_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D2A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_RW_1E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D10_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D16_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D17_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D18_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D19_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D29_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D30_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D31_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D32_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D33_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D34_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D35_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D36_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D37_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D38_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D39_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFEA_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFEB_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFEC_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFED_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F197_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F187_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F188_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F191_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F193_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F189_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F190_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_B303_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F1E0_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);



extern Std_ReturnType Dcm_DataServices_ReadData (uint8 * Data);
# 358 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType DataServices_RW_0E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
extern Std_ReturnType DataServices_RW_1E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
# 375 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType Dcm_DataServices_FreezeCurrentState (Dcm_NegativeResponseCodeType * ErrorCode);
# 396 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType Dcm_DataServices_ResetToDefault (Dcm_NegativeResponseCodeType * ErrorCode);
# 418 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType Dcm_DataServices_ReturnControlToECU (Dcm_NegativeResponseCodeType * ErrorCode);
# 436 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType Dcm_DataServices_ShortTermAdjustment (const uint8 * ControlStateInfo,Dcm_NegativeResponseCodeType * ErrorCode);
# 458 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType DcmDspRequestRoutine_GcuPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspRequestRoutine_TcuPosLearning(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspRequestRoutine_ZeroPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);





extern Std_ReturnType DcmDspStartRoutine_GcuPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspStartRoutine_StartSwapCallback(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspStartRoutine_StayInBootCallback(
                         const uint8 * dataIn1,
                         Dcm_OpStatusType OpStatus,
                          uint16 CurrentDataLength,
                          Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspStartRoutine_TcuPosLearning(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);

extern Std_ReturnType DcmDspStartRoutine_ZeroPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);
# 511 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h"
extern Std_ReturnType GetSeed_L1(Dcm_SecLevelType SecLevel_u8,uint32 Seedlen_u32,uint32 AccDataRecsize_u32,uint8 * SecurityAccessDataRecord,uint8 * Seed,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);



extern Std_ReturnType CompareKey_L1(uint32 KeyLen_32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);


extern Std_ReturnType Dcm_GetAttemptCounter_L1( Dcm_OpStatusType OpStatus,uint8 * AttemptCounter);

extern Std_ReturnType Dcm_SetAttemptCounter_L1( Dcm_OpStatusType OpStatus,uint8 AttemptCounter);



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 525 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2






# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 268 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 269 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 532 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern sint16 Dcm_RCSigOutN_as16[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 280 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 281 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 535 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 289 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 290 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 538 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern sint32 Dcm_RCSigOutN_as32[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 301 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 541 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 544 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern sint8 Dcm_RCSigOutN_as8[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 547 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 289 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 290 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 550 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern uint32 Dcm_RCSigOutN_au32[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 301 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 553 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 268 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 269 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 556 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern uint16 Dcm_RCSigOutN_au16[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 280 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 281 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 559 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 562 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern uint8 Dcm_RCSigOutN_au8[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 565 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2






# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 268 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 269 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 572 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern sint16 Dcm_RCSigInN_as16[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 280 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 281 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 575 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 289 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 290 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 578 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern sint32 Dcm_RCSigInN_as32[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 301 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 581 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 584 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern sint8 Dcm_RCSigInN_as8[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 587 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 289 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 290 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 590 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern uint32 Dcm_RCSigInN_au32[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 301 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 302 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 593 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 268 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 269 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 596 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern uint16 Dcm_RCSigInN_au16[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 280 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 281 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 599 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 602 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
extern uint8 Dcm_RCSigInN_au8[];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 605 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspUds.h" 2
# 2 ".\\output\\inc/Dcm_Lcfg_DspUds.h" 2
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 1






# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rdtc_Pub.h" 1
# 20 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rdtc_Pub.h"
typedef struct
{
    Std_ReturnType (*SubFunc_fp) (Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType *pMsgContext ,Dcm_NegativeResponseCodeType *dataNegRespCode );
    uint8 SubFuncLevel_u8;
    boolean isDspRDTCSubFnc_b;
}Dcm_Dsp_RDTCInfoType;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rdtc_Pub.h" 2
extern const Dcm_Dsp_RDTCInfoType DcmDspRDTCInfo[5u];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rdtc_Pub.h" 2
# 8 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2



# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
typedef struct
{



    uint32 Residual_delay_u32;
    uint8 FailedAtm_cnt_u8;
}Dcm_Dsp_SecaType;






typedef union
{
    Std_ReturnType (*Dcm_GetSecurityAttemptCounter_pfct) (Dcm_OpStatusType OpStatus,uint8 * AttemptCounter);





}un_GetSecurityAttempt;





typedef union
{
Std_ReturnType (*Dcm_SetSecurityAttemptCounter_pfct) (Dcm_OpStatusType OpStatus,uint8 AttemptCounter);




}un_SetSecurityAttempt;







typedef union
{






    Std_ReturnType (*Dcm_GetSeed_ptr4) (Dcm_SecLevelType SecLevel_u8,uint32 Seedlen_u32,uint32 AccDataRecsize_u32,uint8 * SecurityAccessDataRecord,uint8 * Seed,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
# 106 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
    Std_ReturnType (*Dcm_GetSeed_ptr8) (Dcm_SecLevelType SecLevel_u8,uint32* Seedlen_u32,uint32 AccDataRecsize_u32,uint8 * SecurityAccessDataRecord,uint8 * Seed,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
# 116 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
}un_GetSeed;





typedef union {



Std_ReturnType (*Dcm_CompareKey_ptr3) (uint32 Key_size_u32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);






}un_CompareKey;
# 142 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
typedef enum
{
    USE_ASYNCH_CLIENT_SERVER,
    USE_ASYNCH_FNC
}DcmDspSecurityUsePort;
# 165 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
typedef struct
{
    uint32 PowerOnDelay_u32;
    uint32 DelayTime_u32;

    un_GetSeed Dsp_GetSeed_fp;

    un_CompareKey Dsp_CompareKey_fp;

    un_GetSecurityAttempt Dsp_GetAttempCounter_fp;
    un_SetSecurityAttempt Dsp_SetAttempCounter_fp;
# 185 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
    Dcm_SecLevelType Security_level_u8;
    uint32 Seed_size_u32;
    uint32 Key_size_u32;
    uint8 NumAttDelay_u8;
    uint8 NumAttLock_u8;
    uint32 AccDataRecsize_u32;
    DcmDspSecurityUsePort usePort;




    boolean UseFlexibleLength;
}Dcm_Dsp_Security_t;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 200 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 2
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
extern uint32 Dcm_Dsp_SecaGlobaltimer_u32;



extern void Dcm_Dsp_SecaPowerOnDelayIni(void);






extern void Dcm_Dsp_SecaSessIni(void);
# 237 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
extern void Dcm_Dsp_RestoreDelayCount(void);



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 242 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 244 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 2






extern Dcm_Dsp_SecaType Dcm_Dsp_Seca[1u];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 253 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 255 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 2






extern const Dcm_Dsp_Security_t Dcm_Dsp_Security[1u];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 264 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h" 2
# 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2



# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 1
# 22 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h"
typedef enum
{
    DCM_NO_BOOT = 0,
    DCM_OEM_BOOT,
    DCM_SYS_BOOT
}Dcm_SessionForBootType;
# 39 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h"
typedef struct
{
    uint32 P2_max_u32;
    uint32 P2str_max_u32;
    Dcm_SesCtrlType session_level;

 Rte_ModeType_DcmDiagnosticSessionControl SessionMode;

    Dcm_SessionForBootType sessionForBoot;
}
Dcm_Dsp_Session_t;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 52 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 2
# 64 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h"
extern void Dcm_Prv_DspDscConfirmation(
 Dcm_IdContextType dataIdContext_u8,
 PduIdType dataRxPduId_u8,
 uint16 dataSourceAddress_u16,
 Dcm_ConfirmationStatusType status_u8
               );

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 74 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 2
extern const Dcm_Dsp_Session_t Dcm_Dsp_Session[3u];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 2
# 93 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h"
extern void Dcm_GetP2Timings(
                                                uint32 * dP2Timing_pu32,
                                                uint32 * dP2StarTiming_pu32,
                                                Dcm_SesCtrlType dSessionId
                                            );

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 100 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Dsc_Pub.h" 2
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2



# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h"
typedef struct
{

 Std_ReturnType (*switch_fp) (Dcm_CommunicationModeType Dcm_stCommunicationMode );
 boolean (*checkmode_fp) (void);

 NetworkHandleType SpecificSubNetId_u8;
 uint8 SpecificComMChannelId;
}Dcm_Dsld_SpecificSubnetInfo;
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h"
typedef struct
{

 Std_ReturnType (*switch_fp) (Dcm_CommunicationModeType Dcm_stCommunicationMode );
 boolean (*checkmode_fp) (void);


 uint8 AllComMChannelId;
}Dcm_Dsld_AllChannelsInfoType;
# 58 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h"
typedef struct
{

    Std_ReturnType (*switch_fp) (Dcm_CommunicationModeType Dcm_stCommunicationMode );
    boolean (*checkmode_fp) (void);

    uint16 SubNodeId_u8;
    boolean SubNodeUsed_b;
    uint8 SubNodeComMChannelId;
}Dcm_Dsld_SubNodeInfo;
# 82 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 2




extern const Dcm_Dsld_AllChannelsInfoType Dcm_AllChannels_ForModeInfo[1];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 2
# 104 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 415 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 416 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 2




extern Std_ReturnType (*Dcm_ComMUserReEnableModeRuleRef) (void);

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 427 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 428 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 112 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 2



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 2




extern const Dcm_Dsld_SubNodeInfo Dcm_SubNode_table[1];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 123 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_CC_Pub.h" 2
# 20 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2



# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Cdtcs_Pub.h" 1
# 24 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2







# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rmba_Pub.h" 1
# 15 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rmba_Pub.h"
typedef enum
{
    DCM_RMBA_SUPPORT_OK,
    DCM_RMBA_SUPPORT_SESSION_VIOLATED,
    DCM_RMBA_SUPPORT_SECURITY_VIOLATED,
    DCM_RMBA_SUPPORT_CONDITION_VIOLATED
} Dcm_RmbaSupportRet_t;
# 32 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2



# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Cdi_Pub.h" 1
# 36 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 40 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2
# 58 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_DemTriggerOnDTCStatus( uint32 Dtc, uint8 DTCStatusOld, uint8 DTCStatusNew );


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2
# 207 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
typedef enum
{
    DCM_SUPPORT_READ,
    DCM_SUPPORT_WRITE,
    DCM_SUPPORT_IOCONTROL
} Dcm_Direction_t;
# 229 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
typedef enum
{
    DCM_SUPPORT_OK,
    DCM_SUPPORT_SESSION_VIOLATED,
    DCM_SUPPORT_SECURITY_VIOLATED,
    DCM_SUPPORT_CONDITION_VIOLATED,
    DCM_SUPPORT_CONDITION_PENDING
} Dcm_SupportRet_t;






typedef struct
{
 uint32 dataSignalLengthInfo_u32;
 uint16 nrNumofSignalsRead_u16;
 uint16 idxIndex_u16;



 Dcm_NegativeResponseCodeType dataNegRespCode_u8;
 boolean dataRange_b;
 boolean flgNvmReadPending_b;
 Dcm_OpStatusType dataopstatus_b;



} Dcm_DIDIndexType_tst;


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 262 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2
# 276 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_GetIndexOfDID (
              uint16 did,
              Dcm_DIDIndexType_tst * idxDidIndexType_st
               );
# 299 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Dcm_SupportRet_t Dcm_GetSupportOfIndex( Dcm_DIDIndexType_tst * idxDidIndexType_st,
                  Dcm_Direction_t direction,
                  Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
# 319 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_GetDIDRangeStatus (
                                                            uint16 did,
                                                            Dcm_DIDIndexType_tst * idxDidIndexType_st
                                                            );
# 339 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_GetLengthOfDIDIndex(Dcm_DIDIndexType_tst * idxDidIndexType_st,
                        uint32 * length_u32,
                        uint16 did_u16);
# 361 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_GetActiveDid(uint16 * dataDid_u16);
# 382 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_GetActiveSourceDataId(uint16 * dataSrcDid_u16,uint8 * posnSrcDataRec_u8, uint8 * adrMemSize_u8);
# 403 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
extern Std_ReturnType Dcm_GetDIDData (Dcm_DIDIndexType_tst * idxDidIndexType_st,
                                                   uint8 * targetBuffer);
# 431 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 432 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 437 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2
extern Std_ReturnType Dcm_GetActiveRid(uint16 * dataRid_u16);

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 440 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h" 2
# 452 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
typedef enum
{
    DCM_READ_OK,
    DCM_READ_FAILED,
    DCM_READ_PENDING,
    DCM_READ_FORCE_RCRRP,
    DCM_READ_NOT_AVAILABLE
} Dcm_ReadMemoryRet_t;

typedef Dcm_ReadMemoryRet_t Dcm_ReturnReadMemoryType;
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2





# 1 ".\\output\\inc/Dcm_Lcfg_DspObd.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspObd.h" 1





# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DspObd.h" 1
# 7 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspObd.h" 2






# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspObd.h" 2
# 30 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspObd.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 31 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DspObd.h" 2
# 2 ".\\output\\inc/Dcm_Lcfg_DspObd.h" 2
# 35 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Obd_Pub.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Obd_Pub.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h" 1
# 19 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h"
typedef union
{
  Std_ReturnType (*GetPIDvalue1_pf) (uint8 * Data);
  Std_ReturnType (*GetPIDvalue2_pf) (uint16 * Data);
  Std_ReturnType (*GetPIDvalue3_pf) (uint32 * Data);
  Std_ReturnType (*GetPIDvalue4_pf) (sint8 * Data);
  Std_ReturnType (*GetPIDvalue5_pf) (sint16 * Data);
  Std_ReturnType (*GetPIDvalue6_pf) (sint32 * Data);
  Std_ReturnType (*GetPIDvalue7_pf) (boolean * Data);
}un_mode1;
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h"
typedef enum
{
 OBD_USE_DATA_SENDER_RECEIVER,
 OBD_USE_DATA_SYNCH_CLIENT_SERVER,
 OBD_USE_DATA_SYNCH_FNC
}DcmDspPidDataUsePort;







typedef struct
{
    uint32 BitMask_u32;
    uint8 StartIndex_u8;
    uint8 NumPids_u8;
}Dcm_Dsp_Mode1BitMask_Type;
# 66 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h"
typedef struct
{
    uint8 Pid_Id_u8;
    uint8 Num_DataSourcePids_u8;
    uint16 DataSourcePid_ArrayIndex_u16;




    uint16 Pid_Size_u8;
}Dcm_Dsp_Mode1Pid_Type;







typedef struct
{
 uint8 SupportInfoLen_u8;
 uint8 SupportInfoPos_u8;
}Dcm_Dsp_Mode1SupportInfo_Type;
# 105 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h"
typedef struct
{
    un_mode1 GetPIDvalue_pf;
    const Dcm_Dsp_Mode1SupportInfo_Type * ptr_supportinfo_pcs;
    DcmDspPidDataUsePort PidUsePort;
    uint16 Length_data_u16;
    uint16 Pos_data_u16;
    uint8 dataType_u8;
    uint8 dataEndianness_u8;
    uint8 SupportInfoBit_u8;
}Dcm_Dsp_Mode1DataSourcePid_Type;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h" 2




extern const Dcm_Dsp_Mode1BitMask_Type Dcm_Dsp_Mode1Bitmask_acs[8];




extern const Dcm_Dsp_Mode1Pid_Type Dcm_Dsp_Mode1PidArray_acs[11];




extern const Dcm_Dsp_Mode1DataSourcePid_Type Dcm_Dsp_Mode1DataSourcePid_acs[11];
# 143 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 144 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode1_Pub.h" 2
# 13 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Obd_Pub.h" 2



# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode2_Pub.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode2_Pub.h"
typedef struct
{
    uint32 BitMask_u32;
    uint8 StartIndex_u8;
    uint8 NumPids_u8;
}Dcm_Dsp_Mode2BitMask_Type;
# 36 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode2_Pub.h"
typedef struct
{
    uint8 Pid_Id_u8;
    uint8 Num_DataSourcePids_u8;
    uint16 DataSourcePid_ArrayIndex_u16;
    uint16 Pid_Size_u8;
}Dcm_Dsp_Mode2Pid_Type;







typedef struct
{
    uint16 Length_data_u8;
    uint16 Pos_data_u8;
}Dcm_Dsp_Mode2DataSourcePid_Type;


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode2_Pub.h" 2





extern const Dcm_Dsp_Mode2BitMask_Type Dcm_Dsp_Mode2Bitmask_acs[8];




extern const Dcm_Dsp_Mode2Pid_Type Dcm_Dsp_Mode2PidArray_acs[7];





extern const Dcm_Dsp_Mode2DataSourcePid_Type Dcm_Dsp_Mode2DataSourcePid_acs[7];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode2_Pub.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Obd_Pub.h" 2
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Obd_Pub.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h"
typedef union
{
    Std_ReturnType (*GetInfotypeValueData_pf1) (Dcm_OpStatusType OpStatus,uint8 * DataValueBuffer,uint8 * DataValueBufferSize);
}un_mode9;
# 34 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h"
typedef struct
{
    uint32 BitMask_u32;
    uint8 StartIndex_u8;

    uint8 NumInfotypes_u8;
}Dcm_Dsp_Mode9BitMask_t;
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h"
typedef enum
{
    OBD_MODE9_DEM_FNC,
    OBD_MODE9_USE_FNC,
    OBD_MODE9_RTE_FNC
}Dcm_Dsp_Mode9_API_Type;
# 63 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h"
typedef struct
{

    un_mode9 GetInfotypeValueData_pf;
    uint8 Infodatatype_size_u8;
    Dcm_Dsp_Mode9_API_Type InfoType_APIType_e;
}Dcm_Dsp_VehInfoData_t;
# 79 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h"
typedef struct
{

    uint8 Infotype_u8;
    uint8 NumOfInfoData_u8;
    uint16 InfoDatatypeIndex_u16;
    boolean Is_NODI_Enabled_b ;





}Dcm_Dsp_VehInfo_t;
# 119 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 120 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h" 2

extern const Dcm_Dsp_Mode9BitMask_t Dcm_Dsp_Mode9Bitmask_acs[8];


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h" 2





# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h" 2





extern const Dcm_Dsp_VehInfo_t Dcm_Dsp_VehInfoArray_acs[3];




extern const Dcm_Dsp_VehInfoData_t Dcm_Dsp_VehInfoData_acs[3];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 50 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 144 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode9_Pub.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Obd_Pub.h" 2
# 36 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2


# 1 ".\\output\\inc/Dcm_Lcfg_DslDsd.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DslDsd.h" 1






# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 8 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DslDsd.h" 2
extern Std_ReturnType Dcm_DcmDiagnosticSessionControl(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmSecurityAccess(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmTesterPresent(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmEcuReset(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmCommunicationControl(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmRoutineControl(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmInputOutputControlByIdentifier(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmReadDataByIdentifier(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmWriteDataByIdentifier(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmReadDTCInformation(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmClearDiagnosticInformation(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmControlDTCSetting(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmReadMemoryByAddress(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmObdMode04(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmObdMode01(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmObdMode37A(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmObdMode02(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern Std_ReturnType Dcm_DcmObdMode09(Dcm_SrvOpStatusType OpStatus,Dcm_MsgContextType * pMsgContext,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern void Dcm_Dsp_DscIni(void);
extern void Dcm_Dsp_SecaIni(void);
extern void Dcm_Dsp_EcuReset_Ini(void);
extern void Dcm_Dsp_RC_Ini(void);
extern void Dcm_Dsp_IOCBI_Ini(void);
extern void Dcm_Dsp_RdbiIni(void);
extern void Dcm_Dcm_WDBIInit(void);
extern void Dcm_Dsp_ReadDTCInfo_Ini(void);
extern void Dcm_Dsp_CDTCSIni(void);
extern void Dcm_RMBAIni(void);
extern void Dcm_DcmObdMode04_Ini(void);
extern void Dcm_DcmObdMode09_Ini(void);


extern Std_ReturnType Dcm_DsmClearDiagnosticInformation(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8);
extern Std_ReturnType DcmAppl_UserServiceModeRuleService(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8);
extern Std_ReturnType DcmAppl_UserSubServiceModeRuleService(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8,uint8 Subfunc_u8);



extern Std_ReturnType DcmAppl_UserDIDModeRuleService(Dcm_NegativeResponseCodeType * Nrc_u8, uint16 did_u16,Dcm_Direction_t dataDirection_en);
extern Std_ReturnType DcmAppl_UserRIDModeRuleService(Dcm_NegativeResponseCodeType * Nrc_u8, uint16 rid_u16, uint8 subfunction_u8);
extern Std_ReturnType DcmAppl_UserMemoryRangeModeRuleService(Dcm_NegativeResponseCodeType * Nrc_u8,uint32 adrMemoryAddress_u32,uint32 dataDataLength_u32,Dcm_Direction_t dataDirection_en);
extern Std_ReturnType DcmAppl_UserCommCtrlReEnableModeRuleService(void);
extern Std_ReturnType DcmAppl_UserDTCSettingEnableModeRuleService(void);


extern void DcmAppl_Switch_DcmDiagnosticSessionControl(Dcm_SesCtrlType SessionMode);
extern void DcmAppl_Switch_DcmExecuteDscReset(uint8 SessionLevel_u8);


extern void DcmAppl_Switch_DcmEcuReset(uint8 ResetMode);
extern void DcmAppl_Switch_DcmExecuteReset(void);
extern void DcmAppl_Switch_DcmExecuteEcuReset(uint8 ResetType_u8);
extern void DcmAppl_Switch_DcmBootLoaderReset(void);
extern void DcmAppl_Switch_DcmSysSupplierReset(void);

extern void DcmAppl_Switch_DcmDriveToDriveReset(void);
extern void Dcm_Prv_HandleNRCForSeed(Dcm_NegativeResponseCodeType* dataNegRespCode_u8) ;
extern void Dcm_FAC_Delay_Deal( void ) ;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 68 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DslDsd.h" 2
# 2 ".\\output\\inc/Dcm_Lcfg_DslDsd.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm.h" 2
# 2 ".\\output\\inc/Dcm.h" 2
# 13 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6_Inf.h" 2




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
# 18 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6_Inf.h" 2
# 32 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6_Inf.h"
# 1 ".\\output\\inc/DcmCore_DslDsd_Prot.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 1
# 15 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Det.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_Dsd.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2
# 1 ".\\output\\inc/Dcm_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\Dcm_Types.h" 1
# 2 ".\\output\\inc/Dcm_Types.h" 2
# 13 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2
# 1 ".\\output\\inc/Dcm_Cfg_DslDsd.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2







typedef enum
{
    DSD_IDLE,
    DSD_VERIFY_DIAGNOSTIC_DATA,
    DSD_CALL_SERVICE,
    DSD_WAITFORTXCONF,
    DSD_SENDTXCONF_APPL
}Dcm_DsdStatesType_ten;







# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 37 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2
extern Dcm_DsdStatesType_ten stDsdState_en;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 40 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2







# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 48 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2

extern void Dcm_Prv_DsdStateMachine(void);
extern void Dcm_Dsd_ServiceIni(uint8 ServiceTableIndex_u8);
extern void Dcm_Prv_DsdSendTxConfirmation(void);



extern void Dcm_Prv_ResetDsdSubStateMachine(void);
extern boolean Dcm_Prv_IsVerifyDataProcessing(void);


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h" 2
# 74 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
static __inline__ Dcm_DsdStatesType_ten Dcm_Prv_GetDsdState(void)
{
    return stDsdState_en;
}
# 86 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
static __inline__ void Dcm_Prv_SetDsdState(Dcm_DsdStatesType_ten State)
{
    stDsdState_en = State;
}
# 2 ".\\output\\inc/Dcm_Dsd.h" 2
# 18 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 42 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern Dcm_ProgConditionsType Dcm_ProgConditions_st;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 46 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2



typedef enum
{
    DCM_BOOT_IDLE = 0,
    DCM_BOOT_PROCESS_RESET,
    DCM_BOOT_SENDFORCEDRESPPEND,
    DCM_BOOT_WAIT,
    DCM_BOOT_STORE_WARMREQ,
    DCM_BOOT_STORE_WARMINIT,
    DCM_BOOT_STORE_WARMRESP,
    DCM_BOOT_ERROR,
    DCM_BOOT_WAIT_FOR_RESET,
    DCM_BOOT_PERFORM_RESET,
    DCM_BOOT_PREPARE_RESET
}Dcm_BootLoaderStates_ten;





# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern Dcm_BootLoaderStates_ten Dcm_BootLoaderState_en;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 74 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern void Dcm_JumpToBootLoader(uint8 dataBootType_u8,Dcm_NegativeResponseCodeType * dataNegRespCode_u8);
extern void Dcm_ResetBootLoader(void);

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 171 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
typedef uint8 Dcm_ReturnClearDTCType_tu8;


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern Std_ReturnType Dcm_retVal_u8;
extern Dcm_SrvOpStatusType Dcm_SrvOpstatus_u8;
extern Dcm_OpStatusType Dcm_ExtSrvOpStatus_u8;






# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 185 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 201 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 202 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern uint32 Dcm_DsldGetActiveSecurityMask_u32 (void);
extern uint32 Dcm_DsldGetActiveSessionMask_u32 (void);
extern void Dcm_DsldSetsessionTiming(uint32 nrP2StarMax_u32,
                                                      uint32 nrP2Max_u32);
extern void Dcm_Prv_SetSesCtrlType ( Dcm_SesCtrlType SesCtrlType_u8);
extern void Dcm_Prv_SetSecurityLevel (Dcm_SecLevelType dataSecurityLevel_u8);
extern void Dcm_Prv_ProcessResetToDefaultSession(void);
extern void Dcm_Prv_ResetDefaultSessionRequestFlag(void);

extern void Dcm_Prv_ConfirmationRespPendForBootloader(Dcm_ConfirmationStatusType Status_u8);
# 220 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 221 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 382 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
typedef enum
{
    DCM_DSLD_POS_RESPONSE,
    DCM_DSLD_NEG_RESPONSE
}Dcm_DsldResponseType_ten;
# 396 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
typedef struct
{



    PduIdType dataActiveRxPduId_u8;
    uint8 nrActiveConn_u8;
    uint8 idxActiveSession_u8;
    boolean flgMonitorP3timer_b;
    uint8 idxCurrentProtocol_u8;
    PduIdType dataActiveTxPduId_u8;
    uint8 datActiveSrvtable_u8;
    boolean flgCommActive_b;
    uint8 cntrWaitpendCounter_u8;
    Dcm_DsldResponseType_ten stResponseType_en;
    uint8 idxActiveSecurity_u8;
    Std_ReturnType dataResult_u8;
    uint8 idxService_u8;
    boolean dataResponseByDsd_b;
    uint8 dataSid_u8;




    boolean flgPagedBufferTxOn_b;


    PduIdType dataNewRxPduId_u8;




    PduLengthType dataRequestLength_u16;
    PduIdType dataOldtxPduId_u8;

    Dcm_MsgLenType dataCurrentPageRespLength_u32;


    PduLengthType dataNewdataRequestLength_u16;







    Dcm_MsgType adrActiveTxBuffer_tpu8;
    uint32 dataTimeoutMonitor_u32;




    uint32 dataPagedBufferTimeout_u32;

    uint8 PreviousSessionIndex;

}Dcm_DsldInternalStructureType_tst;
# 509 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
typedef struct
{
    PduInfoType Dcm_DslRxPduBuffer_st;



    uint8 Dcm_DslServiceId_u8;
    boolean Dcm_DslFuncTesterPresent_b;
    boolean Dcm_DslCopyRxData_b;
}Dcm_DslRxPduArray_tst;

typedef struct
{
    uint32 dataTimeoutP2StrMax_u32;
    uint32 dataTimeoutP2max_u32;



}Dcm_DsldTimingsType_tst;

typedef struct
{
    Dcm_MsgType TxBuffer_tpu8;
    Dcm_MsgLenType TxResponseLength_u32 ;
    boolean isForceResponsePendRequested_b;
}Dcm_DslTxType_tst;
# 581 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 582 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern void Dcm_CheckActiveDiagnosticStatus(uint8 dataNetworkId);

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 585 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2







# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 593 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern uint8 Dcm_DslWaitPendBuffer_au8[8];



extern uint8 Dcm_CurProtocol_u8;



extern Dcm_SesCtrlType Dcm_CC_ActiveSession_u8;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 604 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 606 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern const Dcm_Dsld_protocol_tableType * Dcm_DsldProtocol_pcst;
extern const uint8 * Dcm_DsldRxTable_pcu8;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 610 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 612 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2



extern Dcm_DslRxPduArray_tst Dcm_DslRxPduArray_ast[3u];

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 618 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 226 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 227 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 620 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern boolean Dcm_isFuncTPOnOtherConnection_b;
extern boolean Dcm_isInitialised_b;
extern boolean Dcm_acceptRequests_b;
extern boolean Dcm_isCancelTransmitInvoked_b;
extern boolean Dcm_isStopProtocolInvoked_b;




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 238 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 239 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 630 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 226 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 227 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 634 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern boolean Dcm_ReadyForBoot_b;
extern boolean Dcm_SesChgOnWarmResp_b;


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 238 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 239 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 639 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2


# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 642 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern const Dcm_Dsld_connType * Dcm_DsldConnTable_pcst;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 645 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 647 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern Dcm_DsldInternalStructureType_tst Dcm_DsldGlobal_st;







# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 656 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 658 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern Dcm_DsldTimingsType_tst Dcm_DsldTimer_st;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 661 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 226 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 227 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 663 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern boolean Dcm_isGeneralRejectSent_b;



extern boolean Dcm_isSessionStored_b;




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 238 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 239 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 673 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 675 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern PduInfoType Dcm_DsldPduInfo_st ;




extern Dcm_DslTxType_tst Dcm_DslTransmit_st;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 683 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 685 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern const Dcm_Dsld_ServiceType * Dcm_DsldSrvTable_pcst;




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 691 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 693 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern Dcm_MsgContextType Dcm_DsldMsgContext_st;




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 699 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 205 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 206 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 701 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern const uint8 * Dcm_DsldSessionTable_pcu8;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 217 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 704 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 771 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 226 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 227 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 772 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern boolean Dcm_isObdRequestReceived_b;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 238 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 239 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 775 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 780 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern StatusType Dcm_P2OrS3TimerStatus_uchr;




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 786 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 248 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 790 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern StatusType Dcm_PagedBufferTimerStatus_uchr;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 259 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 260 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 793 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 810 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 184 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 185 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 811 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
extern boolean Dcm_LowPrioReject_b;

# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 196 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 197 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 814 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2







# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 822 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2



extern void Dcm_Prv_TriggerTransmit(void);
# 874 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
extern void Dcm_Prv_DslStateMachine(void);
# 885 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
extern void Dcm_Prv_CC_Mainfunction (void);

extern void Dcm_Prv_CC_TxConfirmation (void);
extern void Dcm_Prv_SendResponse(const PduInfoType * adrPduStrucutre_pcst);



extern void Dcm_DslDsdRestoreSecaTimer(void);



extern Dcm_MsgItemType * Dcm_GetActiveBuffer(void);

extern boolean Dcm_Prv_CheckTotalResponseLength(Dcm_MsgLenType TotalResLen_u32 );



extern uint8 Dcm_GetActiveConnectionIdx_u8 (void);
extern void Dcm_DslDsdWarmStart(void);







extern void Dcm_Prv_PagedBufferTimeout(void);
# 920 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
Std_ReturnType Dcm_Prv_CancelTransmit(void);






extern void Dcm_Prv_ResetCopyRxDataStatus ( PduIdType RxPduId );
# 939 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 940 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2




# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 945 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2




extern uint32 Dcm_GetSignal_u32(uint8 xDataType_u8,
                                           uint16 posnStart_u16,
                                           const uint8 * adrReqBuffer_u8,
                                           uint8 dataEndianness_u8);
# 963 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
extern void Dcm_StoreSignal(uint8 xDataType_u8,
                                           uint16 posnStart_u16,
                                           uint8 * adrRespBuffer_u8,
                                           uint32 dataSignalValue_u32,
                                           uint8 dataEndianness_u8);



# 1 ".\\output\\inc/Dcm_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 1




# 1 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 1
# 28 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_MemMap.h" 2
# 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_MemMap.h" 2
# 2 ".\\output\\inc/Dcm_MemMap.h" 2
# 972 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h" 2
# 1037 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
static __inline__ void Dcm_DspConfirmation
                                       (
                             Dcm_IdContextType dataIdContext_u8,
                             PduIdType dataRxPduId_u8,
                             uint16 dataSourceAddress_u16,
                             Dcm_ConfirmationStatusType status_u8
                                       )

{ if(Dcm_DsldSrvTable_pcst[Dcm_DsldGlobal_st.idxService_u8].Dcm_ConfirmationService !=((Dcm_ConfirmationApiType)((void *)0)))
    {
        (Dcm_DsldSrvTable_pcst[Dcm_DsldGlobal_st.idxService_u8].Dcm_ConfirmationService)(dataIdContext_u8,dataRxPduId_u8,dataSourceAddress_u16,status_u8);
    }
}

static __inline__ boolean DCM_IS_KWPPROT_ACTIVE(void)
{
    boolean retval_b = (0 != 0);



    return retval_b;
}
# 2 ".\\output\\inc/DcmCore_DslDsd_Prot.h" 2
# 33 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6_Inf.h" 2
# 4 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode6.c" 2
