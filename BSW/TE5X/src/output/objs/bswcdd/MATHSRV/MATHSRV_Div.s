	.file	"MATHSRV_Div.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_s16Div_s32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_s16Div_s32_u32
	.type	MATHSRV_s16Div_s32_u32, @function
MATHSRV_s16Div_s32_u32:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_Div.c"
	.loc 1 47 0
.LVL0:
	.loc 1 79 0
	ge	%d2, %d4, 0
	mov	%d15, 32767
	mov	%d3, -32768
	sel	%d2, %d2, %d15, %d3
	.loc 1 55 0
	jz	%d5, .L7
	.loc 1 57 0
	abs	%d6, %d4
.LVL1:
	.loc 1 58 0
	div.u	%e6, %d6, %d5
.LVL2:
	.loc 1 60 0
	sh	%d2, %d5, -1
	.loc 1 58 0
	mov	%d15, %d6
.LVL3:
	.loc 1 60 0
	jge.u	%d2, %d7, .L13
.LVL4:
.L3:
	.loc 1 64 0
	add	%d15, %d6, 1
.LVL5:
.L4:
	.loc 1 68 0
	rsub	%d2, %d15, 0
	lt	%d4, %d4, 0
.LVL6:
	sel	%d2, %d4, %d2, %d15
.LVL7:
	sat.h	%d2, %d2
.LVL8:
.L7:
	.loc 1 89 0
	ret
.LVL9:
.L13:
	.loc 1 62 0
	eq	%d2, %d7, %d2
	andn	%d5, %d2, %d5
.LVL10:
	jz	%d5, .L4
	j	.L3
.LFE0:
	.size	MATHSRV_s16Div_s32_u32, .-MATHSRV_s16Div_s32_u32
.section .text.MATHSRV_s16Div_s32_s16,"ax",@progbits
	.align 1
	.global	MATHSRV_s16Div_s32_s16
	.type	MATHSRV_s16Div_s32_s16, @function
MATHSRV_s16Div_s32_s16:
.LFB1:
	.loc 1 108 0
.LVL11:
	.loc 1 151 0
	ge	%d2, %d4, 0
	mov	%d15, 32767
	mov	%d3, -32768
	sel	%d2, %d2, %d15, %d3
	.loc 1 118 0
	jz	%d5, .L16
	.loc 1 120 0
	movh	%d2, 32768
	ne	%d15, %d4, %d2
	or.ne	%d15, %d5, -1
	mov	%d2, 32767
	jz	%d15, .L16
	.loc 1 125 0
	abs	%d0, %d4
	.loc 1 126 0
	abs	%d15, %d5
	.loc 1 127 0
	div.u	%e0, %d0, %d15
	.loc 1 123 0
	div	%e6, %d4, %d5
	.loc 1 127 0
	sh	%d3, %d1, 1
	.loc 1 123 0
	mov	%d2, %d6
.LVL12:
	.loc 1 127 0
	jlt.u	%d3, %d15, .L19
	.loc 1 130 0
	ge	%d15, %d5, 1
.LVL13:
	and.ge	%d15, %d4, 1
	jnz	%d15, .L20
	.loc 1 132 0
	and.t	%d5, %d4,31, %d5,31
.LVL14:
	.loc 1 139 0
	addi	%d2, %d6, -1
	.loc 1 132 0
	jz	%d5, .L19
.L20:
	.loc 1 135 0
	addi	%d2, %d6, 1
.LVL15:
.L19:
	sat.h	%d2, %d2
.LVL16:
.L16:
	.loc 1 161 0
	ret
.LFE1:
	.size	MATHSRV_s16Div_s32_s16, .-MATHSRV_s16Div_s32_s16
.section .text.MATHSRV_u16Div_s32_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_u16Div_s32_u16
	.type	MATHSRV_u16Div_s32_u16, @function
MATHSRV_u16Div_s32_u16:
.LFB2:
	.loc 1 180 0
.LVL17:
	.loc 1 204 0
	ge	%d2, %d4, 0
	rsub	%d2
	.loc 1 180 0
	mov	%d15, %d5
	.loc 1 204 0
	extr.u	%d2, %d2, 0, 16
	.loc 1 185 0
	jz	%d5, .L29
	mov	%d2, 0
	.loc 1 187 0
	jlez	%d4, .L29
	.loc 1 189 0
	div	%e4, %d4, %d5
