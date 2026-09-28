	.file	"Mfx_AddP2_u32s32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AddP2_u32s32_s32,"ax",@progbits
	.align 1
	.global	Mfx_AddP2_u32s32_s32
	.type	Mfx_AddP2_u32s32_s32, @function
Mfx_AddP2_u32s32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AddP2_u32s32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
	.loc 2 2200 0
	ld.w	%d0, [%SP]0
.LBE5:
.LBE4:
	.loc 1 35 0
	mov	%d15, %d5
.LBB9:
.LBB6:
	.loc 2 2201 0
	mov	%e2, %d5
	.loc 2 2199 0
	sub	%d1, %d6, %d7
.LVL1:
	.loc 2 2200 0
	sub	%d0, %d6
.LVL2:
	.loc 2 2202 0
	mov	%d5, 0
.LVL3:
	.loc 2 2189 0
	jge	%d6, %d7, .L3
	.loc 2 2192 0
	ld.w	%d0, [%SP]0
.LVL4:
	.loc 2 2193 0
	mov	%e2, %d5, %d4
	.loc 2 2194 0
	mov	%e4, %d15
.LVL5:
	.loc 2 2191 0
	sub	%d1, %d7, %d6
.LVL6:
	.loc 2 2192 0
	sub	%d0, %d7
.LVL7:
.L3:
	.loc 2 2210 0
	mov	%d15, 1
.LVL8:
	sh	%d15, %d15, %d1
.LVL9:
	.loc 2 2211 0
	madd.u	%e4, %e4, %d15, %d2
.LVL10:
	madd	%d5, %d5, %d15, %d3
	.loc 2 2219 0
	rsub	%d15, %d4, 0
.LVL11:
	rsub	%d2, %d5, 0
	.loc 2 2211 0
	lt	%d3, %d5, 0
	.loc 2 2219 0
	cadd	%d2, %d4, %d2, -1
.LVL12:
	.loc 2 2211 0
	sel	%d15, %d3, %d15, %d4
	sel	%d2, %d3, %d2, %d5
.LVL13:
	.loc 2 2225 0
	jlez	%d0, .L6
	.loc 2 2229 0
	jz	%d2, .L18
.LVL14:
.L9:
	.loc 2 2253 0
	jlez	%d2, .L19
.L10:
	.loc 2 2255 0
	movh	%d2, 32768
	add	%d15, %d2, -1
	sel	%d2, %d3, %d2, %d15
.LBE6:
.LBE9:
	.loc 1 37 0
	ret
.LVL15:
.L18:
.LBB10:
.LBB7:
	.loc 2 2234 0
	addi	%d2, %d0, -32
	sh	%d2, %d15, %d2
	.loc 2 2227 0
	sh	%d15, %d15, %d0
.LVL16:
	.loc 2 2253 0
	jgtz	%d2, .L10
.LVL17:
.L19:
	rsub	%d2, %d15, 0
	sel	%d2, %d3, %d2, %d15
	jltz	%d15, .L10
.LBE7:
.LBE10:
	.loc 1 37 0
	ret
.LVL18:
.L6:
.LBB11:
.LBB8:
	.loc 2 2240 0
	jz	%d0, .L9
	.loc 2 2243 0
	rsub	%d0
.LVL19:
	.loc 2 2247 0
	rsub	%d4, %d0, 32
.LVL20:
	dextr	%d4, %d2, %d15, %d4
	mov	%d15, %d4
.LVL21:
	.loc 2 2248 0
	rsub	%d4, %d0, 0
	sh	%d4, %d2, %d4
	mov	%d2, %d4
.LVL22:
	j	.L9
.LBE8:
.LBE11:
.LFE516:
	.size	Mfx_AddP2_u32s32_s32, .-Mfx_AddP2_u32s32_s32
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
	.uaword	0x4b7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AddP2_u32s32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x28
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
	.string	"Mfx_Prv_AddP2_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x87f
	.byte	0x1
	.uaword	0x1f4
	.byte	0x3
	.uaword	0x3e1
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0x87f
	.uaword	0x21a
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0x87f
	.uaword	0x1f4
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0x87f
	.uaword	0x1f4
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0x87f
	.uaword	0x1f4
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0x87f
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift1_s32"
	.byte	0x2
	.uahalf	0x881
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift2_s32"
	.byte	0x2
	.uahalf	0x882
	.uaword	0x1f4
	.uleb128 0xa
	.string	"isResultNegative_b"
	.byte	0x2
	.uahalf	0x883
	.uaword	0x265
	.uleb128 0xa
	.string	"var2_s64"
	.byte	0x2
	.uahalf	0x885
	.uaword	0x2fb
	.uleb128 0xa
	.string	"result_s64"
	.byte	0x2
	.uahalf	0x887
	.uaword	0x2fb
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x888
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_AddP2_u32s32_s32"
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
	.uaword	0x21a
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
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
	.uleb128 0xf
	.uaword	0x34d
	.byte	0x1
	.byte	0x56
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
	.byte	0x1
	.byte	0x51
	.uleb128 0x13
	.uaword	0x37e
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	0x391
	.uaword	.LLST5
	.uleb128 0x13
	.uaword	0x3ac
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	0x3bd
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x3d0
	.uaword	.LLST8
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
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
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
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
	.uaword	.LVL7
	.uahalf	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x5
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x5
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x5
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x72
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
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB11
	.uaword	.LBE11
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
