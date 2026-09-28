	.file	"Mfx_DivShLeft_s16s16u8_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s16s16u8_s16,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s16s16u8_s16
	.type	Mfx_DivShLeft_s16s16u8_s16, @function
Mfx_DivShLeft_s16s16u8_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s16s16u8_s16.c"
	.loc 1 35 0
.LVL0:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
.LBB20:
.LBB21:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3599 0
	mov	%d15, 1
.LBE21:
.LBE20:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	.loc 1 35 0
	mov	%d10, %d5
.LBB52:
.LBB50:
.LBB48:
.LBB46:
.LBB43:
.LBB40:
	.loc 2 3600 0
	mov	%e4, %d4
.LVL1:
	.loc 2 3599 0
	sh	%d6, %d15, %d6
.LVL2:
	.loc 2 3600 0
	mul.u	%e0, %d6, %d4
	madd	%d1, %d1, %d6, %d5
.LVL3:
.LBB22:
.LBB23:
	.loc 2 6589 0
	mov	%d15, -1
	.loc 2 6579 0
	mov	%d11, 1
	.loc 2 6582 0
	jltz	%d1, .L37
.LVL4:
	.loc 2 6593 0
	jltz	%d10, .L38
.L34:
.LVL5:
.LBB24:
.LBB25:
	.loc 2 6484 0
	jnz	%d10, .L39
.LVL6:
.L20:
.LBE25:
.LBE24:
	.loc 2 6608 0
	jeq	%d11, -1, .L17
.LVL7:
.L15:
.LBB31:
.LBB26:
	.loc 2 6542 0
	mov	%d2, 32767
.LVL8:
.LBE26:
.LBE31:
.LBE23:
.LBE22:
.LBE40:
.LBE43:
.LBE46:
.LBE48:
.LBE50:
.LBE52:
	.loc 1 37 0
	ret
.LVL9:
.L39:
.LBB53:
.LBB51:
.LBB49:
.LBB47:
.LBB44:
.LBB41:
.LBB38:
.LBB36:
.LBB32:
.LBB27:
	.loc 2 6481 0
	mov	%e2, %d1, %d0
.LVL10:
	.loc 2 6489 0
	jltz	%d10, .L40
.LVL11:
.L6:
	.loc 2 6517 0
	div.u	%e4, %d1, %d10
.LVL12:
	.loc 2 6520 0
	mov	%d5, 0
.LVL13:
	.loc 2 6517 0
	mov	%d15, %d4
.LVL14:
	.loc 2 6523 0
	mul	%d6, %d15, %d10
	sub	%d3, %d1, %d6
	.loc 2 6524 0
	jeq	%d15, -1, .L20
	lea	%a15, 31
.LVL15:
.L12:
	.loc 2 6530 0
	dextr	%d3, %d3, %d2, 1
.LVL16:
	sh	%d2, 1
	.loc 2 6533 0
	div.u	%e6, %d3, %d10
	.loc 2 6539 0
	mov	%d7, 0
	.loc 2 6533 0
	mov	%d15, %d6
	.loc 2 6539 0
	madd.u	%e6, %e6, %d4, 2
	madd	%d7, %d7, %d5, 2
	.loc 2 6536 0
	mul	%d15, %d10
	.loc 2 6539 0
	mov	%e4, %d7, %d6
.LVL17:
	.loc 2 6536 0
	sub	%d3, %d15
	.loc 2 6542 0
	eq	%d6, %d5, 0
	mov	%d15, %d6
	and.eq	%d15, %d4, -1
	or.ne	%d15, %d5, 0
	jnz	%d15, .L20
	loop	%a15, .L12
	sel	%d4, %d6, %d4, -1
.LVL18:
.L10:
.LBE27:
.LBE32:
	.loc 2 6606 0
	jltz	%d4, .L20
	.loc 2 6612 0
	mul	%d4, %d11
.LVL19:
.LBE36:
.LBE38:
.LBE41:
.LBE44:
	.loc 2 3561 0
	mov.u	%d15, 32768
	jge	%d4, %d15, .L15
.LVL20:
	.loc 2 3565 0
	mov	%d15, -32768
	jge	%d4, %d15, .L41
.LVL21:
.L17:
.LBB45:
.LBB42:
.LBB39:
.LBB37:
.LBB33:
.LBB28:
	.loc 2 6542 0
	mov	%d2, -32768
	ret
.LVL22:
.L37:
.LBE28:
.LBE33:
	.loc 2 6584 0
	rsub	%d1
	rsub	%d0
	cadd	%d1, %d0, %d1, -1
	mov	%d15, 1
	.loc 2 6585 0
	mov	%d11, -1
.LVL23:
	.loc 2 6593 0
	jgez	%d10, .L34
.L38:
	.loc 2 6595 0
	rsub	%d10
.LVL24:
.LBB34:
.LBB29:
	.loc 2 6481 0
	mov	%e2, %d1, %d0
.LBE29:
.LBE34:
	.loc 2 6596 0
	mov	%d11, %d15
.LBB35:
.LBB30:
	.loc 2 6489 0
	jgez	%d10, .L6
.LVL25:
.L40:
	.loc 2 6496 0
	msub.u	%e2, %e0, %d10, %d1
	.loc 2 6493 0
	mul.u	%e8, %d1, 1
