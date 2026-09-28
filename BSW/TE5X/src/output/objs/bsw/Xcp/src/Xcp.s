	.file	"Xcp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_MainFunction,"ax",@progbits
	.align 1
	.global	Xcp_MainFunction
	.type	Xcp_MainFunction, @function
Xcp_MainFunction:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp.c"
	.loc 1 55 0
.LVL0:
	.loc 1 70 0
	movh.a	%a15, hi:Xcp_NoInit
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	.loc 1 55 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 70 0
	jeq	%d15, 2, .L23
	.loc 1 75 0
	add	%d2, %d15, -1
	mov	%d8, 0
	jlt.u	%d2, 2, .L2
.LVL1:
.L1:
	ret
.LVL2:
.L23:
	.loc 1 72 0
	mov	%d8, 1
.L2:
.LVL3:
.LBB21:
.LBB22:
	.loc 1 152 0
	movh.a	%a14, hi:Xcp_Cleared
	lea	%a12, [%a14] lo:Xcp_Cleared
	ld.bu	%d2, [%a12] 2
	jlt.u	%d2, 6, .L34
	.loc 1 209 0
	mov	%d2, 0
	st.b	[%a12] 2, %d2
.L5:
.LBE22:
.LBE21:
	.loc 1 85 0
	ld.bu	%d2, [%a14] lo:Xcp_Cleared
	jz	%d2, .L17
.L15:
	.loc 1 87 0
	add	%d2, -1
	st.b	[%a14] lo:Xcp_Cleared, %d2
.L17:
	.loc 1 96 0
	jeq	%d15, 1, .L35
.L18:
.LVL4:
	.loc 1 127 0 discriminator 2
	jne	%d8, 1, .L1
	.loc 1 135 0
	call	XcpAppl_GetTimestamp
.LVL5:
	ret
.LVL6:
.L34:
.LBB44:
.LBB40:
	.loc 1 152 0
	movh.a	%a2, hi:.L6
	lea	%a2, [%a2] lo:.L6
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L6:
	.code32
	j	.L5
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
	.code32
	j	.L10
	.code32
	j	.L11
.L35:
.LBE40:
.LBE44:
	.loc 1 97 0
	ld.w	%d15, [%a12] 12
	jz	%d15, .L31
	.loc 1 97 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Xcp_Cleared
	ld.bu	%d15, [%a15] lo:Xcp_Cleared
	jnz	%d15, .L18
.L31:
	movh.a	%a13, hi:Xcp_NoInit
	lea	%a13, [%a13] lo:Xcp_NoInit
.L19:
.LVL7:
	.loc 1 102 0 is_stmt 1
	ld.bu	%d15, [%a13] 1
	.loc 1 101 0
	movh.a	%a15, hi:Xcp_NoInit
	.loc 1 102 0
	jnz	%d15, .L20
	.loc 1 104 0
	movh.a	%a2, hi:Xcp_PlCfgConst
	lea	%a2, [%a2] lo:Xcp_PlCfgConst
	ld.a	%a2, [%a2] 12
	mov	%d4, 0
	calli	%a2
.LVL8:
	mov	%d15, %d2
.LVL9:
	jnz	%d2, .L18
	.loc 1 107 0
	movh.a	%a12, hi:Xcp_GlobalNoInit
	lea	%a12, [%a12] lo:Xcp_GlobalNoInit
	mov	%d9, -1
.LBB45:
.LBB46:
	.loc 1 334 0
	mov	%d4, 0
.LBE46:
.LBE45:
	.loc 1 107 0
	st.b	[%a12] 9, %d9
.LVL10:
.LBB48:
.LBB47:
	.loc 1 334 0
	call	Xcp_InitDaqConfig
.LVL11:
	.loc 1 344 0
	ld.bu	%d2, [%a12] 10
	.loc 1 338 0
	st.b	[%a13] 1, %d9
	.loc 1 342 0
	st.b	[%a14] lo:Xcp_Cleared, %d15
	.loc 1 344 0
	jnz	%d2, .L22
.LVL12:
.L32:
.LBE47:
.LBE48:
.LBB49:
.LBB50:
	.loc 1 347 0
	mov	%d15, -16
	st.b	[%a15] lo:Xcp_NoInit, %d15
	j	.L18
.LVL13:
.L20:
	.loc 1 334 0
	mov	%d4, 0
	call	Xcp_InitDaqConfig
.LVL14:
	.loc 1 344 0
	movh.a	%a2, hi:Xcp_GlobalNoInit
	.loc 1 338 0
	mov	%d15, -1
.LVL15:
	.loc 1 344 0
	lea	%a2, [%a2] lo:Xcp_GlobalNoInit
	.loc 1 338 0
	st.b	[%a13] 1, %d15
	.loc 1 344 0
	ld.bu	%d2, [%a2] 10
	.loc 1 342 0
	mov	%d15, 0
	st.b	[%a14] lo:Xcp_Cleared, %d15
	.loc 1 344 0
	jz	%d2, .L32
.LVL16:
.L22:
	.loc 1 351 0
	st.b	[%a15] lo:Xcp_NoInit, %d15
	j	.L18
.L11:
.LBE50:
.LBE49:
.LBB51:
.LBB41:
	.loc 1 158 0
	mov	%d4, 0
	call	Xcp_CmdSynch_Cancel
.LVL17:
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	j	.L5
.L10:
.LBB23:
.LBB24:
	.loc 1 246 0
	mov	%d4, 0
.LBE24:
.LBE23:
	.loc 1 197 0
	ld.bu	%d15, [%a12] 1
.LVL18:
.LBB35:
.LBB31:
	.loc 1 246 0
	call	Xcp_DaqListStopAll
.LVL19:
	ne	%d2, %d2, 255
	jz	%d2, .L36
	.loc 1 314 0
	st.b	[%a12] 1, %d15
	.loc 1 315 0
	mov	%d15, 4
.LVL20:
	st.b	[%a12] 2, %d15
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	j	.L5
.LVL21:
.L9:
.LBE31:
.LBE35:
.LBB36:
	.loc 1 184 0
	mov	%d15, 0
	st.b	[%a12] 2, %d15
	.loc 1 189 0
	lea	%a2, [%a12] 28
	.loc 1 188 0
	ld.w	%d15, [%a12] 36
	.loc 1 189 0
	lea	%a4, [%SP] 16
	st.a	[+%a4]-12, %a2
	.loc 1 191 0
	mov	%d4, 0
	.loc 1 188 0
	st.h	[%SP] 12, %d15
	.loc 1 191 0
	call	Xcp_ReceiveCommand
.LVL22:
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	j	.L5
.L8:
.LBE36:
	.loc 1 174 0
	mov	%d4, 0
	call	Xcp_MemWriteMainFunction
.LVL23:
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	j	.L5
.L7:
	.loc 1 166 0
	mov	%d4, 0
	call	Xcp_BuildChecksumMainFunction
