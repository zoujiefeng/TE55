	.file	"Mfx_MulShRight_s16s16u8_u8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulShRight_s16s16u8_u8,"ax",@progbits
	.align 1
	.global	Mfx_MulShRight_s16s16u8_u8
	.type	Mfx_MulShRight_s16s16u8_u8, @function
Mfx_MulShRight_s16s16u8_u8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulShRight_s16s16u8_u8.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 3724 0
	mul	%d4, %d5
.LVL1:
.LBB14:
.LBB15:
	.loc 2 1836 0
	rsub	%d15, %d6, 0
	sh	%d15, %d4, %d15
.LVL2:
	.loc 2 1838 0
	jltz	%d4, .L7
.LVL3:
.L2:
.LBE15:
.LBE14:
.LBB17:
.LBB18:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
	.loc 3 94 0
	mov	%d3, 256
	.loc 3 107 0
	mov	%d2, 255
	.loc 3 94 0
	jlt	%d15, %d3, .L8
.LVL4:
.LBE18:
.LBE17:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL5:
.L8:
.LBB24:
.LBB22:
.LBB20:
.LBB19:
	.loc 3 98 0
	and	%d2, %d15, 255
	ge	%d15, %d15, 0
.LVL6:
	cmovn	%d2, %d15, 0
.LVL7:
.LBE19:
.LBE20:
.LBE22:
.LBE24:
	.loc 1 37 0
	ret
.LVL8:
.L7:
.LBB25:
.LBB23:
.LBB21:
.LBB16:
	.loc 2 1840 0
	rsub	%d6, %d6, 32
.LVL9:
	mov	%d2, -1
	sh	%d6, %d2, %d6
	or	%d15, %d6
.LVL10:
	j	.L2
.LBE16:
.LBE21:
.LBE23:
.LBE25:
.LFE516:
	.size	Mfx_MulShRight_s16s16u8_u8, .-Mfx_MulShRight_s16s16u8_u8
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
	.uaword	0x496
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulShRight_s16s16u8_u8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x56
	.uaword	0x1f2
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
	.uaword	0x223
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
	.byte	0x4
	.byte	0x6a
	.uaword	0x249
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
	.string	"Mfx_Prv_ShRight_s32u8_s32_Inl"
	.byte	0x2
	.uahalf	0x727
	.byte	0x1
	.uaword	0x215
	.byte	0x3
	.uaword	0x30e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x727
	.uaword	0x215
	.uleb128 0x6
	.string	"shift"
	.byte	0x2
	.uahalf	0x727
	.uaword	0x1c6
	.uleb128 0x7
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x729
	.uaword	0x23b
	.uleb128 0x7
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x215
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Sat_s32_u8_Inl"
	.byte	0x3
	.byte	0x5a
	.byte	0x1
	.uaword	0x1c6
	.byte	0x3
	.uaword	0x34c
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.byte	0x5a
	.uaword	0x215
	.uleb128 0xa
	.string	"res_u8"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1c6
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_MulShRight_s16s16u8_u8_Inl"
	.byte	0x2
	.uahalf	0xe8a
	.byte	0x1
	.uaword	0x1c6
	.byte	0x3
	.uaword	0x3a8
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xe8a
	.uaword	0x1e4
	.uleb128 0x6
	.string	"y_value"
	.byte	0x2
	.uahalf	0xe8a
	.uaword	0x1e4
	.uleb128 0x6
	.string	"shift"
	.byte	0x2
	.uahalf	0xe8a
	.uaword	0x1c6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_MulShRight_s16s16u8_u8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1c6
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x1e4
	.uaword	.LLST0
	.uleb128 0xd
	.string	"y_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x1e4
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1c6
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	0x34c
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x399
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	0x389
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.uaword	0x37d
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	0x2a7
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0xe8c
	.uaword	0x46e
	.uleb128 0x10
	.uaword	0x2df
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	0x2d3
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x14
	.uaword	0x2ed
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	0x2fd
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x30e
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.uahalf	0xe8c
	.uleb128 0x10
	.uaword	0x332
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x14
	.uaword	0x33d
	.uaword	.LLST8
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0x56
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
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
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
