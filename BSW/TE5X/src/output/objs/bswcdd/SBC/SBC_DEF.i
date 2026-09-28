# 1 "bswcdd\\SBC\\SBC_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SBC\\SBC_DEF.c"
# 31 "bswcdd\\SBC\\SBC_DEF.c"
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
# 32 "bswcdd\\SBC\\SBC_DEF.c" 2
# 1 "bswcdd\\SBC\\SBC.h" 1
# 37 "bswcdd\\SBC\\SBC.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\SBC\\SBC.h" 2
# 60 "bswcdd\\SBC\\SBC.h"
enum{
   SBC_USER_IDLE,
   SBC_USER_CMD_GOTO_STANDBY,
   SBC_USER_CMD_CLOSE_LDO,
   SBC_USER_CMD_OPEN_LDO,
   SBC_USER_CMD_GOTO_INIT,
};
# 77 "bswcdd\\SBC\\SBC.h"
# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 78 "bswcdd\\SBC\\SBC.h" 2
extern uint8 SBC_u8DebounceCount;
extern uint8 SBC_u8LDOManagerState;
extern uint8 SBC_au8StdbyModCmdBuff[( 2 )];
extern uint8 SBC_au8StdbyModDataBuff[( 2 )];
extern uint8 SBC_au8CloseLDOCmdBuff[( 2 )];
extern uint8 SBC_au8CloseLDODataBuff[( 2 )];
extern uint8 SBC_au8OpenLDOCmdBuff[( 2 )];
extern uint8 SBC_au8OpenLDODataBuff[( 2 )];
extern uint8 SBC_au8InitModCmdBuff[( 2 )];
extern uint8 SBC_au8InitModDataBuff[( 2 )];
extern uint8 SBC_u8MaxWdgErrCnt;
extern uint16 SBC_au16StatusRegsNvm[( 18 )];
extern uint32 SBC_au32WdgExtXorMask[( 16 )];
extern float32 SBC_f32BatteryVoltage;
extern float32 SBC_f32BkpVoltage;
extern float32 SBC_bOtherSttFailFlg;

# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 96 "bswcdd\\SBC\\SBC.h" 2






# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 94 "bswcdd\\SBC\\SBC_MemMap.h"
#pragma section ".text" ax
# 103 "bswcdd\\SBC\\SBC.h" 2
void SBC_vidInit(void);
void SBC_vidSetDeinitWdgCmd(const boolean);
void SBC_vidSetWdgActvFinshFlg(void);
uint8 SBC_u8GetUserCmdReq(void);
uint8 SBC_u8GetMaxWdgErrCnt(void);
boolean SBC_bGetDeinitWdgCmd(void);
boolean SBC_bGetFaultClearFlgs(void);
boolean SBC_bGetStdbyModReq(void);
boolean SBC_bGetWdgActvFinshFlg(void);
boolean SBC_bIsSbcFautOccr(void);
boolean SBC_bUnderVoltageManager(void);
boolean SBC_vidSetStdbyModCmd(const boolean);
boolean SBC_bSetUserCmdReq(const uint8 u8UserCmdReq);
boolean SBC_bCheckOutputStt(void);

extern uint16 SBCHal_u16GetAdVal_P5VCom(void);
extern uint16 SBCHal_u16GetAdVal_P5VGateway(void);
extern uint16 SBCHal_u16GetAdVal_P5VBt(void);
extern uint16 SBCHal_u16GetAdVal_P5VRef(void);
extern uint16 SBCHal_u16GetAdVal_P5VAD2S(void);
extern float32 SBCHal_f32GetBatteryVol(void);


# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 135 "bswcdd\\SBC\\SBC_MemMap.h"
#pragma section
# 127 "bswcdd\\SBC\\SBC.h" 2
# 33 "bswcdd\\SBC\\SBC_DEF.c" 2
# 1 "bswcdd\\SBC\\SBC_L.h" 1
# 37 "bswcdd\\SBC\\SBC_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\SBC\\SBC_L.h" 2
# 53 "bswcdd\\SBC\\SBC_L.h"
# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 72 "bswcdd\\SBC\\SBC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 "bswcdd\\SBC\\SBC_MemMap.h" 2
# 54 "bswcdd\\SBC\\SBC_L.h" 2
extern const uint8 SBC_u8ServiceTimeC;
extern const uint16 SBC_ku16IntUnderVoltThdC;
extern const uint16 SBC_ku16IntUvTimoutC;
extern const float32 SBC_f32UnderVolHighThresholdC;
extern const float32 SBC_f32UnderVolLowThresholdC;
extern const float32 SBC_f32RecoverThresholdC;
extern const boolean SBC_bServiceDisableC;

# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 77 "bswcdd\\SBC\\SBC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 "bswcdd\\SBC\\SBC_MemMap.h" 2
# 63 "bswcdd\\SBC\\SBC_L.h" 2






# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 70 "bswcdd\\SBC\\SBC_L.h" 2
extern uint8 SBC_u8UserCmdReq;
extern uint16 SBC_u16P5vAD2SRaw;
extern uint16 SBC_u16GatewayRaw;
extern uint16 SBC_u16MainSupRaw;
extern uint16 SBC_u16P5vRefProtRaw;
extern uint16 SBC_u16P5vComRaw;
extern uint16 SBC_u16IntUvTimCnt;
extern uint16 SBC_u16OtherAbnormCnt;
extern boolean SBC_bDeintWdgCmd;
extern boolean SBC_bStdbyModReq;
extern boolean SBC_bWdgActvFlg;
extern boolean SBC_bSpiOperateFlag;
extern boolean SBC_bUserCmdSendFlag;

# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 85 "bswcdd\\SBC\\SBC_L.h" 2
# 34 "bswcdd\\SBC\\SBC_DEF.c" 2






# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 72 "bswcdd\\SBC\\SBC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 "bswcdd\\SBC\\SBC_MemMap.h" 2
# 41 "bswcdd\\SBC\\SBC_DEF.c" 2
const uint8 SBC_u8ServiceTimeC = 30;
const uint16 SBC_ku16IntUnderVoltThdC = 200;
const uint16 SBC_ku16IntUvTimoutC = 10;
const float32 SBC_f32UnderVolHighThresholdC = (6.00f);
const float32 SBC_f32UnderVolLowThresholdC = (5.40f);
const float32 SBC_f32RecoverThresholdC = (7.50f);
const boolean SBC_bServiceDisableC = (0 != 0);

# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 77 "bswcdd\\SBC\\SBC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 "bswcdd\\SBC\\SBC_MemMap.h" 2
# 50 "bswcdd\\SBC\\SBC_DEF.c" 2






# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 57 "bswcdd\\SBC\\SBC_DEF.c" 2
uint8 SBC_au8StdbyModCmdBuff[( 2 )] = {0};
uint8 SBC_au8StdbyModDataBuff[( 2 )] = {0};
uint8 SBC_au8CloseLDOCmdBuff[( 2 )] = {0};
uint8 SBC_au8CloseLDODataBuff[( 2 )] = {0};
uint8 SBC_au8OpenLDOCmdBuff[( 2 )] = {0};
uint8 SBC_au8OpenLDODataBuff[( 2 )] = {0};
uint8 SBC_au8InitModCmdBuff[( 2 )] = {0};
uint8 SBC_au8InitModDataBuff[( 2 )] = {0};
uint8 SBC_u8MaxWdgErrCnt;
uint8 SBC_u8UserCmdReq;
uint8 SBC_u8DebounceCount;
uint8 SBC_u8LDOManagerState;
uint16 SBC_au16StatusRegsNvm[( 18 )] = {0};
uint16 SBC_u16P5vAD2SRaw;
uint16 SBC_u16GatewayRaw;
uint16 SBC_u16MainSupRaw;
uint16 SBC_u16P5vRefProtRaw;
uint16 SBC_u16P5vComRaw;
uint16 SBC_u16IntUvTimCnt;
uint16 SBC_u16OtherAbnormCnt;
uint32 SBC_au32WdgExtXorMask[( 16 )] = {0};
boolean SBC_bDeintWdgCmd;
boolean SBC_bStdbyModReq;
boolean SBC_bWdgActvFlg;
boolean SBC_bUserCmdSendFlag;
boolean SBC_bSpiOperateFlag;
float32 SBC_f32BatteryVoltage;
float32 SBC_bOtherSttFailFlg;
float32 SBC_f32BkpVoltage;

# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 88 "bswcdd\\SBC\\SBC_DEF.c" 2
