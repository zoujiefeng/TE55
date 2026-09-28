	.file	"SBC_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	SBC_f32BkpVoltage
.section .bss.a4.SBC_f32BkpVoltage,"aw",@nobits
	.align 2
	.type	SBC_f32BkpVoltage, @object
	.size	SBC_f32BkpVoltage, 4
SBC_f32BkpVoltage:
	.zero	4
	.global	SBC_bOtherSttFailFlg
.section .bss.a4.SBC_bOtherSttFailFlg,"aw",@nobits
	.align 2
	.type	SBC_bOtherSttFailFlg, @object
	.size	SBC_bOtherSttFailFlg, 4
SBC_bOtherSttFailFlg:
	.zero	4
	.global	SBC_f32BatteryVoltage
.section .bss.a4.SBC_f32BatteryVoltage,"aw",@nobits
	.align 2
	.type	SBC_f32BatteryVoltage, @object
	.size	SBC_f32BatteryVoltage, 4
SBC_f32BatteryVoltage:
	.zero	4
	.global	SBC_bSpiOperateFlag
.section .bss.a1.SBC_bSpiOperateFlag,"aw",@nobits
	.type	SBC_bSpiOperateFlag, @object
	.size	SBC_bSpiOperateFlag, 1
SBC_bSpiOperateFlag:
	.zero	1
	.global	SBC_bUserCmdSendFlag
.section .bss.a1.SBC_bUserCmdSendFlag,"aw",@nobits
	.type	SBC_bUserCmdSendFlag, @object
	.size	SBC_bUserCmdSendFlag, 1
SBC_bUserCmdSendFlag:
	.zero	1
	.global	SBC_bWdgActvFlg
.section .bss.a1.SBC_bWdgActvFlg,"aw",@nobits
	.type	SBC_bWdgActvFlg, @object
	.size	SBC_bWdgActvFlg, 1
SBC_bWdgActvFlg:
	.zero	1
	.global	SBC_bStdbyModReq
.section .bss.a1.SBC_bStdbyModReq,"aw",@nobits
	.type	SBC_bStdbyModReq, @object
	.size	SBC_bStdbyModReq, 1
SBC_bStdbyModReq:
	.zero	1
	.global	SBC_bDeintWdgCmd
.section .bss.a1.SBC_bDeintWdgCmd,"aw",@nobits
	.type	SBC_bDeintWdgCmd, @object
	.size	SBC_bDeintWdgCmd, 1
SBC_bDeintWdgCmd:
	.zero	1
	.global	SBC_au32WdgExtXorMask
.section .bss.a4.SBC_au32WdgExtXorMask,"aw",@nobits
	.align 2
	.type	SBC_au32WdgExtXorMask, @object
	.size	SBC_au32WdgExtXorMask, 64
SBC_au32WdgExtXorMask:
	.zero	64
	.global	SBC_u16OtherAbnormCnt
.section .bss.a2.SBC_u16OtherAbnormCnt,"aw",@nobits
	.align 1
	.type	SBC_u16OtherAbnormCnt, @object
	.size	SBC_u16OtherAbnormCnt, 2
SBC_u16OtherAbnormCnt:
	.zero	2
	.global	SBC_u16IntUvTimCnt
.section .bss.a2.SBC_u16IntUvTimCnt,"aw",@nobits
	.align 1
	.type	SBC_u16IntUvTimCnt, @object
	.size	SBC_u16IntUvTimCnt, 2
SBC_u16IntUvTimCnt:
	.zero	2
	.global	SBC_u16P5vComRaw
.section .bss.a2.SBC_u16P5vComRaw,"aw",@nobits
	.align 1
	.type	SBC_u16P5vComRaw, @object
	.size	SBC_u16P5vComRaw, 2
SBC_u16P5vComRaw:
	.zero	2
	.global	SBC_u16P5vRefProtRaw
.section .bss.a2.SBC_u16P5vRefProtRaw,"aw",@nobits
	.align 1
	.type	SBC_u16P5vRefProtRaw, @object
	.size	SBC_u16P5vRefProtRaw, 2
SBC_u16P5vRefProtRaw:
	.zero	2
	.global	SBC_u16MainSupRaw
.section .bss.a2.SBC_u16MainSupRaw,"aw",@nobits
	.align 1
	.type	SBC_u16MainSupRaw, @object
	.size	SBC_u16MainSupRaw, 2
SBC_u16MainSupRaw:
	.zero	2
	.global	SBC_u16GatewayRaw
