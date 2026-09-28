	.file	"MATHSRV_Sub.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_u32Sub_u32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Sub_u32_u32
	.type	MATHSRV_u32Sub_u32_u32, @function
MATHSRV_u32Sub_u32_u32:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_Sub.c"
	.loc 1 46 0
.LVL0:
	.loc 1 50 0
	sub	%d5, %d4, %d5
.LVL1:
	.loc 1 53 0
	ge.u	%d2, %d4, %d5
.LVL2:
	.loc 1 56 0
	seln	%d2, %d2, %d2, %d5
.LVL3:
	ret
.LFE0:
	.size	MATHSRV_u32Sub_u32_u32, .-MATHSRV_u32Sub_u32_u32
.section .text.MATHSRV_u32Sub_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Sub_u32_s32
	.type	MATHSRV_u32Sub_u32_s32, @function
MATHSRV_u32Sub_u32_s32:
.LFB1:
	.loc 1 73 0
.LVL4:
	.loc 1 77 0
	sub	%d2, %d4, %d5
.LVL5:
	.loc 1 78 0
	jltz	%d5, .L7
	.loc 1 89 0
	ge.u	%d4, %d4, %d2
.LVL6:
	sel	%d2, %d4, %d2, 0
.LVL7:
	.loc 1 93 0
	ret
.LVL8:
.L7:
	.loc 1 82 0
	ge.u	%d4, %d2, %d4
.LVL9:
	sel	%d2, %d4, %d2, -1
.LVL10:
	ret
.LFE1:
	.size	MATHSRV_u32Sub_u32_s32, .-MATHSRV_u32Sub_u32_s32
.section .text.MATHSRV_u32Sub_s32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Sub_s32_u32
	.type	MATHSRV_u32Sub_s32_u32, @function
MATHSRV_u32Sub_s32_u32:
.LFB2:
	.loc 1 110 0
.LVL11:
	.loc 1 114 0
	sub	%d5, %d4, %d5
.LVL12:
	.loc 1 117 0
	lt.u	%d2, %d4, %d5
	or.lt	%d2, %d4, 1
.LVL13:
	.loc 1 127 0
	seln	%d2, %d2, %d5, 0
.LVL14:
	ret
.LFE2:
	.size	MATHSRV_u32Sub_s32_u32, .-MATHSRV_u32Sub_s32_u32
.section .text.MATHSRV_u32Sub_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Sub_s32_s32
	.type	MATHSRV_u32Sub_s32_s32, @function
MATHSRV_u32Sub_s32_s32:
.LFB3:
	.loc 1 144 0
.LVL15:
	.loc 1 148 0
	sub	%d15, %d4, %d5
.LVL16:
	.loc 1 159 0
	lt	%d2, %d15, 1
	or.ge	%d2, %d5, 0
	seln	%d2, %d2, %d15, 0
	.loc 1 149 0
	jltz	%d4, .L14
	.loc 1 151 0
	ge	%d5, %d5, 1
.LVL17:
	and.t	%d5, %d15,31, %d5,0
	seln	%d2, %d5, %d15, 0
.L14:
.LVL18:
	.loc 1 166 0
	ret
.LFE3:
	.size	MATHSRV_u32Sub_s32_s32, .-MATHSRV_u32Sub_s32_s32
.section .text.MATHSRV_s32Sub_u32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Sub_u32_u32
	.type	MATHSRV_s32Sub_u32_u32, @function
MATHSRV_s32Sub_u32_u32:
.LFB4:
	.loc 1 183 0
.LVL19:
	.loc 1 188 0
	sub	%d2, %d4, %d5
.LVL20:
	.loc 1 191 0
	jge.u	%d4, %d5, .L18
	.loc 1 195 0
	lt	%d15, %d2, 1
	movh	%d3, 32768
	cmovn	%d2, %d15, %d3
.LVL21:
	ret
.LVL22:
.L18:
	.loc 1 202 0
	mov	%d3, -1
	ge	%d15, %d2, 0
	sh	%d3, -1
	cmovn	%d2, %d15, %d3
.LVL23:
	.loc 1 206 0
	ret
.LFE4:
	.size	MATHSRV_s32Sub_u32_u32, .-MATHSRV_s32Sub_u32_u32
.section .text.MATHSRV_s32Sub_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Sub_u32_s32
	.type	MATHSRV_s32Sub_u32_s32, @function
MATHSRV_s32Sub_u32_s32:
.LFB5:
	.loc 1 223 0
.LVL24:
	.loc 1 228 0
	sub	%d2, %d4, %d5
.LVL25:
	.loc 1 230 0
	jltz	%d5, .L26
	.loc 1 245 0
	mov	%d15, -1
	.loc 1 240 0
	and.t	%d4, %d2,31, %d4,31
.LVL26:
	.loc 1 245 0
	sh	%d15, -1
	seln	%d2, %d4, %d2, %d15
.LVL27:
	.loc 1 249 0
	ret
.LVL28:
.L26:
	.loc 1 232 0
	lt.u	%d4, %d2, %d4
