	.file	"TSMem.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.TS_MemCpy32,"ax",@progbits
	.align 1
	.global	TS_MemCpy32
	.type	TS_MemCpy32, @function
TS_MemCpy32:
.LFB0:
	.file 1 "bswcdd\\Dsm\\TSMem.c"
	.loc 1 235 0
.LVL0:
	ret
.LFE0:
	.size	TS_MemCpy32, .-TS_MemCpy32
.section .text.TS_MemSet32,"ax",@progbits
	.align 1
	.global	TS_MemSet32
	.type	TS_MemSet32, @function
TS_MemSet32:
.LFB1:
	.loc 1 284 0
.LVL1:
	ret
.LFE1:
	.size	TS_MemSet32, .-TS_MemSet32
.section .text.TS_MemBZero32,"ax",@progbits
	.align 1
	.global	TS_MemBZero32
	.type	TS_MemBZero32, @function
TS_MemBZero32:
.LFB2:
	.loc 1 337 0
.LVL2:
	ret
.LFE2:
	.size	TS_MemBZero32, .-TS_MemBZero32
.section .text.TS_MemCmp32,"ax",@progbits
	.align 1
	.global	TS_MemCmp32
	.type	TS_MemCmp32, @function
TS_MemCmp32:
.LFB3:
	.loc 1 383 0
.LVL3:
	.loc 1 431 0
	ret
.LFE3:
	.size	TS_MemCmp32, .-TS_MemCmp32
.section .text.TS_MemMove,"ax",@progbits
	.align 1
	.global	TS_MemMove
	.type	TS_MemMove, @function
TS_MemMove:
.LFB4:
	.loc 1 669 0
.LVL4:
	.loc 1 669 0
	mov.d	%d2, %a4
	mov.d	%d15, %a5
.LVL5:
	.loc 1 679 0
	jge.u	%d2, %d15, .L6
	.loc 1 681 0 discriminator 1
	jz	%d4, .L5
	addi	%d5, %d2, 4
	ge.u	%d3, %d15, %d5
	add	%d6, %d15, 4
	or.ge.u	%d3, %d2, %d6
	ge.u	%d5, %d4, 10
	and	%d5, %d3
	or	%d3, %d2, %d15
	and	%d3, %d3, 3
	eq	%d3, %d3, 0
	and	%d3, %d5
	jz	%d3, .L8
	addi	%d3, %d4, -4
	sh	%d3, -2
	addi	%d5, %d3, 1
	ne	%d6, %d3, -1
	sh	%d5, 2
	mov.aa	%a2, %a5
	mov.aa	%a15, %a4
	sel	%d3, %d6, %d3, 0
.LVL6:
.L9:
	.loc 1 683 0 discriminator 3
	ld.w	%d6, [%a2+]4
	st.w	[%a15+]4, %d6
	jned	%d3, 0, .L9
	mov.a	%a2, %d2
	mov.a	%a3, %d15
	addsc.a	%a15, %a2, %d5, 0
	sub	%d15, %d4, %d5
.LVL7:
	addsc.a	%a2, %a3, %d5, 0
	jeq	%d4, %d5, .L5
.LVL8:
	.loc 1 683 0 is_stmt 0
	ld.bu	%d2, [%a2]0
.LVL9:
	st.b	[%a15]0, %d2
.LVL10:
	.loc 1 681 0 is_stmt 1
	jeq	%d15, 1, .L5
	.loc 1 683 0
	ld.bu	%d2, [%a2] 1
	st.b	[%a15] 1, %d2
.LVL11:
	.loc 1 681 0
	jeq	%d15, 2, .L30
	.loc 1 683 0
	ld.bu	%d15, [%a2] 2
.LVL12:
	st.b	[%a15] 2, %d15
.LVL13:
	ret
.LVL14:
.L6:
	.loc 1 692 0
	jlt.u	%d15, %d2, .L31
.LVL15:
.L5:
	ret
.LVL16:
.L31:
	.loc 1 695 0
	mov.a	%a3, %d4
	add.a	%a3, -1
	addsc.a	%a2, %a3, %d2, 0
.LVL17:
	.loc 1 696 0
	addsc.a	%a3, %a3, %d15, 0
.LVL18:
	.loc 1 698 0
	jz	%d4, .L5
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL19:
.L16:
	.loc 1 700 0 discriminator 3
	ld.bu	%d15, [%a3+]-1
.LVL20:
	st.b	[%a2+]-1, %d15
.LVL21:
	.loc 1 703 0 discriminator 3
	loop	%a15, .L16
	ret
.LVL22:
.L8:
	.loc 1 681 0
	mov.d	%d15, %a5
.LVL23:
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	mov.aa	%a2, %a5
	mov.aa	%a3, %a4
.LVL24:
.L14:
	.loc 1 683 0
	ld.bu	%d15, [%a2+]1
.LVL25:
	st.b	[%a3+]1, %d15
.LVL26:
	.loc 1 686 0
	loop	%a15, .L14
	ret
.LVL27:
.L30:
	ret
.LFE4:
	.size	TS_MemMove, .-TS_MemMove
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x458
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\TSMem.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1bd
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
	.uaword	0x217
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
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1b0
	.uleb128 0x4
	.byte	0x1
	.string	"TS_MemCpy32"
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2d4
	.uleb128 0x5
	.string	"dst"
	.byte	0x1
	.byte	0xe7
	.uaword	0x2d4
	.byte	0x1
	.byte	0x64
	.uleb128 0x5
	.string	"src"
	.byte	0x1
	.byte	0xe8
	.uaword	0x2db
	.byte	0x1
	.byte	0x65
	.uleb128 0x5
	.string	"len"
	.byte	0x1
	.byte	0xe9
	.uaword	0x2e7
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.uaword	0x2d9
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x6
	.uaword	0x2e0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e6
	.uleb128 0x9
	.uleb128 0x6
	.uaword	0x209
	.uleb128 0xa
	.byte	0x1
	.string	"TS_MemSet32"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x339
	.uleb128 0xb
	.string	"dst"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x2d4
	.byte	0x1
	.byte	0x64
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x2e7
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x6
	.uaword	0x1b0
	.uleb128 0xa
	.byte	0x1
	.string	"TS_MemBZero32"
	.byte	0x1
	.uahalf	0x14c
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x37f
	.uleb128 0xb
	.string	"dst"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2d4
	.byte	0x1
	.byte	0x64
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x2e7
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"TS_MemCmp32"
	.byte	0x1
	.uahalf	0x179
	.byte	0x1
	.uaword	0x275
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3cc
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x2db
	.byte	0x1
	.byte	0x64
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x2db
	.byte	0x1
	.byte	0x65
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x2e7
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"TS_MemMove"
	.byte	0x1
	.uahalf	0x297
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x44f
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.uahalf	0x299
	.uaword	0x2d4
	.uaword	.LLST0
	.uleb128 0xd
	.string	"src"
	.byte	0x1
	.uahalf	0x29a
	.uaword	0x2db
	.uaword	.LLST1
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.uahalf	0x29b
	.uaword	0x2e7
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.string	"dst2"
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x44f
	.uaword	.LLST2
	.uleb128 0xe
	.string	"src2"
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x455
	.uaword	.LLST3
	.uleb128 0xe
	.string	"len2"
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x209
	.uaword	.LLST4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1b0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x339
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL27
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x8f
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL27
	.uaword	.LFE4
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x82
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL27
	.uaword	.LFE4
	.uahalf	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE4
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
