	.file	"CanTrcv.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanTrcv_Init,"ax",@progbits
	.align 1
	.global	CanTrcv_Init
	.type	CanTrcv_Init, @function
CanTrcv_Init:
.LFB31:
	.file 1 "bsw\\CanTrcv\\src\\CanTrcv.c"
	.loc 1 366 0
.LVL0:
	.loc 1 378 0
	movh.a	%a15, hi:CanTrcv_Prv_InitState_b
	.loc 1 368 0
	mov	%d4, 0
	.loc 1 378 0
	mov	%d15, 1
	.loc 1 368 0
	call	Qspi_CddInit
.LVL1:
	.loc 1 378 0
	st.b	[%a15] lo:CanTrcv_Prv_InitState_b, %d15
.LVL2:
	.loc 1 383 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	ld.a	%a15, [%a15] lo:CanTrcv_FctP_st
	jz.a	%a15, .L2
	.loc 1 385 0
	mov	%d4, 0
	calli	%a15
.LVL3:
.L2:
	.loc 1 388 0 discriminator 2
	mov	%d15, 1
	movh.a	%a15, hi:CanTrcv_WakeupModeState_ab
	st.b	[%a15] lo:CanTrcv_WakeupModeState_ab, %d15
.LVL4:
	ret
.LFE31:
	.size	CanTrcv_Init, .-CanTrcv_Init
.section .text.CanTrcv_Init_TJA1145,"ax",@progbits
	.align 1
	.global	CanTrcv_Init_TJA1145
	.type	CanTrcv_Init_TJA1145, @function
CanTrcv_Init_TJA1145:
.LFB32:
	.loc 1 464 0
.LVL5:
	.loc 1 476 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 464 0
	mov	%d5, %d4
	.loc 1 476 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L20
	.loc 1 533 0
	mov	%d4, 70
.LVL6:
	mov	%d6, 0
	mov	%d7, 1
	j	Det_ReportError
.LVL7:
.L20:
	.loc 1 479 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 480 0
	movh.a	%a2, hi:CanTrcv_SpiArray_ast
	ld.bu	%d10, [%a15]0
.LVL8:
	lea	%a12, [%a2] lo:CanTrcv_SpiArray_ast
	sh	%d10, 4
.LVL9:
	addsc.a	%a2, %a12, %d10, 0
	.loc 1 482 0
	movh.a	%a3, hi:CanTrcv_Prv_TJA1145_SpiState
	mov.aa	%a15, %a2
.LVL10:
	ld.bu	%d8, [%a15+]8
	.loc 1 484 0
	ld.hu	%d9, [%a15] 2
	.loc 1 483 0
	ld.hu	%d3, [%a2] 8
.LVL11:
	.loc 1 482 0
	lea	%a3, [%a3] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a3, %a3, %d8, 1
	.loc 1 484 0
	sub	%d5, %d9, %d3
	.loc 1 482 0
	mov	%d15, 3
	.loc 1 484 0
	extr.u	%d5, %d5, 0, 16
.LVL12:
	.loc 1 482 0
	st.h	[%a3]0, %d15
	movh.a	%a4, hi:CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao
	movh.a	%a15, hi:CanTrcv_CfgSpiChannel_ao
.LVL13:
	.loc 1 500 0
	mov	%d15, 0
	lea	%a4, [%a4] lo:CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_CfgSpiChannel_ao
	mul	%d4, %d8, 29
.LVL14:
	jz	%d5, .L12
.LVL15:
.L17:
	.loc 1 502 0 discriminator 3
	add	%d2, %d15, %d4
	addsc.a	%a2, %a4, %d2, 2
	add	%d2, %d15, %d3
	addsc.a	%a3, %a15, %d2, 1
	add	%d15, 1
.LVL16:
	ld.hu	%d2, [%a3]0
	st.w	[%a2]0, %d2
.LVL17:
	.loc 1 500 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	jlt.u	%d2, %d5, .L17
.L12:
	.loc 1 504 0
	mul	%d15, %d8, 116
	movh.a	%a5, hi:CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao
	lea	%a5, [%a5] lo:CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao
	addsc.a	%a4, %a4, %d15, 0
	addsc.a	%a5, %a5, %d15, 0
	mov	%d4, 0
	and	%d5, %d5, 255
.LVL18:
	call	Qspi_CddTxRx
.LVL19:
	.loc 1 522 0
	addsc.a	%a2, %a12, %d10, 0
	movh.a	%a3, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	ld.h	%d3, [%a2] 12
	.loc 1 523 0
	addsc.a	%a15, %a15, %d9, 1
	.loc 1 522 0
	sub	%d3, %d9
	extr.u	%d3, %d3, 0, 16
.LVL20:
	.loc 1 524 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	mul	%d8, %d8, 19
	jz	%d3, .L21
.LVL21:
.L16:
	.loc 1 526 0 discriminator 3
	add	%d2, %d15, %d8
	addsc.a	%a2, %a3, %d2, 2
	ld.hu	%d2, [%a15+]2
	add	%d15, 1
.LVL22:
	st.w	[%a2]0, %d2
.LVL23:
	.loc 1 524 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	jlt.u	%d2, %d3, .L16
	ret
.LVL24:
.L21:
	ret
.LFE32:
	.size	CanTrcv_Init_TJA1145, .-CanTrcv_Init_TJA1145
.section .text.CanTrcv_SetOpMode,"ax",@progbits
	.align 1
	.global	CanTrcv_SetOpMode
	.type	CanTrcv_SetOpMode, @function
CanTrcv_SetOpMode:
.LFB33:
	.loc 1 786 0
.LVL25:
	.loc 1 790 0
	movh.a	%a15, hi:CanTrcv_Prv_InitState_b
	ld.bu	%d3, [%a15] lo:CanTrcv_Prv_InitState_b
	.loc 1 786 0
	mov	%d15, %d4
	.loc 1 790 0
	jeq	%d3, 1, .L29
	.loc 1 821 0
	mov	%d4, 70
.LVL26:
	mov	%d5, %d15
.LVL27:
	mov	%d6, 1
	mov	%d7, 17
	call	Det_ReportError
.LVL28:
.L26:
	.loc 1 826 0
	mov	%d2, 1
	ret
.LVL29:
.L29:
	.loc 1 793 0
	jnz	%d4, .L24
	.loc 1 796 0
	jge.u	%d5, 3, .L25
	.loc 1 799 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	lea	%a15, [%a15] lo:CanTrcv_FctP_st
	ld.a	%a15, [%a15] 4
	jz.a	%a15, .L26
	.loc 1 801 0
	ji	%a15
.LVL30:
.L24:
	.loc 1 814 0
	mov	%d4, 70
.LVL31:
	mov	%d5, %d15
.LVL32:
	mov	%d6, 1
	mov	%d7, 1
	call	Det_ReportError
.LVL33:
	.loc 1 826 0
	mov	%d2, 1
	ret
.LVL34:
.L25:
	.loc 1 807 0
	mov	%e4, 70
.LVL35:
	mov	%d6, 1
	mov	%d7, 36
	call	Det_ReportError
.LVL36:
	j	.L26
.LFE33:
	.size	CanTrcv_SetOpMode, .-CanTrcv_SetOpMode
.section .text.CanTrcv_SetOpMode_TJA1145,"ax",@progbits
	.align 1
	.global	CanTrcv_SetOpMode_TJA1145
	.type	CanTrcv_SetOpMode_TJA1145, @function
CanTrcv_SetOpMode_TJA1145:
.LFB34:
	.loc 1 1057 0
.LVL37:
	.loc 1 1061 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1057 0
	mov	%d15, %d4
	.loc 1 1061 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 1, .L33
	.loc 1 1091 0
	mov	%d4, 70
.LVL38:
	mov	%d5, %d15
.LVL39:
	mov	%d6, 1
	mov	%d7, 1
	call	Det_ReportError
.LVL40:
	.loc 1 1058 0
	mov	%d2, 1
.LVL41:
	.loc 1 1095 0
	ret
.LVL42:
.L33:
	.loc 1 1064 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1065 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CanTrcv_SpiArray_ast
	madd	%d3, %d2, %d15, 16
	.loc 1 1087 0
	mov	%d2, 0
	.loc 1 1065 0
	mov.a	%a15, %d3
	.loc 1 1066 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d5
	.loc 1 1084 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d15, 1
	ld.h	%d15, [%a15]0
	or	%d15, %d15, 320
	st.h	[%a15]0, %d15
.LVL43:
	ret
.LFE34:
	.size	CanTrcv_SetOpMode_TJA1145, .-CanTrcv_SetOpMode_TJA1145
.section .text.CanTrcv_GetOpMode,"ax",@progbits
	.align 1
	.global	CanTrcv_GetOpMode
	.type	CanTrcv_GetOpMode, @function
CanTrcv_GetOpMode:
.LFB36:
	.loc 1 1245 0
.LVL44:
	.loc 1 1248 0
	movh.a	%a2, hi:CanTrcv_Prv_InitState_b
	ld.bu	%d15, [%a2] lo:CanTrcv_Prv_InitState_b
	.loc 1 1245 0
	mov	%d5, %d4
	.loc 1 1248 0
	jeq	%d15, 1, .L41
	.loc 1 1280 0
	mov	%d4, 70
.LVL45:
	mov	%d6, 2
	mov	%d7, 17
	call	Det_ReportError
.LVL46:
.L38:
	.loc 1 1285 0
	mov	%d2, 1
	ret
.LVL47:
.L41:
	.loc 1 1251 0
	jnz	%d4, .L36
	.loc 1 1254 0
	jz.a	%a4, .L37
	.loc 1 1257 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	lea	%a15, [%a15] lo:CanTrcv_FctP_st
	ld.a	%a15, [%a15] 8
	jz.a	%a15, .L38
	.loc 1 1260 0
	ji	%a15
.LVL48:
.L36:
	.loc 1 1273 0
	mov	%d4, 70
.LVL49:
	mov	%d6, 2
	mov	%d7, 1
	call	Det_ReportError
.LVL50:
	.loc 1 1285 0
	mov	%d2, 1
	ret
.LVL51:
.L37:
	.loc 1 1266 0
	mov	%e4, 70
.LVL52:
	mov	%d6, 2
	mov	%d7, 2
	call	Det_ReportError
.LVL53:
	j	.L38
.LFE36:
	.size	CanTrcv_GetOpMode, .-CanTrcv_GetOpMode
.section .text.CanTrcv_GetOpMode_TJA1145,"ax",@progbits
	.align 1
	.global	CanTrcv_GetOpMode_TJA1145
	.type	CanTrcv_GetOpMode_TJA1145, @function
CanTrcv_GetOpMode_TJA1145:
.LFB37:
	.loc 1 1472 0
.LVL54:
	.loc 1 1479 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1472 0
	mov	%d5, %d4
.LVL55:
	.loc 1 1479 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L54
.LVL56:
.LBB18:
.LBB19:
	.loc 1 1506 0
	mov	%d4, 70
.LVL57:
	mov	%d6, 2
	mov	%d7, 1
	call	Det_ReportError
.LVL58:
	mov	%d15, 1
.LVL59:
.L51:
.LBE19:
.LBE18:
	.loc 1 1510 0
	mov	%d2, %d15
	ret
.LVL60:
.L54:
	.loc 1 1482 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1483 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CanTrcv_SpiArray_ast
	madd	%d6, %d2, %d15, 16
	.loc 1 1501 0
	mov	%d15, 1
	.loc 1 1483 0
	mov.a	%a15, %d6
	.loc 1 1486 0
	ld.bu	%d2, [%a15]0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d2, 1
	ld.h	%d3, [%a15]0
	and	%d3, %d3, 2
	extr.u	%d3, %d3, 0, 16
	jnz	%d3, .L51
.LVL61:
	.loc 1 1489 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	mov.d	%d6, %a15
	addi	%d4, %d6, lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
.LVL62:
	madd	%d6, %d4, %d2, 76
	mov.a	%a15, %d6
	ld.w	%d2, [%a15] 20
.LVL63:
.LBB20:
.LBB21:
	.loc 1 5518 0
	and	%d2, %d2, 7
	jeq	%d2, 4, .L46
	jeq	%d2, 7, .L47
	jeq	%d2, 1, .L55
.LVL64:
.LBE21:
.LBE20:
	.loc 1 1495 0
	mov	%d4, 70
	mov	%d6, 2
	mov	%d7, 48
	call	Det_ReportError
.LVL65:
	j	.L51
.LVL66:
.L47:
.LBB25:
.LBB22:
	.loc 1 5521 0
	st.b	[%a4]0, %d3
.LVL67:
.LBE22:
.LBE25:
	.loc 1 1495 0
	mov	%d15, 0
.L56:
	.loc 1 1510 0
	mov	%d2, %d15
	ret
.LVL68:
.L46:
.LBB26:
.LBB23:
	.loc 1 5524 0
	mov	%d15, 2
	st.b	[%a4]0, %d15
.LVL69:
.LBE23:
.LBE26:
	.loc 1 1495 0
	mov	%d15, 0
	j	.L56
.LVL70:
.L55:
.LBB27:
.LBB24:
	.loc 1 5527 0
	st.b	[%a4]0, %d2
.LVL71:
.LBE24:
.LBE27:
	.loc 1 1495 0
	mov	%d15, 0
	j	.L56
.LFE37:
	.size	CanTrcv_GetOpMode_TJA1145, .-CanTrcv_GetOpMode_TJA1145
.section .text.CanTrcv_GetBusWuReason,"ax",@progbits
	.align 1
	.global	CanTrcv_GetBusWuReason
	.type	CanTrcv_GetBusWuReason, @function
CanTrcv_GetBusWuReason:
.LFB39:
	.loc 1 1664 0
.LVL72:
	.loc 1 1668 0
	movh.a	%a2, hi:CanTrcv_Prv_InitState_b
	ld.bu	%d15, [%a2] lo:CanTrcv_Prv_InitState_b
	.loc 1 1664 0
	mov	%d5, %d4
	.loc 1 1668 0
	jeq	%d15, 1, .L64
	.loc 1 1700 0
	mov	%d4, 70
.LVL73:
	mov	%d6, 3
	mov	%d7, 17
	call	Det_ReportError
.LVL74:
.L61:
	.loc 1 1705 0
	mov	%d2, 1
	ret
.LVL75:
.L64:
	.loc 1 1671 0
	jnz	%d4, .L59
	.loc 1 1674 0
	jz.a	%a4, .L60
	.loc 1 1677 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	lea	%a15, [%a15] lo:CanTrcv_FctP_st
	ld.a	%a15, [%a15] 12
	jz.a	%a15, .L61
	.loc 1 1680 0
	ji	%a15
.LVL76:
.L59:
	.loc 1 1693 0
	mov	%d4, 70
.LVL77:
	mov	%d6, 3
	mov	%d7, 1
	call	Det_ReportError
.LVL78:
	.loc 1 1705 0
	mov	%d2, 1
	ret
.LVL79:
.L60:
	.loc 1 1686 0
	mov	%e4, 70
.LVL80:
	mov	%d6, 3
	mov	%d7, 2
	call	Det_ReportError
.LVL81:
	j	.L61
.LFE39:
	.size	CanTrcv_GetBusWuReason, .-CanTrcv_GetBusWuReason
