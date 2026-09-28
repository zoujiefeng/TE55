	.file	"MATHSRV_Mul.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_u32Mul_u32_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Mul_u32_u16
	.type	MATHSRV_u32Mul_u32_u16, @function
MATHSRV_u32Mul_u32_u16:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_Mul.c"
	.loc 1 45 0
.LVL0:
	.loc 1 63 0
	mov	%d2, 0
	.loc 1 49 0
	jz	%d5, .L2
.LVL1:
	.loc 1 51 0
	mov	%d2, -1
	div.u	%e2, %d2, %d5
	.loc 1 54 0
	mul	%d5, %d4
.LVL2:
	ge.u	%d2, %d2, %d4
	sel	%d2, %d2, %d5, -1
.L2:
.LVL3:
	.loc 1 66 0
	ret
.LFE0:
	.size	MATHSRV_u32Mul_u32_u16, .-MATHSRV_u32Mul_u32_u16
.section .text.MATHSRV_s32Mul_s32_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Mul_s32_u16
	.type	MATHSRV_s32Mul_s32_u16, @function
MATHSRV_s32Mul_s32_u16:
.LFB1:
	.loc 1 83 0
.LVL4:
	.loc 1 88 0
	jlez	%d4, .L8
.LVL5:
	.loc 1 90 0
	mov	%d2, -1
	sh	%d2, -1
	div	%e2, %d2, %d4
	.loc 1 94 0
	mul	%d4, %d5
.LVL6:
	mov	%d15, -1
	ge	%d2, %d2, %d5
	sh	%d15, -1
	sel	%d2, %d2, %d4, %d15
	ret
.LVL7:
.L8:
	.loc 1 122 0
	mov	%d2, 0
	.loc 1 101 0
	jnz	%d4, .L18
.L9:
.LVL8:
	.loc 1 125 0
	ret
.LVL9:
.L18:
	.loc 1 103 0
	jeq	%d4, -1, .L10
.LVL10:
	.loc 1 109 0
	movh	%d2, 32768
	div	%e2, %d2, %d4
	mov	%d15, %d2
	.loc 1 117 0
	movh	%d2, 32768
	.loc 1 111 0
	jlt.u	%d15, %d5, .L9
.LVL11:
.L10:
	.loc 1 113 0
	mul	%d2, %d5, %d4
.LVL12:
	.loc 1 125 0
	ret
.LFE1:
	.size	MATHSRV_s32Mul_s32_u16, .-MATHSRV_s32Mul_s32_u16
.section .text.MATHSRV_u32Mul_u32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Mul_u32_u32
	.type	MATHSRV_u32Mul_u32_u32, @function
MATHSRV_u32Mul_u32_u32:
.LFB2:
	.loc 1 142 0
.LVL13:
	.loc 1 160 0
	mov	%d2, 0
	.loc 1 146 0
	jz	%d4, .L20
.LVL14:
	.loc 1 148 0
	mov	%d2, -1
	div.u	%e2, %d2, %d4
	.loc 1 151 0
	mul	%d4, %d5
.LVL15:
	ge.u	%d2, %d2, %d5
	sel	%d2, %d2, %d4, -1
.LVL16:
.L20:
	.loc 1 163 0
	ret
.LFE2:
	.size	MATHSRV_u32Mul_u32_u32, .-MATHSRV_u32Mul_u32_u32
.section .text.MATHSRV_u32Mul_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Mul_u32_s32
	.type	MATHSRV_u32Mul_u32_s32, @function
MATHSRV_u32Mul_u32_s32:
.LFB3:
	.loc 1 180 0
.LVL17:
	.loc 1 198 0
	mov	%d2, 0
	.loc 1 184 0
	jlez	%d5, .L25
.LVL18:
	.loc 1 186 0
	mov	%d2, -1
	div.u	%e2, %d2, %d5
	.loc 1 189 0
	mul	%d5, %d4
.LVL19:
	ge.u	%d2, %d2, %d4
	sel	%d2, %d2, %d5, -1
.LVL20:
.L25:
	.loc 1 205 0
	ret
.LFE3:
	.size	MATHSRV_u32Mul_u32_s32, .-MATHSRV_u32Mul_u32_s32
.section .text.MATHSRV_u32Mul_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Mul_s32_s32
	.type	MATHSRV_u32Mul_s32_s32, @function
