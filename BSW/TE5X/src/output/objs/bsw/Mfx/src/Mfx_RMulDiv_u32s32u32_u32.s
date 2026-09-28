	.file	"Mfx_RMulDiv_u32s32u32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_u32s32u32_u32,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_u32s32u32_u32
	.type	Mfx_RMulDiv_u32s32u32_u32, @function
Mfx_RMulDiv_u32s32u32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_u32s32u32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 5192 0
	ne	%d15, %d4, 0
	and.t	%d15, %d5,31, %d15,0
	.loc 2 5194 0
	mov	%d2, 0
	.loc 2 5192 0
	jz	%d15, .L23
.LVL1:
.L2:
.LBE11:
.LBE10:
	.loc 1 37 0
	ret
.LVL2:
.L23:
.LBB17:
.LBB16:
.LBB12:
.LBB13:
	.loc 2 5349 0
	sh	%d2, %d6, -1
.LVL3:
	.loc 2 5352 0
	mov	%d3, 0
	madd.u	%e4, %e2, %d5, %d4
.LVL4:
.LBB14:
.LBB15:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6484 0
	mov	%d2, -1
.LVL5:
	jz	%d6, .L2
	.loc 3 6489 0
	jltz	%d6, .L24
	.loc 3 6517 0
	div.u	%e0, %d5, %d6
	.loc 3 6520 0
	mov	%d1, 0
	.loc 3 6517 0
	mov	%d15, %d0
.LVL6:
	.loc 3 6523 0
	mul	%d2, %d15, %d6
	sub	%d5, %d2
.LVL7:
	.loc 3 6524 0
	mov	%d2, -1
	jeq	%d15, -1, .L2
	lea	%a15, 31
.LVL8:
.L9:
	.loc 3 6530 0
	dextr	%d5, %d5, %d4, 1
.LVL9:
	sh	%d4, 1
	.loc 3 6533 0
	div.u	%e2, %d5, %d6
	.loc 3 6539 0
	mov	%d3, 0
	.loc 3 6533 0
	mov	%d15, %d2
	.loc 3 6539 0
	madd.u	%e2, %e2, %d0, 2
	madd	%d3, %d3, %d1, 2
	.loc 3 6536 0
	mul	%d15, %d6
	.loc 3 6539 0
	mov	%e0, %d3, %d2
.LVL10:
	.loc 3 6536 0
	sub	%d5, %d15
	.loc 3 6542 0
	eq	%d2, %d1, 0
	mov	%d15, %d2
	and.eq	%d15, %d0, -1
	or.ne	%d15, %d1, 0
	jnz	%d15, .L14
	loop	%a15, .L9
	sel	%d2, %d2, %d0, -1
	ret
.LVL11:
.L24:
	.loc 3 6493 0
	mul.u	%e2, %d5, 1
.LVL12:
	.loc 3 6496 0
	msub.u	%e4, %e4, %d6, %d5
.LVL13:
	.loc 3 6499 0
	mov	%d15, %d5
	jz	%d5, .L5
.L6:
.LVL14:
	.loc 3 6506 0
	msub.u	%e4, %e4, %d6, %d15
	.loc 3 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL15:
	.loc 3 6499 0
	mov	%d15, %d5
	jnz	%d5, .L6
.LVL16:
.L5:
	.loc 3 6508 0
	div.u	%e4, %d4, %d6
.LVL17:
	.loc 3 6509 0
	madd.u	%e2, %e2, %d4, 1
.LVL18:
	.loc 3 6512 0
	seln	%d2, %d3, %d2, -1
.LVL19:
	ret
.LVL20:
.L14:
	.loc 3 6542 0
	mov	%d2, -1
.LVL21:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
.LBE16:
.LBE17:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_RMulDiv_u32s32u32_u32, .-Mfx_RMulDiv_u32s32u32_u32
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
	.uaword	0x58f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_u32s32u32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.byte	0x4
	.byte	0x60
	.uaword	0x231
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x25
	.uaword	0x2d1
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
	.uaword	0x2b0
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x33
	.uaword	0x304
	.uleb128 0x7
	.string	"u64"
	.byte	0x5
	.byte	0x35
	.uaword	0x29e
	.uleb128 0x7
	.string	"u64s"
	.byte	0x5
	.byte	0x36
	.uaword	0x2d1
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x5
	.byte	0x37
	.uaword	0x2e4
	.uleb128 0x8
	.string	"Mfx_Prv_RMulDiv_u32u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x14dc
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x390
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x14dc
	.uaword	0x249
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x14dc
	.uaword	0x249
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x14dc
	.uaword	0x249
	.uleb128 0xa
	.string	"mulres_u64"
	.byte	0x2
	.uahalf	0x14df
	.uaword	0x304
	.uleb128 0xa
	.string	"temp_u32"
	.byte	0x2
	.uahalf	0x14e0
	.uaword	0x249
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_RMulDiv_u32s32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x143f
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x3f5
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x143f
	.uaword	0x249
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x143f
	.uaword	0x223
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x143f
	.uaword	0x249
	.uleb128 0xa
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x1441
	.uaword	0x249
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x472
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
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x3
	.uahalf	0x194b
	.uaword	0x304
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x3
	.uahalf	0x194c
	.uaword	0x29e
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x194d
	.uaword	0x249
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.uahalf	0x194e
	.uaword	0x276
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_RMulDiv_u32s32u32_u32"
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
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x249
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x223
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x249
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.uaword	0x390
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x3d8
	.byte	0x1
	.byte	0x56
	.uleb128 0x10
	.uaword	0x3cc
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x3c0
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x3e4
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	0x317
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x2
	.uahalf	0x144e
	.uleb128 0xf
	.uaword	0x35f
	.byte	0x1
	.byte	0x56
	.uleb128 0x10
	.uaword	0x353
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	0x347
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x15
	.uaword	0x36b
	.uleb128 0x12
	.uaword	0x37e
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x3f5
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x2
	.uahalf	0x14ea
	.uleb128 0xf
	.uaword	0x42a
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.uaword	0x41e
	.uleb128 0x14
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x12
	.uaword	0x436
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x447
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	0x457
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	0x467
	.uaword	.LLST11
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
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
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LFE516
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x2
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
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL20
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
.LASF0:
	.string	"x_value"
.LASF1:
	.string	"y_value"
.LASF2:
	.string	"z_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
