	.file	"TLE9180_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	TLE9180_u16ErrPinChkCnt
.section .bss.a2.TLE9180_u16ErrPinChkCnt,"aw",@nobits
	.align 1
	.type	TLE9180_u16ErrPinChkCnt, @object
	.size	TLE9180_u16ErrPinChkCnt, 2
TLE9180_u16ErrPinChkCnt:
	.zero	2
	.global	TLE9180_u16EnaResetTime
.section .bss.a2.TLE9180_u16EnaResetTime,"aw",@nobits
	.align 1
	.type	TLE9180_u16EnaResetTime, @object
	.size	TLE9180_u16EnaResetTime, 2
TLE9180_u16EnaResetTime:
	.zero	2
	.global	TLE9180_u8WriteRegAddr
.section .bss.a1.TLE9180_u8WriteRegAddr,"aw",@nobits
	.type	TLE9180_u8WriteRegAddr, @object
	.size	TLE9180_u8WriteRegAddr, 1
TLE9180_u8WriteRegAddr:
	.zero	1
	.global	TLE9180_u8WriteData
.section .bss.a1.TLE9180_u8WriteData,"aw",@nobits
	.type	TLE9180_u8WriteData, @object
	.size	TLE9180_u8WriteData, 1
TLE9180_u8WriteData:
	.zero	1
	.global	TLE9180_u8SpiTxFrameMaxNb
.section .bss.a1.TLE9180_u8SpiTxFrameMaxNb,"aw",@nobits
	.type	TLE9180_u8SpiTxFrameMaxNb, @object
	.size	TLE9180_u8SpiTxFrameMaxNb, 1
TLE9180_u8SpiTxFrameMaxNb:
	.zero	1
	.global	TLE9180_u8SelfTestStep
.section .bss.a1.TLE9180_u8SelfTestStep,"aw",@nobits
	.type	TLE9180_u8SelfTestStep, @object
	.size	TLE9180_u8SelfTestStep, 1
TLE9180_u8SelfTestStep:
	.zero	1
	.global	TLE9180_u8ReadRegAddr
.section .bss.a1.TLE9180_u8ReadRegAddr,"aw",@nobits
	.type	TLE9180_u8ReadRegAddr, @object
	.size	TLE9180_u8ReadRegAddr, 1
TLE9180_u8ReadRegAddr:
	.zero	1
	.global	TLE9180_u8RdRegTimCnt
.section .bss.a1.TLE9180_u8RdRegTimCnt,"aw",@nobits
	.type	TLE9180_u8RdRegTimCnt, @object
	.size	TLE9180_u8RdRegTimCnt, 1
TLE9180_u8RdRegTimCnt:
	.zero	1
	.global	TLE9180_u8Mode
.section .bss.a1.TLE9180_u8Mode,"aw",@nobits
	.type	TLE9180_u8Mode, @object
	.size	TLE9180_u8Mode, 1
TLE9180_u8Mode:
	.zero	1
	.global	TLE9180_u8ErrRecoverCnt
.section .bss.a1.TLE9180_u8ErrRecoverCnt,"aw",@nobits
	.type	TLE9180_u8ErrRecoverCnt, @object
	.size	TLE9180_u8ErrRecoverCnt, 1
TLE9180_u8ErrRecoverCnt:
	.zero	1
	.global	TLE9180_u8InitFailedCnt
.section .bss.a1.TLE9180_u8InitFailedCnt,"aw",@nobits
	.type	TLE9180_u8InitFailedCnt, @object
	.size	TLE9180_u8InitFailedCnt, 1
TLE9180_u8InitFailedCnt:
	.zero	1
	.global	TLE9180_u8ReCfgCnt
.section .bss.a1.TLE9180_u8ReCfgCnt,"aw",@nobits
	.type	TLE9180_u8ReCfgCnt, @object
	.size	TLE9180_u8ReCfgCnt, 1
TLE9180_u8ReCfgCnt:
	.zero	1
	.global	TLE9180_au8ReadRegs
.section .bss.a1.TLE9180_au8ReadRegs,"aw",@nobits
	.type	TLE9180_au8ReadRegs, @object
	.size	TLE9180_au8ReadRegs, 30
