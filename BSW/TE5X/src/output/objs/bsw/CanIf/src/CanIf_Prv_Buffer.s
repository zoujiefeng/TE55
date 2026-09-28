	.file	"CanIf_Prv_Buffer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanIf_Prv_WriteTxBuffer,"ax",@progbits
	.align 1
	.global	CanIf_Prv_WriteTxBuffer
	.type	CanIf_Prv_WriteTxBuffer, @function
CanIf_Prv_WriteTxBuffer:
.LFB86:
	.file 1 "bsw\\CanIf\\src\\CanIf_Prv_Buffer.c"
	.loc 1 52 0
.LVL0:
	.loc 1 86 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a2, [%a15] 52
	.loc 1 111 0
	movh.a	%a7, hi:CanIf_Prv_TxBufferRam_ast
	.loc 1 89 0
	ld.w	%d3, [%a15] 32
	.loc 1 86 0
	addsc.a	%a2, %a2, %d4, 1
	.loc 1 111 0
	lea	%a7, [%a7] lo:CanIf_Prv_TxBufferRam_ast
	.loc 1 89 0
	ld.hu	%d15, [%a2]0
	.loc 1 48 0
	ld.a	%a5, [%a4]0
.LVL1:
	.loc 1 89 0
	madd	%d2, %d3, %d15, 24
	.loc 1 48 0
	ld.w	%d12, [%a4] 4
.LVL2:
	ld.hu	%d9, [%a4] 8
.LVL3:
	.loc 1 89 0
	mov.a	%a6, %d2
	.loc 1 48 0
	ld.bu	%d11, [%a4] 10
.LVL4:
	.loc 1 92 0
	ld.a	%a15, [%a6]0
.LVL5:
	.loc 1 106 0
	ld.a	%a2, [%a15]0
	.loc 1 95 0
	ld.a	%a4, [%a15] 4
.LVL6:
	.loc 1 101 0
	ld.bu	%d1, [%a15] 12
	.loc 1 106 0
	ld.bu	%d3, [%a2] 6
	.loc 1 111 0
	sh	%d8, %d1, 1
	addsc.a	%a2, %a7, %d8, 0
	.loc 1 98 0
	ld.a	%a3, [%a15] 8
.LVL7:
	.loc 1 111 0
	ld.bu	%d15, [%a2] 1
	.loc 1 102 0
	ld.bu	%d13, [%a15] 13
.LVL8:
	.loc 1 103 0
	ld.bu	%d0, [%a15] 14
.LVL9:
	.loc 1 110 0
	jeq	%d15, 2, .L53
	.loc 1 118 0
	mov	%d2, 1
.LVL10:
	.loc 1 115 0
	jeq	%d3, 1, .L34
	.loc 1 123 0
	jnz	%d15, .L5
	.loc 1 125 0
	st.b	[%a2] 1, %d2
.LVL11:
.L5:
	.loc 1 129 0
	movh.a	%a2, hi:CanIf_Prv_TxPduRam_ast
	lea	%a12, [%a2] lo:CanIf_Prv_TxPduRam_ast
	addsc.a	%a2, %a12, %d4, 0
	ld.bu	%d15, [%a2]0
	jeq	%d15, 1, .L24
	ld.bu	%d6, [%a15] 13
	ld.bu	%d10, [%a15] 14
.LVL12:
.LBB8:
.LBB9:
	.loc 1 670 0
	jz	%d6, .L48
	.loc 1 672 0
	ld.bu	%d15, [%a4]0
	add	%d10, 1
	eq	%d2, %d15, 255
	mov	%d7, 0
	.loc 1 670 0
	mov	%d15, 0
	addsc.a	%a15, %a4, %d10, 0
.LVL13:
	.loc 1 672 0
	mov	%d3, 1
	jz	%d2, .L13
	j	.L10
.LVL14:
.L14:
	ld.bu	%d5, [%a15]0
	mov	%d7, %d3
	ne	%d5, %d5, 255
	add	%d3, 1
.LVL15:
	addsc.a	%a15, %a15, %d10, 0
	jz	%d5, .L54
.LVL16:
.L13:
	.loc 1 670 0
	and	%d15, %d3, 255
.LVL17:
	jlt.u	%d15, %d6, .L14
.LVL18:
.L48:
	addi	%d7, %d0, 1
	mul	%d7, %d7, 255
.LBE9:
.LBE8:
	.loc 1 73 0
	mov	%d15, 255
.L10:
.LVL19:
	.loc 1 149 0
	addsc.a	%a2, %a7, %d8, 0
	.loc 1 153 0
	addi	%d2, %d13, -1
	.loc 1 149 0
	ld.bu	%d3, [%a2]0
	.loc 1 153 0
	and	%d2, %d2, 255
	.loc 1 149 0
	add	%d3, 1
	and	%d3, %d3, 255
	st.b	[%a2]0, %d3
.LVL20:
	.loc 1 153 0
	jeq	%d3, %d2, .L55
.L15:
	.loc 1 158 0
	addsc.a	%a15, %a3, %d3, 3
	.loc 1 160 0
	addsc.a	%a2, %a4, %d7, 0
	.loc 1 158 0
	st.b	[%a15] 7, %d15
	.loc 1 160 0
	mov	%d2, 0
	st.b	[%a2]0, %d2
	.loc 1 162 0
	addsc.a	%a2, %a12, %d4, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
.LVL21:
.L8:
	min.u	%d2, %d0, %d11
	.loc 1 166 0
	st.w	[%a15]0, %d12
	.loc 1 167 0
	st.h	[%a15] 4, %d9
.LVL22:
	st.b	[%a15] 6, %d2
.LVL23:
	madd	%d15, %d15, %d0, %d15
.LVL24:
	.loc 1 191 0
	mov	%d4, 0
	jz	%d2, .L19
.LVL25:
.L36:
	and	%d5, %d4, 255
.LVL26:
	addi	%d6, %d5, 1
	.loc 1 194 0 discriminator 3
	and	%d6, %d6, 255
	addsc.a	%a2, %a5, %d6, 0
	addsc.a	%a15, %a4, %d6, 0
	ld.bu	%d3, [%a2] -1
	addsc.a	%a15, %a15, %d15, 0
	add	%d4, 1
	st.b	[%a15]0, %d3
.LVL27:
	addi	%d3, %d5, 2
	.loc 1 191 0 discriminator 3
	and	%d3, %d3, 255
	jge	%d2, %d3, .L36
.LVL28:
.L19:
	.loc 1 201 0
	eq	%d1, %d1, 36
.LVL29:
	jnz	%d1, .L56
.LVL30:
.L49:
	.loc 1 206 0
	mov	%d2, 0
	ret
.LVL31:
.L53:
	.loc 1 112 0
	movh.a	%a15, hi:CanIf_Prv_TxPduRam_ast
