	.file	"Mfx_RMulDiv_s32s32s32_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_s32s32s32_s16,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_s32s32s32_s16
	.type	Mfx_RMulDiv_s32s32s32_s16, @function
Mfx_RMulDiv_s32s32s32_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_s32s32s32_s16.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 4649 0
	mul	%e4, %d4, %d5
.LVL1:
	.loc 2 4655 0
	sh	%d3, %d6, -31
	and	%d15, %d3, 255
	sh	%d2, %d5, -31
	xor	%d2, %d15
.LVL2:
	.loc 2 4652 0
	add	%d3, %d6
	rsub	%d7, %d2, 0
	sha	%d3, -1
	xor	%d3, %d7
	add	%d2, %d3
.LVL3:
.LBB16:
.LBB17:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6589 0
	madd	%e4, %e4, %d2, 1
.LVL4:
	.loc 3 6579 0
	mov	%d8, 1
	.loc 3 6589 0
	mov	%d2, -1
.LVL5:
	.loc 3 6582 0
	jltz	%d5, .L39
.LVL6:
.L3:
	.loc 3 6593 0
	jnz	%d15, .L40
	.loc 3 6600 0
	mov	%d7, %d6
.LVL7:
.LBB18:
.LBB19:
	.loc 3 6484 0
	jnz	%d6, .L41
.LVL8:
.L21:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	mov	%d2, -32768
.LBB31:
.LBB28:
	.loc 3 6608 0
	jeq	%d8, -1, .L42
.LVL9:
.L19:
.LBB24:
.LBB20:
	.loc 3 6542 0
	mov	%d2, 32767
.LVL10:
.LBE20:
.LBE24:
.LBE28:
.LBE31:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL11:
.L41:
.LBB39:
.LBB38:
.LBB36:
.LBB34:
.LBB32:
.LBB29:
.LBB25:
.LBB21:
	.loc 3 6481 0
	mov	%d15, %d6
.LVL12:
	mov	%e0, %d4, %d5
.LVL13:
	.loc 3 6489 0
	jltz	%d15, .L43
.LVL14:
.L8:
	.loc 3 6517 0
	div.u	%e2, %d5, %d7
	.loc 3 6520 0
	mov	%d3, 0
.LVL15:
	.loc 3 6517 0
	mov	%d15, %d2
.LVL16:
	.loc 3 6523 0
	mul	%d0, %d15, %d7
	sub	%d0, %d5, %d0
	.loc 3 6524 0
	jeq	%d15, -1, .L21
	lea	%a15, 31
.LVL17:
.L14:
	.loc 3 6530 0
	dextr	%d0, %d0, %d1, 1
.LVL18:
	sh	%d1, 1
	.loc 3 6533 0
	div.u	%e4, %d0, %d7
	.loc 3 6539 0
	mov	%d5, 0
	.loc 3 6533 0
	mov	%d15, %d4
	.loc 3 6539 0
	madd.u	%e4, %e4, %d2, 2
	madd	%d5, %d5, %d3, 2
	.loc 3 6536 0
	mul	%d15, %d7
	.loc 3 6539 0
	mov	%e2, %d5, %d4
.LVL19:
	.loc 3 6536 0
	sub	%d0, %d15
	.loc 3 6542 0
	eq	%d4, %d3, 0
	mov	%d15, %d4
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jnz	%d15, .L21
	loop	%a15, .L14
	sel	%d15, %d4, %d2, -1
.LVL20:
.L12:
.LBE21:
.LBE25:
	.loc 3 6606 0
	jltz	%d15, .L21
	.loc 3 6612 0
	mul	%d15, %d8
.LVL21:
.LBE29:
.LBE32:
.LBE34:
.LBE36:
	.loc 2 4605 0
	mov.u	%d2, 32768
	jge	%d15, %d2, .L19
.LVL22:
	mov	%d2, -32768
	jlt	%d15, %d2, 0f
	extr	%d2, %d15, 0, 16
	0:
	ret
.LVL23:
.L40:
.LBB37:
.LBB35:
.LBB33:
.LBB30:
	.loc 3 6595 0
	movh	%d15, 32768
	mov	%d7, %d15
.LVL24:
	jeq	%d6, %d15, .L5
	rsub	%d7, %d6, 0
	mov	%d15, %d7
.L5:
.LVL25:
.LBB26:
.LBB22:
	.loc 3 6481 0
	mov	%e0, %d4, %d5
.LBE22:
.LBE26:
	.loc 3 6596 0
	mov	%d8, %d2
.LBB27:
.LBB23:
	.loc 3 6489 0
	jgez	%d15, .L8
.LVL26:
.L43:
	.loc 3 6496 0
	movh	%d15, 32768
	.loc 3 6493 0
	mul.u	%e6, %d5, 1
.LVL27:
	.loc 3 6496 0
	msub.u	%e4, %e4, %d15, %d5
.LVL28:
	mov	%e0, %d4, %d5
	.loc 3 6499 0
	mov	%d15, %d5
	jz	%d5, .L9
	.loc 3 6506 0
	movh	%d2, 32768
.L10:
.LVL29:
	msub.u	%e4, %e4, %d15, %d2
	.loc 3 6503 0
	madd.u	%e6, %e6, %d15, 1
.LVL30:
	.loc 3 6506 0
	mov	%e0, %d4, %d5
.LVL31:
	.loc 3 6499 0
	mov	%d15, %d5
	jnz	%d5, .L10
.LVL32:
.L9:
	.loc 3 6508 0
	sh	%d1, %d1, -31
.LVL33:
	.loc 3 6509 0
	madd.u	%e6, %e6, %d1, 1
.LVL34:
	.loc 3 6512 0
	seln	%d15, %d7, %d6, -1
	j	.L12
