# 1 "bswcdd\\Dsm\\DSM_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Dsm\\DSM_DEF.c"
# 31 "bswcdd\\Dsm\\DSM_DEF.c"
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
# 32 "bswcdd\\Dsm\\DSM_DEF.c" 2
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
# 33 "bswcdd\\Dsm\\DSM_DEF.c" 2
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
# 34 "bswcdd\\Dsm\\DSM_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 41 "bswcdd\\Dsm\\DSM_DEF.c" 2
const uint16 FaultEraseRequestC = 0x0000;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 44 "bswcdd\\Dsm\\DSM_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 51 "bswcdd\\Dsm\\DSM_DEF.c" 2
uint32 DSM_DtcNumber[( 10 )] = {0};
volatile uint8 FaultFailureLevel;
volatile uint8 DSM_FaultFailureLevel[(DSM_UNIT_MAX_NUM + 1)] = {0};
uint16 FaultEraseRequest;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 57 "bswcdd\\Dsm\\DSM_DEF.c" 2
