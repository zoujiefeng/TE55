	.file	"Mfx_DivShLeft_s16u16u8_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s16u16u8_s16,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s16u16u8_s16
	.type	Mfx_DivShLeft_s16u16u8_s16, @function
Mfx_DivShLeft_s16u16u8_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s16u16u8_s16.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d7, %d5
.LVL1:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
.LBB20:
.LBB21:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3812 0
	mov	%d15, 1
	.loc 2 3813 0
	mov	%e4, %d4
.LVL2:
	.loc 2 3812 0
	sh	%d6, %d15, %d6
.LVL3:
	.loc 2 3813 0
	mul.u	%e0, %d6, %d4
	madd	%d1, %d1, %d6, %d5
.LVL4:
.LBB22:
.LBB23:
	.loc 2 6697 0
	mov	%d8, 1
	.loc 2 6700 0
	jltz	%d1, .L31
.L3:
.LVL5:
.LBB24:
.LBB25:
	.loc 2 6481 0
	mov	%d6, %d1
.LVL6:
	.loc 2 6484 0
	jz	%d7, .L9
	.loc 2 6517 0
	div.u	%e2, %d1, %d7
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d15, %d2
.LVL7:
	.loc 2 6524 0
	jeq	%d15, -1, .L9
	.loc 2 6523 0
	mul	%d15, %d7
	lea	%a15, 31
	sub	%d6, %d15
.LVL8:
.L11:
	.loc 2 6530 0
	dextr	%d6, %d6, %d0, 1
.LVL9:
	sh	%d0, 1
	.loc 2 6533 0
	div.u	%e4, %d6, %d7
	.loc 2 6539 0
	mov	%d5, 0
	.loc 2 6533 0
	mov	%d15, %d4
	.loc 2 6539 0
	madd.u	%e4, %e4, %d2, 2
	madd	%d5, %d5, %d3, 2
	.loc 2 6536 0
	mul	%d15, %d7
	.loc 2 6539 0
	mov	%e2, %d5, %d4
.LVL10:
	.loc 2 6536 0
	sub	%d6, %d15
	.loc 2 6542 0
	eq	%d4, %d3, 0
	mov	%d15, %d4
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jnz	%d15, .L9
	loop	%a15, .L11
.LVL11:
	.loc 2 6551 0
	jz	%d4, .L9
.LBE25:
.LBE24:
	.loc 2 6713 0
	jltz	%d2, .L9
	.loc 2 6719 0
	mul	%d2, %d8
.LVL12:
.LBE23:
.LBE22:
.LBE21:
.LBE20:
	.loc 2 3774 0
	mov.u	%d15, 32768
	jge	%d2, %d15, .L13
.LVL13:
	.loc 2 3778 0
	mov	%d15, -32768
	jlt	%d2, %d15, .L15
	extr	%d2, %d2, 0, 16
.LVL14:
	ret
.LVL15:
.L9:
.LBB36:
.LBB34:
.LBB32:
.LBB30:
	.loc 2 6715 0
	jeq	%d8, -1, .L15
.LVL16:
.L13:
.LBB28:
.LBB26:
	.loc 2 6523 0
	mov	%d2, 32767
.LVL17:
.LBE26:
.LBE28:
.LBE30:
.LBE32:
.LBE34:
.LBE36:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	.loc 1 37 0
	ret
.L15:
.LBB41:
.LBB40:
.LBB39:
.LBB38:
.LBB37:
.LBB35:
.LBB33:
.LBB31:
.LBB29:
.LBB27:
	.loc 2 6523 0
	mov	%d2, -32768
	ret
.LVL18:
.L31:
.LBE27:
.LBE29:
	.loc 2 6702 0
	rsub	%d1
	rsub	%d0
	cadd	%d1, %d0, %d1, -1
	.loc 2 6703 0
	mov	%d8, -1
	j	.L3