.section .bss.a2.SBC_u16GatewayRaw,"aw",@nobits
	.align 1
	.type	SBC_u16GatewayRaw, @object
	.size	SBC_u16GatewayRaw, 2
SBC_u16GatewayRaw:
	.zero	2
	.global	SBC_u16P5vAD2SRaw
.section .bss.a2.SBC_u16P5vAD2SRaw,"aw",@nobits
	.align 1
	.type	SBC_u16P5vAD2SRaw, @object
	.size	SBC_u16P5vAD2SRaw, 2
SBC_u16P5vAD2SRaw:
	.zero	2
	.global	SBC_au16StatusRegsNvm
.section .bss.a2.SBC_au16StatusRegsNvm,"aw",@nobits
	.align 1
	.type	SBC_au16StatusRegsNvm, @object
	.size	SBC_au16StatusRegsNvm, 36
SBC_au16StatusRegsNvm:
	.zero	36
	.global	SBC_u8LDOManagerState
.section .bss.a1.SBC_u8LDOManagerState,"aw",@nobits
	.type	SBC_u8LDOManagerState, @object
	.size	SBC_u8LDOManagerState, 1
SBC_u8LDOManagerState:
	.zero	1
	.global	SBC_u8DebounceCount
.section .bss.a1.SBC_u8DebounceCount,"aw",@nobits
	.type	SBC_u8DebounceCount, @object
	.size	SBC_u8DebounceCount, 1
SBC_u8DebounceCount:
	.zero	1
	.global	SBC_u8UserCmdReq
.section .bss.a1.SBC_u8UserCmdReq,"aw",@nobits
	.type	SBC_u8UserCmdReq, @object
	.size	SBC_u8UserCmdReq, 1
SBC_u8UserCmdReq:
	.zero	1
	.global	SBC_u8MaxWdgErrCnt
.section .bss.a1.SBC_u8MaxWdgErrCnt,"aw",@nobits
	.type	SBC_u8MaxWdgErrCnt, @object
	.size	SBC_u8MaxWdgErrCnt, 1
SBC_u8MaxWdgErrCnt:
	.zero	1
	.global	SBC_au8InitModDataBuff
.section .bss.a1.SBC_au8InitModDataBuff,"aw",@nobits
	.type	SBC_au8InitModDataBuff, @object
	.size	SBC_au8InitModDataBuff, 2
SBC_au8InitModDataBuff:
	.zero	2
	.global	SBC_au8InitModCmdBuff
.section .bss.a1.SBC_au8InitModCmdBuff,"aw",@nobits
	.type	SBC_au8InitModCmdBuff, @object
	.size	SBC_au8InitModCmdBuff, 2
SBC_au8InitModCmdBuff:
	.zero	2
	.global	SBC_au8OpenLDODataBuff
.section .bss.a1.SBC_au8OpenLDODataBuff,"aw",@nobits
	.type	SBC_au8OpenLDODataBuff, @object
	.size	SBC_au8OpenLDODataBuff, 2
SBC_au8OpenLDODataBuff:
	.zero	2
	.global	SBC_au8OpenLDOCmdBuff
.section .bss.a1.SBC_au8OpenLDOCmdBuff,"aw",@nobits
	.type	SBC_au8OpenLDOCmdBuff, @object
	.size	SBC_au8OpenLDOCmdBuff, 2
SBC_au8OpenLDOCmdBuff:
	.zero	2
	.global	SBC_au8CloseLDODataBuff
.section .bss.a1.SBC_au8CloseLDODataBuff,"aw",@nobits
	.type	SBC_au8CloseLDODataBuff, @object
	.size	SBC_au8CloseLDODataBuff, 2
SBC_au8CloseLDODataBuff:
	.zero	2
	.global	SBC_au8CloseLDOCmdBuff
.section .bss.a1.SBC_au8CloseLDOCmdBuff,"aw",@nobits
	.type	SBC_au8CloseLDOCmdBuff, @object
	.size	SBC_au8CloseLDOCmdBuff, 2
SBC_au8CloseLDOCmdBuff:
	.zero	2
	.global	SBC_au8StdbyModDataBuff
.section .bss.a1.SBC_au8StdbyModDataBuff,"aw",@nobits
	.type	SBC_au8StdbyModDataBuff, @object
	.size	SBC_au8StdbyModDataBuff, 2
SBC_au8StdbyModDataBuff:
	.zero	2
	.global	SBC_au8StdbyModCmdBuff
.section .bss.a1.SBC_au8StdbyModCmdBuff,"aw",@nobits
	.type	SBC_au8StdbyModCmdBuff, @object
	.size	SBC_au8StdbyModCmdBuff, 2