.LVL18:
	.loc 1 190 0
	sh	%d3, %d5, 1
	.loc 1 189 0
	mov	%d2, %d4
.LVL19:
	.loc 1 192 0
	ge	%d15, %d3, %d15
	add	%d4, 1
.LVL20:
	cmov	%d2, %d15, %d4
.LVL21:
	sat.hu	%d2, %d2
.LVL22:
.L29:
	.loc 1 215 0
	ret
.LFE2:
	.size	MATHSRV_u16Div_s32_u16, .-MATHSRV_u16Div_s32_u16
.section .text.MATHSRV_u16Div_u32_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_u16Div_u32_u16
	.type	MATHSRV_u16Div_u32_u16, @function
MATHSRV_u16Div_u32_u16:
.LFB3:
	.loc 1 234 0
.LVL23:
	mov.u	%d2, 65535
	.loc 1 239 0
	jz	%d5, .L34
	.loc 1 241 0
	sh	%d2, %d5, -1
	sub	%d15, %d5, %d2
.LVL24:
	mov	%d2, 0
	.loc 1 242 0
	jlt.u	%d4, %d15, .L34
.LVL25:
	.loc 1 248 0
	sub	%d2, %d4, %d15
.LVL26:
	.loc 1 249 0
	div.u	%e2, %d2, %d5
.LVL27:
	add	%d2, 1
.LVL28:
	sat.hu	%d2, %d2
.LVL29:
.L34:
	.loc 1 260 0
	ret
.LFE3:
	.size	MATHSRV_u16Div_u32_u16, .-MATHSRV_u16Div_u32_u16
.section .text.MATHSRV_u32Div_u32_u16,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Div_u32_u16
	.type	MATHSRV_u32Div_u32_u16, @function
MATHSRV_u32Div_u32_u16:
.LFB4:
	.loc 1 279 0
.LVL30:
	.loc 1 298 0
	mov	%d2, -1
	.loc 1 283 0
	jnz	%d5, .L43
.L39:
.LVL31:
	.loc 1 301 0
	ret
.LVL32:
.L43:
	.loc 1 285 0
	sh	%d2, %d5, -1
	sub	%d15, %d5, %d2
.LVL33:
	.loc 1 288 0
	mov	%d2, 0
	.loc 1 286 0
	jlt.u	%d4, %d15, .L39
.LVL34:
	.loc 1 292 0
	sub	%d2, %d4, %d15
.LVL35:
	.loc 1 293 0
	div.u	%e2, %d2, %d5
.LVL36:
	add	%d2, 1
.LVL37:
	.loc 1 301 0
	ret
.LFE4:
	.size	MATHSRV_u32Div_u32_u16, .-MATHSRV_u32Div_u32_u16
.section .text.MATHSRV_u32Div_u32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Div_u32_u32
	.type	MATHSRV_u32Div_u32_u32, @function
MATHSRV_u32Div_u32_u32:
.LFB5:
	.loc 1 320 0
.LVL38:
	.loc 1 339 0
	mov	%d2, -1
	.loc 1 324 0
	jnz	%d5, .L49
.L45:
.LVL39:
	.loc 1 342 0
	ret
.LVL40:
.L49:
	.loc 1 326 0
	sh	%d2, %d5, -1
	sub	%d15, %d5, %d2
.LVL41:
	.loc 1 329 0
	mov	%d2, 0
	.loc 1 327 0
	jlt.u	%d4, %d15, .L45
.LVL42:
	.loc 1 333 0
	sub	%d2, %d4, %d15
.LVL43:
	.loc 1 334 0
	div.u	%e2, %d2, %d5
.LVL44:
	add	%d2, 1
.LVL45:
	.loc 1 342 0
	ret
.LFE5:
	.size	MATHSRV_u32Div_u32_u32, .-MATHSRV_u32Div_u32_u32
.section .text.MATHSRV_u32Div_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Div_u32_s32
	.type	MATHSRV_u32Div_u32_s32, @function
MATHSRV_u32Div_u32_s32:
.LFB6:
	.loc 1 361 0