.LVL24:
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	j	.L5
.LVL25:
.L36:
.LBB37:
.LBB32:
.LBB25:
.LBB26:
	.loc 1 253 0
	lea	%a13, [%a15] lo:Xcp_NoInit
	.loc 1 272 0
	movh.a	%a2, hi:Xcp_GlobalNoInit
	lea	%a2, [%a2] lo:Xcp_GlobalNoInit
	.loc 1 253 0
	st.b	[%a13] 73, %d2
	.loc 1 261 0
	mov	%d2, 0
	.loc 1 272 0
	ld.bu	%d4, [%a2] 11
	mov	%d5, 0
	.loc 1 261 0
	st.w	[%a12] 12, %d2
	.loc 1 263 0
	st.w	[%a12] 24, %d2
	.loc 1 265 0
	st.w	[%a12] 48, %d2
	.loc 1 267 0
	st.b	[%a12] 2, %d2
	.loc 1 272 0
	call	XcpAppl_Init
.LVL26:
	.loc 1 275 0
	mov	%d4, 0
	call	Xcp_InitUpload
.LVL27:
	.loc 1 277 0
	mov	%d4, 0
	call	Xcp_InitDownload
.LVL28:
	.loc 1 280 0
	mov	%d4, 0
	call	Xcp_InitChecksum
.LVL29:
	.loc 1 283 0
	mov	%d4, 0
	call	Xcp_InitSeedKey
.LVL30:
	.loc 1 289 0
	ne	%d2, %d15, 255
	jz	%d2, .L37
	.loc 1 297 0
	ge.u	%d2, %d15, 252
	jnz	%d2, .L14
	.loc 1 300 0
	mov	%d4, %d15
	mov	%d5, 0
	call	Xcp_SendErrRes
.LVL31:
.L14:
	.loc 1 308 0
	mov	%d15, 1
.LVL32:
.LBE26:
.LBE25:
.LBE32:
.LBE37:
.LBE41:
.LBE51:
	.loc 1 85 0
	ld.bu	%d2, [%a14] lo:Xcp_Cleared
.LBB52:
.LBB42:
.LBB38:
.LBB33:
.LBB29:
.LBB27:
	.loc 1 308 0
	st.b	[%a15] lo:Xcp_NoInit, %d15
.LBE27:
.LBE29:
.LBE33:
.LBE38:
.LBE42:
.LBE52:
	.loc 1 85 0
	jz	%d2, .L19
	mov	%d15, 1
	j	.L15
.LVL33:
.L37:
.LBB53:
.LBB43:
.LBB39:
.LBB34:
.LBB30:
.LBB28:
	.loc 1 291 0
	mov	%d4, 0
	call	Xcp_SendPosRes
.LVL34:
	j	.L14
.LBE28:
.LBE30:
.LBE34:
.LBE39:
.LBE43:
.LBE53:
.LFE49:
	.size	Xcp_MainFunction, .-Xcp_MainFunction
.section .text.Xcp_DoDisconnect,"ax",@progbits
	.align 1
	.global	Xcp_DoDisconnect
	.type	Xcp_DoDisconnect, @function
Xcp_DoDisconnect:
.LFB51:
	.loc 1 240 0
.LVL35:
	.loc 1 240 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 246 0
	call	Xcp_DaqListStopAll
.LVL36:
	ne	%d2, %d2, 255
	jz	%d2, .L43
	.loc 1 314 0
	movh.a	%a15, hi:Xcp_Cleared
	mov.d	%d4, %a15
	mov	%d2, 340
	addi	%d3, %d4, lo:Xcp_Cleared
	madd	%d4, %d3, %d15, %d2
	.loc 1 315 0
	mov	%d15, 4
	.loc 1 314 0
	mov.a	%a15, %d4
	st.b	[%a15] 1, %d8
	.loc 1 315 0
	st.b	[%a15] 2, %d15
	ret
.L43:
.LVL37:
.LBB56:
.LBB57:
	.loc 1 253 0
	mul	%d9, %d15, 76
	movh.a	%a15, hi:Xcp_NoInit
	lea	%a12, [%a15] lo:Xcp_NoInit
	addsc.a	%a15, %a12, %d9, 0
	.loc 1 272 0
	movh.a	%a2, hi:Xcp_GlobalNoInit
	.loc 1 253 0
	st.b	[%a15] 73, %d2
	.loc 1 261 0
	movh.a	%a15, hi:Xcp_Cleared
	mov.d	%d4, %a15
	mov	%d2, 340
	addi	%d3, %d4, lo:Xcp_Cleared
	madd	%d4, %d3, %d15, %d2
	.loc 1 272 0
	lea	%a2, [%a2] lo:Xcp_GlobalNoInit
	.loc 1 261 0
	mov	%d2, 0
	mov.a	%a15, %d4
	.loc 1 272 0
	mov	%d5, %d15
	ld.bu	%d4, [%a2] 11
	.loc 1 261 0
	st.w	[%a15] 12, %d2
	.loc 1 263 0
	st.w	[%a15] 24, %d2
	.loc 1 265 0
	st.w	[%a15] 48, %d2
	.loc 1 267 0
	st.b	[%a15] 2, %d2
	.loc 1 272 0
	call	XcpAppl_Init
.LVL38:
	.loc 1 275 0
	mov	%d4, %d15
	call	Xcp_InitUpload
.LVL39:
	.loc 1 277 0
	mov	%d4, %d15
	call	Xcp_InitDownload
.LVL40:
	.loc 1 280 0
	mov	%d4, %d15
	call	Xcp_InitChecksum
.LVL41:
	.loc 1 283 0
	mov	%d4, %d15
	call	Xcp_InitSeedKey
.LVL42:
	.loc 1 289 0
	ne	%d2, %d8, 255
	jz	%d2, .L44
	.loc 1 297 0
	ge.u	%d2, %d8, 252
	jnz	%d2, .L41
	.loc 1 300 0
	mov	%e4, %d15, %d8
	call	Xcp_SendErrRes
.LVL43:
.L41:
	.loc 1 308 0
	addsc.a	%a15, %a12, %d9, 0
	mov	%d15, 1
.LVL44:
	st.b	[%a15]0, %d15
	ret
.LVL45:
.L44:
	.loc 1 291 0
	mov	%d4, %d15
	call	Xcp_SendPosRes
.LVL46:
	j	.L41
.LBE57:
.LBE56:
.LFE51:
	.size	Xcp_DoDisconnect, .-Xcp_DoDisconnect
.section .text.Xcp_GetStateForCalSup,"ax",@progbits
	.align 1
	.global	Xcp_GetStateForCalSup
	.type	Xcp_GetStateForCalSup, @function
Xcp_GetStateForCalSup:
.LFB53:
	.loc 1 376 0
.LVL47:
	.loc 1 394 0
	movh.a	%a15, hi:Xcp_NoInit
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	.loc 1 450 0
	movh.a	%a15, hi:Xcp_GlobalNoInit
	lea	%a15, [%a15] lo:Xcp_GlobalNoInit
	.loc 1 394 0
	add	%d2, %d15, -2
	.loc 1 450 0
	ld.bu	%d3, [%a15] 8
	.loc 1 394 0
	lt.u	%d2, %d2, 2
	sel	%d2, %d2, %d15, 0
