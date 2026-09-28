	.file	"Mfx_DivShLeft_u32s32u8_s8.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_DivShLeft_u32s32u8_s8,"ax",@progbits
	.align 1
	.global	Mfx_DivShLeft_u32s32u8_s8
	.type	Mfx_DivShLeft_u32s32u8_s8, @function
Mfx_DivShLeft_u32s32u8_s8:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_DivShLeft_u32s32u8_s8.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
	.loc 2 4088 0
	mov	%d2, 1
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 35 0
	mov	%d15, %d5
.LBB47:
.LBB44:
.LBB40:
.LBB36:
	.loc 2 4088 0
	sh	%d6, %d2, %d6
.LVL1:
	.loc 2 4089 0
	mul.u	%e4, %d4, %d6
.LVL2:
.LBB16:
.LBB17:
	.loc 2 6593 0
	jltz	%d15, .L38
	.loc 2 6600 0
	mov	%d7, %d15
.LVL3:
.LBB18:
.LBB19:
	.loc 2 6481 0
	mov	%d8, %d4
.LVL4:
	mov	%d9, 1
	.loc 2 6484 0
	jnz	%d15, .L5
.LVL5:
.L16:
.LBE19:
.LBE18:
	.loc 2 6596 0
	mov	%d2, 127
.LVL6:
.LBE17:
.LBE16:
.LBE36:
.LBE40:
.LBE44:
.LBE47:
	.loc 1 37 0
	ret
.LVL7:
.L38:
.LBB48:
.LBB45:
.LBB41:
.LBB37:
.LBB33:
.LBB30:
	.loc 2 6595 0
	movh	%d2, 32768
	mov	%d7, %d2
	jeq	%d15, %d2, .L3
	rsub	%d7, %d15, 0
	mov	%d2, %d7
.L3:
.LVL8:
.LBB25:
.LBB20:
	.loc 2 6481 0
	mov	%d8, %d4
.LBE20:
.LBE25:
	.loc 2 6596 0
	mov	%d9, -1
.LBB26:
.LBB21:
	.loc 2 6489 0
	jltz	%d2, .L36
.LVL9:
.L5:
	.loc 2 6517 0
	div.u	%e0, %d5, %d7
	.loc 2 6520 0
	mov	%d1, 0
	.loc 2 6517 0
	mov	%d15, %d0
.LVL10:
	.loc 2 6523 0
	mul	%d6, %d15, %d7
.LVL11:
	sub	%d6, %d5, %d6
	.loc 2 6524 0
	jne	%d15, -1, .L39
.LVL12:
.L27:
.LBE21:
.LBE26:
	.loc 2 6608 0
	mov	%d2, -128
	jne	%d9, -1, .L16
.LBE30:
.LBE33:
.LBE37:
.LBE41:
.LBE45:
.LBE48:
	.loc 1 37 0
	ret
.LVL13:
.L39:
.LBB49:
.LBB46:
.LBB42:
.LBB38:
.LBB34:
.LBB31:
.LBB27:
.LBB22:
	.loc 2 6524 0
	lea	%a15, 31
.LVL14:
.L12:
	.loc 2 6530 0
	dextr	%d6, %d6, %d8, 1
.LVL15:
	sh	%d8, 1
	.loc 2 6533 0
	div.u	%e2, %d6, %d7
	.loc 2 6539 0
	mov	%d3, 0
	.loc 2 6533 0
	mov	%d15, %d2
	.loc 2 6539 0
	madd.u	%e2, %e2, %d0, 2
	madd	%d3, %d3, %d1, 2
	.loc 2 6536 0
	mul	%d15, %d7
	.loc 2 6539 0
	mov	%e0, %d3, %d2
.LVL16:
	.loc 2 6536 0
	sub	%d6, %d15
	.loc 2 6542 0
	eq	%d2, %d1, 0
	mov	%d15, %d2
	and.eq	%d15, %d0, -1
	or.ne	%d15, %d1, 0
	jnz	%d15, .L27
	loop	%a15, .L12
	sel	%d2, %d2, %d0, -1
.LVL17:
.L10:
.LBE22:
.LBE27:
	.loc 2 6606 0
	jltz	%d2, .L27
	.loc 2 6612 0
	mul	%d0, %d9, %d2
.LVL18:
.LBE31:
.LBE34:
.LBE38:
.LBE42:
	.loc 2 4122 0
	ge	%d15, %d0, 128
	jnz	%d15, .L16
.LVL19:
	extr	%d15, %d0, 0, 8
	ge	%d0, %d0, -128
.LVL20:
	sel	%d2, %d0, %d15, -128
.LVL21:
	ret
.LVL22:
.L36:
.LBB43:
.LBB39:
.LBB35:
.LBB32:
.LBB28:
.LBB23:
	.loc 2 6496 0
	movh	%d2, 32768
	msub.u	%e2, %e4, %d2, %d5
	.loc 2 6493 0
	mul.u	%e0, %d5, 1
.LVL23:
	.loc 2 6499 0
	mov	%d15, %d3
	jz	%d3, .L7
	.loc 2 6506 0
	movh	%d4, 32768
.LVL24:
.L8:
	msub.u	%e2, %e2, %d15, %d4
	.loc 2 6503 0
	madd.u	%e0, %e0, %d15, 1
.LVL25:
	.loc 2 6499 0
	mov	%d15, %d3
	jnz	%d3, .L8