SBC_au8StdbyModCmdBuff:
	.zero	2
	.global	SBC_bServiceDisableC
.section .rodata.Calib_32.SBC_bServiceDisableC,"a",@progbits
	.align 2
	.type	SBC_bServiceDisableC, @object
	.size	SBC_bServiceDisableC, 1
SBC_bServiceDisableC:
	.zero	1
	.global	SBC_f32RecoverThresholdC
.section .rodata.Calib_32.SBC_f32RecoverThresholdC,"a",@progbits
	.align 2
	.type	SBC_f32RecoverThresholdC, @object
	.size	SBC_f32RecoverThresholdC, 4
SBC_f32RecoverThresholdC:
	.word	1089470464
	.global	SBC_f32UnderVolLowThresholdC
.section .rodata.Calib_32.SBC_f32UnderVolLowThresholdC,"a",@progbits
	.align 2
	.type	SBC_f32UnderVolLowThresholdC, @object
	.size	SBC_f32UnderVolLowThresholdC, 4
SBC_f32UnderVolLowThresholdC:
	.word	1085066445
	.global	SBC_f32UnderVolHighThresholdC
.section .rodata.Calib_32.SBC_f32UnderVolHighThresholdC,"a",@progbits
	.align 2
	.type	SBC_f32UnderVolHighThresholdC, @object
	.size	SBC_f32UnderVolHighThresholdC, 4
SBC_f32UnderVolHighThresholdC:
	.word	1086324736
	.global	SBC_ku16IntUvTimoutC
.section .rodata.Calib_32.SBC_ku16IntUvTimoutC,"a",@progbits
	.align 2
	.type	SBC_ku16IntUvTimoutC, @object
	.size	SBC_ku16IntUvTimoutC, 2
SBC_ku16IntUvTimoutC:
	.short	10
	.global	SBC_ku16IntUnderVoltThdC
.section .rodata.Calib_32.SBC_ku16IntUnderVoltThdC,"a",@progbits
	.align 2
	.type	SBC_ku16IntUnderVoltThdC, @object
	.size	SBC_ku16IntUnderVoltThdC, 2
SBC_ku16IntUnderVoltThdC:
	.short	200
	.global	SBC_u8ServiceTimeC
.section .rodata.Calib_32.SBC_u8ServiceTimeC,"a",@progbits
	.align 2
	.type	SBC_u8ServiceTimeC, @object
	.size	SBC_u8ServiceTimeC, 1
