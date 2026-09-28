	.file	"Mfx_Limit.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_Limit_s16,"ax",@progbits
	.align 1
	.global	Mfx_Limit_s16
	.type	Mfx_Limit_s16, @function
Mfx_Limit_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_Limit.c"
	.loc 1 35 0
.LVL0:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 2 663 0
	mov	%d2, %d4
	jlt	%d6, %d5, .L2
	min	%d6, %d4, %d6
.LVL1:
	lt	%d4, %d5, %d4
.LVL2:
	sel	%d2, %d4, %d6, %d5
.LVL3:
.L2:
.LBE15:
.LBE14:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_Limit_s16, .-Mfx_Limit_s16
.section .text.Mfx_Limit_s32,"ax",@progbits
	.align 1
	.global	Mfx_Limit_s32
	.type	Mfx_Limit_s32, @function
Mfx_Limit_s32:
.LFB517:
	.loc 1 68 0
.LVL4:
.LBB16:
.LBB17:
	.loc 2 696 0
	mov	%d2, %d4
	jlt	%d6, %d5, .L7
	min	%d6, %d4, %d6
.LVL5:
	lt	%d2, %d5, %d4
	sel	%d2, %d2, %d6, %d5
.L7:
.LBE17:
.LBE16:
	.loc 1 70 0
	ret
.LFE517:
	.size	Mfx_Limit_s32, .-Mfx_Limit_s32
.section .text.Mfx_Limit_s8,"ax",@progbits
	.align 1
	.global	Mfx_Limit_s8
	.type	Mfx_Limit_s8, @function
Mfx_Limit_s8:
.LFB518:
	.loc 1 101 0
.LVL6:
.LBB18:
.LBB19:
	.loc 2 729 0
	mov	%d2, %d4
	jlt	%d6, %d5, .L11
	min	%d6, %d4, %d6
.LVL7:
	lt	%d4, %d5, %d4
.LVL8:
	sel	%d2, %d4, %d6, %d5
.LVL9:
.L11:
.LBE19:
.LBE18:
	.loc 1 103 0
	ret
.LFE518:
	.size	Mfx_Limit_s8, .-Mfx_Limit_s8
.section .text.Mfx_Limit_u16,"ax",@progbits
	.align 1
	.global	Mfx_Limit_u16
	.type	Mfx_Limit_u16, @function
Mfx_Limit_u16:
.LFB519:
	.loc 1 134 0
.LVL10:
.LBB20:
.LBB21:
	.loc 2 762 0
	mov	%d2, %d4
	jlt.u	%d6, %d5, .L15
	min.u	%d6, %d4, %d6
.LVL11:
	lt.u	%d4, %d5, %d4
.LVL12:
	sel	%d2, %d4, %d6, %d5
.LVL13:
.L15:
.LBE21:
.LBE20:
	.loc 1 136 0
	ret
.LFE519:
	.size	Mfx_Limit_u16, .-Mfx_Limit_u16
.section .text.Mfx_Limit_u32,"ax",@progbits
	.align 1
	.global	Mfx_Limit_u32
	.type	Mfx_Limit_u32, @function
Mfx_Limit_u32:
.LFB520:
	.loc 1 167 0
.LVL14:
.LBB22:
.LBB23:
	.loc 2 795 0
	mov	%d2, %d4
	jlt.u	%d6, %d5, .L19
	min.u	%d6, %d4, %d6
.LVL15:
	lt.u	%d2, %d5, %d4
	sel	%d2, %d2, %d6, %d5
.L19:
.LBE23:
.LBE22:
	.loc 1 169 0
	ret
.LFE520:
	.size	Mfx_Limit_u32, .-Mfx_Limit_u32
.section .text.Mfx_Limit_u8,"ax",@progbits
	.align 1
	.global	Mfx_Limit_u8
	.type	Mfx_Limit_u8, @function
Mfx_Limit_u8:
.LFB521:
	.loc 1 200 0
.LVL16:
.LBB24:
.LBB25:
	.loc 2 828 0
	mov	%d2, %d4
	jlt.u	%d6, %d5, .L23
	min.u	%d6, %d4, %d6
.LVL17:
	lt.u	%d4, %d5, %d4
.LVL18:
	sel	%d2, %d4, %d6, %d5
.LVL19:
.L23:
.LBE25:
.LBE24:
	.loc 1 202 0
	ret
