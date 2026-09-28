	.file	"MATH_TRI.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	LIBTRIG_Sin_Outputs_wrapper
	.type	LIBTRIG_Sin_Outputs_wrapper, @function
LIBTRIG_Sin_Outputs_wrapper:
.LFB0:
	.file 1 "bswcdd\\HARD\\MATH_TRI.c"
	.loc 1 64 0
.LVL0:
	.loc 1 74 0
	ld.hu	%d3, [%a4]0
.LVL1:
	.loc 1 76 0
	movh.a	%a15, hi:mathSinusTable
	.loc 1 75 0
	sh	%d15, %d3, -8
.LVL2:
	.loc 1 76 0
	lea	%a15, [%a15] lo:mathSinusTable
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 81 0
	and	%d3, %d3, 255
.LVL3:
	.loc 1 78 0
	ld.hu	%d2, [%a15]0
.LVL4:
	ld.h	%d4, [%a15] 2
	sub	%d4, %d2
	.loc 1 81 0
	extr	%d4, %d4, 0, 16
	mul	%d3, %d4
	sha	%d15, %d3, -8
.LVL5:
	.loc 1 82 0
	add	%d15, %d2
	.loc 1 84 0
	extr	%d15, %d15, 0, 16
	sh	%d2, %d15, -31
.LVL6:
	add	%d15, %d2
	sha	%d15, -1
	st.h	[%a5]0, %d15
.LVL7:
	ret
.LFE0:
	.size	LIBTRIG_Sin_Outputs_wrapper, .-LIBTRIG_Sin_Outputs_wrapper
	.align 1
	.global	MathSinus
	.type	MathSinus, @function
MathSinus:
.LFB1:
	.loc 1 98 0
.LVL8:
	.loc 1 110 0
	movh.a	%a15, hi:mathSinusTable
	.loc 1 109 0
	sh	%d15, %d4, -8
.LVL9:
	.loc 1 110 0
	lea	%a15, [%a15] lo:mathSinusTable
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 115 0
	and	%d4, %d4, 255
.LVL10:
	.loc 1 112 0
	ld.hu	%d15, [%a15]0
.LVL11:
	ld.h	%d2, [%a15] 2
	sub	%d2, %d15
	.loc 1 115 0
	extr	%d2, %d2, 0, 16
	mul	%d4, %d2
	sha	%d4, -8
	.loc 1 116 0
	add	%d2, %d15, %d4
	.loc 1 119 0
	extr	%d2, %d2, 0, 16
	ret
.LFE1:
	.size	MathSinus, .-MathSinus
	.align 1
	.global	LIBTRIG_Cos_Outputs_wrapper
	.type	LIBTRIG_Cos_Outputs_wrapper, @function
LIBTRIG_Cos_Outputs_wrapper:
.LFB2:
	.loc 1 132 0
.LVL12:
	.loc 1 142 0
	ld.hu	%d4, [%a4]0
	.loc 1 146 0
	movh.a	%a15, hi:mathSinusTable
	.loc 1 142 0
	addi	%d4, %d4, 16383
.LVL13:
	.loc 1 145 0
	extr.u	%d3, %d4, 8, 8
.LVL14:
	.loc 1 146 0
	lea	%a15, [%a15] lo:mathSinusTable
	addsc.a	%a15, %a15, %d3, 1
	ld.h	%d15, [%a15]0
.LVL15:
	.loc 1 148 0
	ld.h	%d2, [%a15] 2
	sub	%d2, %d15
	.loc 1 151 0
	extr	%d3, %d2, 0, 16
.LVL16:
	and	%d2, %d4, 255
	mul	%d2, %d3
	sha	%d2, -8
	.loc 1 152 0
	add	%d15, %d2
.LVL17:
	sh	%d2, %d15, -31
	add	%d15, %d2
	sha	%d15, -1
	st.h	[%a5]0, %d15
.LVL18:
	ret
.LFE2:
	.size	LIBTRIG_Cos_Outputs_wrapper, .-LIBTRIG_Cos_Outputs_wrapper
	.align 1
	.global	MathCosinus
	.type	MathCosinus, @function
MathCosinus:
.LFB3:
	.loc 1 166 0
.LVL19:
	.loc 1 177 0
	addi	%d15, %d4, 16383
