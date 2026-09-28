	.file	"Mfx_RDiv_u32s32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_u32s32_s32,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_u32s32_s32
	.type	Mfx_RDiv_u32s32_s32, @function
Mfx_RDiv_u32s32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_u32s32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 1399 0
	sh	%d3, %d5, -31
	rsub	%d15, %d3, 0
.LVL1:
	.loc 2 1400 0
	xor	%d6, %d15, %d5
	.loc 2 1402 0
	mov	%d2, -1
	.loc 2 1400 0
	add	%d6, %d3
.LVL2:
	.loc 2 1402 0
	sh	%d2, -1
	.loc 2 1403 0
	jz	%d6, .L2
	.loc 2 1405 0
	div.u	%e6, %d4, %d6
.LVL3:
	.loc 2 1414 0
	mov	%d7, -1
	.loc 2 1405 0
	mov	%d2, %d6
	.loc 2 1414 0
	ge	%d2, %d2, 0
	xor	%d6, %d15
	sh	%d7, -1
	sel	%d6, %d2, %d6, %d7
.LVL4:
	.loc 2 1423 0
	sub	%d2, %d6, %d15
.LVL5:
.LBE11:
.LBE10:
	.loc 2 5900 0
	add	%d15, %d2, -1
.LVL6:
	addih	%d15, %d15, 32768
	mov	%d6, -3
	jlt.u	%d6, %d15, .L2
	.loc 2 5893 0
	mov	%d6, 1
	.loc 2 5905 0
	jnz	%d3, .L11
.LVL7:
.L4:
	.loc 2 5919 0
	sh	%d15, %d5, -1
	and	%d7, %d5, 1
.LVL8:
	.loc 2 5916 0
	div.u	%e4, %d4, %d5
.LVL9:
	.loc 2 5919 0
	add	%d15, %d7
.LVL10:
	.loc 2 5926 0
	ge.u	%d15, %d5, %d15
.LVL11:
	cadd	%d2, %d15, %d2, %d6
.LVL12:
.L2:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL13:
.L11:
.LBB13:
.LBB12:
	.loc 2 5908 0
	rsub	%d5
.LVL14:
	.loc 2 5907 0
	mov	%d6, -1
	j	.L4
.LBE12:
.LBE13:
.LFE516:
	.size	Mfx_RDiv_u32s32_s32, .-Mfx_RDiv_u32s32_s32
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
	.uaword	0x488
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_u32s32_s32.c"
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
	.uaword	0x201
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
	.uaword	0x227
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
	.string	"Mfx_Prv_Div_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x56c
	.byte	0x1
	.uaword	0x1f3
	.byte	0x3
	.uaword	0x31c
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x56c
	.uaword	0x219
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x56c
	.uaword	0x1f3
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x56e
	.uaword	0x1f3
	.uleb128 0x6
	.string	"yAbs_u32"
	.byte	0x2
	.uahalf	0x56f
	.uaword	0x219
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x570
	.uaword	0x219
	.uleb128 0x6
	.string	"resAbs_u32"
	.byte	0x2
	.uahalf	0x571
	.uaword	0x219
	.uleb128 0x6
	.string	"tmp1_u32"
	.byte	0x2
	.uahalf	0x572
	.uaword	0x219
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x1700
	.byte	0x1
	.uaword	0x1f3
	.byte	0x3
	.uaword	0x3a5
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1700
	.uaword	0x219
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1700
	.uaword	0x1f3
	.uleb128 0x6
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x1702
	.uaword	0x219
	.uleb128 0x6
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x1703
	.uaword	0x219
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1704
	.uaword	0x1f3
	.uleb128 0x6
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x1705
	.uaword	0x1f3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_RDiv_u32s32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f3
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
	.uaword	0x219
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1f3
	.uaword	.LLST1
	.uleb128 0x9
	.uaword	0x31c
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x352
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x346
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x35e
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	0x370
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	0x383
	.uaword	.LLST6
	.uleb128 0xc
	.uaword	0x393
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	0x285
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x2
	.uahalf	0x1707
	.uleb128 0xa
	.uaword	0x2ba
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x2ae
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0xc
	.uaword	0x2c6
	.uaword	.LLST10
	.uleb128 0xc
	.uaword	0x2d6
	.uaword	.LLST11
	.uleb128 0xc
	.uaword	0x2e7
	.uaword	.LLST12
	.uleb128 0xf
	.uaword	0x2f7
	.uleb128 0xf
	.uaword	0x30a
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE516
	.uahalf	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
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
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB13
	.uaword	.LBE13
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