TLE9180_au8ReadRegs:
	.zero	30
	.global	TLE9180_au8ReadPhsTemp
.section .bss.a1.TLE9180_au8ReadPhsTemp,"aw",@nobits
	.type	TLE9180_au8ReadPhsTemp, @object
	.size	TLE9180_au8ReadPhsTemp, 6
TLE9180_au8ReadPhsTemp:
	.zero	6
	.global	TLE9180_au8CfgRegReadBk
.section .bss.a1.TLE9180_au8CfgRegReadBk,"aw",@nobits
	.type	TLE9180_au8CfgRegReadBk, @object
	.size	TLE9180_au8CfgRegReadBk, 30
TLE9180_au8CfgRegReadBk:
	.zero	30
	.global	TLE9180_au8CfgRegister
.section .bss.a1.TLE9180_au8CfgRegister,"aw",@nobits
	.type	TLE9180_au8CfgRegister, @object
	.size	TLE9180_au8CfgRegister, 30
TLE9180_au8CfgRegister:
	.zero	30
	.global	TLE9180_au32StateRegs
.section .bss.a4.TLE9180_au32StateRegs,"aw",@nobits
	.align 2
	.type	TLE9180_au32StateRegs, @object
	.size	TLE9180_au32StateRegs, 120
TLE9180_au32StateRegs:
	.zero	120
	.global	TLE9180_au32ICInitSpiFrame
.section .bss.a4.TLE9180_au32ICInitSpiFrame,"aw",@nobits
	.align 2
	.type	TLE9180_au32ICInitSpiFrame, @object
	.size	TLE9180_au32ICInitSpiFrame, 120
TLE9180_au32ICInitSpiFrame:
	.zero	120
	.global	TLE9180_au32SpiWriteFrame
.section .bss.a4.TLE9180_au32SpiWriteFrame,"aw",@nobits
	.align 2
	.type	TLE9180_au32SpiWriteFrame, @object
	.size	TLE9180_au32SpiWriteFrame, 120
TLE9180_au32SpiWriteFrame:
	.zero	120
	.global	TLE9180_au32ErrRegsReadFrame
.section .bss.a4.TLE9180_au32ErrRegsReadFrame,"aw",@nobits
	.align 2
	.type	TLE9180_au32ErrRegsReadFrame, @object
	.size	TLE9180_au32ErrRegsReadFrame, 120
TLE9180_au32ErrRegsReadFrame:
	.zero	120
	.global	TLE9180_au32SpiTstWriteFrame
.section .bss.a4.TLE9180_au32SpiTstWriteFrame,"aw",@nobits
	.align 2
	.type	TLE9180_au32SpiTstWriteFrame, @object
	.size	TLE9180_au32SpiTstWriteFrame, 120
TLE9180_au32SpiTstWriteFrame:
	.zero	120
	.global	TLE9180_au32SpiTstReadFrame
.section .bss.a4.TLE9180_au32SpiTstReadFrame,"aw",@nobits
	.align 2
	.type	TLE9180_au32SpiTstReadFrame, @object
	.size	TLE9180_au32SpiTstReadFrame, 120
TLE9180_au32SpiTstReadFrame:
	.zero	120
	.global	TLE9180_au32SpiReadFrame
.section .bss.a4.TLE9180_au32SpiReadFrame,"aw",@nobits
	.align 2
	.type	TLE9180_au32SpiReadFrame, @object
	.size	TLE9180_au32SpiReadFrame, 120
TLE9180_au32SpiReadFrame:
	.zero	120
	.global	TLE9180_f32BatteryVoltage
.section .bss.a4.TLE9180_f32BatteryVoltage,"aw",@nobits
	.align 2
	.type	TLE9180_f32BatteryVoltage, @object
	.size	TLE9180_f32BatteryVoltage, 4
TLE9180_f32BatteryVoltage:
	.zero	4
	.global	TLE9180_f32MaxPhsTempPhys
.section .bss.a4.TLE9180_f32MaxPhsTempPhys,"aw",@nobits
	.align 2
	.type	TLE9180_f32MaxPhsTempPhys, @object
	.size	TLE9180_f32MaxPhsTempPhys, 4
