	.file	"Mfx_AbsDiff_s32s32_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiff_s32s32_s8,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiff_s32s32_s8
	.type	Mfx_AbsDiff_s32s32_s8, @function
Mfx_AbsDiff_s32s32_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiff_s32s32_s8.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 2122 0
	lt	%d2, %d5, 1
	and.ge	%d2, %d4, 0
	.loc 2 2120 0
	sub	%d15, %d4, %d5
.LVL1:
	.loc 2 2122 0
	jz	%d2, .L2
	.loc 2 2125 0
	addi	%d2, %d5, -1
	addih	%d2, %d2, 32768
	jlt	%d2, %d4, .L7
.L2:
	.loc 2 2131 0
	ge	%d2, %d5, 1
	and.t	%d2, %d4,31, %d2,0
	jz	%d2, .L4
	.loc 2 2134 0
	addih	%d5, %d5, 32768
.LVL2:
	jge	%d4, %d5, .L4
	.loc 2 2136 0
	mov	%d15, -128
.LVL3:
	mov	%d2, -128
.LVL4:
.L6:
.LBE11:
.LBE10:
	.loc 2 412 0
	jgez	%d15, .L14
	.loc 2 415 0
	eq	%d3, %d2, -128
.LBB15:
.LBB12:
	.loc 2 2151 0
	mov	%d2, 127
.LBE12:
.LBE15:
	.loc 2 415 0
	jnz	%d3, .L14
	rsub	%d15
.LVL5:
	extr	%d2, %d15, 0, 8
	ret
.LVL6:
.L4:
.LBB16:
.LBB13:
	.loc 2 2141 0
	ge	%d3, %d15, 128
	.loc 2 2151 0
	mov	%d2, 127
	.loc 2 2141 0
	jz	%d3, .L20
.L14:
.LBE13:
.LBE16:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL7:
.L7:
.LBB19:
.LBB18:
.LBB17:
.LBB14:
	.loc 2 2127 0
	mov	%d15, 127
.LVL8:
	mov	%d2, 127
	j	.L6
.LVL9:
.L20:
	.loc 2 2146 0
	lt	%d3, %d15, -128
	jnz	%d3, .L14
	extr	%d2, %d15, 0, 8
	j	.L6
.LBE14:
.LBE17:
.LBE18:
.LBE19:
.LFE516:
	.size	Mfx_AbsDiff_s32s32_s8, .-Mfx_AbsDiff_s32s32_s8
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
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3cd
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiff_s32s32_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x40
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1bf
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x210
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiff_s32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x195
	.byte	0x1
	.uaword	0x1b2
	.byte	0x3
	.uaword	0x2da
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x195
	.uaword	0x202
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x195
	.uaword	0x202
	.uleb128 0x6
	.string	"res_s8"
	.byte	0x2
	.uahalf	0x197
	.uaword	0x1b2
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x844
	.byte	0x1
	.uaword	0x1b2
	.byte	0x3
	.uaword	0x32b
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x844
	.uaword	0x202
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x844
	.uaword	0x202
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x846
	.uaword	0x202
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_AbsDiff_s32s32_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1b2
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x202
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x202
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	0x286
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x2be
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	0x2b2
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xe
	.uaword	0x2ca
	.byte	0x1
	.byte	0x52
	.uleb128 0xf
	.uaword	0x2da
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x19a
	.uleb128 0xb
	.uaword	0x30e
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	0x302
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x10
	.uaword	0x31a
	.uaword	.LLST3
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
	.uleb128 0x3
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
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL9
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
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB17
	.uaword	.LBE17
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
.LASF1:
	.string	"y_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
