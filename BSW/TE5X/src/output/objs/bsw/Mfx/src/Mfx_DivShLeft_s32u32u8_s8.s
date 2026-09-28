	.file	"Mfx_DivShLeft_s32u32u8_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s32u32u8_s8,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s32u32u8_s8
	.type	Mfx_DivShLeft_s32u32u8_s8, @function
Mfx_DivShLeft_s32u32u8_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s32u32u8_s8.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d7, %d5
.LVL1:
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3812 0
	mov	%d15, 1
	.loc 2 3813 0
	mov	%e4, %d4
	.loc 2 3812 0
	sh	%d6, %d15, %d6
.LVL2:
	.loc 2 3813 0
	mul.u	%e0, %d6, %d4
	madd	%d1, %d1, %d6, %d5
.LVL3:
.LBB16:
.LBB17:
	.loc 2 6697 0
	mov	%d9, 1
	.loc 2 6700 0
	jltz	%d1, .L32
.L3:
.LVL4:
.LBB18:
.LBB19:
	.loc 2 6481 0
	mov	%d8, %d0
.LVL5:
	mov	%d6, %d1
.LVL6:
	.loc 2 6484 0
	jz	%d7, .L17
	.loc 2 6489 0
	jltz	%d7, .L33
	.loc 2 6517 0
	div.u	%e2, %d1, %d7
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d15, %d2
.LVL7:
	.loc 2 6523 0
	mul	%d4, %d15, %d7
.LVL8:
	sub	%d6, %d4
	.loc 2 6524 0
	jeq	%d15, -1, .L17
	lea	%a15, 31
.LVL9:
.L11:
	.loc 2 6530 0
	dextr	%d6, %d6, %d8, 1
.LVL10:
	sh	%d8, 1
	.loc 2 6533 0
	div.u	%e4, %d6, %d7
	.loc 2 6539 0
	mov	%d5, 0
	.loc 2 6533 0
	mov	%d15, %d4
	.loc 2 6539 0
	madd.u	%e4, %e4, %d2, 2
	madd	%d5, %d5, %d3, 2
	.loc 2 6536 0
	mul	%d15, %d7
	.loc 2 6539 0
	mov	%e2, %d5, %d4
.LVL11:
	.loc 2 6536 0
	sub	%d6, %d15
	.loc 2 6542 0
	eq	%d4, %d3, 0
	mov	%d15, %d4
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jz	%d15, .L34
.LVL12:
.L17:
.LBE19:
.LBE18:
	.loc 2 6715 0
	jeq	%d9, -1, .L16
.LVL13:
.L14:
.LBB22:
.LBB20:
	.loc 2 6542 0
	mov	%d2, 127
.LVL14:
.LBE20:
.LBE22:
.LBE17:
.LBE16:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL15:
.L34:
	loop	%a15, .L11
	sel	%d4, %d4, %d2, -1
.LVL16:
.L9:
.LBB33:
.LBB32:
.LBB30:
.LBB28:
.LBB26:
.LBB24:
	.loc 2 6713 0
	jltz	%d4, .L17
	.loc 2 6719 0
	mul	%d2, %d9, %d4
.LVL17:
.LBE24:
.LBE26:
.LBE28:
.LBE30:
	.loc 2 3846 0
	ge	%d15, %d2, 128
	jnz	%d15, .L14
.LVL18:
	.loc 2 3850 0
	lt	%d15, %d2, -128
	jz	%d15, .L35
.LVL19:
.L16:
.LBB31:
.LBB29:
.LBB27:
.LBB25:
.LBB23:
.LBB21:
	.loc 2 6542 0
	mov	%d2, -128
	ret
.LVL20:
.L33:
	.loc 2 6493 0
	mul.u	%e4, %d1, 1
.LVL21:
	.loc 2 6496 0
	msub.u	%e0, %e0, %d7, %d1
.LVL22:
	.loc 2 6499 0
	mov	%d15, %d1
	jz	%d1, .L6
.L7:
.LVL23:
	.loc 2 6506 0
	msub.u	%e0, %e0, %d7, %d15
	.loc 2 6503 0
	madd.u	%e4, %e4, %d15, 1
