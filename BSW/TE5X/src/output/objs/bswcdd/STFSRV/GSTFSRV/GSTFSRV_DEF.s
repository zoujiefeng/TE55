	.file	"GSTFSRV_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	GESM_u8RestartDelayCnt
.section .bss.a1.GESM_u8RestartDelayCnt,"aw",@nobits
	.type	GESM_u8RestartDelayCnt, @object
	.size	GESM_u8RestartDelayCnt, 1
GESM_u8RestartDelayCnt:
	.zero	1
	.global	GESM_u16CmdRes
.section .bss.a2.GESM_u16CmdRes,"aw",@nobits
	.align 1
	.type	GESM_u16CmdRes, @object
	.size	GESM_u16CmdRes, 2
GESM_u16CmdRes:
	.zero	2
	.global	GESM_u16CmdReqNm1
.section .bss.a2.GESM_u16CmdReqNm1,"aw",@nobits
	.align 1
	.type	GESM_u16CmdReqNm1, @object
	.size	GESM_u16CmdReqNm1, 2
GESM_u16CmdReqNm1:
	.zero	2
	.global	GESM_u16CmdReq
.section .bss.a2.GESM_u16CmdReq,"aw",@nobits
	.align 1
	.type	GESM_u16CmdReq, @object
	.size	GESM_u16CmdReq, 2
GESM_u16CmdReq:
	.zero	2
	.global	GESM_u16AfterrunCnt
.section .bss.a2.GESM_u16AfterrunCnt,"aw",@nobits
	.align 1
	.type	GESM_u16AfterrunCnt, @object
	.size	GESM_u16AfterrunCnt, 2
GESM_u16AfterrunCnt:
	.zero	2
	.global	GESM_StpIState
.section .bss.a2.GESM_StpIState,"aw",@nobits
	.align 1
	.type	GESM_StpIState, @object
	.size	GESM_StpIState, 2
GESM_StpIState:
	.zero	2
	.global	GESM_StpIINfState
.section .bss.a2.GESM_StpIINfState,"aw",@nobits
	.align 1
	.type	GESM_StpIINfState, @object
	.size	GESM_StpIINfState, 2
GESM_StpIINfState:
	.zero	2
	.global	GESM_StpIIFtState
.section .bss.a2.GESM_StpIIFtState,"aw",@nobits
	.align 1
	.type	GESM_StpIIFtState, @object
	.size	GESM_StpIIFtState, 2
GESM_StpIIFtState:
	.zero	2
	.global	GESM_u16OpTimeout
.section .bss.a2.GESM_u16OpTimeout,"aw",@nobits
	.align 1
	.type	GESM_u16OpTimeout, @object
	.size	GESM_u16OpTimeout, 2
GESM_u16OpTimeout:
	.zero	2
	.global	GESM_u16OpDelayTime
.section .bss.a2.GESM_u16OpDelayTime,"aw",@nobits
	.align 1
	.type	GESM_u16OpDelayTime, @object
	.size	GESM_u16OpDelayTime, 2
GESM_u16OpDelayTime:
	.zero	2
	.global	GESM_PwrLNfState
.section .bss.a2.GESM_PwrLNfState,"aw",@nobits
	.align 1
	.type	GESM_PwrLNfState, @object
	.size	GESM_PwrLNfState, 2
GESM_PwrLNfState:
	.zero	2
	.global	GESM_PwrLFtState
.section .bss.a2.GESM_PwrLFtState,"aw",@nobits
	.align 1
	.type	GESM_PwrLFtState, @object
	.size	GESM_PwrLFtState, 2
GESM_PwrLFtState:
	.zero	2
	.global	GESM_OpNfState
.section .bss.a2.GESM_OpNfState,"aw",@nobits
	.align 1
	.type	GESM_OpNfState, @object
	.size	GESM_OpNfState, 2
GESM_OpNfState:
	.zero	2
	.global	GESM_OpFtState