.LVL20:
	.loc 1 178 0
	movh	%d2, 1
	jlt	%d15, %d2, .L5
	.loc 1 180 0
	addi	%d15, %d4, 16384
.LVL21:
	addih	%d15, %d15, 65535
.LVL22:
.L5:
	.loc 1 184 0
	extr.u	%d2, %d15, 8, 8
.LVL23:
	.loc 1 185 0
	movh.a	%a15, hi:mathSinusTable
	lea	%a15, [%a15] lo:mathSinusTable
	addsc.a	%a15, %a15, %d2, 1
	.loc 1 190 0
	and	%d15, 255
.LVL24:
	.loc 1 187 0
	ld.hu	%d2, [%a15]0
.LVL25:
	ld.h	%d3, [%a15] 2
	sub	%d3, %d2
	.loc 1 190 0
	extr	%d3, %d3, 0, 16
	mul	%d15, %d3
	sha	%d15, -8
	.loc 1 191 0
	add	%d2, %d15
	.loc 1 194 0
	extr	%d2, %d2, 0, 16
	ret
.LFE3:
	.size	MathCosinus, .-MathCosinus
	.align 1
	.global	MathArcsinus
	.type	MathArcsinus, @function
MathArcsinus:
.LFB4:
	.loc 1 206 0
.LVL26:
	.loc 1 217 0
	addi	%d4, %d4, -32768
.LVL27:
	extr.u	%d4, %d4, 0, 16
.LVL28:
	.loc 1 220 0
	movh.a	%a15, hi:mathArcsinusTable
	.loc 1 219 0
	sh	%d15, %d4, -8
.LVL29:
	.loc 1 220 0
	lea	%a15, [%a15] lo:mathArcsinusTable
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 225 0
	and	%d4, %d4, 255
.LVL30:
	.loc 1 222 0
	ld.hu	%d15, [%a15]0
.LVL31:
	ld.h	%d2, [%a15] 2
	sub	%d2, %d15
	.loc 1 225 0
	extr	%d2, %d2, 0, 16
	mul	%d4, %d2
	sh	%d4, -8
	.loc 1 226 0
	add	%d2, %d15, %d4
	.loc 1 229 0
	extr	%d2, %d2, 0, 16
	ret
.LFE4:
	.size	MathArcsinus, .-MathArcsinus
	.align 1
	.global	MathArccosinus
	.type	MathArccosinus, @function
MathArccosinus:
.LFB5:
	.loc 1 241 0
.LVL32:
	.loc 1 252 0
	addi	%d4, %d4, -32768
.LVL33:
	extr.u	%d4, %d4, 0, 16
.LVL34:
	.loc 1 255 0
	movh.a	%a15, hi:mathArcsinusTable
	.loc 1 254 0
	sh	%d15, %d4, -8
.LVL35:
	.loc 1 255 0
	lea	%a15, [%a15] lo:mathArcsinusTable
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 260 0
	and	%d4, %d4, 255
.LVL36:
	.loc 1 257 0
	ld.hu	%d3, [%a15]0
.LVL37:
	ld.h	%d2, [%a15] 2
	sub	%d2, %d3
	.loc 1 260 0
	extr	%d2, %d2, 0, 16
	mul	%d4, %d2
	.loc 1 263 0
	mov	%d2, 16383
	.loc 1 260 0
	sh	%d15, %d4, -8
.LVL38:
	.loc 1 262 0
	add	%d15, %d3
	extr.u	%d15, %d15, 0, 16
.LVL39:
	.loc 1 264 0
	mov	%d3, 16384
	.loc 1 263 0
	sub	%d2, %d15
	extr	%d2, %d2, 0, 16
.LVL40:
	.loc 1 264 0
	jlt	%d2, %d3, .L9
	.loc 1 266 0
	rsub	%d2, %d15, 0
.LVL41:
	extr	%d2, %d2, 0, 16
.LVL42:
.L9:
	.loc 1 270 0
	ret
.LFE5:
	.size	MathArccosinus, .-MathArccosinus
	.align 1
	.global	LIBTRIG_SinCos_Outputs_wrapper
	.type	LIBTRIG_SinCos_Outputs_wrapper, @function
LIBTRIG_SinCos_Outputs_wrapper:
.LFB6:
	.loc 1 282 0
