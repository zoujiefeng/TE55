	.file	"OSTFSRV_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	OESM_u8RestartDelayCnt
.section .bss.a1.OESM_u8RestartDelayCnt,"aw",@nobits
	.type	OESM_u8RestartDelayCnt, @object
	.size	OESM_u8RestartDelayCnt, 1
OESM_u8RestartDelayCnt:
	.zero	1
	.global	OESM_u16CmdRes
.section .bss.a2.OESM_u16CmdRes,"aw",@nobits
	.align 1
	.type	OESM_u16CmdRes, @object
	.size	OESM_u16CmdRes, 2
OESM_u16CmdRes:
	.zero	2
	.global	OESM_u16CmdReqNm1
.section .bss.a2.OESM_u16CmdReqNm1,"aw",@nobits
	.align 1
	.type	OESM_u16CmdReqNm1, @object
	.size	OESM_u16CmdReqNm1, 2
OESM_u16CmdReqNm1:
	.zero	2
	.global	OESM_u16CmdReq
.section .bss.a2.OESM_u16CmdReq,"aw",@nobits
	.align 1
	.type	OESM_u16CmdReq, @object
	.size	OESM_u16CmdReq, 2
OESM_u16CmdReq:
	.zero	2
	.global	OESM_u16AfterrunCnt
.section .bss.a2.OESM_u16AfterrunCnt,"aw",@nobits
	.align 1
	.type	OESM_u16AfterrunCnt, @object
	.size	OESM_u16AfterrunCnt, 2
OESM_u16AfterrunCnt:
	.zero	2
	.global	OESM_StpIState
.section .bss.a2.OESM_StpIState,"aw",@nobits
	.align 1
	.type	OESM_StpIState, @object
	.size	OESM_StpIState, 2
OESM_StpIState:
	.zero	2
	.global	OESM_StpIINfState
.section .bss.a2.OESM_StpIINfState,"aw",@nobits
	.align 1
	.type	OESM_StpIINfState, @object
	.size	OESM_StpIINfState, 2
OESM_StpIINfState:
	.zero	2
	.global	OESM_StpIIFtState
.section .bss.a2.OESM_StpIIFtState,"aw",@nobits
	.align 1
	.type	OESM_StpIIFtState, @object
	.size	OESM_StpIIFtState, 2
OESM_StpIIFtState:
	.zero	2
	.global	OESM_u16OpTimeout
.section .bss.a2.OESM_u16OpTimeout,"aw",@nobits
	.align 1
	.type	OESM_u16OpTimeout, @object
	.size	OESM_u16OpTimeout, 2
OESM_u16OpTimeout:
	.zero	2
	.global	OESM_u16OpDelayTime
.section .bss.a2.OESM_u16OpDelayTime,"aw",@nobits
	.align 1
	.type	OESM_u16OpDelayTime, @object
	.size	OESM_u16OpDelayTime, 2
OESM_u16OpDelayTime:
	.zero	2
	.global	OESM_PwrLNfState
.section .bss.a2.OESM_PwrLNfState,"aw",@nobits
	.align 1
	.type	OESM_PwrLNfState, @object
	.size	OESM_PwrLNfState, 2
OESM_PwrLNfState:
	.zero	2
	.global	OESM_PwrLFtState
.section .bss.a2.OESM_PwrLFtState,"aw",@nobits
	.align 1
	.type	OESM_PwrLFtState, @object
	.size	OESM_PwrLFtState, 2
OESM_PwrLFtState:
	.zero	2
	.global	OESM_OpNfState
.section .bss.a2.OESM_OpNfState,"aw",@nobits
	.align 1
	.type	OESM_OpNfState, @object
	.size	OESM_OpNfState, 2
OESM_OpNfState:
	.zero	2
	.global	OESM_OpFtState
.section .bss.a2.OESM_OpFtState,"aw",@nobits
	.align 1
	.type	OESM_OpFtState, @object
	.size	OESM_OpFtState, 2
