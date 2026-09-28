	.file	"Mfx_AbsDiffP2_u16s16_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiffP2_u16s16_s16,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiffP2_u16s16_s16
	.type	Mfx_AbsDiffP2_u16s16_s16, @function
Mfx_AbsDiffP2_u16s16_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiffP2_u16s16_s16.c"
	.loc 1 35 0
.LVL0:
.LBB16:
.LBB17:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 1550 0
	sub	%d3, %d7, %d6
	mov	%d0, %d7
.LVL1:
	.loc 2 1551 0
	sh	%d3, %d4, %d3
.LVL2:
	.loc 2 1554 0
	mov	%d15, %d5
	.loc 2 1519 0
	jlt	%d6, %d7, .L5
	.loc 2 1522 0
	sub	%d7, %d6, %d7
.LVL3:
	.loc 2 1536 0
	sh	%d15, %d5, %d7
	.loc 2 1531 0
	lt	%d5, %d5, 0
.LVL4:
	.loc 2 1522 0
	mov	%d0, %d6
.LVL5:
	.loc 2 1531 0
	sel	%d15, %d5, %d15, %d15
.LVL6:
	.loc 2 1541 0
	mov	%d3, %d4
.LVL7:
.L5:
.LBB18:
.LBB19:
.LBB20:
.LBB21:
	.loc 2 2936 0
	sub	%d4, %d3, %d15
.LVL8:
	.loc 2 2946 0
	sh	%d5, %d4, -31
	mov	%d2, %d5
	mov	%d6, -1
.LVL9:
	or.lt.u	%d2, %d4, %d3
	sh	%d6, -1
	seln	%d2, %d2, %d4, %d6
.LBE21:
.LBE20:
	.loc 2 810 0
	jlez	%d15, .L9
.LBB23:
.LBB22:
	.loc 2 2956 0
	lt.u	%d2, %d15, %d3
	and	%d2, %d5
	seln	%d2, %d2, %d4, %d6
.LBE22:
.LBE23:
.LBB24:
.LBB25:
	.loc 2 2388 0
	sub	%d4, %d15, %d3
.LVL10:
	ge.u	%d15, %d3, %d15
.LVL11:
	cmovn	%d2, %d15, %d4
.L9:
.LVL12:
.LBE25:
.LBE24:
.LBE19:
.LBE18:
.LBB26:
.LBB27:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 3 260 0
	ld.h	%d15, [%SP]0
	sub	%d0, %d15, %d0
.LVL13:
	.loc 3 269 0
	ge	%d15, %d0, 0
	.loc 3 265 0
	jltz	%d2, .L28
	.loc 3 292 0
	mov	%d5, 32767
	ge	%d3, %d2, %d5
.LVL14:
	and	%d15, %d3
	jz	%d15, .L29
	.loc 3 294 0
	mov	%d15, %d5
.LVL15:
.L18:
	extr	%d2, %d15, 0, 16
	ret
.LVL16:
.L29:
	.loc 3 306 0
	sh	%d15, %d2, %d0
	.loc 3 299 0
	jltz	%d0, .L30
.LVL17:
.L13:
	.loc 3 313 0
	mov.u	%d3, 32768
	mov	%d2, 32767
.LVL18:
	jlt	%d15, %d3, .L31
.LBE27:
.LBE26:
.LBE17:
.LBE16:
	.loc 1 37 0
	ret
.LVL19:
.L30:
.LBB31:
.LBB30:
.LBB29:
.LBB28:
	.loc 3 301 0
	rsub	%d0
.LVL20:
	.loc 3 302 0
	rsub	%d15, %d0, 0
	sh	%d15, %d2, %d15
.LVL21:
	j	.L13
.LVL22:
.L28:
	mov	%d4, -32767
	lt	%d3, %d2, %d4
.LVL23:
	.loc 3 269 0
	and	%d15, %d3
	jz	%d15, .L32
	.loc 3 271 0
	mov	%d15, -32768
	j	.L18
.L32:
	.loc 3 284 0
	rsub	%d3, %d2, 0
	.loc 3 285 0
	sh	%d15, %d2, %d0
	.loc 3 276 0
	jgez	%d0, .L13
.LVL24:
	.loc 3 278 0
	rsub	%d0
.LVL25:
	.loc 3 279 0
	rsub	%d15, %d0, 0
	sh	%d15, %d3, %d15
	.loc 3 280 0
	rsub	%d15
.LVL26:
	j	.L13
.LVL27:
.L31:
	.loc 3 317 0
	mov	%d2, -32768
	jge	%d15, %d2, .L18
