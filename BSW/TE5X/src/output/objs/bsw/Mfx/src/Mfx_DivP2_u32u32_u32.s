	.file	"Mfx_DivP2_u32u32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivP2_u32u32_u32,"ax",@progbits
	.align 1
	.global	Mfx_DivP2_u32u32_u32
	.type	Mfx_DivP2_u32u32_u32, @function
Mfx_DivP2_u32u32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivP2_u32u32_u32.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d15, %d5
.LBB6:
.LBB7:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3416 0
	jz	%d5, .L19
	.loc 2 3419 0
	ld.h	%d2, [%SP]0
	add	%d7, %d2
.LVL1:
	sub	%d6, %d7, %d6
.LVL2:
	.loc 2 3423 0
	lt	%d2, %d6, 33
	jnz	%d2, .L3
	.loc 2 3425 0
	rsub	%d3, %d6, 64
	mov	%d2, 1
	sh	%d2, %d2, %d3
	.loc 2 3429 0
	jlt.u	%d4, %d2, .L33
.LVL3:
.L19:
.LBB8:
.LBB9:
	.loc 2 6542 0
	mov	%d2, -1
	ret
.LVL4:
.L3:
.LBE9:
.LBE8:
	.loc 2 3465 0
	addi	%d0, %d6, -32
	.loc 2 3453 0
	ne	%d2, %d6, 32
	.loc 2 3463 0
	sh	%d5, %d4, %d6
.LVL5:
	.loc 2 3465 0
	sh	%d0, %d4, %d0
	.loc 2 3456 0
	sel	%d5, %d2, %d5, 0
	sel	%d0, %d2, %d0, %d4
	.loc 2 3444 0
	jlez	%d6, .L34
.L6:
.LVL6:
	.loc 2 3472 0
	mov	%e2, %d0, %d5
.LVL7:
.LBB12:
.LBB10:
	.loc 2 6481 0
	mov	%d6, %d2
.LVL8:
	.loc 2 6489 0
	jltz	%d15, .L35
.L30:
	.loc 2 6517 0
	div.u	%e4, %d0, %d15
.LVL9:
	.loc 2 6524 0
	mov	%d2, -1
.LVL10:
	.loc 2 6520 0
	mov	%d5, 0
.LVL11:
	.loc 2 6517 0
	mov	%d3, %d4
.LVL12:
	.loc 2 6523 0
	mul	%d7, %d3, %d15
	sub	%d7, %d0, %d7
	.loc 2 6524 0
	jeq	%d3, -1, .L24
	lea	%a15, 31
.LVL13:
.L14:
	.loc 2 6530 0
	dextr	%d7, %d7, %d6, 1
.LVL14:
	sh	%d6, 1
	.loc 2 6533 0
	div.u	%e2, %d7, %d15
	mov	%d3, %d2
.LVL15:
	.loc 2 6536 0
	mul	%d3, %d15
	sub	%d7, %d3
	.loc 2 6539 0
	mov	%d3, 0
	madd.u	%e2, %e2, %d4, 2
.LVL16:
	madd	%d3, %d3, %d5, 2
	mov	%e4, %d3, %d2
.LVL17:
	.loc 2 6542 0
	eq	%d2, %d5, 0
	mov	%d3, %d2
	and.eq	%d3, %d4, -1
	or.ne	%d3, %d5, 0
	jnz	%d3, .L19
	loop	%a15, .L14
	sel	%d2, %d2, %d4, -1
	ret
.LVL18:
.L24:
.LBE10:
.LBE12:
.LBE7:
.LBE6:
	.loc 1 37 0
	ret
.LVL19:
.L33:
.LBB15:
.LBB14:
	.loc 2 3438 0
	addi	%d2, %d6, -32
	sh	%d0, %d4, %d2
	.loc 2 3439 0
	mov	%d5, 0
.LVL20:
	.loc 2 3472 0
	mov	%e2, %d0, %d5
.LVL21:
.LBB13:
.LBB11:
	.loc 2 6481 0
	mov	%d6, %d2
.LVL22:
	.loc 2 6489 0
	jgez	%d15, .L30
.L35:
.LVL23:
	.loc 2 6496 0
	msub.u	%e2, %e2, %d15, %d0
.LVL24:
	.loc 2 6493 0
	mul.u	%e4, %d0, 1
.LVL25:
	.loc 2 6499 0
	mov	%d6, %d3
	jz	%d3, .L9
.LVL26:
.L10:
	.loc 2 6506 0
	msub.u	%e2, %e2, %d15, %d6
	.loc 2 6503 0
	madd.u	%e4, %e4, %d6, 1
.LVL27:
	.loc 2 6499 0
	mov	%d6, %d3
	jnz	%d3, .L10
.LVL28:
.L9:
	.loc 2 6508 0
	div.u	%e2, %d2, %d15
.LVL29:
	.loc 2 6509 0
	madd.u	%e4, %e4, %d2, 1
.LVL30:
	.loc 2 6512 0
	seln	%d2, %d5, %d4, -1
	ret
.LVL31:
.L34:
.LBE11:
.LBE13:
	.loc 2 3447 0
	rsub	%d6
.LVL32:
	.loc 2 3448 0
	rsub	%d5, %d6, 0
	sh	%d5, %d4, %d5
	.loc 2 3451 0
	mov	%d0, 0
	j	.L6
.LBE14:
.LBE15:
.LFE516:
	.size	Mfx_DivP2_u32u32_u32, .-Mfx_DivP2_u32u32_u32
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
	.uaword	0x545
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivP2_u32u32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x209
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
	.uaword	0x23a
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
	.uaword	0x1cb
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
	.uaword	0x292
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2da
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2b9
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x30d
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2a7
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2da
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x2ed
	.uleb128 0x8
	.string	"Mfx_Prv_DivP2_u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0xd51
	.byte	0x1
	.uaword	0x252
	.byte	0x3
	.uaword	0x3b1
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0xd51
	.uaword	0x252
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0xd51
	.uaword	0x252
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0xd51
	.uaword	0x1fb
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0xd51
	.uaword	0x1fb
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0xd51
	.uaword	0x1fb
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0xd54
	.uaword	0x30d
	.uleb128 0xa
	.string	"radix_s32"
	.byte	0x2
	.uahalf	0xd55
	.uaword	0x22c
	.uleb128 0xa
	.string	"flag_u32"
	.byte	0x2
	.uahalf	0xd56
	.uaword	0x252
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x252
	.byte	0x3
	.uaword	0x436
	.uleb128 0x9
	.string	"x_value"
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2a7
	.uleb128 0x9
	.string	"y_value"
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x252
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x30d
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2a7
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x252
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x27f
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_DivP2_u32u32_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x252
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x252
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x252
	.uaword	.LLST1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1fb
	.uaword	.LLST2
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1fb
	.uaword	.LLST3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.uaword	0x320
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x373
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.uaword	0x369
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x35f
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	0x355
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x34b
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x37d
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x38d
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x39f
	.byte	0
	.uleb128 0x14
	.uaword	0x3b1
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0xd90
	.uleb128 0x10
	.uaword	0x3ea
	.uaword	.LLST10
	.uleb128 0x10
	.uaword	0x3da
	.uaword	.LLST11
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.uaword	0x3fa
	.uaword	.LLST12
	.uleb128 0x12
	.uaword	0x40b
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x41b
	.uaword	.LLST14
	.uleb128 0x12
	.uaword	0x42b
	.uaword	.LLST15
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
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL1
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
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
	.uaword	.LVL17
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b1
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b1
	.byte	0x12
	.byte	0xf4
	.uleb128 0x1b1
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
.LLST14:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL31
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
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