.LVL46:
	.loc 1 387 0
	mov	%d2, -1
	.loc 1 365 0
	jnz	%d5, .L56
.L51:
.LVL47:
	.loc 1 390 0
	ret
.LVL48:
.L56:
	.loc 1 382 0
	mov	%d2, 0
	.loc 1 367 0
	jlez	%d5, .L51
	.loc 1 369 0
	sh	%d15, %d5, -31
	add	%d15, %d5
	sha	%d15, -1
	sub	%d15, %d5, %d15
.LVL49:
	.loc 1 370 0
	jlt.u	%d4, %d15, .L51
.LVL50:
	.loc 1 376 0
	sub	%d2, %d4, %d15
.LVL51:
	.loc 1 377 0
	div.u	%e2, %d2, %d5
.LVL52:
	add	%d2, 1
.LVL53:
	.loc 1 390 0
	ret
.LFE6:
	.size	MATHSRV_u32Div_u32_s32, .-MATHSRV_u32Div_u32_s32
.section .text.MATHSRV_u32Div_s32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Div_s32_u32
	.type	MATHSRV_u32Div_s32_u32, @function
MATHSRV_u32Div_s32_u32:
.LFB7:
	.loc 1 409 0
.LVL54:
	.loc 1 434 0
	ge	%d2, %d4, 0
	.loc 1 409 0
	mov	%d15, %d5
	.loc 1 434 0
	rsub	%d2
	.loc 1 414 0
	jz	%d5, .L59
	.loc 1 429 0
	mov	%d2, 0
	.loc 1 416 0
	jlez	%d4, .L59
	.loc 1 418 0
	div.u	%e4, %d4, %d5
.LVL55:
	.loc 1 420 0
	sh	%d3, %d15, -1
	.loc 1 418 0
	mov	%d2, %d4
.LVL56:
	.loc 1 420 0
	jlt.u	%d3, %d5, .L60
	.loc 1 422 0
	eq	%d3, %d5, %d3
	andn	%d15, %d3, %d15
	jnz	%d15, .L60
.LVL57:
.L59:
	.loc 1 444 0
	ret
.LVL58:
.L60:
	.loc 1 424 0
	addi	%d2, %d4, 1
.LVL59:
	.loc 1 444 0
	ret
.LFE7:
	.size	MATHSRV_u32Div_s32_u32, .-MATHSRV_u32Div_s32_u32
.section .text.MATHSRV_u32Div_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_u32Div_s32_s32
	.type	MATHSRV_u32Div_s32_s32, @function
MATHSRV_u32Div_s32_s32:
.LFB8:
	.loc 1 463 0
.LVL60:
	.loc 1 504 0
	ge	%d15, %d4, 0
	rsub	%d2, %d15, 0
	.loc 1 470 0
	jz	%d5, .L69
	.loc 1 473 0
	ge	%d2, %d5, 1
	.loc 1 472 0
	and	%d15, %d2
	jz	%d15, .L78
	.loc 1 477 0
	movh	%d2, 32768
	eq	%d15, %d4, %d2
	and.eq	%d15, %d5, -1
	jz	%d15, .L79
.LVL61:
.L69:
	.loc 1 514 0
	ret
.LVL62:
.L78:
	.loc 1 474 0
	lt	%d15, %d4, 1
	and.t	%d15, %d5,31, %d15,0
	.loc 1 499 0
	mov	%d2, 0
	.loc 1 474 0
	jz	%d15, .L69
	.loc 1 477 0
	movh	%d2, 32768
	eq	%d15, %d4, %d2
	and.eq	%d15, %d5, -1
	jnz	%d15, .L69
.L79:
	.loc 1 484 0
	div	%e6, %d4, %d5
	.loc 1 486 0
	abs	%d15, %d5
	.loc 1 485 0
	abs	%d4, %d4
.LVL63:
	.loc 1 487 0
	div.u	%e4, %d4, %d15
	.loc 1 489 0
	sh	%d3, %d15, -1
	.loc 1 484 0
	mov	%d2, %d6
.LVL64:
	.loc 1 489 0
	jlt.u	%d3, %d5, .L70
	.loc 1 491 0
	eq	%d5, %d5, %d3