MATHSRV_u32Mul_s32_s32:
.LFB4:
	.loc 1 222 0
.LVL21:
	.loc 1 226 0
	ge	%d15, %d5, 1
	and.ge	%d15, %d4, 1
	jz	%d15, .L29
.LVL22:
	.loc 1 229 0
	mov	%d2, -1
	div.u	%e2, %d2, %d5
	mov	%d15, %d2
	.loc 1 236 0
	mov	%d2, -1
	.loc 1 230 0
	jge.u	%d15, %d4, .L32
.LVL23:
.L30:
	.loc 1 266 0
	ret
.LVL24:
.L29:
	.loc 1 239 0
	and.t	%d15, %d4,31, %d5,31
	.loc 1 263 0
	mov	%d2, 0
	.loc 1 239 0
	jz	%d15, .L30
	.loc 1 242 0
	movh	%d15, 32768
	.loc 1 244 0
	mov	%d2, 1
	.loc 1 242 0
	jeq	%d5, %d15, .L31
	.loc 1 248 0
	rsub	%d15, %d5, 0
	mov	%d2, -1
	div.u	%e2, %d2, %d15
.L31:
.LVL25:
	.loc 1 250 0
	rsub	%d15, %d4, 0
	jge.u	%d2, %d15, .L32
	.loc 1 236 0
	mov	%d2, -1
.LVL26:
	.loc 1 266 0
	ret
.LVL27:
.L32:
	.loc 1 232 0
	mul	%d2, %d4, %d5
.LVL28:
	ret
.LFE4:
	.size	MATHSRV_u32Mul_s32_s32, .-MATHSRV_u32Mul_s32_s32
.section .text.MATHSRV_s32Mul_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Mul_u32_s32
	.type	MATHSRV_s32Mul_u32_s32, @function
MATHSRV_s32Mul_u32_s32:
.LFB5:
	.loc 1 283 0
.LVL29:
	.loc 1 288 0
	jlez	%d5, .L38
	.loc 1 290 0
	mov	%d2, -1
	sh	%d2, -1
	div	%e2, %d2, %d5
	mov	%d15, %d2
	.loc 1 296 0
	mov	%d2, -1
	sh	%d2, -1
	.loc 1 290 0
	jge.u	%d15, %d4, .L41
.L39:
.LVL30:
	.loc 1 323 0
	ret
.LVL31:
.L38:
	.loc 1 320 0
	mov	%d2, 0
	.loc 1 299 0
	jz	%d5, .L39
	.loc 1 303 0
	movh	%d15, 32768
	.loc 1 301 0
	jeq	%d5, -1, .L40
	.loc 1 307 0
	div	%e2, %d15, %d5
	mov	%d15, %d2
.LVL32:
.L40:
	.loc 1 309 0
	jlt.u	%d15, %d4, .L47
.LVL33:
.L41:
	.loc 1 292 0
	mul	%d2, %d5, %d4
.LVL34:
	ret
.LVL35:
.L47:
	.loc 1 315 0
	movh	%d2, 32768
.LVL36:
	.loc 1 323 0
	ret
.LFE5:
	.size	MATHSRV_s32Mul_u32_s32, .-MATHSRV_s32Mul_u32_s32
.section .text.MATHSRV_s32Mul_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Mul_s32_s32
	.type	MATHSRV_s32Mul_s32_s32, @function
MATHSRV_s32Mul_s32_s32:
.LFB6:
	.loc 1 340 0
.LVL37:
	.loc 1 345 0
	ge	%d15, %d5, 1
	and.ge	%d15, %d4, 1
	.loc 1 346 0
	ge	%d2, %d4, 1
	.loc 1 345 0
	jz	%d15, .L49
.LVL38:
	.loc 1 348 0
	mov	%d2, -1
	sh	%d2, -1
	div	%e2, %d2, %d5
	mov	%d15, %d2
	.loc 1 355 0
	mov	%d2, -1
	sh	%d2, -1
	.loc 1 349 0
	jge	%d15, %d4, .L53
.LVL39:
.L50:
	.loc 1 417 0
	ret
