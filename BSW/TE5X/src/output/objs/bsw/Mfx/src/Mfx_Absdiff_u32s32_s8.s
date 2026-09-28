	.file	"Mfx_Absdiff_u32s32_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_Absdiff_u32s32_s8,"ax",@progbits
	.align 1
	.global	Mfx_Absdiff_u32s32_s8
	.type	Mfx_Absdiff_u32s32_s8, @function
Mfx_Absdiff_u32s32_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_Absdiff_u32s32_s8.c"
	.loc 1 35 0
.LVL0:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 2988 0
	sub	%d15, %d4, %d5
.LVL1:
	.loc 2 2996 0
	lt.u	%d2, %d15, %d4
	extr	%d3, %d15, 0, 8
	or.ge.u	%d2, %d15, 128
	seln	%d2, %d2, %d3, 127
.LBE13:
.LBE12:
	.loc 2 844 0
	jlez	%d5, .L14
	ge	%d2, %d15, -128
	sel	%d3, %d2, %d3, -128
	min.u	%d15, %d15, 127
.LVL2:
	lt.u	%d2, %d5, %d4
	sel	%d2, %d2, %d15, %d3
	jlt.u	%d4, %d5, .L16
.L14:
.LBE11:
.LBE10:
	.loc 1 37 0
	ret
.L16:
.LVL3:
.LBB17:
.LBB16:
.LBB14:
.LBB15:
	.loc 2 2442 0
	addi	%d15, %d5, 128
	mov	%d2, -128
	jlt.u	%d15, %d4, .L14
	.loc 2 2451 0
	sub	%d2, %d5, %d4
.LVL4:
	min	%d2, %d2, 127
.LVL5:
	extr	%d2, %d2, 0, 8
.LBE15:
.LBE14:
.LBE16:
.LBE17:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_Absdiff_u32s32_s8, .-Mfx_Absdiff_u32s32_s8
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
	.uaword	0x475
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_Absdiff_u32s32_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1bf
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x210
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x236
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_u32s32_s8_Inl"
	.byte	0x2
	.uahalf	0xba7
	.byte	0x1
	.uaword	0x1b2
	.byte	0x3
	.uaword	0x2e5
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xba7
	.uaword	0x228
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xba7
	.uaword	0x202
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xba9
	.uaword	0x228
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Absdiff_u32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x347
	.byte	0x1
	.uaword	0x1b2
	.byte	0x3
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x347
	.uaword	0x228
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x347
	.uaword	0x202
	.uleb128 0x6
	.string	"res_s8"
	.byte	0x2
	.uahalf	0x349
	.uaword	0x1b2
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32u32_s8_Inl"
	.byte	0x2
	.uahalf	0x981
	.byte	0x1
	.uaword	0x1b2
	.byte	0x3
	.uaword	0x39a
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x981
	.uaword	0x202
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x981
	.uaword	0x228
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x983
	.uaword	0x202
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x984
	.uaword	0x228
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_Absdiff_u32s32_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1b2
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
	.uaword	0x228
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x202
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.uaword	0x2e5
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x31d
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x311
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x329
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.uaword	0x294
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x2
	.uahalf	0x34e
	.uaword	0x43e
	.uleb128 0xa
	.uaword	0x2c8
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x2bc
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0xf
	.uaword	0x2d4
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x339
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x2
	.uahalf	0x352
	.uleb128 0xa
	.uaword	0x36d
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	0x361
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0xf
	.uaword	0x379
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x389
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
	.uleb128 0x3
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
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
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
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
