# 1 "bswcdd\\Dsm\\DSM_Ctx.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Dsm\\DSM_Ctx.c"
# 31 "bswcdd\\Dsm\\DSM_Ctx.c"
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
# 32 "bswcdd\\Dsm\\DSM_Ctx.c" 2

# 1 "bswcdd\\Dsm\\DSM.h" 1
# 37 "bswcdd\\Dsm\\DSM.h"
# 1 "bswcdd\\Dsm\\DSM_Typ.h" 1
# 32 "bswcdd\\Dsm\\DSM_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 "bswcdd\\Dsm\\DSM_Typ.h" 2




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
# 38 "bswcdd\\Dsm\\DSM.h" 2





typedef enum DSM_CONTROL_UNIT_INDEX{
   DSM_UNIT_0 = 0,
   DSM_UNIT_1,
   DSM_UNIT_2,
   DSM_UNIT_3,
   DSM_UNIT_4,
   DSM_UNIT_MAX_NUM
}DSM_CONTROL_UNIT_INDEX;
# 71 "bswcdd\\Dsm\\DSM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 72 "bswcdd\\Dsm\\DSM.h" 2
extern const uint16 FaultEraseRequestC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 75 "bswcdd\\Dsm\\DSM.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 "bswcdd\\Dsm\\DSM.h" 2
extern uint32 DSM_DtcNumber[( 10 )];
extern volatile uint8 FaultFailureLevel;
extern volatile uint8 DSM_FaultFailureLevel[(DSM_UNIT_MAX_NUM + 1)];
extern uint16 FaultEraseRequest;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 88 "bswcdd\\Dsm\\DSM.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 "bswcdd\\Dsm\\DSM.h" 2
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
# 104 "bswcdd\\Dsm\\DSM.h" 2
# 34 "bswcdd\\Dsm\\DSM_Ctx.c" 2
# 1 "bswcdd\\Dsm\\DSM_L.h" 1
# 37 "bswcdd\\Dsm\\DSM_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\Dsm\\DSM_L.h" 2
# 61 "bswcdd\\Dsm\\DSM_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 "bswcdd\\Dsm\\DSM_L.h" 2
void FaultClearDTCRecord(void);
void FaultDetectionWithFail(uint8 Function, uint8 Type);
void FaultDetectionWithoutFail(uint8 Function, uint8 Type);
void FaultRecordDTC(uint16 FaultOffset);
void FaultRecordDTCContext(const uint16 dTCArrayIdx);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 "bswcdd\\Dsm\\DSM_L.h" 2
# 35 "bswcdd\\Dsm\\DSM_Ctx.c" 2

# 1 ".\\output\\inc/FAULT.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/DSM_Drv.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 1
# 36 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 1
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
# 31 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
# 1 ".\\output\\inc/DSM_Drv.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2
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
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 2
# 1 ".\\output\\inc/DSM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 1
# 2 ".\\output\\inc/DSM.h" 2
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 2
# 2 ".\\output\\inc/FAULT.h" 2
# 37 "bswcdd\\Dsm\\DSM_Ctx.c" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 43 "bswcdd\\Dsm\\DSM_Ctx.c" 2
# 54 "bswcdd\\Dsm\\DSM_Ctx.c"
void FaultRecordDTCContext(const uint16 dTCArrayIdx)
{
}


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 60 "bswcdd\\Dsm\\DSM_Ctx.c" 2
