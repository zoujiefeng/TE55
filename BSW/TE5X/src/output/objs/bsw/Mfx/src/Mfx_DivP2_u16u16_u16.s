	.file	"Mfx_DivP2_u16u16_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivP2_u16u16_u16,"ax",@progbits
	.align 1
	.global	Mfx_DivP2_u16u16_u16
	.type	Mfx_DivP2_u16u16_u16, @function
Mfx_DivP2_u16u16_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivP2_u16u16_u16.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3015 0
	mov.u	%d2, 65535
	jz	%d5, .L6
	.loc 2 3022 0
	ld.h	%d15, [%SP]0
	add	%d7, %d15
.LVL1:
	sub	%d6, %d7, %d6
.LVL2:
	.loc 2 3025 0
	jltz	%d6, .L9
	.loc 2 3032 0
	sh	%d15, %d4, %d6
.LVL3:
	.loc 2 3035 0
	rsub	%d3, %d6, 0
	sh	%d3, %d15, %d3
	.loc 2 3038 0
	jeq	%d4, %d3, .L4
.LVL4:
.L6:
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL5:
.L9:
.LBB7:
.LBB6:
	.loc 2 3027 0
	rsub	%d6
.LVL6:
	.loc 2 3028 0
	rsub	%d15, %d6, 0
	sh	%d15, %d4, %d15
.LVL7:
.L4:
	.loc 2 3048 0
	div.u	%e2, %d15, %d5
	sat.hu	%d2, %d2
.LVL8:
.LBE6:
.LBE7:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_DivP2_u16u16_u16, .-Mfx_DivP2_u16u16_u16
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
	.uaword	0x40a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivP2_u16u16_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.uaword	0x1ef
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x20a
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
	.uaword	0x1b1
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
	.string	"Mfx_Prv_DivP2_u16u16_u16_Inl"
	.byte	0x2
	.uahalf	0xbbf
	.byte	0x1
	.uaword	0x1fc
	.byte	0x3
	.uaword	0x347
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0xbbf
	.uaword	0x1fc
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0xbbf
	.uaword	0x1fc
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0xbbf
	.uaword	0x1e1
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0xbbf
	.uaword	0x1e1
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0xbbf
	.uaword	0x1e1
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xbc1
	.uaword	0x246
	.uleb128 0x6
	.string	"shft_s32"
	.byte	0x2
	.uahalf	0xbc2
	.uaword	0x220
	.uleb128 0x6
	.string	"shft_rev_u32"
	.byte	0x2
	.uahalf	0xbc3
	.uaword	0x246
	.uleb128 0x6
	.string	"flag_u32"
	.byte	0x2
	.uahalf	0xbc4
	.uaword	0x246
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_DivP2_u16u16_u16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1fc
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
	.uaword	0x1fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1fc
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1e1
	.uaword	.LLST0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1e1
	.uaword	.LLST1
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1e1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.uaword	0x2a2
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.uaword	0x2eb
	.uaword	.LLST2
	.uleb128 0xc
	.uaword	0x2e1
	.uaword	.LLST3
	.uleb128 0xb
	.uaword	0x2d7
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.uaword	0x2cd
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xe
	.uaword	0x2ff
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	0x30f
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	0x320
	.uaword	.LLST6
	.uleb128 0xf
	.uaword	0x335
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
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
.LLST1:
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
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x12
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL4
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
