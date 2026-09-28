	.file	"Mfx_RMulDiv_u32s32s32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_u32s32s32_s32,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_u32s32s32_s32
	.type	Mfx_RMulDiv_u32s32s32_s32, @function
Mfx_RMulDiv_u32s32s32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_u32s32s32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 4795 0
	mov	%e0, %d5
.LBB15:
.LBB16:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6579 0
	mov	%d10, 1
.LBE16:
.LBE15:
	.loc 2 4795 0
	mul.u	%e2, %d4, %d0
	madd	%d3, %d3, %d4, %d1
.LVL1:
	.loc 2 4801 0
	sh	%d4, %d6, -31
.LVL2:
	and	%d15, %d4, 255
	sh	%d5, %d3, -31
.LVL3:
	xor	%d5, %d15
.LVL4:
	.loc 2 4798 0
	add	%d4, %d6
	rsub	%d0, %d5, 0
.LVL5:
	sha	%d4, -1
	xor	%d4, %d0
	add	%d4, %d5
.LVL6:
.LBB28:
.LBB25:
	.loc 3 6589 0
	madd	%e0, %e2, %d4, 1
.LVL7:
	mov	%d2, -1
.LVL8:
	.loc 3 6582 0
	jltz	%d1, .L34
.L3:
.LVL9:
	.loc 3 6593 0
	jnz	%d15, .L35
	.loc 3 6600 0
	mov	%d9, %d6
.LVL10:
.LBB17:
.LBB18:
	.loc 3 6484 0
	jnz	%d6, .L36
.LVL11:
.L18:
.LBE18:
.LBE17:
	.loc 3 6608 0
	movh	%d15, 32768
	eq	%d2, %d10, -1
	add	%d3, %d15, -1
	sel	%d2, %d2, %d15, %d3
.LVL12:
.LBE25:
.LBE28:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL13:
.L36:
.LBB35:
.LBB33:
.LBB31:
.LBB29:
.LBB26:
.LBB22:
.LBB19:
	.loc 3 6481 0
	mov	%d15, %d6
	mov	%d8, %d0
.LVL14:
	.loc 3 6489 0
	jltz	%d15, .L37
.LVL15:
.L8:
	.loc 3 6517 0
	div.u	%e4, %d1, %d9
	.loc 3 6520 0
	mov	%d5, 0
.LVL16:
	.loc 3 6517 0
	mov	%d15, %d4
.LVL17:
	.loc 3 6523 0
	mul	%d3, %d15, %d9
.LVL18:
	sub	%d3, %d1, %d3
	.loc 3 6524 0
	jeq	%d15, -1, .L18
	lea	%a15, 31
.LVL19:
.L14:
	.loc 3 6530 0
	dextr	%d3, %d3, %d8, 1
.LVL20:
	sh	%d8, 1
	.loc 3 6533 0
	div.u	%e6, %d3, %d9
	.loc 3 6539 0
	mov	%d7, 0
	.loc 3 6533 0
	mov	%d15, %d6
	.loc 3 6539 0
	madd.u	%e6, %e6, %d4, 2
	madd	%d7, %d7, %d5, 2
	.loc 3 6536 0
	mul	%d15, %d9
	.loc 3 6539 0
	mov	%e4, %d7, %d6
.LVL21:
	.loc 3 6536 0
	sub	%d3, %d15
	.loc 3 6542 0
	eq	%d6, %d5, 0
	mov	%d15, %d6
	and.eq	%d15, %d4, -1
	or.ne	%d15, %d5, 0
	jnz	%d15, .L18
	loop	%a15, .L14
	sel	%d4, %d6, %d4, -1
.LVL22:
	j	.L12
.LVL23:
.L35:
.LBE19:
.LBE22:
	.loc 3 6595 0
	movh	%d15, 32768
	mov	%d9, %d15
	jeq	%d6, %d15, .L5
	rsub	%d9, %d6, 0
	mov	%d15, %d9
.L5:
.LVL24:
.LBB23:
.LBB20:
	.loc 3 6481 0
	mov	%d8, %d0
.LBE20:
.LBE23:
	.loc 3 6596 0
	mov	%d10, %d2
.LBB24:
.LBB21:
	.loc 3 6489 0
	jgez	%d15, .L8
.LVL25:
.L37:
	.loc 3 6496 0
	movh	%d4, 32768
	msub.u	%e4, %e0, %d4, %d1
	.loc 3 6493 0
	mul.u	%e6, %d1, 1
.LVL26:
	.loc 3 6496 0
	mov	%d8, %d4
	.loc 3 6499 0
	mov	%d15, %d5
	jz	%d5, .L9
	.loc 3 6506 0
	movh	%d2, 32768
.LVL27:
.L10:
	msub.u	%e4, %e4, %d15, %d2
	.loc 3 6503 0
	madd.u	%e6, %e6, %d15, 1
.LVL28:
	.loc 3 6506 0
	mov	%d8, %d4
	.loc 3 6499 0
	mov	%d15, %d5
	jnz	%d5, .L10
.LVL29:
.L9:
	.loc 3 6508 0
	sh	%d8, %d8, -31
.LVL30:
	.loc 3 6509 0
	madd.u	%e6, %e6, %d8, 1
.LVL31:
	.loc 3 6512 0
	seln	%d4, %d7, %d6, -1
.LVL32:
.L12:
.LBE21:
.LBE24:
	.loc 3 6612 0
	mul	%d2, %d10, %d4
	.loc 3 6606 0
	jltz	%d4, .L18