.section .text.CanTrcv_GetBusWuReason_TJA1145,"ax",@progbits
	.align 1
	.global	CanTrcv_GetBusWuReason_TJA1145
	.type	CanTrcv_GetBusWuReason_TJA1145, @function
CanTrcv_GetBusWuReason_TJA1145:
.LFB40:
	.loc 1 1868 0
.LVL82:
	.loc 1 1875 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L83
	mov	%d5, %d4
	.loc 1 1917 0
	mov	%d6, 3
	mov	%d4, 70
.LVL83:
	mov	%d7, 1
	call	Det_ReportError
.LVL84:
	.loc 1 1869 0
	mov	%d2, 1
	ret
.LVL85:
.L83:
	.loc 1 1878 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1879 0
	ld.bu	%d15, [%a15]0
.LVL86:
	.loc 1 1880 0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CanTrcv_SpiArray_ast
	madd	%d5, %d2, %d15, 16
	.loc 1 1869 0
	mov	%d2, 1
	.loc 1 1880 0
	mov.a	%a15, %d5
	.loc 1 1882 0
	ld.bu	%d3, [%a15]0
	.loc 1 1880 0
	ld.bu	%d4, [%a15] 1
.LVL87:
	.loc 1 1882 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d3, 1
	ld.h	%d15, [%a15]0
.LVL88:
	and	%d15, %d15, 2
	extr.u	%d15, %d15, 0, 16
	jnz	%d15, .L78
	.loc 1 1886 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	mov.d	%d5, %a15
.LVL89:
	addi	%d2, %d5, lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	madd	%d5, %d2, %d3, 76
	mov.a	%a15, %d5
	ld.w	%d2, [%a15] 12
	jz.t	%d2, 0, .L84
.LVL90:
	.loc 1 1893 0
	jeq	%d4, 1, .L85
.LVL91:
.L71:
	movh.a	%a15, hi:CSWTCH.18
	lea	%a15, [%a15] lo:CSWTCH.18
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 1908 0
	mov	%d2, 0
	ld.bu	%d15, [%a15]0
.LVL92:
	.loc 1 1906 0
	st.b	[%a4]0, %d15
.LVL93:
	ret
.LVL94:
.L78:
	.loc 1 1921 0
	ret
.L84:
	.loc 1 1893 0
	jeq	%d4, 1, .L86
.L80:
	mov	%d15, 1
.LVL95:
	.loc 1 1906 0
	st.b	[%a4]0, %d15
.LVL96:
	.loc 1 1908 0
	mov	%d2, 0
	ret
.LVL97:
.L86:
	.loc 1 1893 0
	ld.w	%d15, [%a15] 36
	jz.t	%d15, 1, .L80
	mov	%d15, 1
.LVL98:
	j	.L71
.LVL99:
.L85:
	ld.w	%d2, [%a15] 36
	and	%d2, %d2, 2
	seln	%d15, %d2, %d15, 2
	j	.L71
.LFE40:
	.size	CanTrcv_GetBusWuReason_TJA1145, .-CanTrcv_GetBusWuReason_TJA1145
.section .text.CanTrcv_SetWakeupMode,"ax",@progbits
	.align 1
	.global	CanTrcv_SetWakeupMode
	.type	CanTrcv_SetWakeupMode, @function
CanTrcv_SetWakeupMode:
.LFB41:
	.loc 1 2045 0
.LVL100:
	.loc 1 2049 0
	movh.a	%a15, hi:CanTrcv_Prv_InitState_b
	ld.bu	%d3, [%a15] lo:CanTrcv_Prv_InitState_b
	.loc 1 2045 0
	mov	%d15, %d4
	.loc 1 2049 0
	jeq	%d3, 1, .L94
	.loc 1 2087 0
	mov	%d4, 70
.LVL101:
	mov	%d5, %d15
.LVL102:
	mov	%d6, 5
	mov	%d7, 17
	call	Det_ReportError
.LVL103:
.L91:
	.loc 1 2092 0
	mov	%d2, 1
	ret
.LVL104:
.L94:
	.loc 1 2052 0
	jnz	%d4, .L89
	.loc 1 2055 0
	jge.u	%d5, 3, .L90
	.loc 1 2059 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	lea	%a15, [%a15] lo:CanTrcv_FctP_st
	ld.a	%a15, [%a15] 16
	jz.a	%a15, .L91
	.loc 1 2062 0
	ji	%a15
.LVL105:
.L89:
	.loc 1 2080 0
	mov	%d4, 70
.LVL106:
	mov	%d5, %d15
.LVL107:
	mov	%d6, 5
	mov	%d7, 1
	call	Det_ReportError
.LVL108:
	.loc 1 2092 0
	mov	%d2, 1
	ret
.LVL109:
.L90:
	.loc 1 2073 0
	mov	%e4, 70
.LVL110:
	mov	%d6, 5
	mov	%d7, 35
	call	Det_ReportError
.LVL111:
	j	.L91
.LFE41:
	.size	CanTrcv_SetWakeupMode, .-CanTrcv_SetWakeupMode
.section .text.CanTrcv_SetWakeupMode_TJA1145,"ax",@progbits
	.align 1
	.global	CanTrcv_SetWakeupMode_TJA1145
	.type	CanTrcv_SetWakeupMode_TJA1145, @function
CanTrcv_SetWakeupMode_TJA1145:
.LFB42:
	.loc 1 2305 0
.LVL112:
	.loc 1 2308 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L102
	mov	%d5, %d4
.LVL113:
	.loc 1 2346 0
	mov	%d6, 5
	mov	%d4, 70
.LVL114:
	mov	%d7, 1
	call	Det_ReportError
.LVL115:
	.loc 1 2306 0
	mov	%d2, 1
.LVL116:
	.loc 1 2350 0
	ret
.LVL117:
.L102:
	.loc 1 2310 0
	jeq	%d5, 1, .L98
	jne	%d5, 2, .L101
.LVL118:
.LBB28:
	.loc 1 2318 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2319 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CanTrcv_SpiArray_ast
	madd	%d3, %d2, %d15, 16
	.loc 1 2322 0
	mov	%d2, 0
	.loc 1 2319 0
	mov.a	%a15, %d3
	.loc 1 2322 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d2
	.loc 1 2325 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d15, 1
.LBE28:
	.loc 1 2342 0
	mov	%d2, 0
.LBB29:
	.loc 1 2325 0
	ld.h	%d15, [%a15]0
	or	%d15, %d15, 4
	st.h	[%a15]0, %d15
.LBE29:
	.loc 1 2327 0
	ret
.LVL119:
.L101:
	.loc 1 2338 0
	movh.a	%a15, hi:CanTrcv_WakeupModeState_ab
	lea	%a15, [%a15] lo:CanTrcv_WakeupModeState_ab
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2342 0
	mov	%d2, 0
	.loc 1 2338 0
	st.b	[%a15]0, %d15
	.loc 1 2340 0
	ret
.L98:
	.loc 1 2331 0
	movh.a	%a15, hi:CanTrcv_WakeupModeState_ab
	lea	%a15, [%a15] lo:CanTrcv_WakeupModeState_ab
	addsc.a	%a15, %a15, %d4, 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 2342 0
	mov	%d2, 0
	.loc 1 2333 0
	ret
.LFE42:
	.size	CanTrcv_SetWakeupMode_TJA1145, .-CanTrcv_SetWakeupMode_TJA1145
.section .text.CanTrcv_CheckWakeup,"ax",@progbits
	.align 1
	.global	CanTrcv_CheckWakeup
	.type	CanTrcv_CheckWakeup, @function
CanTrcv_CheckWakeup:
.LFB43:
	.loc 1 2438 0
.LVL120:
	.loc 1 2440 0
	mov	%d15, 1
	.loc 1 2438 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 2444 0
	movh.a	%a15, hi:CanTrcv_Prv_InitState_b
	.loc 1 2440 0
	st.b	[%SP] 7, %d15
	.loc 1 2444 0
	ld.bu	%d15, [%a15] lo:CanTrcv_Prv_InitState_b
	.loc 1 2438 0
	mov	%d5, %d4
	.loc 1 2444 0
	jeq	%d15, 1, .L109
	.loc 1 2463 0
	mov	%d4, 70
.LVL121:
	mov	%d6, 7
	mov	%d7, 17
	call	Det_ReportError
.LVL122:
	.loc 1 2439 0
	mov	%d2, 1
.L106:
.LVL123:
	.loc 1 2476 0
	ret
.LVL124:
.L109:
	.loc 1 2447 0
	jnz	%d4, .L105
	.loc 1 2450 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	lea	%a15, [%a15] lo:CanTrcv_FctP_st
	ld.a	%a15, [%a15] 20
	.loc 1 2439 0
	mov	%d2, 1
	.loc 1 2450 0
	jz.a	%a15, .L106
	.loc 1 2453 0
	lea	%a4, [%SP] 7
	ji	%a15
.LVL125:
.L105:
.LBB32:
.LBB33:
	.loc 1 2458 0
	mov	%d4, 70
.LVL126:
	mov	%d6, 7
	mov	%d7, 1
	call	Det_ReportError
.LVL127:
	mov	%d2, 1
	ret
.LBE33:
.LBE32:
.LFE43:
	.size	CanTrcv_CheckWakeup, .-CanTrcv_CheckWakeup
.section .text.CanTrcv_CheckWakeup_TJA1145,"ax",@progbits
	.align 1
	.global	CanTrcv_CheckWakeup_TJA1145
	.type	CanTrcv_CheckWakeup_TJA1145, @function
CanTrcv_CheckWakeup_TJA1145:
.LFB44:
	.loc 1 2686 0
.LVL128:
	.loc 1 2692 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2690 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
	.loc 1 2692 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L115
	mov	%d5, %d4
	.loc 1 2732 0
	mov	%d6, 7
	mov	%d4, 70
.LVL129:
	mov	%d7, 1
	call	Det_ReportError
.LVL130:
	.loc 1 2733 0
	mov	%d2, 1
.LVL131:
.L112:
	.loc 1 2736 0
	ret
.LVL132:
.L115:
	.loc 1 2695 0
	movh.a	%a15, hi:CanTrcv_WakeupModeState_ab
	lea	%a15, [%a15] lo:CanTrcv_WakeupModeState_ab
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2687 0
	mov	%d2, 0
	.loc 1 2695 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L112
.LVL133:
	.loc 1 2722 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2723 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	mov.d	%d4, %a15
.LVL134:
	addi	%d3, %d4, lo:CanTrcv_SpiArray_ast
	madd	%d4, %d3, %d15, 16
	mov.a	%a15, %d4
	.loc 1 2725 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d15, 1
	ld.h	%d15, [%a15]0
	insert	%d15, %d15, 15, 9, 1
	st.h	[%a15]0, %d15
	ret
.LFE44:
	.size	CanTrcv_CheckWakeup_TJA1145, .-CanTrcv_CheckWakeup_TJA1145
.section .text.CanTrcv_CheckWakeFlag,"ax",@progbits
	.align 1
	.global	CanTrcv_CheckWakeFlag
	.type	CanTrcv_CheckWakeFlag, @function
CanTrcv_CheckWakeFlag:
.LFB45:
	.loc 1 2830 0
.LVL135:
	.loc 1 2947 0
	mov	%d2, 1
	ret
.LFE45:
	.size	CanTrcv_CheckWakeFlag, .-CanTrcv_CheckWakeFlag
.section .text.CanTrcv_MainFunctionPreparation,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionPreparation
	.type	CanTrcv_MainFunctionPreparation, @function
CanTrcv_MainFunctionPreparation:
.LFB48:
	.loc 1 4177 0
.LVL136:
.LBB40:
.LBB41:
	.loc 1 4623 0
	movh	%d12, hi:CanTrcv_Prv_TJA1145_SpiState
	addi	%d12, %d12, lo:CanTrcv_Prv_TJA1145_SpiState
	sh	%d9, %d4, 1
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d9, 0
.LBE41:
.LBE40:
	.loc 1 4177 0
	mov	%d8, %d4
.LBB46:
.LBB42:
	.loc 1 4623 0
	ld.hu	%d15, [%a15]0
.LBE42:
.LBE46:
	.loc 1 4177 0
	mov	%d10, %d5
.LBB47:
.LBB43:
	.loc 1 4623 0
	jz.t	%d15, 10, .L118
	.loc 1 4626 0
	insert	%d15, %d15, 0, 10, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 4628 0
	mul	%d2, %d5, 3
	.loc 1 4626 0
	st.h	[%a15]0, %d15
	.loc 1 4628 0
	movh.a	%a15, hi:CanTrcv_WakeupSource_ao
	lea	%a15, [%a15] lo:CanTrcv_WakeupSource_ao
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d11, [%a15]0
	jnz	%d11, .L141
.LVL137:
.L118:
	.loc 1 4638 0
	jz.t	%d15, 9, .L120
	.loc 1 4642 0
	insert	%d15, %d15, 0, 9, 1
	insert	%d15, %d15, 15, 10, 1
	mov.a	%a2, %d12
	extr.u	%d15, %d15, 0, 16
	addsc.a	%a15, %a2, %d9, 0
	st.h	[%a15]0, %d15
.L120:
.LVL138:
.LBE43:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 4669 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	madd	%d3, %d2, %d8, 76
	mov.a	%a15, %d3
	ld.w	%d2, [%a15] 20
	.loc 1 4670 0
	ld.w	%d3, [%a15] 32
	.loc 1 4669 0
	and	%d2, %d2, 7
.LVL139:
	.loc 1 4681 0
	nor.t	%d5, %d3,7, %d3,7
	seln	%d5, %d5, %d5, 2
	.loc 1 4673 0
	jeq	%d2, 7, .L122
	.loc 1 4686 0
	mov	%d5, 2
	.loc 1 4684 0
	jeq	%d2, 4, .L122
	.loc 1 4690 0
	mov	%d5, 1
	.loc 1 4688 0
	jeq	%d2, 1, .L122
	.loc 1 4695 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 4696 0
	mov	%e4, 70
	mov	%d6, 6
	mov	%d7, 49
	.loc 1 4695 0
	ld.bu	%d11, [%a15]0
.LVL140:
	.loc 1 4696 0
	call	Det_ReportError
.LVL141:
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d9, 0
	.loc 1 4695 0
	mov	%d5, %d11
	ld.hu	%d15, [%a15]0
.LVL142:
.L122:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 1 4534 0
	jz.t	%d15, 6, .L117
	.loc 1 4535 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 4534 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, %d5, .L142
.L117:
	ret
.LVL143:
.L141:
.LBE51:
.LBE50:
.LBB53:
.LBB44:
	.loc 1 4630 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L143
.LVL144:
.L119:
	.loc 1 4634 0
	mov	%d4, %d11
	call	EcuM_EndCheckWakeup
.LVL145:
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d9, 0
	ld.hu	%d15, [%a15]0
	j	.L118
.LVL146:
.L142:
.LBE44:
.LBE53:
.LBB54:
.LBB52:
	.loc 1 4537 0
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d9, 0
	andn	%d15, %d15, ~(-65)
	.loc 1 4538 0
	mov	%d4, %d10
	.loc 1 4537 0
	st.h	[%a15]0, %d15
	.loc 1 4538 0
	j	CanIf_TrcvModeIndication