.section .bss.a2.GESM_OpFtState,"aw",@nobits
	.align 1
	.type	GESM_OpFtState, @object
	.size	GESM_OpFtState, 2
GESM_OpFtState:
	.zero	2
	.global	GESM_u8PwrOffTim
.section .bss.a1.GESM_u8PwrOffTim,"aw",@nobits
	.type	GESM_u8PwrOffTim, @object
	.size	GESM_u8PwrOffTim, 1
GESM_u8PwrOffTim:
	.zero	1
	.global	GESM_u8PwrLNfStep
.section .bss.a1.GESM_u8PwrLNfStep,"aw",@nobits
	.type	GESM_u8PwrLNfStep, @object
	.size	GESM_u8PwrLNfStep, 1
GESM_u8PwrLNfStep:
	.zero	1
	.global	GESM_u8AllowPwrDnDelay
.section .bss.a1.GESM_u8AllowPwrDnDelay,"aw",@nobits
	.type	GESM_u8AllowPwrDnDelay, @object
	.size	GESM_u8AllowPwrDnDelay, 1
GESM_u8AllowPwrDnDelay:
	.zero	1
	.global	GESM_bPwrLNfClrFltFinsh
.section .bss.a1.GESM_bPwrLNfClrFltFinsh,"aw",@nobits
	.type	GESM_bPwrLNfClrFltFinsh, @object
	.size	GESM_bPwrLNfClrFltFinsh, 1
GESM_bPwrLNfClrFltFinsh:
	.zero	1
	.global	GESM_bPwrDnReadyFlg
.section .bss.a1.GESM_bPwrDnReadyFlg,"aw",@nobits
	.type	GESM_bPwrDnReadyFlg, @object
	.size	GESM_bPwrDnReadyFlg, 1
GESM_bPwrDnReadyFlg:
	.zero	1
	.global	GESM_bMcuEnaReq
.section .bss.a1.GESM_bMcuEnaReq,"aw",@nobits
	.type	GESM_bMcuEnaReq, @object
	.size	GESM_bMcuEnaReq, 1
GESM_bMcuEnaReq:
	.zero	1
	.global	GESM_bCallAppliOn
.section .bss.a1.GESM_bCallAppliOn,"aw",@nobits
	.type	GESM_bCallAppliOn, @object
	.size	GESM_bCallAppliOn, 1
GESM_bCallAppliOn:
	.zero	1
	.global	GESM_bAfterrunReq
.section .bss.a1.GESM_bAfterrunReq,"aw",@nobits
	.type	GESM_bAfterrunReq, @object
	.size	GESM_bAfterrunReq, 1
GESM_bAfterrunReq:
	.zero	1
	.global	GESM_bAfterrunFin
.section .bss.a1.GESM_bAfterrunFin,"aw",@nobits
	.type	GESM_bAfterrunFin, @object
	.size	GESM_bAfterrunFin, 1
GESM_bAfterrunFin:
	.zero	1
	.global	GESM_EsmMode
.section .bss.a2.GESM_EsmMode,"aw",@nobits
	.align 1
	.type	GESM_EsmMode, @object
	.size	GESM_EsmMode, 2
GESM_EsmMode:
	.zero	2
	.global	GESM_ku16AfterrunToutCntC
.section .rodata.Calib_16.GESM_ku16AfterrunToutCntC,"a",@progbits
	.align 1
	.type	GESM_ku16AfterrunToutCntC, @object
	.size	GESM_ku16AfterrunToutCntC, 2
GESM_ku16AfterrunToutCntC:
	.short	500
	.global	GESM_bPowerOffModeInhC
.section .rodata.a1.GESM_bPowerOffModeInhC,"a",@progbits
	.type	GESM_bPowerOffModeInhC, @object
	.size	GESM_bPowerOffModeInhC, 1