.LVL65:
	andn	%d5, %d5, %d15
	jz	%d5, .L69
.L70:
	.loc 1 493 0
	addi	%d2, %d6, 1
.LVL66:
	.loc 1 514 0
	ret
.LFE8:
	.size	MATHSRV_u32Div_s32_s32, .-MATHSRV_u32Div_s32_s32
.section .text.MATHSRV_s32Div_u32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Div_u32_s32
	.type	MATHSRV_s32Div_u32_s32, @function
MATHSRV_s32Div_u32_s32:
.LFB9:
	.loc 1 533 0
.LVL67:
	.loc 1 575 0
	mov	%d2, -1
	sh	%d2, -1
	.loc 1 540 0
	jnz	%d5, .L93
.L81:
.LVL68:
	.loc 1 578 0
	ret
.LVL69:
.L93:
	.loc 1 542 0
	ne	%d15, %d5, -1
	or.ge	%d15, %d4, 0
	.loc 1 570 0
	movh	%d2, 32768
	.loc 1 542 0
	jz	%d15, .L81
	.loc 1 546 0
	abs	%d6, %d5
.LVL70:
	.loc 1 547 0
	div.u	%e2, %d4, %d6
	.loc 1 551 0
	sh	%d4, %d6, -1
.LVL71:
	.loc 1 547 0
	mov	%d15, %d2
.LVL72:
	.loc 1 551 0
	jge.u	%d4, %d3, .L94
.LVL73:
.L82:
	.loc 1 555 0
	add	%d15, %d2, 1
.LVL74:
.L83:
	.loc 1 563 0
	mov	%d3, -1
	ge	%d2, %d15, 0
.LVL75:
	sh	%d3, -1
	sel	%d2, %d2, %d15, %d3
	.loc 1 559 0
	lt	%d5, %d5, 0
.LVL76:
	rsub	%d15
.LVL77:
	sel	%d2, %d5, %d15, %d2
.LVL78:
	.loc 1 578 0
	ret
.LVL79:
.L94:
	.loc 1 553 0
	eq	%d4, %d3, %d4
	andn	%d6, %d4, %d6
.LVL80:
	jz	%d6, .L83
	j	.L82
.LFE9:
	.size	MATHSRV_s32Div_u32_s32, .-MATHSRV_s32Div_u32_s32
.section .text.MATHSRV_s32Div_s32_u32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Div_s32_u32
	.type	MATHSRV_s32Div_s32_u32, @function
MATHSRV_s32Div_s32_u32:
.LFB10:
	.loc 1 597 0
.LVL81:
	.loc 1 632 0
	mov	%d15, -1
	ge	%d2, %d4, 0
	sh	%d15, -1
	movh	%d3, 32768
	sel	%d2, %d2, %d15, %d3
	.loc 1 604 0
	jz	%d5, .L100
	.loc 1 606 0
	abs	%d6, %d4
.LVL82:
	.loc 1 607 0
	div.u	%e6, %d6, %d5
.LVL83:
	.loc 1 609 0
	sh	%d2, %d5, -1
	.loc 1 607 0
	mov	%d15, %d6
.LVL84:
	.loc 1 609 0
	jge.u	%d2, %d7, .L106
.LVL85:
.L97:
	.loc 1 613 0
	add	%d15, %d6, 1
.LVL86:
.L98:
	.loc 1 617 0
	rsub	%d2, %d15, 0
	lt	%d4, %d4, 0
.LVL87:
	sel	%d2, %d4, %d2, %d15
.LVL88:
.L100:
	.loc 1 636 0
	ret
.LVL89:
.L106:
	.loc 1 611 0
	eq	%d2, %d7, %d2
	andn	%d5, %d2, %d5
.LVL90:
	jz	%d5, .L98
	j	.L97
.LFE10:
	.size	MATHSRV_s32Div_s32_u32, .-MATHSRV_s32Div_s32_u32
.section .text.MATHSRV_s32Div_s32_s32,"ax",@progbits
	.align 1
	.global	MATHSRV_s32Div_s32_s32
	.type	MATHSRV_s32Div_s32_s32, @function
MATHSRV_s32Div_s32_s32:
.LFB11:
	.loc 1 655 0