.LVL43:
	.loc 1 292 0
	ld.h	%d2, [%a4]0
.LVL44:
	.loc 1 294 0
	movh.a	%a15, hi:mathSinusTable
	.loc 1 293 0
	extr.u	%d15, %d2, 8, 8
.LVL45:
	.loc 1 294 0
	lea	%a15, [%a15] lo:mathSinusTable
	addsc.a	%a2, %a15, %d15, 1
	.loc 1 299 0
	and	%d2, %d2, 255
.LVL46:
	.loc 1 296 0
	ld.h	%d3, [%a2] 2
	.loc 1 294 0
	ld.h	%d15, [%a2]0
.LVL47:
	.loc 1 296 0
	sub	%d3, %d15
	.loc 1 299 0
	extr	%d3, %d3, 0, 16
	mul	%d2, %d3
	sha	%d2, -8
	.loc 1 300 0
	add	%d15, %d2
.LVL48:
	sh	%d2, %d15, -31
	add	%d15, %d2
	sha	%d15, -1
	st.h	[%a5]0, %d15
.LVL49:
	.loc 1 302 0
	ld.hu	%d4, [%a4]0
	addi	%d4, %d4, 16383
.LVL50:
	.loc 1 304 0
	extr.u	%d3, %d4, 8, 8
.LVL51:
	.loc 1 305 0
	addsc.a	%a15, %a15, %d3, 1
	ld.h	%d15, [%a15]0
.LVL52:
	.loc 1 307 0
	ld.h	%d2, [%a15] 2
	sub	%d2, %d15
	.loc 1 310 0
	extr	%d3, %d2, 0, 16
.LVL53:
	and	%d2, %d4, 255
	mul	%d2, %d3
	sha	%d2, -8
	.loc 1 311 0
	add	%d15, %d2
.LVL54:
	sh	%d2, %d15, -31
	add	%d15, %d2
	sha	%d15, -1
	st.h	[%a6]0, %d15
.LVL55:
	ret
.LFE6:
	.size	LIBTRIG_SinCos_Outputs_wrapper, .-LIBTRIG_SinCos_Outputs_wrapper
	.align 1
	.global	MathSinusCosinus
	.type	MathSinusCosinus, @function
MathSinusCosinus:
.LFB7:
	.loc 1 324 0
.LVL56:
	.loc 1 336 0
	movh.a	%a15, hi:mathSinusTable
	.loc 1 335 0
	sh	%d15, %d4, -8
.LVL57:
	.loc 1 336 0
	lea	%a15, [%a15] lo:mathSinusTable
	addsc.a	%a2, %a15, %d15, 1
	.loc 1 341 0
	and	%d3, %d4, 255
	.loc 1 338 0
	ld.h	%d2, [%a2] 2
	ld.hu	%d15, [%a2]0
.LVL58:
	sub	%d2, %d15
	.loc 1 341 0
	extr	%d2, %d2, 0, 16
	mul	%d2, %d3
	.loc 1 344 0
	addi	%d3, %d4, 16383
.LVL59:
	.loc 1 341 0
	sha	%d2, -8
	.loc 1 342 0
	add	%d15, %d2
.LVL60:
	.loc 1 347 0
	extr.u	%d2, %d3, 8, 8
.LVL61:
	.loc 1 342 0
	st.h	[%a4]0, %d15
.LVL62:
	.loc 1 348 0
	addsc.a	%a15, %a15, %d2, 1
	.loc 1 350 0
	ld.hu	%d15, [%a15]0
.LVL63:
	ld.h	%d4, [%a15] 2
.LVL64:
	sub	%d4, %d15
	.loc 1 353 0
	extr	%d2, %d4, 0, 16
.LVL65:
	and	%d4, %d3, 255
	mul	%d4, %d2
	sha	%d4, -8
	.loc 1 354 0
	add	%d15, %d4
.LVL66:
	st.h	[%a5]0, %d15
.LVL67:
	ret
.LFE7:
	.size	MathSinusCosinus, .-MathSinusCosinus
	.align 1
	.global	MathTangente
	.type	MathTangente, @function
MathTangente:
.LFB8:
	.loc 1 367 0
.LVL68:
	.loc 1 371 0
	sh	%d4, %d4, 16