.LVL33:
.LBE26:
.LBE29:
.LBE31:
.LBE33:
.LBE35:
	.loc 1 37 0
	ret
.LVL34:
.L34:
.LBB36:
.LBB34:
.LBB32:
.LBB30:
.LBB27:
	.loc 3 6584 0
	rsub	%d1
	rsub	%d0
	cadd	%d1, %d0, %d1, -1
	mov	%d2, 1
	.loc 3 6585 0
	mov	%d10, -1
	j	.L3
.LBE27:
.LBE30:
.LBE32:
.LBE34:
.LBE36:
.LFE516:
	.size	Mfx_RMulDiv_u32s32s32_s32, .-Mfx_RMulDiv_u32s32s32_s32
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
	.uaword	0x6b8
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_u32s32s32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x70
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
	.uaword	0x247
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
	.uaword	0x289
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
	.uaword	0x228
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x12
	.uaword	0x2e3
	.uleb128 0x5
	.string	"l"
	.byte	0x5
	.byte	0x18
	.uaword	0x239
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x19
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x5
	.byte	0x1b
	.uaword	0x2c2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x1e
	.uaword	0x316
	.uleb128 0x7
	.string	"s64"
	.byte	0x5
	.byte	0x20
	.uaword	0x2b0
	.uleb128 0x7
	.string	"s64s"
	.byte	0x5
	.byte	0x21
	.uaword	0x2e3
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x5
	.byte	0x22
	.uaword	0x2f6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x25
	.uaword	0x34a
	.uleb128 0x5
	.string	"l"
	.byte	0x5
	.byte	0x2c
	.uaword	0x239
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x2d
	.uaword	0x239
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x5
	.byte	0x30
	.uaword	0x329
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x33
	.uaword	0x37d
	.uleb128 0x7
	.string	"u64"
	.byte	0x5
	.byte	0x35
	.uaword	0x29e
	.uleb128 0x7
	.string	"u64s"
	.byte	0x5
	.byte	0x36
	.uaword	0x34a
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x5
	.byte	0x37
	.uaword	0x35d
	.uleb128 0x8
	.string	"Mfx_Prv_RMulDiv_u32s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x13c9
	.byte	0x1
	.uaword	0x21a
	.byte	0x3
	.uaword	0x3e5
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x13c9
	.uaword	0x239
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x13c9
	.uaword	0x21a
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x13c9
	.uaword	0x21a
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_RMulDiv_s32u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x12b4
	.byte	0x1
	.uaword	0x21a
	.byte	0x3
	.uaword	0x45e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x12b4
	.uaword	0x21a
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x12b4
	.uaword	0x239
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x12b4
	.uaword	0x21a
	.uleb128 0xa
	.string	"mulres_s64"
	.byte	0x2
	.uahalf	0x12b7
	.uaword	0x316
	.uleb128 0xa
	.string	"temp_s32"
	.byte	0x2
	.uahalf	0x12b8
	.uaword	0x21a
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_s32_Inl"
	.byte	0x3
	.uahalf	0x19ae
	.byte	0x1
	.uaword	0x21a
	.byte	0x3
	.uaword	0x4e0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x2b0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x21a
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x19b0
	.uaword	0x29e
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x19b1
	.uaword	0x239
	.uleb128 0xa
	.string	"div_u32"
	.byte	0x3
	.uahalf	0x19b2
	.uaword	0x239
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x3
	.uahalf	0x19b3
	.uaword	0x21a
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x239
	.byte	0x3
	.uaword	0x55d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x29e
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x239
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x3
	.uahalf	0x194b
	.uaword	0x37d
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x3
	.uahalf	0x194c
	.uaword	0x29e
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x194d
	.uaword	0x239
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.uahalf	0x194e
	.uaword	0x276
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_RMulDiv_u32s32s32_s32"
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
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x239
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x21a
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x21a
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	0x390
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xe
	.uaword	0x3d8
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x3cc
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	0x3c0
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	0x3e5
	.uaword	.LBB13
	.uaword	.Ldebug_ranges0+0
	.byte	0x2
	.uahalf	0x13cb
	.uleb128 0xe
	.uaword	0x42d
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x421
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	0x415
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x11
	.uaword	0x439
	.uleb128 0x12
	.uaword	0x44c
	.uaword	.LLST9
	.uleb128 0xf
	.uaword	0x45e
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x12ca
	.uleb128 0xe
	.uaword	0x493
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	0x487
	.uaword	.LLST11
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x12
	.uaword	0x49f
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	0x4af
	.uleb128 0x12
	.uaword	0x4bf
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x4cf
	.uaword	.LLST14
	.uleb128 0xf
	.uaword	0x4e0
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x3
	.uahalf	0x19cc
	.uleb128 0xe
	.uaword	0x515
	.uaword	.LLST13
	.uleb128 0xe
	.uaword	0x509
	.uaword	.LLST16
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x12
	.uaword	0x521
	.uaword	.LLST17
	.uleb128 0x12
	.uaword	0x532
	.uaword	.LLST18
	.uleb128 0x12
	.uaword	0x542
	.uaword	.LLST19
	.uleb128 0x12
	.uaword	0x552
	.uaword	.LLST20
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
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
	.uahalf	0x1
	.byte	0x50
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL26
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL11
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x73
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x1f
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE516
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL26
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL24
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL10
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL24
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL31
	.uaword	.LVL32
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
.LLST19:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL32
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
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
.LASF2:
	.string	"z_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
