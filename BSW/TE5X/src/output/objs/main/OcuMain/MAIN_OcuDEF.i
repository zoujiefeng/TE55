# 1 "main\\OcuMain\\MAIN_OcuDEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "main\\OcuMain\\MAIN_OcuDEF.c"
# 31 "main\\OcuMain\\MAIN_OcuDEF.c"
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
# 32 "main\\OcuMain\\MAIN_OcuDEF.c" 2
# 1 "main\\OcuMain\\MAIN_Ocutsk.h" 1
# 37 "main\\OcuMain\\MAIN_Ocutsk.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "main\\OcuMain\\MAIN_Ocutsk.h" 2
# 59 "main\\OcuMain\\MAIN_Ocutsk.h"
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
# 33 "main\\OcuMain\\MAIN_OcuDEF.c" 2
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
# 34 "main\\OcuMain\\MAIN_OcuDEF.c" 2






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
# 41 "main\\OcuMain\\MAIN_OcuDEF.c" 2
const float32 OMAIN_f32CanSpeedTgtSetC = 1500;
const float32 OMAIN_f32UvwOvCurrThdC = 75;
const uint32 OMAIN_u32VSICntCkreqESMStartedC = 4900;
const uint32 OMAIN_u32VSICntCkreqVSIStartedC = 100;
const float32 OMAIN_f32OverBhvThdC = 0.159;

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
# 48 "main\\OcuMain\\MAIN_OcuDEF.c" 2



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
# 52 "main\\OcuMain\\MAIN_OcuDEF.c" 2
const boolean OMAIN_HARDBenchOnC = 0;
const boolean OMAIN_VSIBenchOnWriteDataC = 0;

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
# 56 "main\\OcuMain\\MAIN_OcuDEF.c" 2



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
# 60 "main\\OcuMain\\MAIN_OcuDEF.c" 2
const uint8 OMAIN_u8IgbtFltConfirmCntC = 2;

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
# 63 "main\\OcuMain\\MAIN_OcuDEF.c" 2



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
# 67 "main\\OcuMain\\MAIN_OcuDEF.c" 2

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
# 69 "main\\OcuMain\\MAIN_OcuDEF.c" 2






# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 76 "main\\OcuMain\\MAIN_OcuDEF.c" 2
volatile uint8 OMAIN_u8StopCacheFreezeFrameCnt;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 79 "main\\OcuMain\\MAIN_OcuDEF.c" 2
