	.file	"MATHSRV_MulDiv_16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_u16Mul_u16_u16_div_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_u16Mul_u16_u16_div_u16
	.type	MATHSRV_u16Mul_u16_u16_div_u16, @function
MATHSRV_u16Mul_u16_u16_div_u16:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_16.c"
	.loc 1 49 0
.LVL0:
	mov.u	%d2, 65535
	.loc 1 55 0
	jz	%d6, .L2
	.loc 1 57 0
	mul	%d4, %d5
.LVL1:
	.loc 1 58 0
	div.u	%e4, %d4, %d6
.LVL2:
	.loc 1 59 0
	sh	%d15, %d5, 1
	.loc 1 58 0
	mov	%d2, %d4
.LVL3:
	.loc 1 61 0
	ge.u	%d6, %d15, %d6
.LVL4:
	add	%d4, 1
.LVL5:
	sel	%d2, %d6, %d4, %d2
.LVL6:
	sat.hu	%d2, %d2
.LVL7:
.L2:
	.loc 1 72 0
	ret
.LFE0:
	.size	MATHSRV_u16Mul_u16_u16_div_u16, .-MATHSRV_u16Mul_u16_u16_div_u16
.section .text.MATHSRV_s16Mul_s16_u16_div_s16,"ax",@progbits
	.align 1
	.global	MATHSRV_s16Mul_s16_u16_div_s16
	.type	MATHSRV_s16Mul_s16_u16_div_s16, @function
MATHSRV_s16Mul_s16_u16_div_s16:
.LFB1:
	.loc 1 93 0
.LVL8:
	.loc 1 126 0
	ge	%d2, %d4, 0
	or.eq	%d2, %d5, 0
	mov	%d15, 32767
	mov	%d3, -32768
	sel	%d2, %d2, %d15, %d3
	.loc 1 101 0
	jz	%d6, .L14
	.loc 1 103 0
	mul	%d5, %d4
.LVL9:
	.loc 1 106 0
	abs	%d15, %d6
	.loc 1 105 0
	abs	%d8, %d5
	.loc 1 107 0
	div.u	%e8, %d8, %d15
	.loc 1 104 0
	div	%e0, %d5, %d6
	.loc 1 107 0
	sh	%d3, %d9, 1
	.loc 1 104 0
	mov	%d2, %d0
.LVL10:
	.loc 1 107 0
	jlt.u	%d3, %d15, .L11
	.loc 1 110 0
	ge	%d15, %d4, 1
.LVL11:
	and.ge	%d15, %d6, 1
	jz	%d15, .L17
.LVL12:
.L12:
	.loc 1 115 0
	addi	%d2, %d0, 1
.LVL13:
.L11:
	sat.h	%d2, %d2
.LVL14:
.L14:
	.loc 1 137 0
	ret
.LVL15:
.L17:
	.loc 1 112 0
	and.t	%d6, %d6,31, %d4,31
.LVL16:
	.loc 1 119 0
	addi	%d2, %d0, -1
	.loc 1 112 0
	jz	%d6, .L11
	j	.L12
.LFE1:
	.size	MATHSRV_s16Mul_s16_u16_div_s16, .-MATHSRV_s16Mul_s16_u16_div_s16
.section .text.MATHSRV_s16Mul_u16_s16_div_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_s16Mul_u16_s16_div_u16
	.type	MATHSRV_s16Mul_u16_s16_div_u16, @function
MATHSRV_s16Mul_u16_s16_div_u16:
.LFB2:
	.loc 1 158 0
.LVL17:
	.loc 1 185 0
	eq	%d2, %d4, 0
	or.ge	%d2, %d5, 0
	mov	%d15, 32767
	mov	%d3, -32768
	sel	%d2, %d2, %d15, %d3
	.loc 1 165 0
	jz	%d6, .L22
	.loc 1 167 0
	mul	%d4, %d5
.LVL18:
	.loc 1 169 0
	abs	%d8, %d4
	.loc 1 170 0
	div.u	%e8, %d8, %d6
	.loc 1 168 0
	div	%e0, %d4, %d6
	.loc 1 170 0
	sh	%d15, %d9, 1
	.loc 1 168 0
	mov	%d2, %d0
.LVL19:
	.loc 1 170 0
	jlt.u	%d15, %d6, .L20
	.loc 1 174 0
	add	%d15, %d0, 1
	lt	%d2, %d5, 1
	add	%d0, -1
.LVL20:
	sel	%d2, %d2, %d0, %d15
