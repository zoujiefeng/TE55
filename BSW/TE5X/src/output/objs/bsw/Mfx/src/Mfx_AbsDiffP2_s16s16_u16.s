	.file	"Mfx_AbsDiffP2_s16s16_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiffP2_s16s16_u16,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiffP2_s16s16_u16
	.type	Mfx_AbsDiffP2_s16s16_u16, @function
Mfx_AbsDiffP2_s16s16_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiffP2_s16s16_u16.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 1415 0
	jlt	%d6, %d7, .L2
	.loc 2 1418 0
	mov	%d15, %d6
	sub	%d7, %d15, %d7
.LVL1:
	.loc 2 1432 0
	sh	%d5, %d5, %d7
.LVL2:
.L5:
.LBB14:
.LBB15:
	.loc 2 485 0
	sub	%d2, %d4, %d5
	sub	%d3, %d5, %d4
	lt	%d5, %d4, %d5
.LVL3:
	sel	%d5, %d5, %d3, %d2
.LVL4:
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 3 553 0
	ld.h	%d2, [%SP]0
	sub	%d15, %d2, %d15
.LVL5:
	.loc 3 556 0
	mov.u	%d2, 65535
	ge.u	%d3, %d5, %d2
	ge	%d2, %d15, 0
	and	%d3, %d2
	mov.u	%d2, 65535
	jnz	%d3, .L13
	.loc 3 570 0
	sh	%d2, %d5, %d15
	.loc 3 563 0
	jltz	%d15, .L17
.LVL6:
	sat.hu	%d2, %d2
.LVL7:
.L13:
.LBE17:
.LBE16:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL8:
.L2:
.LBB21:
.LBB20:
	.loc 2 1446 0
	mov	%d15, %d7
	sub	%d6, %d15, %d6
.LVL9:
	.loc 2 1458 0
	sh	%d4, %d4, %d6
.LVL10:
	j	.L5
.LVL11:
.L17:
.LBB19:
.LBB18:
	.loc 3 565 0
	rsub	%d15
.LVL12:
	.loc 3 566 0
	rsub	%d2, %d15, 0
	sh	%d2, %d5, %d2
.LVL13:
	sat.hu	%d2, %d2
.LVL14:
	j	.L13
.LBE18:
.LBE19:
.LBE20:
.LBE21:
.LFE516:
	.size	Mfx_AbsDiffP2_s16s16_u16, .-Mfx_AbsDiffP2_s16s16_u16
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
	.uaword	0x56f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiffP2_s16s16_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
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
	.string	"Mfx_Prv_AbsDiff_s32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x1dd
	.byte	0x1
	.uaword	0x23a
	.byte	0x3
	.uaword	0x314
	.uleb128 0x5
	.string	"x_value"
	.byte	0x2
	.uahalf	0x1dd
	.uaword	0x214
	.uleb128 0x5
	.string	"y_value"
	.byte	0x2
	.uahalf	0x1dd
	.uaword	0x214
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x1df
	.uaword	0x23a
	.uleb128 0x6
	.string	"tmp_s32"
	.byte	0x2
	.uahalf	0x1e0
	.uaword	0x214
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_ConvertP2_u32_u16_Inl"
	.byte	0x3
	.uahalf	0x223
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uaword	0x37b
	.uleb128 0x5
	.string	"x"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x23a
	.uleb128 0x5
	.string	"a"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x1d5
	.uleb128 0x5
	.string	"c"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x1d5
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x225
	.uaword	0x23a
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x226
	.uaword	0x214
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiffP2_s16s16_u16_Inl"
	.byte	0x2
	.uahalf	0x57f
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uaword	0x41e
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0x57f
	.uaword	0x1d5
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0x57f
	.uaword	0x1d5
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0x57f
	.uaword	0x1d5
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0x57f
	.uaword	0x1d5
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0x57f
	.uaword	0x1d5
	.uleb128 0x6
	.string	"xTmp_s32"
	.byte	0x2
	.uahalf	0x581
	.uaword	0x214
	.uleb128 0x6
	.string	"yTmp_s32"
	.byte	0x2
	.uahalf	0x582
	.uaword	0x214
	.uleb128 0x6
	.string	"absres_u32"
	.byte	0x2
	.uahalf	0x583
	.uaword	0x23a
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x584
	.uaword	0x214
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_AbsDiffP2_s16s16_u16"
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
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST0
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST1
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST2
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST3
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.uaword	0x37b
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xc
	.uaword	0x3d2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.uaword	0x3c8
	.uaword	.LLST4
	.uleb128 0xd
	.uaword	0x3be
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	0x3b4
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	0x3aa
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xf
	.uaword	0x3dc
	.uaword	.LLST8
	.uleb128 0xf
	.uaword	0x3ed
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	0x3fe
	.uleb128 0xf
	.uaword	0x411
	.uaword	.LLST10
	.uleb128 0x11
	.uaword	0x2a6
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x2
	.uahalf	0x5be
	.uaword	0x52b
	.uleb128 0xd
	.uaword	0x2e3
	.uaword	.LLST11
	.uleb128 0xd
	.uaword	0x2d3
	.uaword	.LLST12
	.uleb128 0x12
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0xf
	.uaword	0x2f3
	.uaword	.LLST13
	.uleb128 0x10
	.uaword	0x303
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x314
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x5c1
	.uleb128 0xd
	.uaword	0x354
	.uaword	.LLST14
	.uleb128 0xd
	.uaword	0x34a
	.uaword	.LLST15
	.uleb128 0xd
	.uaword	0x340
	.uaword	.LLST13
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0xf
	.uaword	0x35e
	.uaword	.LLST17
	.uleb128 0xf
	.uaword	0x36e
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
	.uleb128 0x8
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL11
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL11
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB19
	.uaword	.LBE19
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
	.string	"shift_s32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
