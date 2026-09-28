	.file	"EcuM_BootTarget.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_GetBootTarget,"ax",@progbits
	.align 1
	.global	EcuM_GetBootTarget
	.type	EcuM_GetBootTarget, @function
EcuM_GetBootTarget:
.LFB71:
	.file 1 "bsw\\EcuM\\src\\EcuM_BootTarget.c"
	.loc 1 40 0
.LVL0:
	.loc 1 44 0
	jz.a	%a4, .L6
	.loc 1 59 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedBootTargetInit_u8
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataSelectedBootTargetInit_u8
	jz	%d15, .L7
	.loc 1 67 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedBootTarget_u8
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataSelectedBootTarget_u8
	.loc 1 71 0
	mov	%d2, 0
.LVL1:
	.loc 1 67 0
	st.b	[%a4]0, %d15
	.loc 1 75 0
	ret
.LVL2:
.L7:
	.loc 1 62 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
	.loc 1 71 0
	mov	%d2, 0
	ret
.L6:
	.loc 1 48 0
	mov	%e4, 10
	mov	%d6, 19
	mov	%d7, 18
	call	Det_ReportError
.LVL3:
	.loc 1 50 0
	mov	%d2, 1
	ret
.LFE71:
	.size	EcuM_GetBootTarget, .-EcuM_GetBootTarget
.section .text.EcuM_SelectBootTarget,"ax",@progbits
	.align 1
	.global	EcuM_SelectBootTarget
	.type	EcuM_SelectBootTarget, @function
EcuM_SelectBootTarget:
.LFB72:
	.loc 1 86 0
.LVL4:
	.loc 1 90 0
	jge.u	%d4, 3, .L11
	.loc 1 103 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedBootTarget_u8
	st.b	[%a15] lo:EcuM_Prv_dataSelectedBootTarget_u8, %d4
	.loc 1 106 0
	mov	%d15, 1
	movh.a	%a15, hi:EcuM_Prv_dataSelectedBootTargetInit_u8
	st.b	[%a15] lo:EcuM_Prv_dataSelectedBootTargetInit_u8, %d15
.LVL5:
	.loc 1 109 0
	mov	%d2, 0
.LVL6:
	.loc 1 114 0
	ret
.LVL7:
.L11:
	.loc 1 94 0
	mov	%e4, 10
.LVL8:
	mov	%d6, 18
	mov	%d7, 19
	call	Det_ReportError
.LVL9:
	.loc 1 96 0
	mov	%d2, 1
	ret
.LFE72:
	.size	EcuM_SelectBootTarget, .-EcuM_SelectBootTarget
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 "bsw\\EcuM\\src\\EcuM_Prv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x430
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\EcuM\\src\\EcuM_BootTarget.c"
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
	.uaword	0x1c9
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
	.uaword	0x1f5
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
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"EcuM_BootTargetType"
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.byte	0x1
	.string	"EcuM_GetBootTarget"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	0x281
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x333
	.uleb128 0x6
	.string	"target"
	.byte	0x1
	.byte	0x27
	.uaword	0x333
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2a
	.uaword	0x281
	.uaword	.LLST1
	.uleb128 0x8
	.uaword	.LVL3
	.uaword	0x404
	.uleb128 0x9
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0x9
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x43
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x2a3
	.uleb128 0x5
	.byte	0x1
	.string	"EcuM_SelectBootTarget"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	0x281
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a8
	.uleb128 0x6
	.string	"target"
	.byte	0x1
	.byte	0x55
	.uaword	0x2a3
	.uaword	.LLST2
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x58
	.uaword	0x281
	.uaword	.LLST3
	.uleb128 0x8
	.uaword	.LVL9
	.uaword	0x404
	.uleb128 0x9
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x43
	.uleb128 0x9
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x42
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"EcuM_Prv_dataSelectedBootTarget_u8"
	.byte	0x5
	.byte	0xab
	.uaword	0x2a3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"EcuM_Prv_dataSelectedBootTargetInit_u8"
	.byte	0x5
	.byte	0xae
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x6
	.byte	0x70
	.byte	0x1
	.uaword	0x281
	.byte	0x1
	.uleb128 0xd
	.uaword	0x1e7
	.uleb128 0xd
	.uaword	0x1bc
	.uleb128 0xd
	.uaword	0x1bc
	.uleb128 0xd
	.uaword	0x1bc
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LFE71
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LFE72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"return_value_u8"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	EcuM_Prv_dataSelectedBootTarget_u8,STT_OBJECT,1
	.extern	EcuM_Prv_dataSelectedBootTargetInit_u8,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
