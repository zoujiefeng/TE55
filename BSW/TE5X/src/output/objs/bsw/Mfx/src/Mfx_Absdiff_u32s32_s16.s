	.file	"Mfx_Absdiff_u32s32_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_Absdiff_u32s32_s16,"ax",@progbits
	.align 1
	.global	Mfx_Absdiff_u32s32_s16
	.type	Mfx_Absdiff_u32s32_s16, @function
Mfx_Absdiff_u32s32_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_Absdiff_u32s32_s16.c"
	.loc 1 35 0
.LVL0:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 2873 0
	sub	%d15, %d4, %d5
.LVL1:
	.loc 2 2882 0
	mov.u	%d3, 32768
	ge.u	%d2, %d15, %d3
	extr	%d3, %d15, 0, 16
	or.lt.u	%d2, %d15, %d4
	mov	%d6, 32767
	seln	%d2, %d2, %d3, %d6
.LBE13:
.LBE12:
	.loc 2 776 0
	jlez	%d5, .L14
	mov	%d6, -32768
	ge	%d2, %d15, %d6
	sel	%d3, %d2, %d3, %d6
	mov	%d2, 32767
	min.u	%d15, %d15, %d2
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
	.loc 2 2304 0
	addi	%d15, %d5, -32768
	addih	%d15, %d15, 1
	mov	%d2, %d6
	jlt.u	%d15, %d4, .L14
	.loc 2 2313 0
	sub	%d2, %d5, %d4
.LVL4:
	mov	%d3, 32767
	min	%d2, %d2, %d3
.LVL5:
	extr	%d2, %d2, 0, 16
.LBE15:
.LBE14:
.LBE16:
.LBE17:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_Absdiff_u32s32_s16, .-Mfx_Absdiff_u32s32_s16
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
	.uaword	0x47c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_Absdiff_u32s32_s16.c"
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
	.uaword	0x1e1
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
	.string	"Mfx_Prv_Sub_u32s32_s16_Inl"
	.byte	0x2
	.uahalf	0xb34
	.byte	0x1
	.uaword	0x1d3
	.byte	0x3
	.uaword	0x2e8
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xb34
	.uaword	0x22a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xb34
	.uaword	0x204
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xb36
	.uaword	0x22a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Absdiff_u32s32_s16_Inl"
	.byte	0x2
	.uahalf	0x303
	.byte	0x1
	.uaword	0x1d3
	.byte	0x3
	.uaword	0x33e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x303
	.uaword	0x22a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x303
	.uaword	0x204
	.uleb128 0x6
	.string	"res_s16"
	.byte	0x2
	.uahalf	0x305
	.uaword	0x1d3
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32u32_s16_Inl"
	.byte	0x2
	.uahalf	0x8f7
	.byte	0x1
	.uaword	0x1d3
	.byte	0x3
	.uaword	0x3a0
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x8f7
	.uaword	0x204
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x8f7
	.uaword	0x22a
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x8f9
	.uaword	0x204
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x8fa
	.uaword	0x22a
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_Absdiff_u32s32_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d3
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
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x204
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.uaword	0x2e8
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x321
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x315
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x32d
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.uaword	0x296
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x445
	.uleb128 0xa
	.uaword	0x2cb
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x2bf
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0xf
	.uaword	0x2d7
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x33e
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x2
	.uahalf	0x30e
	.uleb128 0xa
	.uaword	0x373
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	0x367
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0xf
	.uaword	0x37f
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x38f
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
