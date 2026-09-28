# 1 "bswcdd\\Dsm\\fault\\FAULT_Data.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Dsm\\fault\\FAULT_Data.c"
# 29 "bswcdd\\Dsm\\fault\\FAULT_Data.c"
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
# 30 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2

# 1 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 1
# 32 "bswcdd\\Dsm\\fault\\FAULT_Data.h"
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
# 33 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 43 "bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 44 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern uint8 FaultTableFuncTypeCounter1 [0x122];

extern FaultBitFieldType FaultFunctionTypeDetectedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeLoggedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeAuthorizedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeLogIgnArray [0x59];

extern uint8 FaultFailModCounterTable [21];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 56 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 61 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

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
# 72 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 77 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern const FaultOffsetType FaultFunctionTypeOffsetTable [0x59 + 1];
extern const FaultDtcNbType FaultFunctionTypeDtcNbTable [0x122];
extern const FaultDtcFailTypeType FaultFunctionTypeDtcFtTable [0x122];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 1354 "bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1355 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

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
# 1627 "bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 32 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 37 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2

uint8 FaultTableFuncTypeCounter1 [0x122];

FaultBitFieldType FaultFunctionTypeDetectedArray [0x59];
FaultBitFieldType FaultFunctionTypeLoggedArray [0x59];
FaultBitFieldType FaultFunctionTypeAuthorizedArray [0x59];
FaultBitFieldType FaultFunctionTypeLogIgnArray [0x59];

uint8 FaultFailModCounterTable [21];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 49 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 54 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2

const FaultFailModType FaultFunctionTypeFailModTable [0x122] =
{
   0x20 ,
   0x21 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x23 ,
   0x24 ,
   0x24 ,
   0x23 ,
   0x23 ,
   0x23 ,
   0x22 ,
   0x20 ,
   0x20 ,
   0x23 ,
   0x22 ,
   0x22 ,
   0x23 ,
   0x22 ,
   0x22 ,
   0x21 ,
   0x21 ,
   0x21 ,
   0x20 ,
   0x24 ,
   0x24 ,
   0x22 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x24 ,
   0x22 ,
   0x20 ,
   0x24 ,
   0x03 ,
   0x03 ,
   0x03 ,
   0x04 ,
   0x00 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x03 ,
   0x04 ,
   0x04 ,
   0x03 ,
   0x03 ,
   0x03 ,
   0x02 ,
   0x00 ,
   0x00 ,
   0x03 ,
   0x02 ,
   0x02 ,
   0x03 ,
   0x03 ,
   0x02 ,
   0x02 ,
   0x03 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x00 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x02 ,
   0x02 ,
   0x01 ,
   0x03 ,
   0x04 ,
   0x03 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x13 ,
   0x13 ,
   0x13 ,
   0x14 ,
   0x13 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x13 ,
   0x14 ,
   0x14 ,
   0x13 ,
   0x13 ,
   0x13 ,
   0x12 ,
   0x10 ,
   0x10 ,
   0x13 ,
   0x12 ,
   0x12 ,
   0x13 ,
   0x13 ,
   0x12 ,
   0x12 ,
   0x13 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x10 ,
   0x11 ,
   0x11 ,
   0x11 ,
   0x11 ,
   0x11 ,
   0x11 ,
   0x12 ,
   0x12 ,
   0x11 ,
   0x13 ,
   0x14 ,
   0x13 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x14 ,
   0x10 ,
   0x14 ,
   0x30 ,
   0x31 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x33 ,
   0x34 ,
   0x34 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x32 ,
   0x30 ,
   0x30 ,
   0x33 ,
   0x32 ,
   0x32 ,
   0x33 ,
   0x32 ,
   0x32 ,
   0x31 ,
   0x31 ,
   0x31 ,
   0x30 ,
   0x34 ,
   0x34 ,
   0x32 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x34 ,
   0x32 ,
   0x30 ,
   0x34 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x43 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x04 ,
   0x00 ,
   0x04 ,
};


const FaultCntType FaultFunctionTypeIncs [0x122] =
{
   0xff ,
   0xff ,
   0xff ,
   0x80 ,
   0x80 ,
   0xff ,
   0xff ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x33 ,
   0x01 ,
   0x19 ,
   0x80 ,
   0x33 ,
   0x33 ,
   0x19 ,
   0x19 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0x33 ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0x05 ,
   0x80 ,
   0x80 ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x33 ,
   0x01 ,
   0x19 ,
   0x80 ,
   0x33 ,
   0x33 ,
   0x19 ,
   0x19 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x06 ,
   0x06 ,
   0x06 ,
   0x06 ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0xff ,
   0x08 ,
   0x08 ,
   0x33 ,
   0x05 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0x05 ,
   0x80 ,
   0x80 ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x33 ,
   0x01 ,
   0x19 ,
   0x80 ,
   0x33 ,
   0x33 ,
   0x19 ,
   0x19 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x06 ,
   0x06 ,
   0x06 ,
   0x06 ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0xff ,
   0x08 ,
   0x08 ,
   0x33 ,
   0x05 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0x33 ,
   0xff ,
   0xff ,
   0xff ,
   0x80 ,
   0x80 ,
   0xff ,
   0xff ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x33 ,
   0x01 ,
   0x19 ,
   0x80 ,
   0x33 ,
   0x33 ,
   0x19 ,
   0x19 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0x33 ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0x33 ,
};