.LVL147:
.L143:
.LBE52:
.LBE54:
.LBB55:
.LBB45:
	.loc 1 4632 0
	mov	%d4, %d11
.LVL148:
	call	EcuM_SetWakeupEvent
.LVL149:
	j	.L119
.LBE45:
.LBE55:
.LFE48:
	.size	CanTrcv_MainFunctionPreparation, .-CanTrcv_MainFunctionPreparation
.section .text.CanTrcv_MainFunctionModeChange,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionModeChange
	.type	CanTrcv_MainFunctionModeChange, @function
CanTrcv_MainFunctionModeChange:
.LFB49:
	.loc 1 4222 0
.LVL150:
	.loc 1 4226 0
	movh.a	%a15, hi:CanTrcv_Cfg_SpiPos_au8
	lea	%a15, [%a15] lo:CanTrcv_Cfg_SpiPos_au8
	addsc.a	%a15, %a15, %d5, 0
	ld.bu	%d5, [%a15]0
.LVL151:
	.loc 1 4229 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d4, 1
	ld.hu	%d15, [%a15]0
	jz.t	%d15, 8, .L144
	.loc 1 4232 0
	andn	%d15, %d15, ~(-257)
	st.h	[%a15]0, %d15
	.loc 1 4234 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L147
	jne	%d15, 2, .L156
	.loc 1 4258 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	mov.d	%d2, %a15
	.loc 1 4259 0
	movh	%d1, 65535
	.loc 1 4258 0
	addi	%d15, %d2, lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	madd	%d2, %d15, %d4, 76
	.loc 1 4257 0
	mov.u	%d15, 65272
	.loc 1 4259 0
	mov	%d0, 0
	.loc 1 4258 0
	mov.a	%a15, %d2
	.loc 1 4259 0
	addi	%d1, %d1, 259
	.loc 1 4257 0
	ld.w	%d4, [%a15] 20
.LVL152:
	.loc 1 4263 0
	mov.u	%d2, 50720
	.loc 1 4257 0
	and	%d15, %d4
	.loc 1 4258 0
	or	%d15, %d15, 4
	.loc 1 4263 0
	mov.u	%d3, 50720
	.loc 1 4258 0
	st.w	[%a15] 20, %d15
	.loc 1 4259 0
	ldmst	[%a15] 16, %e0
	.loc 1 4263 0
	ldmst	[%a15] 12, %e2
.L150:
	.loc 1 4277 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
.L144:
	ret
.LVL153:
.L147:
	.loc 1 4240 0
	mul	%d4, %d4, 76
.LVL154:
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a2, %a15, %d4, 0
	mov.u	%d15, 49165
	st.w	[%a2] 4, %d15
	.loc 1 4241 0
	mov.u	%d15, 49686
	st.w	[%a2] 8, %d15
	.loc 1 4242 0
	mov.u	%d15, 50739
	st.w	[%a2] 12, %d15
	.loc 1 4243 0
	jeq	%d6, 1, .L157
.L149:
	.loc 1 4249 0
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 4248 0
	mov.u	%d15, 65272
	ld.w	%d2, [%a15] 20
	.loc 1 4250 0
	movh	%d9, 65535
	.loc 1 4248 0
	and	%d15, %d2
	.loc 1 4249 0
	or	%d15, %d15, 1
	.loc 1 4250 0
	mov	%d8, 0
	addi	%d9, %d9, 259
	.loc 1 4249 0
	st.w	[%a15] 20, %d15
	.loc 1 4250 0
	ldmst	[%a15] 16, %e8
	.loc 1 4254 0
	j	.L150
.LVL155:
.L156:
	.loc 1 4271 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	mov.d	%d2, %a15
	.loc 1 4273 0
	movh.a	%a2, hi:CanTrcv_SpiArray_ast
	.loc 1 4271 0
	addi	%d15, %d2, lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	madd	%d2, %d15, %d4, 76
	.loc 1 4270 0
	mov.u	%d15, 65272
	.loc 1 4271 0
	mov.a	%a15, %d2
	.loc 1 4270 0
	ld.w	%d2, [%a15] 20
	.loc 1 4272 0
	ld.w	%d3, [%a15] 16
	.loc 1 4270 0
	and	%d15, %d2
	.loc 1 4273 0
	mov.d	%d2, %a2
	.loc 1 4271 0
	or	%d15, %d15, 7
	st.w	[%a15] 20, %d15
	.loc 1 4273 0
	addi	%d15, %d2, lo:CanTrcv_SpiArray_ast
	madd	%d2, %d15, %d5, 16
	.loc 1 4272 0
	mov.u	%d15, 65276
	and	%d15, %d3
	.loc 1 4273 0
	mov.a	%a2, %d2
	ld.bu	%d2, [%a2] 14
	or	%d15, %d2
	st.w	[%a15] 16, %d15
	.loc 1 4275 0
	j	.L150
.LVL156:
.L157:
	.loc 1 4245 0
	mov.u	%d15, 51203
	st.w	[%a2] 40, %d15
	j	.L149
.LFE49:
	.size	CanTrcv_MainFunctionModeChange, .-CanTrcv_MainFunctionModeChange
.section .text.CanTrcv_MainFunctioCheckWake,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctioCheckWake
	.type	CanTrcv_MainFunctioCheckWake, @function
CanTrcv_MainFunctioCheckWake:
.LFB50:
	.loc 1 4296 0
.LVL157:
	.loc 1 4299 0
	movh	%d6, hi:CanTrcv_Prv_TJA1145_SpiState
	addi	%d6, %d6, lo:CanTrcv_Prv_TJA1145_SpiState
	sh	%d3, %d4, 1
	mov.a	%a2, %d6
	addsc.a	%a15, %a2, %d3, 0
	mul	%d2, %d4, 76
	ld.hu	%d15, [%a15]0
	jz.t	%d15, 2, .L159
	.loc 1 4302 0
	andn	%d15, %d15, ~(-5)
	st.h	[%a15]0, %d15
	.loc 1 4305 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a15, %a15, %d2, 0
	mov.u	%d15, 65279
	ld.w	%d7, [%a15] 4
	and	%d7, %d15
	or	%d7, %d7, 8
	st.w	[%a15] 4, %d7
	.loc 1 4308 0
	ld.w	%d7, [%a15] 8
	and	%d7, %d15
	or	%d7, %d7, 16
	st.w	[%a15] 8, %d7
	.loc 1 4311 0
	ld.w	%d7, [%a15] 12
	and	%d7, %d15
	or	%d7, %d7, 33
	st.w	[%a15] 12, %d7
	.loc 1 4313 0
	jeq	%d5, 1, .L180
.LVL158:
.L160:
	.loc 1 4319 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a15, %a15, %d4, 0
	mov	%d15, 0
	mov.a	%a2, %d6
	st.b	[%a15]0, %d15
	.loc 1 4320 0
	mov	%d15, 1
	addsc.a	%a15, %a2, %d3, 0
	st.b	[%a4]0, %d15
	ld.hu	%d15, [%a15]0
.L159:
	.loc 1 4324 0
	jz.t	%d15, 3, .L161
	.loc 1 4327 0
	mov.a	%a15, %d6
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 4329 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 4327 0
	andn	%d15, %d15, ~(-9)
	.loc 1 4329 0
	ld.w	%d4, [%a15] 12
.LVL159:
	.loc 1 4327 0
	st.h	[%a2]0, %d15
	.loc 1 4329 0
	mov.u	%d15, 65279
	and	%d15, %d4
	or	%d15, %d15, 16
	st.w	[%a15] 12, %d15
	.loc 1 4330 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
	ld.hu	%d15, [%a2]0
.L161:
	.loc 1 4334 0
	jz.t	%d15, 4, .L162
	.loc 1 4337 0
	mov.a	%a2, %d6
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 4338 0
	movh.a	%a2, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a2, [%a2] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a2, %a2, %d2, 0
	movh	%d1, 65535
	.loc 1 4337 0
	andn	%d15, %d15, ~(-17)
	.loc 1 4338 0
	mov	%d0, 0
	addi	%d1, %d1, 272
	.loc 1 4337 0
	st.h	[%a15]0, %d15
	.loc 1 4338 0
	ldmst	[%a2] 16, %e0
	.loc 1 4339 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
	ld.hu	%d15, [%a15]0
.L162:
	.loc 1 4343 0
	jz.t	%d15, 5, .L163
	.loc 1 4346 0
	mov.a	%a2, %d6
	addsc.a	%a15, %a2, %d3, 0
	andn	%d15, %d15, ~(-33)
	st.h	[%a15]0, %d15
	.loc 1 4348 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a15, %a15, %d2, 0
	mov.u	%d15, 65279
	ld.w	%d3, [%a15] 16
	and	%d15, %d3
	or	%d15, %d15, 16
	st.w	[%a15] 16, %d15
	.loc 1 4349 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
.L163:
	.loc 1 4352 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d15, [%a15] 12
	jz.t	%d15, 5, .L158
	.loc 1 4356 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a15, %a15, %d2, 0
	mov.u	%d15, 65279
	ld.w	%d2, [%a15] 12
	and	%d15, %d2
	or	%d15, %d15, 32
	st.w	[%a15] 12, %d15
	.loc 1 4357 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
.L158:
	ret
.LVL160:
.L180:
	.loc 1 4316 0
	ld.w	%d5, [%a15] 40
.LVL161:
	and	%d15, %d5
	or	%d15, %d15, 3
	st.w	[%a15] 40, %d15
	j	.L160
.LFE50:
	.size	CanTrcv_MainFunctioCheckWake, .-CanTrcv_MainFunctioCheckWake
.section .text.CanTrcv_MainFunctionTja1145,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionTja1145
	.type	CanTrcv_MainFunctionTja1145, @function
CanTrcv_MainFunctionTja1145:
.LFB47:
	.loc 1 4009 0
.LVL162:
	sub.a	%SP, 16
.LCFI1:
	.loc 1 4022 0
	mov	%d15, 0
	st.b	[%SP] 15, %d15
.LVL163:
	.loc 1 4009 0
	mov	%d5, %d4
	.loc 1 4027 0
	jnz	%d4, .L182
.LVL164:
	.loc 1 4032 0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	mov.d	%d2, %a15
	.loc 1 4030 0
	movh.a	%a14, hi:CanTrcv_Cfg_SpiPos_au8
	.loc 1 4032 0
	ld.bu	%d15, [%a14] lo:CanTrcv_Cfg_SpiPos_au8
	addi	%d11, %d2, lo:CanTrcv_SpiArray_ast
	sh	%d9, %d15, 4
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d9, 0
	ld.bu	%d15, [%a15]0
.LVL165:
	.loc 1 4033 0
	ld.bu	%d8, [%a15] 1
.LVL166:
	.loc 1 4035 0
	call	Qspi_CddRxDone
.LVL167:
	.loc 1 4038 0
	jnz	%d2, .L183
	.loc 1 4041 0
	mul	%d10, %d15, 76
	movh.a	%a12, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a12, [%a12] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a2, %a12, %d10, 0
	mov.u	%d2, 50944
.LVL168:
	st.w	[%a2] 12, %d2
	.loc 1 4043 0
	movh.a	%a2, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a2, [%a2] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a2, %a2, %d15, 1
	ld.hu	%d2, [%a2]0
	jnz.t	%d2, 0, .L194
	.loc 1 4056 0
	movh.a	%a13, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	.loc 1 4054 0
	andn	%d2, %d2, ~(-3)
	.loc 1 4056 0
	lea	%a13, [%a13] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	.loc 1 4054 0
	st.h	[%a2]0, %d2
	.loc 1 4056 0
	addsc.a	%a2, %a13, %d10, 0
	ld.w	%d2, [%a2] 12
	jnz.t	%d2, 0, .L186
	.loc 1 4056 0 is_stmt 0 discriminator 1
	jeq	%d8, 1, .L195
.LVL169:
.L187:
	.loc 1 4072 0 is_stmt 1
	mov	%d4, %d15
	mov	%d5, 0
	call	CanTrcv_MainFunctionPreparation
.LVL170:
.L185:
	.loc 1 4079 0
	mov	%d4, %d15
	lea	%a4, [%SP] 15
	mov	%d5, %d8
	call	CanTrcv_MainFunctioCheckWake
.LVL171:
	.loc 1 4080 0
	mov	%d4, %d15
	mov	%d5, 0
	lea	%a4, [%SP] 15
	mov	%d6, %d8
	call	CanTrcv_MainFunctionModeChange
.LVL172:
	.loc 1 4083 0
	ld.bu	%d2, [%SP] 15
	jnz	%d2, .L188
.LVL173:
	.loc 1 4089 0
	addsc.a	%a15, %a12, %d10, 0
	imask	%e2, 1, 8, 1
	ldmst	[%a15]0, %e2
.LVL174:
	ldmst	[%a15] 4, %e2
.LVL175:
	ldmst	[%a15] 8, %e2
.LVL176:
	ldmst	[%a15] 12, %e2
.LVL177:
	ldmst	[%a15] 16, %e2
.LVL178:
	ldmst	[%a15] 20, %e2
.LVL179:
	ldmst	[%a15] 24, %e2
.LVL180:
	ldmst	[%a15] 28, %e2
.LVL181:
	ldmst	[%a15] 32, %e2
.LVL182:
	ldmst	[%a15] 36, %e2
.LVL183:
	ldmst	[%a15] 40, %e2
.LVL184:
	ldmst	[%a15] 44, %e2
.LVL185:
.L189:
	.loc 1 4102 0
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d9, 0
	.loc 1 4107 0
	mov	%d4, 0
	.loc 1 4102 0
	ld.h	%d5, [%a15] 12
	ld.h	%d15, [%a15] 10
	.loc 1 4107 0
	mov.aa	%a4, %a12
	.loc 1 4102 0
	sub	%d5, %d15
	.loc 1 4107 0
	mov.aa	%a5, %a13
	and	%d5, %d5, 255
	call	Qspi_CddTxRx
.LVL186:
	.loc 1 4111 0
	mov	%d2, 0
	ret
.LVL187:
.L182:
	.loc 1 4154 0
	mov	%d4, 70
.LVL188:
	mov	%d6, 6
	mov	%d7, 1
	call	Det_ReportError
.LVL189:
	.loc 1 4016 0
	mov	%d2, 1
.LVL190:
	.loc 1 4158 0
	ret
.LVL191:
.L194:
	.loc 1 4049 0
	andn	%d2, %d2, ~(-2)
	movh.a	%a13, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	st.h	[%a2]0, %d2
	lea	%a13, [%a13] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	j	.L185
.LVL192:
.L183:
	.loc 1 4149 0
	mov	%e4, 70
	mov	%d6, 6
	mov	%d7, 48
	call	Det_ReportError
.LVL193:
	.loc 1 4016 0
	mov	%d2, 1
	ret