.LVL32:
	lea	%a15, [%a15] lo:CanIf_Prv_TxPduRam_ast
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 118 0
	mov	%d2, 1
.LVL33:
	.loc 1 112 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L57
.LVL34:
.L34:
	.loc 1 209 0
	ret
.LVL35:
.L54:
	madd	%d7, %d7, %d0, %d7
	j	.L10
.LVL36:
.L57:
	.loc 1 118 0
	mov	%d2, %d15
	.loc 1 115 0
	jeq	%d3, 1, .L58
.LVL37:
	.loc 1 132 0 discriminator 1
	ld.bu	%d5, [%a2]0
.LVL38:
.L23:
	.loc 1 135 0
	ld.hu	%d15, [%a6] 4
	ld.hu	%d2, [%a3] 4
	mov	%d4, 0
.LVL39:
	jne	%d2, %d15, .L7
	j	.L59
.LVL40:
.L9:
	addsc.a	%a15, %a3, %d3, 3
	ld.hu	%d3, [%a15] 4
.LVL41:
	jeq	%d3, %d15, .L6
.LVL42:
.L7:
	add	%d4, 1
.LVL43:
	extr.u	%d3, %d4, 0, 16
.LVL44:
	.loc 1 132 0 discriminator 2
	jge.u	%d5, %d3, .L9
	mov.aa	%a15, %a3
	.loc 1 73 0
	mov	%d15, 255
	j	.L8
.LVL45:
.L55:
	.loc 1 155 0
	mov	%d2, 2
	st.b	[%a2] 1, %d2
	j	.L15
.LVL46:
.L56:
.LBB10:
.LBB11:
	.loc 1 285 0
	ld.bu	%d15, [%a7] 72
.LBE11:
.LBE10:
	.loc 1 206 0
	mov	%d2, 0
.LVL47:
.LBB13:
.LBB12:
	.loc 1 286 0
	eq	%d3, %d15, 0
	or.ge.u	%d3, %d15, %d13
	jnz	%d3, .L34
	.loc 1 292 0
	addsc.a	%a15, %a3, %d15, 3
	.loc 1 297 0
	extr.u	%d2, %d15, 0, 16
	.loc 1 292 0
	ld.w	%d7, [%a15]0
.LVL48:
	.loc 1 293 0
	ld.bu	%d5, [%a15] 7
.LVL49:
	.loc 1 294 0
	ld.hu	%d4, [%a15] 4
.LVL50:
	.loc 1 295 0
	ld.bu	%d6, [%a15] 6
.LVL51:
	.loc 1 297 0
	mov	%d15, 0
.LVL52:
	jz	%d2, .L21
.LVL53:
.L35:
	sub	%d3, %d2, %d15
	.loc 1 299 0
	extr.u	%d3, %d3, 0, 16
	add	%d15, 1
.LVL54:
	sh	%d3, 3
	addsc.a	%a2, %a3, %d3, 0
	add	%d3, -8
	addsc.a	%a15, %a3, %d3, 0
	ld.w	%d3, [%a15]0
	st.w	[%a2]0, %d3
	.loc 1 300 0
	ld.bu	%d3, [%a15] 7
	st.b	[%a2] 7, %d3
	.loc 1 301 0
	ld.hu	%d3, [%a15] 4
	st.h	[%a2] 4, %d3
	.loc 1 302 0
	ld.bu	%d3, [%a15] 6
	st.b	[%a2] 6, %d3
.LVL55:
	.loc 1 297 0
	extr.u	%d3, %d15, 0, 16
	jne	%d2, %d3, .L35
.L21:
	.loc 1 305 0
	st.w	[%a3]0, %d7
	.loc 1 306 0
	st.b	[%a3] 7, %d5
	.loc 1 307 0
	st.h	[%a3] 4, %d4
	.loc 1 308 0
	st.b	[%a3] 6, %d6
	j	.L49
.LVL56:
.L59:
.LBE12:
.LBE13:
	.loc 1 135 0
	mov.aa	%a15, %a3
.LVL57:
.L6:
	.loc 1 137 0
	ld.bu	%d15, [%a15] 7
.LVL58:
	.loc 1 139 0
	j	.L8
.LVL59:
.L24:
	.loc 1 132 0
	addsc.a	%a2, %a7, %d8, 0
	ld.bu	%d5, [%a2]0
	j	.L23
.LVL60:
.L58:
	ret
.LFE86:
	.size	CanIf_Prv_WriteTxBuffer, .-CanIf_Prv_WriteTxBuffer
.section .text.CanIf_Prv_ClearTxChannelBuffer,"ax",@progbits
	.align 1
	.global	CanIf_Prv_ClearTxChannelBuffer
	.type	CanIf_Prv_ClearTxChannelBuffer, @function
CanIf_Prv_ClearTxChannelBuffer:
.LFB89:
	.loc 1 329 0
.LVL61:
	.loc 1 355 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a2, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	movh	%d14, hi:CanIf_Prv_TxBufferRam_ast
	addi	%d14, %d14, lo:CanIf_Prv_TxBufferRam_ast
	ld.w	%d15, [%a2] 40
	.loc 1 359 0
	ld.w	%d13, [%a2] 36
	.loc 1 355 0
	madd	%d2, %d15, %d4, 20
	.loc 1 377 0
	mov	%d7, 0
	.loc 1 362 0
	mov	%d4, 0
.LVL62:
	.loc 1 355 0
	mov.a	%a5, %d2
.LVL63:
	.loc 1 380 0
	mov	%d9, -1
	.loc 1 362 0
	ld.w	%d3, [%a5] 4
	.loc 1 357 0
	ld.a	%a6, [%a5] 8
.LVL64:
	ld.a	%a4, [%a5]0
	.loc 1 383 0
	mov	%d2, 0
.LVL65:
	.loc 1 362 0
	jz	%d3, .L71
.LVL66:
.L77:
	.loc 1 367 0
	ld.w	%d15, [%a4]0
	madd	%d5, %d13, %d15, 16
	mov.a	%a15, %d5
	.loc 1 373 0
	ld.bu	%d5, [%a15] 12
	.loc 1 367 0
	ld.w	%d10, [%a15] 4
.LVL67:
	.loc 1 375 0
	sh	%d12, %d5, 1
	.loc 1 369 0
	ld.a	%a2, [%a15] 8
.LVL68:
	.loc 1 370 0
	ld.bu	%d15, [%a15] 14
.LVL69:
	.loc 1 372 0
	ld.bu	%d1, [%a15] 13
.LVL70:
	.loc 1 375 0
	mov.a	%a15, %d14
.LVL71:
	addsc.a	%a3, %a15, %d12, 0
	ld.bu	%d5, [%a3] 1
.LVL72:
	jz	%d5, .L64
.LVL73:
	add	%d11, %d15, 1
	.loc 1 377 0 discriminator 1
	mov	%d8, 0
	mov	%d0, 0
	jz	%d1, .L68
