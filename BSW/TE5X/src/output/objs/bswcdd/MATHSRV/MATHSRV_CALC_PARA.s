	.file	"MATHSRV_CALC_PARA.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_u16CalcParaIncAryU8Loc,"ax",@progbits
	.align 1
	.global	MATHSRV_u16CalcParaIncAryU8Loc
	.type	MATHSRV_u16CalcParaIncAryU8Loc, @function
MATHSRV_u16CalcParaIncAryU8Loc:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_CALC_PARA.c"
	.loc 1 48 0
.LVL0:
	.loc 1 57 0
	addsc.a	%a15, %a4, %d5, 0
	ld.bu	%d15, [%a15]0
	jge.u	%d4, %d15, .L12
	.loc 1 65 0
	ld.bu	%d15, [%a4]0
	.loc 1 70 0
	mov	%d2, 0
	.loc 1 65 0
	jlt.u	%d4, %d15, .L3
.LVL1:
	.loc 1 76 0
	mov	%d7, 1
	mov	%d3, 0
	jlt.u	%d5, 3, .L4
	mov	%d15, 0
.LVL2:
.L5:
	.loc 1 78 0
	sh	%d2, %d5, -1
	add	%d2, %d15
	.loc 1 79 0
	addsc.a	%a15, %a4, %d2, 0
	.loc 1 81 0
	and	%d7, %d15, 255
	and	%d6, %d2, 255
	.loc 1 79 0
	ld.bu	%d3, [%a15]0
	.loc 1 86 0
	add	%d5, %d7
	.loc 1 81 0
	sub	%d0, %d6, %d7
	.loc 1 86 0
	sub	%d5, %d6
	lt.u	%d3, %d4, %d3
	.loc 1 81 0
	and	%d0, %d0, 255
	.loc 1 86 0
	and	%d5, %d5, 255
	seln	%d5, %d3, %d5, %d0
	sel	%d15, %d3, %d15, %d2
.LVL3:
	.loc 1 76 0
	jge.u	%d5, 3, .L5
	mov	%d3, %d15
	add	%d7, %d15, 1
.LVL4:
.L4:
	.loc 1 93 0
	addsc.a	%a15, %a4, %d7, 0
	ld.bu	%d6, [%a15]0
	jge.u	%d4, %d6, .L13
	addsc.a	%a4, %a4, %d3, 0
.LVL5:
	mov	%d2, %d6
	ld.bu	%d5, [%a4]0
.L7:
.LVL6:
	.loc 1 100 0
	sub	%d4, %d5
.LVL7:
	.loc 1 101 0
	sh	%d15, %d4, 8
.LVL8:
	.loc 1 103 0
	sub	%d5, %d2, %d5
.LVL9:
	.loc 1 105 0
	div.u	%e4, %d15, %d5
.LVL10:
	.loc 1 107 0
	sh	%d15, %d3, 8
.LVL11:
	.loc 1 108 0
	add	%d15, %d4
.LVL12:
	.loc 1 110 0
	extr.u	%d2, %d15, 0, 16
.LVL13:
.L3:
	.loc 1 113 0
	ret
.LVL14:
.L12:
	.loc 1 62 0
	sh	%d2, %d5, 8
	ret
.LVL15:
.L13:
	ld.bu	%d2, [%a15] 1
	.loc 1 93 0
	mov	%d5, %d6
	.loc 1 95 0
	mov	%d3, %d7
	j	.L7
.LFE0:
	.size	MATHSRV_u16CalcParaIncAryU8Loc, .-MATHSRV_u16CalcParaIncAryU8Loc
.section .text.MATHSRV_u16CalcParaIncAryU16Loc,"ax",@progbits
	.align 1
	.global	MATHSRV_u16CalcParaIncAryU16Loc
	.type	MATHSRV_u16CalcParaIncAryU16Loc, @function
MATHSRV_u16CalcParaIncAryU16Loc:
.LFB1:
	.loc 1 131 0
.LVL16:
	.loc 1 140 0
	addsc.a	%a15, %a4, %d5, 1
	ld.hu	%d15, [%a15]0
	jge.u	%d4, %d15, .L24
	.loc 1 148 0
	ld.hu	%d15, [%a4]0
	.loc 1 153 0
	mov	%d2, 0
	.loc 1 148 0
	jlt.u	%d4, %d15, .L16
.LVL17:
	.loc 1 159 0
	mov.a	%a15, 2
	mov	%d6, 1
	mov	%d15, 0
	jlt.u	%d5, 3, .L17
