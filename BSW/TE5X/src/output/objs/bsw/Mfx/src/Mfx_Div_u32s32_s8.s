	.file	"Mfx_Div_u32s32_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_Div_u32s32_s8,"ax",@progbits
	.align 1
	.global	Mfx_Div_u32s32_s8
	.type	Mfx_Div_u32s32_s8, @function
Mfx_Div_u32s32_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_Div_u32s32_s8.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 1399 0
	sh	%d2, %d5, -31
	rsub	%d15, %d2, 0
.LVL1:
	.loc 2 1400 0
	xor	%d5, %d15
.LVL2:
	add	%d5, %d2
.LVL3:
.LBE14:
.LBE13:
.LBB16:
.LBB17:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
	.loc 3 80 0
	mov	%d2, 127
.LBE17:
.LBE16:
.LBB19:
.LBB15:
	.loc 2 1403 0
	jz	%d5, .L2
	.loc 2 1405 0
	div.u	%e4, %d4, %d5
.LVL4:
	.loc 2 1414 0
	mov	%d5, -1
.LVL5:
	.loc 2 1405 0
	mov	%d3, %d4
	.loc 2 1414 0
	ge	%d3, %d3, 0
	xor	%d4, %d15
	sh	%d5, -1
	sel	%d4, %d3, %d4, %d5
.LVL6:
	.loc 2 1423 0
	sub	%d15, %d4, %d15
.LVL7:
.LBE15:
.LBE19:
.LBB20:
.LBB18:
	.loc 3 67 0
	ge	%d3, %d15, 128
	jnz	%d3, .L2
	.loc 3 71 0
	extr	%d3, %d15, 0, 8
	ge	%d15, %d15, -128
.LVL8:
	sel	%d2, %d15, %d3, -128
.LVL9:
.L2:
.LBE18:
.LBE20:
.LBE12:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_Div_u32s32_s8, .-Mfx_Div_u32s32_s8
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
	.uaword	0x484
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_Div_u32s32_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1bb
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
	.byte	0x4
	.byte	0x60
	.uaword	0x20c
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
	.byte	0x4
	.byte	0x6a
	.uaword	0x232
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
	.string	"Mfx_Prv_Div_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x56c
	.byte	0x1
	.uaword	0x1fe
	.byte	0x3
	.uaword	0x327
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x56c
	.uaword	0x224
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x56c
	.uaword	0x1fe
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x56e
	.uaword	0x1fe
	.uleb128 0x6
	.string	"yAbs_u32"
	.byte	0x2
	.uahalf	0x56f
	.uaword	0x224
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x570
	.uaword	0x224
	.uleb128 0x6
	.string	"resAbs_u32"
	.byte	0x2
	.uahalf	0x571
	.uaword	0x224
	.uleb128 0x6
	.string	"tmp1_u32"
	.byte	0x2
	.uahalf	0x572
	.uaword	0x224
	.byte	0
	.uleb128 0x7
	.string	"Mfx_Prv_Sat_s32_s8_Inl"
	.byte	0x3
	.byte	0x3f
	.byte	0x1
	.uaword	0x1ae
	.byte	0x3
	.uaword	0x365
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x3
	.byte	0x3f
	.uaword	0x1fe
	.uleb128 0x9
	.string	"res_s8"
	.byte	0x3
	.byte	0x41
	.uaword	0x1ae
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Div_u32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x5a6
	.byte	0x1
	.uaword	0x1ae
	.byte	0x3
	.uaword	0x3a6
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x5a6
	.uaword	0x224
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x5a6
	.uaword	0x1fe
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Mfx_Div_u32s32_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1ae
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
	.uaword	0x224
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1fe
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	0x365
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x24
	.uleb128 0xd
	.uaword	0x399
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	0x38d
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	0x290
	.uaword	.LBB13
	.uaword	.Ldebug_ranges0+0
	.byte	0x2
	.uahalf	0x5a8
	.uaword	0x45e
	.uleb128 0xd
	.uaword	0x2c5
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	0x2b9
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x10
	.uaword	0x2d1
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	0x2e1
	.uaword	.LLST7
	.uleb128 0x10
	.uaword	0x2f2
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	0x302
	.uleb128 0x11
	.uaword	0x315
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x327
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x5a8
	.uleb128 0xd
	.uaword	0x34b
	.uaword	.LLST9
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.uaword	0x356
	.byte	0x1
	.byte	0x52
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4f
	.byte	0x26
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
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB20
	.uaword	.LBE20
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
