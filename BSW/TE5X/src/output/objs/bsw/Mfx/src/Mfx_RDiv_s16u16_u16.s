	.file	"Mfx_RDiv_s16u16_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s16u16_u16,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s16u16_u16
	.type	Mfx_RDiv_s16u16_u16, @function
Mfx_RDiv_s16u16_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s16u16_u16.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d15, %d5
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 5443 0
	mov	%d2, 0
	jltz	%d4, .L7
.LVL1:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
	.loc 2 6298 0
	mov.u	%d2, 65535
	jnz	%d5, .L9
.LVL2:
.L7:
.LBE29:
.LBE28:
.LBE27:
.LBE26:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 37 0
	ret
.LVL3:
.L9:
.LBB37:
.LBB36:
.LBB35:
.LBB34:
.LBB33:
.LBB32:
.LBB31:
.LBB30:
	.loc 2 6305 0
	div.u	%e4, %d4, %d5
.LVL4:
	.loc 2 6306 0
	mov	%e2, %d5, %d4
	.loc 2 6309 0
	and	%d5, %d15, 1
.LVL5:
	sh	%d15, -1
.LVL6:
	add	%d15, %d5
	.loc 2 6314 0
	add	%d4, 1
	ge.u	%d3, %d3, %d15
.LVL7:
	sel	%d2, %d3, %d4, %d2
.LVL8:
	extr.u	%d2, %d2, 0, 16
.LVL9:
.LBE30:
.LBE31:
.LBE32:
.LBE33:
.LBE34:
.LBE35:
.LBE36:
.LBE37:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_RDiv_s16u16_u16, .-Mfx_RDiv_s16u16_u16
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
	.uaword	0x4f7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s16u16_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
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
	.uaword	0x1de
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x21d
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
	.uaword	0x243
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
	.string	"Mfx_Prv_RDiv_u32u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1894
	.byte	0x1
	.uaword	0x235
	.byte	0x3
	.uaword	0x315
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1894
	.uaword	0x235
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1894
	.uaword	0x235
	.uleb128 0x6
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x1896
	.uaword	0x235
	.uleb128 0x6
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x1897
	.uaword	0x235
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1898
	.uaword	0x235
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u32u32_u16_Inl"
	.byte	0x2
	.uahalf	0x1871
	.byte	0x1
	.uaword	0x1eb
	.byte	0x3
	.uaword	0x364
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1871
	.uaword	0x235
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1871
	.uaword	0x235
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1873
	.uaword	0x235
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_u16_Inl"
	.byte	0x2
	.uahalf	0x153e
	.byte	0x1
	.uaword	0x1eb
	.byte	0x3
	.uaword	0x3b3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x153e
	.uaword	0x20f
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x153e
	.uaword	0x235
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1540
	.uaword	0x235
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s16u16_u16_Inl"
	.byte	0x2
	.uahalf	0x131b
	.byte	0x1
	.uaword	0x1eb
	.byte	0x3
	.uaword	0x3f6
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x131b
	.uaword	0x1d0
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x131b
	.uaword	0x1eb
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_RDiv_s16u16_u16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1eb
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
	.uaword	0x1d0
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1eb
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x3b3
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x3e9
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x3dd
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	0x364
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x131d
	.uleb128 0xb
	.uaword	0x39a
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x38e
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0xe
	.uaword	0x3a6
	.byte	0x1
	.byte	0x52
	.uleb128 0xc
	.uaword	0x315
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x1549
	.uleb128 0xb
	.uaword	0x34b
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	0x33f
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0xf
	.uaword	0x357
	.uleb128 0xc
	.uaword	0x2a1
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x1875
	.uleb128 0xb
	.uaword	0x2d7
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	0x2cb
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0xf
	.uaword	0x2e3
	.uleb128 0xf
	.uaword	0x2f5
	.uleb128 0x10
	.uaword	0x308
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 -1
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
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
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB33
	.uaword	.LBE33
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
.LASF2:
	.string	"res_u32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
