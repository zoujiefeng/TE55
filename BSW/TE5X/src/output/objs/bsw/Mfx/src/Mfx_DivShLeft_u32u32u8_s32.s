	.file	"Mfx_DivShLeft_u32u32u8_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_u32u32u8_s32,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_u32u32u8_s32
	.type	Mfx_DivShLeft_u32u32u8_s32, @function
Mfx_DivShLeft_u32u32u8_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_u32u32u8_s32.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 4309 0
	mov	%d15, 1
.LBE9:
.LBE8:
	.loc 1 35 0
	mov	%d0, %d5
.LVL1:
.LBB21:
.LBB18:
	.loc 2 4309 0
	sh	%d6, %d15, %d6
.LVL2:
.LBB10:
.LBB11:
	mov	%d2, -1
.LBE11:
.LBE10:
	.loc 2 4310 0
	mul.u	%e4, %d6, %d4
.LVL3:
.LBB15:
.LBB12:
	sh	%d2, -1
	.loc 2 6484 0
	jz	%d0, .L17
	.loc 2 6489 0
	jltz	%d0, .L25
	.loc 2 6517 0
	div.u	%e2, %d5, %d0
	.loc 2 6520 0
	mov	%d3, 0
	.loc 2 6517 0
	mov	%d15, %d2
.LVL4:
	.loc 2 6523 0
	mul	%d6, %d15, %d0
.LVL5:
	sub	%d5, %d6
.LVL6:
	.loc 2 6524 0
	jne	%d15, -1, .L26
.LVL7:
.L14:
.LBE12:
.LBE15:
	.loc 2 4316 0
	mov	%d2, -1
	sh	%d2, -1
.L17:
.LBE18:
.LBE21:
	.loc 1 37 0
	ret
.LVL8:
.L26:
.LBB22:
.LBB19:
.LBB16:
.LBB13:
	.loc 2 6524 0
	lea	%a15, 31
.LVL9:
.L9:
	.loc 2 6530 0
	dextr	%d5, %d5, %d4, 1
.LVL10:
	sh	%d4, 1
	.loc 2 6533 0
	div.u	%e6, %d5, %d0
	.loc 2 6539 0
	mov	%d7, 0
	.loc 2 6533 0
	mov	%d15, %d6
	.loc 2 6539 0
	madd.u	%e6, %e6, %d2, 2
	madd	%d7, %d7, %d3, 2
	.loc 2 6536 0
	mul	%d15, %d0
	.loc 2 6539 0
	mov	%e2, %d7, %d6
.LVL11:
	.loc 2 6536 0
	sub	%d5, %d15
	.loc 2 6542 0
	eq	%d6, %d3, 0
	mov	%d15, %d6
	and.eq	%d15, %d2, -1
	or.ne	%d15, %d3, 0
	jnz	%d15, .L14
	loop	%a15, .L9
	sel	%d6, %d6, %d2, -1
	mov	%d2, %d6
.LVL12:
.LBE13:
.LBE16:
	.loc 2 4316 0
	jltz	%d6, .L14
.L24:
.LBE19:
.LBE22:
	.loc 1 37 0
	ret
.LVL13:
.L25:
.LBB23:
.LBB20:
.LBB17:
.LBB14:
	.loc 2 6493 0
	mul.u	%e2, %d5, 1
.LVL14:
	.loc 2 6496 0
	msub.u	%e4, %e4, %d0, %d5
.LVL15:
	.loc 2 6499 0
	mov	%d15, %d5
	jz	%d5, .L4
.LVL16:
.L5:
	.loc 2 6506 0
	msub.u	%e4, %e4, %d0, %d15
	.loc 2 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL17:
	.loc 2 6499 0
	mov	%d15, %d5
	jnz	%d5, .L5
.LVL18:
.L4:
	.loc 2 6508 0
	div.u	%e4, %d4, %d0
.LVL19:
	.loc 2 6509 0
	madd.u	%e4, %e2, %d4, 1
.LVL20:
	.loc 2 6512 0
	seln	%d6, %d5, %d4, -1
.LVL21:
	mov	%d2, %d6
.LVL22:
.LBE14:
.LBE17:
	.loc 2 4316 0
	jgez	%d6, .L24
	j	.L14
.LBE20:
.LBE23:
.LFE516:
	.size	Mfx_DivShLeft_u32u32u8_s32, .-Mfx_DivShLeft_u32u32u8_s32
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
	.uaword	0x514
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_u32u32u8_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
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
	.uaword	0x23f
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
	.uaword	0x297
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b7
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2df
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2be
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x312
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2ac
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2df
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x2f2
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u32u32u8_s32_Inl"
	.byte	0x2
	.uahalf	0x10ce
	.byte	0x1
	.uaword	0x231
	.byte	0x3
	.uaword	0x3ad
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x10ce
	.uaword	0x257
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x10ce
	.uaword	0x257
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0x10ce
	.uaword	0x1f0
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x10d0
	.uaword	0x2ac
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x10d1
	.uaword	0x257
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x10d2
	.uaword	0x257
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x257
	.byte	0x3
	.uaword	0x42a
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2ac
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x257
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x312
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2ac
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x257
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x284
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_DivShLeft_u32u32u8_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x231
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
	.uaword	0x257
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x257
	.uaword	.LLST1
	.uleb128 0xe
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x325
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x36e
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x362
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x356
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x37c
	.uleb128 0x13
	.uaword	0x38c
	.uaword	.LLST6
	.uleb128 0x12
	.uaword	0x39c
	.uleb128 0x14
	.uaword	0x3ad
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x2
	.uahalf	0x10d9
	.uleb128 0x10
	.uaword	0x3e2
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	0x3d6
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x13
	.uaword	0x3ee
	.uaword	.LLST8
	.uleb128 0x13
	.uaword	0x3ff
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x40f
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x41f
	.uaword	.LLST11
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uahalf	0x1
	.byte	0x50
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
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE516
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
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB16
	.uaword	.LBE16
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
