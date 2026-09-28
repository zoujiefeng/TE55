	.file	"Mfx_RDiv_s32s32_u8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s32s32_u8,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s32s32_u8
	.type	Mfx_RDiv_s32s32_u8, @function
Mfx_RDiv_s32s32_u8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s32s32_u8.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 5168 0
	jnz	%d5, .L2
	.loc 2 5171 0
	ge	%d2, %d4, 0
	seln	%d2, %d2, %d2, 255
	ret
.L2:
	.loc 2 5174 0
	movh	%d2, 32768
	eq	%d15, %d5, -1
	and.eq	%d15, %d4, %d2
	mov	%d2, 255
	jz	%d15, .L14
.L3:
.LBE11:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.L14:
.LBB18:
.LBB16:
.LBB14:
.LBB12:
	.loc 2 5181 0
	ge	%d15, %d5, 1
	and.lt	%d15, %d4, 1
	mov	%d2, 0
	jnz	%d15, .L3
	ge	%d3, %d4, 0
	and.t	%d3, %d5,31, %d3,0
	mov	%d2, %d15
	jnz	%d3, .L3
.LVL1:
	.loc 2 5197 0
	mov	%d15, %d5
	.loc 2 5189 0
	jltz	%d4, .L15
.LVL2:
.L6:
	.loc 2 5199 0
	div.u	%e4, %d4, %d15
.LVL3:
	.loc 2 5203 0
	sh	%d6, %d15, -1
	and	%d15, %d15, 1
.LVL4:
	.loc 2 5200 0
	mov	%d3, %d5
	.loc 2 5203 0
	add	%d5, %d15, %d6
.LVL5:
	.loc 2 5199 0
	mov	%d2, %d4
.LVL6:
	.loc 2 5208 0
	ge.u	%d3, %d3, %d5
.LVL7:
	add	%d4, 1
	sel	%d2, %d3, %d4, %d2
.LVL8:
	sat.bu	%d2, %d2
.LVL9:
.LBE12:
.LBE14:
.LBE16:
.LBE18:
	.loc 1 37 0
	ret
.LVL10:
.L15:
.LBB19:
.LBB17:
.LBB15:
.LBB13:
	.loc 2 5191 0
	rsub	%d4
.LVL11:
	.loc 2 5192 0
	rsub	%d15
.LVL12:
	j	.L6
.LBE13:
.LBE15:
.LBE17:
.LBE19:
.LFE516:
	.size	Mfx_RDiv_s32s32_u8, .-Mfx_RDiv_s32s32_u8
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
	.uaword	0x42b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s32s32_u8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1cb
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
	.uaword	0x20d
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
	.uaword	0x233
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
	.string	"Mfx_Prv_RDiv_s32s32_u8_Inl"
	.byte	0x2
	.uahalf	0x1474
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uaword	0x2e3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1474
	.uaword	0x1ff
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1474
	.uaword	0x1ff
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x1476
	.uaword	0x225
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x1429
	.byte	0x1
	.uaword	0x225
	.byte	0x3
	.uaword	0x36f
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1429
	.uaword	0x1ff
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1429
	.uaword	0x1ff
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x142b
	.uaword	0x225
	.uleb128 0x6
	.string	"x_temp_u32"
	.byte	0x2
	.uahalf	0x142c
	.uaword	0x225
	.uleb128 0x6
	.string	"y_temp_u32"
	.byte	0x2
	.uahalf	0x142d
	.uaword	0x225
	.uleb128 0x6
	.string	"remain_u32"
	.byte	0x2
	.uahalf	0x142e
	.uaword	0x225
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_RDiv_s32s32_u8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1be
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
	.uaword	0x1ff
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1ff
	.uaword	.LLST1
	.uleb128 0x9
	.uaword	0x291
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x2c6
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x2ba
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.uaword	0x2e3
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x2
	.uahalf	0x1478
	.uleb128 0xa
	.uaword	0x319
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x30d
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xe
	.uaword	0x325
	.uaword	.LLST6
	.uleb128 0xe
	.uaword	0x335
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	0x348
	.uaword	.LLST8
	.uleb128 0xf
	.uaword	0x35b
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
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
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LFE516
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
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
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
