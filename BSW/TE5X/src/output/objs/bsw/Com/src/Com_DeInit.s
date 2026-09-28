	.file	"Com_DeInit.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_DeInit,"ax",@progbits
	.align 1
	.global	Com_DeInit
	.type	Com_DeInit, @function
Com_DeInit:
.LFB149:
	.file 1 "bsw\\Com\\src\\Com_DeInit.c"
	.loc 1 56 0
	.loc 1 65 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jeq	%d15, 1, .L9
	ret
.L9:
	.loc 1 68 0
	mov	%d15, 0
	st.b	[%a15] lo:Com_InitStatus_en, %d15
.LVL0:
	.loc 1 73 0
	movh.a	%a15, hi:Com_IpduGrpVector_au8
	st.b	[%a15] lo:Com_IpduGrpVector_au8, %d15
	.loc 1 76 0
	movh.a	%a15, hi:Com_IpduGrpVector_DM_au8
	st.b	[%a15] lo:Com_IpduGrpVector_DM_au8, %d15
.LVL1:
	movh	%d3, hi:Com_IpduCounter_au8
	movh.a	%a15, hi:Com_TxIpduRam_ast
	mov	%d2, 120
	lea	%a15, [%a15] lo:Com_TxIpduRam_ast
	addi	%d3, %d3, lo:Com_IpduCounter_au8
	.loc 1 85 0
	mov	%d15, 0
	lea	%a2, 139
.LVL2:
.L3:
	.loc 1 87 0 discriminator 3
	mov.a	%a4, %d3
	addsc.a	%a3, %a4, %d2, 0
	.loc 1 85 0 discriminator 3
	st.h	[%a15] 10, %d15
	.loc 1 92 0 discriminator 3
	st.b	[%a15] 12, %d15
	.loc 1 93 0 discriminator 3
	st.h	[%a15] 4, %d15
	.loc 1 87 0 discriminator 3
	st.b	[%a3]0, %d15
	.loc 1 95 0 discriminator 3
	lea	%a15, [%a15] 16
.LVL3:
	add	%d2, 1
.LVL4:
	loop	%a2, .L3
	movh.a	%a2, hi:Com_RxIpduRam_ast
	movh	%d4, hi:Com_IpduCounter_DM_au8
	mov	%d2, 0
.LVL5:
	lea	%a2, [%a2] lo:Com_RxIpduRam_ast
	addi	%d4, %d4, lo:Com_IpduCounter_DM_au8
	.loc 1 104 0
	mov	%d15, 0
	lea	%a15, 119
.LVL6:
.L4:
	.loc 1 106 0 discriminator 3
	mov.a	%a4, %d3
	addsc.a	%a3, %a4, %d2, 0
	.loc 1 108 0 discriminator 3
	mov.a	%a4, %d4
	.loc 1 106 0 discriminator 3
	st.b	[%a3]0, %d15
	.loc 1 108 0 discriminator 3
	addsc.a	%a3, %a4, %d2, 0
	.loc 1 104 0 discriminator 3
	st.b	[%a2] 4, %d15
	.loc 1 108 0 discriminator 3
	st.b	[%a3]0, %d15
	.loc 1 111 0 discriminator 3
	add.a	%a2, 6
.LVL7:
	.loc 1 102 0 discriminator 3
	add	%d2, 1
.LVL8:
	loop	%a15, .L4
	ret
