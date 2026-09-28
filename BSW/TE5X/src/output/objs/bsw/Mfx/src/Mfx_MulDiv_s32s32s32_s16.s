	.file	"Mfx_MulDiv_s32s32s32_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulDiv_s32s32s32_s16,"ax",@progbits
	.align 1
	.global	Mfx_MulDiv_s32s32s32_s16
	.type	Mfx_MulDiv_s32s32s32_s16, @function
Mfx_MulDiv_s32s32s32_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulDiv_s32s32s32_s16.c"
	.loc 1 35 0
.LVL0:
.LBB29:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 1801 0
	mul	%e4, %d4, %d5
.LVL1:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 6589 0
	mov	%d8, -1
	.loc 3 6579 0
	mov	%d1, 1
	.loc 3 6582 0
	jltz	%d5, .L37
.LVL2:
.L3:
	.loc 3 6593 0
	jltz	%d6, .L38
	.loc 3 6600 0
	mov	%d7, %d6
.LVL3:
.LBB36:
.LBB37:
	.loc 3 6481 0
	mov	%d0, %d4
.LVL4:
	.loc 3 6484 0
	jnz	%d7, .L7
.LVL5:
.L19:
.LBE37:
.LBE36:
.LBE35:
.LBE34:
.LBE31:
.LBE30:
.LBB55:
.LBB56:
	.file 4 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
	.loc 4 48 0
	mov	%d2, -32768
.LBE56:
.LBE55:
.LBB59:
.LBB52:
.LBB49:
.LBB46:
	.loc 3 6608 0
	jeq	%d1, -1, .L17
.LVL6:
.L18:
.LBE46:
.LBE49:
.LBE52:
.LBE59:
.LBB60:
.LBB57:
	.loc 4 53 0
	mov	%d2, 32767
	ret
.LVL7:
.L38:
.LBE57:
.LBE60:
.LBB61:
.LBB53:
.LBB50:
.LBB47:
	.loc 3 6595 0
	movh	%d15, 32768
	mov	%d7, %d15
	jeq	%d6, %d15, .L5
	rsub	%d7, %d6, 0
	mov	%d15, %d7
.L5:
.LVL8:
.LBB42:
.LBB38:
	.loc 3 6481 0
	mov	%d0, %d4
.LBE38:
.LBE42:
	.loc 3 6596 0
	mov	%d1, %d8
.LBB43:
.LBB39:
	.loc 3 6489 0
	jltz	%d15, .L36
.LVL9:
.L7:
	.loc 3 6517 0
	div.u	%e2, %d5, %d7
	.loc 3 6520 0
	mov	%d3, 0
	.loc 3 6517 0
	mov	%d15, %d2
.LVL10:
	.loc 3 6523 0
	mul	%d6, %d15, %d7
.LVL11:
	sub	%d6, %d5, %d6
	.loc 3 6524 0
	jeq	%d15, -1, .L19
	lea	%a15, 31
.LVL12:
.L14:
	.loc 3 6530 0
	dextr	%d6, %d6, %d0, 1
.LVL13:
	sh	%d0, 1
	.loc 3 6533 0
	div.u	%e4, %d6, %d7
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
.LVL14:
	.loc 3 6536 0
	sub	%d6, %d15
	.loc 3 6542 0
	eq	%d4, %d3, 0
	mov	%d15, %d4
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jnz	%d15, .L19
	loop	%a15, .L14
	sel	%d4, %d4, %d2, -1
.LVL15:
.L12:
.LBE39:
.LBE43:
	.loc 3 6606 0
	jltz	%d4, .L19
	.loc 3 6612 0
	mul	%d4, %d1
.LVL16:
.LBE47:
.LBE50:
.LBE53:
.LBE61:
.LBB62:
.LBB58:
	.loc 4 40 0
	mov.u	%d15, 32768
	jge	%d4, %d15, .L18
	.loc 4 44 0
	mov	%d2, -32768
	jlt	%d4, %d2, 0f
	extr	%d2, %d4, 0, 16
	0:
.LVL17:
.L17:
.LBE58:
.LBE62:
.LBE29:
	.loc 1 37 0
	ret
.LVL18:
.L37:
.LBB64:
.LBB63:
.LBB54:
.LBB51:
.LBB48:
	.loc 3 6584 0
	rsub	%d5
.LVL19:
	rsub	%d4
.LVL20:
	cadd	%d5, %d4, %d5, -1
.LVL21:
	mov	%d8, 1
	.loc 3 6585 0
	mov	%d1, -1
	j	.L3
.LVL22:
.L36:
.LBB44:
.LBB40:
	.loc 3 6496 0
	movh	%d15, 32768
	.loc 3 6493 0
	mul.u	%e2, %d5, 1
.LVL23:
	.loc 3 6496 0
	msub.u	%e4, %e4, %d15, %d5
.LVL24:
	.loc 3 6499 0
	mov	%d15, %d5
	jz	%d5, .L9
	.loc 3 6506 0
	movh	%d6, 32768
.LVL25:
.L10:
	msub.u	%e4, %e4, %d15, %d6
	.loc 3 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL26:
	.loc 3 6499 0
	mov	%d15, %d5
	jnz	%d5, .L10
.LVL27:
.L9:
	.loc 3 6508 0
	sh	%d4, %d4, -31
.LVL28:
	.loc 3 6509 0
	madd.u	%e2, %e2, %d4, 1
.LVL29:
.LBE40:
.LBE44:
	.loc 3 6596 0
	mov	%d1, %d8
.LVL30:
.LBB45:
.LBB41:
	.loc 3 6512 0
	seln	%d4, %d3, %d2, -1
	j	.L12