OESM_OpFtState:
	.zero	2
	.global	OESM_u8PwrOffTim
.section .bss.a1.OESM_u8PwrOffTim,"aw",@nobits
	.type	OESM_u8PwrOffTim, @object
	.size	OESM_u8PwrOffTim, 1
OESM_u8PwrOffTim:
	.zero	1
	.global	OESM_u8PwrLNfStep
.section .bss.a1.OESM_u8PwrLNfStep,"aw",@nobits
	.type	OESM_u8PwrLNfStep, @object
	.size	OESM_u8PwrLNfStep, 1
OESM_u8PwrLNfStep:
	.zero	1
	.global	OESM_u8AllowPwrDnDelay
.section .bss.a1.OESM_u8AllowPwrDnDelay,"aw",@nobits
	.type	OESM_u8AllowPwrDnDelay, @object
	.size	OESM_u8AllowPwrDnDelay, 1
OESM_u8AllowPwrDnDelay:
	.zero	1
	.global	OESM_bPwrLNfClrFltFinsh
.section .bss.a1.OESM_bPwrLNfClrFltFinsh,"aw",@nobits
	.type	OESM_bPwrLNfClrFltFinsh, @object
	.size	OESM_bPwrLNfClrFltFinsh, 1
OESM_bPwrLNfClrFltFinsh:
	.zero	1
	.global	OESM_bPwrDnReadyFlg
.section .bss.a1.OESM_bPwrDnReadyFlg,"aw",@nobits
	.type	OESM_bPwrDnReadyFlg, @object
	.size	OESM_bPwrDnReadyFlg, 1
OESM_bPwrDnReadyFlg:
	.zero	1
	.global	OESM_bMcuEnaReq
.section .bss.a1.OESM_bMcuEnaReq,"aw",@nobits
	.type	OESM_bMcuEnaReq, @object
	.size	OESM_bMcuEnaReq, 1
OESM_bMcuEnaReq:
	.zero	1
	.global	OESM_bCallAppliOn
.section .bss.a1.OESM_bCallAppliOn,"aw",@nobits
	.type	OESM_bCallAppliOn, @object
	.size	OESM_bCallAppliOn, 1
OESM_bCallAppliOn:
	.zero	1
	.global	OESM_bAfterrunReq
.section .bss.a1.OESM_bAfterrunReq,"aw",@nobits
	.type	OESM_bAfterrunReq, @object
	.size	OESM_bAfterrunReq, 1
OESM_bAfterrunReq:
	.zero	1
	.global	OESM_bAfterrunFin
.section .bss.a1.OESM_bAfterrunFin,"aw",@nobits
	.type	OESM_bAfterrunFin, @object
	.size	OESM_bAfterrunFin, 1
OESM_bAfterrunFin:
	.zero	1
	.global	OESM_EsmMode
.section .bss.a2.OESM_EsmMode,"aw",@nobits
	.align 1
	.type	OESM_EsmMode, @object
	.size	OESM_EsmMode, 2
OESM_EsmMode:
	.zero	2
	.global	OESM_ku16AfterrunToutCntC
.section .rodata.Calib_16.OESM_ku16AfterrunToutCntC,"a",@progbits
	.align 1
	.type	OESM_ku16AfterrunToutCntC, @object
	.size	OESM_ku16AfterrunToutCntC, 2
OESM_ku16AfterrunToutCntC:
	.short	500
	.global	OESM_bPowerOffModeInhC
.section .rodata.a1.OESM_bPowerOffModeInhC,"a",@progbits
	.type	OESM_bPowerOffModeInhC, @object
	.size	OESM_bPowerOffModeInhC, 1
