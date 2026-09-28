	.file	"Mfx_SubP2_s16s16_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_SubP2_s16s16_s16,"ax",@progbits
	.align 1
	.global	Mfx_SubP2_s16s16_s16
	.type	Mfx_SubP2_s16s16_s16, @function
Mfx_SubP2_s16s16_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_SubP2_s16s16_s16.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	ld.h	%d0, [%SP]0
.LVL1:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 3560 0
	sub	%d3, %d6, %d7
	.loc 2 3564 0
	sh	%d3, %d5, %d3
.LVL2:
	.loc 2 3566 0
	sub	%d3, %d4, %d3
.LVL3:
	.loc 2 3569 0
	sub	%d2, %d0, %d6
	.loc 2 3545 0
	jge	%d6, %d7, .L3
.LVL4:
	.loc 2 3547 0
	sub	%d3, %d7, %d6
.LVL5:
	.loc 2 3551 0
	sh	%d3, %d4, %d3
.LVL6:
	.loc 2 3553 0
	sub	%d3, %d5
.LVL7:
	.loc 2 3556 0
	sub	%d2, %d0, %d7
.LVL8:
.L3:
	.loc 2 3593 0
	sh	%d15, %d3, %d2
	.loc 2 3576 0
	jltz	%d2, .L12
.LVL9:
.L6:
	mov.u	%d2, 32768
.LVL10:
	mov	%d3, -32768
	jlt	%d15, %d3, 0f
	extr	%d3, %d15, 0, 16
	0:
	lt	%d2, %d15, %d2
	mov	%d15, 32767
.LVL11:
	sel	%d2, %d2, %d3, %d15
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL12:
.L12:
.LBB7:
.LBB6:
	.loc 2 3578 0
	rsub	%d2
.LVL13:
	.loc 2 3587 0
	rsub	%d15, %d2, 0
	sh	%d15, %d3, %d15
	.loc 2 3579 0
	jgez	%d3, .L6
.LVL14:
	.loc 2 3581 0
	rsub	%d15, %d3, 0
	rsub	%d3, %d2, 0
.LVL15:
	sh	%d3, %d15, %d3
	mov	%d15, %d3
.LVL16:
	.loc 2 3583 0
	rsub	%d15
.LVL17:
	j	.L6
.LBE6:
.LBE7:
.LFE516:
	.size	Mfx_SubP2_s16s16_s16, .-Mfx_SubP2_s16s16_s16
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
	.uaword	0x3dc
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_SubP2_s16s16_s16.c"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"Mfx_Prv_SubP2_s16s16_s16_Inl"
	.byte	0x2
	.uahalf	0xdd0
	.byte	0x1
	.uaword	0x1d1
	.byte	0x3
	.uaword	0x327
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0xdd0
	.uaword	0x1d1
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0xdd0
	.uaword	0x1d1
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0xdd0
	.uaword	0x1d1
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0xdd0
	.uaword	0x1d1
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0xdd0
	.uaword	0x1d1
	.uleb128 0x6
	.string	"result_s32"
	.byte	0x2
	.uahalf	0xdd2
	.uaword	0x202
	.uleb128 0x6
	.string	"shift_s32"
	.byte	0x2
	.uahalf	0xdd3
	.uaword	0x202
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0xdd4
	.uaword	0x228
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_SubP2_s16s16_s16"
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
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.byte	0x1
	.byte	0x56
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uaword	0x294
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.uaword	0x2dd
	.byte	0x1
	.byte	0x57
	.uleb128 0xa
	.uaword	0x2d3
	.byte	0x1
	.byte	0x56
	.uleb128 0xa
	.uaword	0x2c9
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x2bf
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x2f1
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	0x304
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	0x316
	.uaword	.LLST2
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x72
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x72
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
