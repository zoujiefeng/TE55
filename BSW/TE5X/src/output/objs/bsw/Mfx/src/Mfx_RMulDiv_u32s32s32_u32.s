	.file	"Mfx_RMulDiv_u32s32s32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_u32s32s32_u32,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_u32s32s32_u32
	.type	Mfx_RMulDiv_u32s32s32_u32, @function
Mfx_RMulDiv_u32s32s32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_u32s32s32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 5106 0
	sh	%d0, %d6, -31
	and	%d3, %d0, 255
	sh	%d15, %d5, -31
	ne	%d2, %d6, 0
	xor	%d15, %d3
	and	%d15, %d2
	.loc 2 5108 0
	mov	%d2, 0
	.loc 2 5106 0
	jnz	%d15, .L23
.LVL1:
	.loc 2 5116 0
	add	%d0, %d6
	sha	%d0, -1
	.loc 2 5113 0
	mov	%e8, %d5
	.loc 2 5119 0
	mov	%e0, %d0
	.loc 2 5108 0
	mov	%d2, %d15
	.loc 2 5119 0
	madd.u	%e0, %e0, %d4, %d8
	madd	%d1, %d1, %d4, %d9
.LVL2:
.LBB10:
.LBB11:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6642 0
	sh	%d4, %d1, -31
.LVL3:
	jeq	%d4, %d3, .L30
.LVL4:
.L23:
.LBE11:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL5:
.L30:
.LBB24:
.LBB22:
.LBB20:
.LBB18:
	.loc 3 6650 0
	jnz	%d4, .L31
	.loc 3 6656 0
	mov	%e10, %d1, %d0
.LVL6:
.LBB12:
.LBB13:
	.loc 3 6484 0
	mov	%d2, -1
.LBE13:
.LBE12:
	.loc 3 6666 0
	mov	%d0, %d6
.LVL7:
.LBB16:
.LBB14:
	.loc 3 6481 0
	mov	%d7, %d10
.LVL8:
	mov	%d15, %d11
	.loc 3 6484 0
	jz	%d6, .L23
.LVL9:
.L15:
	.loc 3 6489 0
	jltz	%d6, .L32
	.loc 3 6517 0
	div.u	%e4, %d15, %d0
	.loc 3 6520 0
	mov	%d5, 0
.LVL10:
	.loc 3 6517 0
	mov	%d3, %d4
.LVL11:
	.loc 3 6523 0
	mul	%d2, %d3, %d0
	sub	%d15, %d2
	.loc 3 6524 0
	mov	%d2, -1
	jeq	%d3, -1, .L23
	lea	%a15, 31
.LVL12:
.L13:
	.loc 3 6530 0
	dextr	%d15, %d15, %d7, 1
.LVL13:
	sh	%d7, 1
	.loc 3 6533 0
	div.u	%e2, %d15, %d0
	mov	%d3, %d2
.LVL14:
	.loc 3 6536 0
	mul	%d3, %d0
	sub	%d15, %d3
	.loc 3 6539 0
	mov	%d3, 0
	madd.u	%e2, %e2, %d4, 2
.LVL15:
	madd	%d3, %d3, %d5, 2
	mov	%e4, %d3, %d2
.LVL16:
	.loc 3 6542 0
	eq	%d2, %d5, 0
	mov	%d3, %d2
	and.eq	%d3, %d4, -1
	or.ne	%d3, %d5, 0
	jnz	%d3, .L20
	loop	%a15, .L13
	sel	%d2, %d2, %d4, -1
	ret
.L20:
	mov	%d2, -1
.LVL17:
.LBE14:
.LBE16:
.LBE18:
.LBE20:
.LBE22:
.LBE24:
	.loc 1 37 0
	ret
.LVL18:
.L31:
.LBB25:
.LBB23:
.LBB21:
.LBB19:
	.loc 3 6662 0
	movh	%d15, 32768
	.loc 3 6652 0
	rsub	%d11, %d1, 0
	rsub	%d10, %d0, 0
	cadd	%d11, %d0, %d11, -1
.LVL19:
	.loc 3 6662 0
	rsub	%d0, %d6, 0
.LVL20:
	ne	%d6, %d6, %d15
.LVL21:
	sel	%d6, %d6, %d0, %d15
	mov	%d0, %d6
