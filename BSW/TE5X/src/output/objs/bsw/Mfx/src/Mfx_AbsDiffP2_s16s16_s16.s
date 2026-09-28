	.file	"Mfx_AbsDiffP2_s16s16_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_AbsDiffP2_s16s16_s16,"ax",@progbits
	.align 1
	.global	Mfx_AbsDiffP2_s16s16_s16
	.type	Mfx_AbsDiffP2_s16s16_s16, @function
Mfx_AbsDiffP2_s16s16_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_AbsDiffP2_s16s16_s16.c"
	.loc 1 35 0
.LVL0:
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 1309 0
	jlt	%d6, %d7, .L2
	.loc 2 1312 0
	sub	%d7, %d6, %d7
.LVL1:
	mov	%d2, %d6
	.loc 2 1327 0
	sh	%d5, %d5, %d7
.LVL2:
.L5:
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	.loc 2 2078 0
	lt	%d15, %d5, 1
	and.ge	%d15, %d4, 0
	.loc 2 2076 0
	sub	%d3, %d4, %d5
.LVL3:
	.loc 2 2078 0
	jz	%d15, .L8
	.loc 2 2081 0
	addi	%d6, %d5, -1
	addih	%d6, %d6, 32768
	jlt	%d6, %d4, .L28
.L8:
	.loc 2 2087 0
	ge	%d15, %d5, 1
	and.t	%d15, %d4,31, %d15,0
	jz	%d15, .L10
	.loc 2 2090 0
	addih	%d5, %d5, 32768
.LVL4:
	jlt	%d4, %d5, .L28
.LVL5:
.L10:
.LBE17:
.LBE16:
	.loc 2 379 0
	jltz	%d3, .L31
.LVL6:
.L29:
	mov	%d4, 32767
.LVL7:
	ge	%d15, %d3, %d4
.L9:
.LVL8:
.LBE15:
.LBE14:
.LBB21:
.LBB22:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 3 260 0
	ld.h	%d4, [%SP]0
	sub	%d4, %d2
.LVL9:
	.loc 3 292 0
	ge	%d2, %d4, 0
.LVL10:
	and	%d15, %d2
	mov	%d2, 32767
	jnz	%d15, .L15
	.loc 3 306 0
	sh	%d15, %d3, %d4
	.loc 3 299 0
	jltz	%d4, .L32
.LVL11:
.L14:
	mov.u	%d2, 32768
	mov	%d3, -32768
	jlt	%d15, %d3, 0f
	extr	%d3, %d15, 0, 16
	0:
.LVL12:
	lt	%d2, %d15, %d2
	mov	%d15, 32767
.LVL13:
	sel	%d2, %d2, %d3, %d15
.L15:
.LBE22:
.LBE21:
.LBE13:
.LBE12:
	.loc 1 37 0
	ret
.LVL14:
.L2:
.LBB27:
.LBB26:
	.loc 2 1341 0
	sub	%d6, %d7, %d6
.LVL15:
	mov	%d2, %d7
	.loc 2 1354 0
	sh	%d4, %d4, %d6
.LVL16:
	j	.L5
.LVL17:
.L18:
.LBB24:
.LBB20:
	.loc 2 382 0
	mov	%d15, 1
.L28:
.LBB19:
.LBB18:
	.loc 2 2083 0
	mov	%d3, -1
.LVL18:
	sh	%d3, -1
	j	.L9
.LVL19:
.L31:
.LBE18:
.LBE19:
	.loc 2 382 0
	movh	%d15, 32768
	jeq	%d3, %d15, .L18
	rsub	%d3
.LVL20:
	j	.L29
.LVL21:
.L32:
.LBE20:
.LBE24:
.LBB25:
.LBB23:
	.loc 3 301 0
	rsub	%d2, %d4, 0
.LVL22:
	.loc 3 302 0
	rsub	%d15, %d2, 0
	sh	%d15, %d3, %d15
.LVL23:
	j	.L14
