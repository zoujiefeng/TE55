	.file	"STFSRV_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	ESM_u8RestartDelayCnt
.section .bss.a1.ESM_u8RestartDelayCnt,"aw",@nobits
	.type	ESM_u8RestartDelayCnt, @object
	.size	ESM_u8RestartDelayCnt, 1
ESM_u8RestartDelayCnt:
	.zero	1
	.global	ESM_u16CmdRes
.section .bss.a2.ESM_u16CmdRes,"aw",@nobits
	.align 1
	.type	ESM_u16CmdRes, @object
	.size	ESM_u16CmdRes, 2
ESM_u16CmdRes:
	.zero	2
	.global	ESM_u16CmdReqNm1
.section .bss.a2.ESM_u16CmdReqNm1,"aw",@nobits
	.align 1
	.type	ESM_u16CmdReqNm1, @object
	.size	ESM_u16CmdReqNm1, 2
ESM_u16CmdReqNm1:
	.zero	2
	.global	ESM_u16CmdReq
.section .bss.a2.ESM_u16CmdReq,"aw",@nobits
	.align 1
	.type	ESM_u16CmdReq, @object
	.size	ESM_u16CmdReq, 2
ESM_u16CmdReq:
	.zero	2
	.global	ESM_StpIState
.section .bss.a2.ESM_StpIState,"aw",@nobits
	.align 1
	.type	ESM_StpIState, @object
	.size	ESM_StpIState, 2
ESM_StpIState:
	.zero	2
	.global	ESM_StpIINfState
.section .bss.a2.ESM_StpIINfState,"aw",@nobits
	.align 1
	.type	ESM_StpIINfState, @object
	.size	ESM_StpIINfState, 2
ESM_StpIINfState:
	.zero	2
	.global	ESM_StpIIFtState
.section .bss.a2.ESM_StpIIFtState,"aw",@nobits
	.align 1
	.type	ESM_StpIIFtState, @object
	.size	ESM_StpIIFtState, 2
ESM_StpIIFtState:
	.zero	2
	.global	ESM_u16OpTimeout
.section .bss.a2.ESM_u16OpTimeout,"aw",@nobits
	.align 1
	.type	ESM_u16OpTimeout, @object
	.size	ESM_u16OpTimeout, 2
ESM_u16OpTimeout:
	.zero	2
	.global	ESM_u16OpDelayTime
.section .bss.a2.ESM_u16OpDelayTime,"aw",@nobits
	.align 1
	.type	ESM_u16OpDelayTime, @object
	.size	ESM_u16OpDelayTime, 2
ESM_u16OpDelayTime:
	.zero	2
	.global	ESM_PwrLNfState
.section .bss.a2.ESM_PwrLNfState,"aw",@nobits
	.align 1
	.type	ESM_PwrLNfState, @object
	.size	ESM_PwrLNfState, 2
ESM_PwrLNfState:
	.zero	2
	.global	ESM_PwrLFtState
.section .bss.a2.ESM_PwrLFtState,"aw",@nobits
	.align 1
	.type	ESM_PwrLFtState, @object
	.size	ESM_PwrLFtState, 2
ESM_PwrLFtState:
	.zero	2
	.global	ESM_OpNfState
.section .bss.a2.ESM_OpNfState,"aw",@nobits
	.align 1
	.type	ESM_OpNfState, @object
	.size	ESM_OpNfState, 2
ESM_OpNfState:
	.zero	2
	.global	ESM_OpFtState
.section .bss.a2.ESM_OpFtState,"aw",@nobits
	.align 1
	.type	ESM_OpFtState, @object
	.size	ESM_OpFtState, 2
ESM_OpFtState:
	.zero	2
	.global	ESM_u16MsgOffDelay
.section .bss.a2.ESM_u16MsgOffDelay,"aw",@nobits
	.align 1
	.type	ESM_u16MsgOffDelay, @object
	.size	ESM_u16MsgOffDelay, 2