TLE9180_f32MaxPhsTempPhys:
	.zero	4
	.global	TLE9180_af32ReadPhsTempPhys
.section .bss.a4.TLE9180_af32ReadPhsTempPhys,"aw",@nobits
	.align 2
	.type	TLE9180_af32ReadPhsTempPhys, @object
	.size	TLE9180_af32ReadPhsTempPhys, 24
TLE9180_af32ReadPhsTempPhys:
	.zero	24
	.global	TLE9180_u32ReinitStartTime
.section .bss.a4.TLE9180_u32ReinitStartTime,"aw",@nobits
	.align 2
	.type	TLE9180_u32ReinitStartTime, @object
	.size	TLE9180_u32ReinitStartTime, 4
TLE9180_u32ReinitStartTime:
	.zero	4
	.global	TLE9180_u32ReinitEndTime
.section .bss.a4.TLE9180_u32ReinitEndTime,"aw",@nobits
	.align 2
	.type	TLE9180_u32ReinitEndTime, @object
	.size	TLE9180_u32ReinitEndTime, 4
TLE9180_u32ReinitEndTime:
	.zero	4
	.global	TLE9180_u32ReinitTotalTime
.section .bss.a4.TLE9180_u32ReinitTotalTime,"aw",@nobits
	.align 2
	.type	TLE9180_u32ReinitTotalTime, @object
	.size	TLE9180_u32ReinitTotalTime, 4
TLE9180_u32ReinitTotalTime:
	.zero	4
	.global	TLE9180_bTestWriteReg
.section .bss.a1.TLE9180_bTestWriteReg,"aw",@nobits
	.type	TLE9180_bTestWriteReg, @object
	.size	TLE9180_bTestWriteReg, 1
TLE9180_bTestWriteReg:
	.zero	1
	.global	TLE9180_bTestReadReg
.section .bss.a1.TLE9180_bTestReadReg,"aw",@nobits
	.type	TLE9180_bTestReadReg, @object
	.size	TLE9180_bTestReadReg, 1
TLE9180_bTestReadReg:
	.zero	1
	.global	TLE9180_bReadErrInfoFlg
.section .bss.a1.TLE9180_bReadErrInfoFlg,"aw",@nobits
	.type	TLE9180_bReadErrInfoFlg, @object
	.size	TLE9180_bReadErrInfoFlg, 1
TLE9180_bReadErrInfoFlg:
	.zero	1
	.global	TLE9180_bPhsOverVolt
.section .bss.a1.TLE9180_bPhsOverVolt,"aw",@nobits
	.type	TLE9180_bPhsOverVolt, @object
	.size	TLE9180_bPhsOverVolt, 1
TLE9180_bPhsOverVolt:
	.zero	1
	.global	TLE9180_bPhaseShortLow
.section .bss.a1.TLE9180_bPhaseShortLow,"aw",@nobits
	.type	TLE9180_bPhaseShortLow, @object
	.size	TLE9180_bPhaseShortLow, 1
TLE9180_bPhaseShortLow:
	.zero	1
	.global	TLE9180_bPhaseShortHigh
.section .bss.a1.TLE9180_bPhaseShortHigh,"aw",@nobits
	.type	TLE9180_bPhaseShortHigh, @object
	.size	TLE9180_bPhaseShortHigh, 1
TLE9180_bPhaseShortHigh:
	.zero	1
	.global	TLE9180_bInitFailFlg
.section .bss.a1.TLE9180_bInitFailFlg,"aw",@nobits
	.type	TLE9180_bInitFailFlg, @object
	.size	TLE9180_bInitFailFlg, 1
TLE9180_bInitFailFlg:
	.zero	1
	.global	TLE9180_bErrorPinLevel
.section .bss.a1.TLE9180_bErrorPinLevel,"aw",@nobits
	.type	TLE9180_bErrorPinLevel, @object
	.size	TLE9180_bErrorPinLevel, 1
TLE9180_bErrorPinLevel:
	.zero	1
	.global	TLE9180_bDrvUnderVoltage