.LVL69:
	.loc 1 398 0
	lt	%d2, %d4, 0
	movh	%d15, 1024
	movh	%d3, 64512
	sel	%d2, %d2, %d15, %d3
	.loc 1 372 0
	jnz	%d5, .L17
	.loc 1 402 0
	ret
.L17:
	.loc 1 374 0
	div	%e2, %d4, %d5
.LVL70:
	.loc 1 402 0
	ret
.LFE8:
	.size	MathTangente, .-MathTangente
	.align 1
	.global	LIBTRIG_Arctan_Outputs_wrapper
	.type	LIBTRIG_Arctan_Outputs_wrapper, @function
LIBTRIG_Arctan_Outputs_wrapper:
.LFB9:
	.loc 1 414 0
.LVL71:
	.loc 1 425 0
	ld.w	%d3, [%a4]0
	.loc 1 434 0
	movh	%d2, 1
	.loc 1 427 0
	abs	%d15, %d3
.LVL72:
	.loc 1 434 0
	jge.u	%d15, %d2, .L21
.LVL73:
	.loc 1 437 0
	movh.a	%a15, hi:mathArctangenteTable1
	.loc 1 436 0
	sh	%d2, %d15, -8
	.loc 1 437 0
	lea	%a15, [%a15] lo:mathArctangenteTable1
	addsc.a	%a15, %a15, %d2, 1
.LVL74:
	.loc 1 438 0
	and	%d15, 255
.LVL75:
	.loc 1 437 0
	ld.hu	%d2, [%a15]0
.LVL76:
.L22:
	.loc 1 466 0
	ld.h	%d4, [%a15] 2
	.loc 1 469 0
	lt	%d3, %d3, 0
	.loc 1 466 0
	sub	%d4, %d2
	.loc 1 468 0
	extr.u	%d4, %d4, 0, 16
	mul	%d15, %d4
.LVL77:
	sha	%d15, -8
	.loc 1 469 0
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
.LVL78:
	.loc 1 473 0
	rsub	%d2, %d15, 0
.LVL79:
	extr	%d2, %d2, 0, 16
	.loc 1 469 0
	extr	%d15, %d15, 0, 16
.LVL80:
	sel	%d2, %d3, %d2, %d15
.LVL81:
	.loc 1 476 0
	st.h	[%a5]0, %d2
.LVL82:
	ret
.LVL83:
.L21:
	.loc 1 442 0
	movh	%d2, 8
	jge.u	%d15, %d2, .L23
	.loc 1 444 0
	extr.u	%d2, %d15, 11, 16
.LVL84:
	.loc 1 447 0
	movh.a	%a15, hi:mathArctangenteTable2
	.loc 1 445 0
	addi	%d2, %d2, -32
.LVL85:
	.loc 1 447 0
	extr.u	%d2, %d2, 0, 16
.LVL86:
	lea	%a15, [%a15] lo:mathArctangenteTable2
	addsc.a	%a15, %a15, %d2, 1
.LVL87:
	.loc 1 448 0
	extr.u	%d15, %d15, 3, 8
.LVL88:
	.loc 1 447 0
	ld.hu	%d2, [%a15]0
	j	.L22
.LVL89:
.L23:
	movh	%d2, 1024
	min.u	%d15, %d15, %d2
.LVL90:
	.loc 1 456 0
	sh	%d2, %d15, -18
.LVL91:
	.loc 1 457 0
	add	%d2, -2
.LVL92:
	.loc 1 459 0
	extr.u	%d2, %d2, 0, 16
.LVL93:
	movh.a	%a15, hi:mathArctangenteTable3
	lea	%a15, [%a15] lo:mathArctangenteTable3
	addsc.a	%a15, %a15, %d2, 1
.LVL94:
	.loc 1 460 0
	extr.u	%d15, %d15, 10, 8
.LVL95:
	.loc 1 459 0
	ld.hu	%d2, [%a15]0
	j	.L22
.LFE9:
	.size	LIBTRIG_Arctan_Outputs_wrapper, .-LIBTRIG_Arctan_Outputs_wrapper
	.align 1
	.global	MathArctangente
	.type	MathArctangente, @function
MathArctangente:
.LFB10:
	.loc 1 489 0
.LVL96:
	.loc 1 502 0
	abs	%d15, %d4