.LVL74:
.L78:
	.loc 1 380 0
	mov.a	%a15, %d10
	addsc.a	%a3, %a15, %d8, 0
	.loc 1 381 0
	mov	%d5, 0
	.loc 1 380 0
	st.b	[%a3]0, %d9
.LVL75:
	.loc 1 381 0
	jz	%d15, .L69
.LVL76:
.L79:
	and	%d3, %d5, 255
.LVL77:
	addi	%d6, %d3, 1
	.loc 1 383 0 discriminator 3
	and	%d6, %d6, 255
	addsc.a	%a15, %a3, %d6, 0
	add	%d3, 2
.LVL78:
	st.b	[%a15]0, %d2
.LVL79:
	.loc 1 381 0 discriminator 3
	and	%d3, %d3, 255
	add	%d5, 1
	jge	%d15, %d3, .L79
.L69:
	add	%d0, 1
.LVL80:
	.loc 1 386 0
	st.b	[%a2] 7, %d2
	.loc 1 387 0
	st.w	[%a2]0, %d7
	.loc 1 388 0
	st.b	[%a2] 6, %d7
	.loc 1 389 0
	st.h	[%a2] 4, %d7
.LVL81:
	.loc 1 377 0
	and	%d3, %d0, 255
	add	%d8, %d11
	lea	%a2, [%a2] 8
	jlt.u	%d3, %d1, .L78
.L68:
	.loc 1 391 0
	mov.a	%a15, %d14
	addsc.a	%a2, %a15, %d12, 0
	st.b	[%a2]0, %d9
	ld.w	%d3, [%a5] 4
	.loc 1 392 0
	st.b	[%a2] 1, %d2
.L64:
	.loc 1 362 0 discriminator 2
	add	%d4, 1
.LVL82:
	add.a	%a4, 4
	jlt.u	%d4, %d3, .L77
.LVL83:
.L71:
	.loc 1 397 0
	ld.w	%d4, [%a5] 12
	movh	%d3, hi:CanIf_Prv_TxPduRam_ast
	mov.aa	%a15, %a6
	mov	%d15, 0
	addi	%d3, %d3, lo:CanIf_Prv_TxPduRam_ast
	.loc 1 400 0
	mov	%d2, 0
	.loc 1 397 0
	jz	%d4, .L85
.LVL84:
.L76:
	.loc 1 399 0 discriminator 3
	ld.a	%a2, [%a15+]4
.LVL85:
	.loc 1 397 0 discriminator 3
	add	%d15, 1
.LVL86:
	.loc 1 400 0 discriminator 3
	addsc.a	%a2, %a2, %d3, 0
.LVL87:
	st.b	[%a2]0, %d2
.LVL88:
	.loc 1 397 0 discriminator 3
	ld.w	%d4, [%a5] 12
	jlt.u	%d15, %d4, .L76
	ret
.LVL89:
.L85:
	ret
.LFE89:
	.size	CanIf_Prv_ClearTxChannelBuffer, .-CanIf_Prv_ClearTxChannelBuffer
.section .text.CanIf_Prv_BufferInit,"ax",@progbits
	.align 1
	.global	CanIf_Prv_BufferInit
	.type	CanIf_Prv_BufferInit, @function
CanIf_Prv_BufferInit:
.LFB90:
	.loc 1 474 0
	.loc 1 489 0
	movh.a	%a5, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a5] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a4, [%a15] 36
.LVL90:
	.loc 1 492 0
	ld.w	%d15, [%a15] 48
	jz	%d15, .L87
	movh.a	%a6, hi:CanIf_Prv_TxBufferRam_ast
	mov	%d11, 0
	lea	%a6, [%a6] lo:CanIf_Prv_TxBufferRam_ast
	.loc 1 503 0
	mov	%d6, 0
	.loc 1 506 0
	mov	%d8, -1
	.loc 1 509 0
	mov	%d15, 0
	lea	%a5, [%a5] lo:CanIf_Prv_ConfigSet_tpst
.LVL91:
.L93:
	.loc 1 501 0
	ld.bu	%d1, [%a4] 13
	.loc 1 496 0
	ld.w	%d10, [%a4] 4
.LVL92:
	.loc 1 498 0
	ld.a	%a2, [%a4] 8
.LVL93:
	.loc 1 499 0
	ld.bu	%d2, [%a4] 14
.LVL94:
	.loc 1 502 0
	ld.bu	%d12, [%a4] 12
.LVL95:
	.loc 1 503 0
	jz	%d1, .L88
	addi	%d9, %d2, 1
	mov	%d0, 0
	mov	%d7, 0
.LVL96:
.L90:
	.loc 1 506 0
	mov.a	%a15, %d10
	addsc.a	%a3, %a15, %d0, 0
	.loc 1 507 0
	mov	%d4, 0
	.loc 1 506 0
	st.b	[%a3]0, %d8
.LVL97:
	.loc 1 507 0
	jz	%d2, .L92
.LVL98:
.L103:
	and	%d3, %d4, 255
.LVL99:
	addi	%d5, %d3, 1
	.loc 1 509 0 discriminator 3
	and	%d5, %d5, 255
	addsc.a	%a15, %a3, %d5, 0
	add	%d3, 2
.LVL100:
	st.b	[%a15]0, %d15
.LVL101:
	.loc 1 507 0 discriminator 3
	and	%d3, %d3, 255
	add	%d4, 1
	jge	%d2, %d3, .L103
.L92:
	add	%d7, 1
.LVL102:
	.loc 1 512 0
	st.b	[%a2] 7, %d15
	.loc 1 513 0
	st.w	[%a2]0, %d6
	.loc 1 514 0
	st.b	[%a2] 6, %d6
	.loc 1 515 0
	st.h	[%a2] 4, %d6
.LVL103:
	.loc 1 503 0
	and	%d3, %d7, 255
	add	%d0, %d9
	lea	%a2, [%a2] 8
	jlt.u	%d3, %d1, .L90
	ld.a	%a15, [%a5]0
.L88:
	.loc 1 517 0 discriminator 2
	addsc.a	%a2, %a6, %d12, 1
	.loc 1 492 0 discriminator 2
	add	%d11, 1
.LVL104:
	.loc 1 517 0 discriminator 2
	st.b	[%a2]0, %d8
	.loc 1 492 0 discriminator 2
	ld.w	%d2, [%a15] 48
.LVL105:
	.loc 1 518 0 discriminator 2
	st.b	[%a2] 1, %d15
	lea	%a4, [%a4] 16
	.loc 1 492 0 discriminator 2
	jlt.u	%d11, %d2, .L93
