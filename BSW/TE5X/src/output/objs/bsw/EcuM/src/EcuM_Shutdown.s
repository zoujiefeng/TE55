	.file	"EcuM_Shutdown.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_GoDownHaltPoll,"ax",@progbits
	.align 1
	.global	EcuM_GoDownHaltPoll
	.type	EcuM_GoDownHaltPoll, @function
EcuM_GoDownHaltPoll:
.LFB71:
	.file 1 "bsw\\EcuM\\src\\EcuM_Shutdown.c"
	.loc 1 58 0
.LVL0:
	.loc 1 62 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L10
	.loc 1 73 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedShutdownTarget_st
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataSelectedShutdownTarget_st
	.loc 1 89 0
	mov	%d2, 1
	.loc 1 73 0
	add	%d15, -1
	and	%d15, 255
	jlt.u	%d15, 2, .L11
.L7:
	.loc 1 94 0
	ret
.L10:
	.loc 1 65 0
	mov	%e4, 10
.LVL1:
	mov	%d6, 44
	mov	%d7, 16
	call	Det_ReportError
.LVL2:
	.loc 1 68 0
	mov	%d2, 1
	ret
.LVL3:
.L11:
.LBB6:
.LBB7:
	.loc 1 130 0
	movh.a	%a2, hi:EcuM_Prv_flgGoDown_b
	ld.bu	%d15, [%a2] lo:EcuM_Prv_flgGoDown_b
	jnz	%d15, .L8
.LVL4:
	.loc 1 141 0
	movh.a	%a15, hi:EcuM_Cfg_idxGoDownValidCallerArr_au16
	ld.hu	%d15, [%a15] lo:EcuM_Cfg_idxGoDownValidCallerArr_au16
	jne	%d15, %d4, .L7
.LVL5:
.LBB8:
.LBB9:
	.loc 1 175 0
	movh.a	%a15, hi:EcuM_Prv_flgShutdownInfoDoNotUpdate_b
	st.b	[%a15] lo:EcuM_Prv_flgShutdownInfoDoNotUpdate_b, %d2
	.loc 1 177 0
	mov	%d15, 4
	movh.a	%a15, hi:EcuM_Prv_dataPresentPhase_u8
	.loc 1 173 0
	st.b	[%a2] lo:EcuM_Prv_flgGoDown_b, %d2
	.loc 1 177 0
	st.b	[%a15] lo:EcuM_Prv_dataPresentPhase_u8, %d15
.LVL6:
.L8:
	mov	%d2, 0
	ret
.LBE9:
.LBE8:
.LBE7:
.LBE6:
.LFE71:
	.size	EcuM_GoDownHaltPoll, .-EcuM_GoDownHaltPoll
.section .text.EcuM_GoDown,"ax",@progbits
	.align 1
	.global	EcuM_GoDown
	.type	EcuM_GoDown, @function
EcuM_GoDown:
.LFB72:
	.loc 1 108 0
.LVL7:
	.loc 1 119 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L24
	.loc 1 130 0
	movh.a	%a2, hi:EcuM_Prv_flgGoDown_b
	ld.bu	%d15, [%a2] lo:EcuM_Prv_flgGoDown_b
	.loc 1 133 0
	mov	%d2, 0
	.loc 1 130 0
	jnz	%d15, .L25
.LVL8:
	.loc 1 141 0
	movh.a	%a15, hi:EcuM_Cfg_idxGoDownValidCallerArr_au16
	ld.hu	%d15, [%a15] lo:EcuM_Cfg_idxGoDownValidCallerArr_au16
	jeq	%d15, %d4, .L17
	.loc 1 167 0
	mov	%d2, 1
.LVL9:
.L20:
	.loc 1 191 0
	ret
.LVL10:
.L25:
	ret
.LVL11:
.L17:
	.loc 1 164 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedShutdownTarget_st
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataSelectedShutdownTarget_st
	.loc 1 167 0
	mov	%d2, 1
	.loc 1 164 0
	add	%d15, -1
	and	%d15, 255
	jge.u	%d15, 2, .L20
