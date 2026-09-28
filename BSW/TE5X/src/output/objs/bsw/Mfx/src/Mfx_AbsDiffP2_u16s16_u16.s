	.file	"Mfx_AbsDiffP2_u16s16_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiffP2_u16s16_u16,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiffP2_u16s16_u16
	.type	Mfx_AbsDiffP2_u16s16_u16, @function
Mfx_AbsDiffP2_u16s16_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiffP2_u16s16_u16.c"
	.loc 1 35 0
.LVL0:
.LBB18:
.LBB19:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 1642 0
	sub	%d2, %d7, %d6
.LBE19:
.LBE18:
	.loc 1 35 0
	ld.h	%d0, [%SP]0
.LVL1:
.LBB40:
.LBB38:
	.loc 2 1642 0
	mov	%d3, %d7
.LVL2:
	.loc 2 1645 0
	sh	%d2, %d4, %d2
.LVL3:
	.loc 2 1648 0
	mov	%d15, %d5
	.loc 2 1609 0
	jlt	%d6, %d7, .L5
	.loc 2 1612 0
	sub	%d7, %d6, %d7
.LVL4:
	.loc 2 1628 0
	sh	%d15, %d5, %d7
	.loc 2 1623 0
	lt	%d5, %d5, 0
.LVL5:
	.loc 2 1612 0
	mov	%d3, %d6
.LVL6:
	.loc 2 1623 0
	sel	%d15, %d5, %d15, %d15
.LVL7:
	.loc 2 1633 0
	mov	%d2, %d4
.LVL8:
.L5:
.LBB20:
.LBB21:
	.loc 2 910 0
	jlez	%d15, .L6
	jlt.u	%d2, %d15, .L26
.LVL9:
.LBB22:
.LBB23:
	.loc 2 3105 0
	sub	%d4, %d2, %d15
.LVL10:
.L16:
	.loc 2 3111 0
	jge.u	%d2, %d4, .L23
.LVL11:
.L10:
.LBE23:
.LBE22:
.LBE21:
.LBE20:
.LBB30:
.LBB31:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 3 553 0
	sub	%d3, %d0, %d3
.LVL12:
	mov	%d4, 0
.LVL13:
.L17:
	.loc 3 570 0
	sh	%d2, %d4, %d3
	.loc 3 563 0
	jltz	%d3, .L27
.LVL14:
	sat.hu	%d2, %d2
.LVL15:
	ret
.LVL16:
.L26:
.LBE31:
.LBE30:
.LBB34:
.LBB28:
.LBB25:
.LBB26:
	.loc 2 2556 0
	jlt.u	%d15, %d2, .L10
	.loc 2 2563 0
	sub	%d4, %d15, %d2
.LVL17:
.L23:
	mov.u	%d2, 65535
.LVL18:
	ge.u	%d15, %d4, %d2
.LVL19:
.L11:
.LBE26:
.LBE25:
.LBE28:
.LBE34:
.LBB35:
.LBB32:
	.loc 3 553 0
	sub	%d3, %d0, %d3
.LVL20:
	.loc 3 556 0
	ge	%d2, %d3, 0
	and	%d15, %d2
	mov.u	%d2, 65535
	jz	%d15, .L17
.LBE32:
.LBE35:
.LBE38:
.LBE40:
	.loc 1 37 0
	ret
.LVL21:
.L6:
.LBB41:
.LBB39:
.LBB36:
.LBB29:
.LBB27:
.LBB24:
	.loc 2 3105 0
	sub	%d4, %d2, %d15
.LVL22:
	.loc 2 3107 0
	jz	%d15, .L16
	.loc 2 3121 0
	jge.u	%d4, %d2, .L23
	mov	%d15, 1
	.loc 2 3123 0
	mov	%d4, -1
.LVL23:
	j	.L11
.LVL24:
.L27:
.LBE24:
.LBE27:
.LBE29:
.LBE36:
.LBB37:
.LBB33:
	.loc 3 565 0
	rsub	%d3
.LVL25:
	.loc 3 566 0
	rsub	%d2, %d3, 0
	sh	%d2, %d4, %d2
.LVL26:
	sat.hu	%d2, %d2
.LVL27:
	ret