.LBE41:
.LBE45:
.LBE48:
.LBE51:
.LBE54:
.LBE63:
.LBE64:
.LFE516:
	.size	Mfx_MulDiv_s32s32s32_s16, .-Mfx_MulDiv_s32s32s32_s16
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
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x734
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulDiv_s32s32s32_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xb8
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
	.byte	0x5
	.byte	0x56
	.uaword	0x204
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
	.byte	0x5
	.byte	0x60
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x5
	.byte	0x6a
	.uaword	0x254
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
	.byte	0x5
	.byte	0x8a
	.uaword	0x296
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x6
	.byte	0xe
	.uaword	0x1b5
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x6
	.byte	0xf
	.uaword	0x235
	.uleb128 0x4
	.byte	0x8
	.byte	0x6
	.byte	0x25
	.uaword	0x2f0
	.uleb128 0x5
	.string	"l"
	.byte	0x6
	.byte	0x2c
	.uaword	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x6
	.byte	0x2d
	.uaword	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x6
	.byte	0x30
	.uaword	0x2cf
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x33
	.uaword	0x323
	.uleb128 0x7
	.string	"u64"
	.byte	0x6
	.byte	0x35
	.uaword	0x2ab
	.uleb128 0x7
	.string	"u64s"
	.byte	0x6
	.byte	0x36
	.uaword	0x2f0
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x6
	.byte	0x37
	.uaword	0x303
	.uleb128 0x8
	.string	"Mfx_Prv_Mul_s32s32_s64_Inl"
	.byte	0x2
	.uahalf	0x705
	.byte	0x1
	.uaword	0x2bd
	.byte	0x3
	.uaword	0x388
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x705
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x705
	.uaword	0x227
	.uleb128 0xa
	.string	"res_s64"
	.byte	0x2
	.uahalf	0x707
	.uaword	0x2bd
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_MulDiv_s32s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x828
	.byte	0x1
	.uaword	0x227
	.byte	0x3
	.uaword	0x3f1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x828
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x828
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x828
	.uaword	0x227
	.uleb128 0xa
	.string	"dividend_s64"
	.byte	0x2
	.uahalf	0x82a
	.uaword	0x2bd
	.byte	0
	.uleb128 0xb
	.string	"Mfx_Prv_Sat_s32_s16_Inl"
	.byte	0x4
	.byte	0x24
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x431
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x4
	.byte	0x24
	.uaword	0x227
	.uleb128 0xd
	.string	"res_s16"
	.byte	0x4
	.byte	0x26
	.uaword	0x1f6
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_MulDiv_s32s32s32_s16_Inl"
	.byte	0x2
	.uahalf	0x80d
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x485
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x80d
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x80d
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x80d
	.uaword	0x227
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_s32_Inl"
	.byte	0x3
	.uahalf	0x19ae
	.byte	0x1
	.uaword	0x227
	.byte	0x3
	.uaword	0x507
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x2bd
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x19ae
	.uaword	0x227
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x3
	.uahalf	0x19b0
	.uaword	0x2ab
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x19b1
	.uaword	0x246
	.uleb128 0xa
	.string	"div_u32"
	.byte	0x3
	.uahalf	0x19b2
	.uaword	0x246
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x3
	.uahalf	0x19b3
	.uaword	0x227
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x3
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x246
	.byte	0x3
	.uaword	0x584
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x2ab
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1948
	.uaword	0x246
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x3
	.uahalf	0x194b
	.uaword	0x323
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x3
	.uahalf	0x194c
	.uaword	0x2ab
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x194d
	.uaword	0x246
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.uahalf	0x194e
	.uaword	0x283
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"Mfx_MulDiv_s32s32s32_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f6
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x227
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x227
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x227
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x431
	.uaword	.LBB29
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x11
	.uaword	0x478
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	0x46c
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x460
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	0x388
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x80f
	.uaword	0x710
	.uleb128 0x11
	.uaword	0x3cf
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	0x3c3
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x3b7
	.uaword	.LLST0
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x14
	.uaword	0x3db
	.uleb128 0x15
	.uaword	0x336
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x2
	.uahalf	0x82c
	.uaword	0x67c
	.uleb128 0x11
	.uaword	0x36b
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x35f
	.uaword	.LLST0
	.uleb128 0x16
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x17
	.uaword	0x377
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x485
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0x82e
	.uleb128 0x11
	.uaword	0x4ba
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	0x4ae
	.uaword	.LLST11
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x17
	.uaword	0x4c6
	.uaword	.LLST14
	.uleb128 0x14
	.uaword	0x4d6
	.uleb128 0x17
	.uaword	0x4e6
	.uaword	.LLST15
	.uleb128 0x17
	.uaword	0x4f6
	.uaword	.LLST16
	.uleb128 0x18
	.uaword	0x507
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x3
	.uahalf	0x19cc
	.uleb128 0x11
	.uaword	0x53c
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	0x530
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x17
	.uaword	0x548
	.uaword	.LLST18
	.uleb128 0x17
	.uaword	0x559
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	0x569
	.uaword	.LLST20
	.uleb128 0x17
	.uaword	0x579
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x3f1
	.uaword	.LBB55
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x2
	.uahalf	0x80f
	.uleb128 0x19
	.uaword	0x416
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x17
	.uaword	0x421
	.uaword	.LLST22
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL21
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL2
	.uaword	.LVL18
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
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE516
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
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b5
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x15
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x15
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1cf
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL9
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL30
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b5
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL29
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL29
	.uaword	.LFE516
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
.LLST20:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
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
.LLST22:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB62
	.uaword	.LBE62
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