.LVL48:
	.loc 1 376 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 387 0
	mov	%d15, 0
	.loc 1 450 0
	jne	%d3, 1, .L47
	.loc 1 453 0
	st.b	[%a15] 8, %d15
.LVL49:
	.loc 1 455 0
	mov	%d15, 1
.LVL50:
.L47:
	.loc 1 472 0
	st.b	[%SP] 5, %d15
	mov	%d15, 2
.LVL51:
	st.b	[%SP] 6, %d15
	mov	%d15, 0
	st.b	[%SP] 4, %d2
	st.b	[%SP] 7, %d15
	ld.hu	%d2, [%SP] 6
.LVL52:
	ld.hu	%d15, [%SP] 4
	.loc 1 473 0
	insert	%d2, %d15, %d2, 16, 16
	ret
.LFE53:
	.size	Xcp_GetStateForCalSup, .-Xcp_GetStateForCalSup
.section .text.Xcp_SetControlMode,"ax",@progbits
	.align 1
	.global	Xcp_SetControlMode
	.type	Xcp_SetControlMode, @function
Xcp_SetControlMode:
.LFB54:
	.loc 1 490 0
.LVL53:
	.loc 1 501 0
	movh.a	%a12, hi:Xcp_GlobalNoInit
	.loc 1 498 0
	and	%d15, %d4, 5
.LVL54:
	.loc 1 501 0
	lea	%a12, [%a12] lo:Xcp_GlobalNoInit
	st.b	[%a12] 10, %d15
	.loc 1 503 0
	jnz	%d15, .L51
.LVL55:
.LBB62:
.LBB63:
	.loc 1 246 0
	mov	%d4, 0
.LVL56:
	call	Xcp_DaqListStopAll
.LVL57:
	ne	%d2, %d2, 255
	jz	%d2, .L54
	.loc 1 314 0
	movh.a	%a15, hi:Xcp_Cleared
	lea	%a15, [%a15] lo:Xcp_Cleared
	mov	%d15, -2
.LVL58:
	st.b	[%a15] 1, %d15
	.loc 1 315 0
	mov	%d15, 4
	st.b	[%a15] 2, %d15
.LVL59:
	ret
.LVL60:
.L54:
.LBB64:
.LBB65:
	.loc 1 253 0
	movh.a	%a13, hi:Xcp_NoInit
	lea	%a15, [%a13] lo:Xcp_NoInit
	st.b	[%a15] 73, %d15
	.loc 1 261 0
	movh.a	%a15, hi:Xcp_Cleared
	lea	%a15, [%a15] lo:Xcp_Cleared
	.loc 1 272 0
	mov	%d5, 0
	.loc 1 261 0
	st.w	[%a15] 12, %d15
	.loc 1 263 0
	st.w	[%a15] 24, %d15
	.loc 1 265 0
	st.w	[%a15] 48, %d15
	.loc 1 267 0
	st.b	[%a15] 2, %d15
	.loc 1 272 0
	ld.bu	%d4, [%a12] 11
	call	XcpAppl_Init
.LVL61:
	.loc 1 275 0
	mov	%d4, 0
	call	Xcp_InitUpload
.LVL62:
	.loc 1 277 0
	mov	%d4, 0
	call	Xcp_InitDownload
.LVL63:
	.loc 1 280 0
	mov	%d4, 0
	call	Xcp_InitChecksum
.LVL64:
	.loc 1 308 0
	mov	%d15, 1
.LVL65:
	.loc 1 283 0
	mov	%d4, 0
	call	Xcp_InitSeedKey
.LVL66:
	.loc 1 308 0
	st.b	[%a13] lo:Xcp_NoInit, %d15
	ret
.LVL67:
.L51:
.LBE65:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 517 0
	movh.a	%a15, hi:Xcp_NoInit
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
.LVL68:
	ne	%d15, %d15, 240
	jz	%d15, .L55
	ret
.L55:
	.loc 1 519 0
	st.b	[%a15] lo:Xcp_NoInit, %d15
	ret
.LFE54:
	.size	Xcp_SetControlMode, .-Xcp_SetControlMode
.section .text.Xcp_GetControlMode,"ax",@progbits
	.align 1
	.global	Xcp_GetControlMode
	.type	Xcp_GetControlMode, @function
Xcp_GetControlMode:
.LFB55:
	.loc 1 544 0
	.loc 1 546 0
	movh.a	%a15, hi:Xcp_GlobalNoInit
	lea	%a15, [%a15] lo:Xcp_GlobalNoInit
	ld.bu	%d2, [%a15] 10
	ret
.LFE55:
	.size	Xcp_GetControlMode, .-Xcp_GetControlMode
.section .text.Xcp_GetConnectedTransportLayerId,"ax",@progbits
	.align 1
	.global	Xcp_GetConnectedTransportLayerId
	.type	Xcp_GetConnectedTransportLayerId, @function
Xcp_GetConnectedTransportLayerId:
.LFB56:
	.loc 1 555 0
.LVL69:
	.loc 1 556 0
	movh.a	%a15, hi:Xcp_NoInit
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Xcp_NoInit
	madd	%d2, %d15, %d4, 76
	mov.a	%a15, %d2
	.loc 1 557 0
	ld.bu	%d2, [%a15] 1
	ret
.LFE56:
	.size	Xcp_GetConnectedTransportLayerId, .-Xcp_GetConnectedTransportLayerId
.section .text.Xcp_GetStatus,"ax",@progbits
	.align 1
	.global	Xcp_GetStatus
	.type	Xcp_GetStatus, @function
Xcp_GetStatus:
.LFB57:
	.loc 1 580 0
.LVL70:
	.loc 1 608 0
	movh.a	%a15, hi:Xcp_NoInit
	.loc 1 609 0
	ld.bu	%d15, [%a15] lo:Xcp_NoInit
	.loc 1 580 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 609 0
	add	%d15, -2
	.loc 1 608 0
	and	%d15, 255
	lea	%a2, [%a15] lo:Xcp_NoInit
	mov	%d4, 0
	mov	%d2, 0
	jlt.u	%d15, 2, .L75
.LVL71:
.L59:
	.loc 1 648 0 discriminator 2
	mov	%d15, 0
	st.b	[%SP] 4, %d2
	st.b	[%SP] 5, %d4
	st.b	[%SP] 6, %d15
	ld.hu	%d2, [%SP] 4
.LVL72:
	ld.hu	%d15, [%SP] 6
	insert	%d2, %d2, %d15, 16, 32-16
	ret
.LVL73:
.L75:
	.loc 1 617 0
	ld.hu	%d3, [%a2] 44
	.loc 1 613 0
	mov	%d2, 2
	.loc 1 617 0
	jz	%d3, .L59
	ld.a	%a15, [%a2] 20
	mov	%d15, 0