.LVL106:
.L87:
	.loc 1 521 0 discriminator 1
	ld.w	%d3, [%a15] 44
	movh.a	%a3, hi:CanIf_Prv_TxPduRam_ast
	mov	%d15, 0
	lea	%a3, [%a3] lo:CanIf_Prv_TxPduRam_ast
	.loc 1 523 0 discriminator 1
	mov	%d2, 0
	.loc 1 521 0 discriminator 1
	jz	%d3, .L86
.LVL107:
.L102:
	.loc 1 523 0 discriminator 3
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 521 0 discriminator 3
	add	%d15, 1
.LVL108:
	.loc 1 523 0 discriminator 3
	st.b	[%a2]0, %d2
	.loc 1 521 0 discriminator 3
	ld.w	%d3, [%a15] 44
	jlt.u	%d15, %d3, .L102
.LVL109:
.L86:
	ret
.LFE90:
	.size	CanIf_Prv_BufferInit, .-CanIf_Prv_BufferInit
.section .text.CanIf_Prv_ReadTxBuffer,"ax",@progbits
	.align 1
	.global	CanIf_Prv_ReadTxBuffer
	.type	CanIf_Prv_ReadTxBuffer, @function
CanIf_Prv_ReadTxBuffer:
.LFB91:
	.loc 1 546 0
.LVL110:
	.loc 1 568 0
	ld.bu	%d2, [%a4] 12
	.loc 1 571 0
	movh.a	%a2, hi:CanIf_Prv_TxBufferRam_ast
	lea	%a2, [%a2] lo:CanIf_Prv_TxBufferRam_ast
	addsc.a	%a2, %a2, %d2, 1
	.loc 1 572 0
	ld.a	%a15, [%a4] 8
	ld.bu	%d2, [%a2]0
	.loc 1 577 0
	ld.bu	%d3, [%a2] 1
	.loc 1 572 0
	addsc.a	%a15, %a15, %d2, 3
	.loc 1 566 0
	ld.w	%d7, [%a4] 4
.LVL111:
	.loc 1 569 0
	ld.bu	%d15, [%a4] 14
.LVL112:
	.loc 1 572 0
	ld.bu	%d6, [%a15] 7
.LVL113:
	.loc 1 579 0
	mov	%d2, 1
	.loc 1 577 0
	jz	%d3, .L113
	.loc 1 585 0
	ld.w	%d2, [%a15]0
	.loc 1 588 0
	ld.a	%a3, [%a5]0
.LVL114:
	.loc 1 585 0
	st.w	[%a5] 4, %d2
.LVL115:
	.loc 1 586 0
	ld.h	%d2, [%a15] 4
	madd	%d6, %d6, %d15, %d6
.LVL116:
	st.h	[%a5] 8, %d2
	.loc 1 604 0
	ld.bu	%d3, [%a15] 6
	.loc 1 616 0
	mov	%d2, 0
	.loc 1 604 0
	st.b	[%a5] 10, %d3
.LVL117:
	.loc 1 616 0
	min.u	%d3, %d3, %d15
.LVL118:
	jz	%d3, .L116
.LVL119:
.L118:
	and	%d4, %d2, 255
.LVL120:
	addi	%d5, %d4, 1
	.loc 1 618 0 discriminator 3
	and	%d5, %d5, 255
	mov.a	%a15, %d7
	addsc.a	%a2, %a15, %d5, 0
	addsc.a	%a2, %a2, %d6, 0
	addsc.a	%a15, %a3, %d5, 0
	ld.bu	%d15, [%a2]0
	add	%d2, 1
	st.b	[%a15] -1, %d15
.LVL121:
	add	%d15, %d4, 2
	.loc 1 616 0 discriminator 3
	and	%d15, 255
	jge	%d3, %d15, .L118
.LVL122:
.L116:
	.loc 1 623 0
	mov	%d2, 0
	ret
.LVL123:
.L113:
	.loc 1 627 0
	ret