.L20:
.LVL21:
	sat.h	%d2, %d2
.LVL22:
.L22:
	.loc 1 196 0
	ret
.LFE2:
	.size	MATHSRV_s16Mul_u16_s16_div_u16, .-MATHSRV_s16Mul_u16_s16_div_u16
.section .text.MATHSRV_u16Mul_s16_u16_div_s16,"ax",@progbits
	.align 1
	.global	MATHSRV_u16Mul_s16_u16_div_s16
	.type	MATHSRV_u16Mul_s16_u16_div_s16, @function
MATHSRV_u16Mul_s16_u16_div_s16:
.LFB3:
	.loc 1 217 0
.LVL23:
	.loc 1 254 0
	ge	%d2, %d4, 0
	or.eq	%d2, %d5, 0
	rsub	%d2
	extr.u	%d2, %d2, 0, 16
	.loc 1 225 0
	jz	%d6, .L32
	.loc 1 228 0
	mul	%d5, %d4
.LVL24:
	.loc 1 231 0
	mov	%d2, %d6
	.loc 1 229 0
	div	%e0, %d5, %d6
	.loc 1 230 0
	abs	%d8, %d5
	.loc 1 229 0
	mov	%d15, %d0
.LVL25:
	.loc 1 231 0
	jltz	%d6, .L37
.LVL26:
	.loc 1 233 0 discriminator 4
	div.u	%e8, %d8, %d2
.LVL27:
	sh	%d3, %d9, 1
	jlt.u	%d3, %d2, .L29
.L39:
	.loc 1 235 0
	ge	%d15, %d4, 1
	and.ge	%d15, %d6, 1
	jz	%d15, .L38
	.loc 1 240 0
	add	%d15, %d0, 1
.LVL28:
.L29:
	mov	%d2, 0
.LVL29:
	.loc 1 247 0
	jltz	%d15, .L32
	extr.u	%d3, %d15, 0, 16
	movh	%d4, 1
.LVL30:
	lt	%d2, %d15, %d4
	mov.u	%d15, 65535
.LVL31:
	sel	%d2, %d2, %d3, %d15
.LVL32:
.L32:
	.loc 1 266 0
	ret
.LVL33:
.L37:
	.loc 1 231 0 discriminator 1
	rsub	%d2, %d6, 0
	extr.u	%d2, %d2, 0, 16
.LVL34:
	.loc 1 233 0 discriminator 1
	div.u	%e8, %d8, %d2
.LVL35:
	sh	%d3, %d9, 1
	jlt.u	%d3, %d2, .L29
	j	.L39
.L38:
	.loc 1 237 0
	and.t	%d6, %d6,31, %d4,31
.LVL36:
	.loc 1 244 0
	add	%d15, %d0, -1
	.loc 1 237 0
	jz	%d6, .L29
	.loc 1 240 0
	add	%d15, %d0, 1
.LVL37:
	j	.L29
.LFE3:
	.size	MATHSRV_u16Mul_s16_u16_div_s16, .-MATHSRV_u16Mul_s16_u16_div_s16
.section .text.MATHSRV_u16Mul_s16_u16_div_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_u16Mul_s16_u16_div_u16
	.type	MATHSRV_u16Mul_s16_u16_div_u16, @function
MATHSRV_u16Mul_s16_u16_div_u16:
.LFB4:
	.loc 1 287 0
.LVL38:
	.loc 1 317 0
	ge	%d2, %d4, 0
	or.eq	%d2, %d5, 0
	rsub	%d2
	extr.u	%d2, %d2, 0, 16
	.loc 1 294 0
	jz	%d6, .L44
	.loc 1 296 0
	mul	%d5, %d4
.LVL39:
	.loc 1 298 0
	abs	%d2, %d5
	.loc 1 299 0
	div.u	%e2, %d2, %d6
	.loc 1 297 0
	div	%e0, %d5, %d6
	.loc 1 299 0
	sh	%d2, %d3, 1
	.loc 1 297 0
	mov	%d15, %d0
.LVL40:
	.loc 1 299 0
	jlt.u	%d2, %d6, .L42
	.loc 1 303 0
	addi	%d3, %d0, 1
	lt	%d4, %d4, 1
.LVL41:
	add	%d0, -1
.LVL42:
	sel	%d15, %d4, %d0, %d3
