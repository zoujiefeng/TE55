	.file	"Mfx_MulDiv_u32s32s32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulDiv_u32s32s32_s32,"ax",@progbits
	.align 1
	.global	Mfx_MulDiv_u32s32s32_s32
	.type	Mfx_MulDiv_u32s32s32_s32, @function
Mfx_MulDiv_u32s32s32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulDiv_u32s32s32_s32.c"
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
	.loc 3 6579 0
	mov	%d10, 1
.LBE22:
.LBE21:
.LBB35:
.LBB20:
	.loc 2 1813 0
	mul.u	%e0, %d4, %d2
	madd	%d1, %d1, %d4, %d3
.LVL1:
.LBE20:
.LBE35:
.LBB36:
.LBB33:
	.loc 3 6589 0
	mov	%d5, -1
.LVL2:
	.loc 3 6582 0
	jltz	%d1, .L35
.LVL3:
.L3:
	.loc 3 6593 0
	jltz	%d6, .L36
	.loc 3 6600 0
	mov	%d8, %d6
.LVL4:
.LBB23:
.LBB24:
	.loc 3 6481 0
	mov	%d9, %d0
.LVL5:
	.loc 3 6484 0
	jnz	%d6, .L7
.LVL6:
.L18:
.LBE24:
.LBE23:
	.loc 3 6608 0
	movh	%d15, 32768
	eq	%d2, %d10, -1
	add	%d3, %d15, -1
	sel	%d2, %d2, %d15, %d3
.LVL7:
.LBE33:
.LBE36:
.LBE17:
.LBE16:
	.loc 1 37 0
	ret
.LVL8:
.L36:
.LBB39:
.LBB38:
.LBB37:
.LBB34:
	.loc 3 6595 0
	movh	%d15, 32768
	mov	%d8, %d15
	jeq	%d6, %d15, .L5
	rsub	%d8, %d6, 0
	mov	%d15, %d8
.L5:
.LVL9:
.LBB29:
.LBB25:
	.loc 3 6481 0
	mov	%d9, %d0
.LBE25:
.LBE29:
	.loc 3 6596 0
	mov	%d10, %d5
.LBB30:
.LBB26:
	.loc 3 6489 0
	jltz	%d15, .L33
.LVL10:
.L7:
	.loc 3 6517 0
	div.u	%e4, %d1, %d8
.LVL11:
	.loc 3 6520 0
	mov	%d5, 0
	.loc 3 6517 0
	mov	%d15, %d4
.LVL12:
	.loc 3 6523 0
	mul	%d3, %d15, %d8
	sub	%d3, %d1, %d3
	.loc 3 6524 0
	jeq	%d15, -1, .L18
	lea	%a15, 31
.LVL13:
.L14:
	.loc 3 6530 0
	dextr	%d3, %d3, %d9, 1
.LVL14:
	sh	%d9, 1
	.loc 3 6533 0
	div.u	%e6, %d3, %d8
	.loc 3 6539 0
	mov	%d7, 0
	.loc 3 6533 0
	mov	%d15, %d6
	.loc 3 6539 0
	madd.u	%e6, %e6, %d4, 2
	madd	%d7, %d7, %d5, 2
	.loc 3 6536 0
	mul	%d15, %d8
	.loc 3 6539 0
	mov	%e4, %d7, %d6
.LVL15:
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
.LVL16:
	j	.L12
.LVL17:
.L35:
.LBE26:
.LBE30:
	.loc 3 6584 0
	rsub	%d1
	rsub	%d0
.LVL18:
	cadd	%d1, %d0, %d1, -1
	mov	%d5, 1
	.loc 3 6585 0
	mov	%d10, -1
	j	.L3
.LVL19:
.L33:
.LBB31:
.LBB27:
	.loc 3 6496 0
	movh	%d15, 32768
	.loc 3 6493 0
	mul.u	%e2, %d1, 1
