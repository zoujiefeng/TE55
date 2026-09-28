	.file	"Mfx_Absdiff_u32s32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_Absdiff_u32s32_s32,"ax",@progbits
	.align 1
	.global	Mfx_Absdiff_u32s32_s32
	.type	Mfx_Absdiff_u32s32_s32, @function
Mfx_Absdiff_u32s32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_Absdiff_u32s32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 2936 0
	sub	%d15, %d4, %d5
.LVL1:
	.loc 2 2946 0
	sh	%d3, %d15, -31
	mov	%d2, %d3
	mov	%d6, -1
	or.lt.u	%d2, %d15, %d4
	sh	%d6, -1
	seln	%d2, %d2, %d15, %d6
.LBE15:
.LBE14:
	.loc 2 810 0
	jlez	%d5, .L9
.LBB17:
.LBB16:
	.loc 2 2956 0
	lt.u	%d2, %d5, %d4
	and	%d2, %d3
	seln	%d2, %d2, %d15, %d6
.LBE16:
.LBE17:
.LBB18:
.LBB19:
	.loc 2 2388 0
	sub	%d15, %d5, %d4
.LVL2:
	ge.u	%d5, %d4, %d5
.LVL3:
	sel	%d2, %d5, %d2, %d15
.L9:
.LBE19:
.LBE18:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_Absdiff_u32s32_s32, .-Mfx_Absdiff_u32s32_s32
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
	.uaword	0x46c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_Absdiff_u32s32_s32.c"
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
	.uaword	0x204
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
	.uaword	0x22a
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
	.string	"Mfx_Prv_Sub_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0xb73
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x2da
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xb73
	.uaword	0x21c
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xb73
	.uaword	0x1f6
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xb75
	.uaword	0x21c
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x942
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x33c
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x942
	.uaword	0x1f6
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x942
	.uaword	0x21c
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x944
	.uaword	0x1f6
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x945
	.uaword	0x21c
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Absdiff_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x325
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x392
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x325
	.uaword	0x21c
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x325
	.uaword	0x1f6
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x327
	.uaword	0x1f6
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_Absdiff_u32s32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f6
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
	.uaword	0x21c
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1f6
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	0x33c
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x375
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	0x369
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0xe
	.uaword	0x381
	.byte	0x1
	.byte	0x52
	.uleb128 0xf
	.uaword	0x288
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x2
	.uahalf	0x32c
	.uaword	0x43d
	.uleb128 0xb
	.uaword	0x2bd
	.uaword	.LLST2
	.uleb128 0xc
	.uaword	0x2b1
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x11
	.uaword	0x2c9
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2da
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x2
	.uahalf	0x330
	.uleb128 0x13
	.uaword	0x30f
	.uleb128 0x13
	.uaword	0x303
	.uleb128 0xd
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x14
	.uaword	0x31b
	.uleb128 0x14
	.uaword	0x32b
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
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uaword	.LVL1
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
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE516
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.uaword	.LBB14
	.uaword	.LBE14
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
