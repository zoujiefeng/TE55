	.file	"Mfx_AbsDiff_u32s32_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiff_u32s32_u16,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiff_u32s32_u16
	.type	Mfx_AbsDiff_u32s32_u16, @function
Mfx_AbsDiff_u32s32_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiff_u32s32_u16.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 877 0
	ge.u	%d15, %d4, %d5
	or.lt	%d15, %d5, 1
	jz	%d15, .L2
.LVL1:
.LBB14:
.LBB15:
	.loc 2 3049 0
	sub	%d15, %d4, %d5
.LVL2:
	.loc 2 3074 0
	movh	%d3, 1
	ge.u	%d2, %d15, %d3
	extr.u	%d3, %d15, 0, 16
	or.lt.u	%d2, %d15, %d4
	mov.u	%d6, 65535
	seln	%d2, %d2, %d3, %d6
	.loc 2 3051 0
	jltz	%d5, .L5
	sat.hu	%d3, %d15
	ge.u	%d15, %d4, %d15
.LVL3:
	sel	%d2, %d15, %d3, 0
	ret
.LVL4:
.L2:
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 2 2514 0
	mov	%d2, 0
	jlt.u	%d5, %d4, .L5
	.loc 2 2521 0
	sub	%d4, %d5, %d4
.LVL5:
	sat.hu	%d2, %d4
.LVL6:
.L5:
.LBE17:
.LBE16:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_AbsDiff_u32s32_u16, .-Mfx_AbsDiff_u32s32_u16
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
	.uaword	0x477
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiff_u32s32_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1ee
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x212
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
	.uaword	0x238
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
	.string	"Mfx_Prv_Sub_u32s32_u16_Inl"
	.byte	0x2
	.uahalf	0xbe4
	.byte	0x1
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x2e8
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xbe4
	.uaword	0x22a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xbe4
	.uaword	0x204
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xbe6
	.uaword	0x22a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32u32_u16_Inl"
	.byte	0x2
	.uahalf	0x9cc
	.byte	0x1
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x33a
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x9cc
	.uaword	0x204
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x9cc
	.uaword	0x22a
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x9ce
	.uaword	0x22a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiff_u32s32_u16_Inl"
	.byte	0x2
	.uahalf	0x369
	.byte	0x1
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x390
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x369
	.uaword	0x22a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x369
	.uaword	0x204
	.uleb128 0x6
	.string	"res_u16"
	.byte	0x2
	.uahalf	0x36b
	.uaword	0x1e0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_AbsDiff_u32s32_u16"
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
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x22a
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x204
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x33a
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x373
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.uaword	0x367
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0xe
	.uaword	0x37f
	.byte	0x1
	.byte	0x52
	.uleb128 0xf
	.uaword	0x296
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x2
	.uahalf	0x36f
	.uaword	0x441
	.uleb128 0xc
	.uaword	0x2cb
	.uaword	.LLST2
	.uleb128 0xc
	.uaword	0x2bf
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x10
	.uaword	0x2d7
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x2e8
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x2
	.uahalf	0x373
	.uleb128 0xc
	.uaword	0x31d
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	0x311
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x10
	.uaword	0x329
	.uaword	.LLST7
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
	.uleb128 0xe
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
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
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
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"x_value"
.LASF1:
	.string	"y_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
