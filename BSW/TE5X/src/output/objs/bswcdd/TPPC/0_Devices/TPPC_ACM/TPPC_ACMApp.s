	.file	"TPPC_ACMApp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.TPPC_vidInit,"ax",@progbits
	.align 1
	.type	TPPC_vidInit, @function
TPPC_vidInit:
.LFB27:
	.file 1 "bswcdd\\TPPC\\0_Devices\\TPPC_ACM\\TPPC_ACMApp.c"
	.loc 1 164 0
.LVL0:
	.loc 1 165 0
	mov	%d15, 0
	.loc 1 170 0
	movh.a	%a2, hi:TPPC_xAscMgrVarSet_ACM
	.loc 1 165 0
	movh.a	%a15, hi:TPPC_xMotorMgrVarSet_ACM
	lea	%a12, [%a15] lo:TPPC_xMotorMgrVarSet_ACM
	st.h	[%a15] lo:TPPC_xMotorMgrVarSet_ACM, %d15
	.loc 1 164 0
	mov.aa	%a13, %a4
	.loc 1 170 0
	lea	%a15, [%a2] lo:TPPC_xAscMgrVarSet_ACM
	.loc 1 183 0
	ld.a	%a4, [%a4] 8
.LVL1:
	.loc 1 171 0
	st.b	[%a15] 1, %d15
	.loc 1 172 0
	st.b	[%a15] 2, %d15
	.loc 1 173 0
	st.b	[%a15] 3, %d15
	.loc 1 174 0
	st.b	[%a15] 4, %d15
	.loc 1 175 0
	st.b	[%a15] 5, %d15
	.loc 1 176 0
	st.b	[%a15] 6, %d15
	.loc 1 177 0
	st.b	[%a15] 7, %d15
	.loc 1 178 0
	st.b	[%a15] 8, %d15
	.loc 1 179 0
	st.b	[%a15] 9, %d15
	.loc 1 180 0
	st.b	[%a15] 10, %d15
	.loc 1 181 0
	st.h	[%a15] 12, %d15
	.loc 1 183 0
	ld.a	%a15, [%a4] 8
	.loc 1 170 0
	st.b	[%a2] lo:TPPC_xAscMgrVarSet_ACM, %d15
	.loc 1 166 0
	st.h	[%a12] 2, %d15
	.loc 1 167 0
	st.b	[%a12] 5, %d15
	.loc 1 168 0
	st.b	[%a12] 6, %d15
	.loc 1 183 0
	calli	%a15
.LVL2:
	.loc 1 184 0
	ld.a	%a4, [%a13] 8
	ld.a	%a15, [%a4] 12
	mov	%d4, 1
	.loc 1 186 0
	mov	%d15, 1
	.loc 1 184 0
	calli	%a15
.LVL3:
	.loc 1 186 0
	st.b	[%a12] 4, %d15
	ret
.LFE27:
	.size	TPPC_vidInit, .-TPPC_vidInit
.section .text.TPPC_vidSetClrFaultReq,"ax",@progbits
	.align 1
	.type	TPPC_vidSetClrFaultReq, @function
TPPC_vidSetClrFaultReq:
.LFB28:
	.loc 1 190 0
.LVL4:
	.loc 1 191 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	st.b	[%a15] 7, %d4
	ret
.LFE28:
	.size	TPPC_vidSetClrFaultReq, .-TPPC_vidSetClrFaultReq
.section .text.TPPC_vidSetPwmModReq,"ax",@progbits
	.align 1
	.type	TPPC_vidSetPwmModReq, @function
TPPC_vidSetPwmModReq:
.LFB29:
	.loc 1 204 0
.LVL5:
	.loc 1 205 0
	movh.a	%a15, hi:TPPC_xMotorMgrVarSet_ACM
	st.h	[%a15] lo:TPPC_xMotorMgrVarSet_ACM, %d4
	ret
.LFE29:
	.size	TPPC_vidSetPwmModReq, .-TPPC_vidSetPwmModReq
.section .text.TPPC_vidSetMotorSpdRdyFlg,"ax",@progbits
	.align 1
	.type	TPPC_vidSetMotorSpdRdyFlg, @function
TPPC_vidSetMotorSpdRdyFlg:
.LFB30:
	.loc 1 218 0
.LVL6:
	.loc 1 219 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	st.b	[%a15] 6, %d4
	ret
.LFE30:
	.size	TPPC_vidSetMotorSpdRdyFlg, .-TPPC_vidSetMotorSpdRdyFlg
.section .text.TPPC_u8GetPwmState,"ax",@progbits
	.align 1
	.type	TPPC_u8GetPwmState, @function
TPPC_u8GetPwmState:
.LFB31:
	.loc 1 232 0
	.loc 1 234 0
	movh.a	%a15, hi:TPPC_xMotorMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xMotorMgrVarSet_ACM
	ld.bu	%d2, [%a15] 6
	ret
.LFE31:
	.size	TPPC_u8GetPwmState, .-TPPC_u8GetPwmState
.section .text.TPPC_bGetPwmRuningFlg,"ax",@progbits
	.align 1
	.type	TPPC_bGetPwmRuningFlg, @function
TPPC_bGetPwmRuningFlg:
.LFB32:
	.loc 1 246 0
	.loc 1 248 0
	movh.a	%a15, hi:TPPC_xMotorMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xMotorMgrVarSet_ACM
	ld.bu	%d2, [%a15] 5
	ret
.LFE32:
	.size	TPPC_bGetPwmRuningFlg, .-TPPC_bGetPwmRuningFlg
.section .text.TPPC_bGetAscisClose,"ax",@progbits
	.align 1
	.type	TPPC_bGetAscisClose, @function
TPPC_bGetAscisClose:
.LFB33:
	.loc 1 260 0
	.loc 1 261 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	ld.bu	%d2, [%a15] 9
	.loc 1 262 0
	eq	%d2, %d2, 0
	ret
.LFE33:
	.size	TPPC_bGetAscisClose, .-TPPC_bGetAscisClose
.section .text.TPPC_vidMotorStateMng,"ax",@progbits
	.align 1
	.type	TPPC_vidMotorStateMng, @function
TPPC_vidMotorStateMng:
.LFB34:
	.loc 1 275 0
.LVL7:
.LBB46:
.LBB47:
	.loc 1 455 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	ld.bu	%d15, [%a15] 9