.section .bss.a1.TLE9180_bDrvUnderVoltage,"aw",@nobits
	.type	TLE9180_bDrvUnderVoltage, @object
	.size	TLE9180_bDrvUnderVoltage, 1
TLE9180_bDrvUnderVoltage:
	.zero	1
	.global	TLE9180_bDrvOverVoltage
.section .bss.a1.TLE9180_bDrvOverVoltage,"aw",@nobits
	.type	TLE9180_bDrvOverVoltage, @object
	.size	TLE9180_bDrvOverVoltage, 1
TLE9180_bDrvOverVoltage:
	.zero	1
	.global	TLE9180_bDrvOverTemp
.section .bss.a1.TLE9180_bDrvOverTemp,"aw",@nobits
	.type	TLE9180_bDrvOverTemp, @object
	.size	TLE9180_bDrvOverTemp, 1
TLE9180_bDrvOverTemp:
	.zero	1
	.global	TLE9180_bDrvOverCurrent
.section .bss.a1.TLE9180_bDrvOverCurrent,"aw",@nobits
	.type	TLE9180_bDrvOverCurrent, @object
	.size	TLE9180_bDrvOverCurrent, 1
TLE9180_bDrvOverCurrent:
	.zero	1
	.global	TLE9180_bIsInCfgLockMode
.section .bss.a1.TLE9180_bIsInCfgLockMode,"aw",@nobits
	.type	TLE9180_bIsInCfgLockMode, @object
	.size	TLE9180_bIsInCfgLockMode, 1
TLE9180_bIsInCfgLockMode:
	.zero	1
	.global	TLE9180_bIsInIdleMode
.section .bss.a1.TLE9180_bIsInIdleMode,"aw",@nobits
	.type	TLE9180_bIsInIdleMode, @object
	.size	TLE9180_bIsInIdleMode, 1
TLE9180_bIsInIdleMode:
	.zero	1
	.global	TLE9180_bIsModeReq
.section .bss.a1.TLE9180_bIsModeReq,"aw",@nobits
	.type	TLE9180_bIsModeReq, @object
	.size	TLE9180_bIsModeReq, 1
TLE9180_bIsModeReq:
	.zero	1
	.global	TLE9180_kf32BatteryVolValidThrdC
.section .rodata.Calib_unspec.TLE9180_kf32BatteryVolValidThrdC,"a",@progbits
	.align 2
	.type	TLE9180_kf32BatteryVolValidThrdC, @object
	.size	TLE9180_kf32BatteryVolValidThrdC, 4
TLE9180_kf32BatteryVolValidThrdC:
	.word	1090519040
	.global	TLE9180_kf32PhsTempFltRecoverC
.section .rodata.Calib_unspec.TLE9180_kf32PhsTempFltRecoverC,"a",@progbits
	.align 2
	.type	TLE9180_kf32PhsTempFltRecoverC, @object
	.size	TLE9180_kf32PhsTempFltRecoverC, 4
TLE9180_kf32PhsTempFltRecoverC:
	.word	1123942400
	.global	TLE9180_kf32PhsTempFaultC
.section .rodata.Calib_unspec.TLE9180_kf32PhsTempFaultC,"a",@progbits
	.align 2
	.type	TLE9180_kf32PhsTempFaultC, @object
	.size	TLE9180_kf32PhsTempFaultC, 4
TLE9180_kf32PhsTempFaultC:
	.word	1124204544
	.global	TLE9180_ku16ErrPinChkTimC
.section .rodata.Calib_16.TLE9180_ku16ErrPinChkTimC,"a",@progbits
	.align 1
	.type	TLE9180_ku16ErrPinChkTimC, @object
	.size	TLE9180_ku16ErrPinChkTimC, 2
TLE9180_ku16ErrPinChkTimC:
	.short	10
	.global	TLE9180_ku16EnaResetTimeC
.section .rodata.Calib_16.TLE9180_ku16EnaResetTimeC,"a",@progbits
	.align 1
	.type	TLE9180_ku16EnaResetTimeC, @object
	.size	TLE9180_ku16EnaResetTimeC, 2