OESM_bPowerOffModeInhC:
	.zero	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_DEF.c"
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
	.string	"bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_DEF.c"
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
	.string	"OESM_ku16AfterrunToutCntC"
	.byte	0x2
	.byte	0x2f
	.uaword	0x2b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_ku16AfterrunToutCntC
	.uleb128 0x5
	.uaword	0x1e0
	.uleb128 0x4
	.string	"OESM_u8AllowPwrDnDelay"
	.byte	0x2
	.byte	0x40
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u8AllowPwrDnDelay
	.uleb128 0x4
	.string	"OESM_u8PwrLNfStep"
	.byte	0x2
	.byte	0x41
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u8PwrLNfStep
	.uleb128 0x4
	.string	"OESM_u8PwrOffTim"
	.byte	0x2
	.byte	0x42
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u8PwrOffTim
	.uleb128 0x4
	.string	"OESM_bPowerOffModeInhC"
	.byte	0x2
	.byte	0x29
	.uaword	0x33f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bPowerOffModeInhC
	.uleb128 0x5
	.uaword	0x259
	.uleb128 0x4
	.string	"OESM_EsmMode"
	.byte	0x2
	.byte	0x39
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_EsmMode
	.uleb128 0x4
	.string	"OESM_bAfterrunFin"
	.byte	0x2
	.byte	0x3a
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bAfterrunFin
	.uleb128 0x4
	.string	"OESM_bAfterrunReq"
	.byte	0x2
	.byte	0x3b
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bAfterrunReq
	.uleb128 0x4
	.string	"OESM_bCallAppliOn"
	.byte	0x2
	.byte	0x3c
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bCallAppliOn
	.uleb128 0x4
	.string	"OESM_bMcuEnaReq"
	.byte	0x2
	.byte	0x3d
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bMcuEnaReq
	.uleb128 0x4
	.string	"OESM_bPwrDnReadyFlg"
	.byte	0x2
	.byte	0x3e
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bPwrDnReadyFlg
	.uleb128 0x4
	.string	"OESM_bPwrLNfClrFltFinsh"
	.byte	0x2
	.byte	0x3f
	.uaword	0x259
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_bPwrLNfClrFltFinsh
	.uleb128 0x4
	.string	"OESM_OpFtState"
	.byte	0x2
	.byte	0x43
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_OpFtState
	.uleb128 0x4
	.string	"OESM_OpNfState"
	.byte	0x2
	.byte	0x44
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_OpNfState
	.uleb128 0x4
	.string	"OESM_PwrLFtState"
	.byte	0x2
	.byte	0x45
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_PwrLFtState
	.uleb128 0x4
	.string	"OESM_PwrLNfState"
	.byte	0x2
	.byte	0x46
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_PwrLNfState
	.uleb128 0x4
	.string	"OESM_u16OpDelayTime"
	.byte	0x2
	.byte	0x47
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u16OpDelayTime
	.uleb128 0x4
	.string	"OESM_u16OpTimeout"
	.byte	0x2
	.byte	0x48
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u16OpTimeout
	.uleb128 0x4
	.string	"OESM_StpIIFtState"
	.byte	0x2
	.byte	0x49
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_StpIIFtState
	.uleb128 0x4
	.string	"OESM_StpIINfState"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_StpIINfState
	.uleb128 0x4
	.string	"OESM_StpIState"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_StpIState
	.uleb128 0x4
	.string	"OESM_u16AfterrunCnt"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u16AfterrunCnt
	.uleb128 0x4
	.string	"OESM_u16CmdReq"
	.byte	0x2
	.byte	0x4d
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u16CmdReq
	.uleb128 0x4
	.string	"OESM_u16CmdReqNm1"
	.byte	0x2
	.byte	0x4e
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u16CmdReqNm1
	.uleb128 0x4
	.string	"OESM_u16CmdRes"
	.byte	0x2
	.byte	0x4f
	.uaword	0x1e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u16CmdRes
	.uleb128 0x4
	.string	"OESM_u8RestartDelayCnt"
	.byte	0x2
	.byte	0x50
	.uaword	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OESM_u8RestartDelayCnt
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