.LVL26:
.L7:
	.loc 2 6508 0
	sh	%d2, %d2, -31
.LVL27:
	.loc 2 6509 0
	madd.u	%e4, %e0, %d2, 1
.LVL28:
.LBE23:
.LBE28:
	.loc 2 6596 0
	mov	%d9, -1
.LBB29:
.LBB24:
	.loc 2 6512 0
	seln	%d2, %d5, %d4, -1
	j	.L10
.LBE24:
.LBE29:
.LBE32:
.LBE35:
.LBE39:
.LBE43:
.LBE46:
.LBE49:
.LFE516:
	.size	Mfx_DivShLeft_u32s32u8_s8, .-Mfx_DivShLeft_u32s32u8_s8
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
	.uaword	0x67d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_DivShLeft_u32s32u8_s8.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xb8
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
	.uaword	0x1ed
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x209
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
	.uaword	0x24b
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
	.uaword	0x2a3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Mfx_uint64"
	.byte	0x4
	.byte	0xe
	.uaword	0x1b6
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x252
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x25
	.uaword	0x2fd
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x2c
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x2d
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64s"
	.byte	0x4
	.byte	0x30
	.uaword	0x2dc
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x33
	.uaword	0x330
	.uleb128 0x7
	.string	"u64"
	.byte	0x4
	.byte	0x35
	.uaword	0x2b8
	.uleb128 0x7
	.string	"u64s"
	.byte	0x4
	.byte	0x36
	.uaword	0x2fd
	.byte	0
	.uleb128 0x3
	.string	"Mfx_uint64u"
	.byte	0x4
	.byte	0x37
	.uaword	0x310
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u32s32u8_s32_Inl"
	.byte	0x2
	.uahalf	0xff2
	.byte	0x1
	.uaword	0x23d
	.byte	0x3
	.uaword	0x3b7
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xff2
	.uaword	0x263
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xff2
	.uaword	0x23d
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xff2
	.uaword	0x1fc
	.uleb128 0xb
	.string	"res_s64"
	.byte	0x2
	.uahalf	0xff4
	.uaword	0x2ca
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0xff5
	.uaword	0x263
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_DivShLeft_u32s32u8_s8_Inl"
	.byte	0x2
	.uahalf	0x1013
	.byte	0x1
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x41e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1013
	.uaword	0x263
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1013
	.uaword	0x23d
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0x1013
	.uaword	0x1fc
	.uleb128 0xb
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x1015
	.uaword	0x23d
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_s64s32_s32_Inl"
	.byte	0x2
	.uahalf	0x19ae
	.byte	0x1
	.uaword	0x23d
	.byte	0x3
	.uaword	0x49c
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x19ae
	.uaword	0x2ca
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x19ae
	.uaword	0x23d
	.uleb128 0xb
	.string	"tmp_u64"
	.byte	0x2
	.uahalf	0x19b0
	.uaword	0x2b8
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x19b1
	.uaword	0x263
	.uleb128 0xb
	.string	"div_u32"
	.byte	0x2
	.uahalf	0x19b2
	.uaword	0x263
	.uleb128 0xb
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x19b3
	.uaword	0x23d
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_Div_u64u32_u32_Inl"
	.byte	0x2
	.uahalf	0x1948
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x515
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x2b8
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1948
	.uaword	0x263
	.uleb128 0xb
	.string	"tmp_u64s"
	.byte	0x2
	.uahalf	0x194b
	.uaword	0x330
	.uleb128 0xb
	.string	"res_u64"
	.byte	0x2
	.uahalf	0x194c
	.uaword	0x2b8
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x194d
	.uaword	0x263
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.uahalf	0x194e
	.uaword	0x290
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Mfx_DivShLeft_u32s32u8_s8"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1e0
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x263
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x23d
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1fc
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x3b7
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x12
	.uaword	0x3ff
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	0x3f3
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.uaword	0x3e7
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x15
	.uaword	0x40d
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	0x343
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x2
	.uahalf	0x1017
	.uleb128 0x12
	.uaword	0x38c
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	0x380
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.uaword	0x374
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x15
	.uaword	0x39a
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	0x3aa
	.uaword	.LLST8
	.uleb128 0x16
	.uaword	0x41e
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x2
	.uahalf	0xffc
	.uleb128 0x13
	.uaword	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.uaword	0x447
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x15
	.uaword	0x45f
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	0x46f
	.uleb128 0x15
	.uaword	0x47b
	.uaword	.LLST11
	.uleb128 0x15
	.uaword	0x48b
	.uaword	.LLST12
	.uleb128 0x16
	.uaword	0x49c
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x2
	.uahalf	0x19cc
	.uleb128 0x12
	.uaword	0x4d1
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	0x4c5
	.uaword	.LLST14
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x15
	.uaword	0x4dd
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	0x4ee
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	0x4fe
	.uaword	.LLST17
	.uleb128 0x15
	.uaword	0x50a
	.uaword	.LLST18
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL1
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL24
	.uaword	.LFE516
	.uahalf	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1b6
	.byte	0x31
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL28
	.uaword	.LFE516
	.uahalf	0x1a
	.byte	0xf5
	.uleb128 0x4
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
.LLST17:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
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
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
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
	.string	"tmp_u32"
.LASF1:
	.string	"y_value"
.LASF0:
	.string	"x_value"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