.LVL35:
.L39:
.LBE23:
.LBE27:
	.loc 3 6584 0
	rsub	%d5
.LVL36:
	rsub	%d4
	cadd	%d5, %d4, %d5, -1
.LVL37:
	mov	%d2, 1
	.loc 3 6585 0
	mov	%d8, -1
	j	.L3
.LVL38:
.L42:
	ret
.LBE30:
.LBE33:
.LBE35:
.LBE37:
.LBE38:
.LBE39:
.LFE516:
	.size	Mfx_RMulDiv_s32s32s32_s16, .-Mfx_RMulDiv_s32s32s32_s16
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
	.file 5 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6e5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_s32s32s32_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x90
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uaword	0x205
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
	.byte	0x4
	.byte	0x60
	.uaword	0x1d0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x6a
	.uaword	0x255
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.byte	0x4
	.byte	0x8a
	.uaword	0x297
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x5
	.byte	0xe
	.uaword	0x1b6
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x5
	.byte	0xf
	.uaword	0x236
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x12
	.uaword	0x2f1
	.uleb128 0x5
	.string	"l"
	.byte	0x5
	.byte	0x18
	.uaword	0x247
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x19
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x5
	.byte	0x1b
	.uaword	0x2d0
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x1e
	.uaword	0x324
	.uleb128 0x7
	.string	"s64"
	.byte	0x5
	.byte	0x20
	.uaword	0x2be
	.uleb128 0x7
	.string	"s64s"
	.byte	0x5
	.byte	0x21
	.uaword	0x2f1
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x5
	.byte	0x22
	.uaword	0x304
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x25
	.uaword	0x358
	.uleb128 0x5
	.string	"l"
	.byte	0x5
	.byte	0x2c
	.uaword	0x247
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x2d
	.uaword	0x247
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x5
	.byte	0x30
	.uaword	0x337
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x33
	.uaword	0x38b
	.uleb128 0x7
	.string	"u64"
	.byte	0x5
	.byte	0x35
	.uaword	0x2ac
	.uleb128 0x7
	.string	"u64s"
	.byte	0x5
	.byte	0x36
	.uaword	0x358
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x5
	.byte	0x37
	.uaword	0x36b
	.uleb128 0x8
	.string	"Mfx_Prv_RMulDiv_s32s32s32_s16_Inl"
	.byte	0x2
	.uahalf	0x11f6
	.byte	0x1
	.uaword	0x1f7
	.byte	0x3
	.uaword	0x403
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x11f6
	.uaword	0x228
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x11f6
	.uaword	0x228
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x11f6
	.uaword	0x228
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x11f8
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_RMulDiv_s32s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x1222
	.byte	0x1
	.uaword	0x228
	.byte	0x3
	.uaword	0x47c
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1222
	.uaword	0x228
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1222
	.uaword	0x228
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1222
	.uaword	0x228
	.uleb128 0xa
	.string	"mulres_s64"
	.byte	0x2
	.uahalf	0x1225
	.uaword	0x324
	.uleb128 0xa
	.string	"temp_s32"
	.byte	0x2
	.uahalf	0x1226
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_s32_Inl"
	.byte	0x3
	.uahalf	0x19ae
	.byte	0x1
	.uaword	0x228
	.byte	0x3
	.uaword	0x4fe
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x2be
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x228
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x19b0
	.uaword	0x2ac
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x19b1
	.uaword	0x247
	.uleb128 0xa
	.string	"div_u32"
	.byte	0x3
	.uahalf	0x19b2
	.uaword	0x247
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x3
	.uahalf	0x19b3
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x247
	.byte	0x3
	.uaword	0x57b
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x2ac
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x247
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x3
	.uahalf	0x194b
	.uaword	0x38b
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x3
	.uahalf	0x194c
	.uaword	0x2ac
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x194d
	.uaword	0x247
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.uahalf	0x194e
	.uaword	0x284
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_RMulDiv_s32s32s32_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f7
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x228
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x228
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x228
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	0x39e
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xe
	.uaword	0x3e6
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x3da
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	0x3ce
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x10
	.uaword	0x3f2
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	0x403
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x11fa
	.uleb128 0xe
	.uaword	0x44b
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x43f
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	0x433
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.uaword	0x457
	.uleb128 0x10
	.uaword	0x46a
	.uaword	.LLST10
	.uleb128 0x11
	.uaword	0x47c
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.uahalf	0x1238
	.uleb128 0xe
	.uaword	0x4b1
	.uaword	.LLST11
	.uleb128 0xe
	.uaword	0x4a5
	.uaword	.LLST12
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x10
	.uaword	0x4bd
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x4cd
	.uleb128 0x10
	.uaword	0x4dd
	.uaword	.LLST14
	.uleb128 0x10
	.uaword	0x4ed
	.uaword	.LLST15
	.uleb128 0x11
	.uaword	0x4fe
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x3
	.uahalf	0x19cc
	.uleb128 0xe
	.uaword	0x533
	.uaword	.LLST14
	.uleb128 0xe
	.uaword	0x527
	.uaword	.LLST17
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x10
	.uaword	0x53f
	.uaword	.LLST18
	.uleb128 0x10
	.uaword	0x550
	.uaword	.LLST19
	.uleb128 0x10
	.uaword	0x560
	.uaword	.LLST20
	.uleb128 0x10
	.uaword	0x570
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL37
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
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL38
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7fff
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE516
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL38
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x28
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x3b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x28
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x29
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE516
	.uahalf	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL25
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL38
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL11
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL27
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1b6
	.byte	0x12
	.byte	0xf4
	.uleb128 0x1b6
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
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
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
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
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
.LASF0:
	.string	"x_value"
.LASF1:
	.string	"y_value"
.LASF2:
	.string	"z_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