.LVL91:
	.loc 1 706 0
	mov	%d15, -1
	ge	%d2, %d4, 0
	sh	%d15, -1
	movh	%d3, 32768
	sel	%d2, %d2, %d15, %d3
	.loc 1 665 0
	jz	%d5, .L109
	.loc 1 667 0
	ne	%d15, %d4, %d3
	mov	%d2, %d3
	or.ne	%d15, %d5, -1
	.loc 1 695 0
	add	%d2, -1
	.loc 1 667 0
	jnz	%d15, .L121
.LVL92:
.L109:
	.loc 1 710 0
	ret
.LVL93:
.L121:
	.loc 1 671 0
	abs	%d15, %d5
.LVL94:
	.loc 1 670 0
	abs	%d0, %d4
.LVL95:
	.loc 1 672 0
	div	%e6, %d4, %d5
	.loc 1 674 0
	div.u	%e0, %d0, %d15
.LVL96:
	.loc 1 676 0
	sh	%d3, %d15, -1
	.loc 1 672 0
	mov	%d2, %d6
.LVL97:
	.loc 1 676 0
	jlt.u	%d3, %d1, .L110
	.loc 1 678 0
	eq	%d3, %d1, %d3
	andn	%d15, %d3, %d15
.LVL98:
	jz	%d15, .L109
.L110:
	.loc 1 680 0
	ge	%d15, %d5, 1
	and.ge	%d15, %d4, 1
	jnz	%d15, .L111
	.loc 1 682 0
	and.t	%d5, %d4,31, %d5,31
.LVL99:
	.loc 1 689 0
	addi	%d2, %d6, -1
	.loc 1 682 0
	jz	%d5, .L109
.L111:
	.loc 1 685 0
	addi	%d2, %d6, 1
.LVL100:
	.loc 1 710 0
	ret