.LVL194:
.L188:
	.loc 1 4095 0
	mov.u	%d2, 65279
	mov	%d4, 0
	nor	%d5, %d2, 0
	st.w	[%SP] 4, %d5
	st.w	[%SP]0, %d4
	addsc.a	%a2, %a12, %d10, 0
	ld.d	%e4, [%SP]0
	ld.bu	%d15, [%a14] lo:CanTrcv_Cfg_SpiPos_au8
	.loc 1 4096 0
	mov	%d12, 0
	nor	%d13, %d2, 0
	.loc 1 4095 0
	ldmst	[%a2]0, %e4
	.loc 1 4096 0
	ldmst	[%a2] 44, %e12
	sh	%d9, %d15, 4
.LVL195:
	j	.L189
.LVL196:
.L195:
	.loc 1 4057 0
	ld.w	%d2, [%a2] 36
	jz.t	%d2, 1, .L187
.L186:
	.loc 1 4059 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
.LVL197:
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a15, %a15, %d15, 0
	mov	%d2, 1
	st.b	[%a15]0, %d2
	j	.L187
.LFE47:
	.size	CanTrcv_MainFunctionTja1145, .-CanTrcv_MainFunctionTja1145
.section .text.CanTrcv_MainFunction,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunction
	.type	CanTrcv_MainFunction, @function
CanTrcv_MainFunction:
.LFB46:
	.loc 1 3898 0
	.loc 1 3902 0
	movh.a	%a15, hi:CanTrcv_Prv_InitState_b
	ld.bu	%d15, [%a15] lo:CanTrcv_Prv_InitState_b
	.loc 1 3898 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 3902 0
	jeq	%d15, 1, .L204
	.loc 1 3948 0
	mov	%e4, 70
	mov	%d6, 6
	mov	%d7, 17
	call	Det_ReportError
.LVL198:
.L196:
	ret
.L204:
.LVL199:
.LBB60:
.LBB61:
	.loc 1 2450 0
	movh.a	%a15, hi:CanTrcv_FctP_st
	lea	%a15, [%a15] lo:CanTrcv_FctP_st
	ld.a	%a15, [%a15] 20
	.loc 1 2440 0
	st.b	[%SP] 7, %d15
	.loc 1 2450 0
	jz.a	%a15, .L198
	.loc 1 2453 0
	mov	%d4, 0
	lea	%a4, [%SP] 7
	calli	%a15
.LVL200:
.L198:
.LBE61:
.LBE60:
	.loc 1 3911 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	ld.bu	%d15, [%a15] lo:CanTrcv_TrcvType
	jne	%d15, 1, .L196
	.loc 1 3913 0
	mov	%d4, 0
	j	CanTrcv_MainFunctionTja1145
.LVL201:
.LFE46:
	.size	CanTrcv_MainFunction, .-CanTrcv_MainFunction
.section .text.CanTrcv_GetOpMode_Immediate,"ax",@progbits
	.align 1
	.global	CanTrcv_GetOpMode_Immediate
	.type	CanTrcv_GetOpMode_Immediate, @function
CanTrcv_GetOpMode_Immediate:
.LFB38:
	.loc 1 1593 0
.LVL202:
	.loc 1 1598 0
	movh	%d12, hi:CanTrcv_TrcvType
	addi	%d12, %d12, lo:CanTrcv_TrcvType
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d4, 0
	.loc 1 1593 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 1598 0
	ld.bu	%d2, [%a15]0
	.loc 1 1593 0
	mov	%d15, %d4
.LVL203:
	mov.d	%d11, %a4
	.loc 1 1598 0
	jeq	%d2, 1, .L242
.LVL204:
.L206:
.LBB72:
.LBB73:
.LBB74:
.LBB75:
	.loc 1 1506 0
	mov	%d4, 70
	mov	%d5, %d15
	mov	%d6, 2
	mov	%d7, 1
	call	Det_ReportError
.LVL205:
	mov	%d2, 1
	ret
.LVL206:
.L242:
.LBE75:
.LBE74:
.LBE73:
.LBE72:
	.loc 1 1601 0
	movh.a	%a12, hi:CanTrcv_Cfg_SpiPos_au8
	.loc 1 1602 0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	.loc 1 1601 0
	lea	%a12, [%a12] lo:CanTrcv_Cfg_SpiPos_au8
	.loc 1 1602 0
	mov.d	%d2, %a15
	.loc 1 1601 0
	addsc.a	%a15, %a12, %d4, 0
	.loc 1 1602 0
	addi	%d13, %d2, lo:CanTrcv_SpiArray_ast
	ld.bu	%d2, [%a15]0
	.loc 1 1605 0
	movh.a	%a13, hi:CanTrcv_Prv_TJA1145_SpiState
	.loc 1 1602 0
	madd	%d3, %d13, %d2, 16
	.loc 1 1605 0
	lea	%a13, [%a13] lo:CanTrcv_Prv_TJA1145_SpiState
	.loc 1 1602 0
	mov.a	%a15, %d3
	.loc 1 1605 0
	ld.bu	%d2, [%a15]0
	addsc.a	%a15, %a13, %d2, 1
	ld.h	%d2, [%a15]0
	jz.t	%d2, 0, .L211
	mov	%d8, 0
.LVL207:
.L207:
	.loc 1 1612 0 discriminator 1
	mov	%d4, %d15
	call	CanTrcv_MainFunctionTja1145
.LVL208:
	addi	%d3, %d8, 1
	.loc 1 1613 0 discriminator 1
	extr.u	%d4, %d3, 0, 16
	mov	%d5, 1000
	lt.u	%d4, %d4, %d5
	eq	%d5, %d2, 1
	and	%d4, %d5
	mov	%d8, %d3
.LVL209:
	jnz	%d4, .L207
	.loc 1 1621 0
	jz	%d2, .L211
	.loc 1 1644 0
	ret
.LVL210:
.L211:
	jnz	%d15, .L243
.LBB85:
.LBB86:
	.loc 1 4032 0
	ld.bu	%d14, [%a12]0
	mov.a	%a2, %d13
	sh	%d14, 4
	addsc.a	%a15, %a2, %d14, 0
.LBE86:
.LBE85:
	.loc 1 1612 0
	mov.a	%a14, 0
.LBB92:
.LBB87:
	.loc 1 4032 0
	ld.bu	%d8, [%a15]0
	.loc 1 4033 0
	ld.bu	%d9, [%a15] 1
	.loc 1 4022 0
	mov	%d10, 0
.LBE87:
.LBE92:
	.loc 1 1628 0
	lea	%a15, 1000
.L208:
.LVL211:
.LBB93:
.LBB88:
	.loc 1 4035 0 discriminator 1
	mov	%d4, 0
	.loc 1 4022 0 discriminator 1
	st.b	[%SP] 7, %d10
.LVL212:
	.loc 1 4035 0 discriminator 1
	call	Qspi_CddRxDone
.LVL213:
	.loc 1 4038 0 discriminator 1
	jnz	%d2, .L213
	.loc 1 4041 0
	mul	%d10, %d8, 76
	movh.a	%a12, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a12, [%a12] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a2, %a12, %d10, 0
	.loc 1 4043 0
	addsc.a	%a15, %a13, %d8, 1
	.loc 1 4041 0
	mov.u	%d2, 50944
.LVL214:
	st.w	[%a2] 12, %d2
	.loc 1 4043 0
	ld.hu	%d2, [%a15]0
	jz.t	%d2, 0, .L214
	.loc 1 4049 0
	andn	%d2, %d2, ~(-2)
	movh.a	%a14, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	st.h	[%a15]0, %d2
	lea	%a14, [%a14] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
.L215:
	.loc 1 4079 0
	mov	%d4, %d8
	lea	%a4, [%SP] 7
	mov	%d5, %d9
	call	CanTrcv_MainFunctioCheckWake
.LVL215:
	.loc 1 4080 0
	mov	%d4, %d8
	mov	%d5, 0
	lea	%a4, [%SP] 7
	mov	%d6, %d9
	call	CanTrcv_MainFunctionModeChange
.LVL216:
	.loc 1 4083 0
	ld.bu	%d2, [%SP] 7
	jnz	%d2, .L218
.LVL217:
	.loc 1 4089 0
	addsc.a	%a15, %a12, %d10, 0
	imask	%e2, 1, 8, 1
	ld.w	%d4, [%a15]0
	ldmst	[%a15] 4, %e2
	ldmst	[%a15] 8, %e2
	ldmst	[%a15] 12, %e2
	ldmst	[%a15] 16, %e2
	ldmst	[%a15] 20, %e2
	ldmst	[%a15] 24, %e2
	ldmst	[%a15] 28, %e2
	ldmst	[%a15] 32, %e2
	ldmst	[%a15] 36, %e2
	ldmst	[%a15] 40, %e2
	ld.w	%d2, [%a15] 44
	or	%d4, %d4, 256
.LVL218:
	or	%d2, %d2, 256
.LVL219:
.L219:
	addsc.a	%a2, %a12, %d10, 0
	.loc 1 4107 0
	mov.aa	%a4, %a12
	st.w	[%a2] 44, %d2
	st.w	[%a2]0, %d4
.LVL220:
	.loc 1 4102 0
	mov.a	%a2, %d13
	addsc.a	%a15, %a2, %d14, 0
	.loc 1 4107 0
	mov	%d4, 0
	.loc 1 4102 0
	ld.h	%d2, [%a15] 10
	ld.h	%d5, [%a15] 12
	.loc 1 4107 0
	mov.aa	%a5, %a14
	.loc 1 4102 0
	sub	%d5, %d2
	.loc 1 4107 0
	and	%d5, %d5, 255
	call	Qspi_CddTxRx
.LVL221:
.LBE88:
.LBE93:
.LBB94:
.LBB82:
	.loc 1 1479 0
	mov.a	%a2, %d12
	ld.bu	%d2, [%a2]0
	jne	%d2, 1, .L206
	.loc 1 1486 0
	ld.bu	%d15, [%a15]0
.LVL222:
	addsc.a	%a13, %a13, %d15, 1
	ld.h	%d2, [%a13]0
	and	%d2, %d2, 2
	extr.u	%d2, %d2, 0, 16
	jnz	%d2, .L239
.LVL223:
	.loc 1 1489 0
	mul	%d3, %d15, 76
	addsc.a	%a14, %a14, %d3, 0
	ld.w	%d15, [%a14] 20
.LVL224:
.LBB76:
.LBB77:
	.loc 1 5518 0
	and	%d15, %d15, 7
	jeq	%d15, 4, .L222
	jeq	%d15, 7, .L223
	jeq	%d15, 1, .L244
.LVL225:
.LBE77:
.LBE76:
	.loc 1 1495 0
	mov	%e4, 70
	mov	%d6, 2
	mov	%d7, 48
	call	Det_ReportError
.LVL226:
.L239:
	mov	%d2, 1
.LVL227:
.L245:
.LBE82:
.LBE94:
	.loc 1 1644 0
	ret
.LVL228:
.L243:
	.loc 1 1593 0
	mov	%d8, 0
.LBB95:
.LBB89:
	.loc 1 4022 0
	mov	%d10, 0
.LBE89:
.LBE95:
	.loc 1 1628 0
	mov	%d9, 1000
.L209:
.LVL229:
.LBB96:
.LBB90:
	.loc 1 4154 0
	mov	%d4, 70
	mov	%d5, %d15
	mov	%d6, 6
	mov	%d7, 1
	add	%d8, 1
	.loc 1 4022 0
	st.b	[%SP] 7, %d10
.LVL230:
	.loc 1 4154 0
	call	Det_ReportError
.LVL231:
.LBE90:
.LBE96:
	.loc 1 1628 0
	jne	%d8, %d9, .L209
.LBB97:
.LBB83:
	.loc 1 1495 0
	mov	%d2, 1
.LVL232:
	j	.L245
.LVL233:
.L218:
.LBE83:
.LBE97:
.LBB98:
.LBB91:
	.loc 1 4095 0
	addsc.a	%a2, %a12, %d10, 0
	mov.u	%d2, 65279
	ld.w	%d4, [%a2]0
	.loc 1 4096 0
	ld.w	%d3, [%a2] 44
	.loc 1 4095 0
	and	%d4, %d2
	.loc 1 4096 0
	and	%d2, %d3
	j	.L219
.L214:
	.loc 1 4056 0
	movh.a	%a14, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	lea	%a14, [%a14] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	addsc.a	%a2, %a14, %d10, 0
	.loc 1 4054 0
	andn	%d2, %d2, ~(-3)
	st.h	[%a15]0, %d2
	.loc 1 4056 0
	ld.w	%d2, [%a2] 12
	jnz.t	%d2, 0, .L216
	jeq	%d9, 1, .L246
.L217:
	.loc 1 4072 0
	mov	%d4, %d8
	mov	%d5, 0
	call	CanTrcv_MainFunctionPreparation
.LVL234:
	j	.L215
.L246:
	.loc 1 4057 0
	ld.w	%d2, [%a2] 36
	jz.t	%d2, 1, .L217
.L216:
	.loc 1 4059 0
	movh.a	%a2, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
	lea	%a2, [%a2] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a2, %a2, %d8, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
	j	.L217
.LVL235:
.L213:
	.loc 1 4149 0
	mov	%e4, 70
	mov	%d6, 6
	mov	%d7, 48
	call	Det_ReportError
.LVL236:
	add.a	%a14, 1
.LBE91:
.LBE98:
	.loc 1 1628 0
	jne.a	%a14, %a15, .L208
.LBB99:
.LBB84:
	.loc 1 1495 0
	mov	%d2, 1
.LVL237:
	j	.L245
.LVL238:
.L244:
.LBB80:
.LBB78:
	.loc 1 5527 0
	mov.a	%a2, %d11
	st.b	[%a2]0, %d15
.LVL239:
.L225:
.LBE78:
.LBE80:
	.loc 1 1495 0
	mov	%d2, 0
	ret
.LVL240:
.L223:
.LBB81:
.LBB79:
	.loc 1 5521 0
	mov.a	%a2, %d11
	st.b	[%a2]0, %d2
.LVL241:
	j	.L225
.LVL242:
.L222:
	.loc 1 5524 0
	mov.a	%a15, %d11
.LVL243:
	mov	%d15, 2
	st.b	[%a15]0, %d15
.LVL244:
	j	.L225
.LBE79:
.LBE81:
.LBE84:
.LBE99:
.LFE38:
	.size	CanTrcv_GetOpMode_Immediate, .-CanTrcv_GetOpMode_Immediate
.section .text.CanTrcv_SetOpMode_Immediate,"ax",@progbits
	.align 1
	.global	CanTrcv_SetOpMode_Immediate
	.type	CanTrcv_SetOpMode_Immediate, @function
CanTrcv_SetOpMode_Immediate:
.LFB35:
	.loc 1 1175 0
.LVL245:
	.loc 1 1181 0
	movh.a	%a15, hi:CanTrcv_TrcvType
	lea	%a15, [%a15] lo:CanTrcv_TrcvType
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1175 0
	sub.a	%SP, 8
.LCFI4:
	.loc 1 1181 0
	ld.bu	%d2, [%a15]0
	.loc 1 1175 0
	mov	%d15, %d4
	mov	%d9, %d5
	.loc 1 1181 0
	jeq	%d2, 1, .L272
	.loc 1 1221 0
	mov	%d4, 70
.LVL246:
	mov	%d5, %d15
.LVL247:
	mov	%d6, 1
	mov	%d7, 1
	call	Det_ReportError
