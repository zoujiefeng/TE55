	.file	"Mfx_DivP2_s16s16_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivP2_s16s16_s16,"ax",@progbits
	.align 1
	.global	Mfx_DivP2_s16s16_s16
	.type	Mfx_DivP2_s16s16_s16, @function
Mfx_DivP2_s16s16_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivP2_s16s16_s16.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 1859 0
	jz	%d5, .L2
	.loc 2 1866 0
	ld.h	%d15, [%SP]0
	add	%d7, %d15
.LVL1:
	sub	%d6, %d7, %d6
.LVL2:
	.loc 2 1868 0
	jltz	%d6, .L22
	.loc 2 1886 0
	sh	%d15, %d4, %d6
.LVL3:
	.loc 2 1890 0
	rsub	%d2, %d6, 0
	sh	%d2, %d15, %d2
.LVL4:
	.loc 2 1892 0
	jltz	%d15, .L23
.LVL5:
.L6:
	.loc 2 1904 0
	movh	%d6, 32768
	ne	%d3, %d2, %d4
	or.eq	%d3, %d15, %d6
	jnz	%d3, .L2
.LVL6:
.L5:
	.loc 2 1914 0
	div	%e4, %d15, %d5
.LVL7:
	.loc 2 1926 0
	mov.u	%d3, 32768
	mov	%d2, 32767
	.loc 2 1914 0
	mov	%d15, %d4
.LVL8:
	.loc 2 1926 0
	jlt	%d4, %d3, .L19
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL9:
.L2:
.LBB7:
.LBB6:
	.loc 2 1922 0
	sh	%d4, %d4, -31
.LVL10:
	sh	%d5, %d5, -31
.LVL11:
	eq	%d5, %d4, %d5
	mov	%d2, 32767
	mov	%d3, -32768
	sel	%d15, %d5, %d2, %d3
.LVL12:
.L11:
	extr	%d2, %d15, 0, 16
	ret
.LVL13:
.L22:
	.loc 2 1870 0
	rsub	%d6
.LVL14:
	.loc 2 1879 0
	rsub	%d15, %d6, 0
	sh	%d15, %d4, %d15
	.loc 2 1871 0
	jgez	%d4, .L5
.LVL15:
	.loc 2 1873 0
	rsub	%d15, %d4, 0
	rsub	%d2, %d6, 0
	sh	%d2, %d15, %d2
	mov	%d15, %d2
	.loc 2 1875 0
	rsub	%d15
.LVL16:
	j	.L5
.LVL17:
.L23:
	.loc 2 1895 0
	rsub	%d6, %d6, 32
.LVL18:
	mov	%d3, -1
	sh	%d6, %d3, %d6
	or	%d2, %d6
.LVL19:
	j	.L6
.LVL20:
.L19:
	.loc 2 1930 0
	mov	%d2, -32768
	jge	%d15, %d2, .L11
.LBE6:
.LBE7:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_DivP2_s16s16_s16, .-Mfx_DivP2_s16s16_s16
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x42d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivP2_s16s16_s16.c"
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x1df
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
	.uaword	0x210
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
	.uaword	0x236
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
	.uleb128 0x4
	.string	"Mfx_Prv_DivP2_s16s16_s16_Inl"
	.byte	0x2
	.uahalf	0x73a
	.byte	0x1
	.uaword	0x1d1
	.byte	0x3
	.uaword	0x356
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0x73a
	.uaword	0x1d1
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0x73a
	.uaword	0x1d1
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0x73a
	.uaword	0x1d1
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0x73a
	.uaword	0x1d1
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0x73a
	.uaword	0x1d1
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x73c
	.uaword	0x202
	.uleb128 0x6
	.string	"shft_s32"
	.byte	0x2
	.uahalf	0x73d
	.uaword	0x202
	.uleb128 0x6
	.string	"shft_rev_s32"
	.byte	0x2
	.uahalf	0x73e
	.uaword	0x202
	.uleb128 0x6
	.string	"flag_b"
	.byte	0x2
	.uahalf	0x73f
	.uaword	0x273
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x740
	.uaword	0x228
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_DivP2_s16s16_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d1
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.uaword	.LLST0
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.uaword	.LLST1
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.uaword	.LLST2
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.uaword	.LLST3
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.uaword	0x2a3
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x2f6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.uaword	0x2ec
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	0x2e2
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	0x2d8
	.uaword	.LLST6
	.uleb128 0xc
	.uaword	0x2ce
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xe
	.uaword	0x300
	.uaword	.LLST8
	.uleb128 0xe
	.uaword	0x310
	.uaword	.LLST9
	.uleb128 0xe
	.uaword	0x321
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	0x336
	.uaword	.LLST11
	.uleb128 0xe
	.uaword	0x345
	.uaword	.LLST12
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
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
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL13
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1f
	.byte	0x76
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL20
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