.LFE149:
	.size	Com_DeInit, .-Com_DeInit
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 5 "bsw\\Com\\src\\Com_Prv_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
	.file 7 "bsw\\Com\\src\\Com_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6e6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_DeInit.c"
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
	.uaword	0x1c3
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
	.uaword	0x1ef
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
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x266
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1e1
	.uleb128 0x3
	.string	"Com_IpduGroupVector"
	.byte	0x4
	.byte	0x79
	.uaword	0x2bf
	.uleb128 0x4
	.uaword	0x1b6
	.uaword	0x2cf
	.uleb128 0x5
	.uaword	0x2cf
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.uaword	0x2fc
	.uleb128 0x7
	.string	"COM_UNINIT"
	.sleb128 0
	.uleb128 0x7
	.string	"COM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Com_StatusType"
	.byte	0x4
	.byte	0x80
	.uaword	0x2db
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x4b
	.uaword	0x39c
	.uleb128 0x9
	.string	"timePeriod_u16"
	.byte	0x5
	.byte	0x4d
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"timeOffset_u16"
	.byte	0x5
	.byte	0x4e
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"repetitionPeriod_u16"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"numOfRepetitions_u8"
	.byte	0x5
	.byte	0x50
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"mode_u8"
	.byte	0x5
	.byte	0x57
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x5
	.byte	0x5b
	.uaword	0x312
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x5
	.byte	0x65
	.uaword	0x3d5
	.uleb128 0xa
	.byte	0x4
	.uaword	0x3db
	.uleb128 0xb
	.uaword	0x39c
	.uleb128 0xc
	.byte	0x10
	.byte	0x5
	.uahalf	0x524
	.uaword	0x4b3
	.uleb128 0xd
	.string	"currentTxModePtr_pcst"
	.byte	0x5
	.uahalf	0x526
	.uaword	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrMinDelayTime_u16"
	.byte	0x5
	.uahalf	0x52d
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cntrTimePeriod_u16"
	.byte	0x5
	.uahalf	0x52e
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"cntrRepPeriod_u16"
	.byte	0x5
	.uahalf	0x532
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"txFlags_u16"
	.byte	0x5
	.uahalf	0x555
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"cntrRepetitions_u8"
	.byte	0x5
	.uahalf	0x556
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"transMode_u8"
	.byte	0x5
	.uahalf	0x562
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.string	"Com_TxIpduRamData_tst"
	.byte	0x5
	.uahalf	0x564
	.uaword	0x3e0
	.uleb128 0xe
	.string	"Com_TxIpduRam_tpst"
	.byte	0x5
	.uahalf	0x56d
	.uaword	0x4ec
	.uleb128 0xa
	.byte	0x4
	.uaword	0x4b3
	.uleb128 0xc
	.byte	0x6
	.byte	0x5
	.uahalf	0x584
	.uaword	0x54a
	.uleb128 0xd
	.string	"rxIPduLength_uo"
	.byte	0x5
	.uahalf	0x586
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrRxTimeout_u16"
	.byte	0x5
	.uahalf	0x58b
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"rxFlags_u8"
	.byte	0x5
	.uahalf	0x5a6
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.string	"Com_RxIpduRamData_tst"
	.byte	0x5
	.uahalf	0x5a8
	.uaword	0x4f2
	.uleb128 0xe
	.string	"Com_RxIpduRam_tpst"
	.byte	0x5
	.uahalf	0x5b1
	.uaword	0x583
	.uleb128 0xa
	.byte	0x4
	.uaword	0x54a
	.uleb128 0xf
	.byte	0x1
	.string	"Com_DeInit"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5f6
	.uleb128 0x10
	.string	"txIpduRamPtr_pst"
	.byte	0x1
	.byte	0x39
	.uaword	0x4d1
	.uaword	.LLST0
	.uleb128 0x11
	.string	"rxIpduRamPtr_pst"
	.byte	0x1
	.byte	0x3a
	.uaword	0x568
	.byte	0x1
	.byte	0x62
	.uleb128 0x10
	.string	"index_qu16"
	.byte	0x1
	.byte	0x3b
	.uaword	0x27b
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.uaword	0x54a
	.uaword	0x601
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"Com_RxIpduRam_ast"
	.byte	0x6
	.byte	0x6b
	.uaword	0x5f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x4b3
	.uaword	0x627
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"Com_TxIpduRam_ast"
	.byte	0x6
	.byte	0x6e
	.uaword	0x61c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x1b6
	.uaword	0x64d
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"Com_IpduCounter_au8"
	.byte	0x6
	.byte	0x9d
	.uaword	0x642
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.string	"Com_IpduCounter_DM_au8"
	.byte	0x6
	.byte	0xa1
	.uaword	0x642
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"Com_InitStatus_en"
	.byte	0x7
	.uahalf	0xec7
	.uaword	0x2fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"Com_IpduGrpVector_au8"
	.byte	0x7
	.uahalf	0xed5
	.uaword	0x2a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"Com_IpduGrpVector_DM_au8"
	.byte	0x7
	.uahalf	0xee4
	.uaword	0x2a4
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0x72
	.sleb128 -120
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0x72
	.sleb128 -119
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0x72
	.sleb128 -120
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB149
	.uaword	.LFE149
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Com_IpduCounter_DM_au8,STT_OBJECT,-1
	.extern	Com_RxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_IpduCounter_au8,STT_OBJECT,-1
	.extern	Com_IpduGrpVector_DM_au8,STT_OBJECT,1
	.extern	Com_IpduGrpVector_au8,STT_OBJECT,1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