.LBE33:
.LBE37:
.LBE39:
.LBE41:
.LFE516:
	.size	Mfx_AbsDiffP2_u16s16_u16, .-Mfx_AbsDiffP2_u16s16_u16
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
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x63b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiffP2_u16s16_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x56
	.uaword	0x1e3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1fe
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x60
	.uaword	0x222
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
	.byte	0x4
	.byte	0x6a
	.uaword	0x248
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
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_u32s32_u32_Inl"
	.byte	0x2
	.uahalf	0xc1c
	.byte	0x1
	.uaword	0x23a
	.byte	0x3
	.uaword	0x2f4
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xc1c
	.uaword	0x23a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xc1c
	.uaword	0x214
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xc1e
	.uaword	0x23a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x9f6
	.byte	0x1
	.uaword	0x23a
	.byte	0x3
	.uaword	0x342
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x9f6
	.uaword	0x214
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x9f6
	.uaword	0x23a
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x9f8
	.uaword	0x23a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_ConvertP2_u32_u16_Inl"
	.byte	0x3
	.uahalf	0x223
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uaword	0x3a9
	.uleb128 0x7
	.string	"x"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x23a
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x1d5
	.uleb128 0x7
	.string	"c"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x1d5
	.uleb128 0x8
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x225
	.uaword	0x23a
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x226
	.uaword	0x214
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiffP2_u16s16_u16_Inl"
	.byte	0x2
	.uahalf	0x641
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uaword	0x44c
	.uleb128 0x7
	.string	"x"
	.byte	0x2
	.uahalf	0x641
	.uaword	0x1f0
	.uleb128 0x7
	.string	"y"
	.byte	0x2
	.uahalf	0x641
	.uaword	0x1d5
	.uleb128 0x7
	.string	"a"
	.byte	0x2
	.uahalf	0x641
	.uaword	0x1d5
	.uleb128 0x7
	.string	"b"
	.byte	0x2
	.uahalf	0x641
	.uaword	0x1d5
	.uleb128 0x7
	.string	"c"
	.byte	0x2
	.uahalf	0x641
	.uaword	0x1d5
	.uleb128 0x8
	.string	"xTmp_u32"
	.byte	0x2
	.uahalf	0x643
	.uaword	0x23a
	.uleb128 0x8
	.string	"yTmp_s32"
	.byte	0x2
	.uahalf	0x644
	.uaword	0x214
	.uleb128 0x8
	.string	"absres_u32"
	.byte	0x2
	.uahalf	0x645
	.uaword	0x23a
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x646
	.uaword	0x214
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiff_u32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x38a
	.byte	0x1
	.uaword	0x23a
	.byte	0x3
	.uaword	0x49e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x38a
	.uaword	0x23a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x38a
	.uaword	0x214
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x38c
	.uaword	0x23a
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"Mfx_AbsDiffP2_u16s16_u16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f0
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST0
	.uleb128 0xa
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST1
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x1
	.byte	0x56
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST2
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.uaword	0x3a9
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xd
	.uaword	0x400
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	0x3f6
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	0x3ec
	.byte	0x1
	.byte	0x56
	.uleb128 0xd
	.uaword	0x3e2
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	0x3d8
	.uaword	.LLST6
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x10
	.uaword	0x40a
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	0x41b
	.uleb128 0x11
	.uaword	0x42c
	.uleb128 0x10
	.uaword	0x43f
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x44c
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x676
	.uaword	0x5fb
	.uleb128 0x13
	.uaword	0x485
	.uleb128 0xd
	.uaword	0x479
	.uaword	.LLST9
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x10
	.uaword	0x491
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	0x2a6
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0x390
	.uaword	0x5c7
	.uleb128 0x13
	.uaword	0x2db
	.uleb128 0xd
	.uaword	0x2cf
	.uaword	.LLST11
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x10
	.uaword	0x2e7
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2f4
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x2
	.uahalf	0x394
	.uleb128 0xd
	.uaword	0x329
	.uaword	.LLST13
	.uleb128 0x13
	.uaword	0x31d
	.uleb128 0x15
	.uaword	.LBB26
	.uaword	.LBE26
	.uleb128 0x10
	.uaword	0x335
	.uaword	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x342
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x2
	.uahalf	0x679
	.uleb128 0xd
	.uaword	0x382
	.uaword	.LLST15
	.uleb128 0xd
	.uaword	0x378
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	0x36e
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x10
	.uaword	0x38c
	.uaword	.LLST17
	.uleb128 0x10
	.uaword	0x39c
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL4
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL1
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
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
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"x_value"
.LASF2:
	.string	"res_u32"
.LASF1:
	.string	"y_value"
.LASF3:
	.string	"shift_s32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