.LVL97:
	.loc 1 509 0
	movh	%d2, 1
	jge.u	%d15, %d2, .L29
.LVL98:
	.loc 1 512 0
	movh.a	%a15, hi:mathArctangenteTable1
	.loc 1 511 0
	sh	%d2, %d15, -8
	.loc 1 512 0
	lea	%a15, [%a15] lo:mathArctangenteTable1
	addsc.a	%a15, %a15, %d2, 1
.LVL99:
	.loc 1 513 0
	and	%d15, 255
.LVL100:
	.loc 1 512 0
	ld.hu	%d2, [%a15]0
.LVL101:
.L30:
	.loc 1 541 0
	ld.h	%d3, [%a15] 2
	.loc 1 552 0
	lt	%d4, %d4, 0
.LVL102:
	.loc 1 541 0
	sub	%d3, %d2
	.loc 1 543 0
	extr.u	%d3, %d3, 0, 16
	mul	%d15, %d3
.LVL103:
	sha	%d15, -8
	.loc 1 544 0
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
.LVL104:
	.loc 1 548 0
	rsub	%d2, %d15, 0
.LVL105:
	extr	%d2, %d2, 0, 16
	.loc 1 544 0
	extr	%d15, %d15, 0, 16
.LVL106:
	.loc 1 552 0
	sel	%d2, %d4, %d2, %d15
	ret
.LVL107:
.L29:
	.loc 1 517 0
	movh	%d2, 8
	jge.u	%d15, %d2, .L31
	.loc 1 519 0
	extr.u	%d2, %d15, 11, 16
.LVL108:
	.loc 1 522 0
	movh.a	%a15, hi:mathArctangenteTable2
	.loc 1 520 0
	addi	%d2, %d2, -32
.LVL109:
	.loc 1 522 0
	extr.u	%d2, %d2, 0, 16
.LVL110:
	lea	%a15, [%a15] lo:mathArctangenteTable2
	addsc.a	%a15, %a15, %d2, 1
.LVL111:
	.loc 1 523 0
	extr.u	%d15, %d15, 3, 8
.LVL112:
	.loc 1 522 0
	ld.hu	%d2, [%a15]0
	j	.L30
.LVL113:
.L31:
	movh	%d2, 1024
	min.u	%d15, %d15, %d2
.LVL114:
	.loc 1 531 0
	sh	%d2, %d15, -18
.LVL115:
	.loc 1 532 0
	add	%d2, -2
.LVL116:
	.loc 1 534 0
	extr.u	%d2, %d2, 0, 16
.LVL117:
	movh.a	%a15, hi:mathArctangenteTable3
	lea	%a15, [%a15] lo:mathArctangenteTable3
	addsc.a	%a15, %a15, %d2, 1
.LVL118:
	.loc 1 535 0
	extr.u	%d15, %d15, 10, 8
.LVL119:
	.loc 1 534 0
	ld.hu	%d2, [%a15]0
	j	.L30