.LVL29:
	.loc 1 235 0
	mov	%d15, -1
	.loc 1 232 0
	or.lt	%d4, %d2, 0
	.loc 1 235 0
	sh	%d15, -1
	seln	%d2, %d4, %d2, %d15
.LVL30:
	ret
.LFE5:
	.size	MATHSRV_s32Sub_u32_s32, .-MATHSRV_s32Sub_u32_s32
.section .text.MATHSRV_s32Sub_s32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Sub_s32_u32
	.type	MATHSRV_s32Sub_s32_u32, @function
MATHSRV_s32Sub_s32_u32:
.LFB6:
	.loc 1 266 0
.LVL31:
	.loc 1 271 0
	addih	%d15, %d4, 32768
.LVL32:
	.loc 1 278 0
	sub	%d2, %d4, %d5
	ge.u	%d5, %d15, %d5
.LVL33:
	.loc 1 281 0
	movh	%d15, 32768
.LVL34:
	sel	%d2, %d5, %d2, %d15
.LVL35:
	ret
.LFE6:
	.size	MATHSRV_s32Sub_s32_u32, .-MATHSRV_s32Sub_s32_u32
.section .text.MATHSRV_s32Sub_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Sub_s32_s32
	.type	MATHSRV_s32Sub_s32_s32, @function
MATHSRV_s32Sub_s32_s32:
.LFB7:
	.loc 1 298 0
.LVL36:
	.loc 1 303 0
	sub	%d2, %d4, %d5
.LVL37:
	.loc 1 304 0
	jltz	%d4, .L31
	.loc 1 309 0
	mov	%d3, -1
	.loc 1 306 0
	and.t	%d5, %d2,31, %d5,31
.LVL38:
	.loc 1 309 0
	sh	%d3, -1
	seln	%d2, %d5, %d2, %d3
.LVL39:
	ret
.LVL40:
.L31:
	.loc 1 314 0
	ge	%d15, %d5, 0
	and.ge	%d15, %d2, 0
	.loc 1 317 0
	movh	%d3, 32768
	cmov	%d2, %d15, %d3
.LVL41:
	.loc 1 321 0
	ret
.LFE7:
	.size	MATHSRV_s32Sub_s32_s32, .-MATHSRV_s32Sub_s32_s32
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
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5b1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_Sub.c"
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
	.uaword	0x1fc
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
	.uaword	0x222
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
	.uaword	0x25f
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x9e
	.uaword	0x26b
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Sub_u32_u32"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x214
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x304
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2b
	.uaword	0x214
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2c
	.uaword	0x214
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x2f
	.uaword	0x294
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Sub_u32_s32"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	0x214
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x360
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x46
	.uaword	0x214
	.uaword	.LLST2
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0x47
	.uaword	0x1ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x4a
	.uaword	0x294
	.uaword	.LLST3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Sub_s32_u32"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x214
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3bc
	.uleb128 0x5
	.uaword	.LASF4
	.byte	0x1
	.byte	0x6b
	.uaword	0x1ee
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6c
	.uaword	0x214
	.uaword	.LLST4
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6f
	.uaword	0x294
	.uaword	.LLST5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Sub_s32_s32"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x214
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x418
	.uleb128 0x5
	.uaword	.LASF4
	.byte	0x1
	.byte	0x8d
	.uaword	0x1ee
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8e
	.uaword	0x1ee
	.uaword	.LLST6
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x1
	.byte	0x91
	.uaword	0x280
	.uaword	.LLST7
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s32Sub_u32_u32"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	0x1ee
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x481
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb4
	.uaword	0x214
	.byte	0x1
	.byte	0x54
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb5
	.uaword	0x214
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb8
	.uaword	0x294
	.uaword	.LLST8
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x1
	.byte	0xb9
	.uaword	0x280
	.uaword	.LLST9
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s32Sub_u32_s32"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	0x1ee
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4e8
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdc
	.uaword	0x214
	.uaword	.LLST10
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdd
	.uaword	0x1ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe0
	.uaword	0x294
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe1
	.uaword	0x280
	.uaword	.LLST11
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MATHSRV_s32Sub_s32_u32"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	0x1ee
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x558
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x107
	.uaword	0x1ee
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x108
	.uaword	0x214
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x294
	.uaword	.LLST13
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x280
	.uaword	.LLST14
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"MATHSRV_s32Sub_s32_s32"
	.byte	0x1
	.uahalf	0x125
	.byte	0x1
	.uaword	0x1ee
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x127
	.uaword	0x1ee
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x128
	.uaword	0x1ee
	.uaword	.LLST15
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x280
	.uaword	.LLST16
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x30
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
	.uahalf	0x16
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LFE1
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LFE4
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
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
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LFE5
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL33
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL34
	.uaword	.LFE6
	.uahalf	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
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
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
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
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"s32SecondValue"
.LASF3:
	.string	"u32LocalResult"
.LASF5:
	.string	"s32LocalResult"
.LASF0:
	.string	"u32FirstValue"
.LASF1:
	.string	"u32SecondValue"
.LASF4:
	.string	"s32FirstValue"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