.LVL22:
.LBB17:
.LBB15:
	.loc 3 6481 0
	mov	%d7, %d10
	mov	%d15, %d11
	j	.L15
.L32:
.LVL23:
	.loc 3 6496 0
	movh	%d2, 32768
	msub.u	%e2, %e10, %d2, %d15
	.loc 3 6493 0
	mul.u	%e4, %d15, 1
.LVL24:
	.loc 3 6496 0
	mov	%d7, %d2
	mov	%d15, %d3
.LVL25:
	.loc 3 6499 0
	jz	%d3, .L9
	.loc 3 6506 0
	movh	%d6, 32768
.LVL26:
.L10:
	msub.u	%e2, %e2, %d15, %d6
	.loc 3 6503 0
	madd.u	%e4, %e4, %d15, 1
.LVL27:
	.loc 3 6506 0
	mov	%d7, %d2
	mov	%d15, %d3
	.loc 3 6499 0
	jnz	%d3, .L10
.LVL28:
.L9:
	.loc 3 6508 0
	sh	%d7, %d7, -31
.LVL29:
	.loc 3 6509 0
	madd.u	%e4, %e4, %d7, 1
.LVL30:
	.loc 3 6512 0
	seln	%d2, %d5, %d4, -1
	ret
.LBE15:
.LBE17:
.LBE19:
.LBE21:
.LBE23:
.LBE25:
.LFE516:
	.size	Mfx_RMulDiv_u32s32s32_u32, .-Mfx_RMulDiv_u32s32s32_u32
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
	.uaword	0x63d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_u32s32s32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
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
	.uaword	0x1e0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1d0
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
	.string	"Mfx_Prv_RMulDiv_u32s32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x13e7
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x41d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x13e7
	.uaword	0x249
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x13e7
	.uaword	0x22a
	.uleb128 0xa
	.string	"z_value"
	.byte	0x2
	.uahalf	0x13e7
	.uaword	0x22a
	.uleb128 0xb
	.string	"mulres_s64"
	.byte	0x2
	.uahalf	0x13ea
	.uaword	0x316
	.uleb128 0xb
	.string	"temp_s32"
	.byte	0x2
	.uahalf	0x13eb
	.uaword	0x22a
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x13ec
	.uaword	0x249
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_u32_Inl"
	.byte	0x3
	.uahalf	0x19eb
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x48f
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x19eb
	.uaword	0x2b0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x19eb
	.uaword	0x22a
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x19ed
	.uaword	0x29e
	.uleb128 0xb
	.string	"div_u32"
	.byte	0x3
	.uahalf	0x19ee
	.uaword	0x249
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x3
	.uahalf	0x19ef
	.uaword	0x249
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x50c
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
	.string	"Mfx_RMulDiv_u32s32s32_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x249
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
	.uaword	0x249
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
	.uaword	0x22a
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x390
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3d8
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x3cc
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x3c0
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x3e8
	.uleb128 0x13
	.uaword	0x3fb
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	0x40c
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.uaword	0x41d
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x1402
	.uleb128 0x10
	.uaword	0x452
	.uaword	.LLST7
	.uleb128 0x10
	.uaword	0x446
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x13
	.uaword	0x45e
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x46e
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	0x47e
	.uleb128 0x15
	.uaword	0x48f
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x3
	.uahalf	0x1a0e
	.uleb128 0x10
	.uaword	0x4c4
	.uaword	.LLST10
	.uleb128 0x10
	.uaword	0x4b8
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x13
	.uaword	0x4d0
	.uaword	.LLST13
	.uleb128 0x13
	.uaword	0x4e1
	.uaword	.LLST14
	.uleb128 0x13
	.uaword	0x4f1
	.uaword	.LLST15
	.uleb128 0x13
	.uaword	0x501
	.uaword	.LLST16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL22
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
	.uaword	.LVL4
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
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
	.byte	0xf7
	.uleb128 0x1e0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x23
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0xf7
	.uleb128 0x1e0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x4f
	.byte	0x25
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x26
	.byte	0xf7
	.uleb128 0x1e0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
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
	.byte	0xf7
	.uleb128 0x1e0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
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
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL30
	.uaword	.LFE516
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x4
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
.LLST15:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE516
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
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB16
	.uaword	.LBE16
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
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
