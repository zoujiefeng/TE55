	.file	"Mfx_RDiv_u16s16_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_u16s16_s8,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_u16s16_s8
	.type	Mfx_RDiv_u16s16_s8, @function
Mfx_RDiv_u16s16_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_u16s16_s8.c"
	.loc 1 35 0
.LVL0:
.LBB18:
.LBB19:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 1399 0
	sh	%d2, %d5, -31
	rsub	%d3, %d2, 0
.LVL1:
	.loc 2 1400 0
	xor	%d15, %d3, %d5
	add	%d15, %d2
.LVL2:
	.loc 2 1403 0
	jz	%d15, .L13
.LVL3:
	.loc 2 1405 0
	div.u	%e6, %d4, %d15
.LBE25:
.LBE24:
	.loc 2 5893 0
	mov	%d7, 1
.LBB28:
.LBB26:
	.loc 2 1414 0
	xor	%d15, %d3, %d6
.LVL4:
	.loc 2 1423 0
	sub	%d15, %d3
.LVL5:
.LBE26:
.LBE28:
	.loc 2 5905 0
	jnz	%d2, .L14
.LVL6:
.L7:
	.loc 2 5919 0
	sh	%d2, %d5, -1
	and	%d6, %d5, 1
.LVL7:
	.loc 2 5916 0
	div.u	%e4, %d4, %d5
.LVL8:
	.loc 2 5919 0
	add	%d2, %d6
.LVL9:
	.loc 2 5926 0
	ge.u	%d2, %d5, %d2
.LVL10:
	cadd	%d15, %d2, %d15, %d7
.LVL11:
.LBE23:
.LBE22:
	.loc 2 5960 0
	ge	%d3, %d15, 128
.LVL12:
	mov	%d2, 127
	jnz	%d3, .L10
.LVL13:
	extr	%d2, %d15, 0, 8
	ge	%d15, %d15, -128
.LVL14:
	sel	%d2, %d15, %d2, -128
	ret
.LVL15:
.L10:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
	.loc 1 37 0
	ret
.LVL16:
.L13:
.LBB35:
.LBB34:
.LBB33:
.LBB32:
.LBB31:
.LBB30:
.LBB29:
.LBB27:
	.loc 2 1403 0
	mov	%d2, 127
	ret
.LVL17:
.L14:
.LBE27:
.LBE29:
	.loc 2 5908 0
	rsub	%d5
.LVL18:
	.loc 2 5907 0
	mov	%d7, -1
	j	.L7
.LBE30:
.LBE31:
.LBE32:
.LBE33:
.LBE34:
.LBE35:
.LFE516:
	.size	Mfx_RDiv_u16s16_s8, .-Mfx_RDiv_u16s16_s8
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
	.uaword	0x590
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_u16s16_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x80
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1cc
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
	.uaword	0x1fa
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x215
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x239
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
	.uaword	0x1af
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
	.string	"Mfx_Prv_Div_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x56c
	.byte	0x1
	.uaword	0x22b
	.byte	0x3
	.uaword	0x340
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x56c
	.uaword	0x251
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x56c
	.uaword	0x22b
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x56e
	.uaword	0x22b
	.uleb128 0x7
	.string	"yAbs_u32"
	.byte	0x2
	.uahalf	0x56f
	.uaword	0x251
	.uleb128 0x7
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x570
	.uaword	0x251
	.uleb128 0x7
	.string	"resAbs_u32"
	.byte	0x2
	.uahalf	0x571
	.uaword	0x251
	.uleb128 0x7
	.string	"tmp1_u32"
	.byte	0x2
	.uahalf	0x572
	.uaword	0x251
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x1741
	.byte	0x1
	.uaword	0x1bf
	.byte	0x3
	.uaword	0x38e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1741
	.uaword	0x251
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1741
	.uaword	0x22b
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1743
	.uaword	0x22b
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u16s16_s8_Inl"
	.byte	0x2
	.uahalf	0x162a
	.byte	0x1
	.uaword	0x1bf
	.byte	0x3
	.uaword	0x3d0
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x162a
	.uaword	0x207
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x162a
	.uaword	0x1ec
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x1700
	.byte	0x1
	.uaword	0x22b
	.byte	0x3
	.uaword	0x455
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1700
	.uaword	0x251
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1700
	.uaword	0x22b
	.uleb128 0x7
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x1702
	.uaword	0x251
	.uleb128 0x7
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x1703
	.uaword	0x251
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1704
	.uaword	0x22b
	.uleb128 0x7
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x1705
	.uaword	0x22b
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_RDiv_u16s16_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1bf
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
	.uaword	0x207
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1ec
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x38e
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.uaword	0x3c3
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x3b7
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	0x340
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x162c
	.uleb128 0xb
	.uaword	0x375
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x369
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0xe
	.uaword	0x381
	.uaword	.LLST6
	.uleb128 0xc
	.uaword	0x3d0
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x1745
	.uleb128 0xb
	.uaword	0x406
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x3fa
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0xe
	.uaword	0x412
	.uaword	.LLST9
	.uleb128 0xe
	.uaword	0x424
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	0x437
	.uaword	.LLST11
	.uleb128 0xe
	.uaword	0x443
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	0x2ad
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.uahalf	0x1707
	.uleb128 0xb
	.uaword	0x2e2
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	0x2d6
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0xe
	.uaword	0x2ee
	.uaword	.LLST15
	.uleb128 0xe
	.uaword	0x2fa
	.uaword	.LLST16
	.uleb128 0xe
	.uaword	0x30b
	.uaword	.LLST17
	.uleb128 0xe
	.uaword	0x31b
	.uaword	.LLST18
	.uleb128 0xe
	.uaword	0x32e
	.uaword	.LLST19
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE516
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x17
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x17
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x17
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x18
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
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
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
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