.LVL12:
.LBB12:
.LBB13:
	.loc 1 175 0
	movh.a	%a15, hi:EcuM_Prv_flgShutdownInfoDoNotUpdate_b
	st.b	[%a15] lo:EcuM_Prv_flgShutdownInfoDoNotUpdate_b, %d2
	.loc 1 177 0
	mov	%d15, 4
	movh.a	%a15, hi:EcuM_Prv_dataPresentPhase_u8
	.loc 1 173 0
	st.b	[%a2] lo:EcuM_Prv_flgGoDown_b, %d2
	.loc 1 177 0
	st.b	[%a15] lo:EcuM_Prv_dataPresentPhase_u8, %d15
.LVL13:
	mov	%d2, 0
	ret
.LVL14:
.L24:
.LBE13:
.LBE12:
	.loc 1 122 0
	mov	%e4, 10
.LVL15:
	mov	%d6, 31
	mov	%d7, 16
	call	Det_ReportError
.LVL16:
	.loc 1 125 0
	mov	%d2, 1
	ret
.LFE72:
	.size	EcuM_GoDown, .-EcuM_GoDown
.section .text.EcuM_Shutdown,"ax",@progbits
	.align 1
	.global	EcuM_Shutdown
	.type	EcuM_Shutdown, @function
EcuM_Shutdown:
.LFB73:
	.loc 1 204 0
.LBB14:
	.loc 1 207 0
#APP
	# 207 "bsw\EcuM\src\EcuM_Shutdown.c" 1
	mfcr %d15,0xfe1c
	# 0 "" 2
.LVL17:
#NO_APP
.LBE14:
	extr.u	%d15, %d15, 0, 16
.LVL18:
	jnz	%d15, .L26
	.loc 1 211 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L30
	.loc 1 218 0
	mov	%d15, 5
	movh.a	%a15, hi:EcuM_Prv_dataPresentPhase_u8
	st.b	[%a15] lo:EcuM_Prv_dataPresentPhase_u8, %d15
	.loc 1 220 0
	call	EcuM_OnGoOffTwo
.LVL19:
	.loc 1 222 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedShutdownTarget_st
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataSelectedShutdownTarget_st
	lea	%a2, [%a15] lo:EcuM_Prv_dataSelectedShutdownTarget_st
	jeq	%d15, 1, .L31
	.loc 1 229 0
	j	EcuM_AL_SwitchOff
.LVL20:
.L30:
	.loc 1 214 0
	mov	%e4, 10
	mov	%d6, 2
	mov	%d7, 16
	j	Det_ReportError
.LVL21:
.L26:
	ret
.L31:
	.loc 1 225 0
	ld.bu	%d4, [%a2] 2
	j	EcuM_AL_Reset
