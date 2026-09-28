	.file	"Mfx_MulShRight_s32s32u8_u16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulShRight_s32s32u8_u16,"ax",@progbits
	.align 1
	.global	Mfx_MulShRight_s32s32u8_u16
	.type	Mfx_MulShRight_s32s32u8_u16, @function
Mfx_MulShRight_s32s32u8_u16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulShRight_s32s32u8_u16.c"
	.loc 1 35 0
.LVL0:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 5378 0
	lt.u	%d2, %d6, 32
.LBE15:
.LBE14:
	.loc 2 3786 0
	mul	%e4, %d4, %d5
.LVL1:
.LBB18:
.LBB16:
	.loc 2 5378 0
	jnz	%d2, .L2
	.loc 2 5380 0
	addi	%d6, %d6, -32
.LVL2:
	and	%d6, %d6, 255
.LVL3:
	.loc 2 5383 0
	jltz	%d5, .L18
	.loc 2 5396 0
	rsub	%d7, %d6, 0
.LVL4:
	sh	%d7, %d5, %d7
.LVL5:
	.loc 2 5398 0
	mov	%d3, 0
	.loc 2 5393 0
	jz	%d6, .L19
.LVL6:
.L5:
.LBE16:
.LBE18:
	.loc 2 3792 0
	mov	%d2, -1
	sh	%d2, -1
	eq	%d15, %d3, 0
	and.ge.u	%d15, %d7, %d2
	or.ge	%d15, %d3, 1
.LBE13:
.LBE12:
	.loc 2 3859 0
	mov.u	%d2, 65535
.LBB23:
.LBB20:
	.loc 2 3792 0
	jnz	%d15, .L15
	movh	%d2, 32768
	eq	%d15, %d3, -1
	and.ge.u	%d15, %d7, %d2
	or.ge	%d15, %d3, 0
	cmovn	%d3, %d15, -1
.LBE20:
.LBE23:
	.loc 2 3859 0
	eq	%d4, %d3, 0
.LVL7:
.LBB24:
.LBB21:
	.loc 2 3792 0
	cmovn	%d7, %d15, %d2
.LVL8:
.LBE21:
.LBE24:
	.loc 2 3859 0
	mov	%d15, %d4
	and.eq	%d15, %d7, 0
	or.lt	%d15, %d3, 0
	mov	%d2, 0
	jnz	%d15, .L15
	mov.u	%d15, 65535
	and.ge.u	%d4, %d7, %d15
	extr.u	%d7, %d7, 0, 16
.LVL9:
	or.ge	%d4, %d3, 1
	seln	%d2, %d4, %d7, %d15
.L15:
.LBE11:
.LBE10:
	.loc 1 37 0
	ret
.LVL10:
.L2:
.LBB27:
.LBB26:
.LBB25:
.LBB22:
.LBB19:
.LBB17:
	.loc 2 5393 0
	mov	%d7, %d4
	mov	%d3, %d5
	jz	%d6, .L5
.LVL11:
	.loc 2 5396 0
	rsub	%d7, %d6, 32
	.loc 2 5398 0
	rsub	%d3, %d6, 0
.LVL12:
	.loc 2 5396 0
	rsub	%d0, %d6, 32
.LVL13:
	dextr	%d7, %d5, %d4, %d7
.LVL14:
	.loc 2 5398 0
	sh	%d3, %d5, %d3
.LVL15:
	.loc 2 5400 0
	jgez	%d5, .L5
.LVL16:
.L10:
	.loc 2 5403 0
	mov	%d15, -1
	sh	%d0, %d15, %d0
	or	%d3, %d0
.LVL17:
	j	.L5
.LVL18:
.L19:
	mov	%d7, %d5
	j	.L5
.LVL19:
.L18:
	.loc 2 5385 0
	mov	%d15, -1
	.loc 2 5396 0
	rsub	%d7, %d6, 32
	.loc 2 5398 0
	rsub	%d3, %d6, 0
	.loc 2 5396 0
	rsub	%d0, %d6, 32
