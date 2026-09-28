	.file	"Mfx_DivShLeft_s32s32u8_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s32s32u8_s16,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s32s32u8_s16
	.type	Mfx_DivShLeft_s32s32u8_s16, @function
Mfx_DivShLeft_s32s32u8_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s32s32u8_s16.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d15, %d5
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3599 0
	mov	%d2, 1
	.loc 2 3600 0
	mov	%e4, %d4
	.loc 2 3599 0
	sh	%d6, %d2, %d6
.LVL1:
	.loc 2 3600 0
	mul.u	%e0, %d6, %d4
	madd	%d1, %d1, %d6, %d5
.LVL2:
.LBB16:
.LBB17:
	.loc 2 6579 0
	mov	%d9, 1
	.loc 2 6589 0
	mov	%d5, -1
.LVL3:
	.loc 2 6582 0
	jltz	%d1, .L37
.LVL4:
.L3:
	.loc 2 6593 0
	jltz	%d15, .L38
	.loc 2 6600 0
	mov	%d7, %d15
.LVL5:
.LBB18:
.LBB19:
	.loc 2 6481 0
	mov	%d8, %d0
.LVL6:
	.loc 2 6484 0
	jnz	%d15, .L7
.LVL7:
.L20:
.LBE19:
.LBE18:
	.loc 2 6608 0
	jeq	%d9, -1, .L19
.LVL8:
.L17:
	.loc 2 6596 0
	mov	%d2, 32767
.LVL9:
.LBE17:
.LBE16:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL10:
.L38:
.LBB37:
.LBB36:
.LBB34:
.LBB32:
.LBB30:
.LBB28:
	.loc 2 6595 0
	movh	%d2, 32768
	mov	%d7, %d2
	jeq	%d15, %d2, .L5
	rsub	%d7, %d15, 0
	mov	%d2, %d7
.L5:
.LVL11:
.LBB24:
.LBB20:
	.loc 2 6481 0
	mov	%d8, %d0
.LBE20:
.LBE24:
	.loc 2 6596 0
	mov	%d9, %d5
.LBB25:
.LBB21:
	.loc 2 6489 0
	jltz	%d2, .L36
.LVL12:
.L7:
	.loc 2 6517 0
	div.u	%e2, %d1, %d7
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d15, %d2
.LVL13:
	.loc 2 6523 0
	mul	%d6, %d15, %d7
.LVL14:
	sub	%d6, %d1, %d6
	.loc 2 6524 0
	jeq	%d15, -1, .L20
	lea	%a15, 31
.LVL15:
.L14:
	.loc 2 6530 0
	dextr	%d6, %d6, %d8, 1
.LVL16:
	sh	%d8, 1
	.loc 2 6533 0
	div.u	%e4, %d6, %d7
	.loc 2 6539 0
	mov	%d5, 0
	.loc 2 6533 0
	mov	%d15, %d4
	.loc 2 6539 0
	madd.u	%e4, %e4, %d2, 2
	madd	%d5, %d5, %d3, 2
	.loc 2 6536 0
	mul	%d15, %d7
	.loc 2 6539 0
	mov	%e2, %d5, %d4
.LVL17:
	.loc 2 6536 0
	sub	%d6, %d15
	.loc 2 6542 0
	eq	%d4, %d3, 0
	mov	%d15, %d4
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jnz	%d15, .L20
	loop	%a15, .L14
	sel	%d2, %d4, %d2, -1
.LVL18:
.L12:
.LBE21:
.LBE25:
	.loc 2 6606 0
	jltz	%d2, .L20
	.loc 2 6612 0
	mul	%d2, %d9
.LVL19:
.LBE28:
.LBE30:
.LBE32:
.LBE34:
	.loc 2 3561 0
	mov.u	%d15, 32768
	jge	%d2, %d15, .L17
.LVL20:
	.loc 2 3565 0
	mov	%d15, -32768
	jge	%d2, %d15, .L39
.LVL21:
.L19:
.LBB35:
.LBB33:
.LBB31:
.LBB29:
	.loc 2 6596 0
	mov	%d2, -32768
	ret
