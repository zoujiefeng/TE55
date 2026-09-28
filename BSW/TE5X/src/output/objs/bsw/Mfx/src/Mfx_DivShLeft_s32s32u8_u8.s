	.file	"Mfx_DivShLeft_s32s32u8_u8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s32s32u8_u8,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s32s32u8_u8
	.type	Mfx_DivShLeft_s32s32u8_u8, @function
Mfx_DivShLeft_s32s32u8_u8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s32s32u8_u8.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d15, %d5
.LVL1:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3705 0
	mov	%d2, 1
	.loc 2 3706 0
	mov	%e4, %d4
	.loc 2 3705 0
	sh	%d6, %d2, %d6
.LVL2:
	.loc 2 3706 0
	mul.u	%e0, %d6, %d4
	madd	%d1, %d1, %d6, %d5
.LVL3:
.LBB20:
.LBB21:
	.loc 2 6642 0
	sh	%d4, %d15, -31
.LVL4:
	mov	%d2, 0
	sh	%d3, %d1, -31
	jeq	%d3, %d4, .L31
.L24:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	.loc 1 37 0
	ret
.L31:
.LBB38:
.LBB36:
.LBB34:
.LBB32:
.LBB30:
.LBB28:
	.loc 2 6650 0
	jnz	%d3, .L32
	.loc 2 6656 0
	mov	%e8, %d1, %d0
	.loc 2 6666 0
	mov	%d7, %d15
.LVL5:
.LBB22:
.LBB23:
	mov	%d2, 255
	.loc 2 6484 0
	jz	%d15, .L24
.LVL6:
	.loc 2 6481 0
	mov	%d6, %d0
.LVL7:
	mov	%d15, %d9
	mov	%d2, %d7
.LVL8:
.L17:
	.loc 2 6489 0
	jltz	%d2, .L33
	.loc 2 6517 0
	div.u	%e2, %d15, %d7
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d4, %d2
.LVL9:
	.loc 2 6523 0
	mul	%d5, %d4, %d7
.LVL10:
	sub	%d15, %d5
	.loc 2 6524 0
	jne	%d4, -1, .L34
.LVL11:
.L21:
.LBE23:
.LBE22:
.LBE28:
.LBE30:
.LBE32:
.LBE34:
	.loc 2 3739 0
	mov	%d2, 255
.LBE36:
.LBE38:
	.loc 1 37 0
	ret
.LVL12:
.L34:
.LBB39:
.LBB37:
.LBB35:
.LBB33:
.LBB31:
.LBB29:
.LBB26:
.LBB24:
	.loc 2 6524 0
	lea	%a15, 31
.LVL13:
.L14:
	.loc 2 6530 0
	dextr	%d15, %d15, %d6, 1
.LVL14:
	sh	%d6, 1
	.loc 2 6533 0
	div.u	%e4, %d15, %d7
	mov	%d5, %d4
.LVL15:
	.loc 2 6536 0
	mul	%d5, %d7
	sub	%d15, %d5
	.loc 2 6539 0
	mov	%d5, 0
	madd.u	%e4, %e4, %d2, 2
.LVL16:
	madd	%d5, %d5, %d3, 2
	mov	%e2, %d5, %d4
.LVL17:
	.loc 2 6542 0
	eq	%d5, %d3, 0
	mov	%d4, %d5
	and.eq	%d4, %d2, -1
	or.ne	%d4, %d3, 0
	jnz	%d4, .L21
	loop	%a15, .L14
	sel	%d2, %d5, %d2, -1
.LVL18:
	j	.L12
.LVL19:
.L32:
.LBE24:
.LBE26:
	.loc 2 6662 0
	movh	%d2, 32768
	rsub	%d7, %d15, 0
	ne	%d2, %d15, %d2
	.loc 2 6652 0
	rsub	%d9, %d1, 0
	.loc 2 6662 0
	movh	%d15, 32768
	sel	%d2, %d2, %d7, %d15
	.loc 2 6652 0
	rsub	%d8, %d0, 0
	cadd	%d9, %d0, %d9, -1
.LVL20:
.LBB27:
.LBB25:
	.loc 2 6481 0
	mov	%e6, %d2, %d8
	mov	%d15, %d9
	j	.L17
.LVL21:
.L33:
	.loc 2 6496 0
	movh	%d2, 32768
	msub.u	%e2, %e8, %d2, %d15
	.loc 2 6493 0
	mul.u	%e4, %d15, 1