const FaultCntType FaultFunctionTypeDecs [0x122] =
{
   0x01 ,
   0xff ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x05 ,
   0x05 ,
   0x02 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x33 ,
   0xff ,
   0x33 ,
   0x01 ,
   0xff ,
   0xff ,
   0x00 ,
   0x0a ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x01 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x05 ,
   0x05 ,
   0x02 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x0a ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x33 ,
   0x08 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0xff ,
   0xff ,
   0x00 ,
   0x0a ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x01 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x05 ,
   0x05 ,
   0x02 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x0a ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x33 ,
   0x08 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0x01 ,
   0x01 ,
   0xff ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x00 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x05 ,
   0x05 ,
   0x02 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x01 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x08 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x33 ,
   0xff ,
   0x33 ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0xff ,
   0x33 ,
   0x33 ,
   0x01 ,
   0x33 ,
   0x33 ,
   0x33 ,
   0xff ,
   0x01 ,
};


const FaultBitFieldType FaultFunctionTypeIrrArray[0x59] =
{
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   0 << 6 |
   1 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   1 << 10 |
   1 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   1 << 10 |
   1 << 11 |
   1 << 12 |
   1 << 13 |
   1 << 14 |
   1 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   1 << 10 |
   1 << 11 |
   1 << 12 |
   1 << 13 |
   1 << 14 |
   1 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   0 << 6 |
   1 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
};


const FaultBitFieldType FaultFunctionTypeAutInitArray[0x59] =
{
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   1 << 10 |
   1 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   1 << 10 |
   1 << 11 |
   1 << 12 |
   1 << 13 |
   1 << 14 |
   1 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   1 << 8 |
   1 << 9 |
   1 << 10 |
   1 << 11 |
   1 << 12 |
   1 << 13 |
   1 << 14 |
   1 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   1 << 1 |
   1 << 2 |
   1 << 3 |
   1 << 4 |
   1 << 5 |
   1 << 6 |
   1 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
};


const FaultBitFieldType FaultFunctionTypeLockedArray[0x59] =
{
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   1 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   1 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   1 << 0 |
   0 << 1 |
   1 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
};


const FaultBitFieldType FaultFunctionTypeCntIgnArray[0x59] =
{
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
   0 << 0 |
   0 << 1 |
   0 << 2 |
   0 << 3 |
   0 << 4 |
   0 << 5 |
   0 << 6 |
   0 << 7 |
   0 << 8 |
   0 << 9 |
   0 << 10 |
   0 << 11 |
   0 << 12 |
   0 << 13 |
   0 << 14 |
   0 << 15 ,
};


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 6658 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 6663 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2

const FaultOffsetType FaultFunctionTypeOffsetTable [0x59 + 1] =
{
   0 ,
   2 ,
   3 ,
   8 ,
   12 ,
   15 ,
   17 ,
   19 ,
   21 ,
   22 ,
   24 ,
   25 ,
   26 ,
   27 ,
   28 ,
   29 ,
   30 ,
   40 ,
   41 ,
   44 ,
   46 ,
   52 ,
   56 ,
   59 ,
   61 ,
   63 ,
   65 ,
   67 ,
   69 ,
   73 ,
   74 ,
   75 ,
   77 ,
   82 ,
   83 ,
   84 ,
   85 ,
   86 ,
   93 ,
   96 ,
   98 ,
   104 ,
   108 ,
   111 ,
   113 ,
   115 ,
   117 ,
   119 ,
   121 ,
   125 ,
   126 ,
   127 ,
   129 ,
   134 ,
   135 ,
   136 ,
   137 ,
   138 ,
   145 ,
   153 ,
   155 ,
   156 ,
   161 ,
   165 ,
   168 ,
   170 ,
   172 ,
   174 ,
   175 ,
   177 ,
   178 ,
   179 ,
   180 ,
   181 ,
   182 ,
   183 ,
   193 ,
   194 ,
   204 ,
   214 ,
   226 ,
   230 ,
   234 ,
   238 ,
   254 ,
   270 ,
   274 ,
   278 ,
   282 ,
   290
};