.LVL248:
.L271:
	.loc 1 1176 0
	mov	%d3, 1
.L251:
.LVL249:
	.loc 1 1225 0
	mov	%d2, %d3
	ret
.LVL250:
.L272:
	.loc 1 1184 0
	movh.a	%a12, hi:CanTrcv_Cfg_SpiPos_au8
	.loc 1 1185 0
	movh.a	%a15, hi:CanTrcv_SpiArray_ast
	.loc 1 1184 0
	lea	%a12, [%a12] lo:CanTrcv_Cfg_SpiPos_au8
	.loc 1 1185 0
	mov.d	%d2, %a15
	.loc 1 1184 0
	addsc.a	%a15, %a12, %d4, 0
	.loc 1 1185 0
	addi	%d10, %d2, lo:CanTrcv_SpiArray_ast
	ld.bu	%d2, [%a15]0
	madd	%d3, %d10, %d2, 16
	mov.a	%a15, %d3
	.loc 1 1188 0
	ld.bu	%d12, [%a15]0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a13, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	sh	%d11, %d12, 1
	addsc.a	%a15, %a13, %d11, 0
	ld.hu	%d2, [%a15]0
	jz.t	%d2, 0, .L249
	mov	%d8, 0
.LVL251:
.L250:
	.loc 1 1195 0 discriminator 1
	mov	%d4, %d15
	call	CanTrcv_MainFunctionTja1145
.LVL252:
	addi	%d4, %d8, 1
	.loc 1 1196 0 discriminator 1
	extr.u	%d6, %d4, 0, 16
	mov	%d5, 1000
	lt.u	%d6, %d6, %d5
	eq	%d7, %d2, 1
	and	%d6, %d7
	.loc 1 1195 0 discriminator 1
	mov	%d3, %d2
.LVL253:
	mov	%d8, %d4
.LVL254:
	.loc 1 1196 0 discriminator 1
	jnz	%d6, .L250
	.loc 1 1204 0
	jnz	%d2, .L251
	addsc.a	%a15, %a13, %d11, 0
	ld.hu	%d2, [%a15]0
.LVL255:
.L249:
	.loc 1 1207 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a15, %a15, %d12, 0
	.loc 1 1208 0
	or	%d2, %d2, 256
	.loc 1 1207 0
	st.b	[%a15]0, %d9
	.loc 1 1208 0
	addsc.a	%a15, %a13, %d11, 0
	st.h	[%a15]0, %d2
.LVL256:
	jnz	%d15, .L273
.LBB102:
.LBB103:
	.loc 1 4032 0
	ld.bu	%d11, [%a12]0
	mov.a	%a2, %d10
	sh	%d11, 4
	addsc.a	%a15, %a2, %d11, 0
.LBE103:
.LBE102:
	.loc 1 1208 0
	mov	%d12, 0
.LBB109:
.LBB104:
	.loc 1 4032 0
	ld.bu	%d15, [%a15]0
.LVL257:
	.loc 1 4033 0
	ld.bu	%d8, [%a15] 1
	.loc 1 4022 0
	mov	%d9, 0
.LBE104:
.LBE109:
	.loc 1 1215 0
	mov	%d13, 1000
.LVL258:
.L252:
.LBB110:
.LBB105:
	.loc 1 4035 0 discriminator 1
	mov	%d4, 0
	.loc 1 4022 0 discriminator 1
	st.b	[%SP] 7, %d9
.LVL259:
	.loc 1 4035 0 discriminator 1
	call	Qspi_CddRxDone
.LVL260:
	.loc 1 4038 0 discriminator 1
	jnz	%d2, .L254
	.loc 1 4041 0
	mul	%d9, %d15, 76
	movh.a	%a12, hi:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	lea	%a12, [%a12] lo:CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	addsc.a	%a2, %a12, %d9, 0
	.loc 1 4043 0
	addsc.a	%a15, %a13, %d15, 1
	.loc 1 4041 0
	mov.u	%d2, 50944
.LVL261:
	st.w	[%a2] 12, %d2
	.loc 1 4043 0
	ld.hu	%d2, [%a15]0
	jz.t	%d2, 0, .L255
	.loc 1 4049 0
	andn	%d2, %d2, ~(-2)
	movh.a	%a13, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	st.h	[%a15]0, %d2
	lea	%a13, [%a13] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
.L256:
	.loc 1 4079 0
	mov	%d4, %d15
	lea	%a4, [%SP] 7
	mov	%d5, %d8
	call	CanTrcv_MainFunctioCheckWake
.LVL262:
	.loc 1 4080 0
	mov	%d4, %d15
	mov	%d5, 0
	lea	%a4, [%SP] 7
	mov	%d6, %d8
	call	CanTrcv_MainFunctionModeChange
.LVL263:
	.loc 1 4083 0
	ld.bu	%d15, [%SP] 7
.LVL264:
	jnz	%d15, .L259
.LVL265:
	.loc 1 4089 0
	addsc.a	%a15, %a12, %d9, 0
	imask	%e2, 1, 8, 1
	ld.w	%d15, [%a15]0
	ldmst	[%a15] 4, %e2
	ldmst	[%a15] 8, %e2
	ldmst	[%a15] 12, %e2
	ldmst	[%a15] 16, %e2
	ldmst	[%a15] 20, %e2
	ldmst	[%a15] 24, %e2
	ldmst	[%a15] 28, %e2
	ldmst	[%a15] 32, %e2
	ldmst	[%a15] 36, %e2
	ldmst	[%a15] 40, %e2
	ld.w	%d2, [%a15] 44
	or	%d15, %d15, 256
.LVL266:
	or	%d2, %d2, 256
.LVL267:
.L260:
	addsc.a	%a15, %a12, %d9, 0
	.loc 1 4102 0
	mov.a	%a2, %d10
	st.w	[%a15] 44, %d2
	st.w	[%a15]0, %d15
.LVL268:
	addsc.a	%a15, %a2, %d11, 0
	.loc 1 4107 0
	mov	%d4, 0
	.loc 1 4102 0
	ld.h	%d5, [%a15] 12
	ld.h	%d15, [%a15] 10
	.loc 1 4107 0
	mov.aa	%a4, %a12
	.loc 1 4102 0
	sub	%d5, %d15
	.loc 1 4107 0
	mov.aa	%a5, %a13
	and	%d5, %d5, 255
	call	Qspi_CddTxRx
.LVL269:
	.loc 1 4111 0
	mov	%d3, 0
.LVL270:
.LBE105:
.LBE110:
	.loc 1 1225 0
	mov	%d2, %d3
	ret
.LVL271:
.L273:
	.loc 1 1208 0
	mov	%d8, 0
.LBB111:
.LBB106:
	.loc 1 4022 0
	mov	%d10, 0
.LBE106:
.LBE111:
	.loc 1 1215 0
	mov	%d9, 1000
.LVL272:
.L253:
.LBB112:
.LBB107:
	.loc 1 4154 0
	mov	%d4, 70
	mov	%d5, %d15
	mov	%d6, 6
	mov	%d7, 1
	add	%d8, 1
	.loc 1 4022 0
	st.b	[%SP] 7, %d10
.LVL273:
	.loc 1 4154 0
	call	Det_ReportError
.LVL274:
.LBE107:
.LBE112:
	.loc 1 1215 0
	jne	%d8, %d9, .L253
	j	.L271
.LVL275:
.L259:
.LBB113:
.LBB108:
	.loc 1 4095 0
	addsc.a	%a2, %a12, %d9, 0
	mov.u	%d2, 65279
	ld.w	%d15, [%a2]0
	.loc 1 4096 0
	ld.w	%d3, [%a2] 44
	.loc 1 4095 0
	and	%d15, %d2
	.loc 1 4096 0
	and	%d2, %d3
	j	.L260
.LVL276:
.L255:
	.loc 1 4056 0
	movh.a	%a13, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	lea	%a13, [%a13] lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	addsc.a	%a2, %a13, %d9, 0
	.loc 1 4054 0
	andn	%d2, %d2, ~(-3)
	st.h	[%a15]0, %d2
	.loc 1 4056 0
	ld.w	%d2, [%a2] 12
	jnz.t	%d2, 0, .L257
	jeq	%d8, 1, .L274
.L258:
	.loc 1 4072 0
	mov	%d4, %d15
	mov	%d5, 0
	call	CanTrcv_MainFunctionPreparation
.LVL277:
	j	.L256
.L274:
	.loc 1 4057 0
	ld.w	%d2, [%a2] 36
	jz.t	%d2, 1, .L258
.L257:
	.loc 1 4059 0
	movh.a	%a2, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
	lea	%a2, [%a2] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a2, %a2, %d15, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
	j	.L258
.LVL278:
.L254:
	.loc 1 4149 0
	mov	%e4, 70
	mov	%d6, 6
	mov	%d7, 48
	add	%d12, 1
	call	Det_ReportError
.LVL279:
.LBE108:
.LBE113:
	.loc 1 1215 0
	jne	%d12, %d13, .L252
	j	.L271
.LFE35:
	.size	CanTrcv_SetOpMode_Immediate, .-CanTrcv_SetOpMode_Immediate
.section .text.CanTrcv_MainFunctionCheckForState,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionCheckForState
	.type	CanTrcv_MainFunctionCheckForState, @function
CanTrcv_MainFunctionCheckForState:
.LFB51:
	.loc 1 4378 0
.LVL280:
	ret
.LFE51:
	.size	CanTrcv_MainFunctionCheckForState, .-CanTrcv_MainFunctionCheckForState
.section .text.CanTrcv_MainFunctionRbIndicationBehaviour,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionRbIndicationBehaviour
	.type	CanTrcv_MainFunctionRbIndicationBehaviour, @function
CanTrcv_MainFunctionRbIndicationBehaviour:
.LFB52:
	.loc 1 4530 0
.LVL281:
	.loc 1 4534 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_SpiState
	addsc.a	%a15, %a15, %d4, 1
	ld.hu	%d15, [%a15]0
	jz.t	%d15, 6, .L276
	.loc 1 4535 0 discriminator 1
	movh.a	%a2, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a2, [%a2] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d3, [%a2]0
	.loc 1 4534 0 discriminator 1
	jeq	%d3, %d5, .L281
.L276:
	ret
.L281:
	.loc 1 4537 0
	andn	%d15, %d15, ~(-65)
	.loc 1 4538 0
	mov	%d4, %d6
.LVL282:
	.loc 1 4537 0
	st.h	[%a15]0, %d15
	.loc 1 4538 0
	j	CanIf_TrcvModeIndication
.LVL283:
.LFE52:
	.size	CanTrcv_MainFunctionRbIndicationBehaviour, .-CanTrcv_MainFunctionRbIndicationBehaviour
.section .text.CanTrcv_MainFunctionCheckWakeup,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionCheckWakeup
	.type	CanTrcv_MainFunctionCheckWakeup, @function
CanTrcv_MainFunctionCheckWakeup:
.LFB53:
	.loc 1 4622 0
.LVL284:
	.loc 1 4623 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiState
	mov.d	%d15, %a15
	sh	%d8, %d4, 1
	addi	%d10, %d15, lo:CanTrcv_Prv_TJA1145_SpiState
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d8, 0
	ld.hu	%d15, [%a15]0
	jz.t	%d15, 10, .L283
	.loc 1 4626 0
	insert	%d15, %d15, 0, 10, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 4628 0
	mul	%d5, %d5, 3
.LVL285:
	.loc 1 4626 0
	st.h	[%a15]0, %d15
	.loc 1 4628 0
	movh.a	%a15, hi:CanTrcv_WakeupSource_ao
	lea	%a15, [%a15] lo:CanTrcv_WakeupSource_ao
	addsc.a	%a15, %a15, %d5, 2
	ld.w	%d9, [%a15]0
	jz	%d9, .L283
	.loc 1 4630 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_Wakeup_au8
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_Wakeup_au8
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L295
.LVL286:
.L284:
	.loc 1 4634 0
	mov	%d4, %d9
	call	EcuM_EndCheckWakeup
.LVL287:
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d8, 0
	ld.hu	%d15, [%a15]0
.L283:
	.loc 1 4638 0
	jz.t	%d15, 9, .L282
	.loc 1 4642 0
	mov.a	%a2, %d10
	insert	%d15, %d15, 0, 9, 1
	addsc.a	%a15, %a2, %d8, 0
	insert	%d15, %d15, 15, 10, 1
	st.h	[%a15]0, %d15
.L282:
	ret
.LVL288:
.L295:
	.loc 1 4632 0
	mov	%d4, %d9
.LVL289:
	call	EcuM_SetWakeupEvent
.LVL290:
	j	.L284
.LFE53:
	.size	CanTrcv_MainFunctionCheckWakeup, .-CanTrcv_MainFunctionCheckWakeup
.section .text.CanTrcv_MainFunctionCheckState,"ax",@progbits
	.align 1
	.global	CanTrcv_MainFunctionCheckState
	.type	CanTrcv_MainFunctionCheckState, @function
CanTrcv_MainFunctionCheckState:
.LFB54:
	.loc 1 4664 0
.LVL291:
	.loc 1 4669 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	madd	%d2, %d15, %d4, 76
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 20
	.loc 1 4670 0
	ld.w	%d2, [%a15] 32
	.loc 1 4669 0
	and	%d15, %d15, 7
.LVL292:
	.loc 1 4673 0
	jeq	%d15, 7, .L307
	.loc 1 4684 0
	jeq	%d15, 4, .L298
	.loc 1 4688 0
	jeq	%d15, 1, .L308
	.loc 1 4695 0
	movh.a	%a15, hi:CanTrcv_Prv_TJA1145_ReqState
	lea	%a15, [%a15] lo:CanTrcv_Prv_TJA1145_ReqState
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 4696 0
	mov	%d6, 6
	.loc 1 4695 0
	ld.bu	%d15, [%a15]0
.LVL293:
	.loc 1 4696 0
	mov	%e4, 70
.LVL294:
	.loc 1 4695 0
	st.b	[%a4]0, %d15
	.loc 1 4696 0
	mov	%d7, 49
	j	Det_ReportError
.LVL295:
.L308:
	.loc 1 4690 0
	st.b	[%a4]0, %d15
	ret
.L307:
	.loc 1 4675 0
	jnz.t	%d2, 7, .L309
.L298:
	.loc 1 4681 0
	mov	%d15, 2
.LVL296:
	st.b	[%a4]0, %d15
	ret
.LVL297:
.L309:
	.loc 1 4677 0
	mov	%d15, 0
.LVL298:
	st.b	[%a4]0, %d15
	ret
.LFE54:
	.size	CanTrcv_MainFunctionCheckState, .-CanTrcv_MainFunctionCheckState
.section .rodata.a1.CSWTCH.18,"a",@progbits
	.type	CSWTCH.18, @object
	.size	CSWTCH.18, 7
CSWTCH.18:
	.byte	2
	.byte	6
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	1
	.global	CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao
.section .bss.a4.CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao,"aw",@nobits
	.align 2
	.type	CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao, @object
	.size	CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao, 116
CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao:
	.zero	116
	.global	CanTrcv_SpiArray_past
.section .bss.a4.CanTrcv_SpiArray_past,"aw",@nobits
	.align 2
	.type	CanTrcv_SpiArray_past, @object
	.size	CanTrcv_SpiArray_past, 4