TLE9180_ku16EnaResetTimeC:
	.short	100
	.global	TLE9180_ku8ErrRecvMaxNumC
.section .rodata.Calib_8.TLE9180_ku8ErrRecvMaxNumC,"a",@progbits
	.type	TLE9180_ku8ErrRecvMaxNumC, @object
	.size	TLE9180_ku8ErrRecvMaxNumC, 1
TLE9180_ku8ErrRecvMaxNumC:
	.byte	6
	.global	TLE9180_ku8EnaResetCntC
.section .rodata.Calib_8.TLE9180_ku8EnaResetCntC,"a",@progbits
	.type	TLE9180_ku8EnaResetCntC, @object
	.size	TLE9180_ku8EnaResetCntC, 1
TLE9180_ku8EnaResetCntC:
	.byte	5
	.global	TLE9180_ku8MaxReCfgTimeC
.section .rodata.Calib_8.TLE9180_ku8MaxReCfgTimeC,"a",@progbits
	.type	TLE9180_ku8MaxReCfgTimeC, @object
	.size	TLE9180_ku8MaxReCfgTimeC, 1
TLE9180_ku8MaxReCfgTimeC:
	.byte	50
	.global	TLE9180_ku8MaxInitTimeC
.section .rodata.Calib_8.TLE9180_ku8MaxInitTimeC,"a",@progbits
	.type	TLE9180_ku8MaxInitTimeC, @object
	.size	TLE9180_ku8MaxInitTimeC, 1
TLE9180_ku8MaxInitTimeC:
	.byte	10
	.global	TLE9180_bPhasePerfTestOnC
.section .rodata.Calib_bool.TLE9180_bPhasePerfTestOnC,"a",@progbits
	.type	TLE9180_bPhasePerfTestOnC, @object
	.size	TLE9180_bPhasePerfTestOnC, 1
TLE9180_bPhasePerfTestOnC:
	.zero	1
	.global	TLE9180_bPhsOverVoltTestOnC
.section .rodata.Calib_bool.TLE9180_bPhsOverVoltTestOnC,"a",@progbits
	.type	TLE9180_bPhsOverVoltTestOnC, @object
	.size	TLE9180_bPhsOverVoltTestOnC, 1
TLE9180_bPhsOverVoltTestOnC:
	.zero	1
	.global	TLE9180_bDrvOverCurrentTestOnC
.section .rodata.Calib_bool.TLE9180_bDrvOverCurrentTestOnC,"a",@progbits
	.type	TLE9180_bDrvOverCurrentTestOnC, @object
	.size	TLE9180_bDrvOverCurrentTestOnC, 1
TLE9180_bDrvOverCurrentTestOnC:
	.zero	1
	.global	TLE9180_bPhaseShortLowTestOnC
.section .rodata.Calib_bool.TLE9180_bPhaseShortLowTestOnC,"a",@progbits
	.type	TLE9180_bPhaseShortLowTestOnC, @object
	.size	TLE9180_bPhaseShortLowTestOnC, 1
TLE9180_bPhaseShortLowTestOnC:
	.zero	1
	.global	TLE9180_bPhaseShortHighTestOnC
.section .rodata.Calib_bool.TLE9180_bPhaseShortHighTestOnC,"a",@progbits
	.type	TLE9180_bPhaseShortHighTestOnC, @object
	.size	TLE9180_bPhaseShortHighTestOnC, 1
TLE9180_bPhaseShortHighTestOnC:
	.zero	1
	.global	TLE9180_bDrvOverTempTestOnC
.section .rodata.Calib_bool.TLE9180_bDrvOverTempTestOnC,"a",@progbits
	.type	TLE9180_bDrvOverTempTestOnC, @object
	.size	TLE9180_bDrvOverTempTestOnC, 1
TLE9180_bDrvOverTempTestOnC:
	.zero	1
	.global	TLE9180_bDrvUnderVoltageTestOnC
.section .rodata.Calib_bool.TLE9180_bDrvUnderVoltageTestOnC,"a",@progbits
	.type	TLE9180_bDrvUnderVoltageTestOnC, @object
	.size	TLE9180_bDrvUnderVoltageTestOnC, 1
