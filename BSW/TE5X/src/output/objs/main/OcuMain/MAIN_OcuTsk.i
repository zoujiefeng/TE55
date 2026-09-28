# 1 "main\\OcuMain\\MAIN_OcuTsk.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "main\\OcuMain\\MAIN_OcuTsk.c"
# 32 "main\\OcuMain\\MAIN_OcuTsk.c"
# 1 ".\\output\\inc/MAIN_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_Cfg.h" 1
# 2 ".\\output\\inc/MAIN_Cfg.h" 2
# 33 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 41 "main\\OcuMain\\MAIN_OcuTsk.c"
# 1 "main\\OcuMain\\MAIN_OcuTsk.h" 1
# 37 "main\\OcuMain\\MAIN_OcuTsk.h"
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
# 38 "main\\OcuMain\\MAIN_OcuTsk.h" 2
# 59 "main\\OcuMain\\MAIN_OcuTsk.h"
void MAIN_OcuTaskInit(void);
void MAIN_vidOcuTask1ms(void);
void MAIN_vidOcuTask2ms(void);
void MAIN_vidOcuTask5ms(void);
void MAIN_vidOcuTask10ms(void);
void MAIN_vidOcuTask100ms(void);
void MAIN_vidOcuTask200ms(void);

extern void MAIN_vidOcuPwmTreatment(void);
extern boolean OMAIN_bGetDiagAllowCondition(void);
extern boolean OMAIN_vidGetProgCondition(void);

extern boolean MAIN_bGetOcuSoftOvcFlag_U(void);
extern boolean MAIN_bGetOcuSoftOvcFlag_V(void);
extern boolean MAIN_bGetOcuSoftOvcFlag_W(void);
extern boolean MAIN_bGetOcuSoftOvBhvFlag(void);
extern boolean MAIN_bGetOcuIgbtLSFaultFlag(void);
extern boolean MAIN_bGetOcuIgbtHSFaultFlag(void);
extern void MAIN_vidClrOcuFaultFlag(void);
# 42 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/MAIN_ECPCfg_EPS.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_EPS.h" 1






# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h" 2
# 1 ".\\output\\inc/MAIN_Cfg.h" 1
# 9 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h" 2
# 1 ".\\output\\inc/MAIN_RollErrCode.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h" 2




typedef enum{
    eMAIN_REC_BUF_IDX_MCU1 = 0,
    eMAIN_REC_BUF_IDX_MCU2,
    eMAIN_REC_BUF_IDX_ACM,
    eMAIN_REC_BUF_IDX_EPS,
    eMAIN_REC_BUF_IDX_PDU,
    eMAIN_REC_BUF_NUM
}MAIN_REC_BUF_INDEX;
# 32 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
extern void MAIN_REC_vidClrErrCode(const uint8 ku8BufNum);
# 42 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
extern void MAIN_REC_vidSetErrCode(const uint8 ku8BufNum, const uint8 u8ErrCod);
# 52 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
extern uint8 MAIN_REC_u8RdErrCode(const uint8 ku8BufNum);
# 2 ".\\output\\inc/MAIN_RollErrCode.h" 2
# 10 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h" 2


# 1 ".\\output\\inc/J1939.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939TP.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939TP.h" 2
# 23 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939TP.h"
typedef struct J1939_FaultCfg{
   uint16 u16FMI;
   uint16 u16SPNIdx;
   uint32 u32SPN;
}J1939_FaultCfg;

typedef struct J1939_EcuVarSet{
   uint8 u8TxFrameCnt;
   uint8 u8PackFrameNum;
   uint8 u8TgtMainState;
   uint8 u8CurMainState;
   uint8 u8CurFaultNum;
   uint16 u16TaskCnt;
}J1939_EcuVarSet;

typedef struct J1939_EcuCfg
{
   uint16 u16SPNNum;
   uint8 u8FillByte;

   uint8 *pau8SPNBuf;
   uint32 *pau32StateBuf;

   uint8 *pau8DM1TxBuf;
   uint8 *pau8BAMTxBuf;
   uint8 *pau8TPDTTxBuf;

   J1939_EcuVarSet *ptVarSet;

   void (*vidSPNBufInit)(void);
   void (*vidSendDM1)(void);
   void (*vidSendBAM)(void);
   void (*vidSendTPDT)(void);
}J1939_EcuCfg;