CanTrcv_SpiArray_past:
	.zero	4
	.global	CanTrcv_FctP_pst
.section .bss.a4.CanTrcv_FctP_pst,"aw",@nobits
	.align 2
	.type	CanTrcv_FctP_pst, @object
	.size	CanTrcv_FctP_pst, 4
CanTrcv_FctP_pst:
	.zero	4
	.global	CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
.section .bss.a4.CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao,"aw",@nobits
	.align 2
	.type	CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao, @object
	.size	CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao, 76
CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao:
	.zero	76
	.global	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
.section .bss.a4.CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao,"aw",@nobits
	.align 2
	.type	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao, @object
	.size	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao, 76
CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao:
	.zero	76
	.global	CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao
.section .bss.a4.CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao,"aw",@nobits
	.align 2
	.type	CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao, @object
	.size	CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao, 116
CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao:
	.zero	116
	.global	CanTrcv_Prv_TJA1145_ReqState
.section .bss.a1.CanTrcv_Prv_TJA1145_ReqState,"aw",@nobits
	.type	CanTrcv_Prv_TJA1145_ReqState, @object
	.size	CanTrcv_Prv_TJA1145_ReqState, 1
CanTrcv_Prv_TJA1145_ReqState:
	.zero	1
	.global	CanTrcv_Prv_TJA1145_State
.section .bss.a1.CanTrcv_Prv_TJA1145_State,"aw",@nobits
	.type	CanTrcv_Prv_TJA1145_State, @object
	.size	CanTrcv_Prv_TJA1145_State, 1
CanTrcv_Prv_TJA1145_State:
	.zero	1
	.global	CanTrcv_Prv_TJA1145_Wakeup_au8
.section .bss.a1.CanTrcv_Prv_TJA1145_Wakeup_au8,"aw",@nobits
	.type	CanTrcv_Prv_TJA1145_Wakeup_au8, @object
	.size	CanTrcv_Prv_TJA1145_Wakeup_au8, 1
CanTrcv_Prv_TJA1145_Wakeup_au8:
	.zero	1
	.global	CanTrcv_Prv_TJA1145_SpiState
.section .bss.a2.CanTrcv_Prv_TJA1145_SpiState,"aw",@nobits
	.align 1
	.type	CanTrcv_Prv_TJA1145_SpiState, @object
	.size	CanTrcv_Prv_TJA1145_SpiState, 2
CanTrcv_Prv_TJA1145_SpiState:
	.zero	2
	.global	CanTrcv_Prv_InitState_b
.section .bss.a1.CanTrcv_Prv_InitState_b,"aw",@nobits
	.type	CanTrcv_Prv_InitState_b, @object
	.size	CanTrcv_Prv_InitState_b, 1
CanTrcv_Prv_InitState_b:
	.zero	1
	.global	CanTrcv_WakeupModeState_ab
.section .bss.a1.CanTrcv_WakeupModeState_ab,"aw",@nobits
	.type	CanTrcv_WakeupModeState_ab, @object
	.size	CanTrcv_WakeupModeState_ab, 1
