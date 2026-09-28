	.file	"Mfx_RMulDiv_u32u32s32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_u32u32s32_u32,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_u32u32s32_u32
	.type	Mfx_RMulDiv_u32u32s32_u32, @function
Mfx_RMulDiv_u32u32s32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_u32u32s32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 5236 0
	mov	%d2, 0
	.loc 2 5234 0
	jltz	%d6, .L2
.LVL1:
.LBB16:
.LBB17:
	.loc 2 5349 0
	sh	%d2, %d6, -1
.LVL2:
	.loc 2 5352 0
	mov	%d3, 0
	madd.u	%e4, %e2, %d4, %d5
.LVL3:
.LBB18:
.LBB19:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6484 0
	mov	%d2, -1
.LVL4:
	jz	%d6, .L2
	.loc 3 6517 0
	div.u	%e0, %d5, %d6
	.loc 3 6520 0
	mov	%d1, 0
	.loc 3 6517 0
	mov	%d15, %d0
.LVL5:
	.loc 3 6523 0
	mul	%d2, %d15, %d6
	sub	%d5, %d2
.LVL6:
	.loc 3 6524 0
	mov	%d2, -1
	jeq	%d15, -1, .L2
	lea	%a15, 31
.LVL7:
.L5:
	.loc 3 6530 0
	dextr	%d5, %d5, %d4, 1
.LVL8:
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
.LVL9:
	.loc 3 6536 0
	sub	%d5, %d15
	.loc 3 6542 0
	eq	%d2, %d1, 0
	mov	%d15, %d2
	and.eq	%d15, %d0, -1
	or.ne	%d15, %d1, 0
	jnz	%d15, .L10
	loop	%a15, .L5
	sel	%d2, %d2, %d0, -1
	ret
.L10:
	mov	%d2, -1
.LVL10:
.L2:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
.LBE15:
.LBE14:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_RMulDiv_u32u32s32_u32, .-Mfx_RMulDiv_u32u32s32_u32
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
	.uaword	0x595
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_u32u32s32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.string	"Mfx_Prv_RMulDiv_u32u32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x146d
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0x3f5
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x146d
	.uaword	0x249
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x146d
	.uaword	0x249
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x146d
	.uaword	0x223
	.uleb128 0xa
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x146f
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
	.string	"Mfx_RMulDiv_u32u32s32_u32"
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
	.uaword	0x249
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x223
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.uaword	0x390
	.uaword	.LBB14
	.uaword	.LBE14
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
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x12
	.uaword	0x3e4
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.uaword	0x317
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x2
	.uahalf	0x1478
	.uleb128 0x10
	.uaword	0x35f
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x353
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	0x347
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x14
	.uaword	0x36b
	.uleb128 0x15
	.uaword	0x37e
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x3f5
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x2
	.uahalf	0x14ea
	.uleb128 0x10
	.uaword	0x42a
	.uaword	.LLST8
	.uleb128 0x10
	.uaword	0x41e
	.uaword	.LLST9
	.uleb128 0x11
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x15
	.uaword	0x436
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	0x447
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	0x457
	.uleb128 0x15
	.uaword	0x467
	.uaword	.LLST12
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
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
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
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
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1b
	.byte	0x74
	.sleb128 0
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
	.uaword	.LVL3
	.uaword	.LVL4
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
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1e
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
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1f
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
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL8
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
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL2
	.uaword	.LVL7
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