GESM_bPowerOffModeInhC:
	.zero	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\STFSRV\\GSTFSRV\\GSTFSRV_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5da
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\STFSRV\\GSTFSRV\\GSTFSRV_DEF.c"
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
	.uaword	0x1c2
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
	.uaword	0x1ee
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
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
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"GESM_ku16AfterrunToutCntC"
	.byte	0x2
	.byte	0x2f
	.uaword	0x2b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_ku16AfterrunToutCntC
	.uleb128 0x5
	.uaword	0x1e0
	.uleb128 0x4
	.string	"GESM_u8AllowPwrDnDelay"
	.byte	0x2
	.byte	0x40
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u8AllowPwrDnDelay
	.uleb128 0x4
	.string	"GESM_u8PwrLNfStep"
	.byte	0x2
	.byte	0x41
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u8PwrLNfStep
	.uleb128 0x4
	.string	"GESM_u8PwrOffTim"
	.byte	0x2
	.byte	0x42
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u8PwrOffTim
	.uleb128 0x4
	.string	"GESM_bPowerOffModeInhC"
	.byte	0x2
	.byte	0x29
	.uaword	0x33f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bPowerOffModeInhC
	.uleb128 0x5
	.uaword	0x259
	.uleb128 0x4
	.string	"GESM_EsmMode"
	.byte	0x2
	.byte	0x39
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_EsmMode
	.uleb128 0x4
	.string	"GESM_bAfterrunFin"
	.byte	0x2
	.byte	0x3a
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bAfterrunFin
	.uleb128 0x4
	.string	"GESM_bAfterrunReq"
	.byte	0x2
	.byte	0x3b
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bAfterrunReq
	.uleb128 0x4
	.string	"GESM_bCallAppliOn"
	.byte	0x2
	.byte	0x3c
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bCallAppliOn
	.uleb128 0x4
	.string	"GESM_bMcuEnaReq"
	.byte	0x2
	.byte	0x3d
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bMcuEnaReq
	.uleb128 0x4
	.string	"GESM_bPwrDnReadyFlg"
	.byte	0x2
	.byte	0x3e
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bPwrDnReadyFlg
	.uleb128 0x4
	.string	"GESM_bPwrLNfClrFltFinsh"
	.byte	0x2
	.byte	0x3f
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bPwrLNfClrFltFinsh
	.uleb128 0x4
	.string	"GESM_OpFtState"
	.byte	0x2
	.byte	0x43
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_OpFtState
	.uleb128 0x4
	.string	"GESM_OpNfState"
	.byte	0x2
	.byte	0x44
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_OpNfState
	.uleb128 0x4
	.string	"GESM_PwrLFtState"
	.byte	0x2
	.byte	0x45
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_PwrLFtState
	.uleb128 0x4
	.string	"GESM_PwrLNfState"
	.byte	0x2
	.byte	0x46
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_PwrLNfState
	.uleb128 0x4
	.string	"GESM_u16OpDelayTime"
	.byte	0x2
	.byte	0x47
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16OpDelayTime
	.uleb128 0x4
	.string	"GESM_u16OpTimeout"
	.byte	0x2
	.byte	0x48
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16OpTimeout
	.uleb128 0x4
	.string	"GESM_StpIIFtState"
	.byte	0x2
	.byte	0x49
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_StpIIFtState
	.uleb128 0x4
	.string	"GESM_StpIINfState"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_StpIINfState
	.uleb128 0x4
	.string	"GESM_StpIState"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_StpIState
	.uleb128 0x4
	.string	"GESM_u16AfterrunCnt"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16AfterrunCnt
	.uleb128 0x4
	.string	"GESM_u16CmdReq"
	.byte	0x2
	.byte	0x4d
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16CmdReq
	.uleb128 0x4
	.string	"GESM_u16CmdReqNm1"
	.byte	0x2
	.byte	0x4e
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16CmdReqNm1
	.uleb128 0x4
	.string	"GESM_u16CmdRes"
	.byte	0x2
	.byte	0x4f
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16CmdRes
	.uleb128 0x4
	.string	"GESM_u8RestartDelayCnt"
	.byte	0x2
	.byte	0x50
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u8RestartDelayCnt
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