.LVL18:
.L18:
	.loc 1 161 0
	sh	%d2, %d5, -1
	add	%d2, %d15
	.loc 1 162 0
	addsc.a	%a15, %a4, %d2, 1
	.loc 1 164 0
	and	%d7, %d15, 255
	and	%d6, %d2, 255
	.loc 1 162 0
	ld.hu	%d3, [%a15]0
	.loc 1 169 0
	add	%d5, %d7
	.loc 1 164 0
	sub	%d0, %d6, %d7
	.loc 1 169 0
	sub	%d5, %d6
	lt.u	%d3, %d4, %d3
	.loc 1 164 0
	and	%d0, %d0, 255
	.loc 1 169 0
	and	%d5, %d5, 255
	seln	%d5, %d3, %d5, %d0
	sel	%d15, %d3, %d15, %d2
.LVL19:
	.loc 1 159 0
	jge.u	%d5, 3, .L18
	add	%d6, %d15, 1
	mov.a	%a2, %d6
	add.a	%a15, %a2, %a2
.LVL20:
.L17:
	.loc 1 176 0
	add.a	%a15, %a4
	ld.hu	%d5, [%a15]0
	jge.u	%d4, %d5, .L25
	addsc.a	%a4, %a4, %d15, 1
.LVL21:
	mov	%d2, %d5
	ld.hu	%d3, [%a4]0
.L20:
.LVL22:
	.loc 1 183 0
	sub	%d4, %d3
.LVL23:
	.loc 1 184 0
	sh	%d5, %d4, 8
.LVL24:
	.loc 1 186 0
	sub	%d3, %d2, %d3
.LVL25:
	.loc 1 188 0
	div.u	%e4, %d5, %d3
.LVL26:
	.loc 1 190 0
	sh	%d15, %d15, 8
.LVL27:
	.loc 1 191 0
	add	%d15, %d4
.LVL28:
	.loc 1 193 0
	extr.u	%d2, %d15, 0, 16
.LVL29:
.L16:
	.loc 1 196 0
	ret
.LVL30:
.L24:
	.loc 1 145 0
	sh	%d2, %d5, 8
	ret
.LVL31:
.L25:
	addsc.a	%a4, %a4, %d6, 1
.LVL32:
	.loc 1 176 0
	mov	%d3, %d5
	ld.hu	%d2, [%a4] 2
	.loc 1 178 0
	mov	%d15, %d6
	j	.L20
.LFE1:
	.size	MATHSRV_u16CalcParaIncAryU16Loc, .-MATHSRV_u16CalcParaIncAryU16Loc
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x445
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_CALC_PARA.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.byte	0x2
	.byte	0x51
	.uaword	0x1dd
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
	.byte	0x2
	.byte	0x5b
	.uaword	0x209
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
	.byte	0x2
	.byte	0x6a
	.uaword	0x1b1
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
	.byte	0x1
	.string	"MATHSRV_u16CalcParaIncAryU8Loc"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x361
	.uleb128 0x5
	.string	"kau8BreakpointMap"
	.byte	0x1
	.byte	0x2c
	.uaword	0x361
	.uaword	.LLST0
	.uleb128 0x5
	.string	"u8Value"
	.byte	0x1
	.byte	0x2d
	.uaword	0x1d0
	.uaword	.LLST1
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2e
	.uaword	0x1d0
	.uaword	.LLST2
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x1
	.byte	0x31
	.uaword	0x237
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x32
	.uaword	0x237
	.uaword	.LLST3
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x33
	.uaword	0x237
	.uaword	.LLST4
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0x34
	.uaword	0x237
	.uaword	.LLST5
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0x35
	.uaword	0x237
	.uaword	.LLST6
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0x36
	.uaword	0x237
	.uaword	.LLST7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x1d0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u16CalcParaIncAryU16Loc"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x43d
	.uleb128 0x5
	.string	"kau16BreakpointMap"
	.byte	0x1
	.byte	0x7f
	.uaword	0x43d
	.uaword	.LLST8
	.uleb128 0x5
	.string	"u16Value"
	.byte	0x1
	.byte	0x80
	.uaword	0x1fb
	.uaword	.LLST9
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x81
	.uaword	0x1d0
	.uaword	.LLST10
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x1
	.byte	0x84
	.uaword	0x237
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x85
	.uaword	0x237
	.uaword	.LLST11
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x86
	.uaword	0x237
	.uaword	.LLST12
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0x87
	.uaword	0x237
	.uaword	.LLST13
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0x88
	.uaword	0x237
	.uaword	.LLST14
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0x89
	.uaword	0x237
	.uaword	.LLST15
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x443
	.uleb128 0xa
	.uaword	0x1fb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL16
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"u8BreakpointNumberMinusOne"
.LASF3:
	.string	"u32LocalInterpolation"
.LASF2:
	.string	"u32LocalSiteValue"
.LASF4:
	.string	"u32LocalDeltaValueFromSite"
.LASF1:
	.string	"u32LocalSiteIndex"
.LASF6:
	.string	"u32LocalPivot"
.LASF5:
	.string	"u32LocalSiteInterpolation"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
