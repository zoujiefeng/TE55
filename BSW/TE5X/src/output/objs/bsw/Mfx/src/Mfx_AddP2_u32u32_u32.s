	.file	"Mfx_AddP2_u32u32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AddP2_u32u32_u32,"ax",@progbits
	.align 1
	.global	Mfx_AddP2_u32u32_u32
	.type	Mfx_AddP2_u32u32_u32, @function
Mfx_AddP2_u32u32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AddP2_u32u32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
	.loc 2 2507 0
	jge	%d6, %d7, .L2
	.loc 2 2509 0
	sub	%d2, %d7, %d6
.LVL1:
	.loc 2 2510 0
	ld.w	%d6, [%SP]0
.LVL2:
	sub	%d6, %d7
.LVL3:
.L3:
	.loc 2 2523 0
	sh	%d3, %d4, %d2
.LVL4:
	.loc 2 2526 0
	addi	%d15, %d2, -32
	.loc 2 2529 0
	add	%d3, %d5
.LVL5:
	.loc 2 2526 0
	sh	%d15, %d4, %d15
.LVL6:
	.loc 2 2533 0
	lt.u	%d5, %d3, %d5
.LVL7:
	cadd	%d15, %d5, %d15, 1
.LVL8:
	.loc 2 2535 0
	jltz	%d6, .L12
.LVL9:
	.loc 2 2562 0
	mov	%d2, -1
.LVL10:
	.loc 2 2551 0
	jnz	%d15, .L7
	.loc 2 2553 0
	addi	%d15, %d6, -32
.LVL11:
	.loc 2 2548 0
	sh	%d2, %d3, %d6
.LVL12:
	.loc 2 2553 0
	sh	%d15, %d3, %d15
.LVL13:
	.loc 2 2562 0
	cmov	%d2, %d15, -1
.LVL14:
.L7:
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL15:
.L2:
.LBB7:
.LBB6:
	.loc 2 2517 0
	ld.w	%d15, [%SP]0
	.loc 2 2516 0
	sub	%d2, %d6, %d7
.LVL16:
	.loc 2 2519 0
	mov	%e4, %d4, %d5
.LVL17:
	.loc 2 2517 0
	sub	%d6, %d15, %d6
.LVL18:
	j	.L3
.LVL19:
.L12:
	.loc 2 2540 0
	rsub	%d6
.LVL20:
	.loc 2 2543 0
	rsub	%d2, %d6, 32
.LVL21:
	dextr	%d2, %d15, %d3, %d2
.LVL22:
	.loc 2 2544 0
	rsub	%d3, %d6, 0
.LVL23:
	sh	%d3, %d15, %d3
	mov	%d15, %d3
.LVL24:
	.loc 2 2562 0
	cmov	%d2, %d15, -1
.LVL25:
	j	.L7
.LBE6:
.LBE7:
.LFE516:
	.size	Mfx_AddP2_u32u32_u32, .-Mfx_AddP2_u32u32_u32
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
	.uaword	0x430
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AddP2_u32u32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x202
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x228
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
	.string	"Mfx_Prv_AddP2_u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x9bf
	.byte	0x1
	.uaword	0x21a
	.byte	0x3
	.uaword	0x354
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0x9bf
	.uaword	0x21a
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0x9bf
	.uaword	0x21a
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0x9bf
	.uaword	0x1f4
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0x9bf
	.uaword	0x1f4
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0x9bf
	.uaword	0x1f4
	.uleb128 0x6
	.string	"shift1_s32"
	.byte	0x2
	.uahalf	0x9c1
	.uaword	0x1f4
	.uleb128 0x6
	.string	"shift2_s32"
	.byte	0x2
	.uahalf	0x9c2
	.uaword	0x1f4
	.uleb128 0x6
	.string	"var1_u32"
	.byte	0x2
	.uahalf	0x9c3
	.uaword	0x21a
	.uleb128 0x6
	.string	"var2_u32"
	.byte	0x2
	.uahalf	0x9c4
	.uaword	0x21a
	.uleb128 0x6
	.string	"result_u32"
	.byte	0x2
	.uahalf	0x9c5
	.uaword	0x21a
	.uleb128 0x6
	.string	"highbyte_u32"
	.byte	0x2
	.uahalf	0x9c6
	.uaword	0x21a
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_AddP2_u32u32_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x21a
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x21a
	.uaword	.LLST0
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x21a
	.uaword	.LLST1
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST2
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.uaword	0x286
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x2d9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.uaword	0x2cf
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.uaword	0x2c5
	.uaword	.LLST2
	.uleb128 0xc
	.uaword	0x2bb
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	0x2b1
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xe
	.uaword	0x2e3
	.uaword	.LLST6
	.uleb128 0xe
	.uaword	0x2f6
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	0x309
	.uaword	.LLST8
	.uleb128 0xe
	.uaword	0x31a
	.uaword	.LLST9
	.uleb128 0xe
	.uaword	0x32b
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	0x33e
	.uaword	.LLST11
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
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
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
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
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
