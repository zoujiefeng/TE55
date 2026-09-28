	.file	"Mfx_DivShLeft_s32u32u8_u8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_s32u32u8_u8,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_s32u32u8_u8
	.type	Mfx_DivShLeft_s32u32u8_u8, @function
Mfx_DivShLeft_s32u32u8_u8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_s32u32u8_u8.c"
	.loc 1 35 0
.LVL0:
	.loc 1 35 0
	mov	%d0, %d5
.LVL1:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 3919 0
	mov	%d2, 0
	jltz	%d4, .L19
.LVL2:
	.loc 2 3929 0
	mov	%e4, %d4
	.loc 2 3928 0
	mov	%d15, 1
	sh	%d15, %d15, %d6
	.loc 2 3929 0
	mul.u	%e6, %d15, %d4
.LVL3:
	madd	%d7, %d7, %d15, %d5
.LVL4:
.LBB14:
.LBB15:
	mov	%d2, 255
	.loc 2 6484 0
	jz	%d0, .L19
	.loc 2 6489 0
	jltz	%d0, .L26
	.loc 2 6517 0
	div.u	%e2, %d7, %d0
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d15, %d2
.LVL5:
	.loc 2 6523 0
	mul	%d4, %d15, %d0
.LVL6:
	sub	%d7, %d4
	.loc 2 6524 0
	jeq	%d15, -1, .L16
	lea	%a15, 31
.LVL7:
.L10:
	.loc 2 6530 0
	dextr	%d7, %d7, %d6, 1
.LVL8:
	sh	%d6, 1
	.loc 2 6533 0
	div.u	%e4, %d7, %d0
	.loc 2 6539 0
	mov	%d5, 0
	.loc 2 6533 0
	mov	%d15, %d4
	.loc 2 6539 0
	madd.u	%e4, %e4, %d2, 2
	madd	%d5, %d5, %d3, 2
	.loc 2 6536 0
	mul	%d15, %d0
	.loc 2 6539 0
	mov	%e2, %d5, %d4
.LVL9:
	.loc 2 6536 0
	sub	%d7, %d15
	.loc 2 6542 0
	eq	%d4, %d3, 0
	mov	%d15, %d4
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jz	%d15, .L27
.LVL10:
.L16:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 2 3965 0
	mov	%d2, 255
.LVL11:
.L19:
.LBE11:
.LBE10:
	.loc 1 37 0
	ret
.LVL12:
.L27:
	loop	%a15, .L10
	sel	%d2, %d4, %d2, -1
.LVL13:
	j	.L8
.LVL14:
.L26:
.LBB21:
.LBB20:
.LBB19:
.LBB18:
.LBB17:
.LBB16:
	.loc 2 6493 0
	mul.u	%e2, %d7, 1
.LVL15:
	.loc 2 6496 0
	msub.u	%e6, %e6, %d0, %d7
.LVL16:
	.loc 2 6499 0
	mov	%d15, %d7
.LVL17:
	jz	%d7, .L5
.L6:
.LVL18:
	.loc 2 6506 0
	msub.u	%e6, %e6, %d0, %d15
	.loc 2 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL19:
	.loc 2 6499 0
	mov	%d15, %d7
	jnz	%d7, .L6
.LVL20:
.L5:
	.loc 2 6508 0
	div.u	%e6, %d6, %d0
.LVL21:
	.loc 2 6509 0
	madd.u	%e6, %e2, %d6, 1
.LVL22:
	.loc 2 6512 0
	seln	%d2, %d7, %d6, -1
.LVL23:
.L8:
.LBE16:
.LBE17:
.LBE18:
.LBE19:
	.loc 2 3965 0
	ge.u	%d15, %d2, 256
	jnz	%d15, .L16
	and	%d2, %d2, 255
.LVL24:
	ret
.LBE20:
.LBE21:
.LFE516:
	.size	Mfx_DivShLeft_s32u32u8_u8, .-Mfx_DivShLeft_s32u32u8_u8
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
	.uaword	0x5b4
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_s32u32u8_u8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x48
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
	.uaword	0x1fc
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
	.uaword	0x23e
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
	.string	"Mfx_Prv_DivShLeft_s32u32u8_u32_Inl"
	.byte	0x2
	.uahalf	0xf48
	.byte	0x1
	.uaword	0x256
	.byte	0x3
	.uaword	0x3ac
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xf48
	.uaword	0x230
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xf48
	.uaword	0x256
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xf48
	.uaword	0x1ef
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0xf4a
	.uaword	0x2ab
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0xf4b
	.uaword	0x256
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xf4c
	.uaword	0x256
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_s32u32u8_u8_Inl"
	.byte	0x2
	.uahalf	0xf76
	.byte	0x1
	.uaword	0x1ef
	.byte	0x3
	.uaword	0x413
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xf76
	.uaword	0x230
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xf76
	.uaword	0x256
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xf76
	.uaword	0x1ef
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xf78
	.uaword	0x256
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x256
	.byte	0x3
	.uaword	0x490
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
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x311
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ab
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x256
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x283
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_DivShLeft_s32u32u8_u8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1ef
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
	.uaword	0x230
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x256
	.uaword	.LLST1
	.uleb128 0xe
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1ef
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x3ac
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3f4
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x3e8
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x3dc
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x402
	.uleb128 0x13
	.uaword	0x324
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0xf7a
	.uleb128 0x10
	.uaword	0x36d
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x361
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x355
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.uaword	0x37b
	.uleb128 0x14
	.uaword	0x38b
	.uaword	.LLST9
	.uleb128 0x14
	.uaword	0x39b
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x413
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0xf5c
	.uleb128 0x10
	.uaword	0x448
	.uaword	.LLST11
	.uleb128 0x15
	.uaword	0x43c
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x14
	.uaword	0x454
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	0x465
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	0x475
	.uaword	.LLST14
	.uleb128 0x14
	.uaword	0x485
	.uaword	.LLST15
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
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
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
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
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1b6
	.byte	0x12
	.byte	0xf4
	.uleb128 0x1b6
	.byte	0x8
	.uaxword	0xffffffff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0xe
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL23
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
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