.LVL74:
.L60:
	.loc 1 622 0
	ld.bu	%d2, [%a15] 22
.LVL75:
	.loc 1 625 0
	jz.t	%d2, 6, .L72
	.loc 1 636 0
	jnz.t	%d2, 1, .L72
.LVL76:
	.loc 1 643 0
	add	%d15, 1
.LVL77:
	.loc 1 617 0
	mov	%d4, 1
	.loc 1 613 0
	mov	%d2, 2
.LVL78:
	.loc 1 617 0
	jne	%d3, %d15, .L59
	.loc 1 613 0
	mov	%d2, 2
	j	.L59
.LVL79:
.L72:
	.loc 1 643 0
	add	%d15, 1
.LVL80:
	.loc 1 617 0
	jeq	%d3, %d15, .L76
	lea	%a15, [%a15] 24
	j	.L60
.L76:
	mov	%d4, 0
	.loc 1 613 0
	mov	%d2, 2
.LVL81:
	j	.L59
.LFE57:
	.size	Xcp_GetStatus, .-Xcp_GetStatus
	.global	Xcp_Cleared
.section .bss.a4.Xcp_Cleared,"aw",@nobits
	.align 2
	.type	Xcp_Cleared, @object
	.size	Xcp_Cleared, 340
Xcp_Cleared:
	.zero	340
	.global	Xcp_GlobalNoInit
.section .bss.a4.Xcp_GlobalNoInit,"aw",@nobits
	.align 2
	.type	Xcp_GlobalNoInit, @object
	.size	Xcp_GlobalNoInit, 12
Xcp_GlobalNoInit:
	.zero	12
	.global	Xcp_NoInit
.section .bss.a4.Xcp_NoInit,"aw",@nobits
	.align 2
	.type	Xcp_NoInit, @object
	.size	Xcp_NoInit, 76