.LBE47:
.LBE46:
	.loc 1 275 0
	sub.a	%SP, 8
.LCFI0:
.LBB65:
.LBB60:
	.loc 1 455 0
	add	%d15, -1
	jge.u	%d15, 5, .L73
	movh.a	%a2, hi:.L11
	lea	%a2, [%a2] lo:.L11
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L11:
	.code32
	j	.L10
	.code32
	j	.L12
	.code32
	j	.L13
	.code32
	j	.L14
	.code32
	j	.L15
.L74:
	.loc 1 482 0
	add	%d15, 1
	st.h	[%a15] 12, %d15
.LVL8:
.L73:
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
.L9:
.LBE60:
.LBE65:
	.loc 1 280 0
	ld.hu	%d15, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	jge.u	%d15, 8, .L8
	movh.a	%a2, hi:.L30
	lea	%a2, [%a2] lo:.L30
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L30:
	.code32
	j	.L26
	.code32
	j	.L31
	.code32
	j	.L8
	.code32
	j	.L8
	.code32
	j	.L8
	.code32
	j	.L29
	.code32
	j	.L29
	.code32
	j	.L29
.L31:
	.loc 1 311 0
	ld.bu	%d15, [%a15] 9
	jnz	%d15, .L8
.L28:
.LVL9:
.LBB66:
.LBB67:
	st.a	[%SP] 4, %a4
	call	MAIN_u8GetACMASCStep
.LVL10:
	ld.a	%a4, [%SP] 4
	jeq	%d2, 1, .L76
.LVL11:
.L8:
	ret
.LVL12:
.L13:
.LBE67:
.LBE66:
.LBB71:
.LBB61:
	.loc 1 507 0
	ld.hu	%d15, [%a15] 12
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L74
	.loc 1 513 0
	mov	%d15, 0
	st.h	[%a15] 12, %d15
	.loc 1 514 0
	mov	%d15, 4
	st.b	[%a15] 9, %d15
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
.LVL13:
.L17:
.LBE61:
.LBE71:
	.loc 1 280 0
	ld.hu	%d15, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	jz	%d15, .L26
	add	%d15, -5
	jge.u	%d15, 3, .L8
.L29:
	.loc 1 299 0
	ld.a	%a15, [%a4] 20
	mov	%d4, 0
	.loc 1 304 0
	lea	%a12, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	.loc 1 299 0
	calli	%a15
.LVL14:
	.loc 1 304 0
	mov	%d15, 0
.LBB72:
.LBB73:
	.file 2 "bswcdd\\TPPC\\0_Devices\\TPPC_ACM\\TPPC_ACMHal.h"
	.loc 2 121 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM
.LVL15:
.LBE73:
.LBE72:
	.loc 1 304 0
	st.b	[%a12] 5, %d15
	.loc 1 305 0
	mov	%d15, 2
	st.b	[%a12] 6, %d15
	.loc 1 307 0
	ret
.LVL16:
.L26:
	.loc 1 285 0
	ld.a	%a15, [%a4] 20
	mov	%d4, 0
	.loc 1 290 0
	lea	%a12, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	.loc 1 285 0
	calli	%a15
.LVL17:
	.loc 1 290 0
	mov	%d15, 0
.LBB74:
.LBB75:
	.loc 2 121 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM
.LVL18:
.LBE75:
.LBE74:
	.loc 1 290 0
	st.b	[%a12] 5, %d15
	.loc 1 291 0
	st.b	[%a12] 6, %d15
	.loc 1 293 0
	ret
.LVL19:
.L14:
.LBB76:
.LBB62:
	.loc 1 521 0
	movh.a	%a2, hi:TPPC_ku8AscRecoverCntMaxC
	ld.bu	%d2, [%a15] 10
	ld.bu	%d15, [%a2] lo:TPPC_ku8AscRecoverCntMaxC
	jlt.u	%d2, %d15, .L77
	.loc 1 545 0
	mov	%d15, 6
	st.b	[%a15] 9, %d15
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
	j	.L17
.L10:
	.loc 1 480 0
	ld.hu	%d15, [%a15] 12
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L74
	.loc 1 486 0
	ld.bu	%d15, [%a15] 6
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
	jnz	%d15, .L17
	.loc 1 488 0
	st.h	[%a15] 12, %d15
	.loc 1 489 0
	mov	%d15, 2
	st.b	[%a15] 9, %d15
	j	.L17
.L12:
	.loc 1 500 0
	mov	%d15, 0
	st.h	[%a15] 12, %d15
	.loc 1 501 0
	mov	%d15, 3
	st.b	[%a15] 9, %d15
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
	j	.L17
.L15:
	.loc 1 553 0
	mov	%d15, 0
.LBE62:
.LBE76:
	.loc 1 280 0
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
.LBB77:
.LBB63:
	.loc 1 553 0
	st.h	[%a15] 12, %d15
	.loc 1 554 0
	st.b	[%a15] 9, %d15
.LBE63:
.LBE77:
	.loc 1 280 0
	ld.hu	%d15, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	jge.u	%d15, 8, .L8
	movh.a	%a15, hi:.L27
	lea	%a15, [%a15] lo:.L27
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L27:
	.code32
	j	.L26
	.code32
	j	.L28
	.code32
	j	.L8
	.code32
	j	.L8
	.code32
	j	.L8
	.code32
	j	.L29
	.code32
	j	.L29
	.code32
	j	.L29
.L77:
.LVL20:
.LBB78:
.LBB64:
.LBB48:
.LBB49:
.LBB50:
.LBB51:
	.loc 2 114 0
	mov	%d4, 2
	st.a	[%SP] 4, %a4
	call	DSM_u8GetUnitFaultLevel
.LVL21:
.LBE51:
.LBE50:
	.loc 1 670 0
	ld.a	%a4, [%SP] 4
	jge.u	%d2, 5, .L73
.LVL22:
.LBB52:
.LBB53:
	.loc 2 68 0
	st.a	[%SP] 4, %a4
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL23:
	.loc 2 70 0
	ld.a	%a4, [%SP] 4
	jz	%d2, .L73
	.loc 2 76 0
	st.a	[%SP] 4, %a4
	call	MAIN_bGetAcuIgbtHSFaultFlag
