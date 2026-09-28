	.file	"Mfx_AddP2_s32s32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AddP2_s32s32_s32,"ax",@progbits
	.align 1
	.global	Mfx_AddP2_s32s32_s32
	.type	Mfx_AddP2_s32s32_s32, @function
Mfx_AddP2_s32s32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AddP2_s32s32_s32.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d2, %d5
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
	.loc 2 1608 0
	jge	%d6, %d7, .L2
	.loc 2 1610 0
	sub	%d3, %d7, %d6
.LVL1:
	.loc 2 1611 0
	ld.w	%d6, [%SP]0
.LVL2:
	sub	%d6, %d7
.LVL3:
.L3:
	.loc 2 1629 0
	mov	%d15, 1
	.loc 2 1630 0
	mov	%e4, %d4
	.loc 2 1629 0
	sh	%d15, %d15, %d3
.LVL4:
	.loc 2 1630 0
	mov	%e2, %d2
	madd.u	%e2, %e2, %d15, %d4
.LVL5:
	madd	%d3, %d3, %d15, %d5
.LVL6:
	.loc 2 1602 0
	mov	%d5, 0
.LVL7:
	.loc 2 1630 0
	mov	%d4, %d2
.LVL8:
	mov	%d15, %d3
.LVL9:
	.loc 2 1633 0
	jltz	%d3, .L16
.LVL10:
	.loc 2 1641 0
	jltz	%d6, .L17
.LVL11:
.L5:
	.loc 2 1654 0
	mov	%d3, %d4
.LVL12:
	.loc 2 1656 0
	jz	%d15, .L18
.LVL13:
.L6:
	.loc 2 1666 0
	jlez	%d15, .L19
.L7:
	.loc 2 1669 0
	movh	%d2, 32768
	add	%d15, %d2, -1
	sel	%d2, %d5, %d2, %d15
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL14:
.L2:
.LBB8:
.LBB6:
	.loc 2 1618 0
	ld.w	%d15, [%SP]0
	.loc 2 1617 0
	sub	%d3, %d6, %d7
.LVL15:
	.loc 2 1618 0
	sub	%d6, %d15, %d6
.LVL16:
	mov	%d15, %d4
	.loc 2 1620 0
	mov	%d2, %d15
.LVL17:
	.loc 2 1619 0
	mov	%d4, %d5
.LVL18:
	j	.L3
.LVL19:
.L18:
	.loc 2 1659 0
	addi	%d15, %d6, -32
	sh	%d15, %d4, %d15
	.loc 2 1660 0
	sh	%d3, %d4, %d6
.LVL20:
	.loc 2 1666 0
	jgtz	%d15, .L7
.LVL21:
.L19:
	rsub	%d2, %d3, 0
	sel	%d2, %d5, %d2, %d3
	jltz	%d3, .L7
.LBE6:
.LBE8:
	.loc 1 37 0
	ret
.LVL22:
.L16:
.LBB9:
.LBB7:
	.loc 2 1638 0
	rsub	%d15, %d3, 0
	rsub	%d4, %d2, 0
	cadd	%d15, %d2, %d15, -1
.LVL23:
	.loc 2 1639 0
	mov	%d5, 1
.LVL24:
	.loc 2 1641 0
	jgez	%d6, .L5
.LVL25:
.L17:
	.loc 2 1643 0
	rsub	%d6
.LVL26:
	.loc 2 1649 0
	rsub	%d2, %d6, 0
	.loc 2 1648 0
	rsub	%d3, %d6, 32
	.loc 2 1649 0
	sh	%d2, %d15, %d2
	.loc 2 1648 0
	dextr	%d3, %d15, %d4, %d3
.LVL27:
	.loc 2 1649 0
	mov	%d15, %d2
.LVL28:
	j	.L6
.LBE7:
.LBE9:
.LFE516:
	.size	Mfx_AddP2_s32s32_s32, .-Mfx_AddP2_s32s32_s32
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
	.uaword	0x4d3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AddP2_s32s32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.byte	0x3
	.byte	0x60
	.uaword	0x202
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
	.uaword	0x228
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1c0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x209
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x12
	.uaword	0x2c8
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x18
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x19
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x4
	.byte	0x1b
	.uaword	0x2a7
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x2fb
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x295
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2c8
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2db
	.uleb128 0x8
	.string	"Mfx_Prv_AddP2_s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x63a
	.byte	0x1
	.uaword	0x1f4
	.byte	0x3
	.uaword	0x3f2
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0x63a
	.uaword	0x1f4
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0x63a
	.uaword	0x1f4
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0x63a
	.uaword	0x1f4
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0x63a
	.uaword	0x1f4
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0x63a
	.uaword	0x1f4
	.uleb128 0xa
	.string	"result_s64"
	.byte	0x2
	.uahalf	0x63d
	.uaword	0x2fb
	.uleb128 0xa
	.string	"shift1_s32"
	.byte	0x2
	.uahalf	0x63e
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift2_s32"
	.byte	0x2
	.uahalf	0x63f
	.uaword	0x1f4
	.uleb128 0xa
	.string	"var1_s32"
	.byte	0x2
	.uahalf	0x640
	.uaword	0x1f4
	.uleb128 0xa
	.string	"var2_s32"
	.byte	0x2
	.uahalf	0x641
	.uaword	0x1f4
	.uleb128 0xa
	.string	"isResultNegative_b"
	.byte	0x2
	.uahalf	0x642
	.uaword	0x265
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x643
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_AddP2_s32s32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f4
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
	.uaword	0x1f4
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST2
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.uaword	0x30e
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x361
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.uaword	0x357
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.uaword	0x34d
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x343
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x339
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x36b
	.uleb128 0x13
	.uaword	0x37e
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	0x391
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x3a4
	.uaword	.LLST8
	.uleb128 0x13
	.uaword	0x3b5
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x3c6
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x3e1
	.uaword	.LLST11
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
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
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
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
	.uaword	.LVL26
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x5
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
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
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x25
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
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
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
