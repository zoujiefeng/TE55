# 1 "bswcdd\\EAS\\EAS_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\EAS\\EAS_DEF.c"
# 31 "bswcdd\\EAS\\EAS_DEF.c"
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
# 32 "bswcdd\\EAS\\EAS_DEF.c" 2
# 1 "bswcdd\\EAS\\EAS.h" 1
# 37 "bswcdd\\EAS\\EAS.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\EAS\\EAS.h" 2
# 65 "bswcdd\\EAS\\EAS.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 66 "bswcdd\\EAS\\EAS.h" 2
extern const boolean EAS_bDefaultEskPassC;
extern const boolean EAS_bRN32EnaOnC;
extern const uint8 EAS_u8Chg1DelayTimoutC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 71 "bswcdd\\EAS\\EAS.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 78 "bswcdd\\EAS\\EAS.h" 2
extern boolean EAS_bAesVerifyRes;
extern boolean EAS_bImmoCodRcvFlg;
extern boolean EAS_bSendNewChalgFlg;
extern uint32 EAS_au32PinESK32[( 4 )];
extern uint8 EAS_au8ComChallengeVal[( 8 )];
extern uint8 EAS_au8ComChallengeValBkp[( 8 )];
extern uint8 EAS_au8ComImmoCode[( 8 )];
extern uint8 EAS_au8ParmCC64Nvm[( 8 )];
extern uint8 EAS_au8ParmEacEncr[( 16 )];
extern uint8 EAS_au8ParmEacSeed[( 16 )];
extern uint8 EAS_au8ParmEarEncr1[( 16 )];
extern uint8 EAS_au8ParmEarEncr2[( 16 )];
extern uint8 EAS_au8ParmRN32[( 4 )];
extern uint8 EAS_au8ParmSC32Nvm[( 4 )];
extern uint8 EAS_au8ParmSK128Nvm[( 16 )];
extern uint8 EAS_u8AuthFailedCnt;
extern uint8 EAS_u8AuthState;
extern uint8 EAS_u8AuthVerifyCnt;
extern uint8 EAS_u8Chg1DelayCnt;
extern uint8 EAS_u8ImmFailReason;
extern uint8 EAS_u8SttTimerCnt;
extern uint8 EAS_u8TMReleaseSig;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 102 "bswcdd\\EAS\\EAS.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 109 "bswcdd\\EAS\\EAS.h" 2
uint8 EAS_u8GetImmFailRes(void);
uint8 EAS_u8GetTMRelsSig(void);
void EAS_vidAuthStateMng(void);
void EAS_vidImmoCodeCallback(const uint8*);
void EAS_vidInit(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 116 "bswcdd\\EAS\\EAS.h" 2
# 33 "bswcdd\\EAS\\EAS_DEF.c" 2
# 1 "bswcdd\\EAS\\EAS_L.h" 1
# 37 "bswcdd\\EAS\\EAS_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\EAS\\EAS_L.h" 2
# 58 "bswcdd\\EAS\\EAS_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\EAS\\EAS_L.h" 2
extern boolean EAS_bDefaultEskFlg;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 "bswcdd\\EAS\\EAS_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 "bswcdd\\EAS\\EAS_L.h" 2
boolean EAS_bVerifyImmoCode(uint8 const*);
void EAS_vidAES128Encrypt(const uint32*, const uint8*, uint8*);
void EAS_vidAES128KeySetupEnc(uint32*, const uint8*);
void EAS_vidDecrypt(void*, void*, void*);
void EAS_vidEncrypt(void*, void*, void*);
void EAS_vidGenChallengeCode(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 77 "bswcdd\\EAS\\EAS_L.h" 2
# 34 "bswcdd\\EAS\\EAS_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 41 "bswcdd\\EAS\\EAS_DEF.c" 2
const boolean EAS_bDefaultEskPassC = 1;
const boolean EAS_bRN32EnaOnC = 1;
const uint8 EAS_u8Chg1DelayTimoutC = 0x01;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 46 "bswcdd\\EAS\\EAS_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 53 "bswcdd\\EAS\\EAS_DEF.c" 2
boolean EAS_bAesVerifyRes;
boolean EAS_bDefaultEskFlg;
boolean EAS_bImmoCodRcvFlg;
boolean EAS_bSendNewChalgFlg;
uint32 EAS_au32PinESK32[( 4 )] = {0};
uint8 EAS_au8ComChallengeVal[( 8 )] = {0};
uint8 EAS_au8ComChallengeValBkp[( 8 )] = {0};
uint8 EAS_au8ComImmoCode[( 8 )] = {0};
uint8 EAS_au8ParmCC64Nvm[( 8 )] = {0};
uint8 EAS_au8ParmEacEncr[( 16 )] = {0};
uint8 EAS_au8ParmEacSeed[( 16 )] = {0};
uint8 EAS_au8ParmEarEncr1[( 16 )] = {0};
uint8 EAS_au8ParmEarEncr2[( 16 )] = {0};
uint8 EAS_au8ParmRN32[( 4 )] = {0};
uint8 EAS_au8ParmSC32Nvm[( 4 )] = {0};
uint8 EAS_au8ParmSK128Nvm[( 16 )] = {0};
uint8 EAS_u8AuthFailedCnt;
uint8 EAS_u8AuthState;
uint8 EAS_u8AuthVerifyCnt;
uint8 EAS_u8Chg1DelayCnt;
uint8 EAS_u8ImmFailReason;
uint8 EAS_u8SttTimerCnt;
uint8 EAS_u8TMReleaseSig;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 78 "bswcdd\\EAS\\EAS_DEF.c" 2
