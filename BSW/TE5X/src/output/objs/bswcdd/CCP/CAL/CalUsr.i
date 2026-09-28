# 1 "bswcdd\\CCP\\CAL\\CalUsr.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCP\\CAL\\CalUsr.c"
# 32 "bswcdd\\CCP\\CAL\\CalUsr.c"
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
# 33 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 1 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 1
# 37 "bswcdd\\CCP\\CAL\\CALUSR_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 2
# 58 "bswcdd\\CCP\\CAL\\CALUSR_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 2
extern uint32 CalUsr_u32ChkDataCrc;
extern uint32 CalUsr_u32POCalibDnEnaMskA;
extern uint32 CalUsr_u32POCalibDnEnaMskB;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 64 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 2
# 34 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 1 "bswcdd\\CCP\\CAL\\CALUSR.h" 1
# 37 "bswcdd\\CCP\\CAL\\CALUSR.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
# 53 "bswcdd\\CCP\\CAL\\CALUSR.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 54 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
extern const uint32 CalUsr_ku32CalibUpdEnaMskA;
extern const uint32 CalUsr_ku32CalibUpdEnaMskB;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 58 "bswcdd\\CCP\\CAL\\CALUSR.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
extern boolean CalUsr_bIsCalibUpdEna;
extern uint32 CalUsr_u32PODataCRC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 "bswcdd\\CCP\\CAL\\CALUSR.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 76 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
boolean CALUsr_bIsCalDownldEnabled(void);
boolean CalUsr_bVerifyCalData(void);
void CalUsr_vidInit(void);
void CalUsr_vidSchHandler(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
# 35 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 1 ".\\output\\inc/CCPUSR_CFG.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 28 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 1
# 19 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
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
# 29 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 1 ".\\output\\inc/CCP_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 63 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
typedef uint8_least CCP_tudtCmdSts;

typedef uint8_least CCP_tudtState;
typedef uint8_least CCP_tudtCmdCode;

typedef CCP_tudtCmdSts (*CCP_tpfudtSrvFcn)(void);

typedef struct
{
   uint32 u32Adr;
   uint8 u8Extn;
}
CCP_tstrMta;

typedef struct
{
   uint8 u8NoOdt;
   uint8 u8FirstPid;

}
CCP_tstrDaqListStatCfg;



typedef struct
{
   boolean vbStopTx;
   boolean bLstOdtProcd;
   uint8 vu8TxSt;

   uint8 u8OdtLstIdx;

   boolean vbEvtSet;
   uint8 u8EveChn;

   uint8 vu8CfgChgdCtr;


   uint8 u8CfgChgdAckdCtr;

   uint8 vu8Mod;

   uint16 u16Ctr;
   uint16 u16Pslr;
}
CCP_tstrDaqListDynCfg;


typedef struct
{
   uint8 u8ListIdx;

   uint8 u8OdtIdx;

   uint8 u8ElmIdx;


}
CCP_tstrDaqListSeldElm;


typedef struct
{

   uint16 u16Dummy;
}
CCP_tstrIniPrms;
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2
# 126 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 127 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2


extern const uint8 CCP_kaudtDevId[sizeof("A5H_BSWTC26")];


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2
# 2 ".\\output\\inc/CCP_Cfg.h" 2
# 30 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2


extern const PduIdType CCPUSR_kaudtDtoMsgID[1];


extern const PduIdType CCPUSR_kaudtDaqMsgID[1][3];


# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 96 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2

void CCPUSR_vidTxConfirmation_DAQ_BASE_FAST(PduIdType TxPduId);
void CCPUSR_vidTxConfirmation_DAQ_SPY(PduIdType TxPduId);
void CCPUSR_vidTxConfirmation_DAQ_SLOW(PduIdType TxPduId);


# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 103 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 2 ".\\output\\inc/CCPUSR_CFG.h" 2
# 36 "bswcdd\\CCP\\CAL\\CalUsr.c" 2

# 1 ".\\output\\inc/IOHAL_Cfg_I.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2
# 45 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 69 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section ".text" ax
# 46 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2




extern uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER_2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2 (void);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER_3 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1 (void);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_DO2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_KEY_ON (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DO1 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_CHG_ON (void);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3 (uint16 u16State);




extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE(void);





extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V(void);


# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 95 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section
# 223 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2
# 2 ".\\output\\inc/IOHAL_Cfg_I.h" 2
# 38 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 1 ".\\output\\inc/Crc.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2

# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 1
# 97 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 84 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 98 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint8 CRC_8_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 103 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 84 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint8 CRC_8H2F_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 112 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 75 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint16 CRC_16_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 79 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 121 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint32 CRC_32_REV_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 130 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 134 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint32 CRC_32P4_REV_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 139 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2
# 30 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
typedef union
{
    const uint8* b8Ptr;
    const uint16* b16Ptr;
}Crc_DataType;
# 59 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2

extern void Crc_GetVersionInfo(Std_VersionInfoType * const VersionInfo);
extern uint8 Crc_CalculateCRC8(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall);
extern uint8 Crc_CalculateCRC8H2F(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall);
extern uint16 Crc_CalculateCRC16(const uint8* Crc_DataPtr, uint32 Crc_Length, uint16 Crc_StartValue16, boolean Crc_IsFirstCall);
extern uint32 Crc_CalculateCRC32(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall);
extern uint32 Crc_CalculateCRC32P4(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall);


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 52 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 53 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2
# 2 ".\\output\\inc/Crc.h" 2
# 39 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 52 "bswcdd\\CCP\\CAL\\CalUsr.c"
# 1 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h" 1
# 90 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h"
#pragma section ".text" ax
# 53 "bswcdd\\CCP\\CAL\\CalUsr.c" 2


# 1 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h" 1
# 140 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h"
#pragma section
# 56 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 65 "bswcdd\\CCP\\CAL\\CalUsr.c"
# 1 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h" 1
# 90 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h"
#pragma section ".text" ax
# 66 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
# 79 "bswcdd\\CCP\\CAL\\CalUsr.c"
void CalUsr_vidInit(void)
{
   uint32 u32LocCalUsrCRCAddr;
   uint32* pu32LocDst;

   u32LocCalUsrCRCAddr = (0x80058000 + 0x8000 - 4);
   pu32LocDst = (uint32*)(u32LocCalUsrCRCAddr);
   CalUsr_u32PODataCRC = *pu32LocDst;
   CalUsr_u32POCalibDnEnaMskA = CalUsr_ku32CalibUpdEnaMskA;
   CalUsr_u32POCalibDnEnaMskB = CalUsr_ku32CalibUpdEnaMskB;
   CalUsr_u32ChkDataCrc = 0;
}
# 103 "bswcdd\\CCP\\CAL\\CalUsr.c"
boolean CalUsr_bVerifyCalData(void)
{
   boolean bLocIsCalVerifyOK = (0 != 0);
   uint32 u32LocChkCRC = 0;
   uint32 u32LocSaveCRC = 0;
   uint32 u32LocCalUsrStartAddr;
   uint32 u32LocCalUsrCRCAddr;
   uint8* pu8LocDst;
   uint32* pu32LocCrc;

   u32LocCalUsrStartAddr = 0x80058000;
   pu8LocDst = (uint8*)u32LocCalUsrStartAddr;

   if ( ((0xAAAAAAAA) == CalUsr_u32POCalibDnEnaMskA)
      && ((0xBBBBBBBB) == CalUsr_u32POCalibDnEnaMskB))
   {
      if (0x8000 > ((1024) + 2))
      {

         u32LocChkCRC = Crc_CalculateCRC32( pu8LocDst, (1024), 0xFFFFFFFFU, (1 != 0));
         CalUsr_u32ChkDataCrc = u32LocChkCRC;

         u32LocCalUsrCRCAddr = (0x80058000 + 0x8000 - 4);
         pu32LocCrc = (uint32*)(u32LocCalUsrCRCAddr);
         u32LocSaveCRC = *pu32LocCrc;

         if (0xFFFFFFFF != u32LocChkCRC)
         {
            if (u32LocChkCRC == u32LocSaveCRC)
            {
               bLocIsCalVerifyOK = (1 != 0);
            }
            else
            {
               bLocIsCalVerifyOK = (0 != 0);
            }
         }
         else
         {
            bLocIsCalVerifyOK = (0 != 0);
         }
      }
      else
      {
         bLocIsCalVerifyOK = (0 != 0);
      }
   }
   else
   {
      bLocIsCalVerifyOK = (0 != 0);
   }

   return bLocIsCalVerifyOK;
}
# 169 "bswcdd\\CCP\\CAL\\CalUsr.c"
boolean CALUsr_bIsCalDownldEnabled(void)
{
   boolean bLocIsDnEna;


   if ( ((0xAAAAAAAA) == CalUsr_ku32CalibUpdEnaMskA)
      && ((0xBBBBBBBB) == CalUsr_ku32CalibUpdEnaMskB))
   {
      bLocIsDnEna = (1 != 0);
   }
   else
   {
      bLocIsDnEna = (0 != 0);
   }
   CalUsr_bIsCalibUpdEna = bLocIsDnEna;

   return bLocIsDnEna;
}


# 1 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h" 1
# 140 "bswcdd\\CCP\\CAL\\CALUSR_MemMap.h"
#pragma section
# 190 "bswcdd\\CCP\\CAL\\CalUsr.c" 2
