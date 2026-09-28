	.file	"Mfx_DivShLeft_s32u32u8_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s32u32u8_s32,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s32u32u8_s32
	.type	Mfx_DivShLeft_s32u32u8_s32, @function
Mfx_DivShLeft_s32u32u8_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s32u32u8_s32.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d3, %d5
.LVL1:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3812 0
	mov	%d15, 1
	.loc 2 3813 0
	mov	%e4, %d4
	.loc 2 3812 0
	sh	%d6, %d15, %d6
.LVL2:
	.loc 2 3813 0
	mul.u	%e0, %d6, %d4
	madd	%d1, %d1, %d6, %d5
.LVL3:
.LBB12:
.LBB13:
	.loc 2 6697 0
	mov	%d10, 1
	.loc 2 6700 0
	jltz	%d1, .L30
.L3:
.LVL4:
.LBB14:
.LBB15:
	.loc 2 6481 0
	mov	%e8, %d0, %d1
.LVL5:
	.loc 2 6484 0
	jz	%d3, .L15
	.loc 2 6489 0
	jltz	%d3, .L31
	.loc 2 6517 0
	div.u	%e4, %d8, %d3
.LVL6:
	.loc 2 6520 0
	mov	%d5, 0
.LVL7:
	.loc 2 6517 0
	mov	%d15, %d4
.LVL8:
	.loc 2 6523 0
	mul	%d2, %d15, %d3
	sub	%d8, %d2
	.loc 2 6524 0
	jne	%d15, -1, .L32
.LVL9:
.L15:
.LBE15:
.LBE14:
	.loc 2 6715 0
	movh	%d15, 32768
	eq	%d2, %d10, -1
	add	%d3, %d15, -1
.LVL10:
	sel	%d2, %d2, %d15, %d3
.LVL11:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 37 0
	ret
.LVL12:
.L32:
.LBB24:
.LBB22:
.LBB20:
.LBB18:
.LBB17:
.LBB16:
	.loc 2 6524 0
	lea	%a15, 31
.LVL13:
.L11:
	.loc 2 6530 0
	dextr	%d8, %d8, %d9, 1
.LVL14:
	sh	%d9, 1
	.loc 2 6533 0
	div.u	%e6, %d8, %d3
	.loc 2 6539 0
	mov	%d7, 0
	.loc 2 6533 0
	mov	%d15, %d6
	.loc 2 6539 0
	madd.u	%e6, %e6, %d4, 2
	madd	%d7, %d7, %d5, 2
	.loc 2 6536 0
	mul	%d15, %d3
	.loc 2 6539 0
	mov	%e4, %d7, %d6
.LVL15:
	.loc 2 6536 0
	sub	%d8, %d15
	.loc 2 6542 0
	eq	%d6, %d5, 0
	mov	%d15, %d6
	and.eq	%d15, %d4, -1
	or.ne	%d15, %d5, 0
	jnz	%d15, .L15
	loop	%a15, .L11
	sel	%d4, %d6, %d4, -1
.LVL16:
	j	.L9
.LVL17:
.L31:
	.loc 2 6493 0
	mul.u	%e4, %d1, 1
.LVL18:
	.loc 2 6496 0
	msub.u	%e0, %e0, %d3, %d1
.LVL19:
	.loc 2 6499 0
	mov	%d15, %d1
	jz	%d1, .L6
.L7:
.LVL20:
	.loc 2 6506 0
	msub.u	%e0, %e0, %d3, %d15
	.loc 2 6503 0
	madd.u	%e4, %e4, %d15, 1
.LVL21:
	.loc 2 6499 0
	mov	%d15, %d1
	jnz	%d1, .L7
.LVL22:
.L6:
	.loc 2 6508 0
	div.u	%e0, %d0, %d3
.LVL23:
	.loc 2 6509 0
	madd.u	%e0, %e4, %d0, 1
.LVL24:
	.loc 2 6512 0
	seln	%d4, %d1, %d0, -1
.LVL25:
.L9:
.LBE16:
.LBE17:
	.loc 2 6719 0
	mul	%d2, %d10, %d4
	.loc 2 6713 0
	jltz	%d4, .L15
.LVL26:
.LBE18:
.LBE20:
.LBE22:
.LBE24:
	.loc 1 37 0
	ret
.LVL27:
.L30:
.LBB25:
.LBB23:
.LBB21:
.LBB19:
	.loc 2 6702 0
	rsub	%d1
	rsub	%d0
	cadd	%d1, %d0, %d1, -1
	.loc 2 6703 0
	mov	%d10, -1
	j	.L3
.LBE19:
.LBE21:
.LBE23:
.LBE25:
.LFE516:
	.size	Mfx_DivShLeft_s32u32u8_s32, .-Mfx_DivShLeft_s32u32u8_s32
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
	.file 4 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5bf
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s32u32u8_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x58
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x204
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
	.uaword	0x1e1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x1d1
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
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x3
	.byte	0x8a
	.uaword	0x297
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b7
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x246
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2f1
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2d0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x324
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2ac
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2f1
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x304
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32u32u8_s32_Inl"
	.byte	0x2
	.uahalf	0xede
	.byte	0x1
	.uaword	0x238
	.byte	0x3
	.uaword	0x3ab
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xede
	.uaword	0x238
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xede
	.uaword	0x257
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xede
	.uaword	0x1f7
	.uleb128 0xb
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xee0
	.uaword	0x2be
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xee1
	.uaword	0x257
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64u32_s32_Inl"
	.byte	0x2
	.uahalf	0x1a25
	.byte	0x1
	.uaword	0x238
	.byte	0x3
	.uaword	0x419
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1a25
	.uaword	0x2be
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1a25
	.uaword	0x257
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x1a27
	.uaword	0x2ac
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1a28
	.uaword	0x257
	.uleb128 0xb
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1a29
	.uaword	0x238
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x257
	.byte	0x3
	.uaword	0x492
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2ac
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x257
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x324
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ac
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x257
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x284
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Mfx_DivShLeft_s32u32u8_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x238
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x238
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x257
	.uaword	.LLST1
	.uleb128 0xf
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f7
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x337
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x11
	.uaword	0x380
	.uaword	.LLST3
	.uleb128 0x11
	.uaword	0x374
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	0x368
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x13
	.uaword	0x38e
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	0x39e
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	0x3ab
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0xee8
	.uleb128 0x11
	.uaword	0x3e0
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	0x3d4
	.uaword	.LLST6
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x13
	.uaword	0x3ec
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	0x3fc
	.uleb128 0x13
	.uaword	0x408
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	0x419
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0x1a37
	.uleb128 0x11
	.uaword	0x44e
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	0x442
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x13
	.uaword	0x45a
	.uaword	.LLST14
	.uleb128 0x13
	.uaword	0x46b
	.uaword	.LLST15
	.uleb128 0x13
	.uaword	0x47b
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	0x487
	.uaword	.LLST17
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x13
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1e1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x13
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1e1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x13
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1e1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x8
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x9
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL27
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1b7
	.byte	0x12
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x8
	.uaxword	0xffffffff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0xe
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
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
.LASF2:
	.string	"tmp_u32"
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