ESM_u16MsgOffDelay:
	.zero	2
	.global	ESM_u8PwrOffTim
.section .bss.a1.ESM_u8PwrOffTim,"aw",@nobits
	.type	ESM_u8PwrOffTim, @object
	.size	ESM_u8PwrOffTim, 1
ESM_u8PwrOffTim:
	.zero	1
	.global	ESM_u8PwrLNfStep
.section .bss.a1.ESM_u8PwrLNfStep,"aw",@nobits
	.type	ESM_u8PwrLNfStep, @object
	.size	ESM_u8PwrLNfStep, 1
ESM_u8PwrLNfStep:
	.zero	1
	.global	ESM_u8AllowPwrDnDelay
.section .bss.a1.ESM_u8AllowPwrDnDelay,"aw",@nobits
	.type	ESM_u8AllowPwrDnDelay, @object
	.size	ESM_u8AllowPwrDnDelay, 1
ESM_u8AllowPwrDnDelay:
	.zero	1
	.global	ESM_bPwrLNfClrFltFinsh
.section .bss.a1.ESM_bPwrLNfClrFltFinsh,"aw",@nobits
	.type	ESM_bPwrLNfClrFltFinsh, @object
	.size	ESM_bPwrLNfClrFltFinsh, 1
ESM_bPwrLNfClrFltFinsh:
	.zero	1
	.global	ESM_bPwrDnReadyFlg
.section .bss.a1.ESM_bPwrDnReadyFlg,"aw",@nobits
	.type	ESM_bPwrDnReadyFlg, @object
	.size	ESM_bPwrDnReadyFlg, 1
ESM_bPwrDnReadyFlg:
	.zero	1
	.global	ESM_bMcuEnaReq
.section .bss.a1.ESM_bMcuEnaReq,"aw",@nobits
	.type	ESM_bMcuEnaReq, @object
	.size	ESM_bMcuEnaReq, 1
ESM_bMcuEnaReq:
	.zero	1
	.global	ESM_bCallAppliOn
.section .bss.a1.ESM_bCallAppliOn,"aw",@nobits
	.type	ESM_bCallAppliOn, @object
	.size	ESM_bCallAppliOn, 1
ESM_bCallAppliOn:
	.zero	1
	.global	ESM_bAfterrunReq
.section .bss.a1.ESM_bAfterrunReq,"aw",@nobits
	.type	ESM_bAfterrunReq, @object
	.size	ESM_bAfterrunReq, 1
ESM_bAfterrunReq:
	.zero	1
	.global	ESM_bAfterrunFin
.section .bss.a1.ESM_bAfterrunFin,"aw",@nobits
	.type	ESM_bAfterrunFin, @object
	.size	ESM_bAfterrunFin, 1
ESM_bAfterrunFin:
	.zero	1
	.global	ESM_EsmMode
.section .bss.a2.ESM_EsmMode,"aw",@nobits
	.align 1
	.type	ESM_EsmMode, @object
	.size	ESM_EsmMode, 2
ESM_EsmMode:
	.zero	2
	.global	ESM_ku16AfterrunToutCntC
.section .rodata.Calib_16.ESM_ku16AfterrunToutCntC,"a",@progbits
	.align 1
	.type	ESM_ku16AfterrunToutCntC, @object
	.size	ESM_ku16AfterrunToutCntC, 2
ESM_ku16AfterrunToutCntC:
	.short	500
	.global	ESM_bPowerOffModeInhC
.section .rodata.a1.ESM_bPowerOffModeInhC,"a",@progbits
	.type	ESM_bPowerOffModeInhC, @object
	.size	ESM_bPowerOffModeInhC, 1
