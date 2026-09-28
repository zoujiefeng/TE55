	.file	"Mfx_RDiv_s32s32_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s32s32_s8,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s32s32_s8
	.type	Mfx_RDiv_s32s32_s8, @function
Mfx_RDiv_s32s32_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s32s32_s8.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 5012 0
	jnz	%d5, .L2
	.loc 2 5015 0
	ge	%d4, %d4, 0
.LVL1:
	mov	%d2, 127
	sel	%d2, %d4, %d2, -128
	ret
.LVL2:
.L2:
	.loc 2 5020 0
	movh	%d2, 32768
	eq	%d15, %d5, -1
	and.eq	%d15, %d4, %d2
	mov	%d2, 127
	jz	%d15, .L15
.LVL3:
.L4:
.LBE11:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL4:
.L15:
.LBB18:
.LBB16:
.LBB14:
.LBB12:
	.loc 2 5027 0
	div	%e6, %d4, %d5
	.loc 2 5031 0
	mov	%d0, -1
	.loc 2 5010 0
	mov	%d3, 1
	.loc 2 5027 0
	mov	%d15, %d6
.LVL5:
	.loc 2 5028 0
	mov	%d2, %d7
.LVL6:
	.loc 2 5031 0
	jltz	%d4, .L16
.LVL7:
.L5:
	.loc 2 5039 0
	jltz	%d5, .L17
.LVL8:
.L7:
	.loc 2 5050 0
	sh	%d4, %d5, -1
.LVL9:
	and	%d5, %d5, 1
.LVL10:
	add	%d5, %d4
.LVL11:
	.loc 2 5059 0
	add	%d6, %d3
.LVL12:
	ge.u	%d2, %d2, %d5
.LVL13:
	sel	%d15, %d2, %d6, %d15
.LVL14:
.LBE12:
.LBE14:
	.loc 2 5094 0
	ge	%d3, %d15, 128
.LVL15:
	mov	%d2, 127
	jnz	%d3, .L4
.LVL16:
	extr	%d3, %d15, 0, 8
	ge	%d2, %d15, -128
	sel	%d2, %d2, %d3, -128
.LVL17:
.LBE16:
.LBE18:
	.loc 1 37 0
	ret
.LVL18:
.L16:
.LBB19:
.LBB17:
.LBB15:
.LBB13:
	.loc 2 5035 0
	rsub	%d2, %d7, 0
.LVL19:
	mov	%d0, 1
	.loc 2 5034 0
	mov	%d3, -1
	j	.L5
.LVL20:
.L17:
	.loc 2 5042 0
	rsub	%d5
.LVL21:
	.loc 2 5041 0
	mov	%d3, %d0
	j	.L7
.LBE13:
.LBE15:
.LBE17:
.LBE19:
.LFE516:
	.size	Mfx_RDiv_s32s32_s8, .-Mfx_RDiv_s32s32_s8
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
	.uaword	0x42e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s32s32_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x40
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
	.string	"Mfx_Prv_RDiv_s32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x13df
	.byte	0x1
	.uaword	0x1d9
	.byte	0x3
	.uaword	0x2e3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x13df
	.uaword	0x229
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x13df
	.uaword	0x229
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x13e1
	.uaword	0x229
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x138d
	.byte	0x1
	.uaword	0x229
	.byte	0x3
	.uaword	0x36c
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x138d
	.uaword	0x229
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x138d
	.uaword	0x229
	.uleb128 0x6
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x138f
	.uaword	0x24f
	.uleb128 0x6
	.string	"remain_s32"
	.byte	0x2
	.uahalf	0x1390
	.uaword	0x229
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1391
	.uaword	0x229
	.uleb128 0x6
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x1392
	.uaword	0x229
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_RDiv_s32s32_s8"
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
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x229
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x229
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
	.uaword	.LLST4
	.uleb128 0xd
	.uaword	0x2e3
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x13e3
	.uleb128 0xa
	.uaword	0x319
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x30d
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0xc
	.uaword	0x325
	.uaword	.LLST7
	.uleb128 0xc
	.uaword	0x337
	.uaword	.LLST8
	.uleb128 0xc
	.uaword	0x34a
	.uaword	.LLST9
	.uleb128 0xc
	.uaword	0x35a
	.uaword	.LLST10
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
	.uleb128 0x6
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL19
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x29
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1c9
	.byte	0xf7
	.uleb128 0x1af
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1c9
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
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
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB15
	.uaword	.LBE15
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
