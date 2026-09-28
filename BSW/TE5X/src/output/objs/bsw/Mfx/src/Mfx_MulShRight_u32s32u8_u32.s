	.file	"Mfx_MulShRight_u32s32u8_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_MulShRight_u32s32u8_u32,"ax",@progbits
	.align 1
	.global	Mfx_MulShRight_u32s32u8_u32
	.type	Mfx_MulShRight_u32s32u8_u32, @function
Mfx_MulShRight_u32s32u8_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_MulShRight_u32s32u8_u32.c"
	.loc 1 35 0
.LVL0:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
	.loc 2 4096 0
	mov	%e2, %d5
	mul.u	%e0, %d4, %d2
.LBB10:
.LBB11:
	.loc 2 5378 0
	lt.u	%d2, %d6, 32
.LBE11:
.LBE10:
	.loc 2 4096 0
	madd	%d1, %d1, %d4, %d3
.LVL1:
.LBB14:
.LBB12:
	.loc 2 5378 0
	jnz	%d2, .L2
	.loc 2 5380 0
	addi	%d6, %d6, -32
.LVL2:
	and	%d6, %d6, 255
.LVL3:
	.loc 2 5383 0
	jltz	%d1, .L16
	.loc 2 5396 0
	rsub	%d4, %d6, 0
.LVL4:
	sh	%d4, %d1, %d4
.LVL5:
	.loc 2 5398 0
	mov	%d3, 0
	.loc 2 5393 0
	jz	%d6, .L17
.LVL6:
.L5:
.LBE12:
.LBE14:
	.loc 2 4102 0
	eq	%d15, %d3, 0
	and.eq	%d15, %d4, -1
	or.ge	%d15, %d3, 1
	ge	%d3, %d3, 0
	sel	%d4, %d3, %d4, 0
	seln	%d2, %d15, %d4, -1
.LBE9:
.LBE8:
	.loc 1 37 0
	ret
.LVL7:
.L2:
.LBB17:
.LBB16:
.LBB15:
.LBB13:
	.loc 2 5393 0
	mov	%d4, %d0
.LVL8:
	mov	%d3, %d1
	jz	%d6, .L5
	.loc 2 5396 0
	rsub	%d4, %d6, 32
	.loc 2 5398 0
	rsub	%d3, %d6, 0
	.loc 2 5396 0
	rsub	%d5, %d6, 32
.LVL9:
	dextr	%d4, %d1, %d0, %d4
.LVL10:
	.loc 2 5398 0
	sh	%d3, %d1, %d3
.LVL11:
	.loc 2 5400 0
	jgez	%d1, .L5
.LVL12:
.L10:
	.loc 2 5403 0
	mov	%d15, -1
	sh	%d5, %d15, %d5
	or	%d3, %d5
.LVL13:
	j	.L5
.LVL14:
.L17:
	mov	%d4, %d1
	j	.L5
.LVL15:
.L16:
	.loc 2 5385 0
	mov	%d15, -1
	.loc 2 5396 0
	rsub	%d4, %d6, 32
.LVL16:
	.loc 2 5398 0
	rsub	%d3, %d6, 0
	.loc 2 5396 0
	rsub	%d5, %d6, 32
.LVL17:
	dextr	%d4, %d15, %d1, %d4
.LVL18:
	.loc 2 5398 0
	sh	%d3, %d15, %d3
	.loc 2 5393 0
	jnz	%d6, .L10
	mov	%d4, %d1
	mov	%d3, -1
	j	.L5
.LBE13:
.LBE15:
.LBE16:
.LBE17:
.LFE516:
	.size	Mfx_MulShRight_u32s32u8_u32, .-Mfx_MulShRight_u32s32u8_u32
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
	.uaword	0x4e7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_MulShRight_u32s32u8_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1d4
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
	.uaword	0x216
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
	.uaword	0x23c
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
	.uleb128 0x3
	.string	"Mfx_sint64"
	.byte	0x4
	.byte	0xf
	.uaword	0x21d
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x12
	.uaword	0x2cd
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x18
	.uaword	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x19
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x4
	.byte	0x1b
	.uaword	0x2ac
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x300
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x29a
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2cd
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2e0
	.uleb128 0x8
	.string	"Mfx_Prv_MulShRight_u32s32u8_u32_Inl"
	.byte	0x2
	.uahalf	0xffb
	.byte	0x1
	.uaword	0x22e
	.byte	0x3
	.uaword	0x394
	.uleb128 0x9
	.string	"x_value"
	.byte	0x2
	.uahalf	0xffb
	.uaword	0x22e
	.uleb128 0x9
	.string	"y_value"
	.byte	0x2
	.uahalf	0xffb
	.uaword	0x208
	.uleb128 0x9
	.string	"shift"
	.byte	0x2
	.uahalf	0xffb
	.uaword	0x1c7
	.uleb128 0xa
	.string	"tmp_s64"
	.byte	0x2
	.uahalf	0xffd
	.uaword	0x29a
	.uleb128 0xa
	.string	"res_u32"
	.byte	0x2
	.uahalf	0xffe
	.uaword	0x22e
	.byte	0
	.uleb128 0x8
	.string	"Mfx_Prv_RightShift_s64u8_s64_Inl"
	.byte	0x2
	.uahalf	0x14fb
	.byte	0x1
	.uaword	0x29a
	.byte	0x3
	.uaword	0x404
	.uleb128 0x9
	.string	"X_s64"
	.byte	0x2
	.uahalf	0x14fb
	.uaword	0x29a
	.uleb128 0x9
	.string	"Shift_u8"
	.byte	0x2
	.uahalf	0x14fb
	.uaword	0x1c7
	.uleb128 0xa
	.string	"Res_Temp"
	.byte	0x2
	.uahalf	0x14fd
	.uaword	0x300
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x14fe
	.uaword	0x22e
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_MulShRight_u32s32u8_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x22e
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.string	"x_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x22e
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y_value"
	.byte	0x1
	.byte	0x22
	.uaword	0x208
	.uaword	.LLST1
	.uleb128 0xc
	.string	"shift"
	.byte	0x1
	.byte	0x22
	.uaword	0x1c7
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	0x313
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xe
	.uaword	0x365
	.uaword	.LLST3
	.uleb128 0xe
	.uaword	0x355
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	0x345
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x10
	.uaword	0x373
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	0x383
	.uleb128 0x12
	.uaword	0x394
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x1002
	.uleb128 0xe
	.uaword	0x3d1
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x3c3
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x10
	.uaword	0x3e2
	.uaword	.LLST8
	.uleb128 0x10
	.uaword	0x3f3
	.uaword	.LLST9
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
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
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
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12
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
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL7
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST7:
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
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL15
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
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