.LFE521:
	.size	Mfx_Limit_u8, .-Mfx_Limit_u8
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB517
	.uaword	.LFE517-.LFB517
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB518
	.uaword	.LFE518-.LFB518
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB519
	.uaword	.LFE519-.LFB519
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB520
	.uaword	.LFE520-.LFB520
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB521
	.uaword	.LFE521-.LFB521
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x73c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_Limit.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1b3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1cf
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x1ee
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x209
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x22d
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
	.uaword	0x253
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
	.string	"Mfx_Prv_Limit_s16_Inl"
	.byte	0x2
	.uahalf	0x294
	.byte	0x1
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x2fa
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x294
	.uaword	0x1e0
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x294
	.uaword	0x1e0
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x294
	.uaword	0x1e0
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Limit_s32_Inl"
	.byte	0x2
	.uahalf	0x2b5
	.byte	0x1
	.uaword	0x21f
	.byte	0x3
	.uaword	0x343
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x21f
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x21f
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x21f
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Limit_s8_Inl"
	.byte	0x2
	.uahalf	0x2d6
	.byte	0x1
	.uaword	0x1a6
	.byte	0x3
	.uaword	0x38b
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x1a6
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x1a6
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x1a6
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Limit_u16_Inl"
	.byte	0x2
	.uahalf	0x2f7
	.byte	0x1
	.uaword	0x1fb
	.byte	0x3
	.uaword	0x3d4
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x2f7
	.uaword	0x1fb
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x2f7
	.uaword	0x1fb
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x2f7
	.uaword	0x1fb
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Limit_u32_Inl"
	.byte	0x2
	.uahalf	0x318
	.byte	0x1
	.uaword	0x245
	.byte	0x3
	.uaword	0x41d
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x318
	.uaword	0x245
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x318
	.uaword	0x245
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x318
	.uaword	0x245
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Limit_u8_Inl"
	.byte	0x2
	.uahalf	0x339
	.byte	0x1
	.uaword	0x1c2
	.byte	0x3
	.uaword	0x465
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x339
	.uaword	0x1c2
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x339
	.uaword	0x1c2
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x339
	.uaword	0x1c2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Mfx_Limit_s16"
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
	.uaword	0x4e1
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x1e0
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1e0
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x1e0
	.uaword	.LLST1
	.uleb128 0x9
	.uaword	0x2b1
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x2ed
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x2e1
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x2d5
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Mfx_Limit_s32"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	0x21f
	.uaword	.LFB517
	.uaword	.LFE517
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x559
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x43
	.uaword	0x21f
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x43
	.uaword	0x21f
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0x43
	.uaword	0x21f
	.uaword	.LLST4
	.uleb128 0x9
	.uaword	0x2fa
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0x45
	.uleb128 0xa
	.uaword	0x336
	.uaword	.LLST4
	.uleb128 0xb
	.uaword	0x32a
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.uaword	0x31e
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Mfx_Limit_s8"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	0x1a6
	.uaword	.LFB518
	.uaword	.LFE518
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5d4
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x64
	.uaword	0x1a6
	.uaword	.LLST6
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x64
	.uaword	0x1a6
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0x64
	.uaword	0x1a6
	.uaword	.LLST7
	.uleb128 0x9
	.uaword	0x343
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0x66
	.uleb128 0xa
	.uaword	0x37e
	.uaword	.LLST8
	.uleb128 0xb
	.uaword	0x372
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x366
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Mfx_Limit_u16"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB519
	.uaword	.LFE519
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x650
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x85
	.uaword	0x1fb
	.uaword	.LLST10
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x85
	.uaword	0x1fb
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0x85
	.uaword	0x1fb
	.uaword	.LLST11
	.uleb128 0x9
	.uaword	0x38b
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0x87
	.uleb128 0xa
	.uaword	0x3c7
	.uaword	.LLST12
	.uleb128 0xb
	.uaword	0x3bb
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x3af
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Mfx_Limit_u32"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB520
	.uaword	.LFE520
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6c8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa6
	.uaword	0x245
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa6
	.uaword	0x245
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa6
	.uaword	0x245
	.uaword	.LLST14
	.uleb128 0x9
	.uaword	0x3d4
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0xa8
	.uleb128 0xa
	.uaword	0x410
	.uaword	.LLST14
	.uleb128 0xb
	.uaword	0x404
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.uaword	0x3f8
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_Limit_u8"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.uaword	0x1c2
	.uaword	.LFB521
	.uaword	.LFE521
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc7
	.uaword	0x1c2
	.uaword	.LLST16
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc7
	.uaword	0x1c2
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc7
	.uaword	0x1c2
	.uaword	.LLST17
	.uleb128 0x9
	.uaword	0x41d
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0xc9
	.uleb128 0xa
	.uaword	0x458
	.uaword	.LLST18
	.uleb128 0xb
	.uaword	0x44c
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	0x440
	.uaword	.LLST19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL1
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LFE517
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE518
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LFE518
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LFE519
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LFE519
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LFE520
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE521
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL17
	.uaword	.LFE521
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.uaword	.LFB517
	.uaword	.LFE517-.LFB517
	.uaword	.LFB518
	.uaword	.LFE518-.LFB518
	.uaword	.LFB519
	.uaword	.LFE519-.LFB519
	.uaword	.LFB520
	.uaword	.LFE520-.LFB520
	.uaword	.LFB521
	.uaword	.LFE521-.LFB521
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	.LFB517
	.uaword	.LFE517
	.uaword	.LFB518
	.uaword	.LFE518
	.uaword	.LFB519
	.uaword	.LFE519
	.uaword	.LFB520
	.uaword	.LFE520
	.uaword	.LFB521
	.uaword	.LFE521
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"max_value"
.LASF1:
	.string	"min_value"
.LASF0:
	.string	"value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
