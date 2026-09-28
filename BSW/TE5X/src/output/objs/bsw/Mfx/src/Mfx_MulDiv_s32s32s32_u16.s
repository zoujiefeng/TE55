	.file	"Mfx_MulDiv_s32s32s32_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulDiv_s32s32s32_u16,"ax",@progbits
	.align 1
	.global	Mfx_MulDiv_s32s32s32_u16
	.type	Mfx_MulDiv_s32s32s32_u16, @function
Mfx_MulDiv_s32s32s32_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulDiv_s32s32s32_u16.c"
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
	mov.u	%d2, 65535
	mov	%d7, -1
	.loc 3 6579 0
	mov	%d9, 1
	.loc 3 6582 0
	jltz	%d5, .L35
.LVL2:
.L3:
	.loc 3 6593 0
	jltz	%d6, .L36
	.loc 3 6600 0
	mov	%d1, %d6
.LVL3:
.LBB36:
.LBB37:
	.loc 3 6481 0
	mov	%d8, %d4
.LVL4:
	.loc 3 6484 0
	jnz	%d6, .L7
.LVL5:
.L27:
.LBE37:
.LBE36:
.LBE35:
.LBE34:
.LBE31:
.LBE30:
.LBE29:
	.loc 1 37 0
	ret
.LVL6:
.L36:
.LBB56:
.LBB52:
.LBB50:
.LBB48:
.LBB46:
	.loc 3 6595 0
	movh	%d15, 32768
	mov	%d1, %d15
	jeq	%d6, %d15, .L5
	rsub	%d1, %d6, 0
	mov	%d15, %d1
.L5:
.LVL7:
.LBB42:
.LBB38:
	.loc 3 6481 0
	mov	%d8, %d4
.LBE38:
.LBE42:
	.loc 3 6596 0
	mov	%d9, %d7
.LBB43:
.LBB39:
	.loc 3 6489 0
	jltz	%d15, .L34
.LVL8:
.L7:
	.loc 3 6517 0
	div.u	%e6, %d5, %d1
.LVL9:
	.loc 3 6520 0
	mov	%d7, 0
	.loc 3 6517 0
	mov	%d15, %d6
.LVL10:
	.loc 3 6523 0
	mul	%d0, %d15, %d1
	sub	%d0, %d5, %d0
	.loc 3 6524 0
	jne	%d15, -1, .L37
.LVL11:
.L26:
	ne	%d2, %d9, -1
	rsub	%d2
	extr.u	%d2, %d2, 0, 16
	ret
.LVL12:
.L37:
	lea	%a15, 31
.LVL13:
.L14:
	.loc 3 6530 0
	dextr	%d0, %d0, %d8, 1
.LVL14:
	sh	%d8, 1
	.loc 3 6533 0
	div.u	%e2, %d0, %d1
	.loc 3 6539 0
	mov	%d3, 0
	.loc 3 6533 0
	mov	%d15, %d2
	.loc 3 6539 0
	madd.u	%e2, %e2, %d6, 2
	madd	%d3, %d3, %d7, 2
	.loc 3 6536 0
	mul	%d15, %d1
	.loc 3 6539 0
	mov	%e6, %d3, %d2
.LVL15:
	.loc 3 6536 0
	sub	%d0, %d15
	.loc 3 6542 0
	eq	%d3, %d7, 0
	mov	%d15, %d3
	and.eq	%d15, %d6, -1
	or.ne	%d15, %d7, 0
	jnz	%d15, .L26
.LVL16:
	loop	%a15, .L14
	sel	%d3, %d3, %d6, -1
.LVL17:
.L12:
.LBE39:
.LBE43:
	.loc 3 6606 0
	jltz	%d3, .L26
	.loc 3 6612 0
	mul	%d6, %d9, %d3