.LVL22:
.L37:
	.loc 2 6584 0
	rsub	%d1
	rsub	%d0
.LVL23:
	cadd	%d1, %d0, %d1, -1
	mov	%d5, 1
	.loc 2 6585 0
	mov	%d9, -1
	j	.L3
.LVL24:
.L36:
.LBB26:
.LBB22:
	.loc 2 6496 0
	movh	%d15, 32768
.LVL25:
	.loc 2 6493 0
	mul.u	%e2, %d1, 1
.LVL26:
	.loc 2 6496 0
	msub.u	%e0, %e0, %d15, %d1
.LVL27:
	.loc 2 6499 0
	mov	%d15, %d1
	jz	%d1, .L9
	.loc 2 6506 0
	movh	%d4, 32768
.LVL28:
.L10:
	msub.u	%e0, %e0, %d15, %d4
	.loc 2 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL29:
	.loc 2 6499 0
	mov	%d15, %d1
	jnz	%d1, .L10
.LVL30:
.L9:
	.loc 2 6508 0
	sh	%d0, %d0, -31
.LVL31:
	.loc 2 6509 0
	madd.u	%e0, %e2, %d0, 1
.LVL32:
.LBE22:
.LBE26:
	.loc 2 6596 0
	mov	%d9, %d5
.LBB27:
.LBB23:
	.loc 2 6512 0
	seln	%d2, %d1, %d0, -1
	j	.L12
.LVL33:
.L39:
	extr	%d2, %d2, 0, 16
.LVL34:
	ret
.LBE23:
.LBE27:
.LBE29:
.LBE31:
.LBE33:
.LBE35:
.LBE36:
.LBE37:
.LFE516:
	.size	Mfx_DivShLeft_s32s32u8_s16, .-Mfx_DivShLeft_s32s32u8_s16
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
	.uaword	0x685
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s32s32u8_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x88
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
	.uaword	0x3b9
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
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xe09
	.uaword	0x1f0
	.uleb128 0xb
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xe0b
	.uaword	0x2cc
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xe0c
	.uaword	0x265
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32s32u8_s16_Inl"
	.byte	0x2
	.uahalf	0xde2
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x421
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
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xde2
	.uaword	0x1f0
	.uleb128 0xb
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
	.uaword	0x49f
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
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x19b0
	.uaword	0x2ba
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x19b1
	.uaword	0x265
	.uleb128 0xb
	.string	"div_u32"
	.byte	0x2
	.uahalf	0x19b2
	.uaword	0x265
	.uleb128 0xb
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
	.uaword	0x518
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
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x332
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ba
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x265
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x292
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Mfx_DivShLeft_s32s32u8_s16"
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
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x23f
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x23f
	.uaword	.LLST1
	.uleb128 0xf
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x3b9
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x11
	.uaword	0x402
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	0x3f6
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x3ea
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x13
	.uaword	0x410
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0xde6
	.uleb128 0x11
	.uaword	0x38e
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	0x382
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x376
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.uaword	0x39c
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x3ac
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	0x421
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.uahalf	0xe13
	.uleb128 0x11
	.uaword	0x456
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	0x44a
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x13
	.uaword	0x462
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	0x472
	.uleb128 0x13
	.uaword	0x47e
	.uaword	.LLST15
	.uleb128 0x13
	.uaword	0x48e
	.uaword	.LLST16
	.uleb128 0x14
	.uaword	0x49f
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x2
	.uahalf	0x19cc
	.uleb128 0x11
	.uaword	0x4d4
	.uaword	.LLST15
	.uleb128 0x16
	.uaword	0x4c8
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x13
	.uaword	0x4e0
	.uaword	.LLST18
	.uleb128 0x13
	.uaword	0x4f1
	.uaword	.LLST19
	.uleb128 0x13
	.uaword	0x501
	.uaword	.LLST20
	.uleb128 0x13
	.uaword	0x50d
	.uaword	.LLST21
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL1
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7fff
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x12
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x12
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x12
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x8
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL1
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
.LLST12:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1b7
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x13
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1f
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL32
	.uaword	.LVL33
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
.LLST20:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL33
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
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
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
