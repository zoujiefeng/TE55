	.file	"Mfx_DivShLeft_u16u16u8_u8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_u16u16u8_u8,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_u16u16u8_u8
	.type	Mfx_DivShLeft_u16u16u8_u8, @function
Mfx_DivShLeft_u16u16u8_u8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_u16u16u8_u8.c"
	.loc 1 35 0
.LVL0:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 4420 0
	mov	%d15, 1
.LBE27:
.LBE26:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 35 0
	mov	%d0, %d5
.LVL1:
.LBB42:
.LBB40:
.LBB38:
.LBB36:
.LBB34:
.LBB32:
	.loc 2 4420 0
	sh	%d6, %d15, %d6
.LVL2:
	.loc 2 4421 0
	mul.u	%e4, %d6, %d4
.LVL3:
.LBB28:
.LBB29:
	mov	%d2, 255
	.loc 2 6484 0
	jz	%d0, .L12
	.loc 2 6517 0
	div.u	%e6, %d5, %d0
.LVL4:
	.loc 2 6520 0
	mov	%d7, 0
	.loc 2 6517 0
	mov	%d15, %d6
.LVL5:
	.loc 2 6524 0
	jeq	%d15, -1, .L12
	.loc 2 6523 0
	mul	%d15, %d0
	lea	%a15, 31
	sub	%d5, %d15
.LVL6:
.L9:
	.loc 2 6530 0
	dextr	%d5, %d5, %d4, 1
.LVL7:
	sh	%d4, 1
	.loc 2 6533 0
	div.u	%e2, %d5, %d0
	.loc 2 6539 0
	mov	%d3, 0
	.loc 2 6533 0
	mov	%d15, %d2
	.loc 2 6539 0
	madd.u	%e2, %e2, %d6, 2
	madd	%d3, %d3, %d7, 2
	.loc 2 6536 0
	mul	%d15, %d0
	.loc 2 6539 0
	mov	%e6, %d3, %d2
.LVL8:
	.loc 2 6536 0
	sub	%d5, %d15
	.loc 2 6542 0
	eq	%d2, %d7, 0
	mov	%d15, %d2
	and.eq	%d15, %d6, -1
	or.ne	%d15, %d7, 0
	jz	%d15, .L21
	mov	%d2, 255
.L12:
.LBE29:
.LBE28:
.LBE32:
.LBE34:
.LBE36:
.LBE38:
.LBE40:
.LBE42:
	.loc 1 37 0
	ret
.L21:
	loop	%a15, .L9
.LBB43:
.LBB41:
.LBB39:
.LBB37:
.LBB35:
.LBB33:
.LBB31:
.LBB30:
	.loc 2 6551 0
	sel	%d3, %d2, %d7, 0
	sel	%d4, %d2, %d6, -1
.LVL9:
.LBE30:
.LBE31:
.LBE33:
.LBE35:
	.loc 2 4454 0
	eq	%d15, %d3, 0
	and.ge.u	%d15, %d4, 256
	or.ne	%d15, %d3, 0
	and	%d2, %d4, 255
	seln	%d2, %d15, %d2, 255
	ret
.LBE37:
.LBE39:
.LBE41:
.LBE43:
.LFE516:
	.size	Mfx_DivShLeft_u16u16u8_u8, .-Mfx_DivShLeft_u16u16u8_u8
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
	.file 4 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x612
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_u16u16u8_u8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x98
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x212
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1e0
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
	.uaword	0x1d0
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
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x3
	.byte	0x8a
	.uaword	0x296
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b6
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2de
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x256
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x256
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2bd
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x311
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2ab
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2de
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x2f1
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u32u32u8_u32_Inl"
	.byte	0x2
	.uahalf	0x113e
	.byte	0x1
	.uaword	0x256
	.byte	0x3
	.uaword	0x39a
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x113e
	.uaword	0x256
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x113e
	.uaword	0x256
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x113e
	.uaword	0x205
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x1140
	.uaword	0x2ab
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x1141
	.uaword	0x256
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u32u32u8_u8_Inl"
	.byte	0x2
	.uahalf	0x115f
	.byte	0x1
	.uaword	0x205
	.byte	0x3
	.uaword	0x3ff
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x115f
	.uaword	0x256
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x115f
	.uaword	0x256
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x115f
	.uaword	0x205
	.uleb128 0xa
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x1161
	.uaword	0x256
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u16u16u8_u8_Inl"
	.byte	0x2
	.uahalf	0xfb2
	.byte	0x1
	.uaword	0x205
	.byte	0x3
	.uaword	0x454
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xfb2
	.uaword	0x230
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xfb2
	.uaword	0x230
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xfb2
	.uaword	0x205
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x256
	.byte	0x3
	.uaword	0x4d1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2ab
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x256
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x311
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ab
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x256
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x283
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_DivShLeft_u16u16u8_u8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x205
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
	.uaword	0x230
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x230
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x205
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	0x3ff
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xe
	.uaword	0x447
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x43b
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.uaword	0x42f
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0x39a
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0xfb4
	.uleb128 0xe
	.uaword	0x3e2
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x3d6
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.uaword	0x3ca
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x12
	.uaword	0x3ee
	.uleb128 0x10
	.uaword	0x324
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.uahalf	0x1163
	.uleb128 0xe
	.uaword	0x36d
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x361
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.uaword	0x355
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x13
	.uaword	0x379
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x389
	.uaword	.LLST10
	.uleb128 0x10
	.uaword	0x454
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x2
	.uahalf	0x1148
	.uleb128 0xf
	.uaword	0x489
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.uaword	0x47d
	.uaword	.LLST9
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x13
	.uaword	0x495
	.uaword	.LLST12
	.uleb128 0x13
	.uaword	0x4a6
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x4b6
	.uleb128 0x13
	.uaword	0x4c6
	.uaword	.LLST14
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE516
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x12
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1e0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x13
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1e0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"shift"
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
