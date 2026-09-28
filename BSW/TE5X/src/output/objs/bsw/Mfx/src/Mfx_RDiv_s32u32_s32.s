	.file	"Mfx_RDiv_s32u32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s32u32_s32,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s32u32_s32
	.type	Mfx_RDiv_s32u32_s32, @function
Mfx_RDiv_s32u32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s32u32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 900 0
	movh	%d15, 32768
	eq	%d2, %d5, %d15
	and.eq	%d2, %d4, %d15
	rsub	%d2
	.loc 2 897 0
	jltz	%d5, .L3
	.loc 2 913 0
	jnz	%d5, .L4
	.loc 2 916 0
	mov	%d15, -1
	ge	%d2, %d4, 0
	sh	%d15, -1
	movh	%d3, 32768
	sel	%d2, %d2, %d15, %d3
	ret
.L4:
	.loc 2 921 0
	div	%e6, %d4, %d5
.LBE11:
.LBE10:
	.loc 2 5346 0
	mov	%d15, -3
.LBB13:
.LBB12:
	.loc 2 921 0
	mov	%d2, %d6
.LVL1:
.LBE12:
.LBE13:
	.loc 2 5346 0
	add	%d6, -1
.LVL2:
	addih	%d6, %d6, 32768
	jlt.u	%d15, %d6, .L10
.LVL3:
.L3:
	.loc 2 5341 0
	mov	%d3, 1
	.loc 2 5349 0
	jltz	%d4, .L12
.LVL4:
	.loc 2 5359 0
	div.u	%e6, %d4, %d5
	.loc 2 5365 0
	and	%d4, %d5, 1
.LVL5:
	sh	%d5, -1
.LVL6:
	add	%d5, %d4
.LVL7:
	.loc 2 5372 0
	ge.u	%d5, %d7, %d5
.LVL8:
	cadd	%d2, %d5, %d2, %d3
.LVL9:
.L10:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL10:
.L12:
.LBB15:
.LBB14:
	.loc 2 5351 0
	rsub	%d4
.LVL11:
	.loc 2 5359 0
	div.u	%e6, %d4, %d5
	.loc 2 5365 0
	and	%d4, %d5, 1
.LVL12:
	sh	%d5, -1
.LVL13:
	add	%d5, %d4
	.loc 2 5352 0
	mov	%d3, -1
.LVL14:
	.loc 2 5372 0
	ge.u	%d5, %d7, %d5
	cadd	%d2, %d5, %d2, %d3
.LVL15:
	j	.L10
.LBE14:
.LBE15:
.LFE516:
	.size	Mfx_RDiv_s32u32_s32, .-Mfx_RDiv_s32u32_s32
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
	.uaword	0x43c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s32u32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.uaword	0x22b
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
	.uaword	0x1ca
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
	.string	"Mfx_Prv_Div_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x37c
	.byte	0x1
	.uaword	0x21d
	.byte	0x3
	.uaword	0x2d7
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x21d
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x243
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x37e
	.uaword	0x21d
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x14d7
	.byte	0x1
	.uaword	0x21d
	.byte	0x3
	.uaword	0x372
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x14d7
	.uaword	0x21d
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x14d7
	.uaword	0x243
	.uleb128 0x6
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x14d9
	.uaword	0x243
	.uleb128 0x6
	.string	"x_tmp_u32"
	.byte	0x2
	.uahalf	0x14da
	.uaword	0x243
	.uleb128 0x6
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x14db
	.uaword	0x243
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x14dc
	.uaword	0x21d
	.uleb128 0x6
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x14dd
	.uaword	0x21d
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_RDiv_s32u32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x21d
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
	.uaword	0x21d
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x243
	.uaword	.LLST1
	.uleb128 0x9
	.uaword	0x2d7
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x30d
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x301
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x319
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	0x32b
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	0x33d
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	0x350
	.byte	0x1
	.byte	0x52
	.uleb128 0xc
	.uaword	0x360
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	0x285
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x14df
	.uleb128 0xa
	.uaword	0x2ba
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x2ae
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0xc
	.uaword	0x2c6
	.uaword	.LLST10
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL12
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x25
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1ca
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1ca
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL15
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
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
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
