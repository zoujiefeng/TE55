	.file	"Mfx_RDiv_s32u32_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s32u32_s8,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s32u32_s8
	.type	Mfx_RDiv_s32u32_s8, @function
Mfx_RDiv_s32u32_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s32u32_s8.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 900 0
	movh	%d15, 32768
	eq	%d2, %d5, %d15
	and.eq	%d2, %d4, %d15
	rsub	%d2
	.loc 2 897 0
	jltz	%d5, .L3
	.loc 2 913 0
	jnz	%d5, .L4
	.loc 2 916 0
	jltz	%d4, .L13
.LVL1:
.L12:
.LBE17:
.LBE16:
.LBE15:
.LBE14:
	.loc 2 5406 0
	mov	%d2, 127
	ret
.LVL2:
.L4:
.LBB24:
.LBB22:
.LBB20:
.LBB18:
	.loc 2 921 0
	div	%e6, %d4, %d5
.LBE18:
.LBE20:
	.loc 2 5346 0
	mov	%d15, -3
.LBB21:
.LBB19:
	.loc 2 921 0
	mov	%d2, %d6
.LVL3:
.LBE19:
.LBE21:
	.loc 2 5346 0
	add	%d6, -1
.LVL4:
	addih	%d6, %d6, 32768
	jlt.u	%d15, %d6, .L6
.LVL5:
.L3:
	.loc 2 5341 0
	mov	%d3, 1
	.loc 2 5349 0
	jltz	%d4, .L16
.LVL6:
.L8:
	.loc 2 5359 0
	div.u	%e6, %d4, %d5
	.loc 2 5365 0
	and	%d4, %d5, 1
.LVL7:
	sh	%d5, -1
.LVL8:
	add	%d5, %d4
.LVL9:
	.loc 2 5372 0
	ge.u	%d5, %d7, %d5
.LVL10:
	cadd	%d2, %d5, %d2, %d3
.LVL11:
.L6:
.LBE22:
.LBE24:
	.loc 2 5406 0
	ge	%d15, %d2, 128
	jnz	%d15, .L12
.LVL12:
	.loc 2 5410 0
	lt	%d15, %d2, -128
	jz	%d15, .L17
.LVL13:
.L13:
	mov	%d2, -128
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL14:
.L16:
.LBB27:
.LBB26:
.LBB25:
.LBB23:
	.loc 2 5351 0
	rsub	%d4
.LVL15:
	.loc 2 5352 0
	mov	%d3, -1
	j	.L8
.LVL16:
.L17:
	extr	%d2, %d2, 0, 8
.LVL17:
	ret
.LBE23:
.LBE25:
.LBE26:
.LBE27:
.LFE516:
	.size	Mfx_RDiv_s32u32_s8, .-Mfx_RDiv_s32u32_s8
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
	.uaword	0x4c1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s32u32_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x58
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
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1e6
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
	.uaword	0x237
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
	.uaword	0x1c9
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
	.string	"Mfx_Prv_Div_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x37c
	.byte	0x1
	.uaword	0x229
	.byte	0x3
	.uaword	0x2df
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x229
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x24f
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x37e
	.uaword	0x229
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s8_Inl"
	.byte	0x2
	.uahalf	0x1517
	.byte	0x1
	.uaword	0x1d9
	.byte	0x3
	.uaword	0x32d
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1517
	.uaword	0x229
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1517
	.uaword	0x24f
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1519
	.uaword	0x229
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x14d7
	.byte	0x1
	.uaword	0x229
	.byte	0x3
	.uaword	0x3c4
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x14d7
	.uaword	0x229
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x14d7
	.uaword	0x24f
	.uleb128 0x7
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x14d9
	.uaword	0x24f
	.uleb128 0x7
	.string	"x_tmp_u32"
	.byte	0x2
	.uahalf	0x14da
	.uaword	0x24f
	.uleb128 0x7
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x14db
	.uaword	0x24f
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x14dc
	.uaword	0x229
	.uleb128 0x7
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x14dd
	.uaword	0x229
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_RDiv_s32u32_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d9
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
	.uaword	0x229
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x24f
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x2df
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x314
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	0x308
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xd
	.uaword	0x320
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	0x32d
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x151b
	.uleb128 0xb
	.uaword	0x363
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	0x357
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0xd
	.uaword	0x36f
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	0x381
	.uaword	.LLST8
	.uleb128 0xd
	.uaword	0x393
	.uaword	.LLST9
	.uleb128 0xd
	.uaword	0x3a6
	.uaword	.LLST10
	.uleb128 0xd
	.uaword	0x3b2
	.uaword	.LLST11
	.uleb128 0xe
	.uaword	0x291
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.uahalf	0x14df
	.uleb128 0xb
	.uaword	0x2c6
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	0x2ba
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0xd
	.uaword	0x2d2
	.uaword	.LLST14
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL16
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x25
	.byte	0x74
	.sleb128 0
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
	.byte	0x74
	.sleb128 0
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
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL16
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
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
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
	.string	"res_s32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