.LVL22:
.LFE73:
	.size	EcuM_Shutdown, .-EcuM_Shutdown
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\EcuM\\EcuM_Cfg.h"
	.file 8 "bsw\\EcuM\\src\\EcuM_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Callout.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x776
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\EcuM\\src\\EcuM_Shutdown.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1c7
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
	.byte	0x2
	.byte	0x5b
	.uaword	0x1f3
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
	.byte	0x2
	.byte	0x80
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1ba
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"CoreIdType"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x1e5
	.uleb128 0x4
	.string	"EcuM_ShutdownCauseType"
	.byte	0x5
	.uahalf	0x1b0
	.uaword	0x1ba
	.uleb128 0x4
	.string	"EcuM_ShutdownModeType"
	.byte	0x5
	.uahalf	0x1b4
	.uaword	0x1e5
	.uleb128 0x4
	.string	"EcuM_ShutdownTargetType"
	.byte	0x5
	.uahalf	0x1b6
	.uaword	0x1ba
	.uleb128 0x3
	.string	"EcuM_ResetType"
	.byte	0x6
	.byte	0x50
	.uaword	0x1ba
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x60
	.uaword	0x37f
	.uleb128 0x6
	.string	"ShutdownTarget"
	.byte	0x6
	.byte	0x62
	.uaword	0x300
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ShutdownCause"
	.byte	0x6
	.byte	0x63
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"mode"
	.byte	0x6
	.byte	0x64
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"EcuM_ShutdownTargetInfoType"
	.byte	0x6
	.byte	0x69
	.uaword	0x336
	.uleb128 0x7
	.uaword	0x1e5
	.uaword	0x3b2
	.uleb128 0x8
	.uaword	0x2a4
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_GoDown"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	0x28e
	.byte	0x1
	.uaword	0x419
	.uleb128 0xa
	.string	"caller"
	.byte	0x1
	.byte	0x6b
	.uaword	0x1e5
	.uleb128 0xb
	.string	"flgModuleValid_b"
	.byte	0x1
	.byte	0x6e
	.uaword	0x25e
	.uleb128 0xb
	.string	"cntrLoop_u8"
	.byte	0x1
	.byte	0x71
	.uaword	0x1ba
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x74
	.uaword	0x28e
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"EcuM_GoDownHaltPoll"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4f0
	.uleb128 0xe
	.string	"caller"
	.byte	0x1
	.byte	0x39
	.uaword	0x1e5
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x28e
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x3ba
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x4b
	.uaword	0x4d0
	.uleb128 0x11
	.uaword	0x3d4
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x13
	.uaword	0x3e2
	.uaword	.LLST2
	.uleb128 0x13
	.uaword	0x3fa
	.uaword	.LLST3
	.uleb128 0x14
	.uaword	0x40d
	.uleb128 0x12
	.uaword	.LBB8
	.uaword	.LBE8
	.uleb128 0x15
	.uaword	0x3d4
	.uaword	.LLST4
	.uleb128 0x12
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x14
	.uaword	0x3e2
	.uleb128 0x14
	.uaword	0x3fa
	.uleb128 0x16
	.uaword	0x40d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL2
	.uaword	0x6fe
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x3ba
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x578
	.uleb128 0x15
	.uaword	0x3d4
	.uaword	.LLST5
	.uleb128 0x13
	.uaword	0x3e2
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	0x3fa
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x40d
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0x559
	.uleb128 0x1b
	.uaword	0x3d4
	.uleb128 0x12
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x14
	.uaword	0x3e2
	.uleb128 0x14
	.uaword	0x3fa
	.uleb128 0x13
	.uaword	0x40d
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL16
	.uaword	0x6fe
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4f
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"EcuM_Shutdown"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	.LFB73
	.uaword	.LFE73
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5f9
	.uleb128 0x1a
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0x5b8
	.uleb128 0x1d
	.string	"res"
	.byte	0x1
	.byte	0xcf
	.uaword	0x221
	.uaword	.LLST10
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL19
	.uaword	0x731
	.uleb128 0x1f
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x747
	.uleb128 0x20
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x6fe
	.uaword	0x5ee
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x75f
	.byte	0
	.uleb128 0x21
	.string	"EcuM_Cfg_idxGoDownValidCallerArr_au16"
	.byte	0x7
	.byte	0x96
	.uaword	0x628
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.uaword	0x3a2
	.uleb128 0x21
	.string	"EcuM_Prv_dataPresentPhase_u8"
	.byte	0x8
	.byte	0xb8
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"EcuM_Prv_dataSelectedShutdownTarget_st"
	.byte	0x8
	.byte	0xd1
	.uaword	0x37f
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"EcuM_Prv_flgIsModuleInitialised_b"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x25e
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"EcuM_Prv_flgShutdownInfoDoNotUpdate_b"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x25e
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"EcuM_Prv_flgGoDown_b"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x25e
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x28e
	.byte	0x1
	.uaword	0x731
	.uleb128 0x25
	.uaword	0x1e5
	.uleb128 0x25
	.uaword	0x1ba
	.uleb128 0x25
	.uaword	0x1ba
	.uleb128 0x25
	.uaword	0x1ba
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"EcuM_OnGoOffTwo"
	.byte	0xa
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"EcuM_AL_SwitchOff"
	.byte	0xa
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"EcuM_AL_Reset"
	.byte	0xa
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x320
	.byte	0
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE71
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LFE72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	.LFB73
	.uaword	.LFE73
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"return_value"
	.extern	EcuM_AL_Reset,STT_FUNC,0
	.extern	EcuM_AL_SwitchOff,STT_FUNC,0
	.extern	EcuM_OnGoOffTwo,STT_FUNC,0
	.extern	EcuM_Prv_dataPresentPhase_u8,STT_OBJECT,1
	.extern	EcuM_Prv_flgShutdownInfoDoNotUpdate_b,STT_OBJECT,1
	.extern	EcuM_Cfg_idxGoDownValidCallerArr_au16,STT_OBJECT,2
	.extern	EcuM_Prv_flgGoDown_b,STT_OBJECT,1
	.extern	Det_ReportError,STT_FUNC,0
	.extern	EcuM_Prv_dataSelectedShutdownTarget_st,STT_OBJECT,4
	.extern	EcuM_Prv_flgIsModuleInitialised_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