.LVL24:
	.loc 2 6499 0
	mov	%d15, %d1
	jnz	%d1, .L7
.LVL25:
.L6:
	.loc 2 6508 0
	div.u	%e0, %d0, %d7
.LVL26:
	.loc 2 6509 0
	madd.u	%e0, %e4, %d0, 1
.LVL27:
	.loc 2 6512 0
	seln	%d4, %d1, %d0, -1
	j	.L9
.LVL28:
.L32:
.LBE21:
.LBE23:
	.loc 2 6702 0
	rsub	%d1
	rsub	%d0
	cadd	%d1, %d0, %d1, -1
	.loc 2 6703 0
	mov	%d9, -1
	j	.L3
.LVL29:
.L35:
	extr	%d2, %d2, 0, 8
.LVL30:
	ret
.LBE25:
.LBE27:
.LBE29:
.LBE31:
.LBE32:
.LBE33:
.LFE516:
	.size	Mfx_DivShLeft_s32u32u8_s8, .-Mfx_DivShLeft_s32u32u8_s8
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
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x66c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s32u32u8_s8.c"
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
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1ed
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x209
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
	.byte	0x3
	.byte	0x60
	.uaword	0x24b
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x8a
	.uaword	0x2a3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b6
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x252
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2fd
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2dc
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x330
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2b8
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2fd
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x310
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32u32u8_s32_Inl"
	.byte	0x2
	.uahalf	0xede
	.byte	0x1
	.uaword	0x23d
	.byte	0x3
	.uaword	0x3b7
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xede
	.uaword	0x23d
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xede
	.uaword	0x263
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xede
	.uaword	0x1fc
	.uleb128 0xb
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xee0
	.uaword	0x2ca
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xee1
	.uaword	0x263
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32u32u8_s8_Inl"
	.byte	0x2
	.uahalf	0xeff
	.byte	0x1
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x41e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xeff
	.uaword	0x23d
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xeff
	.uaword	0x263
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xeff
	.uaword	0x1fc
	.uleb128 0xb
	.string	"res_s32"
	.byte	0x2
	.uahalf	0xf01
	.uaword	0x23d
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64u32_s32_Inl"
	.byte	0x2
	.uahalf	0x1a25
	.byte	0x1
	.uaword	0x23d
	.byte	0x3
	.uaword	0x48c
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1a25
	.uaword	0x2ca
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1a25
	.uaword	0x263
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x1a27
	.uaword	0x2b8
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1a28
	.uaword	0x263
	.uleb128 0xb
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1a29
	.uaword	0x23d
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x505
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2b8
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x263
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x330
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2b8
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x263
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x290
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Mfx_DivShLeft_s32u32u8_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1e0
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x23d
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x263
	.uaword	.LLST1
	.uleb128 0xf
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1fc
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x3b7
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x11
	.uaword	0x3ff
	.uaword	.LLST3
	.uleb128 0x11
	.uaword	0x3f3
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	0x3e7
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x13
	.uaword	0x40d
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	0x343
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0xf03
	.uleb128 0x11
	.uaword	0x38c
	.uaword	.LLST3
	.uleb128 0x11
	.uaword	0x380
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	0x374
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.uaword	0x39a
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x3aa
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	0x41e
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.uahalf	0xee8
	.uleb128 0x11
	.uaword	0x453
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	0x447
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x13
	.uaword	0x45f
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	0x46f
	.uleb128 0x13
	.uaword	0x47b
	.uaword	.LLST15
	.uleb128 0x14
	.uaword	0x48c
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x2
	.uahalf	0x1a37
	.uleb128 0x11
	.uaword	0x4c1
	.uaword	.LLST16
	.uleb128 0x11
	.uaword	0x4b5
	.uaword	.LLST17
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x13
	.uaword	0x4cd
	.uaword	.LLST18
	.uleb128 0x13
	.uaword	0x4de
	.uaword	.LLST19
	.uleb128 0x13
	.uaword	0x4ee
	.uaword	.LLST20
	.uleb128 0x13
	.uaword	0x4fa
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
	.uleb128 0x34
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
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
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x8
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x9
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL21
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL27
	.uaword	.LVL28
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
.LLST20:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xe
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL28
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
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"tmp_u32"
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
