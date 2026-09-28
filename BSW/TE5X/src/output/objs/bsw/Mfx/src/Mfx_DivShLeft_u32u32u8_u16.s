	.file	"Mfx_DivShLeft_u32u32u8_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_u32u32u8_u16,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_u32u32u8_u16
	.type	Mfx_DivShLeft_u32u32u8_u16, @function
Mfx_DivShLeft_u32u32u8_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_u32u32u8_u16.c"
	.loc 1 35 0
.LVL0:
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 4420 0
	mov	%d3, 1
.LBE17:
.LBE16:
.LBE15:
.LBE14:
	.loc 1 35 0
	mov	%d0, %d5
.LVL1:
.LBB28:
.LBB26:
.LBB24:
.LBB22:
	.loc 2 4420 0
	sh	%d6, %d3, %d6
.LVL2:
	.loc 2 4421 0
	mul.u	%e4, %d6, %d4
.LVL3:
.LBB18:
.LBB19:
	mov.u	%d2, 65535
	.loc 2 6484 0
	jz	%d0, .L17
	.loc 2 6489 0
	jltz	%d0, .L24
	.loc 2 6517 0
	div.u	%e6, %d5, %d0
.LVL4:
	.loc 2 6524 0
	mov	%d8, -1
	.loc 2 6520 0
	mov	%d7, 0
	.loc 2 6517 0
	mov	%d15, %d6
.LVL5:
	.loc 2 6523 0
	mul	%d2, %d15, %d0
	.loc 2 6524 0
	mov	%d1, -1
	mov	%d3, 0
	.loc 2 6523 0
	sub	%d5, %d2
.LVL6:
	.loc 2 6524 0
	jne	%d15, -1, .L25
.LVL7:
.L7:
.LBE19:
.LBE18:
.LBE22:
.LBE24:
	.loc 2 4386 0
	eq	%d15, %d3, 0
	movh	%d2, 1
	and.ge.u	%d15, %d1, %d2
	extr.u	%d2, %d8, 0, 16
	or.ne	%d15, %d3, 0
	mov.u	%d3, 65535
.LVL8:
	cmov	%d2, %d15, %d3
.L17:
.LBE26:
.LBE28:
	.loc 1 37 0
	ret
.LVL9:
.L25:
.LBB29:
.LBB27:
.LBB25:
.LBB23:
.LBB21:
.LBB20:
	.loc 2 6524 0
	lea	%a15, 31
.LVL10:
.L9:
	.loc 2 6530 0
	dextr	%d5, %d5, %d4, 1
.LVL11:
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
.LVL12:
	.loc 2 6536 0
	sub	%d5, %d15
	.loc 2 6542 0
	eq	%d2, %d7, 0
	mov	%d15, %d2
	and.eq	%d15, %d6, -1
	or.ne	%d15, %d7, 0
	jnz	%d15, .L13
	loop	%a15, .L9
	sel	%d8, %d2, %d6, -1
	.loc 2 6526 0
	mov	%d1, %d8
	seln	%d3, %d2, %d2, %d7
	j	.L7
.L13:
	.loc 2 6542 0
	mov	%d8, -1
	mov	%d1, -1
	mov	%d3, 0
.LVL13:
	j	.L7
.LVL14:
.L24:
	.loc 2 6493 0
	mul.u	%e2, %d5, 1
.LVL15:
	.loc 2 6496 0
	msub.u	%e4, %e4, %d0, %d5
.LVL16:
	.loc 2 6499 0
	mov	%d15, %d5
	jz	%d5, .L4
.LVL17:
.L5:
	.loc 2 6506 0
	msub.u	%e4, %e4, %d0, %d15
	.loc 2 6503 0
	madd.u	%e2, %e2, %d15, 1
.LVL18:
	.loc 2 6499 0
	mov	%d15, %d5
	jnz	%d5, .L5
.LVL19:
.L4:
	.loc 2 6508 0
	div.u	%e4, %d4, %d0
.LVL20:
	.loc 2 6509 0
	madd.u	%e4, %e2, %d4, 1
.LVL21:
	.loc 2 6512 0
	eq	%d15, %d5, 0
	mov	%d1, %d4
	mov	%d3, %d5
	cmovn	%d1, %d15, -1
	cmovn	%d3, %d15, 0
.LVL22:
	mov	%d8, %d1
	j	.L7
.LBE20:
.LBE21:
.LBE23:
.LBE25:
.LBE27:
.LBE29:
.LFE516:
	.size	Mfx_DivShLeft_u32u32u8_u16, .-Mfx_DivShLeft_u32u32u8_u16
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
	.uaword	0x59e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_u32u32u8_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x58
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x229
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.string	"Mfx_Prv_DivShLeft_u32u32u8_u32_Inl"
	.byte	0x2
	.uahalf	0x113e
	.byte	0x1
	.uaword	0x257
	.byte	0x3
	.uaword	0x39d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x113e
	.uaword	0x257
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x113e
	.uaword	0x257
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0x113e
	.uaword	0x1f0
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x1140
	.uaword	0x2ac
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x1141
	.uaword	0x257
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u32u32u8_u16_Inl"
	.byte	0x2
	.uahalf	0x111b
	.byte	0x1
	.uaword	0x21b
	.byte	0x3
	.uaword	0x405
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x111b
	.uaword	0x257
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x111b
	.uaword	0x257
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0x111b
	.uaword	0x1f0
	.uleb128 0xb
	.string	"res_u32"
	.byte	0x2
	.uahalf	0x111d
	.uaword	0x257
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x257
	.byte	0x3
	.uaword	0x482
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
	.string	"Mfx_DivShLeft_u32u32u8_u16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x21b
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
	.uaword	0x39d
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3e6
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x3da
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x3ce
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x3f4
	.uleb128 0x13
	.uaword	0x325
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x111f
	.uleb128 0x10
	.uaword	0x36e
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x362
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x356
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x12
	.uaword	0x37c
	.uleb128 0x14
	.uaword	0x38c
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x405
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0x1148
	.uleb128 0x10
	.uaword	0x43a
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	0x42e
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x14
	.uaword	0x446
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	0x457
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	0x467
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST14
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
.LLST8:
	.uaword	.LVL1
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
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
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
.LLST11:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1b7
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
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
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL19
	.uaword	.LVL20
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
.LLST14:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
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
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
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
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
