	.file	"Mfx_RMulDiv_u16s16u16_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_RMulDiv_u16s16u16_s16,"ax",@progbits
	.align 1
	.global	Mfx_RMulDiv_u16s16u16_s16
	.type	Mfx_RMulDiv_u16s16u16_s16, @function
Mfx_RMulDiv_u16s16u16_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_RMulDiv_u16s16u16_s16.c"
	.loc 1 35 0
.LVL0:
.LBB18:
.LBB19:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 4965 0
	mul	%d4, %d5
.LVL1:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 3 913 0
	jnz	%d6, .L2
	.loc 3 916 0
	mov	%d2, -1
	ge	%d4, %d4, 0
.LVL2:
	sh	%d2, -1
	movh	%d3, 32768
	sel	%d15, %d4, %d2, %d3
.LVL3:
.L6:
	mov.u	%d2, 32768
	mov	%d3, -32768
	jlt	%d15, %d3, 0f
	extr	%d3, %d15, 0, 16
	0:
	lt	%d2, %d15, %d2
	mov	%d15, 32767
.LVL4:
	sel	%d2, %d2, %d3, %d15
.LBE25:
.LBE24:
.LBE23:
.LBE22:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
	.loc 1 37 0
	ret
.LVL5:
.L2:
.LBB35:
.LBB34:
.LBB33:
.LBB32:
.LBB31:
.LBB30:
.LBB28:
.LBB26:
	.loc 3 921 0
	div	%e2, %d4, %d6
.LBE26:
.LBE28:
	.loc 3 5341 0
	mov	%d7, 1
.LBB29:
.LBB27:
	.loc 3 921 0
	mov	%d15, %d2
.LVL6:
.LBE27:
.LBE29:
	.loc 3 5349 0
	jgez	%d4, .L5
	.loc 3 5351 0
	rsub	%d4
.LVL7:
	.loc 3 5352 0
	mov	%d7, -1
.LVL8:
.L5:
	.loc 3 5359 0
	div.u	%e4, %d4, %d6
.LVL9:
	.loc 3 5372 0
	add	%d2, %d7
.LVL10:
	.loc 3 5365 0
	and	%d4, %d6, 1
	sh	%d6, -1
.LVL11:
	add	%d6, %d4
	.loc 3 5372 0
	ge.u	%d3, %d5, %d6
	sel	%d15, %d3, %d2, %d15
	j	.L6
.LBE30:
.LBE31:
.LBE32:
.LBE33:
.LBE34:
.LBE35:
.LFE516:
	.size	Mfx_RMulDiv_u16s16u16_s16, .-Mfx_RMulDiv_u16s16u16_s16
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
	.uaword	0x591
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_RMulDiv_u16s16u16_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
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
	.byte	0x4
	.byte	0x56
	.uaword	0x1e4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1ff
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
	.string	"Mfx_Prv_Div_s32u32_s32_Inl"
	.byte	0x3
	.uahalf	0x37c
	.byte	0x1
	.uaword	0x215
	.byte	0x3
	.uaword	0x2f5
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x37c
	.uaword	0x215
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x37c
	.uaword	0x23b
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x37e
	.uaword	0x215
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s16_Inl"
	.byte	0x3
	.uahalf	0x14b0
	.byte	0x1
	.uaword	0x1d6
	.byte	0x3
	.uaword	0x344
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x14b0
	.uaword	0x215
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x14b0
	.uaword	0x23b
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x14b2
	.uaword	0x215
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RMulDiv_u16s16u16_s16_Inl"
	.byte	0x2
	.uahalf	0x1360
	.byte	0x1
	.uaword	0x1d6
	.byte	0x3
	.uaword	0x3ae
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1360
	.uaword	0x1f1
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1360
	.uaword	0x1d6
	.uleb128 0x7
	.string	"z_value"
	.byte	0x2
	.uahalf	0x1360
	.uaword	0x1f1
	.uleb128 0x8
	.string	"temp_s32"
	.byte	0x2
	.uahalf	0x1362
	.uaword	0x215
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_RDiv_s32u32_s32_Inl"
	.byte	0x3
	.uahalf	0x14d7
	.byte	0x1
	.uaword	0x215
	.byte	0x3
	.uaword	0x445
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x14d7
	.uaword	0x215
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x14d7
	.uaword	0x23b
	.uleb128 0x8
	.string	"y_tmp_u32"
	.byte	0x3
	.uahalf	0x14d9
	.uaword	0x23b
	.uleb128 0x8
	.string	"x_tmp_u32"
	.byte	0x3
	.uahalf	0x14da
	.uaword	0x23b
	.uleb128 0x8
	.string	"remain_u32"
	.byte	0x3
	.uahalf	0x14db
	.uaword	0x23b
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x14dc
	.uaword	0x215
	.uleb128 0x8
	.string	"incr_s32"
	.byte	0x3
	.uahalf	0x14dd
	.uaword	0x215
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"Mfx_RMulDiv_u16s16u16_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d6
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x1f1
	.uaword	.LLST0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x1d6
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"z_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f1
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	0x344
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xe
	.uaword	0x38c
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x380
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.uaword	0x374
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x11
	.uaword	0x39c
	.uaword	.LLST4
	.uleb128 0x12
	.uaword	0x2f5
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x1367
	.uleb128 0xe
	.uaword	0x32b
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	0x31f
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.uaword	0x337
	.byte	0x1
	.byte	0x5f
	.uleb128 0x12
	.uaword	0x3ae
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x3
	.uahalf	0x14b4
	.uleb128 0xe
	.uaword	0x3e4
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	0x3d8
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x11
	.uaword	0x3f0
	.uaword	.LLST9
	.uleb128 0x11
	.uaword	0x402
	.uaword	.LLST10
	.uleb128 0x11
	.uaword	0x414
	.uaword	.LLST11
	.uleb128 0x11
	.uaword	0x427
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	0x433
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x2a7
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x3
	.uahalf	0x14df
	.uleb128 0xe
	.uaword	0x2dc
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	0x2d0
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x11
	.uaword	0x2e8
	.uaword	.LLST16
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
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
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL6
	.uaword	.LVL10
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
.LASF2:
	.string	"res_s32"
.LASF1:
	.string	"y_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