ESM_bPowerOffModeInhC:
	.zero	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\STFSRV\\STFSRV\\STFSRV_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5be
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\STFSRV\\STFSRV\\STFSRV_DEF.c"
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
	.uaword	0x1c0
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
	.uaword	0x1ec
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
	.uaword	0x1c0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"ESM_ku16AfterrunToutCntC"
	.byte	0x2
	.byte	0x2f
	.uaword	0x2ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_ku16AfterrunToutCntC
	.uleb128 0x5
	.uaword	0x1de
	.uleb128 0x4
	.string	"ESM_u16MsgOffDelay"
	.byte	0x2
	.byte	0x43
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u16MsgOffDelay
	.uleb128 0x4
	.string	"ESM_u8AllowPwrDnDelay"
	.byte	0x2
	.byte	0x40
	.uaword	0x1b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u8AllowPwrDnDelay
	.uleb128 0x4
	.string	"ESM_u8PwrLNfStep"
	.byte	0x2
	.byte	0x41
	.uaword	0x1b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u8PwrLNfStep
	.uleb128 0x4
	.string	"ESM_u8PwrOffTim"
	.byte	0x2
	.byte	0x42
	.uaword	0x1b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u8PwrOffTim
	.uleb128 0x4
	.string	"ESM_bPowerOffModeInhC"
	.byte	0x2
	.byte	0x29
	.uaword	0x359
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bPowerOffModeInhC
	.uleb128 0x5
	.uaword	0x257
	.uleb128 0x4
	.string	"ESM_EsmMode"
	.byte	0x2
	.byte	0x39
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_EsmMode
	.uleb128 0x4
	.string	"ESM_bAfterrunFin"
	.byte	0x2
	.byte	0x3a
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bAfterrunFin
	.uleb128 0x4
	.string	"ESM_bAfterrunReq"
	.byte	0x2
	.byte	0x3b
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bAfterrunReq
	.uleb128 0x4
	.string	"ESM_bCallAppliOn"
	.byte	0x2
	.byte	0x3c
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bCallAppliOn
	.uleb128 0x4
	.string	"ESM_bMcuEnaReq"
	.byte	0x2
	.byte	0x3d
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bMcuEnaReq
	.uleb128 0x4
	.string	"ESM_bPwrDnReadyFlg"
	.byte	0x2
	.byte	0x3e
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bPwrDnReadyFlg
	.uleb128 0x4
	.string	"ESM_bPwrLNfClrFltFinsh"
	.byte	0x2
	.byte	0x3f
	.uaword	0x257
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_bPwrLNfClrFltFinsh
	.uleb128 0x4
	.string	"ESM_OpFtState"
	.byte	0x2
	.byte	0x44
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_OpFtState
	.uleb128 0x4
	.string	"ESM_OpNfState"
	.byte	0x2
	.byte	0x45
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_OpNfState
	.uleb128 0x4
	.string	"ESM_PwrLFtState"
	.byte	0x2
	.byte	0x46
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_PwrLFtState
	.uleb128 0x4
	.string	"ESM_PwrLNfState"
	.byte	0x2
	.byte	0x47
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_PwrLNfState
	.uleb128 0x4
	.string	"ESM_u16OpDelayTime"
	.byte	0x2
	.byte	0x48
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u16OpDelayTime
	.uleb128 0x4
	.string	"ESM_u16OpTimeout"
	.byte	0x2
	.byte	0x49
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u16OpTimeout
	.uleb128 0x4
	.string	"ESM_StpIIFtState"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_StpIIFtState
	.uleb128 0x4
	.string	"ESM_StpIINfState"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_StpIINfState
	.uleb128 0x4
	.string	"ESM_StpIState"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_StpIState
	.uleb128 0x4
	.string	"ESM_u16CmdReq"
	.byte	0x2
	.byte	0x4d
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u16CmdReq
	.uleb128 0x4
	.string	"ESM_u16CmdReqNm1"
	.byte	0x2
	.byte	0x4e
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u16CmdReqNm1
	.uleb128 0x4
	.string	"ESM_u16CmdRes"
	.byte	0x2
	.byte	0x4f
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u16CmdRes
	.uleb128 0x4
	.string	"ESM_u8RestartDelayCnt"
	.byte	0x2
	.byte	0x50
	.uaword	0x1b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ESM_u8RestartDelayCnt
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