.LVL40:
.L49:
	.loc 1 358 0
	and.t	%d15, %d4,31, %d5,31
	jz	%d15, .L51
	.loc 1 361 0
	movh	%d15, 32768
	.loc 1 363 0
	mov	%d2, 0
	.loc 1 361 0
	jeq	%d5, %d15, .L52
	.loc 1 367 0
	add	%d2, %d15, 1
	div	%e2, %d2, %d5
.LVL41:
.L52:
	.loc 1 369 0
	rsub	%d15, %d4, 0
	jge.u	%d2, %d15, .L53
	.loc 1 355 0
	mov	%d2, -1
.LVL42:
	sh	%d2, -1
	ret
.L51:
	.loc 1 380 0
	jz	%d2, .L54
.LVL43:
	.loc 1 382 0
	movh	%d2, 32768
	div	%e2, %d2, %d4
	.loc 1 383 0
	jlt	%d5, %d2, .L62
.LVL44:
.L53:
	.loc 1 351 0
	mul	%d2, %d4, %d5
.LVL45:
	ret
.LVL46:
.L54:
	.loc 1 413 0
	mov	%d2, 0
	.loc 1 392 0
	jz	%d4, .L50
	.loc 1 396 0
	movh	%d15, 32768
	.loc 1 394 0
	jeq	%d4, -1, .L55
	.loc 1 400 0
	div	%e2, %d15, %d4
	mov	%d15, %d2
.L55:
.LVL47:
	.loc 1 402 0
	jge.u	%d15, %d5, .L53
.LVL48:
.L62:
	.loc 1 389 0
	movh	%d2, 32768
.LVL49:
	.loc 1 417 0
	ret
.LFE6:
	.size	MATHSRV_s32Mul_s32_s32, .-MATHSRV_s32Mul_s32_s32
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x56f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_Mul.c"
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
	.uaword	0x1f6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x21a
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
	.uaword	0x1ab
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
	.uaword	0x26d
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x9e
	.uaword	0x279
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Mul_u32_u16"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uaword	0x232
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
	.byte	0x2a
	.uaword	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2b
	.uaword	0x1e8
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x2e
	.uaword	0x2a2
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s32Mul_s32_u16"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	0x20c
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x37d
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x1
	.byte	0x50
	.uaword	0x20c
	.uaword	.LLST2
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0x51
	.uaword	0x1e8
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x1
	.byte	0x54
	.uaword	0x28e
	.uaword	.LLST3
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x1
	.byte	0x55
	.uaword	0x2a2
	.uaword	.LLST4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Mul_u32_u32"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e4
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8b
	.uaword	0x232
	.uaword	.LLST5
	.uleb128 0x8
	.string	"u32SecondValue"
	.byte	0x1
	.byte	0x8c
	.uaword	0x232
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8f
	.uaword	0x2a2
	.uaword	.LLST6
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Mul_u32_s32"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x440
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb1
	.uaword	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x1
	.byte	0xb2
	.uaword	0x20c
	.uaword	.LLST7
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb5
	.uaword	0x2a2
	.uaword	.LLST8
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u32Mul_s32_s32"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49a
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdb
	.uaword	0x20c
	.byte	0x1
	.byte	0x54
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x1
	.byte	0xdc
	.uaword	0x20c
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0xdf
	.uaword	0x2a2
	.uaword	.LLST9
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MATHSRV_s32Mul_u32_s32"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.uaword	0x20c
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x508
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x118
	.uaword	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x119
	.uaword	0x20c
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x28e
	.uaword	.LLST10
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2a2
	.uaword	.LLST11
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"MATHSRV_s32Mul_s32_s32"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.uaword	0x20c
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x151
	.uaword	0x20c
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x152
	.uaword	0x20c
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x155
	.uaword	0x28e
	.uaword	.LLST12
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x156
	.uaword	0x2a2
	.uaword	.LLST13
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
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
	.uahalf	0xe
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
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
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x9
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0xa
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0xe
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0xf
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0xe
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0xf
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0xe
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x9
	.byte	0xc
	.uaword	0x7fffffff
	.byte	0x75
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"u32LocalResult"
.LASF6:
	.string	"s32SecondValue"
.LASF0:
	.string	"u32FirstValue"
.LASF4:
	.string	"s32LocalResult"
.LASF5:
	.string	"u32LocalTemp"
.LASF1:
	.string	"u16SecondValue"
.LASF2:
	.string	"s32FirstValue"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
