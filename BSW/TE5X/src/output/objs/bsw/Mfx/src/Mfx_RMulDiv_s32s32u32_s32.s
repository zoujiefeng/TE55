	.file	"Mfx_RMulDiv_s32s32u32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_s32s32u32_s32,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_s32s32u32_s32
	.type	Mfx_RMulDiv_s32s32u32_s32, @function
Mfx_RMulDiv_s32s32u32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_s32s32u32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 4744 0
	mul	%e4, %d4, %d5
.LVL1:
	.loc 2 4747 0
	sh	%d3, %d6, -1
.LVL2:
.LBB10:
.LBB11:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6697 0
	mov	%d8, 1
	sh	%d15, %d5, -31
.LVL3:
	rsub	%d2, %d15, 0
	xor	%d2, %d3
	add	%d15, %d2
.LVL4:
	.loc 3 6707 0
	madd	%e4, %e4, %d15, 1
.LVL5:
	.loc 3 6700 0
	jltz	%d5, .L30
.LVL6:
.L3:
.LBB12:
.LBB13:
	.loc 3 6481 0
	mov	%d7, %d4
.LVL7:
	mov	%d3, %d5
.LVL8:
	.loc 3 6484 0
	jz	%d6, .L15
	.loc 3 6489 0
	jltz	%d6, .L31
	.loc 3 6517 0
	div.u	%e4, %d3, %d6
.LVL9:
	.loc 3 6520 0
	mov	%d5, 0
	.loc 3 6517 0
	mov	%d15, %d4
.LVL10:
	.loc 3 6523 0
	mul	%d2, %d15, %d6
	sub	%d3, %d2
	.loc 3 6524 0
	jne	%d15, -1, .L32
.LVL11:
.L15:
.LBE13:
.LBE12:
	.loc 3 6715 0
	movh	%d15, 32768
	eq	%d2, %d8, -1
	add	%d3, %d15, -1
	sel	%d2, %d2, %d15, %d3
.LVL12:
.LBE11:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL13:
.L32:
.LBB22:
.LBB20:
.LBB18:
.LBB16:
.LBB15:
.LBB14:
	.loc 3 6524 0
	lea	%a15, 31
.LVL14:
.L11:
	.loc 3 6530 0
	dextr	%d3, %d3, %d7, 1
.LVL15:
	sh	%d7, 1
	.loc 3 6533 0
	div.u	%e0, %d3, %d6
	.loc 3 6539 0
	mov	%d1, 0
	.loc 3 6533 0
	mov	%d15, %d0
	.loc 3 6539 0
	madd.u	%e0, %e0, %d4, 2
	madd	%d1, %d1, %d5, 2
	.loc 3 6536 0
	mul	%d15, %d6
	.loc 3 6539 0
	mov	%e4, %d1, %d0
.LVL16:
	.loc 3 6536 0
	sub	%d3, %d15
	.loc 3 6542 0
	eq	%d0, %d5, 0
	mov	%d15, %d0
	and.eq	%d15, %d4, -1
	or.ne	%d15, %d5, 0
	jnz	%d15, .L15
	loop	%a15, .L11
	sel	%d4, %d0, %d4, -1
.LVL17:
	j	.L9
.LVL18:
.L31:
	.loc 3 6493 0
	mul.u	%e0, %d5, 1
.LVL19:
	.loc 3 6496 0
	msub.u	%e4, %e4, %d6, %d5
.LVL20:
	.loc 3 6499 0
	mov	%d15, %d5
.LVL21:
	jz	%d5, .L6
.L7:
.LVL22:
	.loc 3 6506 0
	msub.u	%e4, %e4, %d6, %d15
	.loc 3 6503 0
	madd.u	%e0, %e0, %d15, 1
.LVL23:
	.loc 3 6499 0
	mov	%d15, %d5
	jnz	%d5, .L7
.LVL24:
.L6:
	.loc 3 6508 0
	div.u	%e4, %d4, %d6
.LVL25:
	.loc 3 6509 0
	madd.u	%e0, %e0, %d4, 1
.LVL26:
	.loc 3 6512 0
	seln	%d4, %d1, %d0, -1
.LVL27:
.L9:
.LBE14:
.LBE15:
	.loc 3 6719 0
	mul	%d2, %d8, %d4
	.loc 3 6713 0
	jltz	%d4, .L15
.LVL28:
.LBE16:
.LBE18:
.LBE20:
.LBE22:
	.loc 1 37 0
	ret