Xcp_NoInit:
	.zero	76
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
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.byte	0x4
	.uaword	.LCFI0-.LFB49
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.byte	0x4
	.uaword	.LCFI1-.LFB53
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.byte	0x4
	.uaword	.LCFI2-.LFB57
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Cfg_SchM.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2656
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x98
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
	.uaword	0x1bc
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
	.uaword	0x1e8
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
	.uaword	0x224
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
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x28f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x28f
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1af
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1da
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x32b
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1af
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2e3
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xf9
	.uaword	0x3bf
	.uleb128 0x8
	.string	"XCP_STATE_DISCONNECTED"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_STATE_DISCONNECTING"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_STATE_CONNECTED"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_STATE_RESUME"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_STATE_DISABLED"
	.sleb128 240
	.byte	0
	.uleb128 0x3
	.string	"Xcp_State_t"
	.byte	0x5
	.byte	0xff
	.uaword	0x344
	.uleb128 0x9
	.string	"Xcp_AddrValue"
	.byte	0x5
	.uahalf	0x1be
	.uaword	0x216
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.uahalf	0x1c1
	.uaword	0x41c
	.uleb128 0xb
	.string	"AddrValue"
	.byte	0x5
	.uahalf	0x1c3
	.uaword	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Extension"
	.byte	0x5
	.uahalf	0x1c4
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_AddrType_t"
	.byte	0x5
	.uahalf	0x1c5
	.uaword	0x3e8
	.uleb128 0x9
	.string	"Xcp_PduIdType"
	.byte	0x5
	.uahalf	0x1c7
	.uaword	0x1af
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1cb
	.uaword	0x669
	.uleb128 0x8
	.string	"XCP_ERR_CMD_SYNCH"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_ERR_CMD_BUSY"
	.sleb128 16
	.uleb128 0x8
	.string	"XCP_ERR_DAQ_ACTIVE"
	.sleb128 17
	.uleb128 0x8
	.string	"XCP_ERR_PGM_ACTIVE"
	.sleb128 18
	.uleb128 0x8
	.string	"XCP_ERR_CMD_UNKNOWN"
	.sleb128 32
	.uleb128 0x8
	.string	"XCP_ERR_CMD_SYNTAX"
	.sleb128 33
	.uleb128 0x8
	.string	"XCP_ERR_OUT_OF_RANGE"
	.sleb128 34
	.uleb128 0x8
	.string	"XCP_ERR_WRITE_PROTECTED"
	.sleb128 35
	.uleb128 0x8
	.string	"XCP_ERR_ACCESS_DENIED"
	.sleb128 36
	.uleb128 0x8
	.string	"XCP_ERR_ACCESS_LOCKED"
	.sleb128 37
	.uleb128 0x8
	.string	"XCP_ERR_PAGE_NOT_VALID"
	.sleb128 38
	.uleb128 0x8
	.string	"XCP_ERR_MODE_NOT_VALID"
	.sleb128 39
	.uleb128 0x8
	.string	"XCP_ERR_SEGMENT_NOT_VALID"
	.sleb128 40
	.uleb128 0x8
	.string	"XCP_ERR_SEQUENCE"
	.sleb128 41
	.uleb128 0x8
	.string	"XCP_ERR_DAQ_CONFIG"
	.sleb128 42
	.uleb128 0x8
	.string	"XCP_ERR_MEMORY_OVERFLOW"
	.sleb128 48
	.uleb128 0x8
	.string	"XCP_ERR_GENERIC"
	.sleb128 49
	.uleb128 0x8
	.string	"XCP_ERR_VERIFY"
	.sleb128 50
	.uleb128 0x8
	.string	"XCP_ERR_RES_TEMP_NOT_ACCESS"
	.sleb128 51
	.uleb128 0x8
	.string	"XCP_ERR_SUBCMD_UNKNOWN"
	.sleb128 52
	.uleb128 0x8
	.string	"XCP_REPEAT_COMMAND"
	.sleb128 252
	.uleb128 0x8
	.string	"XCP_NO_ACCESS_HIDE"
	.sleb128 253
	.uleb128 0x8
	.string	"XCP_NO_RESPONSE"
	.sleb128 254
	.uleb128 0x8
	.string	"XCP_NO_ERROR"
	.sleb128 255
	.byte	0
	.uleb128 0x9
	.string	"Xcp_ErrorCode"
	.byte	0x5
	.uahalf	0x1e5
	.uaword	0x449
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1e9
	.uaword	0x7b2
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_NO_DAQ"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_FREE_DAQ"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_ALLOC_DAQ"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_ALLOC_ODT"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_ALLOC_ODT_ENTRY"
	.sleb128 4
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_WRITE_DAQ"
	.sleb128 5
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_PREPARE_START"
	.sleb128 6
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_SHIFTING"
	.sleb128 7
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_STOP_REQUESTED"
	.sleb128 8
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_READY_TO_RUN"
	.sleb128 9
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_RUNNING"
	.sleb128 10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_DaqState_t"
	.byte	0x5
	.uahalf	0x1f5
	.uaword	0x67f
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1f9
	.uaword	0x83a
	.uleb128 0x8
	.string	"XCP_DAQ_NO_OVERLOAD_INDICATION"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_DAQ_OVERLOAD_INDICATION_PID"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_DAQ_OVERLOAD_INDICATION_EVENT"
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Overload_t"
	.byte	0x5
	.uahalf	0x1fd
	.uaword	0x7c9
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x203
	.uaword	0x916
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_ABSOLUTE"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_BYTE"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD_ALIGNED"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_IdField_t"
	.byte	0x5
	.uahalf	0x208
	.uaword	0x851
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x20c
	.uaword	0xa20
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_DEFAULT"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_16"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_32"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_64"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_ALIGNMENT"
	.sleb128 4
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_MAX_ENTRY_SIZE"
	.sleb128 5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_OdtOptimizationType_t"
	.byte	0x5
	.uahalf	0x213
	.uaword	0x92c
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x217
	.uaword	0xaa7
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_ODT"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_DAQ"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_EVENT"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_NONE"
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Consistency_t"
	.byte	0x5
	.uahalf	0x21c
	.uaword	0xa42
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x220
	.uaword	0xb49
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_NO_TIME_STAMP"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_ONE_BYTE"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_TWO_BYTE"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_FOUR_BYTE"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Timestamp_t"
	.byte	0x5
	.uahalf	0x225
	.uaword	0xac1
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.uahalf	0x245
	.uaword	0xbb2
	.uleb128 0xb
	.string	"XcpStatus_en"
	.byte	0x5
	.uahalf	0x247
	.uaword	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqActive_b"
	.byte	0x5
	.uahalf	0x248
	.uaword	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"StimActive_b"
	.byte	0x5
	.uahalf	0x249
	.uaword	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_GetStatus_t"
	.byte	0x5
	.uahalf	0x24a
	.uaword	0xb61
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.uahalf	0x24c
	.uaword	0xc29
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x24e
	.uaword	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqState_u8"
	.byte	0x5
	.uahalf	0x24f
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"StimState_u8"
	.byte	0x5
	.uahalf	0x250
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"reserved_u8"
	.byte	0x5
	.uahalf	0x251
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x9
	.string	"Xcp_GetState_t"
	.byte	0x5
	.uahalf	0x252
	.uaword	0xbca
	.uleb128 0xa
	.byte	0xc
	.byte	0x5
	.uahalf	0x254
	.uaword	0xc68
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x256
	.uaword	0xc68
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x257
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.uaword	0x1af
	.uaword	0xc78
	.uleb128 0xf
	.uaword	0xc78
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.string	"Xcp_Cto8_t"
	.byte	0x5
	.uahalf	0x258
	.uaword	0xc40
	.uleb128 0x4
	.byte	0x2c
	.byte	0x6
	.byte	0xaa
	.uaword	0xe10
	.uleb128 0x5
	.string	"TLTransmit_pfct"
	.byte	0x6
	.byte	0xac
	.uaword	0xe35
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TLInit_pfct"
	.byte	0x6
	.byte	0xad
	.uaword	0xe4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"TLConnect_pfct"
	.byte	0x6
	.byte	0xae
	.uaword	0xe5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"TLDisconnect_pfct"
	.byte	0x6
	.byte	0xaf
	.uaword	0xe74
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"TLTransportLayerCmd_pfct"
	.byte	0x6
	.byte	0xb0
	.uaword	0xe96
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"TLGetTxPduId_pfct"
	.byte	0x6
	.byte	0xb1
	.uaword	0xeb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x6
	.byte	0xb5
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x6
	.byte	0xb6
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x5
	.string	"TimestampType_en"
	.byte	0x6
	.byte	0xb7
	.uaword	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"IdFieldType_en"
	.byte	0x6
	.byte	0xb8
	.uaword	0x916
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0x5
	.string	"OverloadType_en"
	.byte	0x6
	.byte	0xb9
	.uaword	0x83a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x5
	.string	"OdtOptimizationType_en"
	.byte	0x6
	.byte	0xba
	.uaword	0xa20
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x5
	.string	"Consistency_en"
	.byte	0x6
	.byte	0xbb
	.uaword	0xaa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"PdRam_u32"
	.byte	0x6
	.byte	0xbc
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"EdRam_u32"
	.byte	0x6
	.byte	0xbd
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	0x2b8
	.uaword	0xe2a
	.uleb128 0x12
	.uaword	0xe2a
	.uleb128 0x12
	.uaword	0x1af
	.uleb128 0x12
	.uaword	0x433
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe30
	.uleb128 0x13
	.uaword	0x331
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe10
	.uleb128 0x14
	.byte	0x1
	.uaword	0xe4c
	.uleb128 0x12
	.uaword	0x1af
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe3b
	.uleb128 0x14
	.byte	0x1
	.uaword	0xe5e
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe52
	.uleb128 0x11
	.byte	0x1
	.uaword	0x2b8
	.uaword	0xe74
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe64
	.uleb128 0x14
	.byte	0x1
	.uaword	0xe90
	.uleb128 0x12
	.uaword	0xe2a
	.uleb128 0x12
	.uaword	0xe90
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x331
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe7a
	.uleb128 0x11
	.byte	0x1
	.uaword	0x433
	.uaword	0xeb6
	.uleb128 0x12
	.uaword	0x1af
	.uleb128 0x12
	.uaword	0x1da
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe9c
	.uleb128 0x3
	.string	"Xcp_PL_TL_Cfg_t"
	.byte	0x6
	.byte	0xbe
	.uaword	0xc97
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0xc3
	.uaword	0xf1d
	.uleb128 0x8
	.string	"XCP_RAMSECTION_INVALID"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_RAMSECTION_PD"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_RAMSECTION_ED"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"Xcp_RamSectionType_t"
	.byte	0x6
	.byte	0xc7
	.uaword	0xed3
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0xc9
	.uaword	0xf8a
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x6
	.byte	0xcb
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DaqRamTotalSize_u32"
	.byte	0x6
	.byte	0xcc
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"RamSectionType_en"
	.byte	0x6
	.byte	0xcd
	.uaword	0xf1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"Xcp_DaqRamSection_Cfg_t"
	.byte	0x6
	.byte	0xce
	.uaword	0xf39
	.uleb128 0x4
	.byte	0x8
	.byte	0x6
	.byte	0xd1
	.uaword	0xfe8
	.uleb128 0x5
	.string	"DaqRamFreeSize_u32"
	.byte	0x6
	.byte	0xd2
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PLConnected_ab"
	.byte	0x6
	.byte	0xd4
	.uaword	0xfe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.uaword	0x261
	.uaword	0xff8
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Xcp_DaqRamSections_t"
	.byte	0x6
	.byte	0xd5
	.uaword	0xfa9
	.uleb128 0x4
	.byte	0x10
	.byte	0x6
	.byte	0xec
	.uaword	0x1104
	.uleb128 0x5
	.string	"EventChannelDirection_u8"
	.byte	0x6
	.byte	0xef
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EventChannelNameLength_u8"
	.byte	0x6
	.byte	0xf0
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"EventChannelTimeCycle_u8"
	.byte	0x6
	.byte	0xf1
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"EventChannelTimeUnit_u8"
	.byte	0x6
	.byte	0xf2
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"EventChannelPriority_u8"
	.byte	0x6
	.byte	0xf3
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"EventChannelName"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1104
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"ScheduleCallFlag_u8"
	.byte	0x6
	.byte	0xf6
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x110a
	.uleb128 0x13
	.uaword	0x110f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"Xcp_EventChannel_Cfg_t"
	.byte	0x6
	.byte	0xf7
	.uaword	0x1014
	.uleb128 0x4
	.byte	0x68
	.byte	0x6
	.byte	0xfb
	.uaword	0x117f
	.uleb128 0xb
	.string	"TlCfg"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x117f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqRamCfg"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x118f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"EventChannelCfg"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x119f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.uaword	0xebc
	.uaword	0x118f
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0xf8a
	.uaword	0x119f
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x1117
	.uaword	0x11af
	.uleb128 0xf
	.uaword	0xc78
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_PlCfgConst_t"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x1135
	.uleb128 0xe
	.uaword	0x1af
	.uaword	0x11d8
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1da
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0xf5
	.uaword	0x1257
	.uleb128 0x8
	.string	"XCP_BG_IDLE"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_BG_CHKSUM"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_BG_MEM_WRITE"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_BG_REPEAT_CMD"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_BG_DO_DISCONNECT"
	.sleb128 4
	.uleb128 0x8
	.string	"XCP_BG_CANCEL_REQ"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Xcp_BgActivity_t"
	.byte	0x7
	.byte	0xfc
	.uaword	0x11de
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x12dd
	.uleb128 0xb
	.string	"WritePos_u16"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ReadPos_u16"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReadPos_OdtNum_u16"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"QueSize_u16"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Que_t"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x126f
	.uleb128 0xa
	.byte	0x14
	.byte	0x7
	.uahalf	0x116
	.uaword	0x138f
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x118
	.uaword	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ConnectedTlId_u8"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"ResourceProtStatus_u8"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Mta"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"MaxDtoAligned_u16"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Session_t"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x12ef
	.uleb128 0xa
	.byte	0xc
	.byte	0x7
	.uahalf	0x131
	.uaword	0x13cd
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x133
	.uaword	0xc68
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x134
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CtoMax_t"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x13a5
	.uleb128 0x15
	.uahalf	0x104
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1478
	.uleb128 0xb
	.string	"UploadRunning_b"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RemainingSize_u8"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"DownloadSize_u8"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReceivedSize_u8"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"DownloadBuffer_au8"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1478
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.uaword	0x1af
	.uaword	0x1488
	.uleb128 0xf
	.uaword	0xc78
	.byte	0xfe
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Mem_t"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x13e2
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.uahalf	0x153
	.uaword	0x14de
	.uleb128 0xb
	.string	"SeedWaitingKey_b"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SeedRemaingSize_u8"
	.byte	0x7
	.uahalf	0x156
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SeedAndKey_t"
	.byte	0x7
	.uahalf	0x157
	.uaword	0x149a
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x151a
	.uleb128 0xb
	.string	"BlockSize_u32"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Checksum_t"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x14f7
	.uleb128 0xa
	.byte	0x12
	.byte	0x7
	.uahalf	0x167
	.uaword	0x1697
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitOkCtr_u16"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitNotOkCtr_u16"
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Xcp_Debug_SendResTxConfCtr_u16"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"Xcp_Debug_SendResCtr_u16"
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvTxConfCtr_u16"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvCtr_u16"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqTxConfCtr_u16"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqCtr_u16"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"Xcp_Debug_TxConfCtr_u16"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Debug_t"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1531
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x171e
	.uleb128 0xb
	.string	"OdtEntryPos_u16"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OdtEntryMax_u16"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"DaqListNum_u16"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"AbsOdtNum_u16"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SelectedOdtEntry_t"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x16ab
	.uleb128 0xa
	.byte	0x6
	.byte	0x7
	.uahalf	0x186
	.uaword	0x17ae
	.uleb128 0xb
	.string	"OdtEntryFirst_u16"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Length_u16"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"OdtEntryCnt_u8"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CopyRoutine_u8"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Odt_t"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x173d
	.uleb128 0xa
	.byte	0x18
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x18e8
	.uleb128 0xb
	.string	"DaqListQue_p"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqListQuePos"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x12dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtFirst_u16"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"EventChannelNum_u16"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"OdtCnt_u8"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"XcpTxPduId"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x433
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"Prescaler_u8"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"CycleCnt_u8"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"Priority_u8"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"Flags_u8"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"Mode_u8"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x18e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"CurrentlyRunning_b"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x18ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.byte	0
	.uleb128 0x16
	.uaword	0x1af
	.uleb128 0x16
	.uaword	0x261
	.uleb128 0x9
	.string	"Xcp_DaqList_t"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x17c0
	.uleb128 0xa
	.byte	0x38
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x1aa1
	.uleb128 0xb
	.string	"DaqList_p"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x1aa1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Odt_p"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x1aa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtEntryAddress_p"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"OdtEntrySize_p"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"PriorityList_p"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x11d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"DaqQue_p"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"DaqListCnt_u16"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OdtCnt_u16"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.string	"OdtEntryCnt_u16"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"SelectedOdtEntry"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x171e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"DaqRamSize_u32"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"DaqListSendingCnt_u16"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"DaqListSending_u16"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.string	"OverloadOccurred_b"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"DaqState_en"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x18f2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x17ae
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3d2
	.uleb128 0x9
	.string	"Xcp_DaqConfig_t"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x1908
	.uleb128 0xa
	.byte	0x4c
	.byte	0x7
	.uahalf	0x206
	.uaword	0x1afd
	.uleb128 0xb
	.string	"Session"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x138f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqConfig"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x1ab3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.string	"Xcp_NoInit_t"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1acb
	.uleb128 0xa
	.byte	0xc
	.byte	0x7
	.uahalf	0x211
	.uaword	0x1baa
	.uleb128 0xb
	.string	"DaqRamSections"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1baa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqTransmissionStopped_b"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"Tl2PlRef_au8"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x11c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"EnabledResources_u8"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"InitStatus_u8"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0xe
	.uaword	0xff8
	.uaword	0x1bba
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Xcp_GlobalNoInit_t"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x1b12
	.uleb128 0x15
	.uahalf	0x154
	.byte	0x7
	.uahalf	0x227
	.uaword	0x1cfa
	.uleb128 0xb
	.string	"Wait4TxConfCtr_u8"
	.byte	0x7
	.uahalf	0x229
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BgDoDisconnect_Response"
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x669
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"BgActivityState"
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x1257
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ResBuffer"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x13cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"EvBuffer"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"CmdBuffer"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"ServBuffer"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x13cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"Mem"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x1488
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"SeedAndKey"
	.byte	0x7
	.uahalf	0x234
	.uaword	0x14de
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.string	"Checksum"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x151a
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xb
	.string	"ReqTimeoutCnt_u16"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xb
	.string	"Debug"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1697
	.byte	0x3
	.byte	0x23
	.uleb128 0x142
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Cleared_t"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x1bd5
	.uleb128 0x17
	.byte	0x1
	.string	"Xcp_DoDisconnect"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0x1d47
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.byte	0xef
	.uaword	0x1af
	.uleb128 0x19
	.string	"Response"
	.byte	0x1
	.byte	0xef
	.uaword	0x669
	.byte	0
	.uleb128 0x1a
	.string	"SchM_Enter_Xcp_SendingLong"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"SchM_Enter_Xcp_SendingShort"
	.byte	0x8
	.byte	0x27
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"SchM_Exit_Xcp_SendingShort"
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"SchM_Exit_Xcp_SendingLong"
	.byte	0x8
	.byte	0x3c
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"Xcp_Background_Tasks"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.byte	0x1
	.uaword	0x1e04
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.byte	0x96
	.uaword	0x1af
	.uleb128 0x1c
	.uleb128 0x1d
	.string	"XcpPacket"
	.byte	0x1
	.byte	0xb5
	.uaword	0x331
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"Xcp_FinishDisconnect"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.byte	0x3
	.uaword	0x1e30
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x1af
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Xcp_MainFunction"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x2053
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x1
	.byte	0x3c
	.uaword	0x1af
	.uaword	.LLST1
	.uleb128 0x22
	.string	"TransportLayerId"
	.byte	0x1
	.byte	0x3d
	.uaword	0x1af
	.uaword	.LLST2
	.uleb128 0x22
	.string	"connected"
	.byte	0x1
	.byte	0x3e
	.uaword	0x261
	.uaword	.LLST3
	.uleb128 0x23
	.uaword	0x1dc7
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.uaword	0x1fe6
	.uleb128 0x24
	.uaword	0x1de5
	.byte	0
	.uleb128 0x23
	.uaword	0x1d10
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xc5
	.uaword	0x1f85
	.uleb128 0x25
	.uaword	0x1d36
	.uaword	.LLST4
	.uleb128 0x25
	.uaword	0x1d2b
	.uaword	.LLST5
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x60
	.uaword	0x1f75
	.uleb128 0x25
	.uaword	0x1d36
	.uaword	.LLST6
	.uleb128 0x24
	.uaword	0x1d2b
	.byte	0
	.uleb128 0x27
	.uaword	.LVL26
	.uaword	0x2457
	.uaword	0x1f00
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL27
	.uaword	0x247d
	.uaword	0x1f13
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL28
	.uaword	0x249d
	.uaword	0x1f26
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL29
	.uaword	0x24bf
	.uaword	0x1f39
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL30
	.uaword	0x24e1
	.uaword	0x1f4c
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL31
	.uaword	0x2502
	.uaword	0x1f65
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL34
	.uaword	0x2527
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL19
	.uaword	0x2547
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0x1fb0
	.uleb128 0x2b
	.uaword	0x1df1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x29
	.uaword	.LVL22
	.uaword	0x256f
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL17
	.uaword	0x2598
	.uaword	0x1fc3
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL23
	.uaword	0x25bd
	.uaword	0x1fd6
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.uaword	.LVL24
	.uaword	0x25e7
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x1e04
	.uaword	.LBB45
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x6d
	.uaword	0x2012
	.uleb128 0x25
	.uaword	0x1e23
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.LVL11
	.uaword	0x2616
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x1e04
	.uaword	.LBB49
	.uaword	.LBE49
	.byte	0x1
	.byte	0x76
	.uaword	0x203e
	.uleb128 0x25
	.uaword	0x1e23
	.uaword	.LLST8
	.uleb128 0x29
	.uaword	.LVL14
	.uaword	0x2616
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL5
	.uaword	0x2639
	.uleb128 0x2e
	.uaword	.LVL8
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x1d10
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2137
	.uleb128 0x25
	.uaword	0x1d2b
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0x1d36
	.uaword	.LLST10
	.uleb128 0x2a
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0x2126
	.uleb128 0x30
	.uaword	0x1d36
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.uaword	0x1d2b
	.uaword	.LLST11
	.uleb128 0x27
	.uaword	.LVL38
	.uaword	0x2457
	.uaword	0x20ab
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL39
	.uaword	0x247d
	.uaword	0x20bf
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL40
	.uaword	0x249d
	.uaword	0x20d3
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL41
	.uaword	0x24bf
	.uaword	0x20e7
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL42
	.uaword	0x24e1
	.uaword	0x20fb
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL43
	.uaword	0x2502
	.uaword	0x2115
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL46
	.uaword	0x2527
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL36
	.uaword	0x2547
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Xcp_GetStateForCalSup"
	.byte	0x1
	.uahalf	0x177
	.byte	0x1
	.uaword	0xc29
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LLST12
	.byte	0x1
	.uaword	0x2189
	.uleb128 0x32
	.string	"retVal"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xc29
	.uaword	.LLST13
	.uleb128 0x33
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x27c
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Xcp_SetControlMode"
	.byte	0x1
	.uahalf	0x1e9
	.byte	0x1
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x22a1
	.uleb128 0x35
	.string	"Xcp_CtlMode_u8"
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x1af
	.uaword	.LLST14
	.uleb128 0x36
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x1af
	.uaword	.LLST15
	.uleb128 0x32
	.string	"Resources"
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x1af
	.uaword	.LLST16
	.uleb128 0x37
	.uaword	0x1d10
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.uahalf	0x1fd
	.uleb128 0x25
	.uaword	0x1d36
	.uaword	.LLST17
	.uleb128 0x25
	.uaword	0x1d2b
	.uaword	.LLST18
	.uleb128 0x2a
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0x2290
	.uleb128 0x25
	.uaword	0x1d36
	.uaword	.LLST19
	.uleb128 0x25
	.uaword	0x1d2b
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	.LVL61
	.uaword	0x2457
	.uaword	0x2247
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL62
	.uaword	0x247d
	.uaword	0x225a
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL63
	.uaword	0x249d
	.uaword	0x226d
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL64
	.uaword	0x24bf
	.uaword	0x2280
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.uaword	.LVL66
	.uaword	0x24e1
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL57
	.uaword	0x2547
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"Xcp_GetControlMode"
	.byte	0x1
	.uahalf	0x21f
	.byte	0x1
	.uaword	0x1af
	.uaword	.LFB55
	.uaword	.LFE55
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.string	"Xcp_GetConnectedTransportLayerId"
	.byte	0x1
	.uahalf	0x22a
	.byte	0x1
	.uaword	0x1af
	.uaword	.LFB56
	.uaword	.LFE56
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2314
	.uleb128 0x3a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x1af
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Xcp_GetStatus"
	.byte	0x1
	.uahalf	0x243
	.byte	0x1
	.uaword	0xbb2
	.uaword	.LFB57
	.uaword	.LFE57
	.uaword	.LLST21
	.byte	0x1
	.uaword	0x23c7
	.uleb128 0x32
	.string	"retVal"
	.byte	0x1
	.uahalf	0x246
	.uaword	0xbb2
	.uaword	.LLST22
	.uleb128 0x36
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x247
	.uaword	0x27c
	.uaword	.LLST23
	.uleb128 0x32
	.string	"daqNum"
	.byte	0x1
	.uahalf	0x249
	.uaword	0x2a4
	.uaword	.LLST24
	.uleb128 0x32
	.string	"daqListMode"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x1af
	.uaword	.LLST25
	.uleb128 0x3b
	.string	"daqListTypesToCheck"
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x1af
	.byte	0x1
	.uleb128 0x32
	.string	"daqListTypesFound"
	.byte	0x1
	.uahalf	0x24c
	.uaword	0x1af
	.uaword	.LLST26
	.byte	0
	.uleb128 0x3c
	.string	"Xcp_PlCfgConst"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x23e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.uaword	0x11af
	.uleb128 0xe
	.uaword	0x1afd
	.uaword	0x23f5
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0x3d
	.string	"Xcp_NoInit"
	.byte	0x1
	.byte	0x10
	.uaword	0x23e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Xcp_NoInit
	.uleb128 0x3d
	.string	"Xcp_GlobalNoInit"
	.byte	0x1
	.byte	0x11
	.uaword	0x1bba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Xcp_GlobalNoInit
	.uleb128 0xe
	.uaword	0x1cfa
	.uaword	0x243d
	.uleb128 0xf
	.uaword	0xc78
	.byte	0
	.byte	0
	.uleb128 0x3d
	.string	"Xcp_Cleared"
	.byte	0x1
	.byte	0x17
	.uaword	0x242d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Xcp_Cleared
	.uleb128 0x3e
	.byte	0x1
	.string	"XcpAppl_Init"
	.byte	0x9
	.byte	0xef
	.byte	0x1
	.uaword	0x2b8
	.byte	0x1
	.uaword	0x247d
	.uleb128 0x12
	.uaword	0x1af
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_InitUpload"
	.byte	0x7
	.uahalf	0x29d
	.byte	0x1
	.byte	0x1
	.uaword	0x249d
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_InitDownload"
	.byte	0x7
	.uahalf	0x29f
	.byte	0x1
	.byte	0x1
	.uaword	0x24bf
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_InitChecksum"
	.byte	0x7
	.uahalf	0x298
	.byte	0x1
	.byte	0x1
	.uaword	0x24e1
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_InitSeedKey"
	.byte	0x7
	.uahalf	0x29b
	.byte	0x1
	.byte	0x1
	.uaword	0x2502
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_SendErrRes"
	.byte	0x7
	.uahalf	0x25d
	.byte	0x1
	.byte	0x1
	.uaword	0x2527
	.uleb128 0x12
	.uaword	0x669
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_SendPosRes"
	.byte	0x7
	.uahalf	0x25c
	.byte	0x1
	.byte	0x1
	.uaword	0x2547
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Xcp_DaqListStopAll"
	.byte	0x7
	.uahalf	0x26d
	.byte	0x1
	.uaword	0x669
	.byte	0x1
	.uaword	0x256f
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_ReceiveCommand"
	.byte	0x7
	.uahalf	0x2a5
	.byte	0x1
	.byte	0x1
	.uaword	0x2598
	.uleb128 0x12
	.uaword	0xe2a
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_CmdSynch_Cancel"
	.byte	0x7
	.uahalf	0x284
	.byte	0x1
	.byte	0x1
	.uaword	0x25bd
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_MemWriteMainFunction"
	.byte	0x7
	.uahalf	0x2ba
	.byte	0x1
	.byte	0x1
	.uaword	0x25e7
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_BuildChecksumMainFunction"
	.byte	0x7
	.uahalf	0x292
	.byte	0x1
	.byte	0x1
	.uaword	0x2616
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"Xcp_InitDaqConfig"
	.byte	0x7
	.uahalf	0x277
	.byte	0x1
	.byte	0x1
	.uaword	0x2639
	.uleb128 0x12
	.uaword	0x1af
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"XcpAppl_GetTimestamp"
	.byte	0x9
	.uahalf	0x19b
	.byte	0x1
	.uaword	0x216
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB49
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Xcp_NoInit+1
	.uaword	.LVL8-1
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Xcp_NoInit+1
	.uaword	.LVL14-1
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Xcp_Cleared+1
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL25
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36-1
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL36-1
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL37
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LFB53
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE53
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0xf
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0xf
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0xe
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0xd
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL52
	.uaword	.LFE53
	.uahalf	0x33
	.byte	0x3
	.uaword	Xcp_NoInit
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x3
	.uaword	Xcp_NoInit
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x1c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0x80000002
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE54
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL68
	.uaword	.LFE54
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL55
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL55
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL60
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL60
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LFB57
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE57
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0xe
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0xc
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0xb
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL73
	.uaword	.LVL76
	.uahalf	0xe
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0xe
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL79
	.uaword	.LFE57
	.uahalf	0xe
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LFE57
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE57
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0
	.uaword	0
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LFB54
	.uaword	.LFE54
	.uaword	.LFB55
	.uaword	.LFE55
	.uaword	.LFB56
	.uaword	.LFE56
	.uaword	.LFB57
	.uaword	.LFE57
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"ProtocolLayerId"
.LASF1:
	.string	"Buffer_au8"