.LVL20:
	.loc 3 6496 0
	msub.u	%e0, %e0, %d15, %d1
.LVL21:
	.loc 3 6499 0
	mov	%d15, %d1
	jz	%d1, .L9
	.loc 3 6506 0
	movh	%d4, 32768
.LVL22:
.L10:
	msub.u	%e0, %e0, %d15, %d4
	.loc 3 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL23:
	.loc 3 6499 0
	mov	%d15, %d1
	jnz	%d1, .L10
.LVL24:
.L9:
	.loc 3 6508 0
	sh	%d0, %d0, -31
.LVL25:
	.loc 3 6509 0
	madd.u	%e2, %e2, %d0, 1
.LVL26:
.LBE27:
.LBE31:
	.loc 3 6596 0
	mov	%d10, %d5
.LBB32:
.LBB28:
	.loc 3 6512 0
	seln	%d4, %d3, %d2, -1
.LVL27:
.L12:
.LBE28:
.LBE32:
	.loc 3 6612 0
	mul	%d2, %d10, %d4
	.loc 3 6606 0
	jltz	%d4, .L18
.LVL28:
.LBE34:
.LBE37:
.LBE38:
.LBE39:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_MulDiv_u32s32s32_s32, .-Mfx_MulDiv_u32s32s32_s32
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
	.uaword	0x641
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulDiv_u32s32s32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x80
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
	.uaword	0x230
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
	.uaword	0x222
	.uleb128 0xa
	.string	"res_s64"
	.byte	0x2
	.uahalf	0x713
	.uaword	0x2af
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_MulDiv_u32s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x916
	.byte	0x1
	.uaword	0x222
	.byte	0x3
	.uaword	0x3e7
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x916
	.uaword	0x248
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x916
	.uaword	0x222
	.uleb128 0xb
	.string	"z_value"
	.byte	0x2
	.uahalf	0x916
	.uaword	0x222
	.uleb128 0xa
	.string	"dividend_s64"
	.byte	0x2
	.uahalf	0x918
	.uaword	0x2af
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_s32_Inl"
	.byte	0x3
	.uahalf	0x19ae
	.byte	0x1
	.uaword	0x222
	.byte	0x3
	.uaword	0x469
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x2af
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x222
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x19b0
	.uaword	0x29d
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x19b1
	.uaword	0x248
	.uleb128 0xa
	.string	"div_u32"
	.byte	0x3
	.uahalf	0x19b2
	.uaword	0x248
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x3
	.uahalf	0x19b3
	.uaword	0x222
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x248
	.byte	0x3
	.uaword	0x4e6
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
	.string	"Mfx_MulDiv_u32s32s32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x222
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
	.uaword	0x222
	.uaword	.LLST1
	.uleb128 0xe
	.string	"z_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x222
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
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x91a
	.uaword	0x5af
	.uleb128 0x10
	.uaword	0x35d
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x351
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x14
	.uaword	0x369
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x3e7
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0x91c
	.uleb128 0x10
	.uaword	0x41c
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	0x410
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x14
	.uaword	0x428
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	0x438
	.uleb128 0x14
	.uaword	0x448
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	0x458
	.uaword	.LLST13
	.uleb128 0x15
	.uaword	0x469
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x3
	.uahalf	0x19cc
	.uleb128 0x10
	.uaword	0x49e
	.uaword	.LLST12
	.uleb128 0x16
	.uaword	0x492
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x14
	.uaword	0x4aa
	.uaword	.LLST15
	.uleb128 0x14
	.uaword	0x4bb
	.uaword	.LLST16
	.uleb128 0x14
	.uaword	0x4cb
	.uaword	.LLST17
	.uleb128 0x14
	.uaword	0x4db
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL27
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL27
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1b5
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x13
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1f
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL28
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST16:
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
	.uleb128 0x1b5
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b5
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
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x2
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
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
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
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
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
