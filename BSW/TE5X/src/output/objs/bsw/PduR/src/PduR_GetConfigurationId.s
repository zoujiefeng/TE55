	.file	"PduR_GetConfigurationId.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.PduR_GetConfigurationId,"ax",@progbits
	.align 1
	.global	PduR_GetConfigurationId
	.type	PduR_GetConfigurationId, @function
PduR_GetConfigurationId:
.LFB96:
	.file 1 "bsw\\PduR\\src\\PduR_GetConfigurationId.c"
	.loc 1 13 0
.LBB10:
.LBB11:
	.loc 1 28 0
	movh.a	%a15, hi:PduR_State
	ld.bu	%d15, [%a15] lo:PduR_State
	jnz	%d15, .L2
.LBB12:
.LBB13:
	mov	%e4, 51
	mov	%d6, 2
	mov	%d7, 1
	call	Det_ReportError
.LVL0:
.L2:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 23 0
	mov	%d2, 0
	ret
.LFE96:
	.size	PduR_GetConfigurationId, .-PduR_GetConfigurationId
.section .text.PduR_dGetConfigurationId,"ax",@progbits
	.align 1
	.global	PduR_dGetConfigurationId
	.type	PduR_dGetConfigurationId, @function
PduR_dGetConfigurationId:
.LFB97:
	.loc 1 27 0
	.loc 1 28 0
	movh.a	%a15, hi:PduR_State
	ld.bu	%d15, [%a15] lo:PduR_State
	jnz	%d15, .L5
.LBB16:
.LBB17:
	mov	%e4, 51
	mov	%d6, 2
	mov	%d7, 1
	call	Det_ReportError
.LVL1:
.L5:
.LBE17:
.LBE16:
	.loc 1 30 0
	mov	%d2, 0
	ret
.LFE97:
	.size	PduR_dGetConfigurationId, .-PduR_dGetConfigurationId
.section .text.PduR_iGetConfigurationId,"ax",@progbits
	.align 1
	.global	PduR_iGetConfigurationId
	.type	PduR_iGetConfigurationId, @function
PduR_iGetConfigurationId:
.LFB98:
	.loc 1 57 0
.LVL2:
	.loc 1 66 0
	mov	%d2, 0
	ret
.LFE98:
	.size	PduR_iGetConfigurationId, .-PduR_iGetConfigurationId
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
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB98
	.uaword	.LFE98-.LFB98
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\PduR\\api\\PduR.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\PduR\\api\\PduR_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\PduR\\api\\PduR_Prv.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x464
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\PduR\\src\\PduR_GetConfigurationId.c"
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
	.uaword	0x1d1
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
	.uaword	0x1fd
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
	.uaword	0x1c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"PduR_PBConfigIdType"
	.byte	0x4
	.byte	0x9e
	.uaword	0x1ef
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x2fa
	.uleb128 0x5
	.string	"PDUR_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"PDUR_REDUCED"
	.sleb128 1
	.uleb128 0x5
	.string	"PDUR_ONLINE"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"PduR_StateType"
	.byte	0x5
	.byte	0x23
	.uaword	0x2c6
	.uleb128 0x6
	.byte	0x1
	.string	"PduR_iGetConfigurationId"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	0x2ab
	.byte	0x1
	.uaword	0x343
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3a
	.uaword	0x2ab
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"PduR_dGetConfigurationId"
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.uaword	0x2ab
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"PduR_GetConfigurationId"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.uaword	0x2ab
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3d2
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe
	.uaword	0x2ab
	.uleb128 0xa
	.uaword	0x343
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x12
	.uleb128 0xb
	.uaword	.LVL0
	.uaword	0x438
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x343
	.uaword	.LFB97
	.uaword	.LFE97
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x407
	.uleb128 0xb
	.uaword	.LVL1
	.uaword	0x438
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x310
	.uaword	.LFB98
	.uaword	.LFE98
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x423
	.uleb128 0xe
	.uaword	0x337
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"PduR_State"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x2fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x7
	.byte	0x70
	.byte	0x1
	.uaword	0x289
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1ef
	.uleb128 0x11
	.uaword	0x1c4
	.uleb128 0x11
	.uaword	0x1c4
	.uleb128 0x11
	.uaword	0x1c4
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.uaword	.LFB98
	.uaword	.LFE98-.LFB98
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB96
	.uaword	.LFE96
	.uaword	.LFB97
	.uaword	.LFE97
	.uaword	.LFB98
	.uaword	.LFE98
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"return_val"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	PduR_State,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