.LVL24:
.LBE53:
.LBE52:
	.loc 1 679 0
	ld.a	%a4, [%SP] 4
	jeq	%d2, 1, .L73
.LVL25:
.LBB54:
.LBB55:
	.loc 2 51 0
	st.a	[%SP] 4, %a4
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL26:
	.loc 2 53 0
	ld.a	%a4, [%SP] 4
	jz	%d2, .L73
	.loc 2 59 0
	st.a	[%SP] 4, %a4
	call	MAIN_bGetAcuIgbtLSFaultFlag
.LVL27:
.LBE55:
.LBE54:
	.loc 1 689 0
	ld.a	%a4, [%SP] 4
	jeq	%d2, 1, .L73
.LVL28:
.LBB56:
.LBB57:
	.loc 2 85 0
	st.a	[%SP] 4, %a4
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL29:
	.loc 2 87 0
	ld.a	%a4, [%SP] 4
	jz	%d2, .L73
	.loc 2 94 0
	st.a	[%SP] 4, %a4
	call	MAIN_bGetAcuIgbtLSFaultFlag
.LVL30:
	.loc 2 97 0
	ld.a	%a4, [%SP] 4
	jnz	%d2, .L40
	.loc 2 99 0
	st.a	[%SP] 4, %a4
	call	MAIN_bGetAcuIgbtHSFaultFlag
.LVL31:
	ld.a	%a4, [%SP] 4
.LVL32:
.L40:
	movh.a	%a12, hi:TPPC_xMotorMgrVarSet_ACM
.LBE57:
.LBE56:
	.loc 1 699 0
	jeq	%d2, 1, .L9
.LVL33:
	.loc 1 708 0
	lea	%a2, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	ld.bu	%d15, [%a2] 6
	jnz	%d15, .L9
	.loc 1 717 0
	ld.bu	%d2, [%a15] 7
.LVL34:
	jz	%d2, .L9
.LVL35:
.LBE49:
.LBE48:
	.loc 1 527 0
	ld.bu	%d2, [%a15] 10
	.loc 1 529 0
	movh.a	%a2, hi:TPPC_xAscMgrVarSet_ACM
	.loc 1 527 0
	add	%d2, 1
	st.b	[%a15] 10, %d2
	.loc 1 530 0
	st.b	[%a15] 2, %d15
	.loc 1 531 0
	st.b	[%a15] 3, %d15
	.loc 1 529 0
	st.b	[%a2] lo:TPPC_xAscMgrVarSet_ACM, %d15
.LBB58:
.LBB59:
	.loc 2 130 0
	st.a	[%SP] 4, %a4
	call	MAIN_vidClrAcuFaultFlag
.LVL36:
	.loc 2 133 0
	mov	%d4, 2
	call	FaultClear
.LVL37:
.LBE59:
.LBE58:
	.loc 1 540 0
	mov	%d15, 5
	st.b	[%a15] 9, %d15
	ld.a	%a4, [%SP] 4
	j	.L17
.LVL38:
.L76:
.LBE64:
.LBE78:
.LBB79:
.LBB70:
	.loc 1 314 0
	ld.a	%a15, [%a4] 20
	mov	%d4, 1
	st.w	[%SP] 4, %d2
	calli	%a15
.LVL39:
.LBB68:
.LBB69:
	.loc 2 121 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM
.LVL40:
.LBE69:
.LBE68:
	.loc 1 320 0
	ld.w	%d2, [%SP] 4
	lea	%a12, [%a12] lo:TPPC_xMotorMgrVarSet_ACM
	st.b	[%a12] 5, %d2
	.loc 1 321 0
	st.b	[%a12] 6, %d2
	ret
.LBE70:
.LBE79:
.LFE34:
	.size	TPPC_vidMotorStateMng, .-TPPC_vidMotorStateMng
.section .text.TPPC_bGetHwFaultIgbtL,"ax",@progbits
	.align 1
	.type	TPPC_bGetHwFaultIgbtL, @function
TPPC_bGetHwFaultIgbtL:
.LFB37:
	.loc 1 402 0
.LVL41:
.LBB82:
.LBB83:
	.loc 2 51 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL42:
	.loc 2 53 0
	jnz	%d2, .L79
.LVL43:
.L81:
.LBE83:
.LBE82:
	.loc 1 411 0
	mov	%d2, 1
	ret
.LVL44:
.L79:
.LBB85:
.LBB84:
	.loc 2 59 0
	call	MAIN_bGetAcuIgbtLSFaultFlag
.LVL45:
.LBE84:
.LBE85:
	.loc 1 408 0
	jeq	%d2, 1, .L81
	.loc 1 409 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	ld.bu	%d2, [%a15] 3
.LVL46:
	.loc 1 411 0
	eq	%d2, %d2, 1
.LVL47:
	ret
.LFE37:
	.size	TPPC_bGetHwFaultIgbtL, .-TPPC_bGetHwFaultIgbtL
.section .text.TPPC_bGetHwFaultIgbtH,"ax",@progbits
	.align 1
	.type	TPPC_bGetHwFaultIgbtH, @function
TPPC_bGetHwFaultIgbtH:
.LFB36:
	.loc 1 373 0
.LVL48:
.LBB88:
.LBB89:
	.loc 2 68 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL49:
	.loc 2 70 0
	jnz	%d2, .L89
.LVL50:
.L91:
.LBE89:
.LBE88:
	.loc 1 382 0
	mov	%d2, 1
	ret
.LVL51:
.L89:
.LBB91:
.LBB90:
	.loc 2 76 0
	call	MAIN_bGetAcuIgbtHSFaultFlag
.LVL52:
.LBE90:
.LBE91:
	.loc 1 379 0
	jeq	%d2, 1, .L91
	.loc 1 380 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	ld.bu	%d2, [%a15] 2
.LVL53:
	.loc 1 382 0
	eq	%d2, %d2, 1
.LVL54:
	ret
.LFE36:
	.size	TPPC_bGetHwFaultIgbtH, .-TPPC_bGetHwFaultIgbtH
.section .text.TPPC_bGetHwFaultIgbt,"ax",@progbits
	.align 1
	.type	TPPC_bGetHwFaultIgbt, @function
TPPC_bGetHwFaultIgbt:
.LFB35:
	.loc 1 344 0
.LVL55:
.LBB94:
.LBB95:
	.loc 2 85 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL56:
	.loc 2 87 0
	jnz	%d2, .L99
