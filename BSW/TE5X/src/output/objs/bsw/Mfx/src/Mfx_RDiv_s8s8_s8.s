	.file	"Mfx_RDiv_s8s8_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RDiv_s8s8_s8,"ax",@progbits
	.align 1
	.global	Mfx_RDiv_s8s8_s8
	.type	Mfx_RDiv_s8s8_s8, @function
Mfx_RDiv_s8s8_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RDiv_s8s8_s8.c"
	.loc 1 35 0
.LVL0:
.LBB14:
.LBB15:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
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
	.loc 2 5028 0
	div	%e6, %d4, %d5
	.loc 2 5031 0
	mov	%d15, -1
	.loc 2 5010 0
	mov	%d3, 1
	.loc 2 5028 0
	mov	%d2, %d7
.LVL3:
	.loc 2 5031 0
	jltz	%d4, .L17
.LVL4:
.L5:
	.loc 2 5039 0
	jltz	%d5, .L18
.LVL5:
.L7:
	.loc 2 5050 0
	sh	%d4, %d5, -1
.LVL6:
	and	%d5, %d5, 1
	add	%d5, %d4
	.loc 2 5027 0
	mov	%d15, %d6
	.loc 2 5057 0
	jlt.u	%d2, %d5, .L8
	.loc 2 5059 0
	add	%d15, %d3, %d6
.LVL7:
.LBE19:
.LBE18:
	.loc 2 5094 0
	ge	%d3, %d15, 128
.LVL8:
	mov	%d2, 127
.LVL9:
	jnz	%d3, .L15
.LVL10:
	.loc 2 5098 0
	lt	%d3, %d15, -128
	mov	%d2, -128
	jz	%d3, .L9
.LVL11:
.L15:
.LBE17:
.LBE16:
.LBE15:
.LBE14:
	.loc 1 37 0
	ret
.LVL12:
.L8:
.LBB25:
.LBB24:
.LBB23:
.LBB22:
	.loc 2 5094 0
	ge	%d6, %d6, 128
.LVL13:
	mov	%d2, 127
.LVL14:
	jnz	%d6, .L15
.LVL15:
.L9:
	extr	%d2, %d15, 0, 8
	ret
.LVL16:
.L17:
.LBB21:
.LBB20:
	.loc 2 5035 0
	rsub	%d2, %d7, 0
.LVL17:
	mov	%d15, 1
	.loc 2 5034 0
	mov	%d3, -1
	j	.L5
.LVL18:
.L18:
	.loc 2 5042 0
	rsub	%d5
.LVL19:
	.loc 2 5041 0
	mov	%d3, %d15
	j	.L7
.LBE20:
.LBE21:
.LBE22:
.LBE23:
.LBE24:
.LBE25:
.LFE516:
	.size	Mfx_RDiv_s8s8_s8, .-Mfx_RDiv_s8s8_s8
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
	.uaword	0x48b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RDiv_s8s8_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1ba
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
	.byte	0x3
	.byte	0x60
	.uaword	0x20b
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
	.uaword	0x231
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
	.string	"Mfx_Prv_RDiv_s32s32_s8_Inl"
	.byte	0x2
	.uahalf	0x13df
	.byte	0x1
	.uaword	0x1ad
	.byte	0x3
	.uaword	0x2e1
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x13df
	.uaword	0x1fd
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x13df
	.uaword	0x1fd
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x13e1
	.uaword	0x1fd
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s8s8_s8_Inl"
	.byte	0x2
	.uahalf	0x15ad
	.byte	0x1
	.uaword	0x1ad
	.byte	0x3
	.uaword	0x321
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x15ad
	.uaword	0x1ad
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x15ad
	.uaword	0x1ad
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x138d
	.byte	0x1
	.uaword	0x1fd
	.byte	0x3
	.uaword	0x3aa
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x138d
	.uaword	0x1fd
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x138d
	.uaword	0x1fd
	.uleb128 0x6
	.string	"y_tmp_u32"
	.byte	0x2
	.uahalf	0x138f
	.uaword	0x223
	.uleb128 0x6
	.string	"remain_s32"
	.byte	0x2
	.uahalf	0x1390
	.uaword	0x1fd
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1391
	.uaword	0x1fd
	.uleb128 0x6
	.string	"incr_s32"
	.byte	0x2
	.uahalf	0x1392
	.uaword	0x1fd
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mfx_RDiv_s8s8_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1ad
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
	.uaword	0x1ad
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1ad
	.uaword	.LLST1
	.uleb128 0x9
	.uaword	0x2e1
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.uaword	0x314
	.uaword	.LLST2
	.uleb128 0xa
	.uaword	0x308
	.uaword	.LLST3
	.uleb128 0xb
	.uaword	0x28f
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x15af
	.uleb128 0xa
	.uaword	0x2c4
	.uaword	.LLST2
	.uleb128 0xa
	.uaword	0x2b8
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0xd
	.uaword	0x2d0
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	0x321
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x13e3
	.uleb128 0xa
	.uaword	0x357
	.uaword	.LLST2
	.uleb128 0xa
	.uaword	0x34b
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0xe
	.uaword	0x363
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.uaword	0x375
	.uaword	.LLST9
	.uleb128 0xd
	.uaword	0x388
	.uaword	.LLST10
	.uleb128 0xd
	.uaword	0x398
	.uaword	.LLST11
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
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
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL17
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE516
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL18
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
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