.LASF5:
	.string	"DaqRamPtr_pu8"
.LASF6:
	.string	"protLayerId"
.LASF2:
	.string	"Length_u32"
.LASF3:
	.string	"MaxCto_u8"
.LASF4:
	.string	"MaxDto_u16"
.LASF0:
	.string	"XcpState_en"
	.extern	Xcp_SendPosRes,STT_FUNC,0
	.extern	Xcp_SendErrRes,STT_FUNC,0
	.extern	Xcp_InitSeedKey,STT_FUNC,0
	.extern	Xcp_InitChecksum,STT_FUNC,0
	.extern	Xcp_InitDownload,STT_FUNC,0
	.extern	Xcp_InitUpload,STT_FUNC,0
	.extern	XcpAppl_Init,STT_FUNC,0
	.extern	Xcp_BuildChecksumMainFunction,STT_FUNC,0
	.extern	Xcp_MemWriteMainFunction,STT_FUNC,0
	.extern	Xcp_ReceiveCommand,STT_FUNC,0
	.extern	Xcp_DaqListStopAll,STT_FUNC,0
	.extern	Xcp_CmdSynch_Cancel,STT_FUNC,0
	.extern	Xcp_InitDaqConfig,STT_FUNC,0
	.extern	Xcp_PlCfgConst,STT_OBJECT,104
	.extern	XcpAppl_GetTimestamp,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
