	.file	"Mfx_AbsDiffP2_u16u16_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiffP2_u16u16_u16,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiffP2_u16u16_u16
	.type	Mfx_AbsDiffP2_u16u16_u16, @function
Mfx_AbsDiffP2_u16u16_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiffP2_u16u16_u16.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 1822 0
	mov	%d15, %d7
.LVL1:
	sub	%d2, %d15, %d6
	.loc 2 1824 0
	sh	%d2, %d4, %d2
.LVL2:
	.loc 2 1807 0
	jlt	%d6, %d7, .L3
	.loc 2 1809 0
	mov	%d15, %d6
.LVL3:
	sub	%d7, %d15, %d7
.LVL4:
	.loc 2 1811 0
	sh	%d5, %d5, %d7
.LVL5:
	.loc 2 1814 0
	mov	%d2, %d4
.LVL6:
.L3:
.LBB14:
.LBB15:
	.loc 2 1133 0
	sub	%d3, %d2, %d5
	sub	%d4, %d5, %d2
.LVL7:
	lt.u	%d5, %d2, %d5
.LVL8:
.LBE15:
.LBE14:
.LBB17:
.LBB18:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 3 553 0
	ld.h	%d2, [%SP]0
.LVL9:
.LBE18:
.LBE17:
.LBB21:
.LBB16:
	.loc 2 1133 0
	sel	%d5, %d5, %d4, %d3
.LVL10:
.LBE16:
.LBE21:
.LBB22:
.LBB19:
	.loc 3 553 0
	sub	%d15, %d2, %d15
.LVL11:
	.loc 3 556 0
	mov.u	%d2, 65535
	ge.u	%d3, %d5, %d2
	ge	%d2, %d15, 0
	and	%d3, %d2
	mov.u	%d2, 65535
	jnz	%d3, .L9
	.loc 3 570 0
	sh	%d2, %d5, %d15
	.loc 3 563 0
	jltz	%d15, .L13
.LVL12:
	sat.hu	%d2, %d2
.LVL13:
.L9:
.LBE19:
.LBE22:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.L13:
.LVL14:
.LBB25:
.LBB24:
.LBB23:
.LBB20:
	.loc 3 565 0
	rsub	%d15
.LVL15:
	.loc 3 566 0
	rsub	%d2, %d15, 0
	sh	%d2, %d5, %d2
.LVL16:
	sat.hu	%d2, %d2
.LVL17:
	j	.L9
.LBE20:
.LBE23:
.LBE24:
.LBE25:
.LFE516:
	.size	Mfx_AbsDiffP2_u16u16_u16, .-Mfx_AbsDiffP2_u16u16_u16
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
	.uaword	0x54f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiffP2_u16u16_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
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
	.string	"Mfx_Prv_AbsDiff_u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x466
	.byte	0x1
	.uaword	0x23a
	.byte	0x3
	.uaword	0x304
	.uleb128 0x5
	.string	"x_value"
	.byte	0x2
	.uahalf	0x466
	.uaword	0x23a
	.uleb128 0x5
	.string	"y_value"
	.byte	0x2
	.uahalf	0x466
	.uaword	0x23a
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x468
	.uaword	0x23a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_ConvertP2_u32_u16_Inl"
	.byte	0x3
	.uahalf	0x223
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uaword	0x36b
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
	.string	"Mfx_Prv_AbsDiffP2_u16u16_u16_Inl"
	.byte	0x2
	.uahalf	0x707
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uaword	0x40e
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0x707
	.uaword	0x1f0
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0x707
	.uaword	0x1f0
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0x707
	.uaword	0x1d5
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0x707
	.uaword	0x1d5
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0x707
	.uaword	0x1d5
	.uleb128 0x6
	.string	"xTmp_u32"
	.byte	0x2
	.uahalf	0x709
	.uaword	0x23a
	.uleb128 0x6
	.string	"yTmp_u32"
	.byte	0x2
	.uahalf	0x70a
	.uaword	0x23a
	.uleb128 0x6
	.string	"absres_u32"
	.byte	0x2
	.uahalf	0x70b
	.uaword	0x23a
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x214
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_AbsDiffP2_u16u16_u16"
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
	.uaword	0x1f0
	.uaword	.LLST0
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST1
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x1
	.byte	0x56
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST2
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.uaword	0x36b
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xc
	.uaword	0x3c2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.uaword	0x3b8
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	0x3ae
	.byte	0x1
	.byte	0x56
	.uleb128 0xd
	.uaword	0x3a4
	.uaword	.LLST4
	.uleb128 0xd
	.uaword	0x39a
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xf
	.uaword	0x3cc
	.uaword	.LLST6
	.uleb128 0xf
	.uaword	0x3dd
	.uaword	.LLST7
	.uleb128 0x10
	.uaword	0x3ee
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.uaword	0x401
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	0x2a6
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x50e
	.uleb128 0xd
	.uaword	0x2e3
	.uaword	.LLST9
	.uleb128 0xd
	.uaword	0x2d3
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x10
	.uaword	0x2f3
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x304
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0x72d
	.uleb128 0xc
	.uaword	0x344
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.uaword	0x33a
	.uaword	.LLST11
	.uleb128 0xc
	.uaword	0x330
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0xf
	.uaword	0x34e
	.uaword	.LLST12
	.uleb128 0xf
	.uaword	0x35e
	.uaword	.LLST13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL3
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
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL15
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
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
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