extern void J1939_vidSPNHandler(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
extern void J1939_vidMainFunction(const J1939_EcuCfg * const kpktEcuCfg);
void J1939_vidDM1_Periodic_Send_Ctr_Func( boolean Sta ) ;
# 14 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939.h" 2
# 2 ".\\output\\inc/J1939.h" 2
# 13 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h" 2
# 38 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h"
typedef struct MAIN_ECPParam MAIN_ECPParam;
typedef struct MAIN_ECPFaultCfg MAIN_ECPFaultCfg;

typedef void tSetEventStateFuncPtr(const uint16 ku16EventId);




enum {
    MAIN_ECP_FAULT_CODE_00 = 0,
    MAIN_ECP_FAULT_CODE_01,
    MAIN_ECP_FAULT_CODE_02,
    MAIN_ECP_FAULT_CODE_03,
    MAIN_ECP_FAULT_CODE_04,
    MAIN_ECP_FAULT_CODE_05,
    MAIN_ECP_FAULT_CODE_06,
    MAIN_ECP_FAULT_CODE_07,
    MAIN_ECP_FAULT_CODE_08,
    MAIN_ECP_FAULT_CODE_09,
    MAIN_ECP_FAULT_CODE_10,
    MAIN_ECP_FAULT_CODE_11,
    MAIN_ECP_FAULT_CODE_12,
    MAIN_ECP_FAULT_CODE_13,
    MAIN_ECP_FAULT_CODE_14,
    MAIN_ECP_FAULT_CODE_15,
    MAIN_ECP_FAULT_CODE_MAX_NUM
};

typedef enum MAIN_ECPFltStateType{
    eMAIN_ECP_FAULT_NOT_LOGGED = 0,
    eMAIN_ECP_FAULT_IS_LOGGED
}MAIN_ECPFltStateType;

typedef enum MAIN_ECPCfgTabEndType{
    eMAIN_ECP_FAULT_CFG_TABLE_UNDEF = 0,
    eMAIN_ECP_FAULT_CFG_TABLE_IS_END,
    eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE
}MAIN_ECPCfgTabEndType;

typedef enum MAIN_ECPTabLogicType{
    eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF = 0,
    eMAIN_ECP_CFG_TABLE_LOGIC_AND,
    eMAIN_ECP_CFG_TABLE_LOGIC_OR
}MAIN_ECPTabLogicType;

struct MAIN_ECPFaultCfg{

    J1939_FaultCfg tJ1939FaultCfg;

    uint16 u16DTCEventId;

    uint8 u8RollErrCode;
    uint8 u8InvtFaultByteIdx;
    uint8 u8InvtFaultBitMask;

    MAIN_ECPTabLogicType eTableLogic;
    MAIN_ECPCfgTabEndType eCfgTableEnd;

    uint16 (*u16FaultLogged)(void);
    void (*vidUserCallout)(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
};

typedef struct MAIN_ECPEcuCfg{
    MAIN_REC_BUF_INDEX eRecBufIdx;

    const uint16 *pku16FaultNum;
    const MAIN_ECPFaultCfg *pktFaultCfg;
    void (*vidInvalidEventHandler)(tSetEventStateFuncPtr tFuncPtr);


    const J1939_EcuCfg * pktJ1939EcuCfg;

}MAIN_ECPEcuCfg;




extern void MAIN_ECP_vidModuleInit(void);
extern void MAIN_ECP_vidPollingFault(const uint8 ku8EcuId, MAIN_ECPParam * const kptUserParam, const uint32 ku32ParamSize);

extern void MAIN_ECP_vidInvalidEventHandler_MCU1(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_MCU2(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_ACM(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_EPS(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_PDU(tSetEventStateFuncPtr tFuncPtr);
# 8 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_EPS.h" 2




typedef struct MAIN_ECPParam{

   uint8 u8LocFaultCode[MAIN_ECP_FAULT_CODE_MAX_NUM];


   boolean bFaultLv0;
   boolean bFaultLv1;
   boolean bFaultLv2;
   boolean bFaultLv3;
   boolean bFaultLv4;
   boolean bFaultLv5;
}MAIN_ECPParam;

enum{
   eMAIN_J1939_SPN_IDX_520615 = 0,
   eMAIN_J1939_SPN_IDX_520616,
   eMAIN_J1939_SPN_IDX_520617,
   eMAIN_J1939_SPN_IDX_520618,
   eMAIN_J1939_SPN_IDX_520619,
   eMAIN_J1939_SPN_IDX_520620,
   eMAIN_J1939_SPN_IDX_520622,
   eMAIN_J1939_SPN_IDX_520623,
   eMAIN_J1939_SPN_IDX_520624,
   eMAIN_J1939_SPN_IDX_520625,
   eMAIN_J1939_SPN_IDX_520626,
   eMAIN_J1939_SPN_IDX_520627,
   eMAIN_J1939_SPN_IDX_520628,
   eMAIN_J1939_SPN_IDX_520629,
   eMAIN_J1939_SPN_MAX_NO
};
# 2 ".\\output\\inc/MAIN_ECPCfg_EPS.h" 2
# 43 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/MAIN_RollErrCode.h" 1
# 44 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/_MainModule.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\_MainModule.h" 1






# 1 ".\\output\\inc/MAIN_RollErrCode.h" 1
# 8 ".\\output\\inc/..\\..\\main\\_MainModule\\_MainModule.h" 2
# 1 ".\\output\\inc/MAIN_OcTrim.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\OCTrim\\MAIN_OCTrim.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 ".\\output\\inc/..\\..\\main\\_MainModule\\OCTrim\\MAIN_OCTrim.h" 2
# 69 ".\\output\\inc/..\\..\\main\\_MainModule\\OCTrim\\MAIN_OCTrim.h"
typedef enum MAIN_CONTROL_UNIT_INDEX{
   eMAIN_UNIT_MCU_INDEX = 0,
   eMAIN_UNIT_GCU_INDEX,
   eMAIN_MAX_UNIT_NUM
}MAIN_CONTROL_UNIT_INDEX;
# 86 ".\\output\\inc/..\\..\\main\\_MainModule\\OCTrim\\MAIN_OCTrim.h"
extern const sint32 MAIN_aks32OCTrimNvm_def[5];
extern const sint32 GMAIN_aks32OCTrimNvm_def[5];




extern uint32 MAIN_u32FixOcDataBuf[];
# 105 ".\\output\\inc/..\\..\\main\\_MainModule\\OCTrim\\MAIN_OCTrim.h"
extern boolean MAIN_OCT_bCheckOcTrimData(uint8 u8Unit);
extern void MAIN_OCT_vidGetOcTrimData(void);
extern void MAIN_OCT_vidOcDataMng(void);
extern void MAIN_OCT_SetOcDataStoreReq(boolean bStoreReq);
extern void MAIN_OCT_vidRestoreOcBlockDefaults(uint8 u8Unit);

extern void MAIN_OCT_vidTrigOcCalib(const uint8 ku8Unit);
extern uint8 MAIN_OCT_u8GetOcCalibState(const uint8 ku8Unit);
extern void MAIN_OCT_vidSetOcFinishFlg(const uint8 ku8Unit, boolean bFlag);
extern void MAIN_OCT_vidSetOcFailureFlg(const uint8 ku8Unit, boolean bFlag);
extern void MAIN_OCT_vidSetOcNotRatFlg(const uint8 ku8Unit, boolean bFlag);
extern boolean MAIN_OCT_bGetOcModeEna(const uint8 ku8Unit);
extern boolean MAIN_OCT_bGetOcRdResultFlag(const uint8 ku8Unit);
extern boolean MAIN_OCT_bGetOcStartFlag(const uint8 ku8Unit);
# 2 ".\\output\\inc/MAIN_OcTrim.h" 2
# 9 ".\\output\\inc/..\\..\\main\\_MainModule\\_MainModule.h" 2
# 1 ".\\output\\inc/MAIN_RunTime.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\RunTime\\MAIN_RunTime.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 ".\\output\\inc/..\\..\\main\\_MainModule\\RunTime\\MAIN_RunTime.h" 2
# 29 ".\\output\\inc/..\\..\\main\\_MainModule\\RunTime\\MAIN_RunTime.h"
extern uint64 MAIN_u64RunTime_NVM;
extern const uint64 MAIN_u64RunTimeRom_NVM;
# 43 ".\\output\\inc/..\\..\\main\\_MainModule\\RunTime\\MAIN_RunTime.h"
void MAIN_vidGetSystemRunTime(void);
extern uint32 MAIN_u32GetRunTime_s(void);
extern uint32 MAIN_u32GetRunTime_ms(void);
extern uint32 MAIN_u32GetFactoryRunTime_s(void);
extern void MAIN_vidUpdateSystemRunTime(void);
# 2 ".\\output\\inc/MAIN_RunTime.h" 2
# 10 ".\\output\\inc/..\\..\\main\\_MainModule\\_MainModule.h" 2
# 1 ".\\output\\inc/MAIN_CalibData.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h" 2
# 21 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
enum eCalibIndex{
   eMAIN_CALIB_BUF_UI_INDEX = 0,
   eMAIN_CALIB_BUF_VI_INDEX,
   eMAIN_CALIB_BUF_WI_INDEX,
   eMAIN_CALIB_BUF_VO_INDEX,
   eMAIN_CALIB_BUF_VALID_PARAM_NO,

   eMAIN_CALIB_BUF_MAX_NO = 16
};

enum{
   eMAIN_CALIB_IDX_MCU1 = 0,
   eMAIN_CALIB_IDX_MCU2,
   eMAIN_CALIB_IDX_ACM,
   eMAIN_CALIB_IDX_EPS,
   eMAIN_CALIB_ECU_NO
};

enum eRcGainIndex{
   eMAIN_CALIB_BUF_RC00_INDEX = 0,
   eMAIN_CALIB_BUF_RC01_INDEX,
   eMAIN_CALIB_BUF_RC02_INDEX,
   eMAIN_CALIB_BUF_RC03_INDEX,
   eMAIN_CALIB_BUF_RC04_INDEX,
   eMAIN_CALIB_BUF_RC05_INDEX,
   eMAIN_CALIB_BUF_RC06_INDEX,
   eMAIN_CALIB_BUF_RC07_INDEX,
   eMAIN_CALIB_BUF_RC08_INDEX,
   eMAIN_CALIB_BUF_RC09_INDEX,
   eMAIN_CALIB_BUF_RC10_INDEX,
   eMAIN_CALIB_BUF_RC11_INDEX,
   eMAIN_CALIB_BUF_RC12_INDEX,
   eMAIN_CALIB_BUF_RC13_INDEX,
   eMAIN_CALIB_BUF_RC14_INDEX,
   eMAIN_CALIB_BUF_RC15_INDEX,
   eMAIN_CALIB_BUF_RC16_INDEX,
   eMAIN_CALIB_BUF_VALID_RC_NO,

   eMAIN_CALIB_BUF_MAX_RC_NO = 25
};




extern const uint16 RC_kau16VoltageGain[eMAIN_CALIB_BUF_MAX_RC_NO];
# 77 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
extern uint16 MAIN_au16CalibParamNvm[eMAIN_CALIB_ECU_NO][eMAIN_CALIB_BUF_MAX_NO];
extern uint16 RC_au16VoltageGain[eMAIN_CALIB_BUF_MAX_RC_NO];
# 87 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
extern void MAIN_CAL_vidCalibDataMng(void);
extern void MAIN_CAL_vidCheckAllCalibData(void);
extern void MAIN_CAL_vidSetCalibDataStoreReq(boolean bStoreReq);
extern uint16 * MAIN_CAL_pu16GetCalDataBuf(const uint8 ku8EcuId);
extern uint16 MAIN_CAL_u16GetRcGainData(const uint8 ku8R);
# 2 ".\\output\\inc/MAIN_CalibData.h" 2
# 11 ".\\output\\inc/..\\..\\main\\_MainModule\\_MainModule.h" 2
# 2 ".\\output\\inc/_MainModule.h" 2
# 45 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/MAIN_FFUpdate.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\FFUpdate\\MAIN_FFUpdate.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 ".\\output\\inc/..\\..\\main\\_MainModule\\FFUpdate\\MAIN_FFUpdate.h" 2
# 42 ".\\output\\inc/..\\..\\main\\_MainModule\\FFUpdate\\MAIN_FFUpdate.h"
extern void MAIN_FFDataUpdate_1ms(void);
extern void MAIN_FFDataUpdate_10ms(void);
extern void MAIN_FFDataUpdate_100us(void);
extern void GMAIN_FFDataUpdate_1ms(void);
extern void GMAIN_FFDataUpdate_10ms(void);
extern void GMAIN_FFDataUpdate_100us(void);
extern void AMAIN_FFDataUpdate_1ms(void);
extern void AMAIN_FFDataUpdate_10ms(void);
extern void AMAIN_FFDataUpdate_100us(void);
extern void OMAIN_FFDataUpdate_1ms(void);
extern void OMAIN_FFDataUpdate_10ms(void);
extern void OMAIN_FFDataUpdate_100us(void);
# 2 ".\\output\\inc/MAIN_FFUpdate.h" 2
# 46 "main\\OcuMain\\MAIN_OcuTsk.c" 2
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
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
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
# 101 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern void CAN02_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
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
# 47 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/IOHAL.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h"
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
# 33 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 2
# 2 ".\\output\\inc/IOHAL.h" 2
# 48 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/MAIN_MSG_Auto_Can01_L.h" 1
# 1 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 1
# 11 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h"
# 1 ".\\output\\inc/BSW.h" 1
# 12 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 2
# 1 ".\\output\\inc/Com_Cfg_SymbolicNames.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_SymbolicNames.h" 1
# 2 ".\\output\\inc/Com_Cfg_SymbolicNames.h" 2
# 13 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 2
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
# 14 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 2
# 1 ".\\output\\inc/Com.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h" 1
# 22 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
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
# 15 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 206 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 21 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 2

extern uint8 MAIN_MSGu8Can01_Rx01_PDUMC1_buf[8];
extern uint8 MAIN_MSGu8Can01_Rx02_HSMC1_buf[8];
extern uint8 MAIN_MSGu8Can01_Rx03_HSSTC_buf[8];
extern uint8 MAIN_MSGu8Can01_Rx04_ACUMC1_buf[8];
extern uint8 MAIN_MSGu8Can01_Rx05_AIR1_buf[8];
extern uint8 MAIN_MSGu8Can01_Rx06_AIR1_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx01_PDUST1_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx02_PDUST2_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx03_PDUST3_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx04_PDUST4_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx05_HSST1_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx06_HSST2_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx07_ACUST1_buf[8];
extern uint8 MAIN_MSGu8Can01_Tx08_ACUST2_buf[8];

extern uint8 MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw;
extern uint8 MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw;
extern uint8 MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw;
extern uint8 MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw;
extern uint8 MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw;
extern uint8 MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw;
extern uint8 MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw;
extern uint16 MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw;
extern uint16 MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw;
extern uint8 MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw;
extern uint8 MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw;
extern uint8 MAIN_MSGu8Can01_Tx02_Software_VersionRaw;
extern uint16 MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw;
extern uint16 MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw;
extern uint16 MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw;
extern uint16 MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw;
extern uint16 MAIN_MSGu16Can01_Tx05_Output_CurrentRaw;
extern uint8 MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw;
extern uint8 MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw;
extern uint8 MAIN_MSGu8Can01_Tx06_Input_VoltageRaw;
extern uint8 MAIN_MSGu8Can01_Tx06_Software_VersionRaw;
extern uint8 MAIN_MSGu8Can01_Tx07_Input_VoltageRaw;
extern uint8 MAIN_MSGu8Can01_Tx07_Output_VoltageRaw;
extern uint8 MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw;
extern uint8 MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw;
extern uint8 MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw;
extern uint8 MAIN_MSGu8Can01_Tx08_Software_VersionRaw;

extern boolean MAIN_MSGbCan01_Rx01_Power_Enable_Signal;
extern boolean MAIN_MSGbCan01_Rx01_Key_Signal;
extern boolean MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable;
extern boolean MAIN_MSGbCan01_Rx01_PTC_Enable_Signal;
extern boolean MAIN_MSGbCan01_Rx01_Upper_Enable_Signal;
extern boolean MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts;
extern boolean MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd;
extern boolean MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd;
extern uint8 MAIN_MSGu8Can01_Rx01_Heartbeat_Signal;
extern uint8 MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST;
extern uint8 MAIN_MSGu8Can01_Rx02_HEARTBEAT;
extern float32 MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed;
extern uint8 MAIN_MSGu8Can01_Rx03_Heartbeat_Signal;
extern boolean MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd;
extern float32 MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed;
extern uint8 MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter;
extern float32 MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq;
extern float32 MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq;
extern float32 MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq;
extern float32 MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq;
extern float32 MAIN_MSGf32Can01_Tx01_Low_input_voltage;
extern float32 MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage;
extern float32 MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage;
extern float32 MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp;
extern float32 MAIN_MSGf32Can01_Tx01_Precharg_time_consumption;
extern boolean MAIN_MSGbCan01_Tx01_Enable_signal;
extern boolean MAIN_MSGbCan01_Tx01_Key_signal;
extern boolean MAIN_MSGbCan01_Tx01_Precharge_contactor_on;
extern boolean MAIN_MSGbCan01_Tx01_Positive_contactor_on;
extern boolean MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor;
extern boolean MAIN_MSGbCan01_Tx01_Positive_contactor_status ;
extern boolean MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal;
extern boolean MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor;
extern uint8 MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback;
extern uint8 MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command;
extern uint8 MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command;
extern boolean MAIN_MSGbCan01_Tx02_PTC_Contactor_Status;
extern boolean MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On;
extern boolean MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On;
extern boolean MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status;
extern uint8 MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code;
extern float32 MAIN_MSGf32Can01_Tx02_Software_Version;
extern float32 MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor;
extern uint8 MAIN_MSGu8Can01_Tx02_Heartbeat_Signal;
extern boolean MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status;
extern uint8 MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On;
extern uint8 MAIN_MSGu8Can01_Tx02_PTCContactor_On;
extern uint8 MAIN_MSGu8Can01_Tx02_PTCContactor2_On;
extern uint8 MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors;
extern uint8 MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch;
extern uint8 MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch;
extern float32 MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value;
extern float32 MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value;
extern float32 MAIN_MSGf32Can01_Tx04_Chargingpile_voltage;
extern uint8 MAIN_MSGu8Can01_Tx05_Heartbeat_Signal;
extern uint16 MAIN_MSGu16Can01_Tx05_Motor_Speed;
extern float32 MAIN_MSGf32Can01_Tx05_Output_Current;
extern float32 MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp;
extern uint8 MAIN_MSGu8Can01_Tx05_Motor_Sts;
extern uint8 MAIN_MSGu8Can01_Tx05_Fault_Level;
extern float32 MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp;
extern float32 MAIN_MSGf32Can01_Tx06_Input_Voltage;
extern uint8 MAIN_MSGu8Can01_Tx06_Input_Current;
extern uint8 MAIN_MSGu8Can01_Tx06_Internal_FaultCode;
extern float32 MAIN_MSGf32Can01_Tx06_Software_Version;
extern float32 MAIN_MSGf32Can01_Tx07_Input_Voltage;
extern uint8 MAIN_MSGu8Can01_Tx07_Input_Current;
extern float32 MAIN_MSGf32Can01_Tx07_Output_Voltage;
extern uint8 MAIN_MSGu8Can01_Tx07_Output_Current;
extern float32 MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp;
extern float32 MAIN_MSGf32Can01_Tx07_AirCompressor_Temp;
extern uint8 MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts;
extern boolean MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts;
extern uint8 MAIN_MSGu8Can01_Tx07_Heartbeat_Signal;
extern float32 MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed;
extern uint8 MAIN_MSGu8Can01_Tx08_Internal_Fault_Code;
extern float32 MAIN_MSGf32Can01_Tx08_Software_Version;



# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 247 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
#pragma section
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 180 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h" 2
# 2 ".\\output\\inc/MAIN_MSG_Auto_Can01_L.h" 2
# 49 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 "main\\OcuMain\\MAIN_OcuL.h" 1
# 37 "main\\OcuMain\\MAIN_OcuL.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "main\\OcuMain\\MAIN_OcuL.h" 2
# 54 "main\\OcuMain\\MAIN_OcuL.h"
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
# 55 "main\\OcuMain\\MAIN_OcuL.h" 2
extern const boolean OMAIN_HARDBenchOnC;
extern const boolean OMAIN_VSIBenchOnWriteDataC;

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
# 59 "main\\OcuMain\\MAIN_OcuL.h" 2


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
# 62 "main\\OcuMain\\MAIN_OcuL.h" 2
extern const float32 OMAIN_f32CanSpeedTgtSetC;
extern const float32 OMAIN_f32UvwOvCurrThdC;
extern const uint32 OMAIN_u32VSICntCkreqESMStartedC;
extern const uint32 OMAIN_u32VSICntCkreqVSIStartedC;
extern const float32 OMAIN_f32OverBhvThdC;

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
# 69 "main\\OcuMain\\MAIN_OcuL.h" 2


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
# 72 "main\\OcuMain\\MAIN_OcuL.h" 2
const uint8 OMAIN_u8IgbtFltConfirmCntC;

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
# 75 "main\\OcuMain\\MAIN_OcuL.h" 2


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
# 78 "main\\OcuMain\\MAIN_OcuL.h" 2

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
# 80 "main\\OcuMain\\MAIN_OcuL.h" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 86 "main\\OcuMain\\MAIN_OcuL.h" 2
extern volatile uint8 OMAIN_u8StopCacheFreezeFrameCnt;
extern uint8 OMAIN_u8DEV_Fault[( 16 )];

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 90 "main\\OcuMain\\MAIN_OcuL.h" 2




boolean OMAIN_bSpeedReadyMng(void);
# 50 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/GMAIN_L.h" 1
# 1 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 1
# 37 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2
# 53 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h"
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
# 54 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2
extern const boolean GMAIN_HARDBenchOnC;
extern const boolean GMAIN_VSIBenchOnWriteDataC;

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
# 58 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2


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
# 61 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2
extern const float32 GMAIN_f32UvwOvCurrThdC;
extern const uint32 GMAIN_u32VSICntCkreqESMStartedC;
extern const uint32 GMAIN_u32VSICntCkreqVSIStartedC;
extern const sint32 GMAIN_s32CurHardDelayC;
extern const sint32 GMAIN_s32ResHardDelayC;
extern const sint32 GMAIN_s32SampleDelayC;

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
# 69 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2


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
# 72 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2
extern const uint8 GMAIN_u8IgbtFltConfirmCntC;

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
# 75 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2


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
# 78 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2
extern const uint16 GMAIN_ku16SpdReadyEstConfirmC;
extern const uint16 GMAIN_u16OverBhvThdC;

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
# 82 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 88 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2
extern boolean GMAIN_bAkdAfterAscReq;
extern boolean GMAIN_bBswReadySts;
extern boolean GMAIN_bResExcFltDetEna;
extern boolean GMAIN_bSoftOvBhvFlg;
extern boolean GMAIN_bSoftOvCurrPhsUFlg;
extern boolean GMAIN_bSoftOvCurrPhsVFlg;
extern boolean GMAIN_bSoftOvCurrPhsWFlg;
extern volatile boolean GMAIN_bSpdReadyEst;
extern boolean GMAIN_bSpeedReadyFlg;
extern boolean GMAIN_bProgConditionOk;
extern volatile float32 GMAIN_f32ElecSpeedRds;
extern volatile float32 GMAIN_f32EmailElecSpeedRds;
extern volatile float32 GMAIN_f32EmailErrThetaRdSurPi;
extern volatile float32 GMAIN_f32EmailMecaSpeedRds;
extern volatile float32 GMAIN_f32EmailMecaSpeedRpm;
extern volatile float32 GMAIN_f32EmailThetaElecRdSurPi;
extern volatile float32 GMAIN_f32ErrThetaRdSurPi;
extern float32 GMAIN_f32IuFrequency;
extern float32 GMAIN_f32IuPeriod;
extern volatile float32 GMAIN_f32MecaSpeedRds;
extern volatile float32 GMAIN_f32MecaSpeedRpm;
extern volatile float32 GMAIN_f32MotSpdEst;
extern float32 GMAIN_f32PWMDutyUPhys;
extern float32 GMAIN_f32PWMDutyVPhys;
extern float32 GMAIN_f32PWMDutyWPhys;
extern volatile float32 GMAIN_f32ThetaElecRdSurPi;
extern volatile float32 GMAIN_f32VsiPwmPeriod;
extern uint32 GMAIN_u32EmailCkreq;
extern volatile uint32 GMAIN_u32EmailPosATimeStamp;
extern uint32 GMAIN_u32IuCycleTim;
extern volatile uint32 GMAIN_u32PosATimeStamp;
extern volatile uint32 GMAIN_u32PosBTimeStamp;
extern uint32 GMAIN_u32PosTreatCkreq;
extern uint32 GMAIN_u32TestVar2;
extern uint8 GMAIN_u8DEV_Fault[( 16 )];
extern volatile uint8 GMAIN_u8IgbtHighFltCnt;
extern volatile uint8 GMAIN_u8IgbtLowFltCnt;
extern volatile uint8 GMAIN_u8StopCacheFreezeFrameCnt;
extern uint16 GMAIN_u16IuCycleCnt;
extern uint16 GMAIN_u16IuMiddleCnt;
extern uint16 GMAIN_u16IuMiddleSum;
extern uint16 GMAIN_u16IuNegtiveCnt;
extern uint16 GMAIN_u16IuNegtiveSum;
extern uint16 GMAIN_u16IuPositiveCnt;
extern uint16 GMAIN_u16IuPositiveSum;
extern uint16 GMAIN_u16SpdReadyEstCnt;
extern uint16 GMAIN_u16VadcBhv;

extern sint32 GMAIN_s32Email2PosTreqDiff;
extern sint32 GMAIN_s32PosA2BDeltTime;
extern uint8 GMAIN_u8UdsSwVerVeh[13];
extern uint8 GMAIN_u8UdsSwVerSup[21];
extern uint8 GMAIN_u8UdsOEMPartNum[13];
extern uint8 GMAIN_u8UdsManufPartNum[12];
extern uint8 GMAIN_u8UdsSupplHwVersion[8];
extern uint8 GMAIN_u8UdsManufHwVersion[13];
extern uint8 GMAIN_u8UdsSupplyerId[10];
extern uint8 GMAIN_u8UdsEcuName[10];
extern uint8 GMAIN_u8UdsEcuSerialNum[12];
extern uint8 GMAIN_u8UdsBootVersion[16];

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 150 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h" 2





boolean GMAIN_bSpeedReadyMng(void);
void GMAIN_vidMotorSpeedEst(const float);
# 2 ".\\output\\inc/GMAIN_L.h" 2
# 51 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/FAULT_Api.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
# 1 ".\\output\\inc/DSM_Drv.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h" 2




typedef uint8 FaultFunctionType;
typedef uint8 FaultIndexType;
typedef uint16 FaultBitFieldType;
typedef FaultBitFieldType FaultMaskType;
typedef uint16 FaultOffsetType;

typedef FaultBitFieldType FaultStateType;

typedef uint8 FaultCntType;
typedef uint8 FaultFailModType;
typedef uint8 FaultFailureLevelType;
typedef uint32 FaultDtcNbType;
typedef uint8 FaultDtcFailTypeType;

typedef struct
{
   FaultDtcNbType DTCNb;
   FaultDtcFailTypeType DTCFt;
   uint8 DTCHistoryCount;
} FaultDtcRecordType;

typedef struct{
   uint32 u32StartIndex;
   uint32 u32StopIndex;
}DSM_tFaultElementIndex;
# 35 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
typedef enum DSM_CONTROL_UNIT_INDEX{
   DSM_UNIT_0 = 0,
   DSM_UNIT_1,
   DSM_UNIT_2,
   DSM_UNIT_3,
   DSM_UNIT_4,
   DSM_UNIT_MAX_NUM
}DSM_CONTROL_UNIT_INDEX;
# 71 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
extern const uint16 FaultEraseRequestC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 75 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
extern uint32 DSM_DtcNumber[( 10 )];
extern volatile uint8 FaultFailureLevel;
extern volatile uint8 DSM_FaultFailureLevel[(DSM_UNIT_MAX_NUM + 1)];
extern uint16 FaultEraseRequest;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 88 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
uint8 DSM_u8GetUnitFaultLevel(uint8 u8UnitIndex);
void FaultClear(uint8 u8LocMotorIndex);
void FaultCounterInit(void);
void FaultDisableAllDTCs(void);
void FaultEnableAllDTCs(void);
void FaultManualErase(void);
void FaultPowerDownManage(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 104 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
# 36 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 2
# 61 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 2
void FaultClearDTCRecord(void);
void FaultDetectionWithFail(uint8 Function, uint8 Type);
void FaultDetectionWithoutFail(uint8 Function, uint8 Type);
void FaultRecordDTC(uint16 FaultOffset);
void FaultRecordDTCContext(const uint16 dTCArrayIdx);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 2
# 37 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 88 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2

extern void FaultClearOneDtcRecord(uint16 dtcIdx);
extern void FaultSaveOneNewDtcRecord(FaultDtcNbType dtcNb, FaultFailModType failMod);
extern void FaultRefreshOneDtcRecord(uint16 dtcIdx, FaultFailModType failMod);

extern boolean FaultDtcNbIsLoggedIgn(FaultDtcNbType dtcNb);


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 98 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 2 ".\\output\\inc/DSM_Drv.h" 2
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/DSM_Drv.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 43 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 44 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern uint8 FaultTableFuncTypeCounter1 [0x122];

extern FaultBitFieldType FaultFunctionTypeDetectedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeLoggedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeAuthorizedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeLogIgnArray [0x59];

extern uint8 FaultFailModCounterTable [21];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 56 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern const FaultCntType FaultFunctionTypeIncs [0x122];
extern const FaultCntType FaultFunctionTypeDecs [0x122];
extern const FaultBitFieldType FaultFunctionTypeIrrArray [0x59];
extern const FaultBitFieldType FaultFunctionTypeAutInitArray [0x59];
extern const FaultBitFieldType FaultFunctionTypeLockedArray [0x59];
extern const FaultBitFieldType FaultFunctionTypeCntIgnArray [0x59];
extern const FaultFailModType FaultFunctionTypeFailModTable [0x122];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern const FaultOffsetType FaultFunctionTypeOffsetTable [0x59 + 1];
extern const FaultDtcNbType FaultFunctionTypeDtcNbTable [0x122];
extern const FaultDtcFailTypeType FaultFunctionTypeDtcFtTable [0x122];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 1354 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1355 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern FaultBitFieldType FaultABSW_COM_Detected;
extern FaultBitFieldType FaultABSW_COM_Logged;

extern FaultBitFieldType FaultABSW_HW2_Detected;
extern FaultBitFieldType FaultABSW_HW2_Logged;

extern FaultBitFieldType FaultABSW_HW_Detected;
extern FaultBitFieldType FaultABSW_HW_Logged;

extern FaultBitFieldType FaultAFSEVBHV_Detected;
extern FaultBitFieldType FaultAFSEVBHV_Logged;

extern FaultBitFieldType FaultAFSEVBLV_Detected;
extern FaultBitFieldType FaultAFSEVBLV_Logged;

extern FaultBitFieldType FaultAFSEVETA_Detected;
extern FaultBitFieldType FaultAFSEVETA_Logged;

extern FaultBitFieldType FaultAFSEVETA_OverDetected;
extern FaultBitFieldType FaultAFSEVETA_OverLogged;

extern FaultBitFieldType FaultAFSEVETA_TempDetected;
extern FaultBitFieldType FaultAFSEVETA_TempLogged;

extern FaultBitFieldType FaultAFSMTMTA_OverDetected;
extern FaultBitFieldType FaultAFSMTMTA_OverLogged;

extern FaultBitFieldType FaultAFSMTMTA_TempDetected;
extern FaultBitFieldType FaultAFSMTMTA_TempLogged;

extern FaultBitFieldType FaultAFTASBDS_Detected;
extern FaultBitFieldType FaultAFTASBDS_Logged;

extern FaultBitFieldType FaultAFTASETP_Detected;
extern FaultBitFieldType FaultAFTASETP_Logged;

extern FaultBitFieldType FaultAFTASMTP_Detected;
extern FaultBitFieldType FaultAFTASMTP_Logged;

extern FaultBitFieldType FaultAFTASOSP_Detected;
extern FaultBitFieldType FaultAFTASOSP_Logged;

extern FaultBitFieldType FaultAFTCMSCS_Detected;
extern FaultBitFieldType FaultAFTCMSCS_Logged;

extern FaultBitFieldType FaultAFTCMTCS_Detected;
extern FaultBitFieldType FaultAFTCMTCS_Logged;

extern FaultBitFieldType FaultAFTMTLCS_Detected;
extern FaultBitFieldType FaultAFTMTLCS_Logged;

extern FaultBitFieldType FaultAFTSLOBS_Detected;
extern FaultBitFieldType FaultAFTSLOBS_Logged;

extern FaultBitFieldType FaultBSW_COM_Detected;
extern FaultBitFieldType FaultBSW_COM_Logged;

extern FaultBitFieldType FaultBSW_HW2_Detected;
extern FaultBitFieldType FaultBSW_HW2_Logged;

extern FaultBitFieldType FaultBSW_HW_Detected;
extern FaultBitFieldType FaultBSW_HW_Logged;

extern FaultBitFieldType FaultFSEVBHV_Detected;
extern FaultBitFieldType FaultFSEVBHV_Logged;

extern FaultBitFieldType FaultFSEVBLV_Detected;
extern FaultBitFieldType FaultFSEVBLV_Logged;

extern FaultBitFieldType FaultFSEVETA_Detected;
extern FaultBitFieldType FaultFSEVETA_Logged;

extern FaultBitFieldType FaultFSEVETA_OverDetected;
extern FaultBitFieldType FaultFSEVETA_OverLogged;

extern FaultBitFieldType FaultFSEVETA_TempDetected;
extern FaultBitFieldType FaultFSEVETA_TempLogged;

extern FaultBitFieldType FaultFSMTMTA_OverDetected;
extern FaultBitFieldType FaultFSMTMTA_OverLogged;

extern FaultBitFieldType FaultFSMTMTA_TempDetected;
extern FaultBitFieldType FaultFSMTMTA_TempLogged;

extern FaultBitFieldType FaultFSMTRDG_Detected;
extern FaultBitFieldType FaultFSMTRDG_Logged;

extern FaultBitFieldType FaultFSSMACS_Detected;
extern FaultBitFieldType FaultFSSMACS_Logged;

extern FaultBitFieldType FaultFTASBDS_Detected;
extern FaultBitFieldType FaultFTASBDS_Logged;

extern FaultBitFieldType FaultFTASETP_Detected;
extern FaultBitFieldType FaultFTASETP_Logged;

extern FaultBitFieldType FaultFTASMTP_Detected;
extern FaultBitFieldType FaultFTASMTP_Logged;

extern FaultBitFieldType FaultFTASOSP_Detected;
extern FaultBitFieldType FaultFTASOSP_Logged;

extern FaultBitFieldType FaultFTCMSCS_Detected;
extern FaultBitFieldType FaultFTCMSCS_Logged;

extern FaultBitFieldType FaultFTCMTCS_Detected;
extern FaultBitFieldType FaultFTCMTCS_Logged;

extern FaultBitFieldType FaultFTEVEIT_Detected;
extern FaultBitFieldType FaultFTEVEIT_Logged;

extern FaultBitFieldType FaultFTMTLCS_Detected;
extern FaultBitFieldType FaultFTMTLCS_Logged;

extern FaultBitFieldType FaultGBSW_COM_Detected;
extern FaultBitFieldType FaultGBSW_COM_Logged;

extern FaultBitFieldType FaultGBSW_HW2_Detected;
extern FaultBitFieldType FaultGBSW_HW2_Logged;

extern FaultBitFieldType FaultGBSW_HW_Detected;
extern FaultBitFieldType FaultGBSW_HW_Logged;

extern FaultBitFieldType FaultGFSEVBHV_Detected;
extern FaultBitFieldType FaultGFSEVBHV_Logged;

extern FaultBitFieldType FaultGFSEVBLV_Detected;
extern FaultBitFieldType FaultGFSEVBLV_Logged;

extern FaultBitFieldType FaultGFSEVETA_Detected;
extern FaultBitFieldType FaultGFSEVETA_Logged;

extern FaultBitFieldType FaultGFSEVETA_OverDetected;
extern FaultBitFieldType FaultGFSEVETA_OverLogged;

extern FaultBitFieldType FaultGFSEVETA_TempDetected;
extern FaultBitFieldType FaultGFSEVETA_TempLogged;

extern FaultBitFieldType FaultGFSMTMTA_OverDetected;
extern FaultBitFieldType FaultGFSMTMTA_OverLogged;

extern FaultBitFieldType FaultGFSMTMTA_TempDetected;
extern FaultBitFieldType FaultGFSMTMTA_TempLogged;

extern FaultBitFieldType FaultGFSMTRDG_Detected;
extern FaultBitFieldType FaultGFSMTRDG_Logged;

extern FaultBitFieldType FaultGFSSMACS_Detected;
extern FaultBitFieldType FaultGFSSMACS_Logged;

extern FaultBitFieldType FaultGFTASBDS_Detected;
extern FaultBitFieldType FaultGFTASBDS_Logged;

extern FaultBitFieldType FaultGFTASETP_Detected;
extern FaultBitFieldType FaultGFTASETP_Logged;

extern FaultBitFieldType FaultGFTASMTP_Detected;
extern FaultBitFieldType FaultGFTASMTP_Logged;

extern FaultBitFieldType FaultGFTASOSP_Detected;
extern FaultBitFieldType FaultGFTASOSP_Logged;

extern FaultBitFieldType FaultGFTCMSCS_Detected;
extern FaultBitFieldType FaultGFTCMSCS_Logged;

extern FaultBitFieldType FaultGFTCMTCS_Detected;
extern FaultBitFieldType FaultGFTCMTCS_Logged;

extern FaultBitFieldType FaultGFTEVEIT_Detected;
extern FaultBitFieldType FaultGFTEVEIT_Logged;

extern FaultBitFieldType FaultGFTMTLCS_Detected;
extern FaultBitFieldType FaultGFTMTLCS_Logged;

extern FaultBitFieldType FaultGSDMTMEP_Detected;
extern FaultBitFieldType FaultGSDMTMEP_Logged;

extern FaultBitFieldType FaultOBSW_COM_Detected;
extern FaultBitFieldType FaultOBSW_COM_Logged;

extern FaultBitFieldType FaultOBSW_HW2_Detected;
extern FaultBitFieldType FaultOBSW_HW2_Logged;

extern FaultBitFieldType FaultOBSW_HW_Detected;
extern FaultBitFieldType FaultOBSW_HW_Logged;

extern FaultBitFieldType FaultOFSEVBHV_Detected;
extern FaultBitFieldType FaultOFSEVBHV_Logged;

extern FaultBitFieldType FaultOFSEVBLV_Detected;
extern FaultBitFieldType FaultOFSEVBLV_Logged;

extern FaultBitFieldType FaultOFSEVETA_Detected;
extern FaultBitFieldType FaultOFSEVETA_Logged;

extern FaultBitFieldType FaultOFSEVETA_OverDetected;
extern FaultBitFieldType FaultOFSEVETA_OverLogged;

extern FaultBitFieldType FaultOFSEVETA_TempDetected;
extern FaultBitFieldType FaultOFSEVETA_TempLogged;

extern FaultBitFieldType FaultOFSMTMTA_OverDetected;
extern FaultBitFieldType FaultOFSMTMTA_OverLogged;

extern FaultBitFieldType FaultOFSMTMTA_TempDetected;
extern FaultBitFieldType FaultOFSMTMTA_TempLogged;

extern FaultBitFieldType FaultOFTASBDS_Detected;
extern FaultBitFieldType FaultOFTASBDS_Logged;

extern FaultBitFieldType FaultOFTASETP_Detected;
extern FaultBitFieldType FaultOFTASETP_Logged;

extern FaultBitFieldType FaultOFTASMTP_Detected;
extern FaultBitFieldType FaultOFTASMTP_Logged;

extern FaultBitFieldType FaultOFTASOSP_Detected;
extern FaultBitFieldType FaultOFTASOSP_Logged;

extern FaultBitFieldType FaultOFTCMSCS_Detected;
extern FaultBitFieldType FaultOFTCMSCS_Logged;

extern FaultBitFieldType FaultOFTCMTCS_Detected;
extern FaultBitFieldType FaultOFTCMTCS_Logged;

extern FaultBitFieldType FaultOFTMTLCS_Detected;
extern FaultBitFieldType FaultOFTMTLCS_Logged;

extern FaultBitFieldType FaultOFTSLOBS_Detected;
extern FaultBitFieldType FaultOFTSLOBS_Logged;

extern FaultBitFieldType FaultRCEVETA_Detected;
extern FaultBitFieldType FaultRCEVETA_Logged;

extern FaultBitFieldType FaultRCEVETA_OverTempDetected;
extern FaultBitFieldType FaultRCEVETA_OverTempLogged;

extern FaultBitFieldType FaultRCEVLCS_Detected;
extern FaultBitFieldType FaultRCEVLCS_Logged;

extern FaultBitFieldType FaultRCSMACS_Detected;
extern FaultBitFieldType FaultRCSMACS_Logged;

extern FaultBitFieldType FaultRCSMACS_BatHeatDetected;
extern FaultBitFieldType FaultRCSMACS_BatHeatLogged;

extern FaultBitFieldType FaultRCSMACS_EACDetected;
extern FaultBitFieldType FaultRCSMACS_EACLogged;

extern FaultBitFieldType FaultRCSMACS_FastChgNegDetected;
extern FaultBitFieldType FaultRCSMACS_FastChgNegLogged;

extern FaultBitFieldType FaultRCSMACS_FastChgPosDetected;
extern FaultBitFieldType FaultRCSMACS_FastChgPosLogged;

extern FaultBitFieldType FaultRCSMACS_MainPosDetected;
extern FaultBitFieldType FaultRCSMACS_MainPosLogged;

extern FaultBitFieldType FaultRCSMACS_PreMainDetected;
extern FaultBitFieldType FaultRCSMACS_PreMainLogged;

extern FaultBitFieldType FaultRCSMACS_SCUDetected;
extern FaultBitFieldType FaultRCSMACS_SCULogged;

extern FaultBitFieldType FaultSDMTMEP_Detected;
extern FaultBitFieldType FaultSDMTMEP_Logged;




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1627 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 34 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2
# 336 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 337 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2

extern uint8 FaultDetn_u8Read_FailureLevel(void);




extern uint16 FaultDetn_u16Read_ABSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_ABSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_SpeedDiffDetected(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_ContorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_MotorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_RunForLongTimeDetected(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_SpeedImbalanceDetected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_RcErrRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_SelfTst_InterLockDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_OCDataNotRationalDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead2Detected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_ExcGenerationDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLGndDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLOpenDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLVccDetected(void);
extern uint16 FaultDetn_u16Read_FSSMACS_AkdFailFlagDetected(void);
extern uint16 FaultDetn_u16Read_FTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASETP_EstPmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_FTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_SpdOvershootDetected(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_EstOverTempDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_RcErrRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_SelfTst_InterLockDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_OCDataNotRationalDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead2Detected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_ExcGenerationDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLGndDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLOpenDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLVccDetected(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_AkdFailFlagDetected(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASETP_EstPmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_SpdOvershootDetected(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_EstOverTempDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosGndDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosVccDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_OverSpeedDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_ResSquaSumErrByFTDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinGndDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinVccDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SpeedWarnDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_UnderSpeedDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_SpeedDiffDetected(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_ContorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_MotorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_RunForLongTimeDetected(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_SpeedImbalanceDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatNegCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatPosCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_MainPosCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_ReserveCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad1ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad2ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad3ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad4ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad5ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad6ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatNegCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatPosCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempMainPosCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempReserveCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad1Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad2Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad3Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad4Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad5Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad6Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad1Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad2Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad3Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad4Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad5Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad6Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad1CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad2CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad3CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad4CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad5CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad6CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUWeledDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosGndDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosVccDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_OverSpeedDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFTDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinGndDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinVccDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SpeedWarnDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_UnderSpeedDetected(void);

extern uint16 FaultDetn_u16Read_ABSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_Detected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_Detected(void);
extern uint16 FaultDetn_u16Read_FSSMACS_Detected(void);
extern uint16 FaultDetn_u16Read_FTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_FTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_FTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_Detected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_Detected(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_Detected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_Detected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_Detected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNegDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPosDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_Detected(void);





extern uint16 FaultDetn_u16Read_ABSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_ABSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_SpeedDiffLogged(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_ContorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_MotorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_RunForLongTimeLogged(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_SpeedImbalanceLogged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_RcErrRxVCULogged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_SelfTst_InterLockLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_OCDataNotRationalLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead2Logged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_ExcGenerationLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLGndLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLOpenLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLVccLogged(void);
extern uint16 FaultDetn_u16Read_FSSMACS_AkdFailFlagLogged(void);
extern uint16 FaultDetn_u16Read_FTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASETP_EstPmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_FTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_SpdOvershootLogged(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_EstOverTempLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_RcErrRxVCULogged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_SelfTst_InterLockLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_OCDataNotRationalLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead2Logged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_ExcGenerationLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLGndLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLOpenLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLVccLogged(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_AkdFailFlagLogged(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASETP_EstPmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_SpdOvershootLogged(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_EstOverTempLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosGndLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosVccLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_OverSpeedLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_ResSquaSumErrByFTLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinGndLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinVccLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SpeedWarnLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_UnderSpeedLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_SpeedDiffLogged(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_ContorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_MotorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_RunForLongTimeLogged(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_SpeedImbalanceLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatNegCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatPosCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_MainPosCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_ReserveCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad1ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad2ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad3ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad4ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad5ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad6ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatNegCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatPosCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempMainPosCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempReserveCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad1Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad2Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad3Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad4Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad5Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad6Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad1Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad2Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad3Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad4Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad5Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad6Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad1CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad2CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad3CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad4CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad5CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad6CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUWeledLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosGndLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosVccLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_OverSpeedLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFTLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinGndLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinVccLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SpeedWarnLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_UnderSpeedLogged(void);
# 1310 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
extern uint16 FaultDetn_u16Read_ABSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_Logged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_Logged(void);
extern uint16 FaultDetn_u16Read_FSSMACS_Logged(void);
extern uint16 FaultDetn_u16Read_FTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_FTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_FTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_Logged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_Logged(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_Logged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_Logged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_Logged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNegLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPosLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCULogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_Logged(void);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1403 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2
# 2 ".\\output\\inc/FAULT_Api.h" 2
# 52 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/IfxStm_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
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
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    Ifx_UReg_32Bit STMCAP_63_32:32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    Ifx_UReg_32Bit STMCAP_63_32:32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    Ifx_UReg_32Bit MSIZE0:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit MSTART0:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit MSIZE1:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit MSTART1:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    Ifx_UReg_32Bit CMPVAL:32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    Ifx_UReg_32Bit CMP0EN:1;
    Ifx_UReg_32Bit CMP0IR:1;
    Ifx_UReg_32Bit CMP0OS:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit CMP1EN:1;
    Ifx_UReg_32Bit CMP1IR:1;
    Ifx_UReg_32Bit CMP1OS:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUM:16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    Ifx_UReg_32Bit CMP0IRR:1;
    Ifx_UReg_32Bit CMP0IRS:1;
    Ifx_UReg_32Bit CMP1IRR:1;
    Ifx_UReg_32Bit CMP1IRS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit reserved_3:21;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    Ifx_UReg_32Bit STM_31_0:32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    Ifx_UReg_32Bit STM_31_0:32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    Ifx_UReg_32Bit STM_35_4:32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    Ifx_UReg_32Bit STM_39_8:32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    Ifx_UReg_32Bit STM_43_12:32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    Ifx_UReg_32Bit STM_47_16:32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    Ifx_UReg_32Bit STM_51_20:32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    Ifx_UReg_32Bit STM_63_32:32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 454 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
       Ifx_STM_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_STM_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_STM_TIM0 TIM0;
       Ifx_STM_TIM1 TIM1;
       Ifx_STM_TIM2 TIM2;
       Ifx_STM_TIM3 TIM3;
       Ifx_STM_TIM4 TIM4;
       Ifx_STM_TIM5 TIM5;
       Ifx_STM_TIM6 TIM6;
       Ifx_STM_CAP CAP;
       Ifx_STM_CMP CMP[2];
       Ifx_STM_CMCON CMCON;
       Ifx_STM_ICR ICR;
       Ifx_STM_ISCR ISCR;
       Ifx_UReg_8Bit reserved_44[12];
       Ifx_STM_TIM0SV TIM0SV;
       Ifx_STM_CAPSV CAPSV;
       Ifx_UReg_8Bit reserved_58[144];
       Ifx_STM_OCS OCS;
       Ifx_STM_KRSTCLR KRSTCLR;
       Ifx_STM_KRST1 KRST1;
       Ifx_STM_KRST0 KRST0;
       Ifx_STM_ACCEN1 ACCEN1;
       Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 66 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 2
# 2 ".\\output\\inc/IfxStm_reg.h" 2
# 53 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/MATHSRV_E.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\MATHSRV\\MATHSRV_E.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\MATHSRV\\MATHSRV_E.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 28 ".\\output\\inc/..\\..\\bswcdd\\MATHSRV\\MATHSRV_E.h" 2







typedef enum
{
   MATHSRV_RISING_SCHMITT_TRIGGER = 0,
   MATHSRV_FALLING_SCHMITT_TRIGGER
} MATHSRV_tenuSchmittTriggerType;
# 124 ".\\output\\inc/..\\..\\bswcdd\\MATHSRV\\MATHSRV_E.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bswcdd\\MATHSRV\\MATHSRV_E.h" 2


uint8 MATHSRV_u8Interp1d
   (const uint8 kau8Cartography[],
   uint16 u16SiteInterpolation);

uint8 MATHSRV_u8Interp1d09Pts
   (const uint8 kau8Cartography[9],
   uint8 u8Value);

uint8 MATHSRV_u8Interp1d11Pts
   (const uint8 kau8Cartography[11],
   uint8 u8Value);

uint8 MATHSRV_u8Interp1d17Pts
   (const uint8 kau8Cartography[17],
   uint8 u8Value);

uint8 MATHSRV_u8Interp2d
   (const uint8 * pkau8Cartography,
   uint16 u16SiteInterpolationXLine,
   uint16 u16SiteInterpolationYColumn,
   uint8 u8BreakpointNumberYColumn);



uint16 MATHSRV_u16Interp1d
   (const uint16 kau16Cartography[],
   uint16 u16SiteInterpolation);

uint16 MATHSRV_u16Interp1d09Pts
   (const uint16 kau16Cartography[9],
   uint8 u8Value);

uint16 MATHSRV_u16Interp1d11Pts
   (const uint16 kau16Cartography[11],
   uint8 u8Value);

uint16 MATHSRV_u16Interp1d17Pts
   (const uint16 kau16Cartography[17],
   uint8 u8Value);

uint16 MATHSRV_u16Interp2d
   (const uint16 * pkau16Cartography,
   uint16 u16SiteInterpolationXLine,
   uint16 u16SiteInterpolationYColumn,
   uint8 u8BreakpointNumberYColumn);



uint16 MATHSRV_u16CalcParaIncAryU8Loc
   (const uint8 kau8BreakpointMap[],
   uint8 u8Value,
   uint8 u8BreakpointNumberMinusOne);

uint16 MATHSRV_u16CalcParaIncAryU16Loc
   (const uint16 kau16BreakpointMap[],
   uint16 u16Value,
   uint8 u8BreakpointNumberMinusOne);



uint16 MATHSRV_u16FirstOrderFilterGu8
   (uint8 u8FilterGain,
   uint32 * pu32AccuracyFilterValue,
   uint16 u16MeasuredValue);

uint16 MATHSRV_u16FirstOrderFilterGu16
   (uint16 u16FilterGain,
   uint32 * pu32AccuracyFilterValue,
   uint16 u16MeasuredValue);

sint16 MATHSRV_s16FirstOrderFilterGu8
   (uint8 u8FilterGain,
   sint32 * ps32AccuracyFilterValue,
   sint16 s16MeasuredValue);

sint16 MATHSRV_s16FirstOrderFilterGu16
   (uint16 u16FilterGain,
   sint32 * ps32AccuracyFilterValue,
   sint16 s16MeasuredValue);

uint8 MATHSRV_u8SlewFilter
   (uint8 u8FilteredValue,
   uint8 u8MeasuredValue,
   uint8 u8MaxIncrementValue,
   uint8 u8MaxDecrementValue);

uint16 MATHSRV_u16SlewFilter
   (uint16 u16FilteredValue,
   uint16 u16MeasuredValue,
   uint16 u16MaxIncrementValue,
   uint16 u16MaxDecrementValue);


sint8 MATHSRV_s8SlewFilter
(
   sint8 s8FilteredValue,
   sint8 s8MeasuredValue,
   uint8 u8MaxIncrementValue,
   uint8 u8MaxDecrementValue);

sint16 MATHSRV_s16SlewFilter
(
   sint16 s16FilteredValue,
   sint16 s16MeasuredValue,
   uint16 u16MaxIncrementValue,
   uint16 u16MaxDecrementValue);

uint16 MATHSRV_u16MedianFilter
   (uint16 u16Value1,
   uint16 u16Value2,
   uint16 u16Value3);



void MATHSRV_vidSchmittTriggerU16
   (uint16 u16InputValue,
   uint16 u16HysteresisLowThreshold,
   uint16 u16HysteresisHighTreshold,
   MATHSRV_tenuSchmittTriggerType tenuSchmittTriggerType,
   uint8 * u8OutputValue);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 251 ".\\output\\inc/..\\..\\bswcdd\\MATHSRV\\MATHSRV_E.h" 2
# 2 ".\\output\\inc/MATHSRV_E.h" 2
# 54 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/oesmsrv.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesmsrv.h" 1
# 36 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesmsrv.h"
# 1 ".\\output\\inc/OSTFSRV.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
extern const uint16 OESM_ku16AfterrunToutCntC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 64 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
extern uint8 OESM_u8AllowPwrDnDelay;
extern uint8 OESM_u8PwrLNfStep;
extern uint8 OESM_u8PwrOffTim;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 1
# 40 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2


# 1 ".\\output\\inc/iohal.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2


# 1 ".\\output\\inc/OESM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h" 2
# 58 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h" 2
extern uint8 OESM_EcuState;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h" 2
# 2 ".\\output\\inc/OESM.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 1 ".\\output\\inc/OESM_DAT.H" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 1
# 29 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/ostfsrv_Includes.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 1
# 2 ".\\output\\inc/ostfsrv_Includes.h" 2
# 31 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/ostfsrv_types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h" 2





typedef void (*OSTFSRV_tpfFunctionPointerType) (void);
# 2 ".\\output\\inc/ostfsrv_types.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_MemMap.h" 1
# 54 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 2
extern const uint16 OESM_u16PowerLatchTempoC;
extern const uint8 OESM_u8RestartDelayCntC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_MemMap.h" 1
# 58 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 2
extern uint16 OESM_u16PowerLatchTempo;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 2
# 34 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 192 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2

void OESM_vidOnOESM_EV0(void);
void OESM_vidOnOESM_EV1(void);

void OESM_vidExecOutEvent(uint16 bfCarrier);

void OESM_vidNoAction(void);

void OESM_vidEntryOESM_ST0(void);
void OESM_vidEntryOESM_ST1(void);
void OESM_vidEntryOESM_ST2(void);
void OESM_vidEntryOESM_ST3(void);
void OESM_vidEntryOESM_ST4(void);


void OESM_vidDuringOESM_ST0OnOESM_EV0(void);
void OESM_vidDuringOESM_ST0OnOESM_EV1(void);

void OESM_vidDuringOESM_ST1OnOESM_EV0(void);
void OESM_vidDuringOESM_ST1OnOESM_EV1(void);

void OESM_vidDuringOESM_ST2OnOESM_EV0(void);
void OESM_vidDuringOESM_ST2OnOESM_EV1(void);

void OESM_vidDuringOESM_ST3OnOESM_EV0(void);
void OESM_vidDuringOESM_ST3OnOESM_EV1(void);

void OESM_vidDuringOESM_ST4OnOESM_EV0(void);
void OESM_vidDuringOESM_ST4OnOESM_EV1(void);



void OESM_vidFromOESM_ST0OnOESM_EV0(void);
void OESM_vidFromOESM_ST1OnOESM_EV0(void);
void OESM_vidFromOESM_ST2OnOESM_EV0(void);
void OESM_vidFromOESM_ST3OnOESM_EV0(void);

void OESM_vidFromOESM_ST1OnOESM_EV1(void);
void OESM_vidFromOESM_ST2OnOESM_EV1(void);
void OESM_vidFromOESM_ST3OnOESM_EV1(void);
void OESM_vidFromOESM_ST4OnOESM_EV1(void);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 238 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 242 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2

extern uint16 OESM_bfOutEventCarrier;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 247 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 251 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2

extern OSTFSRV_tpfFunctionPointerType OESM_pfTransOESM_STF0OnOESM_EV0Ptr;

extern OSTFSRV_tpfFunctionPointerType OESM_pfTransOESM_STF0OnOESM_EV1Ptr;

extern OSTFSRV_tpfFunctionPointerType OESM_pfDuringOESM_STF0OnOESM_EV0Ptr;

extern OSTFSRV_tpfFunctionPointerType OESM_pfDuringOESM_STF0OnOESM_EV1Ptr;




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 264 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 2 ".\\output\\inc/OESM_DAT.H" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 1 ".\\output\\inc/OESM_TRA.H" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 1
# 29 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_dat.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 2
# 1 ".\\output\\inc/ostfsrv_Includes.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 2
# 2 ".\\output\\inc/OESM_TRA.H" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h" 2
# 28 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 2
# 39 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
# 76 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 138 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
#pragma section ".text" ax
# 77 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
extern const boolean OESM_bPowerOffModeInhC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 176 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
#pragma section
# 80 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 87 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
extern uint16 OESM_EsmMode;
extern boolean OESM_bAfterrunFin;
extern boolean OESM_bAfterrunReq;
extern boolean OESM_bCallAppliOn;
extern boolean OESM_bMcuEnaReq;
extern boolean OESM_bPwrDnReadyFlg;
extern boolean OESM_bPwrLNfClrFltFinsh;
extern uint16 OESM_OpFtState;
extern uint16 OESM_OpNfState;
extern uint16 OESM_PwrLFtState;
extern uint16 OESM_PwrLNfState;
extern uint16 OESM_u16OpDelayTime;
extern uint16 OESM_u16OpTimeout;
extern uint16 OESM_StpIIFtState;
extern uint16 OESM_StpIINfState;
extern uint16 OESM_StpIState;
extern uint16 OESM_u16AfterrunCnt;
extern uint16 OESM_u16CmdReq;
extern uint16 OESM_u16CmdReqNm1;
extern uint16 OESM_u16CmdRes;
extern uint8 OESM_u8RestartDelayCnt;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2





void OESM_vidInit(void);
void OESM_vidInitFt(void);
void OESM_vidInitNf(void);
void OESM_vidStfOp(void);
void OESM_vidStfOpFt(void);
void OESM_vidStfOpNf(void);
void OESM_vidStfPwrL(void);
void OESM_vidStfPwrLFt(void);
void OESM_vidStfPwrLNf(void);
void OESM_vidStfStpI(void);
void OESM_vidStfStpII(void);
void OESM_vidStfStpIIFt(void);
void OESM_vidStfStpIINf(void);
# 2 ".\\output\\inc/OSTFSRV.h" 2
# 37 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesmsrv.h" 2
# 78 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesmsrv.h"
void OESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void OESMSRV_vidSetCmdRes(uint16 CmdMask);
void OESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void OESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void OESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);




boolean OESMSRV_bGetCmdReq(uint16 CmdMask);
boolean OESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean OESMSRV_bGetCmdRes(uint16 CmdMask);
boolean OESMSRV_bGetPoDnReadyFlg(void);
boolean OESMSRV_bGetPwrLNfClrFltFinsh(void);




uint8 OESMSRV_u8GetCallAppli(void);
uint8 OESMSRV_u8GetOEsmMode(void);
uint8 OESMSRV_u8GetOEsmEcuState(void);




void OESMSRV_vidVSIInit(void);
# 2 ".\\output\\inc/oesmsrv.h" 2
# 55 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/PortMux.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h" 1



# 1 ".\\output\\inc/Std_types.h" 1
# 5 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h" 2

typedef enum{
    ePMux_DIOInputMux1 = 0,
    ePMux_DIOInputMux2,
    ePMux_DIOInputMux3,
    ePMUX_ANInputMux1,
    ePMUX_ANInputMux2,
    ePMUX_ANInputMux3,
    ePMUX_ANInputMux4,
    ePMUX_ANInputMux5,
    ePMUX_ANInputMux6,
    ePMUX_ANInputMux7,
    ePMUX_ANInputMux8,
    ePMUX_ANInputMux9,
    ePMUX_ANInputMux10,
    ePMUX_ANInputMux11,
    ePMUX_ANInputMux12,
    ePMUX_InputMuxMaxNum,
}PMux_InputMuxIndex;

typedef enum {
    ePMUX_DIO0_MUX1 = (0 | (ePMux_DIOInputMux1 << 4)),
    ePMUX_DIO1_MUX1,
    ePMUX_DIO2_MUX1,
    ePMUX_DIO3_MUX1,
    ePMUX_DIO4_MUX1,
    ePMUX_DIO5_MUX1,
    ePMUX_DIO6_MUX1,
    ePMUX_DIO7_MUX1,
    ePMUX_DIOInputMux1MaxChannelNum
}PMux_DIOInputMux1;

typedef enum {
    ePMUX_DIO0_MUX2 = (0 | (ePMux_DIOInputMux2 << 4)),
    ePMUX_DIO1_MUX2,
    ePMUX_DIO2_MUX2,
    ePMUX_DIO3_MUX2,
    ePMUX_DIO4_MUX2,
    ePMUX_DIO5_MUX2,
    ePMUX_DIO6_MUX2,
    ePMUX_DIO7_MUX2,
    ePMUX_DIOInputMux2MaxChannelNum
}PMux_DIOInputMux2;

typedef enum {
    ePMUX_DIO0_MUX3 = (0 | (ePMux_DIOInputMux3 << 4)),
    ePMUX_DIO1_MUX3,
    ePMUX_DIO2_MUX3,
    ePMUX_DIO3_MUX3,
    ePMUX_DIO4_MUX3,
    ePMUX_DIO5_MUX3,
    ePMUX_DIO6_MUX3,
    ePMUX_DIO7_MUX3,
    ePMUX_DIOInputMux3MaxChannelNum
}PMux_DIOInputMux3;

typedef enum {
    ePMUX_AN0_MUX1 = (0 | (ePMUX_ANInputMux1 << 4)),
    ePMUX_AN1_MUX1,
    ePMUX_AN2_MUX1,
    ePMUX_AN3_MUX1,
    ePMUX_AN4_MUX1,
    ePMUX_AN5_MUX1,
    ePMUX_AN6_MUX1,
    ePMUX_AN7_MUX1,
    ePMUX_ANInputMux1MaxChannelNum
}PMux_ANInputMux1;

typedef enum {
    ePMUX_AN0_MUX2 = (0 | (ePMUX_ANInputMux2 << 4)),
    ePMUX_AN1_MUX2,
    ePMUX_AN2_MUX2,
    ePMUX_AN3_MUX2,
    ePMUX_AN4_MUX2,
    ePMUX_AN5_MUX2,
    ePMUX_AN6_MUX2,
    ePMUX_AN7_MUX2,
    ePMux_ANInputMux2MaxChannelNum
}PMux_ANInputMux2;

typedef enum {
    ePMUX_AN0_MUX3 = (0 | (ePMUX_ANInputMux3 << 4)),
    ePMUX_AN1_MUX3,
    ePMUX_AN2_MUX3,
    ePMUX_AN3_MUX3,
    ePMUX_AN4_MUX3,
    ePMUX_AN5_MUX3,
    ePMUX_AN6_MUX3,
    ePMUX_AN7_MUX3,
    ePMux_ANInputMux3MaxChannelNum
}PMux_ANInputMux3;

typedef enum {
    ePMUX_AN0_MUX4 = (0 | (ePMUX_ANInputMux4 << 4)),
    ePMUX_AN1_MUX4,
    ePMUX_AN2_MUX4,
    ePMUX_AN3_MUX4,
    ePMUX_AN4_MUX4,
    ePMUX_AN5_MUX4,
    ePMUX_AN6_MUX4,
    ePMUX_AN7_MUX4,
    ePMux_ANInputMux4MaxChannelNum
}PMux_ANInputMux4;

typedef enum {
    ePMUX_AN0_MUX5 = (0 | (ePMUX_ANInputMux5 << 4)),
    ePMUX_AN1_MUX5,
    ePMUX_AN2_MUX5,
    ePMUX_AN3_MUX5,
    ePMUX_AN4_MUX5,
    ePMUX_AN5_MUX5,
    ePMUX_AN6_MUX5,
    ePMUX_AN7_MUX5,
    ePMux_ANInputMux5MaxChannelNum
}PMux_ANInputMux5;

typedef enum {
    ePMUX_AN0_MUX6 = (0 | (ePMUX_ANInputMux6 << 4)),
    ePMUX_AN1_MUX6,
    ePMUX_AN2_MUX6,
    ePMUX_AN3_MUX6,
    ePMUX_AN4_MUX6,
    ePMUX_AN5_MUX6,
    ePMUX_AN6_MUX6,
    ePMUX_AN7_MUX6,
    ePMux_ANInputMux6MaxChannelNum
}PMux_ANInputMux6;

typedef enum {
    ePMUX_AN0_MUX7 = (0 | (ePMUX_ANInputMux7 << 4)),
    ePMUX_AN1_MUX7,
    ePMUX_AN2_MUX7,
    ePMUX_AN3_MUX7,
    ePMUX_AN4_MUX7,
    ePMUX_AN5_MUX7,
    ePMUX_AN6_MUX7,
    ePMUX_AN7_MUX7,
    ePMux_ANInputMux7MaxChannelNum
}PMux_ANInputMux7;

typedef enum {
    ePMUX_AN0_MUX8 = (0 | (ePMUX_ANInputMux8 << 4)),
    ePMUX_AN1_MUX8,
    ePMUX_AN2_MUX8,
    ePMUX_AN3_MUX8,
    ePMUX_AN4_MUX8,
    ePMUX_AN5_MUX8,
    ePMUX_AN6_MUX8,
    ePMUX_AN7_MUX8,
    ePMux_ANInputMux8MaxChannelNum
}PMux_ANInputMux8;

typedef enum {
    ePMUX_AN0_MUX9 = (0 | (ePMUX_ANInputMux9 << 4)),
    ePMUX_AN1_MUX9,
    ePMUX_AN2_MUX9,
    ePMUX_AN3_MUX9,
    ePMUX_AN4_MUX9,
    ePMUX_AN5_MUX9,
    ePMUX_AN6_MUX9,
    ePMUX_AN7_MUX9,
    ePMux_ANInputMux9MaxChannelNum
}PMux_ANInputMux9;

typedef enum {
    ePMUX_AN0_MUX10 = (0 | (ePMUX_ANInputMux10 << 4)),
    ePMUX_AN1_MUX10,
    ePMUX_AN2_MUX10,
    ePMUX_AN3_MUX10,
    ePMUX_AN4_MUX10,
    ePMUX_AN5_MUX10,
    ePMUX_AN6_MUX10,
    ePMUX_AN7_MUX10,
    ePMux_ANInputMux10MaxChannelNum
}PMux_ANInputMux10;

typedef enum {
    ePMUX_AN0_MUX11 = (0 | (ePMUX_ANInputMux11 << 4)),
    ePMUX_AN1_MUX11,
    ePMUX_AN2_MUX11,
    ePMUX_AN3_MUX11,
    ePMUX_AN4_MUX11,
    ePMUX_AN5_MUX11,
    ePMUX_AN6_MUX11,
    ePMUX_AN7_MUX11,
    ePMux_ANInputMux11MaxChannelNum
}PMux_ANInputMux11;

typedef enum {
    ePMUX_AN0_MUX12 = (0 | (ePMUX_ANInputMux12 << 4)),
    ePMUX_AN1_MUX12,
    ePMUX_AN2_MUX12,
    ePMUX_AN3_MUX12,
    ePMUX_AN4_MUX12,
    ePMUX_AN5_MUX12,
    ePMUX_AN6_MUX12,
    ePMUX_AN7_MUX12,
    ePMux_ANInputMux12MaxChannelNum
}PMux_ANInputMux12;

enum{
    ePMUX_SHIFT_REG_1 = 0,
    ePMUX_SHIFT_REG_2,
    ePMUX_SHIFT_REG_3,

    ePMUX_SHIFT_REG_MAX_NO,
};


extern void PMux_vidMainFunction(const uint8 ku8MuxIndex);
extern uint16 PMux_u16GetInputVal(const uint8 ku8DataIndex);
extern void PMux_vidShiftOutMultiBytes(const uint8 const * kpku8Data, const uint8 ku8Bytes, const uint8 ku8SRID);

extern void PMux_vidMuxHandler_1(void);
extern void PMux_vidMuxHandler_2(void);
extern void PMux_vidMuxHandler_Group3(void);
# 2 ".\\output\\inc/PortMux.h" 2
# 56 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/FAIL.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_Nvm.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 40 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 2



extern uint16 FAIL_u16RstStartUpCntNvm;
extern uint16 FAIL_u16RstHotCntNvm;
extern boolean FAIL_bRstHotFlagNvm;




extern uint32 FAIL_u32TimestampLifeNvm;
extern uint16 FAIL_u16TimestampIgnNvm;


# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 55 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 2
# 39 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h"
enum
{
   FAIL_enuFLTDET_IDLE = 0,
   FAIL_enuFLTDET_STANDBY,
   FAIL_enuFLTDET_STOP_DIAG,
   FAIL_enuFLTDET_WAIT_RECV,
   FAIL_enuFLTDET_START_DIAG
};
# 66 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 67 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 2
extern uint16 FAIL_u16KeyOnValue;

# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 87 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
#pragma section ".text" ax
# 77 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 2
void FAIL_vidCheckBatVolt(void);
void FAIL_vidClearComLostFlg(void);
void FAIL_vidEnableEmbFltCheck(void);
void FAIL_vidDisableEmbFltCheck(void);
void FAIL_vidFailDetection_1000ms(void);
void FAIL_vidFailDetection_100ms(void);
void FAIL_vidFailDetection_10ms(void);
void FAIL_vidInit(void);
void FAIL_vidInitVSICounters(void);
void FAIL_vidPowerDown(void);
void FAIL_vidPowerUp(void);
void FAIL_vidFailDetection_1ms(void);
void GFAIL_vidFailDetection_1ms(void);
void AFAIL_vidFailDetection_1ms(void);
void OFAIL_vidFailDetection_1ms(void);

# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
#pragma section
# 94 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h" 2
# 2 ".\\output\\inc/FAIL.h" 2
# 57 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 1 ".\\output\\inc/MAIN_EPSErrProtect.h" 1
# 1 ".\\output\\inc/..\\..\\main\\_MainModule\\AOCUErrProtect\\MAIN_EPSErrProtect.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\main\\_MainModule\\AOCUErrProtect\\MAIN_EPSErrProtect.h" 2





enum
{
   EPS_ASC_TYPE_STARTUP_CHECK = 0,
   EPS_ASC_TYPE_NORMAL,
   EPS_ASC_TYPE_FAULT,
   EPS_ASC_TYPE_RECOVER,
   EPS_ASC_TYPE_LOCK
};
# 33 ".\\output\\inc/..\\..\\main\\_MainModule\\AOCUErrProtect\\MAIN_EPSErrProtect.h"
extern boolean MAIN_bGetEPSASCEnableState(void);
extern void EPS_CallBack(void);
extern uint8 MAIN_u8GetEPSASCStep(void);
extern void MAIN_bSetEPSASCEnableState(boolean bState);
# 2 ".\\output\\inc/MAIN_EPSErrProtect.h" 2
# 58 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 75 "main\\OcuMain\\MAIN_OcuTsk.c"
static inline void MAIN_vidCheckIGBT(void);
static void MAIN_vidFaultHandler(void);
# 91 "main\\OcuMain\\MAIN_OcuTsk.c"
static uint32 MAIN_OcuTreatmentStartTime;
static uint32 MAIN_OcuTreatmentLastStartTime;
static uint32 MAIN_OcuTreatmentStopTime;
static uint32 MAIN_OcuTreatmentTotalTime;
static uint32 MAIN_OcuTreatmentPeriodTime;


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 99 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 110 "main\\OcuMain\\MAIN_OcuTsk.c"
static uint8 OMAIN_u8IgbtLowFltCnt = 0;
static uint8 OMAIN_u8IgbtHighFltCnt = 0;
static boolean OMAIN_bIgbtLowIsFlt = (0 != 0);
static boolean OMAIN_bIgbtHighIsFlt = (0 != 0);
static boolean OMAIN_bBswReadySts = (0 != 0);
static boolean OMAIN_bESMStarted = (0 != 0);
static boolean OMAIN_bSoftOvBhvFlg = (0 != 0);
static boolean OMAIN_bSoftOvCurrPhsUFlg = (0 != 0);
static boolean OMAIN_bSoftOvCurrPhsVFlg = (0 != 0);
static boolean OMAIN_bSoftOvCurrPhsWFlg = (0 != 0);
static boolean OMAIN_bVSIStarted = (0 != 0);
static boolean OMAIN_ESMGo2StartupIEvent = (0 != 0);
static boolean OMAIN_bProgConditionOk = (0 != 0);
static float32 OMAIN_f32PWMDutyUPhys = 0.0f;
static float32 OMAIN_f32PWMDutyVPhys = 0.0f;
static float32 OMAIN_f32PWMDutyWPhys = 0.0f;
static uint16 OMAIN_u16Cnt1 = 0;
static uint16 OMAIN_u16Cnt2 = 0;
static uint16 OMAIN_u16Cnt5 = 0;
static uint16 OMAIN_u16Cnt10 = 0;
static uint16 OMAIN_u16Cnt100 = 0;
static uint16 OMAIN_u16Cnt200 = 0;
static uint16 OMAIN_u16VadcPhaseCurU = 0;
static uint16 OMAIN_u16VadcPhaseCurV = 0;
static uint16 OMAIN_u16VadcPhaseCurW = 0;
static uint32 OMAIN_startTime = 0;
static uint32 OMAIN_EndTime = 0;
static uint32 OMAIN_TotalTime = 0;

uint8 OMAIN_u8DEV_Fault[( 16 )] = {0};


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 143 "main\\OcuMain\\MAIN_OcuTsk.c" 2




# 1 ".\\output\\inc/CDD_TPPC.h" 1
# 1 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h" 1
# 41 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h"
# 1 ".\\output\\inc/VADC.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h" 1



# 1 ".\\output\\inc/Std_Types.h" 1
# 5 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h" 2

extern uint16 VADC_u16GroupBuffer0[16];
extern uint16 VADC_u16GroupBuffer1[16];
extern uint16 VADC_u16GroupBuffer2[16];
extern uint16 VADC_u16GroupBuffer3[16];
extern uint16 VADC_u16GroupBuffer3_1[16];
extern uint16 VADC_u16GroupBuffer4[16];
extern uint16 VADC_u16GroupBuffer8[16];
extern uint16 VADC_u16GroupBuffer8_2[16];
extern uint16 VADC_u16GroupBuffer10[16];
extern uint16 VADC_u16GroupBuffer11[16];

extern void VADC_vidTreatment(void);
void VADC_vidMainFunction(void);
# 2 ".\\output\\inc/VADC.h" 2
# 42 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h" 2
# 1 ".\\output\\inc/TPPC.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 1
# 41 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 42 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
# 1 ".\\output\\inc/TPPC_DeviceCfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h" 1
# 36 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
enum {
   eTPPC_DEV_GTM_START_INDEX = 0,
   eTPPC_DEV_GTM_ACM_INDEX = eTPPC_DEV_GTM_START_INDEX,
   eTPPC_DEV_GTM_EPS_INDEX,
   eTPPC_DEV_GTM_END_INDEX,

   eTPPC_DEV_MAX_NUM = eTPPC_DEV_GTM_END_INDEX
};
# 2 ".\\output\\inc/TPPC_DeviceCfg.h" 2
# 43 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 591 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".cpu3_psram" axwc3
# 2 ".\\output\\inc/CddMemMap.h" 2
# 91 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
extern void TPPCDev_vidInit(const uint8 ku8DevID);
extern void TPPCDev_vidAscEntry(const uint8 ku8DevID);
extern void TPPCDev_vidStartTimer(const uint8 ku8DevID);
extern void TPPCDev_vidStopPwmOutput(const uint8 ku8DevID);
extern void TPPCDev_vidMotorStateMng(const uint8 ku8DevID);
extern void TPPCDev_vidSetPwmFreq(const uint8 ku8DevID, float32 f32Freq);
extern void TPPCDev_vidSetPwmBcDuty(const uint8 ku8DevID, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
extern void TPPCDev_vidSetPwmModReq(const uint8 ku8DevID, const uint16 u16PwmMod);
extern void TPPCDev_vidSetClrFaultReq(const uint8 ku8DevID, const boolean bClrFaultReq);
extern void TPPCDev_vidSetMotorSpdRdyFlg(const uint8 ku8DevID, const boolean bMotorSpdRdy);
extern uint8 TPPCDev_u8GetPwmState(const uint8 ku8DevID);
extern boolean TPPCDev_bGetPwmRunFlag(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbt(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbtL(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbtH(const uint8 ku8DevID);
extern boolean TPPCDev_bGetAscisClose(const uint8 ku8DevID);

# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 95 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 594 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 96 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
# 2 ".\\output\\inc/TPPC.h" 2
# 43 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h" 2
# 59 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h"
extern void CDD_TPPC_vidInit(void);
extern void CDD_TPPC_vidCORE3_1ms_func(void);
extern void CDD_TPPC_vidCORE3_2ms_func(void);
extern void CDD_TPPC_vidCORE3_10ms_func(void);
extern void CDD_TPPC_vidCORE3_100ms_func(void);
extern void CDD_TPPC_vidCORE3_200ms_func(void);
extern void CDD_TPPC_vidPwmTreatment(void);




static inline void CDD_TPPC_vidHwInit(void);




static inline void CDD_TPPC_vidACMMotorStateMng(void);
static inline void CDD_TPPC_vidACMSoftTrapTrigger(void);
static inline void CDD_TPPC_vidStopACMPwmOutput(void);
static inline void CDD_TPPC_vidSetACMPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
static inline void CDD_TPPC_vidSetACMClrFaultReq(const boolean bClrFaultReq);
static inline void CDD_TPPC_vidSetACMMotorSpdRdyFlg(const boolean bMotorSpdRdy);
static inline boolean CDD_TPPC_bGetACMPwmRunFlag(void);
static inline boolean CDD_TPPC_bGetACMPwmState(void);
static inline boolean CDD_TPPC_bGetACMAscisClose(void);
static inline boolean CDD_TPPC_bGetEPSAscisClose(void);




static inline void CDD_TPPC_vidEPSMotorStateMng(void);
static inline void CDD_TPPC_vidEPSSoftTrapTrigger(void);
static inline void CDD_TPPC_vidStopEPSPwmOutput(void);
static inline void CDD_TPPC_vidSetEPSPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
static inline void CDD_TPPC_vidSetEPSClrFaultReq(const boolean bClrFaultReq);
static inline void CDD_TPPC_vidSetEPSMotorSpdRdyFlg(const boolean bMotorSpdRdy);
static inline boolean CDD_TPPC_bGetEPSPwmRunFlag(void);
static inline boolean CDD_TPPC_bGetEPSPwmState(void);




static inline void CDD_TPPC_vidHwInit(void)
{
   VADC_vidMainFunction();

   TPPCDev_vidInit(eTPPC_DEV_GTM_ACM_INDEX);
   TPPCDev_vidInit(eTPPC_DEV_GTM_EPS_INDEX);

   TPPCDev_vidStartTimer(eTPPC_DEV_GTM_ACM_INDEX);
   TPPCDev_vidStartTimer(eTPPC_DEV_GTM_EPS_INDEX);
}




static inline void CDD_TPPC_vidACMMotorStateMng(void)
{
   TPPCDev_vidMotorStateMng(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline void CDD_TPPC_vidACMSoftTrapTrigger(void)
{
   TPPCDev_vidAscEntry(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline void CDD_TPPC_vidStopACMPwmOutput(void)
{
   TPPCDev_vidStopPwmOutput(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline void CDD_TPPC_vidSetACMPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   TPPCDev_vidSetPwmBcDuty(eTPPC_DEV_GTM_ACM_INDEX, (f32DutyU * 100.0f), (f32DutyV * 100.0f), (f32DutyW * 100.0f));
}

static inline void CDD_TPPC_vidSetACMClrFaultReq(const boolean bClrFaultReq)
{
   TPPCDev_vidSetClrFaultReq(eTPPC_DEV_GTM_ACM_INDEX, bClrFaultReq);
}

static inline void CDD_TPPC_vidSetACMMotorSpdRdyFlg(const boolean bMotorSpdRdy)
{
   TPPCDev_vidSetMotorSpdRdyFlg(eTPPC_DEV_GTM_ACM_INDEX, bMotorSpdRdy);
}

static inline boolean CDD_TPPC_bGetACMPwmRunFlag(void)
{
   return TPPCDev_bGetPwmRunFlag(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline boolean CDD_TPPC_bGetACMPwmState(void)
{
   return TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline boolean CDD_TPPC_bGetACMAscisClose(void)
{
   return TPPCDev_bGetAscisClose(eTPPC_DEV_GTM_ACM_INDEX);
}




static inline void CDD_TPPC_vidEPSMotorStateMng(void)
{
   TPPCDev_vidMotorStateMng(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline void CDD_TPPC_vidEPSSoftTrapTrigger(void)
{
   TPPCDev_vidAscEntry(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline void CDD_TPPC_vidStopEPSPwmOutput(void)
{
   TPPCDev_vidStopPwmOutput(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline void CDD_TPPC_vidSetEPSPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   TPPCDev_vidSetPwmBcDuty(eTPPC_DEV_GTM_EPS_INDEX, (f32DutyU * 100.0f), (f32DutyV * 100.0f), (f32DutyW * 100.0f));
}

static inline void CDD_TPPC_vidSetEPSClrFaultReq(const boolean bClrFaultReq)
{
   TPPCDev_vidSetClrFaultReq(eTPPC_DEV_GTM_EPS_INDEX, bClrFaultReq);
}

static inline void CDD_TPPC_vidSetEPSMotorSpdRdyFlg(const boolean bMotorSpdRdy)
{
   TPPCDev_vidSetMotorSpdRdyFlg(eTPPC_DEV_GTM_EPS_INDEX, bMotorSpdRdy);
}

static inline boolean CDD_TPPC_bGetEPSPwmRunFlag(void)
{
   return TPPCDev_bGetPwmRunFlag(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline boolean CDD_TPPC_bGetEPSPwmState(void)
{
   return TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline boolean CDD_TPPC_bGetEPSAscisClose(void)
{
   return TPPCDev_bGetAscisClose(eTPPC_DEV_GTM_EPS_INDEX);
}
# 2 ".\\output\\inc/CDD_TPPC.h" 2
# 148 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 165 "main\\OcuMain\\MAIN_OcuTsk.c"
boolean MAIN_bGetOcuSoftOvcFlag_U(void)
{
   return OMAIN_bSoftOvCurrPhsUFlg;
}

boolean MAIN_bGetOcuSoftOvcFlag_V(void)
{
   return OMAIN_bSoftOvCurrPhsVFlg;
}

boolean MAIN_bGetOcuSoftOvcFlag_W(void)
{
   return OMAIN_bSoftOvCurrPhsWFlg;
}

boolean MAIN_bGetOcuSoftOvBhvFlag(void)
{
   return OMAIN_bSoftOvBhvFlg;
}

boolean MAIN_bGetOcuIgbtLSFaultFlag(void)
{
   return OMAIN_bIgbtLowIsFlt;
}

boolean MAIN_bGetOcuIgbtHSFaultFlag(void)
{
   return OMAIN_bIgbtHighIsFlt;
}

void MAIN_vidClrOcuFaultFlag(void)
{
   OMAIN_u8IgbtLowFltCnt = 0;
   OMAIN_u8IgbtHighFltCnt = 0;
   OMAIN_bSoftOvCurrPhsUFlg = (0 != 0);
   OMAIN_bSoftOvCurrPhsVFlg = (0 != 0);
   OMAIN_bSoftOvCurrPhsWFlg = (0 != 0);
   OMAIN_bSoftOvBhvFlg = (0 != 0);
   OMAIN_bIgbtLowIsFlt = (0 != 0);
   OMAIN_bIgbtHighIsFlt = (0 != 0);

   MAIN_bSetEPSASCEnableState((0 != 0));
}
# 217 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_OcuTaskInit(void)
{
# 229 "main\\OcuMain\\MAIN_OcuTsk.c"
   OMAIN_u8IgbtLowFltCnt = 0;
   OMAIN_u8IgbtHighFltCnt = 0;
   OMAIN_bIgbtLowIsFlt = (0 != 0);
   OMAIN_bIgbtHighIsFlt = (0 != 0);
   OMAIN_bBswReadySts = (0 != 0);
   OMAIN_bESMStarted = (0 != 0);
   OMAIN_bSoftOvBhvFlg = (0 != 0);
   OMAIN_bSoftOvCurrPhsUFlg = (0 != 0);
   OMAIN_bSoftOvCurrPhsVFlg = (0 != 0);
   OMAIN_bSoftOvCurrPhsWFlg = (0 != 0);
   OMAIN_bVSIStarted = (0 != 0);
   OMAIN_ESMGo2StartupIEvent = (0 != 0);
   OMAIN_bProgConditionOk = (0 != 0);
   OMAIN_f32PWMDutyUPhys = 0.0f;
   OMAIN_f32PWMDutyVPhys = 0.0f;
   OMAIN_f32PWMDutyWPhys = 0.0f;
   OMAIN_u16Cnt1 = 0;
   OMAIN_u16Cnt2 = 0;
   OMAIN_u16Cnt5 = 0;
   OMAIN_u16Cnt10 = 0;
   OMAIN_u16Cnt100 = 0;
   OMAIN_u16Cnt200 = 0;
   OMAIN_u16VadcPhaseCurU = 0;
   OMAIN_u16VadcPhaseCurV = 0;
   OMAIN_u16VadcPhaseCurW = 0;
   OMAIN_startTime = 0;
   OMAIN_EndTime = 0;
   OMAIN_TotalTime = 0;
}
# 267 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuTask1ms(void)
{
   OMAIN_u16Cnt1++;

   CDD_TPPC_vidEPSMotorStateMng();
   TPPC_vidEPSASCStateMng();

   if (OMAIN_bVSIStarted)
   {
# 308 "main\\OcuMain\\MAIN_OcuTsk.c"
   }


   if (OMAIN_bVSIStarted)
   {







   }






   OFAIL_vidFailDetection_1ms();
}
# 338 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuTask2ms(void)
{
   OMAIN_u16Cnt2++;
# 379 "main\\OcuMain\\MAIN_OcuTsk.c"
   if (OMAIN_VSIBenchOnWriteDataC == 0)
   {

      if (OBSW_u32VSICounterCkreq >= OMAIN_u32VSICntCkreqVSIStartedC)
      {

         if (OMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }
         OMAIN_bVSIStarted = 1;

         if (OBSW_u32VSICounterCkreq >= OMAIN_u32VSICntCkreqESMStartedC)
         {
            OESMSRV_vidSetCmdReq((uint16)(1 << 1), 1);
            OMAIN_bESMStarted = 1;
         }
      }
      OESM_vidOnOESM_EV0();
   }
   else
   {

      if (OBSW_u32VSICounterCkreq >= OMAIN_u32VSICntCkreqVSIStartedC)
      {
         if (OMAIN_bVSIStarted == 0)
         {
            FAIL_vidInitVSICounters();
         }

         OMAIN_bVSIStarted = 1;
      }
   }
}
# 422 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuTask5ms(void)
{
   OMAIN_u16Cnt5++;
}
# 435 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuTask10ms(void)
{
   OMAIN_u16Cnt10++;
   OMAIN_bBswReadySts = BSW_bGetBswReadySts();

   if (OMAIN_bVSIStarted)
   {
# 517 "main\\OcuMain\\MAIN_OcuTsk.c"
   }
   else
   {
      ;
   }






   MAIN_vidFaultHandler();
}
# 539 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuTask100ms(void)
{
   OMAIN_u16Cnt100++;

   if (OMAIN_bVSIStarted)
   {
# 555 "main\\OcuMain\\MAIN_OcuTsk.c"
   }
   else
   {
      ;
   }
}
# 570 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuTask200ms(void)
{
   OMAIN_u16Cnt200++;

   if (OMAIN_ESMGo2StartupIEvent != 0)
   {
      OESM_vidOnOESM_EV1();
      OMAIN_ESMGo2StartupIEvent = 0;
   }
# 594 "main\\OcuMain\\MAIN_OcuTsk.c"
}


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 163 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 591 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".cpu3_psram" axwc3
# 2 ".\\output\\inc/CddMemMap.h" 2
# 164 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 598 "main\\OcuMain\\MAIN_OcuTsk.c" 2
# 608 "main\\OcuMain\\MAIN_OcuTsk.c"
void MAIN_vidOcuPwmTreatment(void)
{
   MAIN_OcuTreatmentStartTime = ((uint32)((*(Ifx_STM*)0xF0001100u)).TIM0.U);

   MAIN_OcuTreatmentPeriodTime = MAIN_OcuTreatmentStartTime - MAIN_OcuTreatmentLastStartTime;
   MAIN_OcuTreatmentLastStartTime = MAIN_OcuTreatmentStartTime;

   OBSW_u32VSICounterCkreq++;
   OBSW_u32VSICounterCkreq++;
# 640 "main\\OcuMain\\MAIN_OcuTsk.c"
   OMAIN_u16VadcPhaseCurU = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U();
   OMAIN_u16VadcPhaseCurV = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V();
   OMAIN_u16VadcPhaseCurW = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W();

   if (OMAIN_HARDBenchOnC != 0)
   {
      CDD_TPPC_vidSetEPSPwmDuty(OMAIN_f32PWMDutyUPhys, OMAIN_f32PWMDutyVPhys, OMAIN_f32PWMDutyWPhys);
   }


   if (OMAIN_bVSIStarted != 0)
   {
# 709 "main\\OcuMain\\MAIN_OcuTsk.c"
      MAIN_vidCheckIGBT();
   }

   uint8 u8LocAFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_3);

   if((u8LocAFaultLevel >= (4U))
   || ((1 != 0) == OMAIN_bSoftOvCurrPhsUFlg)
   || ((1 != 0) == OMAIN_bSoftOvCurrPhsVFlg)
   || ((1 != 0) == OMAIN_bSoftOvCurrPhsWFlg)
   || ((1 != 0) == OMAIN_bIgbtLowIsFlt)
   || ((1 != 0) == OMAIN_bIgbtHighIsFlt)
   || ((1 != 0) == OMAIN_bSoftOvBhvFlg))
   {
      CDD_TPPC_vidEPSSoftTrapTrigger();
   OMAIN_u8StopCacheFreezeFrameCnt = 160;
   }

   if(OMAIN_u8StopCacheFreezeFrameCnt > 0)
   {
      OMAIN_u8StopCacheFreezeFrameCnt--;
   }
   else
   {
      OMAIN_u8StopCacheFreezeFrameCnt = 0;
   }





   OMAIN_EndTime = ((uint32)((*(Ifx_STM*)0xF0001100u)).TIM0.U);

   if(OMAIN_EndTime >= OMAIN_startTime)
   {
      OMAIN_TotalTime = OMAIN_EndTime - OMAIN_startTime;
   }

   MAIN_OcuTreatmentStopTime = ((uint32)((*(Ifx_STM*)0xF0001100u)).TIM0.U);
   if(MAIN_OcuTreatmentStopTime >= MAIN_OcuTreatmentStartTime)
   {
      MAIN_OcuTreatmentTotalTime = MAIN_OcuTreatmentStopTime - MAIN_OcuTreatmentStartTime;
   }
}

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 168 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 594 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 169 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 754 "main\\OcuMain\\MAIN_OcuTsk.c" 2




static inline void MAIN_vidCheckIGBT(void)
{
   boolean bLocPwmOnFlg = CDD_TPPC_bGetEPSPwmRunFlag();
   boolean bLocIgbtLowFltPinLev = (0 != 0);
   boolean bLocIgbtHigFltPinLev = (0 != 0);
   uint16 u16TempVal;

   if (bLocPwmOnFlg)
   {

      u16TempVal = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();
      bLocIgbtHigFltPinLev = (boolean)(u16TempVal != 0);
      bLocIgbtLowFltPinLev = (boolean)(u16TempVal != 0);

      if ((0 != 0) == bLocIgbtLowFltPinLev)
      {
         if (OMAIN_u8IgbtLowFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtLowFltCnt++;
         }
         else
         {
            OMAIN_bIgbtLowIsFlt = (1 != 0);
         }
      }
      else
      {
         if (OMAIN_u8IgbtLowFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtLowFltCnt = 0;
         }
      }

      if ((0 != 0) == bLocIgbtHigFltPinLev)
      {
         if (OMAIN_u8IgbtHighFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtHighFltCnt++;
         }
         else
         {
            OMAIN_bIgbtHighIsFlt = (1 != 0);
         }
      }
      else
      {
         if (OMAIN_u8IgbtHighFltCnt < OMAIN_u8IgbtFltConfirmCntC)
         {
            OMAIN_u8IgbtHighFltCnt = 0;
         }
      }
   }
}
# 870 "main\\OcuMain\\MAIN_OcuTsk.c"
static void MAIN_vidFaultHandler(void)
{
   uint8 u8Index = 0;
   MAIN_ECPParam tLocECPParam;

   MAIN_REC_vidClrErrCode(eMAIN_REC_BUF_IDX_EPS);

   MAIN_ECP_vidPollingFault(eMAIN_REC_BUF_IDX_EPS, &tLocECPParam, sizeof(tLocECPParam));

   for(u8Index = 0; u8Index < ( 16 ); u8Index++)
   {
      OMAIN_u8DEV_Fault[u8Index] = tLocECPParam.u8LocFaultCode[u8Index];
   }
}

boolean OMAIN_bGetDiagAllowCondition(void)
{
   boolean bLocRet = (0 != 0);
   uint8 u8LocPwmSts = 0;

   u8LocPwmSts = CDD_TPPC_bGetEPSPwmState();
   if(u8LocPwmSts == (uint8)0x01)
   {
      bLocRet = (0 != 0);
   }
   else
   {
      bLocRet = (1 != 0);
   }

   return bLocRet;
}

boolean OMAIN_vidGetProgCondition(void)
{
# 929 "main\\OcuMain\\MAIN_OcuTsk.c"
   OMAIN_bProgConditionOk = (1 != 0);


   return OMAIN_bProgConditionOk;
}
# 943 "main\\OcuMain\\MAIN_OcuTsk.c"
boolean OMAIN_bSpeedReadyMng(void)
{
   boolean bLocSpeedReady = (0 != 0);

   return bLocSpeedReady;
}