.LVL29:
.L30:
.LBB23:
.LBB21:
.LBB19:
.LBB17:
	.loc 3 6702 0
	rsub	%d5
.LVL30:
	rsub	%d4
	cadd	%d5, %d4, %d5, -1
.LVL31:
	.loc 3 6703 0
	mov	%d8, -1
	j	.L3
.LBE17:
.LBE19:
.LBE21:
.LBE23:
.LFE516:
	.size	Mfx_RMulDiv_s32s32u32_s32, .-Mfx_RMulDiv_s32s32u32_s32
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
	.uaword	0x63a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_s32s32u32_s32.c"
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
	.byte	0x5
	.string	"int"
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
	.uaword	0x1d7
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
	.uaword	0x238
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x12
	.uaword	0x2e3
	.uleb128 0x5
	.string	"l"
	.byte	0x5
	.byte	0x18
	.uaword	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x19
	.uaword	0x22a
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
	.uaword	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x2d
	.uaword	0x249
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
	.string	"Mfx_Prv_RMulDiv_s32s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x1280
	.byte	0x1
	.uaword	0x22a
	.byte	0x3
	.uaword	0x41e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1280
	.uaword	0x22a
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1280
	.uaword	0x22a
	.uleb128 0xa
	.string	"z_value"
	.byte	0x2
	.uahalf	0x1280
	.uaword	0x249
	.uleb128 0xb
	.string	"mulres_s64"
	.byte	0x2
	.uahalf	0x1283
	.uaword	0x316
	.uleb128 0xb
	.string	"temp_s32"
	.byte	0x2
	.uahalf	0x1284
	.uaword	0x22a
	.uleb128 0xb
	.string	"temp_u32"
	.byte	0x2
	.uahalf	0x1285
	.uaword	0x249
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64u32_s32_Inl"
	.byte	0x3
	.uahalf	0x1a25
	.byte	0x1
	.uaword	0x22a
	.byte	0x3
	.uaword	0x490
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1a25
	.uaword	0x2b0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1a25
	.uaword	0x249
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x1a27
	.uaword	0x29e
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x1a28
	.uaword	0x249
	.uleb128 0xb
	.string	"res_s32"
	.byte	0x3
	.uahalf	0x1a29
	.uaword	0x22a
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x50d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x29e
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x249
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x3
	.uahalf	0x194b
	.uaword	0x37d
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x3
	.uahalf	0x194c
	.uaword	0x29e
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x194d
	.uaword	0x249
	.uleb128 0xb
	.string	"i"
	.byte	0x3
	.uahalf	0x194e
	.uaword	0x276
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_RMulDiv_s32s32u32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x22a
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
	.uaword	0x22a
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x22a
	.uaword	.LLST1
	.uleb128 0xe
	.string	"z_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x249
	.byte	0x1
	.byte	0x56
	.uleb128 0xf
	.uaword	0x390
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3d8
	.byte	0x1
	.byte	0x56
	.uleb128 0x11
	.uaword	0x3cc
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x3c0
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x13
	.uaword	0x3e8
	.uleb128 0x14
	.uaword	0x3fb
	.uaword	.LLST4
	.uleb128 0x14
	.uaword	0x40c
	.uaword	.LLST5
	.uleb128 0x15
	.uaword	0x41e
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x1298
	.uleb128 0x10
	.uaword	0x453
	.byte	0x1
	.byte	0x56
	.uleb128 0x11
	.uaword	0x447
	.uaword	.LLST6
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x14
	.uaword	0x45f
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x46f
	.uleb128 0x14
	.uaword	0x47f
	.uaword	.LLST8
	.uleb128 0x15
	.uaword	0x490
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x3
	.uahalf	0x1a37
	.uleb128 0x11
	.uaword	0x4c5
	.uaword	.LLST9
	.uleb128 0x11
	.uaword	0x4b9
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x14
	.uaword	0x4d1
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	0x4e2
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	0x4f2
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	0x502
	.uaword	.LLST14
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x1f
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL18
	.uahalf	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL8
	.uaword	.LVL29
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xe
	.byte	0x7f
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
	.uaword	.LVL5
	.uaword	.LVL6
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1d
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL18
	.uahalf	0x2b
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
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1d
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x2b
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
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1d
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE516
	.uahalf	0x1d
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL6
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL29
	.uaword	.LVL30
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1d
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE516
	.uahalf	0x1d
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
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0
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
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d7
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d7
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL27
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
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB15
	.uaword	.LBE15
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
