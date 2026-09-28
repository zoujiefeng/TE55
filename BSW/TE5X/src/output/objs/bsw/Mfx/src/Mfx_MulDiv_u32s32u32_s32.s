	.file	"Mfx_MulDiv_u32s32u32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulDiv_u32s32u32_s32,"ax",@progbits
	.align 1
	.global	Mfx_MulDiv_u32s32u32_s32
	.type	Mfx_MulDiv_u32s32u32_s32, @function
Mfx_MulDiv_u32s32u32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulDiv_u32s32u32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 1813 0
	mov	%e2, %d5
.LBE19:
.LBE18:
.LBB21:
.LBB22:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6697 0
	mov	%d10, 1
.LBE22:
.LBE21:
.LBB30:
.LBB20:
	.loc 2 1813 0
	mul.u	%e0, %d4, %d2
	madd	%d1, %d1, %d4, %d3
.LVL1:
.LBE20:
.LBE30:
.LBB31:
.LBB27:
	.loc 3 6700 0
	jltz	%d1, .L30
.L3:
.LVL2:
.LBB23:
.LBB24:
	.loc 3 6481 0
	mov	%d7, %d0
.LVL3:
	mov	%d3, %d1
	.loc 3 6484 0
	jz	%d6, .L15
	.loc 3 6489 0
	jltz	%d6, .L31
	.loc 3 6517 0
	div.u	%e4, %d1, %d6
.LVL4:
	.loc 3 6520 0
	mov	%d5, 0
.LVL5:
	.loc 3 6517 0
	mov	%d15, %d4
.LVL6:
	.loc 3 6523 0
	mul	%d2, %d15, %d6
.LVL7:
	sub	%d3, %d2
	.loc 3 6524 0
	jne	%d15, -1, .L32
.LVL8:
.L15:
.LBE24:
.LBE23:
	.loc 3 6715 0
	movh	%d15, 32768
	eq	%d2, %d10, -1
	add	%d3, %d15, -1
	sel	%d2, %d2, %d15, %d3
.LVL9:
.LBE27:
.LBE31:
.LBE17:
.LBE16:
	.loc 1 37 0
	ret
.LVL10:
.L32:
.LBB36:
.LBB34:
.LBB32:
.LBB28:
.LBB26:
.LBB25:
	.loc 3 6524 0
	lea	%a15, 31
.LVL11:
.L11:
	.loc 3 6530 0
	dextr	%d3, %d3, %d7, 1
.LVL12:
	sh	%d7, 1
	.loc 3 6533 0
	div.u	%e8, %d3, %d6
	.loc 3 6539 0
	mov	%d9, 0
	.loc 3 6533 0
	mov	%d15, %d8
	.loc 3 6539 0
	madd.u	%e8, %e8, %d4, 2
	madd	%d9, %d9, %d5, 2
	.loc 3 6536 0
	mul	%d15, %d6
	.loc 3 6539 0
	mov	%e4, %d9, %d8
.LVL13:
	.loc 3 6536 0
	sub	%d3, %d15
	.loc 3 6542 0
	eq	%d0, %d5, 0
	mov	%d15, %d0
	and.eq	%d15, %d8, -1
	or.ne	%d15, %d5, 0
	jnz	%d15, .L15
.LVL14:
	loop	%a15, .L11
	sel	%d4, %d0, %d8, -1
	j	.L9
.LVL15:
.L31:
	.loc 3 6493 0
	mul.u	%e4, %d1, 1
.LVL16:
	.loc 3 6496 0
	msub.u	%e0, %e0, %d6, %d1
.LVL17:
	.loc 3 6499 0
	mov	%d15, %d1
	jz	%d1, .L6
.L7:
.LVL18:
	.loc 3 6506 0
	msub.u	%e0, %e0, %d6, %d15
	.loc 3 6503 0
	madd.u	%e4, %e4, %d15, 1
.LVL19:
	.loc 3 6499 0
	mov	%d15, %d1
	jnz	%d1, .L7
.LVL20:
.L6:
	.loc 3 6508 0
	div.u	%e0, %d0, %d6
.LVL21:
	.loc 3 6509 0
	madd.u	%e6, %e4, %d0, 1
.LVL22:
	.loc 3 6512 0
	seln	%d4, %d7, %d6, -1
.LVL23:
.L9:
.LBE25:
.LBE26:
	.loc 3 6719 0
	mul	%d2, %d10, %d4
	.loc 3 6713 0
	jltz	%d4, .L15
.LVL24:
.LBE28:
.LBE32:
.LBE34:
.LBE36:
	.loc 1 37 0
	ret