.L42:
.LVL43:
	mov	%d2, 0
	.loc 1 310 0
	jltz	%d15, .L44
	extr.u	%d3, %d15, 0, 16
	movh	%d4, 1
	lt	%d2, %d15, %d4
	mov.u	%d15, 65535
.LVL44:
	sel	%d2, %d2, %d3, %d15
.LVL45:
.L44:
	.loc 1 329 0
	ret
.LFE4:
	.size	MATHSRV_u16Mul_s16_u16_div_u16, .-MATHSRV_u16Mul_s16_u16_div_u16
.section .text.MATHSRV_s16Mul_s16_s16_div_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_s16Mul_s16_s16_div_u16
	.type	MATHSRV_s16Mul_s16_s16_div_u16, @function
MATHSRV_s16Mul_s16_s16_div_u16:
.LFB5:
	.loc 1 350 0
.LVL46:
	.loc 1 359 0
	ge	%d15, %d5, 0
	and.ge	%d15, %d4, 0
	jnz	%d15, .L49
	.loc 1 361 0
	lt	%d15, %d5, 1
	and.lt	%d15, %d4, 1
	jz	%d15, .L66
.L49:
.LVL47:
	.loc 1 371 0
	jz	%d6, .L67
	mov	%d7, 1
	.loc 1 373 0
	jltz	%d4, .L68
.LVL48:
.L52:
	.loc 1 374 0 discriminator 4
	jltz	%d5, .L69
.LVL49:
.L54:
	.loc 1 377 0 discriminator 4
	mul	%d4, %d5
.LVL50:
	mov	%d2, 32767
	.loc 1 378 0 discriminator 4
	div.u	%e4, %d4, %d6
.LVL51:
	.loc 1 381 0 discriminator 4
	sh	%d3, %d5, 1
	.loc 1 383 0 discriminator 4
	ge.u	%d6, %d3, %d6
.LVL52:
	.loc 1 378 0 discriminator 4
	mov	%d15, %d4
.LVL53:
	.loc 1 383 0 discriminator 4
	add	%d4, 1
.LVL54:
	sel	%d15, %d6, %d4, %d15
.LVL55:
	.loc 1 395 0 discriminator 4
	rsub	%d3, %d15, 0
	extr	%d4, %d3, 0, 16
	mov	%d5, -32767
.LVL56:
	min.u	%d15, %d15, %d2
.LVL57:
	ge	%d2, %d3, %d5
	mov	%d3, -32768
.LVL58:
	sel	%d4, %d2, %d4, %d3
	ne	%d2, %d7, 1
	sel	%d2, %d2, %d4, %d15
	ret
.LVL59:
.L67:
	.loc 1 371 0
	mov	%d2, 32767
	ret
.LVL60:
.L66:
	jz	%d6, .L70
	.loc 1 368 0
	mov	%d7, 0
	.loc 1 373 0
	jgez	%d4, .L52
.LVL61:
.L68:
	.loc 1 373 0 is_stmt 0 discriminator 1
	rsub	%d4
.LVL62:
	extr.u	%d4, %d4, 0, 16
.LVL63:
	.loc 1 374 0 is_stmt 1 discriminator 1
	jgez	%d5, .L54
.L69:
	rsub	%d5
.LVL64:
	extr.u	%d5, %d5, 0, 16
	j	.L54
.LVL65:
.L70:
	.loc 1 371 0
	mov	%d2, -32768
	.loc 1 412 0
	ret
.LFE5:
	.size	MATHSRV_s16Mul_s16_s16_div_u16, .-MATHSRV_s16Mul_s16_s16_div_u16
.section .text.MATHSRV_s16Mul_s16_s16_div_s16,"ax",@progbits
	.align 1
	.global	MATHSRV_s16Mul_s16_s16_div_s16
	.type	MATHSRV_s16Mul_s16_s16_div_s16, @function
MATHSRV_s16Mul_s16_s16_div_s16:
.LFB6:
	.loc 1 433 0
.LVL66:
	.loc 1 444 0
	ge	%d15, %d5, 0
	and.ge	%d15, %d4, 0
	jnz	%d15, .L72
	.loc 1 446 0
	lt	%d15, %d5, 1
	and.lt	%d15, %d4, 1
	jz	%d15, .L93
.L72:
.LVL67:
	.loc 1 456 0
	jz	%d6, .L94
	ge	%d7, %d6, 1
.LVL68:
.L74:
	.loc 1 471 0
	jltz	%d4, .L95
.LVL69:
	.loc 1 472 0 discriminator 4
	jltz	%d5, .L96