.LVL18:
.LBE46:
.LBE48:
.LBE50:
.LBE52:
.LBB53:
.LBB54:
	.file 4 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
	.loc 4 121 0
	movh	%d15, 1
	.loc 4 134 0
	mov.u	%d2, 65535
	.loc 4 121 0
	jge	%d6, %d15, .L27
	.loc 4 125 0
	extr.u	%d15, %d6, 0, 16
	ge	%d6, %d6, 0
.LVL19:
	sel	%d2, %d6, %d15, 0
.LBE54:
.LBE53:
.LBE56:
	.loc 1 37 0
	ret
.LVL20:
.L35:
.LBB57:
.LBB55:
.LBB51:
.LBB49:
.LBB47:
	.loc 3 6584 0
	rsub	%d5
.LVL21:
	rsub	%d4
.LVL22:
	cadd	%d5, %d4, %d5, -1
.LVL23:
	mov	%d2, 0
	mov	%d7, 1
	.loc 3 6585 0
	mov	%d9, -1
	j	.L3
.LVL24:
.L34:
.LBB44:
.LBB40:
	.loc 3 6496 0
	movh	%d15, 32768
	.loc 3 6493 0
	mul.u	%e2, %d5, 1
.LVL25:
	.loc 3 6496 0
	msub.u	%e4, %e4, %d15, %d5
.LVL26:
	.loc 3 6499 0
	mov	%d15, %d5
	jz	%d5, .L9
	.loc 3 6506 0
	movh	%d6, 32768
.LVL27:
.L10:
	msub.u	%e4, %e4, %d15, %d6
	.loc 3 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL28:
	.loc 3 6499 0
	mov	%d15, %d5
	jnz	%d5, .L10
.LVL29:
.L9:
	.loc 3 6508 0
	sh	%d4, %d4, -31
.LVL30:
	.loc 3 6509 0
	madd.u	%e2, %e2, %d4, 1
.LVL31:
.LBE40:
.LBE44:
	.loc 3 6596 0
	mov	%d9, %d7
.LBB45:
.LBB41:
	.loc 3 6512 0
	seln	%d3, %d3, %d2, -1
	j	.L12
.LBE41:
.LBE45:
.LBE47:
.LBE49:
.LBE51:
.LBE55:
.LBE57:
.LFE516:
	.size	Mfx_MulDiv_s32s32s32_u16, .-Mfx_MulDiv_s32s32s32_u16
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
	.uaword	0x736
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulDiv_s32s32s32_u16.c"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x211
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
	.string	"Mfx_Prv_Sat_s32_u16_Inl"
	.byte	0x4
	.byte	0x75
	.byte	0x1
	.uaword	0x203
	.byte	0x3
	.uaword	0x431
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x4
	.byte	0x75
	.uaword	0x227
	.uleb128 0xd
	.string	"res_u16"
	.byte	0x4
	.byte	0x77
	.uaword	0x203
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_MulDiv_s32s32s32_u16_Inl"
	.byte	0x2
	.uahalf	0x847
	.byte	0x1
	.uaword	0x203
	.byte	0x3
	.uaword	0x485
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x847
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x847
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x847
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
	.string	"Mfx_MulDiv_s32s32s32_u16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x203
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
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x849
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
	.uaword	.Ldebug_ranges0+0x20
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
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x3
	.uahalf	0x19cc
	.uleb128 0x11
	.uaword	0x53c
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	0x530
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x60
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
	.uleb128 0x1a
	.uaword	0x3f1
	.uaword	.LBB53
	.uaword	.LBE53
	.byte	0x2
	.uahalf	0x849
	.uleb128 0x19
	.uaword	0x416
	.uleb128 0x16
	.uaword	.LBB54
	.uaword	.LBE54
	.uleb128 0x1b
	.uaword	0x421
	.byte	0x1
	.byte	0x52
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL23
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
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL20
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
	.uaword	.LVL20
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
	.uaword	.LVL20
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
	.uaword	.LVL23
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
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL20
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
.LLST14:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b5
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
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
	.uaword	.LVL23
	.uaword	.LVL24
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
	.uaword	.LVL7
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1b5
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b5
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL31
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
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL30
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
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
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
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
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
