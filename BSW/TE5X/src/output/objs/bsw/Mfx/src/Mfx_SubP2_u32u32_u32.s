	.file	"Mfx_SubP2_u32u32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_SubP2_u32u32_u32,"ax",@progbits
	.align 1
	.global	Mfx_SubP2_u32u32_u32
	.type	Mfx_SubP2_u32u32_u32, @function
Mfx_SubP2_u32u32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_SubP2_u32u32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 5169 0
	mul.u	%e2, %d5, 1
	.loc 2 5168 0
	ld.w	%d0, [%SP]0
	.loc 2 5167 0
	sub	%d8, %d6, %d7
.LVL1:
	.loc 2 5169 0
	rsub	%d15, %d3, 0
	.loc 2 5168 0
	sub	%d0, %d6
.LVL2:
	.loc 2 5169 0
	rsub	%d1, %d2, 0
	cadd	%d15, %d2, %d15, -1
	.loc 2 5170 0
	mov	%d5, 0
.LVL3:
	.loc 2 5158 0
	jge	%d6, %d7, .L3
	.loc 2 5161 0
	ld.w	%d0, [%SP]0
.LVL4:
	.loc 2 5162 0
	mov	%d15, %d5
	.loc 2 5163 0
	rsub	%d5, %d3, 0
	.loc 2 5162 0
	mov	%d1, %d4
	.loc 2 5160 0
	sub	%d8, %d7, %d6
.LVL5:
	.loc 2 5161 0
	sub	%d0, %d7
.LVL6:
	.loc 2 5163 0
	rsub	%d4, %d2, 0
.LVL7:
	cadd	%d5, %d2, %d5, -1
.LVL8:
.L3:
	.loc 2 5180 0
	mov	%d2, 1
.LVL9:
	sh	%d2, %d2, %d8
.LVL10:
	.loc 2 5181 0
	madd.u	%e4, %e4, %d2, %d1
.LVL11:
	madd	%d5, %d5, %d2, %d15
	.loc 2 5183 0
	mov	%d2, 0
.LVL12:
	jltz	%d5, .L4
	.loc 2 5189 0
	jltz	%d0, .L11
	.loc 2 5206 0
	mov	%d2, -1
	jnz	%d5, .L4
	.loc 2 5209 0
	addi	%d15, %d0, -32
	.loc 2 5202 0
	sh	%d2, %d4, %d0
.LVL13:
	.loc 2 5209 0
	sh	%d15, %d4, %d15
.LVL14:
.L6:
	.loc 2 5215 0
	lt	%d15, %d15, 1
	cmovn	%d2, %d15, -1
.L4:
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL15:
.L11:
.LBB7:
.LBB6:
	.loc 2 5191 0
	rsub	%d0
.LVL16:
	.loc 2 5196 0
	rsub	%d2, %d0, 32
	.loc 2 5197 0
	rsub	%d15, %d0, 0
	.loc 2 5196 0
	dextr	%d2, %d5, %d4, %d2
.LVL17:
	.loc 2 5197 0
	sh	%d15, %d5, %d15
	j	.L6
.LBE6:
.LBE7:
.LFE516:
	.size	Mfx_SubP2_u32u32_u32, .-Mfx_SubP2_u32u32_u32
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
	.uaword	0x47f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_SubP2_u32u32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x2b9
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
	.uaword	0x298
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x2ec
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x286
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2cc
	.uleb128 0x8
	.string	"Mfx_Prv_SubP2_u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1416
	.byte	0x1
	.uaword	0x21a
	.byte	0x3
	.uaword	0x3b6
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0x1416
	.uaword	0x21a
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0x1416
	.uaword	0x21a
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0x1416
	.uaword	0x1f4
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0x1416
	.uaword	0x1f4
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0x1416
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift1_s32"
	.byte	0x2
	.uahalf	0x1418
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift2_s32"
	.byte	0x2
	.uahalf	0x1419
	.uaword	0x1f4
	.uleb128 0xa
	.string	"var_s64"
	.byte	0x2
	.uahalf	0x141b
	.uaword	0x2ec
	.uleb128 0xa
	.string	"result_s64"
	.byte	0x2
	.uahalf	0x141d
	.uaword	0x2ec
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x141e
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_SubP2_u32u32_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x21a
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
	.uaword	0x21a
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x21a
	.uaword	.LLST1
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x1
	.byte	0x56
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
	.uaword	0x2ff
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x352
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.uaword	0x348
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.uaword	0x33e
	.byte	0x1
	.byte	0x56
	.uleb128 0x10
	.uaword	0x334
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x32a
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x35c
	.byte	0x1
	.byte	0x58
	.uleb128 0x13
	.uaword	0x36f
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	0x382
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	0x392
	.uleb128 0x13
	.uaword	0x3a5
	.uaword	.LLST6
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
	.uleb128 0xa
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x51
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x5
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x5
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x70
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
	.uaword	.LBB7
	.uaword	.LBE7
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