.LVL70:
.L78:
	.loc 1 473 0 discriminator 4
	jltz	%d6, .L97
.LVL71:
.L80:
	.loc 1 476 0 discriminator 4
	mul	%d4, %d5
.LVL72:
	.loc 1 477 0 discriminator 4
	div.u	%e4, %d4, %d6
.LVL73:
	.loc 1 480 0 discriminator 4
	sh	%d2, %d5, 1
	.loc 1 482 0 discriminator 4
	ge.u	%d6, %d2, %d6
.LVL74:
	.loc 1 477 0 discriminator 4
	mov	%d15, %d4
.LVL75:
	.loc 1 482 0 discriminator 4
	add	%d4, 1
.LVL76:
	sel	%d15, %d6, %d4, %d15
.LVL77:
	.loc 1 494 0 discriminator 4
	rsub	%d3, %d15, 0
	extr	%d4, %d3, 0, 16
	mov	%d2, 32767
	mov	%d5, -32767
.LVL78:
	min.u	%d15, %d15, %d2
.LVL79:
	ge	%d2, %d3, %d5
	mov	%d3, -32768
.LVL80:
	sel	%d4, %d2, %d4, %d3
	ne	%d2, %d7, 1
	sel	%d2, %d2, %d4, %d15
	ret
.LVL81:
.L94:
	.loc 1 456 0
	mov	%d2, 32767
	.loc 1 511 0
	ret
.LVL82:
.L93:
	.loc 1 456 0
	mov	%d2, -32768
	sh	%d7, %d6, -31
	jnz	%d6, .L74
	.loc 1 511 0
	ret
.LVL83:
.L97:
	.loc 1 473 0 discriminator 1
	rsub	%d6
.LVL84:
	extr.u	%d6, %d6, 0, 16
	j	.L80
.LVL85:
.L95:
	.loc 1 471 0 discriminator 1
	rsub	%d4
.LVL86:
	extr.u	%d4, %d4, 0, 16
.LVL87:
	.loc 1 472 0 discriminator 1
	jgez	%d5, .L78
.L96:
	rsub	%d5
.LVL88:
	extr.u	%d5, %d5, 0, 16
.LVL89:
	.loc 1 473 0 discriminator 1
	jgez	%d6, .L80
	j	.L97
