	.file	"Mfx_SubP2_s32u32_s32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_SubP2_s32u32_s32,"ax",@progbits
	.align 1
	.global	Mfx_SubP2_s32u32_s32
	.type	Mfx_SubP2_s32u32_s32, @function
Mfx_SubP2_s32u32_s32:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_SubP2_s32u32_s32.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
	.loc 2 4175 0
	mul.u	%e2, %d5, 1
	.loc 2 4174 0
	ld.w	%d0, [%SP]0
	.loc 2 4173 0
	sub	%d8, %d6, %d7
.LVL1:
	.loc 2 4175 0
	rsub	%d15, %d3, 0
	.loc 2 4174 0
	sub	%d0, %d6
.LVL2:
	.loc 2 4175 0
	rsub	%d1, %d2, 0
	cadd	%d15, %d2, %d15, -1
	.loc 2 4176 0
	mov	%e4, %d4
	.loc 2 4164 0
	jge	%d6, %d7, .L3
	.loc 2 4167 0
	ld.w	%d0, [%SP]0
.LVL3:
	.loc 2 4168 0
	mov	%d15, %d5
	.loc 2 4169 0
	rsub	%d5, %d3, 0
.LVL4:
	.loc 2 4168 0
	mov	%d1, %d4
	.loc 2 4166 0
	sub	%d8, %d7, %d6
.LVL5:
	.loc 2 4167 0
	sub	%d0, %d7
.LVL6:
	.loc 2 4169 0
	rsub	%d4, %d2, 0
.LVL7:
	cadd	%d5, %d2, %d5, -1
.LVL8:
.L3:
	.loc 2 4181 0
	mov	%d2, 1
.LVL9:
	sh	%d2, %d2, %d8
.LVL10:
	.loc 2 4182 0
	madd.u	%e4, %e4, %d2, %d1
.LVL11:
	madd	%d5, %d5, %d2, %d15
	.loc 2 4149 0
	mov	%d3, 0
	.loc 2 4187 0
	mov	%d15, %d5
	jltz	%d5, .L17
.LVL12:
	.loc 2 4193 0
	jltz	%d0, .L18
.LVL13:
.L5:
	.loc 2 4210 0
	jnz	%d15, .L10
	.loc 2 4213 0
	addi	%d15, %d0, -32
	.loc 2 4206 0
	sh	%d2, %d4, %d0
.LVL14:
	.loc 2 4213 0
	sh	%d15, %d4, %d15
	.loc 2 4215 0
	mov	%e4, %d15, %d2
.LVL15:
.L6:
	.loc 2 4219 0
	jnz	%d15, .L10
	jltz	%d2, .L10
	.loc 2 4231 0
	jne	%d3, 1, .L9
.L12:
.LVL16:
	rsub	%d2, %d4, 0
.L9:
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.L10:
.LBB7:
.LBB6:
	.loc 2 4221 0
	jeq	%d3, 1, .L8
	mov	%d2, -1
	sh	%d2, -1
	ret
.LVL17:
.L17:
	.loc 2 4189 0
	rsub	%d5
	rsub	%d4
.LVL18:
	cadd	%d5, %d4, %d5, -1
.LVL19:
	mov	%d15, %d5
	.loc 2 4190 0
	mov	%d3, 1
.LVL20:
	.loc 2 4193 0
	jgez	%d0, .L5
.LVL21:
.L18:
	.loc 2 4195 0
	rsub	%d0
.LVL22:
	.loc 2 4200 0
	rsub	%d2, %d0, 32
	.loc 2 4201 0
	rsub	%d6, %d0, 0
.LVL23:
	.loc 2 4200 0
	dextr	%d2, %d15, %d4, %d2
	.loc 2 4201 0
	sh	%d6, %d15, %d6
	.loc 2 4200 0
	mov	%d4, %d2
.LVL24:
	.loc 2 4201 0
	mov	%d15, %d6
.LVL25:
	j	.L6
.LVL26:
.L8:
	.loc 2 4223 0
	movh	%d4, 32768
.LVL27:
	j	.L12
.LBE6:
.LBE7:
.LFE516:
	.size	Mfx_SubP2_s32u32_s32, .-Mfx_SubP2_s32u32_s32
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
	.uaword	0x4ba
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_SubP2_s32u32_s32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1c0
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
	.uaword	0x2c8
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
	.uaword	0x2a7
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x1e
	.uaword	0x2fb
	.uleb128 0x7
	.string	"s64"
	.byte	0x4
	.byte	0x20
	.uaword	0x295
	.uleb128 0x7
	.string	"s64s"
	.byte	0x4
	.byte	0x21
	.uaword	0x2c8
	.byte	0
	.uleb128 0x3
	.string	"Mfx_sint64u"
	.byte	0x4
	.byte	0x22
	.uaword	0x2db
	.uleb128 0x8
	.string	"Mfx_Prv_SubP2_s32u32_s32_Inl"
	.byte	0x2
	.uahalf	0x1031
	.byte	0x1
	.uaword	0x1f4
	.byte	0x3
	.uaword	0x3e0
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.uahalf	0x1031
	.uaword	0x1f4
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.uahalf	0x1031
	.uaword	0x21a
	.uleb128 0x9
	.string	"a"
	.byte	0x2
	.uahalf	0x1031
	.uaword	0x1f4
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.uahalf	0x1031
	.uaword	0x1f4
	.uleb128 0x9
	.string	"c"
	.byte	0x2
	.uahalf	0x1031
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift1_s32"
	.byte	0x2
	.uahalf	0x1033
	.uaword	0x1f4
	.uleb128 0xa
	.string	"shift2_s32"
	.byte	0x2
	.uahalf	0x1034
	.uaword	0x1f4
	.uleb128 0xa
	.string	"isResultNegative_b"
	.byte	0x2
	.uahalf	0x1035
	.uaword	0x265
	.uleb128 0xa
	.string	"var_s64"
	.byte	0x2
	.uahalf	0x1038
	.uaword	0x2fb
	.uleb128 0xa
	.string	"result_s64"
	.byte	0x2
	.uahalf	0x103b
	.uaword	0x2fb
	.uleb128 0xa
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x103c
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Mfx_SubP2_s32u32_s32"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1f4
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
	.uaword	0x1f4
	.uaword	.LLST0
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x22
	.uaword	0x21a
	.uaword	.LLST1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.uaword	.LLST2
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.uaword	0x30e
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xf
	.uaword	0x361
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.uaword	0x357
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.uaword	0x34d
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	0x343
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x339
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x36b
	.byte	0x1
	.byte	0x58
	.uleb128 0x13
	.uaword	0x37e
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	0x391
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x3ac
	.uaword	.LLST8
	.uleb128 0x13
	.uaword	0x3bc
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x3cf
	.uaword	.LLST10
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
	.uleb128 0xa
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
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
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
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
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL23
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL11
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
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL27
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
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x5
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x6
	.byte	0x7f
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
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
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