CanTrcv_WakeupModeState_ab:
	.zero	1
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.byte	0x4
	.uaword	.LCFI0-.LFB43
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.byte	0x4
	.uaword	.LCFI1-.LFB47
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.byte	0x4
	.uaword	.LCFI2-.LFB46
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.byte	0x4
	.uaword	.LCFI3-.LFB38
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.byte	0x4
	.uaword	.LCFI4-.LFB35
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE46:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 5 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanTrcv\\CanTrcv_Cfg.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanTrcv\\api\\CanTrcv.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Cbk.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Cbk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x27a9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanTrcv\\src\\CanTrcv.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x140
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
	.uaword	0x1c4
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
	.uaword	0x1f0
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
	.uaword	0x22c
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
	.uaword	0x1c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x297
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1b7
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x84
	.uaword	0x319
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_NORMAL"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_SLEEP"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_STANDBY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvModeType"
	.byte	0x4
	.byte	0x89
	.uaword	0x2c2
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x8d
	.uaword	0x386
	.uleb128 0x5
	.string	"CANTRCV_WUMODE_ENABLE"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_WUMODE_DISABLE"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_WUMODE_CLEAR"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvWakeupModeType"
	.byte	0x4
	.byte	0x92
	.uaword	0x335
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xa5
	.uaword	0x448
	.uleb128 0x5
	.string	"CANTRCV_WU_ERROR"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_WU_NOT_SUPPORTED"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_WU_BY_BUS"
	.sleb128 2
	.uleb128 0x5
	.string	"CANTRCV_WU_INTERNALLY"
	.sleb128 3
	.uleb128 0x5
	.string	"CANTRCV_WU_RESET"
	.sleb128 4
	.uleb128 0x5
	.string	"CANTRCV_WU_POWER_ON"
	.sleb128 5
	.uleb128 0x5
	.string	"CANTRCV_WU_BY_PIN"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvWakeupReasonType"
	.byte	0x4
	.byte	0xaf
	.uaword	0x3a8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x47e
	.uleb128 0x7
	.uaword	0x1b7
	.uleb128 0x6
	.byte	0x4
	.uaword	0x489
	.uleb128 0x7
	.uaword	0x1e2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x21e
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0xb9
	.uaword	0x4e0
	.uleb128 0x5
	.string	"SPI_SEQ_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"SPI_SEQ_PENDING"
	.sleb128 1
	.uleb128 0x5
	.string	"SPI_SEQ_FAILED"
	.sleb128 2
	.uleb128 0x5
	.string	"SPI_SEQ_CANCELED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Spi_SeqResultType"
	.byte	0x5
	.byte	0xbe
	.uaword	0x494
	.uleb128 0x3
	.string	"Spi_ChannelType"
	.byte	0x5
	.byte	0xe4
	.uaword	0x1b7
	.uleb128 0x3
	.string	"Spi_SequenceType"
	.byte	0x5
	.byte	0xf0
	.uaword	0x1b7
	.uleb128 0x8
	.uaword	0x1b7
	.uaword	0x538
	.uleb128 0x9
	.uaword	0x46c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x269
	.uleb128 0x3
	.string	"EcuM_WakeupSourceType"
	.byte	0x6
	.byte	0x4e
	.uaword	0x21e
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.uahalf	0x116
	.uaword	0x630
	.uleb128 0xb
	.string	"No"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"WakePinRegCheck"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"Channel"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Sequence"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x510
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"WakeupSourceRef"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x53e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"InitStartPos"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"ControlStartPos"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"ControlEndPos"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"SpecReg1"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0xc
	.string	"CanTrcv_Spi_tst"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x55b
	.uleb128 0xc
	.string	"CanTrcv_Init_t"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x65f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x665
	.uleb128 0xd
	.byte	0x1
	.uaword	0x671
	.uleb128 0xe
	.uaword	0x1b7
	.byte	0
	.uleb128 0xc
	.string	"CanTrcv_SetOpMode_t"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x68d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x693
	.uleb128 0xf
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x6a8
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x319
	.byte	0
	.uleb128 0xc
	.string	"CanTrcv_GetOpMode_t"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x6c4
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6ca
	.uleb128 0xf
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x6df
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x6df
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x319
	.uleb128 0xc
	.string	"CanTrcv_GetBusWuReason_t"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x706
	.uleb128 0x6
	.byte	0x4
	.uaword	0x70c
	.uleb128 0xf
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x721
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x721
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x448
	.uleb128 0xc
	.string	"CanTrcv_SetWakeupMode_t"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x747
	.uleb128 0x6
	.byte	0x4
	.uaword	0x74d
	.uleb128 0xf
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x762
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x386
	.byte	0
	.uleb128 0xc
	.string	"CanTrcv_CheckWakeup_t"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x780
	.uleb128 0x6
	.byte	0x4
	.uaword	0x786
	.uleb128 0xf
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x79b
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x79b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2ac
	.uleb128 0xa
	.byte	0x1c
	.byte	0x7
	.uahalf	0x140
	.uaword	0x840
	.uleb128 0xb
	.string	"Init"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x648
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SetOpMode"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x671
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"GetOpMode"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"GetBusWuReason"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x6e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"SetWakeupMode"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x727
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"CheckWakeup"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x762
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"CddNo"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xc
	.string	"CanTrcv_FctP_tst"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x7a1
	.uleb128 0xa
	.byte	0x14
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x8fc
	.uleb128 0xb
	.string	"CanTrcv_TrcvTp"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CanTrcv_FctP_Ast"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x8fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CanTrcv_Cfg_SpiPos_u8"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"CanTrcv_SpiArray_st"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"CanTrcv_CfgSpiChannel_o"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x902
	.uleb128 0x7
	.uaword	0x840
	.uleb128 0x6
	.byte	0x4
	.uaword	0x90d
	.uleb128 0x7
	.uaword	0x630
	.uleb128 0xc
	.string	"CanTrcv_ConfigType"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x859
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.byte	0x91
	.uaword	0xa2f
	.uleb128 0x5
	.string	"CANTRCV_E_INVALID_TRANSCEIVER"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_E_PARAM_POINTER"
	.sleb128 2
	.uleb128 0x5
	.string	"CANTRCV_E_UNINIT"
	.sleb128 17
	.uleb128 0x5
	.string	"CANTRCV_E_TRCV_NOT_STANDBY"
	.sleb128 33
	.uleb128 0x5
	.string	"CANTRCV_E_TRCV_NOT_NORMAL"
	.sleb128 34
	.uleb128 0x5
	.string	"CANTRCV_E_PARAM_TRCV_WAKEUP_MODE"
	.sleb128 35
	.uleb128 0x5
	.string	"CANTRCV_E_PARAM_TRCV_OPMODE"
	.sleb128 36
	.uleb128 0x5
	.string	"CANTRCV_E_PARAM_TRCV_WRONG_CONF"
	.sleb128 48
	.uleb128 0x5
	.string	"CANTRCV_E_SPI"
	.sleb128 49
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.byte	0x9f
	.uaword	0xc2b
	.uleb128 0x5
	.string	"CANTRCV_SID_INIT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_SID_SETOPMODE"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_SID_GETOPMODE"
	.sleb128 2
	.uleb128 0x5
	.string	"CANTRCV_SID_GETBUSWUREASON"
	.sleb128 3
	.uleb128 0x5
	.string	"CANTRCV_SID_GETVERSIONINFO"
	.sleb128 4
	.uleb128 0x5
	.string	"CANTRCV_SID_SETWAKEUPMODE"
	.sleb128 5
	.uleb128 0x5
	.string	"CANTRCV_SID_MAINFUNCTION"
	.sleb128 6
	.uleb128 0x5
	.string	"CANTRCV_SID_CHECKWAKEUP"
	.sleb128 7
	.uleb128 0x5
	.string	"CANTRCV_SID_MAINFUNCTIONDIAGNOSTICS"
	.sleb128 8
	.uleb128 0x5
	.string	"CANTRCV_SID_GETTRCVSYSTEMDATA"
	.sleb128 9
	.uleb128 0x5
	.string	"CANTRCV_SID_CLEARTRCVWUFFLAG"
	.sleb128 10
	.uleb128 0x5
	.string	"CANTRCV_SID_READTRCVTIMEOUTFLAG"
	.sleb128 11
	.uleb128 0x5
	.string	"CANTRCV_SID_CLEARTRCVTIMEOUTFLAG"
	.sleb128 12
	.uleb128 0x5
	.string	"CANTRCV_SID_READTRCVSILENCEFLAG"
	.sleb128 13
	.uleb128 0x5
	.string	"CANTRCV_SID_CHECKWAKEFLAG"
	.sleb128 14
	.uleb128 0x5
	.string	"CANTRCV_SID_SETPNACTIVATIONSTATE"
	.sleb128 15
	.uleb128 0x5
	.string	"CANTRCV_SID_RB_GETERROR"
	.sleb128 32
	.byte	0
	.uleb128 0x10
	.string	"CanTrcv_GetModeFor_TJA1145"
	.byte	0x1
	.uahalf	0x158a
	.byte	0x1
	.uaword	0x2ac
	.byte	0x3
	.uaword	0xc84
	.uleb128 0x11
	.string	"CanTrcv_RegVal"
	.byte	0x1
	.uahalf	0x158a
	.uaword	0x1e2
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x158a
	.uaword	0x6df
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x158c
	.uaword	0x2ac
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"CanTrcv_GetOpMode_TJA1145"
	.byte	0x1
	.uahalf	0x5bf
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0xcf6
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x5bf
	.uaword	0x1b7
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x5bf
	.uaword	0x6df
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x5c1
	.uaword	0x2ac
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x5c3
	.uaword	0x1b7
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x5c4
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x5c5
	.uaword	0x1e2
	.byte	0
	.uleb128 0x10
	.string	"CanTrcv_GetReasonFromMask"
	.byte	0x1
	.uahalf	0x15c8
	.byte	0x1
	.uaword	0x448
	.byte	0x3
	.uaword	0xd49
	.uleb128 0x11
	.string	"MaskVal_u16"
	.byte	0x1
	.uahalf	0x15c8
	.uaword	0x1e2
	.uleb128 0x15
	.string	"ReasonFrmMask"
	.byte	0x1
	.uahalf	0x15ca
	.uaword	0x448
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"CanTrcv_CheckWakeup"
	.byte	0x1
	.uahalf	0x985
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0xda5
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x985
	.uaword	0x1b7
	.uleb128 0x15
	.string	"RetVal_Func_o"
	.byte	0x1
	.uahalf	0x987
	.uaword	0x2ac
	.uleb128 0x15
	.string	"RetVal_Wake_o"
	.byte	0x1
	.uahalf	0x988
	.uaword	0x2ac
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanTrcv_MainFunctionCheckForState"
	.byte	0x1
	.uahalf	0x1119
	.byte	0x1
	.byte	0x1
	.uaword	0xdf7
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1119
	.uaword	0x1b7
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1119
	.uaword	0x319
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1119
	.uaword	0x1b7
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanTrcv_Init"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe6a
	.uleb128 0x18
	.string	"ConfigPtr"
	.byte	0x1
	.uahalf	0x16d
	.uaword	0xe6a
	.uaword	.LLST0
	.uleb128 0x19
	.string	"TrcvIdx_qu8"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x284
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LVL1
	.uaword	0x2697
	.uaword	0xe5b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL3
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe70
	.uleb128 0x7
	.uaword	0x912
	.uleb128 0x17
	.byte	0x1
	.string	"CanTrcv_Init_TJA1145"
	.byte	0x1
	.uahalf	0x1cf
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf6c
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x1b7
	.uaword	.LLST2
	.uleb128 0x1e
	.string	"Ret_Spi"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x2ac
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x1b7
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x1e2
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x1e2
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x1e2
	.uaword	.LLST4
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x1e2
	.uaword	.LLST5
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x510
	.uleb128 0x19
	.string	"src_o"
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x483
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x26b8
	.uaword	0xf44
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL19
	.uaword	0x26eb
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao
	.byte	0x22
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao
	.byte	0x22
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_SetOpMode"
	.byte	0x1
	.uahalf	0x310
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x103a
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x310
	.uaword	0x1b7
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x311
	.uaword	0x319
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x313
	.uaword	0x2ac
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.LVL28
	.uaword	0x26b8
	.uaword	0xfec
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x23
	.uaword	.LVL30
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.uaword	.LVL33
	.uaword	0x26b8
	.uaword	0x1019
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL36
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_SetOpMode_TJA1145"
	.byte	0x1
	.uahalf	0x420
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10d7
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x420
	.uaword	0x1b7
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x420
	.uaword	0x319
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x422
	.uaword	0x2ac
	.uaword	.LLST12
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x423
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x424
	.uaword	0x1b7
	.uleb128 0x21
	.uaword	.LVL40
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_GetOpMode"
	.byte	0x1
	.uahalf	0x4dc
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1198
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x1b7
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x6df
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x4de
	.uaword	0x2ac
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LVL46
	.uaword	0x26b8
	.uaword	0x1151
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x23
	.uaword	.LVL48
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.uaword	.LVL50
	.uaword	0x26b8
	.uaword	0x1178
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL53
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xc84
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1289
	.uleb128 0x25
	.uaword	0xcad
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0xcb9
	.uaword	.LLST17
	.uleb128 0x26
	.uaword	0xcc5
	.uaword	.LLST18
	.uleb128 0x27
	.uaword	0xcd1
	.uleb128 0x27
	.uaword	0xcdd
	.uleb128 0x26
	.uaword	0xce9
	.uaword	.LLST19
	.uleb128 0x28
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0x1237
	.uleb128 0x25
	.uaword	0xcb9
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	0xcad
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x26
	.uaword	0xcc5
	.uaword	.LLST22
	.uleb128 0x27
	.uaword	0xcd1
	.uleb128 0x27
	.uaword	0xcdd
	.uleb128 0x27
	.uaword	0xce9
	.uleb128 0x21
	.uaword	.LVL58
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xc2b
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x5d3
	.uaword	0x126d
	.uleb128 0x25
	.uaword	0xc6b
	.uaword	.LLST23
	.uleb128 0x25
	.uaword	0xc54
	.uaword	.LLST19
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x26
	.uaword	0xc77
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL65
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_GetBusWuReason"
	.byte	0x1
	.uahalf	0x67f
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1352
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x67f
	.uaword	0x1b7
	.uaword	.LLST26
	.uleb128 0x18
	.string	"reason"
	.byte	0x1
	.uahalf	0x67f
	.uaword	0x721
	.uaword	.LLST27
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x681
	.uaword	0x2ac
	.uaword	.LLST28
	.uleb128 0x1a
	.uaword	.LVL74
	.uaword	0x26b8
	.uaword	0x130b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x23
	.uaword	.LVL76
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.uaword	.LVL78
	.uaword	0x26b8
	.uaword	0x1332
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL81
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_GetBusWuReason_TJA1145"
	.byte	0x1
	.uahalf	0x74b
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1416
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x74b
	.uaword	0x1b7
	.uaword	.LLST29
	.uleb128 0x18
	.string	"reason"
	.byte	0x1
	.uahalf	0x74b
	.uaword	0x721
	.uaword	.LLST30
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x74d
	.uaword	0x2ac
	.uaword	.LLST31
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x74f
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x750
	.uaword	0x1b7
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x751
	.uaword	0x1b7
	.uaword	.LLST32
	.uleb128 0x19
	.string	"mask_u16"
	.byte	0x1
	.uahalf	0x752
	.uaword	0x1e2
	.uaword	.LLST33
	.uleb128 0x21
	.uaword	.LVL84
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_SetWakeupMode"
	.byte	0x1
	.uahalf	0x7fc
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14e8
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x7fc
	.uaword	0x1b7
	.uaword	.LLST34
	.uleb128 0x1d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x7fc
	.uaword	0x386
	.uaword	.LLST35
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x7fe
	.uaword	0x2ac
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	.LVL103
	.uaword	0x26b8
	.uaword	0x149a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x23
	.uaword	.LVL105
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.uaword	.LVL108
	.uaword	0x26b8
	.uaword	0x14c7
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL111
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_SetWakeupMode_TJA1145"
	.byte	0x1
	.uahalf	0x900
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1590
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x900
	.uaword	0x1b7
	.uaword	.LLST37
	.uleb128 0x1d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x900
	.uaword	0x386
	.uaword	.LLST38
	.uleb128 0x19
	.string	"RetVal"
	.byte	0x1
	.uahalf	0x902
	.uaword	0x2ac
	.uaword	.LLST39
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x28
	.uaword	0x1575
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x90b
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x90c
	.uaword	0x1b7
	.byte	0
	.uleb128 0x21
	.uaword	.LVL115
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xd49
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LLST40
	.byte	0x1
	.uaword	0x1635
	.uleb128 0x25
	.uaword	0xd6c
	.uaword	.LLST41
	.uleb128 0x26
	.uaword	0xd78
	.uaword	.LLST42
	.uleb128 0x2e
	.uaword	0xd8e
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x28
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0x1606
	.uleb128 0x25
	.uaword	0xd6c
	.uaword	.LLST43
	.uleb128 0x29
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x2f
	.uaword	0xd78
	.byte	0x1
	.uleb128 0x27
	.uaword	0xd8e
	.uleb128 0x21
	.uaword	.LVL127
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x37
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL122
	.uaword	0x26b8
	.uaword	0x1624
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x37
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x30
	.uaword	.LVL125
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_CheckWakeup_TJA1145"
	.byte	0x1
	.uahalf	0xa7d
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x16d3
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0xa7d
	.uaword	0x1b7
	.uaword	.LLST44
	.uleb128 0x18
	.string	"WakeInfo"
	.byte	0x1
	.uahalf	0xa7d
	.uaword	0x79b
	.uaword	.LLST45
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0xa7f
	.uaword	0x2ac
	.uaword	.LLST46
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0xa80
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0xa81
	.uaword	0x1b7
	.uleb128 0x21
	.uaword	.LVL130
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x37
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CanTrcv_CheckWakeFlag"
	.byte	0x1
	.uahalf	0xb0d
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x171f
	.uleb128 0x31
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0xb0d
	.uaword	0x1b7
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0xb0f
	.uaword	0x2ac
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanTrcv_MainFunctionCheckWakeup"
	.byte	0x1
	.uahalf	0x120d
	.byte	0x1
	.byte	0x1
	.uaword	0x1763
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x120d
	.uaword	0x1b7
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x120d
	.uaword	0x1b7
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanTrcv_MainFunctionCheckState"
	.byte	0x1
	.uahalf	0x1237
	.byte	0x1
	.byte	0x1
	.uaword	0x17c5
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1237
	.uaword	0x1b7
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1237
	.uaword	0x6df
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1239
	.uaword	0x1e2
	.uleb128 0x15
	.string	"RegVal22_o"
	.byte	0x1
	.uahalf	0x123a
	.uaword	0x1e2
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanTrcv_MainFunctionRbIndicationBehaviour"
	.byte	0x1
	.uahalf	0x11b1
	.byte	0x1
	.byte	0x1
	.uaword	0x181f
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11b1
	.uaword	0x1b7
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x11b1
	.uaword	0x319
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11b1
	.uaword	0x1b7
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanTrcv_MainFunctionPreparation"
	.byte	0x1
	.uahalf	0x1050
	.byte	0x1
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1971
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1050
	.uaword	0x1b7
	.uaword	.LLST47
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1050
	.uaword	0x1b7
	.uaword	.LLST48
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1052
	.uaword	0x319
	.uaword	.LLST49
	.uleb128 0x2a
	.uaword	0x171f
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x1056
	.uaword	0x18d0
	.uleb128 0x25
	.uaword	0x1756
	.uaword	.LLST50
	.uleb128 0x25
	.uaword	0x174a
	.uaword	.LLST51
	.uleb128 0x1a
	.uaword	.LVL145
	.uaword	0x2717
	.uaword	0x18bf
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL149
	.uaword	0x273b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x1763
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x1062
	.uaword	0x1933
	.uleb128 0x25
	.uaword	0x1799
	.uaword	.LLST52
	.uleb128 0x25
	.uaword	0x178d
	.uaword	.LLST53
	.uleb128 0x29
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x26
	.uaword	0x17a5
	.uaword	.LLST54
	.uleb128 0x26
	.uaword	0x17b1
	.uaword	.LLST55
	.uleb128 0x21
	.uaword	.LVL141
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x17c5
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x1065
	.uleb128 0x25
	.uaword	0x1812
	.uaword	.LLST56
	.uleb128 0x25
	.uaword	0x1806
	.uaword	.LLST57
	.uleb128 0x25
	.uaword	0x17fa
	.uaword	.LLST58
	.uleb128 0x35
	.uaword	.LVL147
	.byte	0x1
	.uaword	0x275f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanTrcv_MainFunctionModeChange"
	.byte	0x1
	.uahalf	0x107d
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x19f6
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x107d
	.uaword	0x1b7
	.uaword	.LLST59
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x107d
	.uaword	0x1b7
	.uaword	.LLST60
	.uleb128 0x31
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x107d
	.uaword	0x538
	.byte	0x1
	.byte	0x64
	.uleb128 0x31
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x107d
	.uaword	0x1b7
	.byte	0x1
	.byte	0x56
	.uleb128 0x36
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1080
	.uaword	0x1e2
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanTrcv_MainFunctioCheckWake"
	.byte	0x1
	.uahalf	0x10c7
	.byte	0x1
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a58
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x10c7
	.uaword	0x1b7
	.uaword	.LLST61
	.uleb128 0x31
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x10c7
	.uaword	0x538
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x10c7
	.uaword	0x1b7
	.uaword	.LLST62
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"CanTrcv_MainFunctionTja1145"
	.byte	0x1
	.uahalf	0xfa8
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0x1b14
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0xfa8
	.uaword	0x1b7
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0xfb0
	.uaword	0x2ac
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xfb1
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0xfb2
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0xfb3
	.uaword	0x1e2
	.uleb128 0x15
	.string	"n_u16"
	.byte	0x1
	.uahalf	0xfb4
	.uaword	0x1e2
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0xfb5
	.uaword	0x1b7
	.uleb128 0x13
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0xfb6
	.uaword	0x269
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0xfb7
	.uaword	0x1b7
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0xfb8
	.uaword	0x510
	.uleb128 0x15
	.string	"Spi_SeqResult"
	.byte	0x1
	.uahalf	0xfb9
	.uaword	0x4e0
	.byte	0
	.uleb128 0x2d
	.uaword	0x1a58
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LLST63
	.byte	0x1
	.uaword	0x1c50
	.uleb128 0x25
	.uaword	0x1a83
	.uaword	.LLST64
	.uleb128 0x26
	.uaword	0x1a8f
	.uaword	.LLST65
	.uleb128 0x27
	.uaword	0x1a9b
	.uleb128 0x27
	.uaword	0x1aa7
	.uleb128 0x27
	.uaword	0x1ab3
	.uleb128 0x26
	.uaword	0x1abf
	.uaword	.LLST66
	.uleb128 0x26
	.uaword	0x1acd
	.uaword	.LLST67
	.uleb128 0x2e
	.uaword	0x1ad9
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x26
	.uaword	0x1ae5
	.uaword	.LLST68
	.uleb128 0x27
	.uaword	0x1af1
	.uleb128 0x26
	.uaword	0x1afd
	.uaword	.LLST69
	.uleb128 0x37
	.uaword	.LVL167
	.uaword	0x278d
	.uleb128 0x1a
	.uaword	.LVL170
	.uaword	0x181f
	.uaword	0x1b9e
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL171
	.uaword	0x19f6
	.uaword	0x1bbe
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL172
	.uaword	0x1971
	.uaword	0x1be3
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL186
	.uaword	0x26eb
	.uaword	0x1c11
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0x8f
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL189
	.uaword	0x26b8
	.uaword	0x1c2f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL193
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"CanTrcv_MainFunction"
	.byte	0x1
	.uahalf	0xf39
	.byte	0x1
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LLST70
	.byte	0x1
	.uaword	0x1d0c
	.uleb128 0x1e
	.string	"index_u8"
	.byte	0x1
	.uahalf	0xf3b
	.uaword	0x1b7
	.byte	0
	.uleb128 0x33
	.uaword	0xd49
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.uahalf	0xf44
	.uaword	0x1cd8
	.uleb128 0x39
	.uaword	0xd6c
	.byte	0
	.uleb128 0x29
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x26
	.uaword	0xd78
	.uaword	.LLST71
	.uleb128 0x2e
	.uaword	0xd8e
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1c
	.uaword	.LVL200
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL198
	.uaword	0x26b8
	.uaword	0x1cfb
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x35
	.uaword	.LVL201
	.byte	0x1
	.uaword	0x1a58
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"CanTrcv_GetOpMode_Immediate"
	.byte	0x1
	.uahalf	0x638
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LLST72
	.byte	0x1
	.uaword	0x2003
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x638
	.uaword	0x1b7
	.uaword	.LLST73
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x638
	.uaword	0x6df
	.uaword	.LLST74
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x63a
	.uaword	0x2ac
	.uaword	.LLST75
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x63b
	.uaword	0x1e2
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x63c
	.uaword	0x1e2
	.uaword	.LLST76
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x63d
	.uaword	0x1b7
	.uleb128 0x2a
	.uaword	0xc84
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x660
	.uaword	0x1e9c
	.uleb128 0x25
	.uaword	0xcb9
	.uaword	.LLST77
	.uleb128 0x25
	.uaword	0xcad
	.uaword	.LLST78
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x26
	.uaword	0xcc5
	.uaword	.LLST79
	.uleb128 0x27
	.uaword	0xcd1
	.uleb128 0x27
	.uaword	0xcdd
	.uleb128 0x26
	.uaword	0xce9
	.uaword	.LLST80
	.uleb128 0x28
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0x1e44
	.uleb128 0x25
	.uaword	0xcb9
	.uaword	.LLST81
	.uleb128 0x25
	.uaword	0xcad
	.uaword	.LLST82
	.uleb128 0x29
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x26
	.uaword	0xcc5
	.uaword	.LLST83
	.uleb128 0x27
	.uaword	0xcd1
	.uleb128 0x27
	.uaword	0xcdd
	.uleb128 0x27
	.uaword	0xce9
	.uleb128 0x21
	.uaword	.LVL205
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xc2b
	.uaword	.LBB76
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x5d3
	.uaword	0x1e7a
	.uleb128 0x25
	.uaword	0xc6b
	.uaword	.LLST84
	.uleb128 0x25
	.uaword	0xc54
	.uaword	.LLST80
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x26
	.uaword	0xc77
	.uaword	.LLST86
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL226
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1a58
	.uaword	.LBB85
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x65b
	.uaword	0x1ff2
	.uleb128 0x25
	.uaword	0x1a83
	.uaword	.LLST87
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x26
	.uaword	0x1a8f
	.uaword	.LLST88
	.uleb128 0x27
	.uaword	0x1a9b
	.uleb128 0x27
	.uaword	0x1aa7
	.uleb128 0x27
	.uaword	0x1ab3
	.uleb128 0x26
	.uaword	0x1abf
	.uaword	.LLST89
	.uleb128 0x26
	.uaword	0x1acd
	.uaword	.LLST90
	.uleb128 0x2e
	.uaword	0x1ad9
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x26
	.uaword	0x1ae5
	.uaword	.LLST91
	.uleb128 0x27
	.uaword	0x1af1
	.uleb128 0x26
	.uaword	0x1afd
	.uaword	.LLST92
	.uleb128 0x1a
	.uaword	.LVL213
	.uaword	0x278d
	.uaword	0x1f1a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL215
	.uaword	0x19f6
	.uaword	0x1f3a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL216
	.uaword	0x1971
	.uaword	0x1f5f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL221
	.uaword	0x26eb
	.uaword	0x1f93
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x11
	.byte	0x8f
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x8f
	.sleb128 10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL231
	.uaword	0x26b8
	.uaword	0x1fb7
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL234
	.uaword	0x181f
	.uaword	0x1fd0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL236
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL208
	.uaword	0x1a58
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"CanTrcv_SetOpMode_Immediate"
	.byte	0x1
	.uahalf	0x496
	.byte	0x1
	.uaword	0x2ac
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LLST93
	.byte	0x1
	.uaword	0x2217
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x496
	.uaword	0x1b7
	.uaword	.LLST94
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x496
	.uaword	0x319
	.uaword	.LLST95
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x498
	.uaword	0x2ac
	.uaword	.LLST96
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x499
	.uaword	0x1e2
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x49a
	.uaword	0x1e2
	.uaword	.LLST97
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x49b
	.uaword	0x1b7
	.uleb128 0x2a
	.uaword	0x1a58
	.uaword	.LBB102
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x4be
	.uaword	0x21e2
	.uleb128 0x25
	.uaword	0x1a83
	.uaword	.LLST98
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x26
	.uaword	0x1a8f
	.uaword	.LLST99
	.uleb128 0x27
	.uaword	0x1a9b
	.uleb128 0x27
	.uaword	0x1aa7
	.uleb128 0x27
	.uaword	0x1ab3
	.uleb128 0x26
	.uaword	0x1abf
	.uaword	.LLST100
	.uleb128 0x26
	.uaword	0x1acd
	.uaword	.LLST101
	.uleb128 0x2e
	.uaword	0x1ad9
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x26
	.uaword	0x1ae5
	.uaword	.LLST102
	.uleb128 0x27
	.uaword	0x1af1
	.uleb128 0x26
	.uaword	0x1afd
	.uaword	.LLST103
	.uleb128 0x1a
	.uaword	.LVL260
	.uaword	0x278d
	.uaword	0x2110
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL262
	.uaword	0x19f6
	.uaword	0x2130
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL263
	.uaword	0x1971
	.uaword	0x2155
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL269
	.uaword	0x26eb
	.uaword	0x2183
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0x8f
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL274
	.uaword	0x26b8
	.uaword	0x21a7
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL277
	.uaword	0x181f
	.uaword	0x21c0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL279
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL248
	.uaword	0x26b8
	.uaword	0x2206
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.uleb128 0x21
	.uaword	.LVL252
	.uaword	0x1a58
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xda5
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2242
	.uleb128 0x3b
	.uaword	0xdd2
	.byte	0x1
	.byte	0x54
	.uleb128 0x3b
	.uaword	0xdde
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.uaword	0xdea
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x24
	.uaword	0x17c5
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x227d
	.uleb128 0x25
	.uaword	0x17fa
	.uaword	.LLST104
	.uleb128 0x25
	.uaword	0x1806
	.uaword	.LLST105
	.uleb128 0x25
	.uaword	0x1812
	.uaword	.LLST106
	.uleb128 0x3c
	.uaword	.LVL283
	.byte	0x1
	.uaword	0x275f
	.byte	0
	.uleb128 0x24
	.uaword	0x171f
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x22c9
	.uleb128 0x25
	.uaword	0x174a
	.uaword	.LLST107
	.uleb128 0x25
	.uaword	0x1756
	.uaword	.LLST108
	.uleb128 0x1a
	.uaword	.LVL287
	.uaword	0x2717
	.uaword	0x22b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL290
	.uaword	0x273b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x1763
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2324
	.uleb128 0x25
	.uaword	0x178d
	.uaword	.LLST109
	.uleb128 0x25
	.uaword	0x1799
	.uaword	.LLST110
	.uleb128 0x26
	.uaword	0x17a5
	.uaword	.LLST111
	.uleb128 0x26
	.uaword	0x17b1
	.uaword	.LLST112
	.uleb128 0x35
	.uaword	.LVL295
	.byte	0x1
	.uaword	0x26b8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x8
	.uaword	0x1b7
	.uaword	0x232f
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.string	"CanTrcv_TrcvType"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x234a
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x2324
	.uleb128 0x8
	.uaword	0x840
	.uaword	0x235a
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.string	"CanTrcv_FctP_st"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x2374
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x234f
	.uleb128 0x3e
	.string	"CanTrcv_Cfg_SpiPos_au8"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x239a
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x2324
	.uleb128 0x8
	.uaword	0x630
	.uaword	0x23aa
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.string	"CanTrcv_SpiArray_ast"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x23c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x239f
	.uleb128 0x8
	.uaword	0x1e2
	.uaword	0x23d9
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.string	"CanTrcv_CfgSpiChannel_ao"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x23fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x23ce
	.uleb128 0x8
	.uaword	0x53e
	.uaword	0x240c
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.string	"CanTrcv_WakeupSource_ao"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x242e
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x2401
	.uleb128 0x8
	.uaword	0x269
	.uaword	0x2443
	.uleb128 0x9
	.uaword	0x46c
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"CanTrcv_WakeupModeState_ab"
	.byte	0x1
	.byte	0x6b
	.uaword	0x2433
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_WakeupModeState_ab
	.uleb128 0x40
	.string	"CanTrcv_FctP_pst"
	.byte	0x1
	.uahalf	0x149
	.uaword	0x8fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_FctP_pst
	.uleb128 0x40
	.string	"CanTrcv_SpiArray_past"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x907
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_SpiArray_past
	.uleb128 0x8
	.uaword	0x319
	.uaword	0x24c1
	.uleb128 0x9
	.uaword	0x46c
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_State"
	.byte	0x1
	.byte	0xc6
	.uaword	0x24b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_State
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_ReqState"
	.byte	0x1
	.byte	0xc7
	.uaword	0x24b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_ReqState
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_Wakeup_au8"
	.byte	0x1
	.byte	0xaf
	.uaword	0x528
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_Wakeup_au8
	.uleb128 0x8
	.uaword	0x21e
	.uaword	0x2557
	.uleb128 0x9
	.uaword	0x46c
	.byte	0
	.uleb128 0x9
	.uaword	0x46c
	.byte	0x1c
	.byte	0
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao"
	.byte	0x1
	.byte	0xc9
	.uaword	0x2541
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao
	.uleb128 0x8
	.uaword	0x21e
	.uaword	0x259f
	.uleb128 0x9
	.uaword	0x46c
	.byte	0
	.uleb128 0x9
	.uaword	0x46c
	.byte	0x12
	.byte	0
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao"
	.byte	0x1
	.byte	0xcb
	.uaword	0x2589
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao"
	.byte	0x1
	.byte	0xcd
	.uaword	0x2589
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao
	.uleb128 0x8
	.uaword	0x1e2
	.uaword	0x2613
	.uleb128 0x9
	.uaword	0x46c
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"CanTrcv_Prv_TJA1145_SpiState"
	.byte	0x1
	.byte	0x9d
	.uaword	0x2603
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiState
	.uleb128 0x3f
	.string	"CanTrcv_Prv_InitState_b"
	.byte	0x1
	.byte	0x78
	.uaword	0x269
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Prv_InitState_b
	.uleb128 0x40
	.string	"CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao"
	.byte	0x1
	.uahalf	0x1ce
	.uaword	0x2541
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao
	.uleb128 0x41
	.byte	0x1
	.string	"Qspi_CddInit"
	.byte	0x9
	.byte	0x60
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0x26b8
	.uleb128 0xe
	.uaword	0x1b7
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xa
	.byte	0x70
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0x26eb
	.uleb128 0xe
	.uaword	0x1e2
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x1b7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Qspi_CddTxRx"
	.byte	0x9
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uaword	0x2717
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x48e
	.uleb128 0xe
	.uaword	0x48e
	.uleb128 0xe
	.uaword	0x1b7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"EcuM_EndCheckWakeup"
	.byte	0xb
	.byte	0x25
	.byte	0x1
	.byte	0x1
	.uaword	0x273b
	.uleb128 0xe
	.uaword	0x53e
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"EcuM_SetWakeupEvent"
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.uaword	0x275f
	.uleb128 0xe
	.uaword	0x53e
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"CanIf_TrcvModeIndication"
	.byte	0xc
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0x278d
	.uleb128 0xe
	.uaword	0x1b7
	.uleb128 0xe
	.uaword	0x319
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"Qspi_CddRxDone"
	.byte	0x9
	.byte	0x63
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1b7
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
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
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL19
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x11
	.byte	0x79
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30-1
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48-1
	.uaword	.LVL48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48-1
	.uaword	.LVL48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50-1
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL54
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LVL60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LVL66
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL56
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL61
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LVL66
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76-1
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL80
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1
	.uaword	.LVL75
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76-1
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL78-1
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81-1
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL82
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
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL82
	.uaword	.LVL84-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL84-1
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL82
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LFE40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL82
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x75
	.sleb128 1
	.uaword	.LVL89
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL82
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LFE40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL101
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105-1
	.uaword	.LVL105
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL110
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL105-1
	.uaword	.LVL105
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL110
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LFE41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL112
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL114
	.uaword	.LVL117
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL113
	.uaword	.LVL117
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL112
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117
	.uaword	.LFE42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LFB43
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL121
	.uaword	.LVL124
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125-1
	.uaword	.LVL125
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL126
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL120
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL124
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL126
	.uaword	.LVL127-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL129
	.uaword	.LVL132
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL134
	.uaword	.LFE44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL128
	.uaword	.LVL130-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL130-1
	.uaword	.LVL132
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LFE44
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL132
	.uaword	.LFE44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL137
	.uaword	.LVL143
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL144
	.uaword	.LVL147
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL148
	.uaword	.LFE48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL137
	.uaword	.LVL143
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL144
	.uaword	.LVL147
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL149-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL149-1
	.uaword	.LFE48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL140
	.uaword	.LVL141-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL146
	.uaword	.LVL147-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL137
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL144
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL147
	.uaword	.LVL149-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL149-1
	.uaword	.LFE48
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL137
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL144
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL148
	.uaword	.LFE48
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL138
	.uaword	.LVL143
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+6261
	.sleb128 0
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+6261
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL138
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL139
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL139
	.uaword	.LVL141-1
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL146
	.uaword	.LVL147-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL156
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL151
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL157
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL160
	.uaword	.LFE50
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL161
	.uaword	.LFE50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LFB47
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE47
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL162
	.uaword	.LVL167-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL167-1
	.uaword	.LVL187
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL188
	.uaword	.LFE47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL162
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL190
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL191
	.uaword	.LFE47
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL165
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL169
	.uaword	.LVL185
	.uahalf	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.uaword	.LVL191
	.uaword	.LVL194
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL197
	.uaword	.LFE47
	.uahalf	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL163
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL169
	.uaword	.LVL185
	.uahalf	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.uaword	.LVL187
	.uaword	.LVL191
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL194
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL197
	.uaword	.LFE47
	.uahalf	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LFB46
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE46
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LFB38
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL202
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL207
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL202
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL204
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL207
	.uaword	.LVL209
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL221
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL238
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL221
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL221
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x10
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL226-1
	.uahalf	0x15
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x15
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x15
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x15
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL244
	.uahalf	0x18
	.byte	0x7d
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL223
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL238
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL223
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL211
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL233
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL211
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL238
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL212
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL233
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL212
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL230
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235
	.uaword	.LVL236-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LFB35
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE35
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL246
	.uaword	.LVL250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL251
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL245
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL247
	.uaword	.LVL250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL251
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL245
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL255
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL251
	.uaword	.LVL254
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL272
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL258
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL272
	.uaword	.LVL275
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL275
	.uaword	.LFE35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL258
	.uaword	.LVL269
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL269
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL272
	.uaword	.LFE35
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL259
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL264
	.uaword	.LVL271
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.uaword	.LVL276
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL259
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL273
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL278
	.uaword	.LVL279-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL281
	.uaword	.LVL282
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL282
	.uaword	.LFE52
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL281
	.uaword	.LVL283-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL283-1
	.uaword	.LFE52
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL281
	.uaword	.LVL283-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL283-1
	.uaword	.LFE52
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL284
	.uaword	.LVL286
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286
	.uaword	.LVL288
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL289
	.uaword	.LFE53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL284
	.uaword	.LVL285
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL285
	.uaword	.LFE53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL291
	.uaword	.LVL294
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LFE54
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL291
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL295-1
	.uaword	.LVL295
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LFE54
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL293
	.uaword	.LVL294
	.uahalf	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao+20
	.byte	0x22
	.byte	0x6
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL296
	.uaword	.LVL297
	.uahalf	0x6
	.byte	0x8f
	.sleb128 20
	.byte	0x6
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL297
	.uaword	.LVL298
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL298
	.uaword	.LFE54
	.uahalf	0x6
	.byte	0x8f
	.sleb128 20
	.byte	0x6
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL292
	.uaword	.LVL295-1
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LFE54
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xd4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0
	.uaword	0
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	0
	.uaword	0
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	0
	.uaword	0
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	.LFB52
	.uaword	.LFE52
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LFB54
	.uaword	.LFE54
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF5:
	.string	"RegVal01_o"