.LBE28:
.LBE29:
.LBE30:
.LBE31:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_AbsDiffP2_u16s16_s16, .-Mfx_AbsDiffP2_u16s16_s16
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
	.uaword	0x675
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiffP2_u16s16_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x48
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
	.uaword	0x1e3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1fe
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x60
	.uaword	0x222
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
	.uaword	0x248
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
	.string	"Mfx_Prv_Sub_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0xb73
	.byte	0x1
	.uaword	0x214
	.byte	0x3
	.uaword	0x2f8
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xb73
	.uaword	0x23a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xb73
	.uaword	0x214
	.uleb128 0x6
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xb75
	.uaword	0x23a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x942
	.byte	0x1
	.uaword	0x214
	.byte	0x3
	.uaword	0x35a
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x942
	.uaword	0x214
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x942
	.uaword	0x23a
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x944
	.uaword	0x214
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x945
	.uaword	0x23a
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiffP2_u16s16_s16_Inl"
	.byte	0x2
	.uahalf	0x5e7
	.byte	0x1
	.uaword	0x1d5
	.byte	0x3
	.uaword	0x3fd
	.uleb128 0x7
	.string	"x"
	.byte	0x2
	.uahalf	0x5e7
	.uaword	0x1f0
	.uleb128 0x7
	.string	"y"
	.byte	0x2
	.uahalf	0x5e7
	.uaword	0x1d5
	.uleb128 0x7
	.string	"a"
	.byte	0x2
	.uahalf	0x5e7
	.uaword	0x1d5
	.uleb128 0x7
	.string	"b"
	.byte	0x2
	.uahalf	0x5e7
	.uaword	0x1d5
	.uleb128 0x7
	.string	"c"
	.byte	0x2
	.uahalf	0x5e7
	.uaword	0x1d5
	.uleb128 0x6
	.string	"xTmp_u32"
	.byte	0x2
	.uahalf	0x5e9
	.uaword	0x23a
	.uleb128 0x6
	.string	"yTmp_s32"
	.byte	0x2
	.uahalf	0x5ea
	.uaword	0x214
	.uleb128 0x6
	.string	"absres_s32"
	.byte	0x2
	.uahalf	0x5eb
	.uaword	0x214
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x5ec
	.uaword	0x214
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Absdiff_u32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x325
	.byte	0x1
	.uaword	0x214
	.byte	0x3
	.uaword	0x453
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x325
	.uaword	0x23a
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x325
	.uaword	0x214
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x327
	.uaword	0x214
	.byte	0
	.uleb128 0x9
	.string	"Mfx_Prv_ConvertP2_s32_s16_Inl"
	.byte	0x3
	.byte	0xfd
	.byte	0x1
	.uaword	0x1d5
	.byte	0x3
	.uaword	0x4c5
	.uleb128 0xa
	.string	"x"
	.byte	0x3
	.byte	0xfd
	.uaword	0x214
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.byte	0xfd
	.uaword	0x1d5
	.uleb128 0xa
	.string	"c"
	.byte	0x3
	.byte	0xfd
	.uaword	0x1d5
	.uleb128 0xb
	.string	"tmp_s32"
	.byte	0x3
	.byte	0xff
	.uaword	0x214
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x100
	.uaword	0x214
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x101
	.uaword	0x23a
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_AbsDiffP2_u16s16_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d5
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f0
	.uaword	.LLST0
	.uleb128 0xd
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST1
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST2
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST3
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.uaword	0x35a
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.uaword	0x3a7
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	0x39d
	.uaword	.LLST5
	.uleb128 0x11
	.uaword	0x393
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	0x389
	.uaword	.LLST7
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x13
	.uaword	0x3bb
	.uaword	.LLST8
	.uleb128 0x14
	.uaword	0x3cc
	.uleb128 0x15
	.uaword	0x3dd
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.uaword	0x3f0
	.uaword	.LLST9
	.uleb128 0x16
	.uaword	0x3fd
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x2
	.uahalf	0x619
	.uaword	0x628
	.uleb128 0x17
	.uaword	0x436
	.uleb128 0x11
	.uaword	0x42a
	.uaword	.LLST10
	.uleb128 0x18
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x13
	.uaword	0x442
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	0x2a6
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x32c
	.uaword	0x5f7
	.uleb128 0x17
	.uaword	0x2db
	.uleb128 0x11
	.uaword	0x2cf
	.uaword	.LLST12
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.uaword	0x2e7
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2f8
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x2
	.uahalf	0x330
	.uleb128 0x17
	.uaword	0x32d
	.uleb128 0x17
	.uaword	0x321
	.uleb128 0x18
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x14
	.uaword	0x339
	.uleb128 0x14
	.uaword	0x349
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x453
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0x61c
	.uleb128 0x11
	.uaword	0x490
	.uaword	.LLST14
	.uleb128 0x11
	.uaword	0x487
	.uaword	.LLST15
	.uleb128 0x11
	.uaword	0x47e
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x13
	.uaword	0x499
	.uaword	.LLST17
	.uleb128 0x13
	.uaword	0x4a8
	.uaword	.LLST18
	.uleb128 0x13
	.uaword	0x4b4
	.uaword	.LLST19
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
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
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL3
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x25
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
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
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
.LASF1:
	.string	"y_value"
.LASF2:
	.string	"shift_s32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