.LVL20:
	dextr	%d7, %d15, %d5, %d7
.LVL21:
	.loc 2 5398 0
	sh	%d3, %d15, %d3
	.loc 2 5393 0
	jnz	%d6, .L10
	mov	%d7, %d5
	mov	%d3, -1
	j	.L5
.LBE17:
.LBE19:
.LBE22:
.LBE25:
.LBE26:
.LBE27:
.LFE516:
	.size	Mfx_MulShRight_s32s32u8_u16, .-Mfx_MulShRight_s32s32u8_u16
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
	.uaword	0x56d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulShRight_s32s32u8_u16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1f5
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
	.uaword	0x221
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x1d2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x264
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x245
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x12
	.uaword	0x2db
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x18
	.uaword	0x256
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x19
	.uaword	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x4
	.byte	0x1b
	.uaword	0x2ba
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x30e
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x2a8
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2db
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2ee
	.uleb128 0x8
	.string	"Mfx_Prv_MulShRight_s32s32u8_s32_Inl"
	.byte	0x2
	.uahalf	0xec6
	.byte	0x1
	.uaword	0x237
	.byte	0x3
	.uaword	0x38a
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xec6
	.uaword	0x237
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xec6
	.uaword	0x237
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xec6
	.uaword	0x1e8
	.uleb128 0xb
	.string	"tmp_s64"
	.byte	0x2
	.uahalf	0xec8
	.uaword	0x2a8
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_MulShRight_s32s32u8_u16_Inl"
	.byte	0x2
	.uahalf	0xf0d
	.byte	0x1
	.uaword	0x213
	.byte	0x3
	.uaword	0x3f3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xf0d
	.uaword	0x237
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xf0d
	.uaword	0x237
	.uleb128 0xa
	.string	"shift"
	.byte	0x2
	.uahalf	0xf0d
	.uaword	0x1e8
	.uleb128 0xb
	.string	"tmp_s32"
	.byte	0x2
	.uahalf	0xf0f
	.uaword	0x237
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_RightShift_s64u8_s64_Inl"
	.byte	0x2
	.uahalf	0x14fb
	.byte	0x1
	.uaword	0x2a8
	.byte	0x3
	.uaword	0x463
	.uleb128 0xa
	.string	"X_s64"
	.byte	0x2
	.uahalf	0x14fb
	.uaword	0x2a8
	.uleb128 0xa
	.string	"Shift_u8"
	.byte	0x2
	.uahalf	0x14fb
	.uaword	0x1e8
	.uleb128 0xb
	.string	"Res_Temp"
	.byte	0x2
	.uahalf	0x14fd
	.uaword	0x30e
	.uleb128 0xb
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x14fe
	.uaword	0x256
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Mfx_MulShRight_s32s32u8_u16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x213
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
	.uaword	0x237
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x22
	.uaword	0x237
	.uaword	.LLST1
	.uleb128 0xe
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1e8
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x38a
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.uaword	0x3d4
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x3c8
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x3bc
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x3e2
	.uleb128 0x13
	.uaword	0x321
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0xf11
	.uleb128 0x10
	.uaword	0x36b
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x35f
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x353
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x14
	.uaword	0x379
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x3f3
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0xecc
	.uleb128 0x10
	.uaword	0x430
	.uaword	.LLST10
	.uleb128 0x10
	.uaword	0x422
	.uaword	.LLST11
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x14
	.uaword	0x441
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	0x452
	.uaword	.LLST13
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL12
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x76
	.sleb128 32
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL10
	.uaword	.LFE516
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x76
	.sleb128 32
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1d2
	.byte	0xf7
	.uleb128 0x1b8
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d2
	.byte	0xf7
	.uleb128 0x1b8
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE516
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
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL18
	.uaword	.LVL19
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
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
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