.LVL22:
	.loc 2 6496 0
	mov	%d6, %d2
	mov	%d15, %d3
.LVL23:
	.loc 2 6499 0
	jz	%d3, .L9
	.loc 2 6506 0
	movh	%d7, 32768
.LVL24:
.L10:
	msub.u	%e2, %e2, %d15, %d7
	.loc 2 6503 0
	madd.u	%e4, %e4, %d15, 1
.LVL25:
	.loc 2 6506 0
	mov	%d6, %d2
	mov	%d15, %d3
	.loc 2 6499 0
	jnz	%d3, .L10
.LVL26:
.L9:
	.loc 2 6508 0
	sh	%d6, %d6, -31
.LVL27:
	.loc 2 6509 0
	madd.u	%e4, %e4, %d6, 1
.LVL28:
	.loc 2 6512 0
	seln	%d2, %d5, %d4, -1
.LVL29:
.L12:
.LBE25:
.LBE27:
.LBE29:
.LBE31:
.LBE33:
.LBE35:
	.loc 2 3739 0
	ge.u	%d15, %d2, 256
	jnz	%d15, .L21
	and	%d2, %d2, 255
.LVL30:
	ret
.LBE37:
.LBE39:
.LFE516:
	.size	Mfx_DivShLeft_s32s32u8_u8, .-Mfx_DivShLeft_s32s32u8_u8
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
	.uaword	0x671
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s32s32u8_u8.c"
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
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1ec
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
	.uaword	0x22e
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
	.byte	0x3
	.byte	0x8a
	.uaword	0x296
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
	.uaword	0x235
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2f0
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2cf
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x323
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2ab
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2f0
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x303
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32s32u8_u32_Inl"
	.byte	0x2
	.uahalf	0xe73
	.byte	0x1
	.uaword	0x246
	.byte	0x3
	.uaword	0x3ae
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xe73
	.uaword	0x220
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xe73
	.uaword	0x220
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xe73
	.uaword	0x1df
	.uleb128 0xb
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xe75
	.uaword	0x2bd
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0xe76
	.uaword	0x246
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32s32u8_u8_Inl"
	.byte	0x2
	.uahalf	0xe94
	.byte	0x1
	.uaword	0x1df
	.byte	0x3
	.uaword	0x415
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xe94
	.uaword	0x220
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xe94
	.uaword	0x220
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xe94
	.uaword	0x1df
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xe96
	.uaword	0x246
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_u32_Inl"
	.byte	0x2
	.uahalf	0x19eb
	.byte	0x1
	.uaword	0x246
	.byte	0x3
	.uaword	0x487
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x19eb
	.uaword	0x2bd
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x19eb
	.uaword	0x220
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x19ed
	.uaword	0x2ab
	.uleb128 0xb
	.string	"div_u32"
	.byte	0x2
	.uahalf	0x19ee
	.uaword	0x246
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x19ef
	.uaword	0x246
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x246
	.byte	0x3
	.uaword	0x504
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2ab
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x246
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x323
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ab
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x246
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x283
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_DivShLeft_s32s32u8_u8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1df
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
	.uaword	0x220
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x220
	.uaword	.LLST1
	.uleb128 0xe
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1df
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x3ae
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3f6
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x3ea
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x3de
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x404
	.uleb128 0x13
	.uaword	0x336
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0xe98
	.uleb128 0x10
	.uaword	0x37f
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x373
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x367
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x14
	.uaword	0x38d
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x15
	.uaword	0x39d
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x415
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0xe7d
	.uleb128 0x10
	.uaword	0x44a
	.uaword	.LLST10
	.uleb128 0x16
	.uaword	0x43e
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x15
	.uaword	0x456
	.uaword	.LLST11
	.uleb128 0x15
	.uaword	0x466
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	0x476
	.uaword	.LLST13
	.uleb128 0x13
	.uaword	0x487
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.uahalf	0x1a0e
	.uleb128 0x10
	.uaword	0x4bc
	.uaword	.LLST12
	.uleb128 0x10
	.uaword	0x4b0
	.uaword	.LLST15
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x15
	.uaword	0x4c8
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	0x4d9
	.uaword	.LLST17
	.uleb128 0x15
	.uaword	0x4e9
	.uaword	.LLST18
	.uleb128 0x15
	.uaword	0x4f9
	.uaword	.LLST19
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
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
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
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
.LLST9:
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
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL12
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL8
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL21
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL28
	.uaword	.LVL29
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
.LLST18:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL29
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
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
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
