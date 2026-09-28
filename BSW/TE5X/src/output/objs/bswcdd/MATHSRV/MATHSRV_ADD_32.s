	.file	"MATHSRV_ADD_32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_u32Add_u32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Add_u32_u32
	.type	MATHSRV_u32Add_u32_u32, @function
MATHSRV_u32Add_u32_u32:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_ADD_32.c"
	.loc 1 44 0
.LVL0:
	.loc 1 48 0
	add	%d5, %d4
.LVL1:
	.loc 1 51 0
	ge.u	%d2, %d5, %d4
.LVL2:
	.loc 1 55 0
	sel	%d2, %d2, %d5, -1
.LVL3:
	ret
.LFE0:
	.size	MATHSRV_u32Add_u32_u32, .-MATHSRV_u32Add_u32_u32
.section .text.MATHSRV_s32Add_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Add_s32_s32
	.type	MATHSRV_s32Add_s32_s32, @function
MATHSRV_s32Add_s32_s32:
.LFB1:
	.loc 1 71 0
.LVL4:
	.loc 1 75 0
	add	%d2, %d4, %d5
.LVL5:
	.loc 1 76 0
	jltz	%d4, .L4
	.loc 1 79 0
	ge	%d5, %d5, 0
.LVL6:
	.loc 1 81 0
	mov	%d15, -1
	.loc 1 78 0
	and.t	%d5, %d2,31, %d5,0
	.loc 1 81 0
	sh	%d15, -1
	seln	%d2, %d5, %d2, %d15
.LVL7:
	ret
.LVL8:
.L4:
	.loc 1 86 0
	ge	%d15, %d2, 0
	and.t	%d5, %d5,31, %d15,0
.LVL9:
	.loc 1 89 0
	movh	%d15, 32768
	seln	%d2, %d5, %d2, %d15
.LVL10:
	.loc 1 93 0
	ret
.LFE1:
	.size	MATHSRV_s32Add_s32_s32, .-MATHSRV_s32Add_s32_s32
.section .text.MATHSRV_u32Add_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Add_u32_s32
	.type	MATHSRV_u32Add_u32_s32, @function
MATHSRV_u32Add_u32_s32:
.LFB2:
	.loc 1 109 0
.LVL11:
	.loc 1 113 0
	add	%d2, %d5, %d4
.LVL12:
	.loc 1 114 0
	jltz	%d5, .L10
	.loc 1 118 0
	ge.u	%d4, %d2, %d4
.LVL13:
	sel	%d2, %d4, %d2, -1
.LVL14:
	ret
.LVL15:
.L10:
	.loc 1 125 0
	ge.u	%d4, %d4, %d2
.LVL16:
	sel	%d2, %d4, %d2, 0
.LVL17:
	.loc 1 129 0
	ret
.LFE2:
	.size	MATHSRV_u32Add_u32_s32, .-MATHSRV_u32Add_u32_s32
.section .text.MATHSRV_u32Add_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Add_s32_s32
	.type	MATHSRV_u32Add_s32_s32, @function
MATHSRV_u32Add_s32_s32:
.LFB3:
	.loc 1 145 0
.LVL18:
	.loc 1 149 0
	add	%d2, %d4, %d5
.LVL19:
	.loc 1 151 0
	jltz	%d4, .L18
	.loc 1 162 0
	lt.u	%d4, %d4, %d2
.LVL20:
	.loc 1 161 0
	and.t	%d4, %d5,31, %d4,0
	.loc 1 164 0
	seln	%d2, %d4, %d2, 0
.LVL21:
	.loc 1 168 0
	ret
.LVL22:
.L18:
	.loc 1 153 0
	lt.u	%d15, %d5, %d2
	or.lt	%d15, %d5, 1
	.loc 1 156 0
	cmov	%d2, %d15, 0
.LVL23:
	ret
.LFE3:
	.size	MATHSRV_u32Add_s32_s32, .-MATHSRV_u32Add_s32_s32
.section .text.MATHSRV_s32Add_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Add_u32_s32
	.type	MATHSRV_s32Add_u32_s32, @function
MATHSRV_s32Add_u32_s32:
.LFB4:
	.loc 1 184 0
.LVL24:
	.loc 1 189 0
	add	%d2, %d5, %d4
.LVL25:
	.loc 1 192 0
	jltz	%d5, .L20
	.loc 1 194 0
	lt.u	%d4, %d2, %d4
.LVL26:
	.loc 1 197 0
	mov	%d15, -1
	.loc 1 194 0
	or.lt	%d4, %d2, 0
	.loc 1 197 0
	sh	%d15, -1
	seln	%d2, %d4, %d2, %d15
.LVL27:
	ret
.LVL28:
.L20:
	.loc 1 205 0
	mov	%d15, -1
	.loc 1 202 0
	and.t	%d4, %d2,31, %d4,31
.LVL29:
	.loc 1 205 0
	sh	%d15, -1
	seln	%d2, %d4, %d2, %d15
.LVL30:
	.loc 1 209 0
	ret
.LFE4:
	.size	MATHSRV_s32Add_u32_s32, .-MATHSRV_s32Add_u32_s32
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x486
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_ADD_32.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x60
	.uaword	0x1ff
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
	.uaword	0x225
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
	.string	"sint32_least"
	.byte	0x2
	.byte	0x99
	.uaword	0x262
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x9e
	.uaword	0x26e
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Add_u32_u32"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x312
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x29
	.uaword	0x217
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.string	"u32SecondValue"
	.byte	0x1
	.byte	0x2a
	.uaword	0x217
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x2d
	.uaword	0x297
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s32Add_s32_s32"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	0x1f1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36e
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0x44
	.uaword	0x1f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x45
	.uaword	0x1f1
	.uaword	.LLST2
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x1
	.byte	0x48
	.uaword	0x283
	.uaword	.LLST3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Add_u32_s32"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ca
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6a
	.uaword	0x217
	.uaword	.LLST4
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6b
	.uaword	0x1f1
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6e
	.uaword	0x297
	.uaword	.LLST5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Add_s32_s32"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x426
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8e
	.uaword	0x1f1
	.uaword	.LLST6
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8f
	.uaword	0x1f1
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x92
	.uaword	0x297
	.uaword	.LLST7
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MATHSRV_s32Add_u32_s32"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	0x1f1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb5
	.uaword	0x217
	.uaword	.LLST8
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb6
	.uaword	0x1f1
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb9
	.uaword	0x297
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x1
	.byte	0xba
	.uaword	0x283
	.uaword	.LLST9
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xff
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
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
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LFE3
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
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
.LASF2:
	.string	"s32SecondValue"
.LASF3:
	.string	"u32LocalResult"
.LASF4:
	.string	"s32LocalResult"
.LASF0:
	.string	"u32FirstValue"
.LASF1:
	.string	"s32FirstValue"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
