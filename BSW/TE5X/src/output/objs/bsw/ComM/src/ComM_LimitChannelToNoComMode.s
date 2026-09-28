	.file	"ComM_LimitChannelToNoComMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComM_LimitChannelToNoComMode,"ax",@progbits
	.align 1
	.global	ComM_LimitChannelToNoComMode
	.type	ComM_LimitChannelToNoComMode, @function
ComM_LimitChannelToNoComMode:
.LFB131:
	.file 1 "bsw\\ComM\\src\\ComM_LimitChannelToNoComMode.c"
	.loc 1 47 0
.LVL0:
	.loc 1 59 0
	movh.a	%a15, hi:ComM_GlobalStruct
	ld.bu	%d2, [%a15] lo:ComM_GlobalStruct
	.loc 1 47 0
	mov	%d8, %d5
	.loc 1 59 0
	lea	%a12, [%a15] lo:ComM_GlobalStruct
	jeq	%d2, 1, .L2
	.loc 1 61 0
	mov	%e4, 12
.LVL1:
	mov	%d6, 11
	mov	%d7, 1
	call	Det_ReportError
.LVL2:
	.loc 1 62 0
	mov	%d2, 3
	ret
.LVL3:
.L2:
	.loc 1 65 0
	jge.u	%d4, 4, .L7
	.loc 1 75 0
	call	ComM_Prv_ProcessLimitToNoCom
.LVL4:
	.loc 1 90 0
	mov	%d2, 0
	.loc 1 84 0
	jeq	%d8, 1, .L8
	.loc 1 94 0
	ret
.LVL5:
.L7:
	.loc 1 67 0
	mov	%e4, 12
.LVL6:
	mov	%d6, 11
	mov	%d7, 2
	call	Det_ReportError
.LVL7:
	.loc 1 68 0
	mov	%d2, 1
	ret
.L8:
.LVL8:
	.loc 1 84 0 discriminator 1
	ld.bu	%d2, [%a12] 4
	.loc 1 62 0 discriminator 1
	nand.t	%d2, %d2,1, %d2,1
	.loc 1 94 0 discriminator 1
	ret
.LFE131:
	.size	ComM_LimitChannelToNoComMode, .-ComM_LimitChannelToNoComMode
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
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 "bsw\\ComM\\src\\ComM_Priv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x581
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\ComM\\src\\ComM_LimitChannelToNoComMode.c"
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
	.uaword	0x1d6
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
	.uaword	0x202
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
	.uaword	0x1d6
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
	.uaword	0x1c9
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c9
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x4a
	.uaword	0x2ef
	.uleb128 0x5
	.string	"COMM_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"COMM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InitStatusType"
	.byte	0x5
	.byte	0x4d
	.uaword	0x2cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"ComM_InhibitionStatusType"
	.byte	0x6
	.byte	0xde
	.uaword	0x1c9
	.uleb128 0x6
	.byte	0x6
	.byte	0x7
	.uahalf	0x109
	.uaword	0x3ce
	.uleb128 0x7
	.string	"ComM_InitStatus_en"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ComM_InhibitCounter_u16"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"ComM_EcuGroupClassification_u8"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ComM_LimitECUToNoCom_b"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x8
	.string	"ComM_GlobalVarType_tst"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x337
	.uleb128 0x9
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x8
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x26d
	.byte	0x3
	.uaword	0x432
	.uleb128 0xa
	.string	"Data"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x1c9
	.uleb128 0xa
	.string	"BitPn"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x1c9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"ComM_LimitChannelToNoComMode"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	0x29d
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x500
	.uleb128 0xc
	.string	"Channel"
	.byte	0x1
	.byte	0x2e
	.uaword	0x2b3
	.uaword	.LLST0
	.uleb128 0xc
	.string	"Status"
	.byte	0x1
	.byte	0x2e
	.uaword	0x26d
	.uaword	.LLST1
	.uleb128 0xd
	.string	"globalRamPtr_pst"
	.byte	0x1
	.byte	0x31
	.uaword	0x500
	.uleb128 0xd
	.string	"retVal_u8"
	.byte	0x1
	.byte	0x32
	.uaword	0x29d
	.uleb128 0xe
	.uaword	.LVL2
	.uaword	0x522
	.uaword	0x4d8
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.uaword	.LVL4
	.uaword	0x555
	.uleb128 0x11
	.uaword	.LVL7
	.uaword	0x522
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uaword	0x3ce
	.uleb128 0x13
	.string	"ComM_GlobalStruct"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x3ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x29d
	.byte	0x1
	.uaword	0x555
	.uleb128 0x15
	.uaword	0x1f4
	.uleb128 0x15
	.uaword	0x1c9
	.uleb128 0x15
	.uaword	0x1c9
	.uleb128 0x15
	.uaword	0x1c9
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"ComM_Prv_ProcessLimitToNoCom"
	.byte	0x7
	.uahalf	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x2b3
	.uleb128 0x15
	.uaword	0x26d
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE131
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE131
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB131
	.uaword	.LFE131
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ComM_Prv_ProcessLimitToNoCom,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	ComM_GlobalStruct,STT_OBJECT,6
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