.LFE10:
	.size	MathArctangente, .-MathArctangente
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\HARD\\MATH_TRI.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb56
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\HARD\\MATH_TRI.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
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
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1ea
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x20e
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
	.uaword	0x234
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
	.string	"int16_T"
	.byte	0x3
	.byte	0x32
	.uaword	0x1c1
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x3
	.byte	0x34
	.uaword	0x200
	.uleb128 0x4
	.byte	0x1
	.string	"LIBTRIG_Sin_Outputs_wrapper"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x358
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3f
	.uaword	0x358
	.byte	0x1
	.byte	0x64
	.uleb128 0x6
	.string	"Sin"
	.byte	0x1
	.byte	0x3f
	.uaword	0x363
	.byte	0x1
	.byte	0x65
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0x41
	.uaword	0x1dc
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x42
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x43
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0x44
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0x45
	.uaword	0x1dc
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0x46
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.byte	0x47
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.byte	0x48
	.uaword	0x369
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x35e
	.uleb128 0xa
	.uaword	0x292
	.uleb128 0x9
	.byte	0x4
	.uaword	0x292
	.uleb128 0x9
	.byte	0x4
	.uaword	0x36f
	.uleb128 0xa
	.uaword	0x1c1
	.uleb128 0xb
	.byte	0x1
	.string	"MathSinus"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x1c1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x405
	.uleb128 0xc
	.string	"angle"
	.byte	0x1
	.byte	0x61
	.uaword	0x1dc
	.uaword	.LLST1
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0x63
	.uaword	0x1dc
	.uaword	.LLST2
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x64
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x65
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0x66
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0x67
	.uaword	0x1dc
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0x68
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.byte	0x69
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.byte	0x6a
	.uaword	0x369
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"LIBTRIG_Cos_Outputs_wrapper"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4bb
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x83
	.uaword	0x358
	.byte	0x1
	.byte	0x64
	.uleb128 0x6
	.string	"Cos"
	.byte	0x1
	.byte	0x83
	.uaword	0x363
	.byte	0x1
	.byte	0x65
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x1
	.byte	0x85
	.uaword	0x1dc
	.byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x86
	.uaword	0x1c1
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0x87
	.uaword	0x1c1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x88
	.uaword	0x1dc
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0x89
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.byte	0x8a
	.uaword	0x1c1
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x1
	.byte	0x8b
	.uaword	0x226
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.byte	0x8c
	.uaword	0x369
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MathCosinus"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	0x1c1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x55b
	.uleb128 0x6
	.string	"angle"
	.byte	0x1
	.byte	0xa5
	.uaword	0x1dc
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0xa7
	.uaword	0x1dc
	.uaword	.LLST3
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa8
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa9
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0xaa
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0xab
	.uaword	0x1dc
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0xac
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.byte	0xad
	.uaword	0x1c1
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x1
	.byte	0xae
	.uaword	0x226
	.uaword	.LLST4
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.byte	0xaf
	.uaword	0x369
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MathArcsinus"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.uaword	0x1c1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5fc
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x1
	.byte	0xcd
	.uaword	0x1c1
	.uaword	.LLST5
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0xcf
	.uaword	0x1dc
	.uaword	.LLST6
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd0
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd1
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0xd2
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0xd3
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.byte	0xd4
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x1
	.byte	0xd5
	.uaword	0x1c1
	.uleb128 0x7
	.uaword	.LASF11
	.byte	0x1
	.byte	0xd6
	.uaword	0x1dc
	.uaword	.LLST7
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.byte	0xd7
	.uaword	0x369
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"MathArccosinus"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	0x1c1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6a3
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x1
	.byte	0xf0
	.uaword	0x1c1
	.uaword	.LLST8
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x1
	.byte	0xf2
	.uaword	0x1dc
	.uaword	.LLST9
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf3
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf4
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.byte	0xf5
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.byte	0xf6
	.uaword	0x1c1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.byte	0xf7
	.uaword	0x1c1
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x1
	.byte	0xf8
	.uaword	0x1c1
	.uaword	.LLST10
	.uleb128 0x7
	.uaword	.LASF11
	.byte	0x1
	.byte	0xf9
	.uaword	0x1dc
	.uaword	.LLST11
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfa
	.uaword	0x369
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"LIBTRIG_SinCos_Outputs_wrapper"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x774
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x119
	.uaword	0x358
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.string	"Sin"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x363
	.byte	0x1
	.byte	0x65
	.uleb128 0x11
	.string	"Cos"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x363
	.byte	0x1
	.byte	0x66
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x1dc
	.uaword	.LLST12
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1c1
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x1c1
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x1c1
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x1c1
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1c1
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x121
	.uaword	0x226
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x122
	.uaword	0x369
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"MathSinusCosinus"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x840
	.uleb128 0x15
	.string	"angle"
	.byte	0x1
	.uahalf	0x143
	.uaword	0x1dc
	.uaword	.LLST14
	.uleb128 0x11
	.string	"sinResult"
	.byte	0x1
	.uahalf	0x143
	.uaword	0x840
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.string	"cosResult"
	.byte	0x1
	.uahalf	0x143
	.uaword	0x840
	.byte	0x1
	.byte	0x65
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x145
	.uaword	0x1dc
	.uaword	.LLST15
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x146
	.uaword	0x1c1
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x147
	.uaword	0x1c1
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x148
	.uaword	0x1c1
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x149
	.uaword	0x1c1
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x1c1
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x226
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x369
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1c1
	.uleb128 0x16
	.byte	0x1
	.string	"MathTangente"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	0x200
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8b5
	.uleb128 0x15
	.string	"sinus"
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x1c1
	.uaword	.LLST17
	.uleb128 0x11
	.string	"cosinus"
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x1c1
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"localSinus"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x200
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x171
	.uaword	0x200
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"LIBTRIG_Arctan_Outputs_wrapper"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x99c
	.uleb128 0x11
	.string	"Tangente"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x99c
	.byte	0x1
	.byte	0x64
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x363
	.byte	0x1
	.byte	0x65
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x1dc
	.uaword	.LLST18
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x1dc
	.uaword	.LLST19
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x1dc
	.uaword	.LLST20
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x1dc
	.uaword	.LLST21
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x1dc
	.uaword	.LLST22
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x1dc
	.uaword	.LLST23
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x226
	.uaword	.LLST24
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x1c1
	.uaword	.LLST25
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x9a7
	.uaword	.LLST26
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x9a2
	.uleb128 0xa
	.uaword	0x2a1
	.uleb128 0x9
	.byte	0x4
	.uaword	0x9ad
	.uleb128 0xa
	.uaword	0x1dc
	.uleb128 0x16
	.byte	0x1
	.string	"MathArctangente"
	.byte	0x1
	.uahalf	0x1e8
	.byte	0x1
	.uaword	0x1c1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa82
	.uleb128 0x15
	.string	"tangente"
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x200
	.uaword	.LLST27
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x1dc
	.uaword	.LLST28
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x1dc
	.uaword	.LLST29
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x1dc
	.uaword	.LLST30
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x1dc
	.uaword	.LLST31
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x1dc
	.uaword	.LLST32
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x1dc
	.uaword	.LLST33
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x226
	.uaword	.LLST34
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x1c1
	.uaword	.LLST35
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x9a7
	.uaword	.LLST36
	.byte	0
	.uleb128 0x18
	.uaword	0x1c1
	.uaword	0xa93
	.uleb128 0x19
	.uaword	0xa93
	.uahalf	0x100
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x1a
	.string	"mathSinusTable"
	.byte	0x3
	.byte	0x75
	.uaword	0xab7
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xa82
	.uleb128 0x1a
	.string	"mathArcsinusTable"
	.byte	0x3
	.byte	0x76
	.uaword	0xad7
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xa82
	.uleb128 0x18
	.uaword	0x1dc
	.uaword	0xaed
	.uleb128 0x19
	.uaword	0xa93
	.uahalf	0x100
	.byte	0
	.uleb128 0x1a
	.string	"mathArctangenteTable1"
	.byte	0x3
	.byte	0x77
	.uaword	0xb0c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xadc
	.uleb128 0x1a
	.string	"mathArctangenteTable2"
	.byte	0x3
	.byte	0x78
	.uaword	0xb30
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xadc
	.uleb128 0x1a
	.string	"mathArctangenteTable3"
	.byte	0x3
	.byte	0x79
	.uaword	0xb54
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xadc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.text
	.uaword	.LVL3-.text
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL3-.text
	.uaword	.LVL7-.text
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8-.text
	.uaword	.LVL10-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-.text
	.uaword	.LFE1-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.text
	.uaword	.LVL10-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL22-.text
	.uaword	.LVL24-.text
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL20-.text
	.uaword	.LVL21-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 16383
	.byte	0x9f
	.uaword	.LVL22-.text
	.uaword	.LVL24-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-.text
	.uaword	.LFE4-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL28-.text
	.uaword	.LVL30-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL28-.text
	.uaword	.LVL30-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33-.text
	.uaword	.LFE5-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL34-.text
	.uaword	.LVL36-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x7
	.byte	0xa
	.uahalf	0x3fff
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL42-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34-.text
	.uaword	.LVL36-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL44-.text
	.uaword	.LVL46-.text
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL46-.text
	.uaword	.LVL49-.text
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL50-.text
	.uaword	.LFE6-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL47-.text
	.uaword	.LVL52-.text
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL52-.text
	.uaword	.LFE6-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL56-.text
	.uaword	.LVL64-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64-.text
	.uaword	.LFE7-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL56-.text
	.uaword	.LVL59-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LFE7-.text
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL58-.text
	.uaword	.LVL63-.text
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL63-.text
	.uaword	.LFE7-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-.text
	.uaword	.LFE8-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL73-.text
	.uaword	.LVL75-.text
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL75-.text
	.uaword	.LVL76-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x19
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL84-.text
	.uaword	.LVL85-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL85-.text
	.uaword	.LVL86-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL86-.text
	.uaword	.LVL88-.text
	.uahalf	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x19
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL91-.text
	.uaword	.LVL92-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL92-.text
	.uaword	.LVL93-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL93-.text
	.uaword	.LVL95-.text
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x42
	.byte	0x25
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL95-.text
	.uaword	.LFE9-.text
	.uahalf	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x19
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
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
	.byte	0x42
	.byte	0x25
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL76-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL76-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL75-.text
	.uaword	.LVL77-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95-.text
	.uaword	.LFE9-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL76-.text
	.uaword	.LVL79-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x15
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL72-.text
	.uaword	.LVL75-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75-.text
	.uaword	.LVL76-.text
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LVL88-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL89-.text
	.uaword	.LVL95-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95-.text
	.uaword	.LFE9-.text
	.uahalf	0x18
	.byte	0x73
	.sleb128 0
	.byte	0x19
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
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
.LLST25:
	.uaword	.LVL78-.text
	.uaword	.LVL80-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81-.text
	.uaword	.LVL83-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL74-.text
	.uaword	.LVL76-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL76-.text
	.uaword	.LVL83-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL87-.text
	.uaword	.LVL89-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL94-.text
	.uaword	.LFE9-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL96-.text
	.uaword	.LVL102-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102-.text
	.uaword	.LVL107-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL107-.text
	.uaword	.LFE10-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL98-.text
	.uaword	.LVL100-.text
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL100-.text
	.uaword	.LVL101-.text
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL108-.text
	.uaword	.LVL109-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL109-.text
	.uaword	.LVL110-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL110-.text
	.uaword	.LVL112-.text
	.uahalf	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL112-.text
	.uaword	.LVL113-.text
	.uahalf	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL115-.text
	.uaword	.LVL116-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL116-.text
	.uaword	.LVL117-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL117-.text
	.uaword	.LVL119-.text
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x42
	.byte	0x25
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL119-.text
	.uaword	.LFE10-.text
	.uahalf	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
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
	.byte	0x42
	.byte	0x25
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL101-.text
	.uaword	.LVL107-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL101-.text
	.uaword	.LVL107-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL100-.text
	.uaword	.LVL103-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112-.text
	.uaword	.LVL113-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL119-.text
	.uaword	.LFE10-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL101-.text
	.uaword	.LVL105-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL101-.text
	.uaword	.LVL103-.text
	.uahalf	0x15
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL97-.text
	.uaword	.LVL100-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL100-.text
	.uaword	.LVL101-.text
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL107-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112-.text
	.uaword	.LVL113-.text
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL113-.text
	.uaword	.LVL119-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL119-.text
	.uaword	.LFE10-.text
	.uahalf	0x18
	.byte	0x74
	.sleb128 0
	.byte	0x19
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
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
.LLST35:
	.uaword	.LVL104-.text
	.uaword	.LVL106-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL99-.text
	.uaword	.LVL101-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL101-.text
	.uaword	.LVL107-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL111-.text
	.uaword	.LVL113-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL118-.text
	.uaword	.LFE10-.text
	.uahalf	0x1
	.byte	0x6f
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF9:
	.string	"localAngle"
.LASF7:
	.string	"localAddOfTable"
.LASF2:
	.string	"localBkptHigh"
.LASF8:
	.string	"localIndexAngle"
.LASF10:
	.string	"argument"
.LASF0:
	.string	"Theta"
.LASF6:
	.string	"localRatio"
.LASF13:
	.string	"localIndexTan"
.LASF4:
	.string	"localReste"
.LASF1:
	.string	"localInterpResult"
.LASF3:
	.string	"localBkptLow"
.LASF11:
	.string	"localArgument"
.LASF12:
	.string	"localTangente"
.LASF5:
	.string	"localDelta"
	.extern	mathArctangenteTable3,STT_OBJECT,514
	.extern	mathArctangenteTable2,STT_OBJECT,514
	.extern	mathArctangenteTable1,STT_OBJECT,514
	.extern	mathArcsinusTable,STT_OBJECT,514
	.extern	mathSinusTable,STT_OBJECT,514
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