.LFE11:
	.size	MATHSRV_s32Div_s32_s32, .-MATHSRV_s32Div_s32_s32
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
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8be
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_Div.c"
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
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
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
	.uaword	0x203
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x21e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x242
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
	.string	"sint16_least"
	.byte	0x2
	.byte	0x8f
	.uaword	0x27b
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x287
	.uleb128 0x3
	.string	"sint32_least"
	.byte	0x2
	.byte	0x99
	.uaword	0x27b
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x9e
	.uaword	0x287
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s16Div_s32_u32"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x1f5
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x382
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2b
	.uaword	0x234
	.uaword	.LLST0
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2c
	.uaword	0x25a
	.uaword	.LLST1
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x1
	.byte	0x30
	.uaword	0x2c4
	.uaword	.LLST2
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x1
	.byte	0x31
	.uaword	0x2d8
	.uaword	.LLST3
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x1
	.byte	0x32
	.uaword	0x2d8
	.uaword	.LLST4
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x1
	.byte	0x33
	.uaword	0x2d8
	.uaword	.LLST5
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x1
	.byte	0x34
	.uaword	0x29c
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s16Div_s32_s16"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	0x1f5
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x41d
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x234
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.string	"s16SecondValue"
	.byte	0x1
	.byte	0x69
	.uaword	0x1f5
	.uaword	.LLST6
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6d
	.uaword	0x29c
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6e
	.uaword	0x2c4
	.uaword	.LLST7
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.byte	0x6f
	.uaword	0x2d8
	.byte	0x1
	.byte	0x50
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x1
	.byte	0x70
	.uaword	0x2d8
	.uaword	.LLST8
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x1
	.byte	0x71
	.uaword	0x2c4
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u16Div_s32_u16"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	0x210
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x488
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb0
	.uaword	0x234
	.uaword	.LLST9
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x1
	.byte	0xb1
	.uaword	0x210
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x1
	.byte	0xb5
	.uaword	0x2b0
	.uaword	.LLST10
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb6
	.uaword	0x2d8
	.uaword	.LLST11
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_u16Div_u32_u16"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	0x210
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4f1
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x1
	.byte	0xe6
	.uaword	0x25a
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x1
	.byte	0xe7
	.uaword	0x210
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x1
	.byte	0xeb
	.uaword	0x2b0
	.uaword	.LLST12
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x1
	.byte	0xec
	.uaword	0x2d8
	.uaword	.LLST13
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_u32Div_u32_u16"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x54f
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x113
	.uaword	0x25a
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x114
	.uaword	0x210
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x118
	.uaword	0x2d8
	.uaword	.LLST14
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_u32Div_u32_u32"
	.byte	0x1
	.uahalf	0x13a
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5ad
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x25a
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x25a
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x141
	.uaword	0x2d8
	.uaword	.LLST15
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_u32Div_u32_s32"
	.byte	0x1
	.uahalf	0x163
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x60b
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x165
	.uaword	0x25a
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x166
	.uaword	0x234
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x2d8
	.uaword	.LLST16
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_u32Div_s32_u32"
	.byte	0x1
	.uahalf	0x193
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x67b
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x195
	.uaword	0x234
	.uaword	.LLST17
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x196
	.uaword	0x25a
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x2d8
	.uaword	.LLST18
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x2d8
	.uaword	.LLST19
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_u32Div_s32_s32"
	.byte	0x1
	.uahalf	0x1c9
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x705
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x234
	.uaword	.LLST20
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x234
	.uaword	.LLST21
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x2d8
	.uaword	.LLST22
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x2d8
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x2d8
	.byte	0x1
	.byte	0x5f
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x2d8
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_s32Div_u32_s32"
	.byte	0x1
	.uahalf	0x20f
	.byte	0x1
	.uaword	0x234
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x797
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x211
	.uaword	0x25a
	.uaword	.LLST23
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x212
	.uaword	0x234
	.uaword	.LLST24
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x216
	.uaword	0x2d8
	.uaword	.LLST25
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x217
	.uaword	0x2c4
	.uaword	.LLST26
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x218
	.uaword	0x2d8
	.uaword	.LLST27
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x219
	.uaword	0x2d8
	.uaword	.LLST28
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MATHSRV_s32Div_s32_u32"
	.byte	0x1
	.uahalf	0x24f
	.byte	0x1
	.uaword	0x234
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x829
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x251
	.uaword	0x234
	.uaword	.LLST29
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x252
	.uaword	0x25a
	.uaword	.LLST30
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x256
	.uaword	0x2c4
	.uaword	.LLST31
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x257
	.uaword	0x2d8
	.uaword	.LLST32
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x258
	.uaword	0x2d8
	.uaword	.LLST33
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x259
	.uaword	0x2d8
	.uaword	.LLST34
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"MATHSRV_s32Div_s32_s32"
	.byte	0x1
	.uahalf	0x289
	.byte	0x1
	.uaword	0x234
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x234
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x28c
	.uaword	0x234
	.uaword	.LLST35
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x290
	.uaword	0x2c4
	.uaword	.LLST36
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x291
	.uaword	0x2d8
	.uaword	.LLST37
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x292
	.uaword	0x2d8
	.uaword	.LLST38
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x293
	.uaword	0x2d8
	.byte	0x1
	.byte	0x51
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x294
	.uaword	0x2c4
	.byte	0x1
	.byte	0x54
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
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL9
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
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
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL22
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
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x75
	.sleb128 0
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x17
	.byte	0x72
	.sleb128 1
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
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x45
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x23
	.uleb128 0x1
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
.LLST13:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0xf7
	.uleb128 0x1bb
	.byte	0x21
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL58
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL66
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL67
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL73
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL80
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL79
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL81
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL81
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL85
	.uaword	.LVL89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL90
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL89
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL83
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL89
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL99
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL100
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL96
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL94
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LFE11
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
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
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
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
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"u32LocalResult"
.LASF6:
	.string	"s16LocalResult"
.LASF12:
	.string	"s32SecondValue"
.LASF8:
	.string	"s32LocalTemp"
.LASF11:
	.string	"u32FirstValue"
.LASF7:
	.string	"u32LocalYAbsVal"
.LASF2:
	.string	"s32LocalResult"
.LASF4:
	.string	"u32LocalRemainder"
.LASF5:
	.string	"u32LocalXAbsVal"
.LASF9:
	.string	"u16SecondValue"
.LASF0:
	.string	"s32FirstValue"
.LASF1:
	.string	"u32SecondValue"
.LASF10:
	.string	"u16LocalResult"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