SBC_u8ServiceTimeC:
	.byte	30
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\SBC\\SBC_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7d5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SBC\\SBC_DEF.c"
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
	.uaword	0x1b3
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
	.uaword	0x1df
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
	.uaword	0x21b
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
	.uaword	0x254
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
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"SBC_u8DebounceCount"
	.byte	0x2
	.byte	0x43
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u8DebounceCount
	.uleb128 0x4
	.string	"SBC_u8LDOManagerState"
	.byte	0x2
	.byte	0x44
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u8LDOManagerState
	.uleb128 0x5
	.uaword	0x1a6
	.uaword	0x2ed
	.uleb128 0x6
	.uaword	0x2ed
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SBC_au8StdbyModCmdBuff"
	.byte	0x2
	.byte	0x39
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8StdbyModCmdBuff
	.uleb128 0x4
	.string	"SBC_au8StdbyModDataBuff"
	.byte	0x2
	.byte	0x3a
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8StdbyModDataBuff
	.uleb128 0x4
	.string	"SBC_au8CloseLDOCmdBuff"
	.byte	0x2
	.byte	0x3b
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8CloseLDOCmdBuff
	.uleb128 0x4
	.string	"SBC_au8CloseLDODataBuff"
	.byte	0x2
	.byte	0x3c
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8CloseLDODataBuff
	.uleb128 0x4
	.string	"SBC_au8OpenLDOCmdBuff"
	.byte	0x2
	.byte	0x3d
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8OpenLDOCmdBuff
	.uleb128 0x4
	.string	"SBC_au8OpenLDODataBuff"
	.byte	0x2
	.byte	0x3e
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8OpenLDODataBuff
	.uleb128 0x4
	.string	"SBC_au8InitModCmdBuff"
	.byte	0x2
	.byte	0x3f
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8InitModCmdBuff
	.uleb128 0x4
	.string	"SBC_au8InitModDataBuff"
	.byte	0x2
	.byte	0x40
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au8InitModDataBuff
	.uleb128 0x4
	.string	"SBC_u8MaxWdgErrCnt"
	.byte	0x2
	.byte	0x41
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u8MaxWdgErrCnt
	.uleb128 0x5
	.uaword	0x1d1
	.uaword	0x452
	.uleb128 0x6
	.uaword	0x2ed
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.string	"SBC_au16StatusRegsNvm"
	.byte	0x2
	.byte	0x45
	.uaword	0x442
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au16StatusRegsNvm
	.uleb128 0x5
	.uaword	0x20d
	.uaword	0x486
	.uleb128 0x6
	.uaword	0x2ed
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"SBC_au32WdgExtXorMask"
	.byte	0x2
	.byte	0x4d
	.uaword	0x476
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_au32WdgExtXorMask
	.uleb128 0x4
	.string	"SBC_f32BatteryVoltage"
	.byte	0x2
	.byte	0x53
	.uaword	0x245
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_f32BatteryVoltage
	.uleb128 0x4
	.string	"SBC_f32BkpVoltage"
	.byte	0x2
	.byte	0x55
	.uaword	0x245
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_f32BkpVoltage
	.uleb128 0x4
	.string	"SBC_bOtherSttFailFlg"
	.byte	0x2
	.byte	0x54
	.uaword	0x245
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bOtherSttFailFlg
	.uleb128 0x4
	.string	"SBC_u8ServiceTimeC"
	.byte	0x2
	.byte	0x29
	.uaword	0x532
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u8ServiceTimeC
	.uleb128 0x7
	.uaword	0x1a6
	.uleb128 0x4
	.string	"SBC_ku16IntUnderVoltThdC"
	.byte	0x2
	.byte	0x2a
	.uaword	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_ku16IntUnderVoltThdC
	.uleb128 0x7
	.uaword	0x1d1
	.uleb128 0x4
	.string	"SBC_ku16IntUvTimoutC"
	.byte	0x2
	.byte	0x2b
	.uaword	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_ku16IntUvTimoutC
	.uleb128 0x4
	.string	"SBC_f32UnderVolHighThresholdC"
	.byte	0x2
	.byte	0x2c
	.uaword	0x5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_f32UnderVolHighThresholdC
	.uleb128 0x7
	.uaword	0x245
	.uleb128 0x4
	.string	"SBC_f32UnderVolLowThresholdC"
	.byte	0x2
	.byte	0x2d
	.uaword	0x5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_f32UnderVolLowThresholdC
	.uleb128 0x4
	.string	"SBC_f32RecoverThresholdC"
	.byte	0x2
	.byte	0x2e
	.uaword	0x5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_f32RecoverThresholdC
	.uleb128 0x4
	.string	"SBC_bServiceDisableC"
	.byte	0x2
	.byte	0x2f
	.uaword	0x62c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bServiceDisableC
	.uleb128 0x7
	.uaword	0x267
	.uleb128 0x4
	.string	"SBC_u8UserCmdReq"
	.byte	0x2
	.byte	0x42
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u8UserCmdReq
	.uleb128 0x4
	.string	"SBC_u16P5vAD2SRaw"
	.byte	0x2
	.byte	0x46
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16P5vAD2SRaw
	.uleb128 0x4
	.string	"SBC_u16GatewayRaw"
	.byte	0x2
	.byte	0x47
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16GatewayRaw
	.uleb128 0x4
	.string	"SBC_u16MainSupRaw"
	.byte	0x2
	.byte	0x48
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16MainSupRaw
	.uleb128 0x4
	.string	"SBC_u16P5vRefProtRaw"
	.byte	0x2
	.byte	0x49
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16P5vRefProtRaw
	.uleb128 0x4
	.string	"SBC_u16P5vComRaw"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16P5vComRaw
	.uleb128 0x4
	.string	"SBC_u16IntUvTimCnt"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16IntUvTimCnt
	.uleb128 0x4
	.string	"SBC_u16OtherAbnormCnt"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16OtherAbnormCnt
	.uleb128 0x4
	.string	"SBC_bDeintWdgCmd"
	.byte	0x2
	.byte	0x4e
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bDeintWdgCmd
	.uleb128 0x4
	.string	"SBC_bStdbyModReq"
	.byte	0x2
	.byte	0x4f
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bStdbyModReq
	.uleb128 0x4
	.string	"SBC_bWdgActvFlg"
	.byte	0x2
	.byte	0x50
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bWdgActvFlg
	.uleb128 0x4
	.string	"SBC_bSpiOperateFlag"
	.byte	0x2
	.byte	0x52
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bSpiOperateFlag
	.uleb128 0x4
	.string	"SBC_bUserCmdSendFlag"
	.byte	0x2
	.byte	0x51
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bUserCmdSendFlag
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
