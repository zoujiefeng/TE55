	.file	"Mfx_DivP2_s32s32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivP2_s32s32_u32,"ax",@progbits
	.align 1
	.global	Mfx_DivP2_s32s32_u32
	.type	Mfx_DivP2_s32s32_u32, @function
Mfx_DivP2_s32s32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivP2_s32s32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB6:
.LBB7:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 2407 0
	jltz	%d4, .L25
	.loc 2 2415 0
	mov	%d2, 0
	jltz	%d5, .L26
	.loc 2 2426 0
	jz	%d5, .L23
.LVL1:
.L14:
	.loc 2 2434 0
	ld.h	%d15, [%SP]0
	add	%d7, %d15
.LVL2:
	sub	%d6, %d7, %d6
.LVL3:
	.loc 2 2438 0
	lt	%d15, %d6, 32
	jnz	%d15, .L5
	.loc 2 2440 0
	rsub	%d2, %d6, 63
	mov	%d15, 1
	sh	%d15, %d15, %d2
	.loc 2 2444 0
	jge.u	%d15, %d4, .L27
.LVL4:
.L23:
.LBB8:
.LBB9:
	.loc 2 6524 0
	mov	%d2, -1
	ret
.LVL5:
.L25:
.LBE9:
.LBE8:
	.loc 2 2409 0
	rsub	%d4
.LVL6:
	.loc 2 2415 0
	jltz	%d5, .L3
	mov	%d2, 0
	ret
.LVL7:
.L5:
	.loc 2 2476 0
	addi	%d15, %d6, -32
	.loc 2 2472 0
	sh	%d2, %d4, %d6
.LVL8:
	.loc 2 2476 0
	sh	%d15, %d4, %d15
	.loc 2 2461 0
	jltz	%d6, .L28
.LVL9:
.L7:
.LBB12:
.LBB10:
	.loc 2 6481 0
	mov	%d0, %d2
.LVL10:
	.loc 2 6517 0
	div.u	%e2, %d15, %d5
.LVL11:
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d6, %d2
.LVL12:
	.loc 2 6523 0
	mul	%d4, %d6, %d5
.LVL13:
	sub	%d4, %d15, %d4
	.loc 2 6524 0
	jeq	%d6, -1, .L23
.LVL14:
.L12:
	lea	%a15, 31
.LVL15:
.L10:
	.loc 2 6530 0
	dextr	%d4, %d4, %d0, 1
.LVL16:
	sh	%d0, 1
	.loc 2 6533 0
	div.u	%e6, %d4, %d5
	.loc 2 6539 0
	mov	%d7, 0
	.loc 2 6533 0
	mov	%d15, %d6
	.loc 2 6539 0
	madd.u	%e6, %e6, %d2, 2
	madd	%d7, %d7, %d3, 2
	.loc 2 6536 0
	mul	%d15, %d5
	.loc 2 6539 0
	mov	%e2, %d7, %d6
.LVL17:
	.loc 2 6536 0
	sub	%d4, %d15
	.loc 2 6542 0
	eq	%d6, %d3, 0
	mov	%d15, %d6
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jnz	%d15, .L23
	loop	%a15, .L10
	sel	%d2, %d6, %d2, -1
.LVL18:
	ret
.LVL19:
.L27:
.LBE10:
.LBE12:
	.loc 2 2453 0
	addi	%d6, %d6, -32
.LVL20:
	sh	%d15, %d4, %d6
.LVL21:
	.loc 2 2455 0
	mov	%d2, 0
.LVL22:
.LBB13:
.LBB11:
	.loc 2 6481 0
	mov	%d0, %d2
	.loc 2 6517 0
	div.u	%e2, %d15, %d5
.LVL23:
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d6, %d2
.LVL24:
	.loc 2 6523 0
	mul	%d4, %d6, %d5
.LVL25:
	sub	%d4, %d15, %d4
	.loc 2 6524 0
	jne	%d6, -1, .L12
	j	.L23
.LVL26:
.L28:
.LBE11:
.LBE13:
	.loc 2 2463 0
	rsub	%d6
.LVL27:
	.loc 2 2465 0
	rsub	%d2, %d6, 0
	sh	%d2, %d4, %d2
	.loc 2 2467 0
	mov	%d15, 0
	j	.L7
.LVL28:
.L26:
	ret
.LVL29:
.L3:
	.loc 2 2417 0
	rsub	%d5
.LVL30:
	j	.L14
.LBE7:
.LBE6:
.LFE516:
	.size	Mfx_DivP2_s32s32_u32, .-Mfx_DivP2_s32s32_u32
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
	.uaword	0x5da
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivP2_s32s32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x1f9
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
	.uaword	0x22a
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
	.uaword	0x250
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
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x231
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x12
	.uaword	0x2ec
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x18
	.uaword	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x19
	.uaword	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x4
	.byte	0x1b
	.uaword	0x2cb
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x31f
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x2b9
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2ec
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2ff
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x353
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x332
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x386
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2a7
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x353
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x366
	.uleb128 0x8
	.string	"Mfx_Prv_DivP2_s32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x95e
	.byte	0x1
	.uaword	0x242
	.byte	0x3
	.uaword	0x43a
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0x95e
	.uaword	0x21c
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0x95e
	.uaword	0x21c
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0x95e
	.uaword	0x1eb
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0x95e
	.uaword	0x1eb
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0x95e
	.uaword	0x1eb
	.uleb128 0xa
	.string	"res_s64"
	.byte	0x2
	.uahalf	0x961
	.uaword	0x31f
	.uleb128 0xa
	.string	"radix_s32"
	.byte	0x2
	.uahalf	0x962
	.uaword	0x21c
	.uleb128 0xa
	.string	"flag_u32"
	.byte	0x2
	.uahalf	0x963
	.uaword	0x242
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x964
	.uaword	0x242
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x242
	.byte	0x3
	.uaword	0x4bf
	.uleb128 0x9
	.string	"x_value"
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2a7
	.uleb128 0x9
	.string	"y_value"
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x242
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x386
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2a7
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x242
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x27f
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_DivP2_s32s32_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x242
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
	.uaword	0x21c
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x21c
	.uaword	.LLST1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1eb
	.uaword	.LLST2
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1eb
	.uaword	.LLST3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1eb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.uaword	0x399
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x3ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.uaword	0x3e2
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x3d8
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	0x3ce
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x3c4
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x12
	.uaword	0x3f6
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x406
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	0x418
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	0x429
	.uaword	.LLST11
	.uleb128 0x13
	.uaword	0x43a
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x2
	.uahalf	0x9b3
	.uleb128 0x10
	.uaword	0x473
	.uaword	.LLST12
	.uleb128 0x10
	.uaword	0x463
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x483
	.uaword	.LLST14
	.uleb128 0x12
	.uaword	0x494
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	0x4a4
	.uleb128 0x12
	.uaword	0x4b4
	.uaword	.LLST16
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
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL7
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL28
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL28
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x76
	.sleb128 32
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 -32
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b1
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b1
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
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL26
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
