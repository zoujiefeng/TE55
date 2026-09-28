	.file	"Mfx_RDiv_s16u16_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s16u16_s16,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s16u16_s16
	.type	Mfx_RDiv_s16u16_s16, @function
Mfx_RDiv_s16u16_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s16u16_s16.c"
	.loc 1 35 0
.LVL0:
.LBB18:
.LBB19:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 913 0
	jnz	%d5, .L2
	.loc 2 916 0
	mov	%d15, -1
	movh	%d2, 32768
	ge	%d4, %d4, 0
.LVL1:
	sh	%d15, -1
	sel	%d15, %d4, %d15, %d2
.LVL2:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 2 5303 0
	mov.u	%d3, 32768
	mov	%d2, 32767
	jlt	%d15, %d3, .L10
.LVL3:
.L14:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
	.loc 1 37 0
	ret
.LVL4:
.L10:
	mov	%d2, -32768
	jlt	%d15, %d2, 0f
	extr	%d2, %d15, 0, 16
	0:
	ret
.LVL5:
.L2:
.LBB35:
.LBB34:
.LBB33:
.LBB32:
.LBB31:
.LBB30:
.LBB28:
.LBB26:
	.loc 2 921 0
	div	%e6, %d4, %d5
.LBE26:
.LBE28:
	.loc 2 5341 0
	mov	%d0, 1
.LBB29:
.LBB27:
	.loc 2 921 0
	mov	%d15, %d6
.LVL6:
.LBE27:
.LBE29:
	.loc 2 5349 0
	jgez	%d4, .L5
	.loc 2 5351 0
	rsub	%d4
.LVL7:
	.loc 2 5352 0
	mov	%d0, -1
.LVL8:
.L5:
	.loc 2 5359 0
	div.u	%e2, %d4, %d5
	mov	%d2, %d3
	.loc 2 5365 0
	and	%d3, %d5, 1
	sh	%d5, -1
.LVL9:
	add	%d5, %d3
	.loc 2 5370 0
	jlt.u	%d2, %d5, .L10
	.loc 2 5372 0
	add	%d15, %d0, %d6
.LVL10:
.LBE30:
.LBE31:
	.loc 2 5303 0
	mov.u	%d3, 32768
	mov	%d2, 32767
	jge	%d15, %d3, .L14
	j	.L10
.LBE32:
.LBE33:
.LBE34:
.LBE35:
.LFE516:
	.size	Mfx_RDiv_s16u16_s16, .-Mfx_RDiv_s16u16_s16
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
	.uaword	0x535
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s16u16_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x80
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
	.byte	0x3
	.byte	0x56
	.uaword	0x1de
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x21d
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
	.uaword	0x243
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
	.string	"Mfx_Prv_Div_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x37c
	.byte	0x1
	.uaword	0x20f
	.byte	0x3
	.uaword	0x2ef
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x20f
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x235
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x37e
	.uaword	0x20f
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s16_Inl"
	.byte	0x2
	.uahalf	0x14b0
	.byte	0x1
	.uaword	0x1d0
	.byte	0x3
	.uaword	0x33e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x14b0
	.uaword	0x20f
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x14b0
	.uaword	0x235
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x14b2
	.uaword	0x20f
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s16u16_s16_Inl"
	.byte	0x2
	.uahalf	0x12e9
	.byte	0x1
	.uaword	0x1d0
	.byte	0x3
	.uaword	0x381
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x12e9
	.uaword	0x1d0
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x12e9
	.uaword	0x1eb
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x14d7
	.byte	0x1
	.uaword	0x20f
	.byte	0x3
	.uaword	0x418
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x14d7
	.uaword	0x20f
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x14d7
	.uaword	0x235
	.uleb128 0x7
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x14d9
	.uaword	0x235
	.uleb128 0x7
	.string	"x_tmp_u32"
	.byte	0x2
	.uahalf	0x14da
	.uaword	0x235
	.uleb128 0x7
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x14db
	.uaword	0x235
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x14dc
	.uaword	0x20f
	.uleb128 0x7
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x14dd
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_RDiv_s16u16_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d0
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x1d0
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1eb
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x33e
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x374
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x368
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	0x2ef
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x12eb
	.uleb128 0xb
	.uaword	0x325
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x319
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0xe
	.uaword	0x331
	.uaword	.LLST6
	.uleb128 0xc
	.uaword	0x381
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x14b4
	.uleb128 0xb
	.uaword	0x3b7
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x3ab
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0xe
	.uaword	0x3c3
	.uaword	.LLST9
	.uleb128 0xf
	.uaword	0x3d5
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.uaword	0x3e7
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	0x3fa
	.uaword	.LLST11
	.uleb128 0xe
	.uaword	0x406
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	0x2a1
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.uahalf	0x14df
	.uleb128 0xb
	.uaword	0x2d6
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x2ca
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0xf
	.uaword	0x2e2
	.byte	0x1
	.byte	0x56
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL5
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
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
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
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
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
.LASF2:
	.string	"res_s32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