.LBE31:
.LBE33:
.LBE35:
.LBE37:
.LBE38:
.LBE39:
.LBE40:
.LBE41:
.LFE516:
	.size	Mfx_DivShLeft_s16u16u8_s16, .-Mfx_DivShLeft_s16u16u8_s16
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
	.uaword	0x6f6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s16u16u8_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xa8
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
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1fd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x21c
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x237
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x25b
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
	.uaword	0x1d1
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
	.uaword	0x2b3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b7
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x262
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x30d
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2ec
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x340
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2c8
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x30d
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x320
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32u32u8_s32_Inl"
	.byte	0x2
	.uahalf	0xede
	.byte	0x1
	.uaword	0x24d
	.byte	0x3
	.uaword	0x3c5
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xede
	.uaword	0x24d
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xede
	.uaword	0x273
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xede
	.uaword	0x1f0
	.uleb128 0xa
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xee0
	.uaword	0x2da
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0xee1
	.uaword	0x273
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s16u16u8_s16_Inl"
	.byte	0x2
	.uahalf	0xdc9
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x41b
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xdc9
	.uaword	0x20e
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xdc9
	.uaword	0x229
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xdc9
	.uaword	0x1f0
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32u32u8_s16_Inl"
	.byte	0x2
	.uahalf	0xeb7
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x481
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xeb7
	.uaword	0x24d
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xeb7
	.uaword	0x273
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xeb7
	.uaword	0x1f0
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x2
	.uahalf	0xeb9
	.uaword	0x24d
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64u32_s32_Inl"
	.byte	0x2
	.uahalf	0x1a25
	.byte	0x1
	.uaword	0x24d
	.byte	0x3
	.uaword	0x4ef
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1a25
	.uaword	0x2da
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1a25
	.uaword	0x273
	.uleb128 0xa
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x1a27
	.uaword	0x2c8
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x1a28
	.uaword	0x273
	.uleb128 0xa
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1a29
	.uaword	0x24d
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x273
	.byte	0x3
	.uaword	0x568
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2c8
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x273
	.uleb128 0xa
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x340
	.uleb128 0xa
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2c8
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x273
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x2a0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_DivShLeft_s16u16u8_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x20e
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x229
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x3c5
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x40e
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x402
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x3f6
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0x41b
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0xdcb
	.uleb128 0xf
	.uaword	0x464
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x458
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x44c
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x12
	.uaword	0x470
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	0x353
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0xebb
	.uleb128 0xf
	.uaword	0x39c
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x390
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x384
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x12
	.uaword	0x3a8
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	0x3b8
	.uaword	.LLST14
	.uleb128 0x10
	.uaword	0x481
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x2
	.uahalf	0xee8
	.uleb128 0xf
	.uaword	0x4b6
	.uaword	.LLST15
	.uleb128 0xf
	.uaword	0x4aa
	.uaword	.LLST13
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x12
	.uaword	0x4c2
	.uaword	.LLST17
	.uleb128 0x13
	.uaword	0x4d2
	.uleb128 0x12
	.uaword	0x4de
	.uaword	.LLST18
	.uleb128 0x10
	.uaword	0x4ef
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x2
	.uahalf	0x1a37
	.uleb128 0xf
	.uaword	0x524
	.uaword	.LLST19
	.uleb128 0xf
	.uaword	0x518
	.uaword	.LLST20
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x12
	.uaword	0x530
	.uaword	.LLST21
	.uleb128 0x12
	.uaword	0x541
	.uaword	.LLST22
	.uleb128 0x13
	.uaword	0x551
	.uleb128 0x12
	.uaword	0x55d
	.uaword	.LLST23
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
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE516
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7fff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x8
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE516
	.uahalf	0x9
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL5
	.uaword	.LVL8
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
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB32
	.uaword	.LBE32
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
.LASF2:
	.string	"shift"
.LASF3:
	.string	"tmp_u32"
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