.LASF11:
	.string	"TrcvWakeupMode"
.LASF8:
	.string	"size_u16"
.LASF6:
	.string	"StateReadBack"
.LASF13:
	.string	"Trcv_WakeReg_u8"
.LASF7:
	.string	"start_u16"
.LASF3:
	.string	"TrcvNo_u8"
.LASF2:
	.string	"RetVal_o"
.LASF9:
	.string	"sequence"
.LASF10:
	.string	"Trcv_WakePinReg"
.LASF0:
	.string	"OpMode"
.LASF1:
	.string	"Transceiver"
.LASF14:
	.string	"SpiTimeoutCount"
.LASF4:
	.string	"SpiPos_u16"
.LASF12:
	.string	"ChangeFlag_b"
	.extern	Qspi_CddRxDone,STT_FUNC,0
	.extern	EcuM_SetWakeupEvent,STT_FUNC,0
	.extern	CanIf_TrcvModeIndication,STT_FUNC,0
	.extern	EcuM_EndCheckWakeup,STT_FUNC,0
	.extern	CanTrcv_WakeupSource_ao,STT_OBJECT,-1
	.extern	Qspi_CddTxRx,STT_FUNC,0
	.extern	CanTrcv_CfgSpiChannel_ao,STT_OBJECT,-1
	.extern	CanTrcv_SpiArray_ast,STT_OBJECT,-1
	.extern	CanTrcv_Cfg_SpiPos_au8,STT_OBJECT,-1
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanTrcv_TrcvType,STT_OBJECT,-1
	.extern	CanTrcv_FctP_st,STT_OBJECT,-1
	.extern	Qspi_CddInit,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