.LFE91:
	.size	CanIf_Prv_ReadTxBuffer, .-CanIf_Prv_ReadTxBuffer
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
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB89
	.uaword	.LFE89-.LFB89
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB90
	.uaword	.LFE90-.LFB90
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB91
	.uaword	.LFE91-.LFB91
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanIf\\CanIf_Cfg.h"
	.file 7 "bsw\\CanIf\\src\\CanIf_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x28f4
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanIf\\src\\CanIf_Prv_Buffer.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x1cb
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
	.uaword	0x1f7
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
	.uaword	0x233
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
	.byte	0x2
	.byte	0x80
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x29e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1e9
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x331
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x3d
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2ef
	.uleb128 0x3
	.string	"Can_IdType"
	.byte	0x5
	.byte	0x15
	.uaword	0x225
	.uleb128 0x3
	.string	"Can_HwHandleType"
	.byte	0x5
	.byte	0x1e
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x3e
	.uaword	0x3b7
	.uleb128 0x5
	.string	"sdu"
	.byte	0x5
	.byte	0x40
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"id"
	.byte	0x5
	.byte	0x41
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x5
	.byte	0x42
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"length"
	.byte	0x5
	.byte	0x43
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"Can_PduType"
	.byte	0x5
	.byte	0x45
	.uaword	0x374
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3dc
	.uleb128 0x8
	.uaword	0x1be
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3e7
	.uleb128 0x8
	.uaword	0x1e9
	.uleb128 0x7
	.byte	0x4
	.uaword	0x225
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.uahalf	0x39a
	.uaword	0x43a
	.uleb128 0xa
	.string	"CanId"
	.byte	0x6
	.uahalf	0x39c
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x39d
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x39e
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x39f
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_CanIdBuffer_tst"
	.byte	0x6
	.uahalf	0x3a1
	.uaword	0x3f2
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x4a8
	.uleb128 0xe
	.string	"STANDARD_CAN"
	.sleb128 0
	.uleb128 0xe
	.string	"STANDARD_FD_CAN"
	.sleb128 1
	.uleb128 0xe
	.string	"EXTENDED_CAN"
	.sleb128 2
	.uleb128 0xe
	.string	"EXTENDED_FD_CAN"
	.sleb128 3
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_TxPduCanIdType_ten"
	.byte	0x6
	.uahalf	0x3a9
	.uaword	0x45c
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x3ad
	.uaword	0x16b7
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_A_e"
	.sleb128 0
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_B_e"
	.sleb128 1
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_C_e"
	.sleb128 2
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_D_e"
	.sleb128 3
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_E_e"
	.sleb128 4
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_F_e"
	.sleb128 5
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_G_e"
	.sleb128 6
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_H_e"
	.sleb128 7
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_01_e"
	.sleb128 8
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_02_e"
	.sleb128 9
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_03_e"
	.sleb128 10
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_04_e"
	.sleb128 11
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_05_e"
	.sleb128 12
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_06_e"
	.sleb128 13
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_07_e"
	.sleb128 14
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_08_e"
	.sleb128 15
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_09_e"
	.sleb128 16
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_10_e"
	.sleb128 17
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_11_e"
	.sleb128 18
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_12_e"
	.sleb128 19
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_13_e"
	.sleb128 20
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_14_e"
	.sleb128 21
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_15_e"
	.sleb128 22
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_16_e"
	.sleb128 23
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_17_e"
	.sleb128 24
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_18_e"
	.sleb128 25
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_19_e"
	.sleb128 26
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_20_e"
	.sleb128 27
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_21_e"
	.sleb128 28
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_22_e"
	.sleb128 29
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_23_e"
	.sleb128 30
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_24_e"
	.sleb128 31
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_25_e"
	.sleb128 32
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_26_e"
	.sleb128 33
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_A_e"
	.sleb128 34
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_B_e"
	.sleb128 35
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_Basic_e"
	.sleb128 36
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_01_e"
	.sleb128 37
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_02_e"
	.sleb128 38
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_03_e"
	.sleb128 39
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_04_e"
	.sleb128 40
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_05_e"
	.sleb128 41
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_06_e"
	.sleb128 42
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_07_e"
	.sleb128 43
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_08_e"
	.sleb128 44
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_09_e"
	.sleb128 45
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_10_e"
	.sleb128 46
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_11_e"
	.sleb128 47
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_12_e"
	.sleb128 48
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_13_e"
	.sleb128 49
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_14_e"
	.sleb128 50
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_15_e"
	.sleb128 51
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_16_e"
	.sleb128 52
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_17_e"
	.sleb128 53
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_18_e"
	.sleb128 54
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_19_e"
	.sleb128 55
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_20_e"
	.sleb128 56
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_21_e"
	.sleb128 57
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_22_e"
	.sleb128 58
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_23_e"
	.sleb128 59
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_24_e"
	.sleb128 60
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_25_e"
	.sleb128 61
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_26_e"
	.sleb128 62
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_Basic_e"
	.sleb128 63
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_01_e"
	.sleb128 64
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_02_e"
	.sleb128 65
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_03_e"
	.sleb128 66
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_04_e"
	.sleb128 67
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_05_e"
	.sleb128 68
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_06_e"
	.sleb128 69
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_07_e"
	.sleb128 70
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_08_e"
	.sleb128 71
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_09_e"
	.sleb128 72
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_10_e"
	.sleb128 73
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_11_e"
	.sleb128 74
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_12_e"
	.sleb128 75
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_13_e"
	.sleb128 76
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_14_e"
	.sleb128 77
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_15_e"
	.sleb128 78
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_16_e"
	.sleb128 79
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_17_e"
	.sleb128 80
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_18_e"
	.sleb128 81
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_19_e"
	.sleb128 82
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_20_e"
	.sleb128 83
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_21_e"
	.sleb128 84
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_22_e"
	.sleb128 85
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_23_e"
	.sleb128 86
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_24_e"
	.sleb128 87
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_25_e"
	.sleb128 88
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_26_e"
	.sleb128 89
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_Basic_e"
	.sleb128 90
	.byte	0
	.uleb128 0xc
	.string	"CanIf_BufferIdx"
	.byte	0x6
	.uahalf	0x464
	.uaword	0x4cd
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x469
	.uaword	0x1742
	.uleb128 0xe
	.string	"CANIF_NO_UL"
	.sleb128 0
	.uleb128 0xe
	.string	"CAN_NM"
	.sleb128 1
	.uleb128 0xe
	.string	"CAN_TP"
	.sleb128 2
	.uleb128 0xe
	.string	"CAN_TSYN"
	.sleb128 3
	.uleb128 0xe
	.string	"J1939NM"
	.sleb128 4
	.uleb128 0xe
	.string	"J1939TP"
	.sleb128 5
	.uleb128 0xe
	.string	"PDUR"
	.sleb128 6
	.uleb128 0xe
	.string	"XCP"
	.sleb128 7
	.uleb128 0xe
	.string	"CDD"
	.sleb128 8
	.uleb128 0xe
	.string	"USER"
	.sleb128 9
	.uleb128 0xe
	.string	"MAX_USER_TYPE"
	.sleb128 10
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_UserType_ten"
	.byte	0x6
	.uahalf	0x476
	.uaword	0x16cf
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x47a
	.uaword	0x1786
	.uleb128 0xe
	.string	"CANIF_BASIC"
	.sleb128 0
	.uleb128 0xe
	.string	"CANIF_FULL"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_CanHandleType_ten"
	.byte	0x6
	.uahalf	0x47e
	.uaword	0x1761
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x484
	.uaword	0x17fa
	.uleb128 0xe
	.string	"CANIF_PRV_FULL_E"
	.sleb128 0
	.uleb128 0xe
	.string	"CANIF_PRV_BASIC_RANGE_E"
	.sleb128 1
	.uleb128 0xe
	.string	"CANIF_PRV_BASIC_LIST_E"
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Prv_HrhType_ten"
	.byte	0x6
	.uahalf	0x48a
	.uaword	0x17aa
	.uleb128 0x9
	.byte	0xc
	.byte	0x6
	.uahalf	0x4cb
	.uaword	0x1894
	.uleb128 0xa
	.string	"HrhInfo_e"
	.byte	0x6
	.uahalf	0x4d1
	.uaword	0x17fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x4d7
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"NumRxPdus_u32"
	.byte	0x6
	.uahalf	0x4da
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"HrhRangeMask_b"
	.byte	0x6
	.uahalf	0x4dd
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"ControllerId_u8"
	.byte	0x6
	.uahalf	0x4e8
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_Hrhtype_tst"
	.byte	0x6
	.uahalf	0x4f6
	.uaword	0x1818
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x4fa
	.uaword	0x1975
	.uleb128 0xa
	.string	"RxPduReadNotifyReadDataStatus_u8"
	.byte	0x6
	.uahalf	0x503
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"IndexForUL_u8"
	.byte	0x6
	.uahalf	0x521
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanIdtype_u8"
	.byte	0x6
	.uahalf	0x530
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"RxPduDlc_u8"
	.byte	0x6
	.uahalf	0x533
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.string	"RxPduCanId"
	.byte	0x6
	.uahalf	0x544
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Hrhref_t"
	.byte	0x6
	.uahalf	0x54e
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"RxPduTargetId_t"
	.byte	0x6
	.uahalf	0x551
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_RxPduType_tst"
	.byte	0x6
	.uahalf	0x55a
	.uaword	0x18b2
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.uahalf	0x55e
	.uaword	0x19c3
	.uleb128 0xa
	.string	"CanIfRxPduIndicationName"
	.byte	0x6
	.uahalf	0x560
	.uaword	0x19df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x19d4
	.uleb128 0x10
	.uaword	0x2c9
	.uleb128 0x10
	.uaword	0x19d4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x19da
	.uleb128 0x8
	.uaword	0x337
	.uleb128 0x7
	.byte	0x4
	.uaword	0x19c3
	.uleb128 0xc
	.string	"CanIf_RxCbk_Prototype"
	.byte	0x6
	.uahalf	0x561
	.uaword	0x1995
	.uleb128 0x9
	.byte	0xc
	.byte	0x6
	.uahalf	0x56b
	.uaword	0x1a4c
	.uleb128 0xa
	.string	"LowerCanId_t"
	.byte	0x6
	.uahalf	0x572
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"UpperCanId_t"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x575
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.string	"CanIf_RxPduRangeConfigType_tst"
	.byte	0x6
	.uahalf	0x577
	.uaword	0x1a03
	.uleb128 0xf
	.byte	0x1
	.uaword	0x1a7f
	.uleb128 0x10
	.uaword	0x2c9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1a73
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x5ae
	.uaword	0x1b3c
	.uleb128 0xa
	.string	"BufferIdPtr"
	.byte	0x6
	.uahalf	0x5b1
	.uaword	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"TotalBufferCount"
	.byte	0x6
	.uahalf	0x5b2
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"TxPduIdPtr"
	.byte	0x6
	.uahalf	0x5b3
	.uaword	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"TotalTxPduCount"
	.byte	0x6
	.uahalf	0x5b4
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"CtrlId"
	.byte	0x6
	.uahalf	0x5b6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"CtrlCanCtrlRef"
	.byte	0x6
	.uahalf	0x5b7
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.string	"CtrlWakeupSupport"
	.byte	0x6
	.uahalf	0x5b8
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_CtrlConfig_tst"
	.byte	0x6
	.uahalf	0x5c1
	.uaword	0x1a85
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.uahalf	0x5c4
	.uaword	0x1ba6
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x5c6
	.uaword	0x1ba6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanObjectId"
	.byte	0x6
	.uahalf	0x5c7
	.uaword	0x35c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanHandleType"
	.byte	0x6
	.uahalf	0x5c9
	.uaword	0x1786
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1bac
	.uleb128 0x8
	.uaword	0x1b3c
	.uleb128 0xc
	.string	"CanIf_Cfg_HthConfig_tst"
	.byte	0x6
	.uahalf	0x5cc
	.uaword	0x1b5d
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.uahalf	0x5cf
	.uaword	0x1c78
	.uleb128 0xa
	.string	"CanIf_HthConfigPtr"
	.byte	0x6
	.uahalf	0x5d0
	.uaword	0x1c78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"DataBuf"
	.byte	0x6
	.uahalf	0x5d3
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanIdBuf"
	.byte	0x6
	.uahalf	0x5d4
	.uaword	0x1c83
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanIfBufferId"
	.byte	0x6
	.uahalf	0x5d5
	.uaword	0x16b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"CanIfBufferSize"
	.byte	0x6
	.uahalf	0x5d6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"CanIfBufferMaxDataLength"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c7e
	.uleb128 0x8
	.uaword	0x1bb1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x43a
	.uleb128 0xc
	.string	"CanIf_Cfg_TxBufferConfig_tst"
	.byte	0x6
	.uahalf	0x5da
	.uaword	0x1bd1
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.uahalf	0x5dc
	.uaword	0x1dc9
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x5dd
	.uaword	0x1dc9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"TxPduId"
	.byte	0x6
	.uahalf	0x5e4
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"TxPduTargetPduId"
	.byte	0x6
	.uahalf	0x5e5
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"TxPduType"
	.byte	0x6
	.uahalf	0x5e6
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"TxPduCanIdType"
	.byte	0x6
	.uahalf	0x5e7
	.uaword	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"TxPduTxUserUL"
	.byte	0x6
	.uahalf	0x5e8
	.uaword	0x1742
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"UserTxConfirmation"
	.byte	0x6
	.uahalf	0x5e9
	.uaword	0x1a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"TxPduCanId"
	.byte	0x6
	.uahalf	0x5ea
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TxPduReadNotifyStatus"
	.byte	0x6
	.uahalf	0x5f0
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"TxTruncEnabled_b"
	.byte	0x6
	.uahalf	0x5f9
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.string	"TxPduLength_u8"
	.byte	0x6
	.uahalf	0x5fb
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1dcf
	.uleb128 0x8
	.uaword	0x1c89
	.uleb128 0xc
	.string	"CanIf_Cfg_TxPduConfig_tst"
	.byte	0x6
	.uahalf	0x5fc
	.uaword	0x1cae
	.uleb128 0x9
	.byte	0x44
	.byte	0x6
	.uahalf	0x623
	.uaword	0x1fc6
	.uleb128 0xa
	.string	"HrhConfig_pcst"
	.byte	0x6
	.uahalf	0x628
	.uaword	0x1fc6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"RxPduConfig_pcst"
	.byte	0x6
	.uahalf	0x62b
	.uaword	0x1fd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"NumCanRxPduId_t"
	.byte	0x6
	.uahalf	0x62e
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"NumCanCtrl_u8"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"NumCddRxPdus_t"
	.byte	0x6
	.uahalf	0x635
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"RangeCfg_tpst"
	.byte	0x6
	.uahalf	0x639
	.uaword	0x1fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"RxPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x63f
	.uaword	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"HrhPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x640
	.uaword	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"CfgSetIndex_u8"
	.byte	0x6
	.uahalf	0x643
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"CanIf_TxPduConfigPtr"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1fe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x646
	.uaword	0x1dc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x648
	.uaword	0x1ba6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"NumOfTxPdus"
	.byte	0x6
	.uahalf	0x649
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"NumOfTxBuffers"
	.byte	0x6
	.uahalf	0x64a
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"TxPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x64b
	.uaword	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.string	"CtrlIdTable_Ptr"
	.byte	0x6
	.uahalf	0x64c
	.uaword	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.string	"RxAutosarUL_Ptr"
	.byte	0x6
	.uahalf	0x651
	.uaword	0x1ff2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.string	"NmtxIdPtr"
	.byte	0x6
	.uahalf	0x654
	.uaword	0x1ffd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1fcc
	.uleb128 0x8
	.uaword	0x1894
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1fd7
	.uleb128 0x8
	.uaword	0x1975
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1fe2
	.uleb128 0x8
	.uaword	0x1a4c
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1fed
	.uleb128 0x8
	.uaword	0x1dd4
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1ff8
	.uleb128 0x8
	.uaword	0x19e5
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2003
	.uleb128 0x8
	.uaword	0x34a
	.uleb128 0xc
	.string	"CanIf_ConfigType"
	.byte	0x6
	.uahalf	0x65e
	.uaword	0x1df6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x11
	.byte	0x1
	.byte	0x7
	.byte	0xe5
	.uaword	0x2076
	.uleb128 0xe
	.string	"CANIF_TXBUFFER_EMPTY"
	.sleb128 0
	.uleb128 0xe
	.string	"CANIF_TXBUFFER_READY"
	.sleb128 1
	.uleb128 0xe
	.string	"CANIF_TXBUFFER_FULL"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanIf_Prv_BuffStatus_ten"
	.byte	0x7
	.byte	0xe9
	.uaword	0x2029
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.byte	0xee
	.uaword	0x20cb
	.uleb128 0x5
	.string	"last_index"
	.byte	0x7
	.byte	0xf0
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"bufferstatus"
	.byte	0x7
	.byte	0xf1
	.uaword	0x2076
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"CanIf_Prv_TxBufferStatus_tst"
	.byte	0x7
	.byte	0xf2
	.uaword	0x2096
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xf6
	.uaword	0x2114
	.uleb128 0x5
	.string	"pdu_buffered_flag"
	.byte	0x7
	.byte	0xf8
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"CanIf_Prv_TxPduStatus_tst"
	.byte	0x7
	.byte	0xfa
	.uaword	0x20ef
	.uleb128 0x12
	.string	"CanIf_Prv_GetFreeTxBufferIndex"
	.byte	0x1
	.uahalf	0x28d
	.byte	0x1
	.byte	0x1
	.uaword	0x21bf
	.uleb128 0x13
	.string	"lFreeIndex"
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x331
	.uleb128 0x13
	.string	"TxBufferConfig_pst"
	.byte	0x1
	.uahalf	0x290
	.uaword	0x1dc9
	.uleb128 0x14
	.string	"Index"
	.byte	0x1
	.uahalf	0x294
	.uaword	0x1be
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x295
	.uaword	0x1be
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x296
	.uaword	0x1be
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x297
	.uaword	0x331
	.byte	0
	.uleb128 0x12
	.string	"CanIf_Prv_SortTxBuffer_MoveLastToFirst"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.byte	0x1
	.uaword	0x2291
	.uleb128 0x13
	.string	"BufferId"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x225
	.uleb128 0x13
	.string	"CanIdBuf_p"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x1c83
	.uleb128 0x13
	.string	"BufferSize"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x1be
	.uleb128 0x14
	.string	"lIndex1"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x1e9
	.uleb128 0x14
	.string	"lIndex2"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x1be
	.uleb128 0x14
	.string	"lCanId"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x34a
	.uleb128 0x14
	.string	"lBufIndex"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1be
	.uleb128 0x14
	.string	"lswPduHandle"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x2c9
	.uleb128 0x14
	.string	"lSduLength"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x1be
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanIf_Prv_WriteTxBuffer"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x24ee
	.uleb128 0x17
	.string	"CanIfTxSduId"
	.byte	0x1
	.byte	0x31
	.uaword	0x2c9
	.uaword	.LLST0
	.uleb128 0x18
	.string	"Pdu"
	.byte	0x1
	.byte	0x32
	.uaword	0x3b7
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x1
	.byte	0x35
	.uaword	0x331
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.byte	0x37
	.uaword	0x1c83
	.byte	0x1
	.byte	0x63
	.uleb128 0x1a
	.string	"lTxPduConfig_pst"
	.byte	0x1
	.byte	0x39
	.uaword	0x1fe7
	.uaword	.LLST1
	.uleb128 0x1a
	.string	"lTxBufferConfig_pst"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1dc9
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0x1
	.byte	0x3d
	.uaword	0x225
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.byte	0x3f
	.uaword	0x1be
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x1
	.byte	0x41
	.uaword	0x1be
	.uaword	.LLST5
	.uleb128 0x1b
	.uaword	.LASF11
	.byte	0x1
	.byte	0x43
	.uaword	0x1be
	.uaword	.LLST6
	.uleb128 0x1a
	.string	"lCanHandleType"
	.byte	0x1
	.byte	0x45
	.uaword	0x1786
	.uaword	.LLST7
	.uleb128 0x1a
	.string	"lIndex"
	.byte	0x1
	.byte	0x47
	.uaword	0x1e9
	.uaword	.LLST8
	.uleb128 0x1a
	.string	"lSduWriteIndex"
	.byte	0x1
	.byte	0x49
	.uaword	0x1be
	.uaword	.LLST9
	.uleb128 0x1a
	.string	"lCanIdWriteIndex"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1e9
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	.LASF12
	.byte	0x1
	.byte	0x4d
	.uaword	0x1be
	.uaword	.LLST11
	.uleb128 0x1a
	.string	"lSduPtr"
	.byte	0x1
	.byte	0x4f
	.uaword	0x331
	.uaword	.LLST12
	.uleb128 0x19
	.uaword	.LASF13
	.byte	0x1
	.byte	0x51
	.uaword	0x2b3
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"ltxPduCustId_t"
	.byte	0x1
	.byte	0x53
	.uaword	0x1e9
	.uaword	.LLST13
	.uleb128 0x1c
	.uaword	0x2135
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x92
	.uaword	0x248a
	.uleb128 0x1d
	.uaword	0x2171
	.uaword	.LLST14
	.uleb128 0x1d
	.uaword	0x2171
	.uaword	.LLST14
	.uleb128 0x1d
	.uaword	0x2171
	.uaword	.LLST14
	.uleb128 0x1d
	.uaword	0x215e
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x1f
	.uaword	0x218c
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	0x219a
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	0x21a6
	.uaword	.LLST20
	.uleb128 0x1f
	.uaword	0x21b2
	.uaword	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x21bf
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xcb
	.uleb128 0x1d
	.uaword	0x2214
	.uaword	.LLST22
	.uleb128 0x1d
	.uaword	0x2201
	.uaword	.LLST23
	.uleb128 0x1d
	.uaword	0x21f0
	.uaword	.LLST24
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1f
	.uaword	0x2227
	.uaword	.LLST25
	.uleb128 0x22
	.uaword	0x2237
	.uleb128 0x1f
	.uaword	0x2247
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	0x2256
	.uaword	.LLST27
	.uleb128 0x1f
	.uaword	0x2268
	.uaword	.LLST28
	.uleb128 0x1f
	.uaword	0x227d
	.uaword	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"CanIf_Prv_ClearTxChannelBuffer"
	.byte	0x1
	.uahalf	0x148
	.byte	0x1
	.uaword	.LFB89
	.uaword	.LFE89
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2676
	.uleb128 0x24
	.string	"ControllerId"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x1be
	.uaword	.LLST30
	.uleb128 0x25
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x331
	.uaword	.LLST31
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x1c83
	.uaword	.LLST32
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x225
	.uaword	.LLST33
	.uleb128 0x26
	.string	"lTxPduId"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x225
	.uaword	.LLST34
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x1be
	.uaword	.LLST35
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x1be
	.uaword	.LLST36
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x150
	.uaword	0x1be
	.uaword	.LLST37
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x151
	.uaword	0x1be
	.uaword	.LLST38
	.uleb128 0x27
	.string	"lBufferConfig_pst"
	.byte	0x1
	.uahalf	0x152
	.uaword	0x1dc9
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.string	"BufferId_ptr"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x3ec
	.uaword	.LLST39
	.uleb128 0x27
	.string	"TxPduId_ptr"
	.byte	0x1
	.uahalf	0x155
	.uaword	0x3ec
	.byte	0x1
	.byte	0x66
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x156
	.uaword	0x225
	.uaword	.LLST40
	.uleb128 0x26
	.string	"BufferIdArrayIndex"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x225
	.uaword	.LLST41
	.uleb128 0x26
	.string	"TxPduIdArrayIndex"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x225
	.uaword	.LLST42
	.uleb128 0x26
	.string	"lCtrlConfig_pst"
	.byte	0x1
	.uahalf	0x159
	.uaword	0x1ba6
	.uaword	.LLST43
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"CanIf_Prv_BufferInit"
	.byte	0x1
	.uahalf	0x1d9
	.byte	0x1
	.uaword	.LFB90
	.uaword	.LFE90
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x275a
	.uleb128 0x25
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x331
	.uaword	.LLST44
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x1c83
	.uaword	.LLST45
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x225
	.uaword	.LLST46
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1e0
	.uaword	0x225
	.uaword	.LLST47
	.uleb128 0x26
	.string	"lCanIf_TxBufferConfig_p"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x1dc9
	.uaword	.LLST48
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x1be
	.uaword	.LLST49
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x1be
	.uaword	.LLST50
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x1be
	.uaword	.LLST51
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x1be
	.uaword	.LLST52
	.uleb128 0x26
	.string	"TxPduId"
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0x225
	.uaword	.LLST53
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"CanIf_Prv_ReadTxBuffer"
	.byte	0x1
	.uahalf	0x221
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB91
	.uaword	.LFE91
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2869
	.uleb128 0x29
	.string	"CanIf_TxBufferConfig"
	.byte	0x1
	.uahalf	0x221
	.uaword	0x1dc9
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.string	"Pdu"
	.byte	0x1
	.uahalf	0x221
	.uaword	0x2869
	.byte	0x1
	.byte	0x65
	.uleb128 0x2a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x225
	.uaword	0x331
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x226
	.uaword	0x1c83
	.uaword	.LLST54
	.uleb128 0x2a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x227
	.uaword	0x225
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x228
	.uaword	0x1be
	.uaword	.LLST55
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x229
	.uaword	0x1be
	.uaword	.LLST56
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x1be
	.uaword	.LLST57
	.uleb128 0x26
	.string	"lSduPtr"
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x331
	.uaword	.LLST58
	.uleb128 0x26
	.string	"lSduReadIndex"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x1be
	.uaword	.LLST59
	.uleb128 0x14
	.string	"lCanIdReadIndex"
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x1be
	.uleb128 0x2a
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x2b3
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3b7
	.uleb128 0x2b
	.string	"CanIf_Prv_ConfigSet_tpst"
	.byte	0x8
	.byte	0x37
	.uaword	0x2891
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2897
	.uleb128 0x8
	.uaword	0x2008
	.uleb128 0x2c
	.uaword	0x20cb
	.uaword	0x28a7
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.string	"CanIf_Prv_TxBufferRam_ast"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x289c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x2114
	.uaword	0x28d6
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.string	"CanIf_Prv_TxPduRam_ast"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x28cb
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
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
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uaword	.LVL0
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x72
	.sleb128 0
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL35
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL60
	.uaword	.LFE86
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL35
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL56
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x8f
	.sleb128 13
	.uaword	.LVL11
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x8f
	.sleb128 13
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xd
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xd
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xd
	.uaword	.LVL38
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL60
	.uaword	.LFE86
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xd
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x8f
	.sleb128 14
	.uaword	.LVL11
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x8f
	.sleb128 14
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.uaword	.LVL38
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL60
	.uaword	.LFE86
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL23
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x16
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7b
	.sleb128 0
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
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL56
	.uahalf	0x16
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7b
	.sleb128 0
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
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL35
	.uaword	.LVL45
	.uahalf	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL60
	.uaword	.LFE86
	.uahalf	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL4
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x8f
	.sleb128 7
	.uaword	.LVL59
	.uaword	.LFE86
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL4
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE86
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL22
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL46
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xc
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x8f
	.sleb128 52
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+9125
	.sleb128 0
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+9125
	.sleb128 0
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+9125
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x8f
	.sleb128 13
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xd
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xd
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x8f
	.sleb128 14
	.uaword	.LVL13
	.uaword	.LVL20
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL46
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL46
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 -1
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL48
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x8f
	.sleb128 7
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62
	.uaword	.LFE89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL67
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL68
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x10
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x8f
	.sleb128 13
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0xa
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xd
	.uaword	.LVL74
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x8f
	.sleb128 14
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0xa
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xe
	.uaword	.LVL74
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x72
	.sleb128 0
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL66
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LFE89
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LFE89
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL92
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL95
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x84
	.sleb128 13
	.uaword	.LVL96
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	.LVL96
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL111
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL123
	.uaword	.LFE91
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL112
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	.LVL115
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL123
	.uaword	.LFE91
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL114
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x8f
	.sleb128 7
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL123
	.uaword	.LFE91
	.uahalf	0x2
	.byte	0x8f
	.sleb128 7
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.uaword	.LFB89
	.uaword	.LFE89-.LFB89
	.uaword	.LFB90
	.uaword	.LFE90-.LFB90
	.uaword	.LFB91
	.uaword	.LFE91-.LFB91
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LFB86
	.uaword	.LFE86
	.uaword	.LFB89
	.uaword	.LFE89
	.uaword	.LFB90
	.uaword	.LFE90
	.uaword	.LFB91
	.uaword	.LFE91
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"SduLength"
.LASF3:
	.string	"PduIdx_t"
.LASF12:
	.string	"lDataIndex"
.LASF7:
	.string	"lDataMaxLen"
.LASF6:
	.string	"lBufferSize"
.LASF11:
	.string	"lDataLen"
.LASF2:
	.string	"BufferIndex"
.LASF5:
	.string	"CanIf_TxBufferConfigPtr"
.LASF9:
	.string	"lCanIdBuf_p"
.LASF14:
	.string	"lBufferCustId"
.LASF10:
	.string	"lBufferId"
.LASF4:
	.string	"CanIf_CtrlConfigPtr"
.LASF8:
	.string	"lDataBuf_p"
.LASF13:
	.string	"lRetValue"
.LASF1:
	.string	"swPduHandle"
	.extern	CanIf_Prv_TxPduRam_ast,STT_OBJECT,-1
	.extern	CanIf_Prv_TxBufferRam_ast,STT_OBJECT,-1
	.extern	CanIf_Prv_ConfigSet_tpst,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
