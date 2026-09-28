	.file	"ComM_GetMaxComMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComM_GetMaxComMode,"ax",@progbits
	.align 1
	.global	ComM_GetMaxComMode
	.type	ComM_GetMaxComMode, @function
ComM_GetMaxComMode:
.LFB131:
	.file 1 "bsw\\ComM\\src\\ComM_GetMaxComMode.c"
	.loc 1 49 0
.LVL0:
	.loc 1 60 0
	movh.a	%a2, hi:ComM_GlobalStruct
	ld.bu	%d15, [%a2] lo:ComM_GlobalStruct
	.loc 1 49 0
	mov	%d8, %d4
	mov.aa	%a15, %a4
	.loc 1 60 0
	jeq	%d15, 1, .L2
	.loc 1 63 0
	mov	%e4, 12
.LVL1:
	mov	%d6, 6
	mov	%d7, 1
	call	Det_ReportError
.LVL2:
	.loc 1 64 0
	mov	%d2, 3
	ret
.LVL3:
.L2:
	.loc 1 67 0
	jz.a	%a4, .L5
	.loc 1 75 0
	call	ComM_Prv_ValidateUserId
.LVL4:
	jz	%d2, .L5
.LVL5:
	.loc 1 87 0
	movh.a	%a2, hi:ComM_UserId_MappingTable_acst
	lea	%a2, [%a2] lo:ComM_UserId_MappingTable_acst
	addsc.a	%a2, %a2, %d8, 0
	.loc 1 89 0
	ld.bu	%d15, [%a2]0
.LVL6:
	.loc 1 91 0
	movh.a	%a2, hi:ComM_UserStruct
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:ComM_UserStruct
	madd	%d3, %d2, %d15, 10
	mov.a	%a2, %d3
	ld.hu	%d15, [%a2]0
.LVL7:
	jnz	%d15, .L6
	.loc 1 91 0 is_stmt 0 discriminator 1
	ld.hu	%d15, [%a2] 2
	jnz	%d15, .L6
	.loc 1 98 0 is_stmt 1
	mov	%d15, 2
	st.b	[%a15]0, %d15
	.loc 1 100 0
	mov	%d2, 0
	.loc 1 101 0
	ret
.L6:
	.loc 1 93 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 100 0
	mov	%d2, 0
	.loc 1 93 0
	ret
.LVL8:
.L5:
	.loc 1 70 0
	mov	%e4, 12
	mov	%d6, 6
	mov	%d7, 2
	call	Det_ReportError
.LVL9:
	.loc 1 71 0
	mov	%d2, 1
	ret
.LFE131:
	.size	ComM_GetMaxComMode, .-ComM_GetMaxComMode
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
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 "bsw\\ComM\\src\\ComM_Priv.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg_Internal.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x699
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\ComM\\src\\ComM_GetMaxComMode.c"
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
	.uaword	0x1cc
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
	.uaword	0x1f8
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
	.uaword	0x1cc
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
	.uaword	0x1bf
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4a
	.uaword	0x2cc
	.uleb128 0x5
	.string	"COMM_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"COMM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InitStatusType"
	.byte	0x4
	.byte	0x4d
	.uaword	0x2a9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"ComM_InhibitionStatusType"
	.byte	0x5
	.byte	0xde
	.uaword	0x1bf
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1bf
	.uleb128 0x3
	.string	"ComM_UserHandleType"
	.byte	0x5
	.byte	0xe2
	.uaword	0x1bf
	.uleb128 0x6
	.byte	0x4
	.uaword	0x314
	.uleb128 0x7
	.byte	0x6
	.byte	0x6
	.uahalf	0x109
	.uaword	0x3e1
	.uleb128 0x8
	.string	"ComM_InitStatus_en"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ComM_InhibitCounter_u16"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"ComM_EcuGroupClassification_u8"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ComM_LimitECUToNoCom_b"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.string	"ComM_GlobalVarType_tst"
	.byte	0x6
	.uahalf	0x113
	.uaword	0x34a
	.uleb128 0x7
	.byte	0xa
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x4f5
	.uleb128 0x8
	.string	"WakeUpInhibitionCtr_u16"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LimitToNoComCtr_u16"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"RequestedUserMode_u8"
	.byte	0x6
	.uahalf	0x160
	.uaword	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"IndicatedUserMode_u8"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"numChannelsInFullCom_u8"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"numChannelsInSilentCom_u8"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.string	"numChannelsInNoCom_u8"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"ComM_UserVarType_tst"
	.byte	0x6
	.uahalf	0x165
	.uaword	0x400
	.uleb128 0xa
	.byte	0x1
	.string	"ComM_GetMaxComMode"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5c1
	.uleb128 0xb
	.string	"User"
	.byte	0x1
	.byte	0x30
	.uaword	0x329
	.uaword	.LLST0
	.uleb128 0xb
	.string	"ComMode"
	.byte	0x1
	.byte	0x30
	.uaword	0x344
	.uaword	.LLST1
	.uleb128 0xc
	.string	"userRamPtr_pst"
	.byte	0x1
	.byte	0x34
	.uaword	0x5c1
	.uleb128 0xd
	.uaword	.LVL2
	.uaword	0x640
	.uaword	0x599
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xf
	.uaword	.LVL4
	.uaword	0x673
	.uleb128 0x10
	.uaword	.LVL9
	.uaword	0x640
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x4f5
	.uleb128 0x11
	.uaword	0x329
	.uaword	0x5d2
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"ComM_UserId_MappingTable_acst"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x5fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x5c7
	.uleb128 0x13
	.string	"ComM_GlobalStruct"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x3e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x4f5
	.uaword	0x626
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"ComM_UserStruct"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x61b
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uaword	0x673
	.uleb128 0x16
	.uaword	0x1ea
	.uleb128 0x16
	.uaword	0x1bf
	.uleb128 0x16
	.uaword	0x1bf
	.uleb128 0x16
	.uaword	0x1bf
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"ComM_Prv_ValidateUserId"
	.byte	0x6
	.uahalf	0x221
	.byte	0x1
	.uaword	0x263
	.byte	0x1
	.uleb128 0x16
	.uaword	0x329
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL8
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
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE131
	.uahalf	0x1
	.byte	0x6f
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
	.extern	ComM_UserStruct,STT_OBJECT,-1
	.extern	ComM_UserId_MappingTable_acst,STT_OBJECT,-1
	.extern	ComM_Prv_ValidateUserId,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	ComM_GlobalStruct,STT_OBJECT,6
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