const FaultDtcNbType FaultFunctionTypeDtcNbTable [0x122] =
{
   0xc07388 ,
   0xc29387 ,
   0x150b16 ,
   0x250003 ,
   0x250104 ,
   0x250300 ,
   0x250400 ,
   0x250519 ,
   0x150c17 ,
   0x150d16 ,
   0x250f17 ,
   0x250f16 ,
   0x911717 ,
   0x151500 ,
   0x911816 ,
   0x252700 ,
   0x252800 ,
   0x2d1500 ,
   0x251f00 ,
   0x252301 ,
   0x252402 ,
   0x252813 ,
   0x252a12 ,
   0x252b13 ,
   0x0b2317 ,
   0x252202 ,
   0x252900 ,
   0x253000 ,
   0x252f00 ,
   0x251400 ,
   0x253602 ,
   0x250a03 ,
   0x250801 ,
   0x250902 ,
   0x250801 ,
   0x250902 ,
   0x250801 ,
   0x250902 ,
   0x253501 ,
   0x253501 ,
   0x253400 ,
   0xc07388 ,
   0xc29387 ,
   0xc29387 ,
   0x150b16 ,
   0x0a1b47 ,
   0x1d0d1d ,
   0x1d0e1d ,
   0x0a5f00 ,
   0x0a6200 ,
   0x150519 ,
   0x151600 ,
   0x0b2600 ,
   0x150d16 ,
   0x150f17 ,
   0x150f16 ,
   0x056317 ,
   0x060b1c ,
   0x056216 ,
   0x152700 ,
   0x159200 ,
   0x15194b ,
   0x0a3c4b ,
   0x0aef00 ,
   0x0af000 ,
   0x0a2f4b ,
   0x0a2f4b ,
   0x0a2a11 ,
   0x0a2a12 ,
   0x0c5b00 ,
   0x0c5011 ,
   0x0c5013 ,
   0x0c5012 ,
   0x2d3b92 ,
   0x150e17 ,
   0x1a3c4b ,
   0x0a3c98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x1d1092 ,
   0x0aff31 ,
   0x0a5199 ,
   0x1d254b ,
   0x0be700 ,
   0x0be800 ,
   0x0bec00 ,
   0x0be800 ,
   0x0bec00 ,
   0x0be800 ,
   0x0bec00 ,
   0xc07388 ,
   0xc29387 ,
   0xc29387 ,
   0x150b16 ,
   0x0a1b47 ,
   0x1a0d1d ,
   0x1a0e1d ,
   0x0a7100 ,
   0x0a7400 ,
   0x0a7700 ,
   0x151600 ,
   0x0b2600 ,
   0x150d16 ,
   0x150f17 ,
   0x150f16 ,
   0x056317 ,
   0x060b1c ,
   0x056216 ,
   0x0b2500 ,
   0x159200 ,
   0x15194b ,
   0x0a3e4b ,
   0x0bce00 ,
   0x0bcf00 ,
   0x0a3b4b ,
   0x0a3b4b ,
   0x0a3611 ,
   0x0a3612 ,
   0x0c5b00 ,
   0x0c6411 ,
   0x0c6413 ,
   0x0c6412 ,
   0x2d3b92 ,
   0x0b2317 ,
   0x1d434b ,
   0x0a3e98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x0a2f98 ,
   0x1a1092 ,
   0x0aff31 ,
   0x0a5999 ,
   0x1a254b ,
   0x0e0200 ,
   0x0e0600 ,
   0x0e0700 ,
   0x0e0600 ,
   0x0e0700 ,
   0x0e0600 ,
   0x0e0700 ,
   0x0c6600 ,
   0x0c6700 ,
   0x0a5000 ,
   0x0c6500 ,
   0x0c6600 ,
   0x0c6700 ,
   0x0a5000 ,
   0x1a1492 ,
   0xc07388 ,
   0xc29387 ,
   0x150b16 ,
   0x250003 ,
   0x250104 ,
   0x250300 ,
   0x250400 ,
   0x250519 ,
   0x150c17 ,
   0x150d16 ,
   0x250f17 ,
   0x250f16 ,
   0x911717 ,
   0x151500 ,
   0x911816 ,
   0x252700 ,
   0x252800 ,
   0x2d1500 ,
   0x251f00 ,
   0x252301 ,
   0x252402 ,
   0x252813 ,
   0x252a12 ,
   0x252b13 ,
   0x0b2317 ,
   0x252202 ,
   0x252900 ,
   0x253000 ,
   0x252f00 ,
   0x251400 ,
   0x253602 ,
   0x250a03 ,
   0x250801 ,
   0x250902 ,
   0x250801 ,
   0x250902 ,
   0x250801 ,
   0x250902 ,
   0x253501 ,
   0x253501 ,
   0x253400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x159400 ,
   0x0c5200 ,
   0x0c5300 ,
   0x0a4400 ,
   0x0c5100 ,
   0x0c5200 ,
   0x0c5300 ,
   0x0a5000 ,
   0x1d1492 ,
};


const FaultDtcFailTypeType FaultFunctionTypeDtcFtTable [0x122] =
{
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
   0x01 ,
};


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 7350 "bswcdd\\Dsm\\fault\\FAULT_Data.c" 2