.LVL57:
.L101:
.LBE95:
.LBE94:
	.loc 1 353 0
	mov	%d2, 1
	ret
.LVL58:
.L99:
.LBB97:
.LBB96:
	.loc 2 94 0
	call	MAIN_bGetAcuIgbtLSFaultFlag
.LVL59:
	.loc 2 97 0
	jnz	%d2, .L103
	.loc 2 99 0
	call	MAIN_bGetAcuIgbtHSFaultFlag
.LVL60:
.L103:
.LBE96:
.LBE97:
	.loc 1 350 0
	jeq	%d2, 1, .L101
	.loc 1 351 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	ld.bu	%d2, [%a15] 1
.LVL61:
	.loc 1 353 0
	eq	%d2, %d2, 1
.LVL62:
	ret
.LFE35:
	.size	TPPC_bGetHwFaultIgbt, .-TPPC_bGetHwFaultIgbt
.section .text.TPPC_vidAscEntry,"ax",@progbits
	.align 1
	.type	TPPC_vidAscEntry, @function
TPPC_vidAscEntry:
.LFB40:
	.loc 1 581 0
.LVL63:
	.loc 1 584 0
	movh.a	%a15, hi:TPPC_xMotorMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xMotorMgrVarSet_ACM
	ld.bu	%d15, [%a15] 4
	jz	%d15, .L108
	.loc 1 590 0
	mov	%d15, 0
	st.b	[%a15] 5, %d15
	.loc 1 592 0
	movh.a	%a15, hi:TPPC_xAscMgrVarSet_ACM
	lea	%a15, [%a15] lo:TPPC_xAscMgrVarSet_ACM
	ld.bu	%d15, [%a15] 9
	jz	%d15, .L131
.L108:
	ret
.L131:
.LVL64:
.LBB106:
.LBB107:
	.loc 1 595 0
	ld.a	%a4, [%a4] 8
.LVL65:
	ld.a	%a2, [%a4] 36
	.loc 1 594 0
	mov	%d15, 1
	st.b	[%a15] 9, %d15
	.loc 1 595 0
	calli	%a2
.LVL66:
.LBB108:
.LBB109:
	.loc 2 85 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL67:
	.loc 2 87 0
	jnz	%d2, .L112
.LVL68:
.L114:
.LBE109:
.LBE108:
	.loc 1 601 0
	mov	%d15, 1
	st.b	[%a15] 1, %d15
.LVL69:
.L113:
.LBB111:
.LBB112:
	.loc 2 68 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL70:
	.loc 2 70 0
	jnz	%d2, .L115
.LVL71:
.L119:
.LBE112:
.LBE111:
	.loc 1 607 0
	mov	%d15, 1
	st.b	[%a15] 2, %d15
.L120:
.LVL72:
.LBB114:
.LBB115:
	.loc 2 51 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL73:
	.loc 2 53 0
	jnz	%d2, .L116
.LVL74:
.L121:
.LBE115:
.LBE114:
	.loc 1 613 0
	mov	%d15, 1
	st.b	[%a15] 3, %d15
	ret
.LVL75:
.L112:
.LBB117:
.LBB110:
	.loc 2 94 0
	call	MAIN_bGetAcuIgbtLSFaultFlag
.LVL76:
	.loc 2 97 0
	jnz	%d2, .L118
	.loc 2 99 0
	call	MAIN_bGetAcuIgbtHSFaultFlag
.LVL77:
.L118:
.LBE110:
.LBE117:
	.loc 1 599 0
	jne	%d2, 1, .L113
	j	.L114
.LVL78:
.L116:
.LBB118:
.LBB116:
	.loc 2 59 0
	call	MAIN_bGetAcuIgbtLSFaultFlag
.LVL79:
.LBE116:
.LBE118:
	.loc 1 611 0
	jeq	%d2, 1, .L121
	ret
.LVL80:
.L115:
.LBB119:
.LBB113:
	.loc 2 76 0
	call	MAIN_bGetAcuIgbtHSFaultFlag
.LVL81:
.LBE113:
.LBE119:
	.loc 1 605 0
	jne	%d2, 1, .L120
	j	.L119
.LBE107:
.LBE106:
.LFE40:
	.size	TPPC_vidAscEntry, .-TPPC_vidAscEntry
	.global	TPPC_xACMAswFunc
.section .rodata.a4.TPPC_xACMAswFunc,"a",@progbits
	.align 2
	.type	TPPC_xACMAswFunc, @object
	.size	TPPC_xACMAswFunc, 48
TPPC_xACMAswFunc:
	.word	TPPC_vidInit
	.word	TPPC_vidAscEntry
	.word	TPPC_vidMotorStateMng
	.word	TPPC_vidSetPwmModReq
	.word	TPPC_vidSetClrFaultReq
	.word	TPPC_vidSetMotorSpdRdyFlg
	.word	TPPC_u8GetPwmState
	.word	TPPC_bGetPwmRuningFlg
	.word	TPPC_bGetHwFaultIgbt
	.word	TPPC_bGetHwFaultIgbtL
	.word	TPPC_bGetHwFaultIgbtH
	.word	TPPC_bGetAscisClose
.section .bss.a2.TPPC_xAscMgrVarSet_ACM,"aw",@nobits
	.align 1
	.type	TPPC_xAscMgrVarSet_ACM, @object
	.size	TPPC_xAscMgrVarSet_ACM, 14
TPPC_xAscMgrVarSet_ACM:
	.zero	14
.section .bss.a2.TPPC_xMotorMgrVarSet_ACM,"aw",@nobits
	.align 1
	.type	TPPC_xMotorMgrVarSet_ACM, @object
	.size	TPPC_xMotorMgrVarSet_ACM, 8