.LBE23:
.LBE25:
.LBE26:
.LBE27:
.LFE516:
	.size	Mfx_AbsDiffP2_s16s16_s16, .-Mfx_AbsDiffP2_s16s16_s16
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
	.uaword	0x603
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_AbsDiffP2_s16s16_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x60
	.uaword	0x214
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
	.uaword	0x23a
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
	.string	"Mfx_Prv_AbsDiff_s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x174
	.byte	0x1
	.uaword	0x206
	.byte	0x3
	.uaword	0x2f6
	.uleb128 0x5
	.string	"x_value"
	.byte	0x2
	.uahalf	0x174
	.uaword	0x206
	.uleb128 0x5
	.string	"y_value"
	.byte	0x2
	.uahalf	0x174
	.uaword	0x206
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x176
	.uaword	0x206
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_AbsDiffP2_s16s16_s16_Inl"
	.byte	0x2
	.uahalf	0x514
	.byte	0x1
	.uaword	0x1d5
	.byte	0x3
	.uaword	0x3a9
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.uahalf	0x514
	.uaword	0x1d5
	.uleb128 0x5
	.string	"y"
	.byte	0x2
	.uahalf	0x514
	.uaword	0x1d5
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.uahalf	0x514
	.uaword	0x1d5
	.uleb128 0x5
	.string	"b"
	.byte	0x2
	.uahalf	0x514
	.uaword	0x1d5
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.uahalf	0x514
	.uaword	0x1d5
	.uleb128 0x6
	.string	"xTmp_s32"
	.byte	0x2
	.uahalf	0x516
	.uaword	0x206
	.uleb128 0x6
	.string	"yTmp_s32"
	.byte	0x2
	.uahalf	0x517
	.uaword	0x206
	.uleb128 0x6
	.string	"absres_s32"
	.byte	0x2
	.uahalf	0x518
	.uaword	0x206
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x519
	.uaword	0x206
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x51a
	.uaword	0x22c
	.byte	0
	.uleb128 0x4
	.string	"Mfx_Prv_Sub_s32s32_s32_Inl"
	.byte	0x2
	.uahalf	0x818
	.byte	0x1
	.uaword	0x206
	.byte	0x3
	.uaword	0x403
	.uleb128 0x5
	.string	"x_value"
	.byte	0x2
	.uahalf	0x818
	.uaword	0x206
	.uleb128 0x5
	.string	"y_value"
	.byte	0x2
	.uahalf	0x818
	.uaword	0x206
	.uleb128 0x6
	.string	"res_s32"
	.byte	0x2
	.uahalf	0x81a
	.uaword	0x206
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_ConvertP2_s32_s16_Inl"
	.byte	0x3
	.byte	0xfd
	.byte	0x1
	.uaword	0x1d5
	.byte	0x3
	.uaword	0x475
	.uleb128 0x9
	.string	"x"
	.byte	0x3
	.byte	0xfd
	.uaword	0x206
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.byte	0xfd
	.uaword	0x1d5
	.uleb128 0x9
	.string	"c"
	.byte	0x3
	.byte	0xfd
	.uaword	0x1d5
	.uleb128 0xa
	.string	"tmp_s32"
	.byte	0x3
	.byte	0xff
	.uaword	0x206
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x100
	.uaword	0x206
	.uleb128 0x6
	.string	"tmp_u32"
	.byte	0x3
	.uahalf	0x101
	.uaword	0x22c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_AbsDiffP2_s16s16_s16"
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
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST2
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.uaword	.LLST3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.uaword	0x2f6
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x34d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.uaword	0x343
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0x339
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	0x32f
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	0x325
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x357
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x368
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x379
	.byte	0x1
	.byte	0x53
	.uleb128 0x12
	.uaword	0x38c
	.uaword	.LLST10
	.uleb128 0x14
	.uaword	0x398
	.uleb128 0x15
	.uaword	0x298
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x556
	.uaword	0x5b2
	.uleb128 0x10
	.uaword	0x2d5
	.uaword	.LLST11
	.uleb128 0x10
	.uaword	0x2c5
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.uaword	0x2e5
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	0x3a9
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0x179
	.uleb128 0x10
	.uaword	0x3e2
	.uaword	.LLST11
	.uleb128 0x10
	.uaword	0x3d2
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x12
	.uaword	0x3f2
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x403
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x559
	.uleb128 0x10
	.uaword	0x440
	.uaword	.LLST17
	.uleb128 0x10
	.uaword	0x437
	.uaword	.LLST18
	.uleb128 0x10
	.uaword	0x42e
	.uaword	.LLST13
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x12
	.uaword	0x449
	.uaword	.LLST20
	.uleb128 0x12
	.uaword	0x458
	.uaword	.LLST21
	.uleb128 0x13
	.uaword	0x464
	.byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x25
	.byte	0x9f
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
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
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
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL1
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL17
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL21
	.uaword	.LFE516
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE516
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
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB25
	.uaword	.LBE25
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
	.string	"shift_s32"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
