	.file	"Mfx_SubP2_u32s32_u32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_SubP2_u32s32_u32,"ax",@progbits
	.align 1
	.global	Mfx_SubP2_u32s32_u32
	.type	Mfx_SubP2_u32s32_u32, @function
Mfx_SubP2_u32s32_u32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_SubP2_u32s32_u32.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 4915 0
	jge	%d6, %d7, .L2
	.loc 2 4917 0
	sub	%d8, %d7, %d6
.LVL1:
	.loc 2 4918 0
	ld.w	%d6, [%SP]0
.LVL2:
	.loc 2 4919 0
	mul.u	%e2, %d4, 1
	.loc 2 4918 0
	sub	%d6, %d7
.LVL3:
	.loc 2 4933 0
	movh	%d7, 32768
.LVL4:
	eq	%d15, %d5, %d7
	and.eq	%d15, %d4, -1
	.loc 2 4920 0
	mul	%e0, %d5, -1
.LVL5:
	.loc 2 4933 0
	jnz	%d15, .L3
.L4:
.LVL6:
	.loc 2 4946 0
	mov	%d15, 1
	sh	%d15, %d15, %d8
.LVL7:
	.loc 2 4947 0
	madd.u	%e4, %e0, %d15, %d2
.LVL8:
	madd	%d5, %d5, %d15, %d3
.LVL9:
	.loc 2 4949 0
	mov	%d2, 0
.LVL10:
	jltz	%d5, .L5
	.loc 2 4956 0
	jltz	%d6, .L11
	.loc 2 4973 0
	jnz	%d5, .L8
	.loc 2 4977 0
	addi	%d15, %d6, -32
.LVL11:
	sh	%d15, %d4, %d15
	.loc 2 4969 0
	sh	%d2, %d4, %d6
.LVL12:
	.loc 2 4984 0
	jnz	%d15, .L8
.LVL13:
.L5:
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL14:
.L3:
.LBB8:
.LBB6:
	.loc 2 4933 0
	ne	%d15, %d8, 31
	jnz	%d15, .L4
.LVL15:
.L8:
.LBE6:
.LBE8:
	.loc 1 35 0
	mov	%d2, -1
	ret
.LVL16:
.L2:
.LBB9:
.LBB7:
	.loc 2 4925 0
	ld.w	%d15, [%SP]0
	.loc 2 4924 0
	sub	%d8, %d6, %d7
.LVL17:
	.loc 2 4926 0
	mul	%e2, %d5, -1
	.loc 2 4925 0
	sub	%d6, %d15, %d6
.LVL18:
	.loc 2 4927 0
	mul.u	%e0, %d4, 1
.LVL19:
	j	.L4
.LVL20:
.L11:
	.loc 2 4959 0
	rsub	%d6
.LVL21:
	.loc 2 4964 0
	rsub	%d15, %d6, 0
	.loc 2 4963 0
	rsub	%d2, %d6, 32
	.loc 2 4964 0
	sh	%d15, %d5, %d15
	.loc 2 4963 0
	dextr	%d2, %d5, %d4, %d2
.LVL22:
	.loc 2 4984 0
	jz	%d15, .L5
	j	.L8
.LBE7:
.LBE9:
.LFE516:
	.size	Mfx_SubP2_u32s32_u32, .-Mfx_SubP2_u32s32_u32
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
	.uaword	0x489
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_SubP2_u32s32_u32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
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
	.uaword	0x202
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
	.uaword	0x228
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
	.uaword	0x209
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x12
	.uaword	0x2b9
	.uleb128 0x5
	.string	"l"
	.byte	0x4
	.byte	0x18
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"h"
	.byte	0x4
	.byte	0x19
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64s"
	.byte	0x4
	.byte	0x1b
	.uaword	0x298
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x2ec
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x286
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2cc
	.uleb128 0x8
	.string	"Mfx_Prv_SubP2_u32s32_u32_Inl"
	.byte	0x2
	.uahalf	0x1321
	.byte	0x1
	.uaword	0x21a
	.byte	0x3
	.uaword	0x3b6
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0x1321
	.uaword	0x21a
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0x1321
	.uaword	0x1f4
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0x1321
	.uaword	0x1f4
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0x1321
	.uaword	0x1f4
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0x1321
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift1_s32"
	.byte	0x2
	.uahalf	0x1323
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift2_s32"
	.byte	0x2
	.uahalf	0x1324
	.uaword	0x1f4
	.uleb128 0xa
	.string	"var_s64"
	.byte	0x2
	.uahalf	0x1327
	.uaword	0x2ec
	.uleb128 0xa
	.string	"result_s64"
	.byte	0x2
	.uahalf	0x132a
	.uaword	0x2ec
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x132b
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_SubP2_u32s32_u32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x21a
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
	.uaword	0x21a
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST2
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.uaword	0x2ff
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x352
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.uaword	0x348
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	0x33e
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x334
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x32a
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x35c
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x36f
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	0x382
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x392
	.uleb128 0x12
	.uaword	0x3a5
	.uaword	.LLST11
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
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
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
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
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
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL4
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL17
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
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
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x5
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x5
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE516
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
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
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
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