TPPC_xMotorMgrVarSet_ACM:
	.zero	8
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
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.byte	0x4
	.uaword	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\AOCUErrProtect\\MAIN_ACMErrProtect.h"
	.file 7 "bswcdd\\TPPC\\0_Devices\\TPPC_ACM\\TPPC_ACMCalib.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 9 ".\\output\\inc/..\\..\\main\\AcuMain\\MAIN_AcuTsk.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x16ee
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\TPPC\\0_Devices\\TPPC_ACM\\TPPC_ACMApp.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xe0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1d7
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x203
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x26a
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1d7
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
	.byte	0x5
	.byte	0x24
	.uaword	0x334
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_START_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_ACM_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_EPS_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_END_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eTPPC_DEV_MAX_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x10
	.uaword	0x33f
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0xc
	.byte	0x4
	.byte	0x17
	.uaword	0x385
	.uleb128 0x8
	.string	"f32Duty1"
	.byte	0x4
	.byte	0x18
	.uaword	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"f32Duty2"
	.byte	0x4
	.byte	0x19
	.uaword	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"f32Duty3"
	.byte	0x4
	.byte	0x1a
	.uaword	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x11
	.uaword	0x390
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x24
	.byte	0x4
	.byte	0x3f
	.uaword	0x45a
	.uleb128 0x8
	.string	"u8DeviceID"
	.byte	0x4
	.byte	0x40
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pktAppFunc"
	.byte	0x4
	.byte	0x42
	.uaword	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pktTimerDrv"
	.byte	0x4
	.byte	0x43
	.uaword	0x724
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidDebug"
	.byte	0x4
	.byte	0x45
	.uaword	0x832
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidModuleInit"
	.byte	0x4
	.byte	0x46
	.uaword	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidStartPwmOutput"
	.byte	0x4
	.byte	0x47
	.uaword	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x4
	.byte	0x48
	.uaword	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidSetPwmBcDuty"
	.byte	0x4
	.byte	0x49
	.uaword	0x86a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.byte	0x4a
	.uaword	0x881
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x4
	.byte	0x12
	.uaword	0x465
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x30
	.byte	0x4
	.byte	0x30
	.uaword	0x5a4
	.uleb128 0x8
	.string	"vidInit"
	.byte	0x4
	.byte	0x31
	.uaword	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"vidAscEntry"
	.byte	0x4
	.byte	0x32
	.uaword	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidMotorStateMng"
	.byte	0x4
	.byte	0x33
	.uaword	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidSetPwmModReq"
	.byte	0x4
	.byte	0x34
	.uaword	0x7f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidSetClrFaultReq"
	.byte	0x4
	.byte	0x35
	.uaword	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidSetMotorSpdRdyFlg"
	.byte	0x4
	.byte	0x36
	.uaword	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"u8GetPwmState"
	.byte	0x4
	.byte	0x37
	.uaword	0x813
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"bGetPwmRunFlag"
	.byte	0x4
	.byte	0x38
	.uaword	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"bGetHwFaultIgbt"
	.byte	0x4
	.byte	0x39
	.uaword	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"bGetHwFaultIgbtL"
	.byte	0x4
	.byte	0x3a
	.uaword	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"bGetHwFaultIgbtH"
	.byte	0x4
	.byte	0x3b
	.uaword	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"bGetAscisClose"
	.byte	0x4
	.byte	0x3c
	.uaword	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x4
	.byte	0x15
	.uaword	0x5af
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x38
	.byte	0x4
	.byte	0x1d
	.uaword	0x70a
	.uleb128 0x8
	.string	"pvCommDrv"
	.byte	0x4
	.byte	0x1e
	.uaword	0x70a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pkvCfgHandle"
	.byte	0x4
	.byte	0x1f
	.uaword	0x70c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidIntHwInit"
	.byte	0x4
	.byte	0x21
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidIntTrigEnable"
	.byte	0x4
	.byte	0x22
	.uaword	0x746
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x4
	.byte	0x23
	.uaword	0x746
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidTrigLowAsc"
	.byte	0x4
	.byte	0x25
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"vidTrigHighAsc"
	.byte	0x4
	.byte	0x26
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidPwmEnable"
	.byte	0x4
	.byte	0x27
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"vidPwmDisable"
	.byte	0x4
	.byte	0x28
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"vidPwmDisableImmediately"
	.byte	0x4
	.byte	0x29
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"vidSetPwmOutState"
	.byte	0x4
	.byte	0x2a
	.uaword	0x762
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"vidSetPwmDuty"
	.byte	0x4
	.byte	0x2b
	.uaword	0x789
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.byte	0x2c
	.uaword	0x7a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"vidSetSingleChPhase"
	.byte	0x4
	.byte	0x2d
	.uaword	0x7bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0xb
	.byte	0x4
	.uaword	0x712
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x1
	.uaword	0x71f
	.uleb128 0xe
	.uaword	0x71f
	.byte	0
	.uleb128 0xf
	.uaword	0x724
	.uleb128 0xb
	.byte	0x4
	.uaword	0x72a
	.uleb128 0xf
	.uaword	0x5a4
	.uleb128 0xb
	.byte	0x4
	.uaword	0x713
	.uleb128 0xd
	.byte	0x1
	.uaword	0x746
	.uleb128 0xe
	.uaword	0x71f
	.uleb128 0xe
	.uaword	0x27d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x735
	.uleb128 0xd
	.byte	0x1
	.uaword	0x762
	.uleb128 0xe
	.uaword	0x71f
	.uleb128 0xe
	.uaword	0x1ca
	.uleb128 0xe
	.uaword	0x1ca
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x74c
	.uleb128 0xd
	.byte	0x1
	.uaword	0x779
	.uleb128 0xe
	.uaword	0x71f
	.uleb128 0xe
	.uaword	0x779
	.byte	0
	.uleb128 0xf
	.uaword	0x77e
	.uleb128 0xb
	.byte	0x4
	.uaword	0x784
	.uleb128 0xf
	.uaword	0x334
	.uleb128 0xb
	.byte	0x4
	.uaword	0x768
	.uleb128 0xd
	.byte	0x1
	.uaword	0x7a0
	.uleb128 0xe
	.uaword	0x71f
	.uleb128 0xe
	.uaword	0x25b
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x78f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x7bc
	.uleb128 0xe
	.uaword	0x71f
	.uleb128 0xe
	.uaword	0x25b
	.uleb128 0xe
	.uaword	0x1ca
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x7a6
	.uleb128 0xd
	.byte	0x1
	.uaword	0x7ce
	.uleb128 0xe
	.uaword	0x7ce
	.byte	0
	.uleb128 0xf
	.uaword	0x7d3
	.uleb128 0xb
	.byte	0x4
	.uaword	0x7d9
	.uleb128 0xf
	.uaword	0x385
	.uleb128 0xb
	.byte	0x4
	.uaword	0x7c2
	.uleb128 0xd
	.byte	0x1
	.uaword	0x7f0
	.uleb128 0xe
	.uaword	0x7f0
	.byte	0
	.uleb128 0xf
	.uaword	0x1f5
	.uleb128 0xb
	.byte	0x4
	.uaword	0x7e4
	.uleb128 0xd
	.byte	0x1
	.uaword	0x807
	.uleb128 0xe
	.uaword	0x27d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x7fb
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1ca
	.uleb128 0xb
	.byte	0x4
	.uaword	0x80d
	.uleb128 0x10
	.byte	0x1
	.uaword	0x27d
	.uleb128 0xb
	.byte	0x4
	.uaword	0x819
	.uleb128 0xb
	.byte	0x4
	.uaword	0x82b
	.uleb128 0xf
	.uaword	0x45a
	.uleb128 0x11
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.uaword	0x830
	.uleb128 0xd
	.byte	0x1
	.uaword	0x849
	.uleb128 0xe
	.uaword	0x7ce
	.uleb128 0xe
	.uaword	0x27d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x838
	.uleb128 0xd
	.byte	0x1
	.uaword	0x86a
	.uleb128 0xe
	.uaword	0x7ce
	.uleb128 0xe
	.uaword	0x25b
	.uleb128 0xe
	.uaword	0x25b
	.uleb128 0xe
	.uaword	0x25b
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x84f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x881
	.uleb128 0xe
	.uaword	0x7ce
	.uleb128 0xe
	.uaword	0x25b
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x870
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x12
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0xa
	.byte	0x2b
	.uaword	0x907
	.uleb128 0x5
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x5
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x5
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x5
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x5
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x5
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.uaword	0x983
	.uleb128 0x5
	.string	"ACM_ASC_TYPE_STARTUP_CHECK"
	.sleb128 0
	.uleb128 0x5
	.string	"ACM_ASC_TYPE_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"ACM_ASC_TYPE_FAULT"
	.sleb128 2
	.uleb128 0x5
	.string	"ACM_ASC_TYPE_RECOVER"
	.sleb128 3
	.uleb128 0x5
	.string	"ACM_ASC_TYPE_LOCK"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.uaword	0xa0f
	.uleb128 0x5
	.string	"TPPC_ASC_CLOSE"
	.sleb128 0
	.uleb128 0x5
	.string	"TPPC_ASC_ONGOING"
	.sleb128 1
	.uleb128 0x5
	.string	"TPPC_ASC_EXIT"
	.sleb128 2
	.uleb128 0x5
	.string	"TPPC_ASC_EXIT_DELAY"
	.sleb128 3
	.uleb128 0x5
	.string	"TPPC_ASC_FINSH"
	.sleb128 4
	.uleb128 0x5
	.string	"TPPC_ASC_RECOVER"
	.sleb128 5
	.uleb128 0x5
	.string	"TPPC_ASC_OVER_TIME"
	.sleb128 6
	.byte	0
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x8
	.byte	0x1
	.byte	0x27
	.uaword	0xaa7
	.uleb128 0x8
	.string	"TPPC_u16PwmModReq"
	.byte	0x1
	.byte	0x28
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TPPC_u16PowerOnDelay"
	.byte	0x1
	.byte	0x29
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"TPPC_bIsStart"
	.byte	0x1
	.byte	0x2a
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"TPPC_bPwmOnGoingFlg"
	.byte	0x1
	.byte	0x2b
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"TPPC_u8PwmState"
	.byte	0x1
	.byte	0x2c
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x1
	.byte	0x2d
	.uaword	0xa0f
	.uleb128 0x7
	.uaword	.LASF7
	.byte	0xe
	.byte	0x1
	.byte	0x30
	.uaword	0xc17
	.uleb128 0x8
	.string	"TPPC_bHwFaultDcOvVolt"
	.byte	0x1
	.byte	0x31
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TPPC_bHwFaultIgbt"
	.byte	0x1
	.byte	0x32
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"TPPC_bHwFaultIgbtH"
	.byte	0x1
	.byte	0x33
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"TPPC_bHwFaultIgbtL"
	.byte	0x1
	.byte	0x34
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"TPPC_bP5VHSFltFlg"
	.byte	0x1
	.byte	0x35
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"TPPC_bP5VLSFltFlg"
	.byte	0x1
	.byte	0x36
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"TPPC_bMotorSpdRdy"
	.byte	0x1
	.byte	0x37
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"TPPC_bClrFaultReq"
	.byte	0x1
	.byte	0x38
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.string	"TPPC_u8AscType"
	.byte	0x1
	.byte	0x39
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"TPPC_u8AscStep"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"TPPC_u8AscRecoverCnt"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"TPPC_u16McuAscSttDelay"
	.byte	0x1
	.byte	0x3c
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x1
	.byte	0x3d
	.uaword	0xab2
	.uleb128 0x13
	.string	"TPPC_vidAscEntry"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.byte	0x1
	.uaword	0xc56
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x244
	.uaword	0x7ce
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x246
	.uaword	0x27d
	.byte	0
	.uleb128 0x16
	.string	"TPPC_u8GetFaultLevel"
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.uaword	0x1ca
	.byte	0x3
	.uaword	0xc8d
	.uleb128 0x17
	.string	"u8FaultLevel"
	.byte	0x2
	.byte	0x72
	.uaword	0x1ca
	.byte	0
	.uleb128 0x18
	.string	"TPPC_vidClearFaultInfo"
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"TPPC_vidAscStateMng"
	.byte	0x1
	.uahalf	0x1c2
	.byte	0x1
	.byte	0x1
	.uaword	0xce0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x7ce
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x27d
	.byte	0
	.uleb128 0x19
	.string	"TPPC_vidEnaPwmDrv"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uaword	0xd0a
	.uleb128 0x1a
	.string	"bState"
	.byte	0x2
	.byte	0x77
	.uaword	0x27d
	.byte	0
	.uleb128 0x13
	.string	"TPPC_vidMotorStateMng"
	.byte	0x1
	.uahalf	0x112
	.byte	0x1
	.byte	0x1
	.uaword	0xd49
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x112
	.uaword	0x7ce
	.uleb128 0x1b
	.string	"bLocPwmOn"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x27d
	.byte	0
	.uleb128 0x1c
	.string	"TPPC_vidInit"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd90
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.byte	0xa3
	.uaword	0x7ce
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LVL2
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1f
	.uaword	.LVL3
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"TPPC_vidSetClrFaultReq"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdd2
	.uleb128 0x21
	.string	"bClrFaultReq"
	.byte	0x1
	.byte	0xbd
	.uaword	0x27d
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.string	"TPPC_vidSetPwmModReq"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe0f
	.uleb128 0x21
	.string	"u16PwmMod"
	.byte	0x1
	.byte	0xcb
	.uaword	0x7f0
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.string	"TPPC_vidSetMotorSpdRdyFlg"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe54
	.uleb128 0x21
	.string	"bMotorSpdRdy"
	.byte	0x1
	.byte	0xd9
	.uaword	0x27d
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.string	"TPPC_u8GetPwmState"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x22
	.string	"TPPC_bGetPwmRuningFlg"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	0x27d
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x23
	.string	"TPPC_bGetAscisClose"
	.byte	0x1
	.uahalf	0x103
	.byte	0x1
	.uaword	0x27d
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x24
	.string	"TPPC_bGetAscRecoverCondition"
	.byte	0x1
	.uahalf	0x297
	.byte	0x1
	.uaword	0x27d
	.byte	0x1
	.uaword	0xf2a
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x299
	.uaword	0x27d
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x29a
	.uaword	0x27d
	.uleb128 0x1b
	.string	"u8LocFaultLevel"
	.byte	0x1
	.uahalf	0x29b
	.uaword	0x1ca
	.byte	0
	.uleb128 0x16
	.string	"TPPC_bHighSideIGBTIsFaulty"
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0xf69
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x2
	.byte	0x43
	.uaword	0x27d
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x2
	.byte	0x44
	.uaword	0x1f5
	.byte	0
	.uleb128 0x16
	.string	"TPPC_bLowSideIGBTIsFaulty"
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0xfa7
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x2
	.byte	0x32
	.uaword	0x27d
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x2
	.byte	0x33
	.uaword	0x1f5
	.byte	0
	.uleb128 0x16
	.string	"TPPC_bIGBTIsFaulty"
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0xfde
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x2
	.byte	0x54
	.uaword	0x27d
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x2
	.byte	0x55
	.uaword	0x1f5
	.byte	0
	.uleb128 0x26
	.uaword	0xd0a
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LLST1
	.byte	0x1
	.uaword	0x1273
	.uleb128 0x27
	.uaword	0xd2a
	.uaword	.LLST2
	.uleb128 0x28
	.uaword	0xd36
	.byte	0
	.uleb128 0x29
	.uaword	0xca9
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x116
	.uaword	0x1198
	.uleb128 0x27
	.uaword	0xcc7
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2b
	.uaword	0xcd3
	.uaword	.LLST4
	.uleb128 0x2c
	.uaword	0xece
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x116d
	.uleb128 0x2d
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x2b
	.uaword	0xef9
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0xf05
	.uaword	.LLST6
	.uleb128 0x2b
	.uaword	0xf11
	.uaword	.LLST7
	.uleb128 0x2c
	.uaword	0xc56
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x109d
	.uleb128 0x2d
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x2b
	.uaword	0xc78
	.uaword	.LLST8
	.uleb128 0x2e
	.uaword	.LVL21
	.uaword	0x15b6
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xf2a
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x10e0
	.uleb128 0x2d
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x2b
	.uaword	0xf52
	.uaword	.LLST9
	.uleb128 0x2b
	.uaword	0xf5d
	.uaword	.LLST10
	.uleb128 0x2f
	.uaword	.LVL23
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL24
	.uaword	0x1615
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xf69
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x2b0
	.uaword	0x1123
	.uleb128 0x2d
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x2b
	.uaword	0xf90
	.uaword	.LLST11
	.uleb128 0x2b
	.uaword	0xf9b
	.uaword	.LLST12
	.uleb128 0x2f
	.uaword	.LVL26
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL27
	.uaword	0x163b
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xfa7
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x2ba
	.uleb128 0x2d
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x2b
	.uaword	0xfc7
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	0xfd2
	.uaword	.LLST14
	.uleb128 0x2f
	.uaword	.LVL29
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL30
	.uaword	0x163b
	.uleb128 0x2f
	.uaword	.LVL31
	.uaword	0x1615
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xc8d
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x21a
	.uleb128 0x2f
	.uaword	.LVL36
	.uaword	0x1661
	.uleb128 0x2e
	.uaword	.LVL37
	.uaword	0x167f
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0x11f8
	.uleb128 0x27
	.uaword	0xd2a
	.uaword	.LLST15
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x28
	.uaword	0xd36
	.byte	0x1
	.uleb128 0x2c
	.uaword	0xce0
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x11df
	.uleb128 0x32
	.uaword	0xcfb
	.byte	0x1
	.uleb128 0x2e
	.uaword	.LVL40
	.uaword	0x169a
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL10
	.uaword	0x16d2
	.uleb128 0x1f
	.uaword	.LVL39
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xce0
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x1225
	.uleb128 0x27
	.uaword	0xcfb
	.uaword	.LLST16
	.uleb128 0x2e
	.uaword	.LVL15
	.uaword	0x169a
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xce0
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x1252
	.uleb128 0x27
	.uaword	0xcfb
	.uaword	.LLST17
	.uleb128 0x2e
	.uaword	.LVL18
	.uaword	0x169a
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL14
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1264
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL17
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x34
	.string	"TPPC_bGetHwFaultIgbtL"
	.byte	0x1
	.uahalf	0x191
	.byte	0x1
	.uaword	0x27d
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12fe
	.uleb128 0x35
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x193
	.uaword	0x27d
	.uaword	.LLST18
	.uleb128 0x35
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x194
	.uaword	0x27d
	.uaword	.LLST19
	.uleb128 0x36
	.uaword	0xf69
	.uaword	.LBB82
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x196
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x2b
	.uaword	0xf90
	.uaword	.LLST20
	.uleb128 0x2b
	.uaword	0xf9b
	.uaword	.LLST21
	.uleb128 0x2f
	.uaword	.LVL42
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL45
	.uaword	0x163b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.string	"TPPC_bGetHwFaultIgbtH"
	.byte	0x1
	.uahalf	0x174
	.byte	0x1
	.uaword	0x27d
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1389
	.uleb128 0x35
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x176
	.uaword	0x27d
	.uaword	.LLST22
	.uleb128 0x35
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x177
	.uaword	0x27d
	.uaword	.LLST23
	.uleb128 0x36
	.uaword	0xf2a
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x179
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x2b
	.uaword	0xf52
	.uaword	.LLST24
	.uleb128 0x2b
	.uaword	0xf5d
	.uaword	.LLST25
	.uleb128 0x2f
	.uaword	.LVL49
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL52
	.uaword	0x1615
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.string	"TPPC_bGetHwFaultIgbt"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	0x27d
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x141c
	.uleb128 0x35
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x159
	.uaword	0x27d
	.uaword	.LLST26
	.uleb128 0x35
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x27d
	.uaword	.LLST27
	.uleb128 0x36
	.uaword	0xfa7
	.uaword	.LBB94
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x15c
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x2b
	.uaword	0xfc7
	.uaword	.LLST28
	.uleb128 0x2b
	.uaword	0xfd2
	.uaword	.LLST29
	.uleb128 0x2f
	.uaword	.LVL56
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL59
	.uaword	0x163b
	.uleb128 0x2f
	.uaword	.LVL60
	.uaword	0x1615
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0xc22
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1525
	.uleb128 0x27
	.uaword	0xc3d
	.uaword	.LLST30
	.uleb128 0x28
	.uaword	0xc49
	.byte	0
	.uleb128 0x2d
	.uaword	.LBB106
	.uaword	.LBE106
	.uleb128 0x27
	.uaword	0xc3d
	.uaword	.LLST31
	.uleb128 0x2d
	.uaword	.LBB107
	.uaword	.LBE107
	.uleb128 0x38
	.uaword	0xc49
	.uleb128 0x29
	.uaword	0xfa7
	.uaword	.LBB108
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x256
	.uaword	0x14a8
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x2b
	.uaword	0xfc7
	.uaword	.LLST32
	.uleb128 0x2b
	.uaword	0xfd2
	.uaword	.LLST33
	.uleb128 0x2f
	.uaword	.LVL67
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL76
	.uaword	0x163b
	.uleb128 0x2f
	.uaword	.LVL77
	.uaword	0x1615
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0xf2a
	.uaword	.LBB111
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x25c
	.uaword	0x14e7
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x2b
	.uaword	0xf52
	.uaword	.LLST34
	.uleb128 0x2b
	.uaword	0xf5d
	.uaword	.LLST35
	.uleb128 0x2f
	.uaword	.LVL70
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL81
	.uaword	0x1615
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0xf69
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x262
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x2b
	.uaword	0xf90
	.uaword	.LLST36
	.uleb128 0x2b
	.uaword	0xf9b
	.uaword	.LLST37
	.uleb128 0x2f
	.uaword	.LVL73
	.uaword	0x15e2
	.uleb128 0x2f
	.uaword	.LVL79
	.uaword	0x163b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.string	"TPPC_xMotorMgrVarSet_ACM"
	.byte	0x1
	.byte	0x42
	.uaword	0xaa7
	.byte	0x5
	.byte	0x3
	.uaword	TPPC_xMotorMgrVarSet_ACM
	.uleb128 0x39
	.string	"TPPC_xAscMgrVarSet_ACM"
	.byte	0x1
	.byte	0x43
	.uaword	0xc17
	.byte	0x5
	.byte	0x3
	.uaword	TPPC_xAscMgrVarSet_ACM
	.uleb128 0x3a
	.string	"TPPC_ku8AscRecoverCntMaxC"
	.byte	0x7
	.byte	0x3e
	.uaword	0x1592
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x1ca
	.uleb128 0x3b
	.string	"TPPC_xACMAswFunc"
	.byte	0x1
	.byte	0x87
	.uaword	0x82b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TPPC_xACMAswFunc
	.uleb128 0x3c
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0xa
	.byte	0x5f
	.byte	0x1
	.uaword	0x1ca
	.byte	0x1
	.uaword	0x15e2
	.uleb128 0xe
	.uaword	0x1ca
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N"
	.byte	0x8
	.byte	0x62
	.byte	0x1
	.uaword	0x1f5
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_bGetAcuIgbtHSFaultFlag"
	.byte	0x9
	.byte	0x4c
	.byte	0x1
	.uaword	0x27d
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_bGetAcuIgbtLSFaultFlag"
	.byte	0x9
	.byte	0x4b
	.byte	0x1
	.uaword	0x27d
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"MAIN_vidClrAcuFaultFlag"
	.byte	0x9
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.string	"FaultClear"
	.byte	0xa
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x169a
	.uleb128 0xe
	.uaword	0x1ca
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM"
	.byte	0x8
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uaword	0x16d2
	.uleb128 0xe
	.uaword	0x1f5
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_u8GetACMASCStep"
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.uaword	0x1ca
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
	.uleb128 0x16
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LFB34
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LFE34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL21
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL41
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL48
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL55
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0
	.uaword	0
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0
	.uaword	0
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	0
	.uaword	0
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	0
	.uaword	0
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	0
	.uaword	0
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"bIsFaulty"
.LASF9:
	.string	"kpktDev"
.LASF0:
	.string	"TPPC_Duty"
.LASF2:
	.string	"vidStartTimer"
.LASF13:
	.string	"bLocHwFaultResult"
.LASF8:
	.string	"bLocIsFaulty"
.LASF10:
	.string	"bLocAkdEnaFlg"
.LASF4:
	.string	"TPPC_AppFunc"
.LASF3:
	.string	"vidSetPwmFreq"
.LASF5:
	.string	"TPPC_TimerDriver"
.LASF1:
	.string	"TPPC_Device"
.LASF12:
	.string	"u16PinLevel"
.LASF6:
	.string	"TPPC_tMotorMgrVarSet"
.LASF7:
	.string	"TPPC_tAscMgrVarSet"
	.extern	FaultClear,STT_FUNC,0
	.extern	MAIN_vidClrAcuFaultFlag,STT_FUNC,0
	.extern	MAIN_bGetAcuIgbtLSFaultFlag,STT_FUNC,0
	.extern	MAIN_bGetAcuIgbtHSFaultFlag,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N,STT_FUNC,0
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	TPPC_ku8AscRecoverCntMaxC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM,STT_FUNC,0
	.extern	MAIN_u8GetACMASCStep,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