.LVL25:
.L30:
.LBB37:
.LBB35:
.LBB33:
.LBB29:
	.loc 3 6702 0
	rsub	%d1
	rsub	%d0
	cadd	%d1, %d0, %d1, -1
	.loc 3 6703 0
	mov	%d10, -1
	j	.L3
.LBE29:
.LBE33:
.LBE35:
.LBE37:
.LFE516:
	.size	Mfx_MulDiv_u32s32u32_s32, .-Mfx_MulDiv_u32s32u32_s32
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
	.uaword	0x62c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulDiv_u32s32u32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x78
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
	.uaword	0x1df
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1cf
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
	.uaword	0x288
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x5
	.byte	0xe
	.uaword	0x1b5
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x5
	.byte	0xf
	.uaword	0x237
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x25
	.uaword	0x2e2
	.uleb128 0x5
	.string	"l"
	.byte	0x5
	.byte	0x2c
	.uaword	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x5
	.byte	0x2d
	.uaword	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x5
	.byte	0x30
	.uaword	0x2c1
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x33
	.uaword	0x315
	.uleb128 0x7
	.string	"u64"
	.byte	0x5
	.byte	0x35
	.uaword	0x29d
	.uleb128 0x7
	.string	"u64s"
	.byte	0x5
	.byte	0x36
	.uaword	0x2e2
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x5
	.byte	0x37
	.uaword	0x2f5
	.uleb128 0x8
	.string	"Mfx_Prv_Mul_u32s32_s64_Inl"
	.byte	0x2
	.uahalf	0x711
	.byte	0x1
	.uaword	0x2af
	.byte	0x3
	.uaword	0x37a
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x711
	.uaword	0x248
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x711
	.uaword	0x229
	.uleb128 0xa
	.string	"res_s64"
	.byte	0x2
	.uahalf	0x713
	.uaword	0x2af
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_MulDiv_u32s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x94a
	.byte	0x1
	.uaword	0x229
	.byte	0x3
	.uaword	0x3e7
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x94a
	.uaword	0x248
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x94a
	.uaword	0x229
	.uleb128 0xb
	.string	"z_value"
	.byte	0x2
	.uahalf	0x94a
	.uaword	0x248
	.uleb128 0xa
	.string	"dividend_s64"
	.byte	0x2
	.uahalf	0x94c
	.uaword	0x2af
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64u32_s32_Inl"
	.byte	0x3
	.uahalf	0x1a25
	.byte	0x1
	.uaword	0x229
	.byte	0x3
	.uaword	0x459
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1a25
	.uaword	0x2af
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1a25
	.uaword	0x248
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x1a27
	.uaword	0x29d
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x1a28
	.uaword	0x248
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x3
	.uahalf	0x1a29
	.uaword	0x229
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x248
	.byte	0x3
	.uaword	0x4d6
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x29d
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x248
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x3
	.uahalf	0x194b
	.uaword	0x315
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x3
	.uahalf	0x194c
	.uaword	0x29d
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x194d
	.uaword	0x248
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.uahalf	0x194e
	.uaword	0x275
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_MulDiv_u32s32u32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x229
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
	.uaword	0x248
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x229
	.uaword	.LLST1
	.uleb128 0xe
	.string	"z_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x248
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x37a
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3c1
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x3b5
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x3a9
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x3d1
	.uleb128 0x13
	.uaword	0x328
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x94e
	.uaword	0x59f
	.uleb128 0x10
	.uaword	0x35d
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x351
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x14
	.uaword	0x369
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x3e7
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.uahalf	0x950
	.uleb128 0x10
	.uaword	0x41c
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	0x410
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x14
	.uaword	0x428
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	0x438
	.uleb128 0x14
	.uaword	0x448
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	0x459
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x3
	.uahalf	0x1a37
	.uleb128 0x10
	.uaword	0x48e
	.uaword	.LLST13
	.uleb128 0x10
	.uaword	0x482
	.uaword	.LLST14
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x14
	.uaword	0x49a
	.uaword	.LLST15
	.uleb128 0x14
	.uaword	0x4ab
	.uaword	.LLST16
	.uleb128 0x14
	.uaword	0x4bb
	.uaword	.LLST17
	.uleb128 0x14
	.uaword	0x4cb
	.uaword	.LLST18
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
	.uleb128 0x1
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1df
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL23
	.uahalf	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1df
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL8
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
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL2
	.uaword	.LVL8
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
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b5
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL16
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1b5
	.byte	0x12
	.byte	0xf4
	.uleb128 0x1b5
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
.LLST17:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0xe
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL23
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
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB26
	.uaword	.LBE26
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