.LVL26:
	.loc 2 6496 0
	mov	%e6, %d3, %d2
.LVL27:
	.loc 2 6499 0
	mov	%d15, %d3
	jz	%d3, .L7
.LVL28:
.L8:
	.loc 2 6506 0
	msub.u	%e6, %e6, %d10, %d15
	.loc 2 6503 0
	madd.u	%e8, %e8, %d15, 1
.LVL29:
	.loc 2 6506 0
	mov	%e2, %d7, %d6
.LVL30:
	.loc 2 6499 0
	mov	%d15, %d7
.LVL31:
	jnz	%d7, .L8
.LVL32:
.L7:
	.loc 2 6508 0
	div.u	%e2, %d2, %d10
.LVL33:
	.loc 2 6509 0
	madd.u	%e8, %e8, %d2, 1
.LVL34:
	.loc 2 6512 0
	seln	%d4, %d9, %d8, -1
	j	.L10
.LVL35:
.L41:
	extr	%d2, %d4, 0, 16
.LVL36:
	ret
.LBE30:
.LBE35:
.LBE37:
.LBE39:
.LBE42:
.LBE45:
.LBE47:
.LBE49:
.LBE51:
.LBE53:
.LFE516:
	.size	Mfx_DivShLeft_s16s16u8_s16, .-Mfx_DivShLeft_s16s16u8_s16
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
	.uaword	0x705
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s16s16u8_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xe0
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1fd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x21c
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
	.uaword	0x24d
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
	.uaword	0x2a5
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
	.uaword	0x254
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2ff
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x265
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x265
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2de
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x332
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2ba
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2ff
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x312
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32s32u8_s32_Inl"
	.byte	0x2
	.uahalf	0xe09
	.byte	0x1
	.uaword	0x23f
	.byte	0x3
	.uaword	0x3b7
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xe09
	.uaword	0x23f
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xe09
	.uaword	0x23f
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xe09
	.uaword	0x1f0
	.uleb128 0xa
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xe0b
	.uaword	0x2cc
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0xe0c
	.uaword	0x265
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s16s16u8_s16_Inl"
	.byte	0x2
	.uahalf	0xdb0
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x40d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xdb0
	.uaword	0x20e
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xdb0
	.uaword	0x20e
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xdb0
	.uaword	0x1f0
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32s32u8_s16_Inl"
	.byte	0x2
	.uahalf	0xde2
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x473
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xde2
	.uaword	0x23f
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xde2
	.uaword	0x23f
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xde2
	.uaword	0x1f0
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x2
	.uahalf	0xde4
	.uaword	0x23f
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_s32_Inl"
	.byte	0x2
	.uahalf	0x19ae
	.byte	0x1
	.uaword	0x23f
	.byte	0x3
	.uaword	0x4f1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x19ae
	.uaword	0x2cc
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x19ae
	.uaword	0x23f
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x19b0
	.uaword	0x2ba
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x19b1
	.uaword	0x265
	.uleb128 0xa
	.string	"div_u32"
	.byte	0x2
	.uahalf	0x19b2
	.uaword	0x265
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x19b3
	.uaword	0x23f
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x265
	.byte	0x3
	.uaword	0x56a
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2ba
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x265
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x332
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ba
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x265
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x292
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_DivShLeft_s16s16u8_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x20e
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x20e
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x3b7
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x400
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x3f4
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x3e8
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0x40d
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0xdb2
	.uleb128 0xf
	.uaword	0x456
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x44a
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x43e
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x12
	.uaword	0x462
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	0x345
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.uahalf	0xde6
	.uleb128 0xf
	.uaword	0x38e
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x382
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x376
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x12
	.uaword	0x39a
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x3aa
	.uaword	.LLST14
	.uleb128 0x10
	.uaword	0x473
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x2
	.uahalf	0xe13
	.uleb128 0xf
	.uaword	0x4a8
	.uaword	.LLST15
	.uleb128 0xf
	.uaword	0x49c
	.uaword	.LLST13
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x12
	.uaword	0x4b4
	.uaword	.LLST17
	.uleb128 0x13
	.uaword	0x4c4
	.uleb128 0x12
	.uaword	0x4d0
	.uaword	.LLST18
	.uleb128 0x12
	.uaword	0x4e0
	.uaword	.LLST19
	.uleb128 0x10
	.uaword	0x4f1
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x2
	.uahalf	0x19cc
	.uleb128 0xf
	.uaword	0x526
	.uaword	.LLST18
	.uleb128 0xf
	.uaword	0x51a
	.uaword	.LLST21
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x12
	.uaword	0x532
	.uaword	.LLST22
	.uleb128 0x12
	.uaword	0x543
	.uaword	.LLST23
	.uleb128 0x12
	.uaword	0x553
	.uaword	.LLST24
	.uleb128 0x12
	.uaword	0x55f
	.uaword	.LLST25
	.byte	0
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
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
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35
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
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LFE516
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7fff
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
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
	.uaword	.LVL9
	.uaword	.LVL12
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
	.uaword	.LVL22
	.uaword	.LVL27
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
.LLST14:
	.uaword	.LVL0
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
.LLST15:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST17:
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
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL23
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
	.uaword	.LVL23
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x8
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
.LLST24:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL35
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
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
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
	.string	"shift"
.LASF3:
	.string	"tmp_u32"
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