.LFE6:
	.size	MATHSRV_s16Mul_s16_s16_div_s16, .-MATHSRV_s16Mul_s16_s16_div_s16
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
	.uaword	0x805
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_MulDiv_16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x56
	.uaword	0x209
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x224
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x248
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
	.uaword	0x1cb
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
	.byte	0x2
	.byte	0x80
	.uaword	0x1ea
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"sint16_least"
	.byte	0x2
	.byte	0x8f
	.uaword	0x290
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x29c
	.uleb128 0x3
	.string	"sint32_least"
	.byte	0x2
	.byte	0x99
	.uaword	0x290
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x9e
	.uaword	0x29c
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u16Mul_u16_u16_div_u16"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	0x216
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x392
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2c
	.uaword	0x216
	.uaword	.LLST0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2d
	.uaword	0x216
	.byte	0x1
	.byte	0x55
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0x2e
	.uaword	0x216
	.uaword	.LLST1
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x32
	.uaword	0x2ed
	.uaword	.LLST2
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x1
	.byte	0x33
	.uaword	0x2c5
	.uaword	.LLST3
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x1
	.byte	0x34
	.uaword	0x2ed
	.uaword	.LLST4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s16Mul_s16_u16_div_s16"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x449
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x1
	.byte	0x58
	.uaword	0x1fb
	.byte	0x1
	.byte	0x54
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0x59
	.uaword	0x216
	.uaword	.LLST5
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x1
	.byte	0x5a
	.uaword	0x1fb
	.uaword	.LLST6
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0x5e
	.uaword	0x2d9
	.uaword	.LLST7
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x1
	.byte	0x5f
	.uaword	0x2b1
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x1
	.byte	0x60
	.uaword	0x2d9
	.uaword	.LLST8
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x1
	.byte	0x61
	.uaword	0x2ed
	.byte	0x1
	.byte	0x58
	.uleb128 0xa
	.string	"u32LocalDenAbsVal"
	.byte	0x1
	.byte	0x62
	.uaword	0x2ed
	.uaword	.LLST9
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s16Mul_u16_s16_div_u16"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4e3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x99
	.uaword	0x216
	.uaword	.LLST10
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x1
	.byte	0x9a
	.uaword	0x1fb
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x1
	.byte	0x9b
	.uaword	0x216
	.byte	0x1
	.byte	0x56
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0x9f
	.uaword	0x2d9
	.uaword	.LLST11
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x1
	.byte	0xa0
	.uaword	0x2b1
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x1
	.byte	0xa1
	.uaword	0x2d9
	.uaword	.LLST12
	.uleb128 0x7
	.uaword	.LASF10
	.byte	0x1
	.byte	0xa2
	.uaword	0x2ed
	.uaword	.LLST13
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u16Mul_s16_u16_div_s16"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	0x216
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x59e
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x1
	.byte	0xd4
	.uaword	0x1fb
	.uaword	.LLST14
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd5
	.uaword	0x216
	.uaword	.LLST15
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x1
	.byte	0xd6
	.uaword	0x1fb
	.uaword	.LLST16
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0xda
	.uaword	0x2d9
	.uaword	.LLST17
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0xdb
	.uaword	0x2c5
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x1
	.byte	0xdc
	.uaword	0x2d9
	.uaword	.LLST18
	.uleb128 0x7
	.uaword	.LASF10
	.byte	0x1
	.byte	0xdd
	.uaword	0x2ed
	.uaword	.LLST19
	.uleb128 0xa
	.string	"u16LocalDenAbsVal"
	.byte	0x1
	.byte	0xde
	.uaword	0x2c5
	.uaword	.LLST20
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_u16Mul_s16_u16_div_u16"
	.byte	0x1
	.uahalf	0x118
	.byte	0x1
	.uaword	0x216
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x642
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1fb
	.uaword	.LLST21
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x216
	.uaword	.LLST22
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x216
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x120
	.uaword	0x2d9
	.uaword	.LLST23
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x121
	.uaword	0x2c5
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x122
	.uaword	0x2d9
	.uaword	.LLST24
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x123
	.uaword	0x2ed
	.uaword	.LLST25
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_s16Mul_s16_s16_div_u16"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x708
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x159
	.uaword	0x1fb
	.uaword	.LLST26
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x1fb
	.uaword	.LLST27
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x216
	.uaword	.LLST28
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x281
	.uaword	.LLST29
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x160
	.uaword	0x2b1
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x161
	.uaword	0x2c5
	.uaword	.LLST30
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x162
	.uaword	0x2c5
	.uaword	.LLST31
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x163
	.uaword	0x2ed
	.uaword	.LLST32
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x164
	.uaword	0x2ed
	.uaword	.LLST33
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"MATHSRV_s16Mul_s16_s16_div_s16"
	.byte	0x1
	.uahalf	0x1aa
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x1fb
	.uaword	.LLST34
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x1fb
	.uaword	.LLST35
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x1fb
	.uaword	.LLST36
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x281
	.uaword	.LLST37
	.uleb128 0x11
	.string	"bLocalPositiveResult"
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x281
	.uaword	.LLST38
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x2c5
	.uaword	.LLST39
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x2c5
	.uaword	.LLST40
	.uleb128 0x11
	.string	"u16LocalAbsDenom"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x2c5
	.uaword	.LLST41
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x2ed
	.uaword	.LLST42
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x2ed
	.uaword	.LLST43
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x2b1
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE0
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
	.byte	0x56
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x17
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.uahalf	0xffff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
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
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x25
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL24
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL36
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL37
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL24
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL33
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL27
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL35
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL39
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x25
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1cb
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL40
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL49
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL46
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL52
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL49
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL66
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL71
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL88
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL66
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL71
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL68
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL83
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL89
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
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
.LASF5:
	.string	"u32LocalProduct"
.LASF9:
	.string	"s32LocalProduct"
.LASF7:
	.string	"s16Denominator"
.LASF6:
	.string	"s16FirstValue"
.LASF2:
	.string	"u16Denominator"
.LASF15:
	.string	"u16LocalAbsSecondVal"
.LASF8:
	.string	"s32LocalResult"
.LASF1:
	.string	"u16SecondValue"
.LASF13:
	.string	"bLocalPositiveProduct"
.LASF3:
	.string	"u32LocalResult"
.LASF14:
	.string	"u16LocalAbsFirstVal"
.LASF11:
	.string	"s16SecondValue"
.LASF0:
	.string	"u16FirstValue"
.LASF12:
	.string	"s16LocalResult"
.LASF4:
	.string	"u16LocalResult"
.LASF10:
	.string	"u32LocalProAbsVal"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