TLE9180_bDrvUnderVoltageTestOnC:
	.zero	1
	.global	TLE9180_bDrvOverVoltageTestOnC
.section .rodata.Calib_bool.TLE9180_bDrvOverVoltageTestOnC,"a",@progbits
	.type	TLE9180_bDrvOverVoltageTestOnC, @object
	.size	TLE9180_bDrvOverVoltageTestOnC, 1
TLE9180_bDrvOverVoltageTestOnC:
	.zero	1
	.global	TLE9180_bManualReadRegC
.section .rodata.Calib_bool.TLE9180_bManualReadRegC,"a",@progbits
	.type	TLE9180_bManualReadRegC, @object
	.size	TLE9180_bManualReadRegC, 1
TLE9180_bManualReadRegC:
	.zero	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc70
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x1
	.byte	0x51
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x1
	.byte	0x5b
	.uaword	0x1f1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x1
	.byte	0x6a
	.uaword	0x22d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x1
	.byte	0x75
	.uaword	0x266
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x1
	.byte	0x80
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"TLE9180_bIsModeReq"
	.byte	0x2
	.byte	0x51
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bIsModeReq
	.uleb128 0x4
	.string	"TLE9180_bIsInIdleMode"
	.byte	0x2
	.byte	0x52
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bIsInIdleMode
	.uleb128 0x4
	.string	"TLE9180_bIsInCfgLockMode"
	.byte	0x2
	.byte	0x53
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bIsInCfgLockMode
	.uleb128 0x4
	.string	"TLE9180_bDrvOverCurrent"
	.byte	0x2
	.byte	0x54
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvOverCurrent
	.uleb128 0x4
	.string	"TLE9180_bDrvOverTemp"
	.byte	0x2
	.byte	0x55
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvOverTemp
	.uleb128 0x4
	.string	"TLE9180_bDrvOverVoltage"
	.byte	0x2
	.byte	0x56
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvOverVoltage
	.uleb128 0x4
	.string	"TLE9180_bDrvUnderVoltage"
	.byte	0x2
	.byte	0x57
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvUnderVoltage
	.uleb128 0x4
	.string	"TLE9180_bErrorPinLevel"
	.byte	0x2
	.byte	0x58
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bErrorPinLevel
	.uleb128 0x4
	.string	"TLE9180_bInitFailFlg"
	.byte	0x2
	.byte	0x59
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bInitFailFlg
	.uleb128 0x4
	.string	"TLE9180_bPhaseShortHigh"
	.byte	0x2
	.byte	0x5a
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhaseShortHigh
	.uleb128 0x4
	.string	"TLE9180_bPhaseShortLow"
	.byte	0x2
	.byte	0x5b
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhaseShortLow
	.uleb128 0x4
	.string	"TLE9180_bPhsOverVolt"
	.byte	0x2
	.byte	0x5c
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhsOverVolt
	.uleb128 0x4
	.string	"TLE9180_bReadErrInfoFlg"
	.byte	0x2
	.byte	0x5d
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bReadErrInfoFlg
	.uleb128 0x4
	.string	"TLE9180_bTestReadReg"
	.byte	0x2
	.byte	0x5e
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bTestReadReg
	.uleb128 0x4
	.string	"TLE9180_bTestWriteReg"
	.byte	0x2
	.byte	0x5f
	.uaword	0x279
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bTestWriteReg
	.uleb128 0x4
	.string	"TLE9180_u32ReinitTotalTime"
	.byte	0x2
	.byte	0x60
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u32ReinitTotalTime
	.uleb128 0x4
	.string	"TLE9180_u32ReinitEndTime"
	.byte	0x2
	.byte	0x61
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u32ReinitEndTime
	.uleb128 0x4
	.string	"TLE9180_u32ReinitStartTime"
	.byte	0x2
	.byte	0x62
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u32ReinitStartTime
	.uleb128 0x5
	.uaword	0x257
	.uaword	0x557
	.uleb128 0x6
	.uaword	0x557
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"TLE9180_af32ReadPhsTempPhys"
	.byte	0x2
	.byte	0x63
	.uaword	0x547
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_af32ReadPhsTempPhys
	.uleb128 0x4
	.string	"TLE9180_f32MaxPhsTempPhys"
	.byte	0x2
	.byte	0x64
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_f32MaxPhsTempPhys
	.uleb128 0x4
	.string	"TLE9180_f32BatteryVoltage"
	.byte	0x2
	.byte	0x65
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_f32BatteryVoltage
	.uleb128 0x5
	.uaword	0x21f
	.uaword	0x5ed
	.uleb128 0x6
	.uaword	0x557
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.string	"TLE9180_au32SpiReadFrame"
	.byte	0x2
	.byte	0x66
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32SpiReadFrame
	.uleb128 0x4
	.string	"TLE9180_au32SpiTstReadFrame"
	.byte	0x2
	.byte	0x67
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32SpiTstReadFrame
	.uleb128 0x4
	.string	"TLE9180_au32SpiTstWriteFrame"
	.byte	0x2
	.byte	0x68
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32SpiTstWriteFrame
	.uleb128 0x4
	.string	"TLE9180_au32ErrRegsReadFrame"
	.byte	0x2
	.byte	0x69
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32ErrRegsReadFrame
	.uleb128 0x4
	.string	"TLE9180_au32SpiWriteFrame"
	.byte	0x2
	.byte	0x6a
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32SpiWriteFrame
	.uleb128 0x4
	.string	"TLE9180_au32ICInitSpiFrame"
	.byte	0x2
	.byte	0x6b
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32ICInitSpiFrame
	.uleb128 0x4
	.string	"TLE9180_au32StateRegs"
	.byte	0x2
	.byte	0x6c
	.uaword	0x5dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au32StateRegs
	.uleb128 0x5
	.uaword	0x1b8
	.uaword	0x719
	.uleb128 0x6
	.uaword	0x557
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.string	"TLE9180_au8CfgRegister"
	.byte	0x2
	.byte	0x6d
	.uaword	0x709
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au8CfgRegister
	.uleb128 0x4
	.string	"TLE9180_au8CfgRegReadBk"
	.byte	0x2
	.byte	0x6e
	.uaword	0x709
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au8CfgRegReadBk
	.uleb128 0x5
	.uaword	0x1b8
	.uaword	0x774
	.uleb128 0x6
	.uaword	0x557
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.string	"TLE9180_au8ReadPhsTemp"
	.byte	0x2
	.byte	0x6f
	.uaword	0x764
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au8ReadPhsTemp
	.uleb128 0x4
	.string	"TLE9180_au8ReadRegs"
	.byte	0x2
	.byte	0x70
	.uaword	0x709
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_au8ReadRegs
	.uleb128 0x4
	.string	"TLE9180_u8ReCfgCnt"
	.byte	0x2
	.byte	0x71
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8ReCfgCnt
	.uleb128 0x4
	.string	"TLE9180_u8InitFailedCnt"
	.byte	0x2
	.byte	0x72
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8InitFailedCnt
	.uleb128 0x4
	.string	"TLE9180_u8ErrRecoverCnt"
	.byte	0x2
	.byte	0x73
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8ErrRecoverCnt
	.uleb128 0x4
	.string	"TLE9180_u8Mode"
	.byte	0x2
	.byte	0x74
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8Mode
	.uleb128 0x4
	.string	"TLE9180_u8RdRegTimCnt"
	.byte	0x2
	.byte	0x75
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8RdRegTimCnt
	.uleb128 0x4
	.string	"TLE9180_u8ReadRegAddr"
	.byte	0x2
	.byte	0x76
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8ReadRegAddr
	.uleb128 0x4
	.string	"TLE9180_u8SelfTestStep"
	.byte	0x2
	.byte	0x77
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8SelfTestStep
	.uleb128 0x4
	.string	"TLE9180_u8SpiTxFrameMaxNb"
	.byte	0x2
	.byte	0x78
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8SpiTxFrameMaxNb
	.uleb128 0x4
	.string	"TLE9180_u8WriteData"
	.byte	0x2
	.byte	0x79
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8WriteData
	.uleb128 0x4
	.string	"TLE9180_u8WriteRegAddr"
	.byte	0x2
	.byte	0x7a
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8WriteRegAddr
	.uleb128 0x4
	.string	"TLE9180_u16EnaResetTime"
	.byte	0x2
	.byte	0x7b
	.uaword	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u16EnaResetTime
	.uleb128 0x4
	.string	"TLE9180_u16ErrPinChkCnt"
	.byte	0x2
	.byte	0x7c
	.uaword	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u16ErrPinChkCnt
	.uleb128 0x4
	.string	"TLE9180_bManualReadRegC"
	.byte	0x2
	.byte	0x29
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bManualReadRegC
	.uleb128 0x7
	.uaword	0x279
	.uleb128 0x4
	.string	"TLE9180_bDrvOverVoltageTestOnC"
	.byte	0x2
	.byte	0x2a
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvOverVoltageTestOnC
	.uleb128 0x4
	.string	"TLE9180_bDrvUnderVoltageTestOnC"
	.byte	0x2
	.byte	0x2b
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvUnderVoltageTestOnC
	.uleb128 0x4
	.string	"TLE9180_bDrvOverTempTestOnC"
	.byte	0x2
	.byte	0x2c
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvOverTempTestOnC
	.uleb128 0x4
	.string	"TLE9180_bPhaseShortHighTestOnC"
	.byte	0x2
	.byte	0x2d
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhaseShortHighTestOnC
	.uleb128 0x4
	.string	"TLE9180_bPhaseShortLowTestOnC"
	.byte	0x2
	.byte	0x2e
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhaseShortLowTestOnC
	.uleb128 0x4
	.string	"TLE9180_bDrvOverCurrentTestOnC"
	.byte	0x2
	.byte	0x2f
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bDrvOverCurrentTestOnC
	.uleb128 0x4
	.string	"TLE9180_bPhsOverVoltTestOnC"
	.byte	0x2
	.byte	0x30
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhsOverVoltTestOnC
	.uleb128 0x4
	.string	"TLE9180_bPhasePerfTestOnC"
	.byte	0x2
	.byte	0x31
	.uaword	0x993
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_bPhasePerfTestOnC
	.uleb128 0x4
	.string	"TLE9180_ku8MaxInitTimeC"
	.byte	0x2
	.byte	0x37
	.uaword	0xb1b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_ku8MaxInitTimeC
	.uleb128 0x7
	.uaword	0x1b8
	.uleb128 0x4
	.string	"TLE9180_ku8MaxReCfgTimeC"
	.byte	0x2
	.byte	0x38
	.uaword	0xb1b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_ku8MaxReCfgTimeC
	.uleb128 0x4
	.string	"TLE9180_ku8EnaResetCntC"
	.byte	0x2
	.byte	0x39
	.uaword	0xb1b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_ku8EnaResetCntC
	.uleb128 0x4
	.string	"TLE9180_ku8ErrRecvMaxNumC"
	.byte	0x2
	.byte	0x3a
	.uaword	0xb1b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_ku8ErrRecvMaxNumC
	.uleb128 0x4
	.string	"TLE9180_ku16EnaResetTimeC"
	.byte	0x2
	.byte	0x40
	.uaword	0xbbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_ku16EnaResetTimeC
	.uleb128 0x7
	.uaword	0x1e3
	.uleb128 0x4
	.string	"TLE9180_ku16ErrPinChkTimC"
	.byte	0x2
	.byte	0x41
	.uaword	0xbbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_ku16ErrPinChkTimC
	.uleb128 0x4
	.string	"TLE9180_kf32PhsTempFaultC"
	.byte	0x2
	.byte	0x47
	.uaword	0xc12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_kf32PhsTempFaultC
	.uleb128 0x7
	.uaword	0x257
	.uleb128 0x4
	.string	"TLE9180_kf32PhsTempFltRecoverC"
	.byte	0x2
	.byte	0x48
	.uaword	0xc12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_kf32PhsTempFltRecoverC
	.uleb128 0x4
	.string	"TLE9180_kf32BatteryVolValidThrdC"
	.byte	0x2
	.byte	0x49
	.uaword	0xc12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_kf32BatteryVolValidThrdC
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x14
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
