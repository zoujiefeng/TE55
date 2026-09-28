	.file	"Mfx_Div_s32s32_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_Div_s32s32_s16,"ax",@progbits
	.align 1
	.global	Mfx_Div_s32s32_s16
	.type	Mfx_Div_s32s32_s16, @function
Mfx_Div_s32s32_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_Div_s32s32_s16.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 696 0
	jnz	%d5, .L2
.LBE14:
.LBE13:
.LBB19:
.LBB20:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
	.loc 3 48 0
	ge	%d4, %d4, 0
.LVL1:
	mov	%d15, 32767
	mov	%d3, -32768
	sel	%d2, %d4, %d15, %d3
	ret
.LVL2:
.L2:
.LBE20:
.LBE19:
.LBB24:
.LBB15:
	.loc 2 705 0
	movh	%d2, 32768
	eq	%d15, %d5, -1
	and.eq	%d15, %d4, %d2
.LBE15:
.LBE24:
.LBB25:
.LBB21:
	.loc 3 53 0
	mov	%d2, 32767
.LBE21:
.LBE25:
.LBB26:
.LBB16:
	.loc 2 705 0
	jz	%d15, .L9
.LVL3:
.L3:
.LBE16:
.LBE26:
.LBE12:
	.loc 1 37 0
	ret
.LVL4:
.L9:
.LBB31:
.LBB27:
.LBB17:
	.loc 2 712 0
	div	%e4, %d4, %d5
.LVL5:
.LBE17:
.LBE27:
.LBB28:
.LBB22:
	.loc 3 40 0
	mov.u	%d3, 32768
.LBE22:
.LBE28:
.LBB29:
.LBB18:
	.loc 2 712 0
	mov	%d15, %d4
.LVL6:
.LBE18:
.LBE29:
.LBB30:
.LBB23:
	.loc 3 40 0
	jge	%d4, %d3, .L3
	.loc 3 44 0
	mov	%d3, -32768
	extr	%d4, %d4, 0, 16
.LVL7:
	ge	%d2, %d15, %d3
	sel	%d2, %d2, %d4, %d3
.LVL8:
.LBE23:
.LBE30:
.LBE31:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_Div_s32s32_s16, .-Mfx_Div_s32s32_s16
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
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x417
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_Div_s32s32_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x70
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
	.byte	0x4
	.byte	0x56
	.uaword	0x207
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
	.byte	0x4
	.byte	0x60
	.uaword	0x238
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.string	"Mfx_Prv_Div_s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x2b2
	.byte	0x1
	.uaword	0x22a
	.byte	0x3
	.uaword	0x2d6
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x2b2
	.uaword	0x22a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x2b2
	.uaword	0x22a
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x2b4
	.uaword	0x22a
	.byte	0
	.uleb128 0x7
	.string	"Mfx_Prv_Sat_s32_s16_Inl"
	.byte	0x3
	.byte	0x24
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0x316
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x3
	.byte	0x24
	.uaword	0x22a
	.uleb128 0x9
	.string	"res_s16"
	.byte	0x3
	.byte	0x26
	.uaword	0x1f9
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Div_s32s32_s16_Inl"
	.byte	0x2
	.uahalf	0x29c
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0x358
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x29c
	.uaword	0x22a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x29c
	.uaword	0x22a
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Mfx_Div_s32s32_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f9
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x22a
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x22a
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.uaword	0x316
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xe
	.uaword	0x34b
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.uaword	0x33f
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0x284
	.uaword	.LBB13
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x29e
	.uaword	0x3ef
	.uleb128 0xe
	.uaword	0x2b9
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.uaword	0x2ad
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.uaword	0x2c5
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x2d6
	.uaword	.LBB19
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x29e
	.uleb128 0xf
	.uaword	0x2fb
	.uaword	.LLST3
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x12
	.uaword	0x306
	.uaword	.LLST5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
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
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1c9
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1c9
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1c9
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LFE516
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
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB30
	.uaword	.LBE30
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
