	.file	"Mfx_RDiv_u8s8_u8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_u8s8_u8,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_u8s8_u8
	.type	Mfx_RDiv_u8s8_u8, @function
Mfx_RDiv_u8s8_u8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_u8s8_u8.c"
	.loc 1 35 0
.LVL0:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 6070 0
	mov	%d2, 0
	jltz	%d5, .L2
.LVL1:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
	.loc 2 6298 0
	mov	%d2, 255
	jz	%d5, .L2
	.loc 2 6305 0
	div.u	%e6, %d4, %d5
	.loc 2 6309 0
	and	%d4, %d5, 1
.LVL2:
	sh	%d5, -1
.LVL3:
	add	%d5, %d4
	.loc 2 6305 0
	mov	%d15, %d6
.LVL4:
	.loc 2 6312 0
	jlt.u	%d7, %d5, .L4
	.loc 2 6314 0
	add	%d15, %d6, 1
.LVL5:
.LBE29:
.LBE28:
	.loc 2 6348 0
	mov	%d3, 256
	jeq	%d15, %d3, .L2
.LVL6:
.L4:
	and	%d2, %d15, 255
.LVL7:
.L2:
.LBE27:
.LBE26:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_RDiv_u8s8_u8, .-Mfx_RDiv_u8s8_u8
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
	.uaword	0x4f6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_u8s8_u8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1ba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1d6
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
	.uaword	0x218
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
	.uaword	0x23e
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
	.string	"Mfx_Prv_RDiv_u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1894
	.byte	0x1
	.uaword	0x230
	.byte	0x3
	.uaword	0x310
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1894
	.uaword	0x230
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1894
	.uaword	0x230
	.uleb128 0x6
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x1896
	.uaword	0x230
	.uleb128 0x6
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x1897
	.uaword	0x230
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1898
	.uaword	0x230
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u32u32_u8_Inl"
	.byte	0x2
	.uahalf	0x18c5
	.byte	0x1
	.uaword	0x1c9
	.byte	0x3
	.uaword	0x35e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x18c5
	.uaword	0x230
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x18c5
	.uaword	0x230
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x18c7
	.uaword	0x230
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u32s32_u8_Inl"
	.byte	0x2
	.uahalf	0x17b1
	.byte	0x1
	.uaword	0x1c9
	.byte	0x3
	.uaword	0x3ac
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x17b1
	.uaword	0x230
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x17b1
	.uaword	0x20a
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x17b3
	.uaword	0x230
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u8s8_u8_Inl"
	.byte	0x2
	.uahalf	0x1901
	.byte	0x1
	.uaword	0x1c9
	.byte	0x3
	.uaword	0x3ec
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1901
	.uaword	0x1c9
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1901
	.uaword	0x1ad
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_RDiv_u8s8_u8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1c9
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x1c9
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1ad
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x3ac
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x3df
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x3d3
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	0x35e
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x2
	.uahalf	0x1903
	.uleb128 0xb
	.uaword	0x393
	.uaword	.LLST4
	.uleb128 0xb
	.uaword	0x387
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0xe
	.uaword	0x39f
	.byte	0x1
	.byte	0x5f
	.uleb128 0xc
	.uaword	0x310
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x2
	.uahalf	0x17bc
	.uleb128 0xb
	.uaword	0x345
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	0x339
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0xf
	.uaword	0x351
	.uleb128 0xc
	.uaword	0x29c
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x2
	.uahalf	0x18c9
	.uleb128 0xb
	.uaword	0x2d2
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	0x2c6
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0xf
	.uaword	0x2de
	.uleb128 0xf
	.uaword	0x2f0
	.uleb128 0x10
	.uaword	0x303
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x34
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
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
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
.LASF2:
	.string	"res_u32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
