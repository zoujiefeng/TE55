	.file	"CCPUSR_Daq.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	CCPUSR_vidDaqListIni
	.type	CCPUSR_vidDaqListIni, @function
CCPUSR_vidDaqListIni:
.LFB0:
	.file 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
	.loc 1 162 0
.LVL0:
	.loc 1 179 0
	movh.a	%a15, hi:CCPUSR_astrDaqListData
	lea	%a15, [%a15] lo:CCPUSR_astrDaqListData
	mov	%d15, -1
	st.b	[%a15] 1, %d15
.LVL1:
	st.b	[%a15] 7, %d15
.LVL2:
	st.b	[%a15] 13, %d15
.LVL3:
	ret
.LFE0:
	.size	CCPUSR_vidDaqListIni, .-CCPUSR_vidDaqListIni
	.align 1
	.global	CCP_vidUsrDaqListClr
	.type	CCP_vidUsrDaqListClr, @function
CCP_vidUsrDaqListClr:
.LFB1:
	.loc 1 218 0
.LVL4:
	.loc 1 228 0
	movh.a	%a15, hi:CCPUSR_astrDaqListData
	mov.d	%d2, %a15
	movh.a	%a2, hi:CCPUSR_strDaqListDynCfg
	addi	%d15, %d2, lo:CCPUSR_astrDaqListData
	madd	%d2, %d15, %d4, 6
	mov	%d15, -1
	movh.a	%a3, hi:CCPUSR_au8DaqListElmVal
	mov.a	%a15, %d2
	lea	%a2, [%a2] lo:CCPUSR_strDaqListDynCfg
	st.b	[%a15] 1, %d15
.LVL5:
	.loc 1 232 0
	movh.a	%a15, hi:CCP_kastrDaqListStatCfg
	lea	%a15, [%a15] lo:CCP_kastrDaqListStatCfg
	addsc.a	%a15, %a15, %d4, 1
	movh	%d4, hi:CCPUSR_u8DaqListInvalidData
.LVL6:
	ld.bu	%d15, [%a15] 1
	.loc 1 233 0
	ld.bu	%d3, [%a15]0
	.loc 1 232 0
	mul	%d15, %d15, 7
.LVL7:
	.loc 1 233 0
	madd	%d3, %d15, %d3, 7
	addi	%d4, %d4, lo:CCPUSR_u8DaqListInvalidData
	lea	%a3, [%a3] lo:CCPUSR_au8DaqListElmVal
	add	%d3, -1
.LVL8:
	.loc 1 239 0
	mov	%d2, 0
	.loc 1 235 0
	jlt.u	%d3, %d15, .L2
.LVL9:
.L6:
	.loc 1 237 0 discriminator 3
	addsc.a	%a15, %a2, %d15, 2
	st.w	[%a15]0, %d4
	.loc 1 239 0 discriminator 3
	addsc.a	%a15, %a2, %d15, 0
	st.b	[%a15] 1288, %d2
	.loc 1 243 0 discriminator 3
	addsc.a	%a15, %a3, %d15, 0
	.loc 1 235 0 discriminator 3
	add	%d15, 1
.LVL10:
	.loc 1 243 0 discriminator 3
	st.b	[%a15]0, %d2
	.loc 1 235 0 discriminator 3
	jge.u	%d3, %d15, .L6
.L2:
	ret
.LFE1:
	.size	CCP_vidUsrDaqListClr, .-CCP_vidUsrDaqListClr
	.align 1
	.global	CCP_udtUsrWrDaqElmCfg
	.type	CCP_udtUsrWrDaqElmCfg, @function
CCP_udtUsrWrDaqElmCfg:
.LFB2:
	.loc 1 274 0
.LVL11:
	.loc 1 287 0
	movh.a	%a15, hi:CCP_kastrDaqListStatCfg
	lea	%a15, [%a15] lo:CCP_kastrDaqListStatCfg
	addsc.a	%a15, %a15, %d4, 1
	.loc 1 292 0
	movh	%d4, hi:CCPUSR_strDaqListDynCfg
.LVL12:
	.loc 1 287 0
	ld.bu	%d15, [%a15] 1
	.loc 1 292 0
	addi	%d4, %d4, lo:CCPUSR_strDaqListDynCfg
	.loc 1 287 0
	add	%d5, %d15
.LVL13:
	mul	%d5, %d5, 7
.LVL14:
	.loc 1 292 0
	mov.a	%a2, %d4
	addi	%d2, %d5, 1288
	addsc.a	%a3, %a2, %d2, 0
.LVL15:
	.loc 1 295 0
	jz	%d6, .L10
	.loc 1 296 0
	addsc.a	%a15, %a3, %d6, 0
	.loc 1 300 0
	mov	%d2, 50
	.loc 1 296 0
	ld.bu	%d3, [%a15] -1
	jnz	%d3, .L27
.LVL16:
.L23:
	.loc 1 336 0
	ret
.LVL17:
.L10:
	.loc 1 298 0
	ld.bu	%d3, [%a3] 1
	.loc 1 300 0
	mov	%d2, 50
	.loc 1 298 0
	mov	%d6, 0
.LVL18:
	.loc 1 304 0
	mov	%d15, 0
	.loc 1 298 0
	jnz	%d3, .L23
.LVL19:
	.loc 1 315 0
	add	%d3, %d15, %d7
	.loc 1 300 0
	mov	%d2, 50
	.loc 1 315 0
	jge.u	%d3, 8, .L23
.LVL20:
.L29:
	.loc 1 288 0
	mov.a	%a2, %d4
	addsc.a	%a15, %a2, %d5, 2
.LVL21:
	.loc 1 321 0
	ld.w	%d2, [%a4]0
.LVL22:
	.loc 1 323 0
	addsc.a	%a15, %a15, %d15, 2
	st.w	[%a15]0, %d2
	.loc 1 324 0
	jeq	%d7, 1, .L15
	.loc 1 326 0
	add	%d15, %d2, 1
.LVL23:
	st.w	[%a15] 4, %d15
	.loc 1 327 0
	jeq	%d7, 4, .L28
.LVL24:
.L15:
	.loc 1 333 0
	addsc.a	%a3, %a3, %d6, 0
.LVL25:
	.loc 1 335 0
	mov	%d2, 0
	.loc 1 333 0
	st.b	[%a3]0, %d7
.LVL26:
	.loc 1 335 0
	ret
.LVL27:
.L27:
	.loc 1 297 0
	jlt.u	%d6, 6, .L12
.L17:
	.loc 1 274 0 discriminator 1
	mov.d	%d2, %a3
	mov.aa	%a2, %a3
	not	%d2
	addsc.a	%a15, %a15, %d2, 0
	mov	%d15, 0
.L13:
.LVL28:
	.loc 1 310 0 discriminator 1
	ld.bu	%d2, [%a2+]1
	add	%d15, %d2
.LVL29:
	loop	%a15, .L13
	.loc 1 315 0
	add	%d3, %d15, %d7
	.loc 1 300 0
	mov	%d2, 50
	.loc 1 315 0
	jge.u	%d3, 8, .L23
	j	.L29
.LVL30:
.L28:
	.loc 1 329 0
	add	%d15, %d2, 2
	.loc 1 330 0
	add	%d2, 3
.LVL31:
	.loc 1 329 0
	st.w	[%a15] 8, %d15
	.loc 1 330 0
	st.w	[%a15] 12, %d2
	j	.L15
.LVL32:
.L12:
	.loc 1 298 0
	ld.bu	%d15, [%a15] 1
	jz	%d15, .L17
	.loc 1 336 0
	ret
.LFE2:
	.size	CCP_udtUsrWrDaqElmCfg, .-CCP_udtUsrWrDaqElmCfg
	.align 1
	.global	CCP_vidUsrDaqListTxMgrInit
	.type	CCP_vidUsrDaqListTxMgrInit, @function
CCP_vidUsrDaqListTxMgrInit:
.LFB3:
	.loc 1 356 0
.LVL33:
	.loc 1 372 0
	mul	%d15, %d5, 7
	movh.a	%a15, hi:CCPUSR_strDaqListDynCfg
	.loc 1 356 0
	mov	%d10, %d5
	.loc 1 372 0
	lea	%a15, [%a15] lo:CCPUSR_strDaqListDynCfg
	extr.u	%d5, %d15, 0, 16
.LVL34:
	mov.aa	%a4, %a15
	.loc 1 356 0
	mov	%d9, %d4
	mov	%d8, %d6
	.loc 1 372 0
	call	SPY_vidDaqListTxInit
.LVL35:
	.loc 1 376 0
	call	Os_SuspendOSInterrupts
.LVL36:
	.loc 1 377 0
	movh.a	%a2, hi:CCPUSR_vu8DaqListPrio
	ld.bu	%d2, [%a2] lo:CCPUSR_vu8DaqListPrio
.LVL37:
	.loc 1 378 0
	jge.u	%d9, %d2, .L31
	.loc 1 380 0
	st.b	[%a2] lo:CCPUSR_vu8DaqListPrio, %d9
.L31:
	.loc 1 382 0
	call	Os_ResumeOSInterrupts
.LVL38:
	.loc 1 386 0
	movh	%d12, hi:CCPUSR_astrDaqListData
	mul	%d11, %d9, 6
	addi	%d12, %d12, lo:CCPUSR_astrDaqListData
	mov.a	%a3, %d12
	addsc.a	%a2, %a3, %d11, 0
	.loc 1 395 0
	movh.a	%a14, hi:CCPUSR_au8DaqListElmVal
	.loc 1 386 0
	mov	%d2, -1
	.loc 1 395 0
	lea	%a14, [%a14] lo:CCPUSR_au8DaqListElmVal
	.loc 1 396 0
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 395 0
	addsc.a	%a14, %a14, %d15, 0
	.loc 1 386 0
	st.b	[%a2] 1, %d2
	.loc 1 389 0
	add	%d2, %d10, %d8
	st.b	[%a2]0, %d2
	.loc 1 390 0
	mov	%d2, 0
	.loc 1 392 0
	st.h	[%a2] 2, %d15
	.loc 1 390 0
	st.b	[%a2] 4, %d2
.LVL39:
	lea	%a15, [%a15] 12
	add.a	%a14, 3
	.loc 1 398 0
	mov	%d15, 0
.LVL40:
	j	.L34
.LVL41:
.L32:
	.loc 1 410 0
	call	Os_SuspendAllInterrupts
.LVL42:
	.loc 1 427 0
	ld.a	%a2, [%a12]0
	ld.bu	%d2, [%a2]0
	.loc 1 430 0
	ld.a	%a2, [%a12] 4
	.loc 1 427 0
	st.b	[%a13]0, %d2
.LVL43:
	.loc 1 430 0
	ld.bu	%d2, [%a2]0
	.loc 1 433 0
	ld.a	%a2, [%a12] 8
	.loc 1 430 0
	st.b	[%a13] 1, %d2
.LVL44:
	.loc 1 433 0
	ld.bu	%d2, [%a2]0
	.loc 1 436 0
	ld.a	%a2, [%a12] 12
	.loc 1 433 0
	st.b	[%a13] 2, %d2
.LVL45:
	.loc 1 436 0
	ld.bu	%d2, [%a2]0
	st.b	[%a13] 3, %d2
.LVL46:
.L35:
	.loc 1 441 0 discriminator 2
	ld.a	%a2, [%a15] 4
	.loc 1 398 0 discriminator 2
	add	%d15, 1
.LVL47:
	.loc 1 441 0 discriminator 2
	ld.bu	%d2, [%a2]0
	.loc 1 444 0 discriminator 2
	ld.a	%a2, [%a15] 8
	.loc 1 441 0 discriminator 2
	st.b	[%a14] 1, %d2
.LVL48:
	.loc 1 444 0 discriminator 2
	ld.bu	%d2, [%a2]0
	.loc 1 447 0 discriminator 2
	ld.a	%a2, [%a15] 12
	.loc 1 444 0 discriminator 2
	st.b	[%a14] 2, %d2
.LVL49:
	lea	%a15, [%a15] 28
.LVL50:
	.loc 1 447 0 discriminator 2
	ld.bu	%d2, [%a2]0
	st.b	[%a14] 3, %d2
.LVL51:
	.loc 1 450 0 discriminator 2
	call	Os_ResumeAllInterrupts
.LVL52:
	add.a	%a14, 7
.LVL53:
	.loc 1 398 0 discriminator 2
	jlt.u	%d8, %d15, .L38
.LVL54:
.L34:
	mov.aa	%a12, %a15
	.loc 1 401 0
	ld.w	%d9, [%a15] -12
	ld.w	%d3, [%a12+]-12
	addi	%d2, %d9, 3
	lea	%a13, [%a14] -3
.LVL55:
	jne	%d3, %d2, .L32
	.loc 1 403 0
	and	%d2, %d9, 3
	jnz	%d2, .L32
.LVL56:
	.loc 1 410 0
	call	Os_SuspendAllInterrupts
.LVL57:
	.loc 1 413 0
	mov.a	%a3, %d9
	ld.w	%d2, [%a3]0
.LVL58:
	.loc 1 417 0
	extr.u	%d3, %d2, 8, 8
	.loc 1 414 0
	st.b	[%a13]0, %d2
.LVL59:
	.loc 1 417 0
	st.b	[%a13] 1, %d3
.LVL60:
	.loc 1 420 0
	extr.u	%d3, %d2, 16, 8
	.loc 1 423 0
	extr.u	%d2, %d2, 24, 8
.LVL61:
	.loc 1 420 0
	st.b	[%a13] 2, %d3
.LVL62:
	.loc 1 423 0
	st.b	[%a13] 3, %d2
	j	.L35
.LVL63:
.L38:
	.loc 1 453 0
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d11, 0
	st.b	[%a15] 1, %d10
	ret
.LFE3:
	.size	CCP_vidUsrDaqListTxMgrInit, .-CCP_vidUsrDaqListTxMgrInit
	.align 1
	.global	CCP_bUsrDaqListTxMgr
	.type	CCP_bUsrDaqListTxMgr, @function
CCP_bUsrDaqListTxMgr:
.LFB4:
	.loc 1 468 0
.LVL64:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 468 0
	mov	%d15, %d4
.LVL65:
	.loc 1 485 0
	call	Os_SuspendOSInterrupts
.LVL66:
	.loc 1 486 0
	movh.a	%a13, hi:CCPUSR_vu8DaqListPrio
	ld.bu	%d2, [%a13] lo:CCPUSR_vu8DaqListPrio
.LVL67:
	.loc 1 487 0
	jge.u	%d2, %d15, .L40
	.loc 1 489 0
	movh.a	%a15, hi:CCPUSR_astrDaqListData
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CCPUSR_astrDaqListData
.LVL68:
	madd	%d3, %d2, %d15, 6
	mov	%d15, 1
.LVL69:
	mov.a	%a15, %d3
	st.b	[%a15] 4, %d15
.LVL70:
	.loc 1 492 0
	call	Os_ResumeOSInterrupts
.LVL71:
	.loc 1 495 0
	mov	%d2, 0
	ret
.LVL72:
.L40:
	.loc 1 492 0
	call	Os_ResumeOSInterrupts
.LVL73:
	.loc 1 497 0
	mul	%d9, %d15, 6
	movh.a	%a12, hi:CCPUSR_astrDaqListData
	lea	%a12, [%a12] lo:CCPUSR_astrDaqListData
	addsc.a	%a2, %a12, %d9, 0
	.loc 1 502 0
	lea	%a4, [%SP] 9
	.loc 1 497 0
	ld.hu	%d8, [%a2] 2
.LVL74:
	.loc 1 498 0
	addi	%d2, %d8, 7
	st.h	[%a2] 2, %d2
.LVL75:
	.loc 1 502 0
	mov	%e4, %d8, %d15
	call	SPY_bWrOdt
.LVL76:
	jnz	%d2, .L46
	.loc 1 506 0
	movh.a	%a15, hi:CCPUSR_au8DaqListElmVal
	lea	%a15, [%a15] lo:CCPUSR_au8DaqListElmVal
	addsc.a	%a15, %a15, %d8, 0
.LVL77:
	.loc 1 508 0
	ld.bu	%d2, [%a15]0
	st.b	[%SP] 9, %d2
.LVL78:
	.loc 1 511 0
	ld.bu	%d2, [%a15] 1
	st.b	[%SP] 10, %d2
.LVL79:
	.loc 1 514 0
	ld.bu	%d2, [%a15] 2
	st.b	[%SP] 11, %d2
.LVL80:
	.loc 1 517 0
	ld.bu	%d2, [%a15] 3
	st.b	[%SP] 12, %d2
.LVL81:
	.loc 1 520 0
	ld.bu	%d2, [%a15] 4
	st.b	[%SP] 13, %d2
.LVL82:
	.loc 1 523 0
	ld.bu	%d2, [%a15] 5
	st.b	[%SP] 14, %d2
.LVL83:
	.loc 1 526 0
	ld.bu	%d2, [%a15] 6
	st.b	[%SP] 15, %d2
.LVL84:
.L46:
	.loc 1 554 0
	addsc.a	%a15, %a12, %d9, 0
	lea	%a4, [%SP] 16
	ld.bu	%d2, [%a15] 1
	.loc 1 555 0
	mov	%d4, %d15
	.loc 1 554 0
	addi	%d3, %d2, 1
	st.b	[%a15] 1, %d3
	st.b	[+%a4]-8, %d2
	.loc 1 555 0
	call	CCPUSR_vidSendDaqMessage
.LVL85:
	.loc 1 557 0
	ld.bu	%d3, [%a15] 1
	ld.bu	%d4, [%a15]0
	.loc 1 564 0
	mov	%d2, 0
	.loc 1 557 0
	jlt.u	%d4, %d3, .L51
.LVL86:
.L50:
	.loc 1 566 0
	ret
.LVL87:
.L51:
.LBB4:
.LBB5:
	.loc 1 604 0
	add	%d15, 1
.LVL88:
	.loc 1 603 0
	call	Os_SuspendOSInterrupts
.LVL89:
	.loc 1 604 0
	jge	%d15, 3, .L42
.LVL90:
	.loc 1 607 0
	mul	%d2, %d15, 6
	addsc.a	%a15, %a12, %d2, 0
	ld.bu	%d3, [%a15] 1
	ld.bu	%d4, [%a15]0
	jge.u	%d4, %d3, .L44
.LVL91:
	.loc 1 604 0
	jne	%d15, 1, .L42
.LVL92:
	.loc 1 607 0
	ld.bu	%d2, [%a12] 12
	ld.bu	%d15, [%a12] 13
.LVL93:
	jge.u	%d2, %d15, .L49
.LVL94:
.L42:
	.loc 1 620 0
	mov	%d15, -1
	st.b	[%a13] lo:CCPUSR_vu8DaqListPrio, %d15
	.loc 1 621 0
	call	Os_ResumeOSInterrupts
.LVL95:
.LBE5:
.LBE4:
	.loc 1 560 0
	mov	%d2, 1
	ret
.LVL96:
.L49:
.LBB8:
.LBB6:
	.loc 1 604 0
	mov	%d15, 2
	mov	%d2, 12
.LVL97:
.L44:
	.loc 1 610 0
	addsc.a	%a12, %a12, %d2, 0
	.loc 1 611 0
	mov	%d2, 0
	.loc 1 610 0
	ld.bu	%d8, [%a12] 4
.LVL98:
	.loc 1 609 0
	and	%d15, 255
	.loc 1 611 0
	st.b	[%a12] 4, %d2
.LVL99:
	.loc 1 609 0
	st.b	[%a13] lo:CCPUSR_vu8DaqListPrio, %d15
	.loc 1 612 0
	call	Os_ResumeOSInterrupts
.LVL100:
.LBE6:
.LBE8:
	.loc 1 560 0
	mov	%d2, 1
.LBB9:
.LBB7:
	.loc 1 613 0
	jne	%d8, 1, .L50
	.loc 1 615 0
	mov	%d4, %d15
	st.w	[%SP] 4, %d2
	call	CCP_vidDaqListTxMgr
.LVL101:
	ld.w	%d2, [%SP] 4
	ret
.LBE7:
.LBE9:
.LFE4:
	.size	CCP_bUsrDaqListTxMgr, .-CCP_bUsrDaqListTxMgr
	.align 1
	.global	CCP_vidUsrDaqListStopd
	.type	CCP_vidUsrDaqListStopd, @function
CCP_vidUsrDaqListStopd:
.LFB5:
	.loc 1 578 0
.LVL102:
	.loc 1 579 0
	movh.a	%a15, hi:CCPUSR_astrDaqListData
	lea	%a15, [%a15] lo:CCPUSR_astrDaqListData
	addsc.a	%a2, %a15, %d4, 2
	addsc.a	%a2, %a2, %d4, 1
	mov	%d2, -1
	st.b	[%a2] 1, %d2
	.loc 1 578 0
	mov	%d15, %d4
	.loc 1 582 0
	call	SPY_vidDaqListStopd
.LVL103:
.LBB12:
.LBB13:
	.loc 1 603 0
	call	Os_SuspendOSInterrupts
.LVL104:
	.loc 1 604 0
	add	%d4, %d15, 1
.LVL105:
	jge	%d4, 3, .L53
.LVL106:
	.loc 1 607 0
	mul	%d15, %d4, 6
.LVL107:
	addsc.a	%a2, %a15, %d15, 0
	ld.bu	%d2, [%a2] 1
	ld.bu	%d3, [%a2]0
	jge.u	%d3, %d2, .L56
.LVL108:
	.loc 1 604 0
	jne	%d4, 1, .L53
.LVL109:
	.loc 1 607 0
	ld.bu	%d15, [%a15] 13
	ld.bu	%d2, [%a15] 12
	jge.u	%d2, %d15, .L57
.LVL110:
.L53:
	.loc 1 620 0
	mov	%d15, -1
	movh.a	%a15, hi:CCPUSR_vu8DaqListPrio
	st.b	[%a15] lo:CCPUSR_vu8DaqListPrio, %d15
	.loc 1 621 0
	j	Os_ResumeOSInterrupts
.LVL111:
.L57:
	.loc 1 604 0
	mov	%d4, 2
.LVL112:
	mov	%d15, 12
.LVL113:
.L56:
	.loc 1 610 0
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 611 0
	mov	%d2, 0
	.loc 1 610 0
	ld.bu	%d15, [%a15] 4
.LVL114:
	.loc 1 609 0
	and	%d8, %d4, 255
	movh.a	%a2, hi:CCPUSR_vu8DaqListPrio
	.loc 1 611 0
	st.b	[%a15] 4, %d2
.LVL115:
	.loc 1 609 0
	st.b	[%a2] lo:CCPUSR_vu8DaqListPrio, %d8
	.loc 1 612 0
	call	Os_ResumeOSInterrupts
.LVL116:
	.loc 1 613 0
	jeq	%d15, 1, .L58
	ret
.L58:
	.loc 1 615 0
	mov	%d4, %d8
	j	CCP_vidDaqListTxMgr
.LVL117:
.LBE13:
.LBE12:
.LFE5:
	.size	CCP_vidUsrDaqListStopd, .-CCP_vidUsrDaqListStopd
	.align 1
	.global	CCP_vidUsrDaqListTxOvrn
	.type	CCP_vidUsrDaqListTxOvrn, @function
CCP_vidUsrDaqListTxOvrn:
.LFB7:
	.loc 1 634 0
.LVL118:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 638 0
	mov	%d15, -2
	st.b	[%SP]0, %d15
	.loc 1 641 0
	mov.aa	%a4, %SP
	.loc 1 639 0
	mov	%d15, 1
	st.b	[%SP] 1, %d15
	.loc 1 640 0
	st.b	[%SP] 2, %d4
	.loc 1 641 0
	j	CCPUSR_vidSendDaqMessage
.LVL119:
.LFE7:
	.size	CCP_vidUsrDaqListTxOvrn, .-CCP_vidUsrDaqListTxOvrn
.section .data_cpu0.CCPUSR_vu8DaqListPrio,"aw",@progbits
	.type	CCPUSR_vu8DaqListPrio, @object
	.size	CCPUSR_vu8DaqListPrio, 1
CCPUSR_vu8DaqListPrio:
	.byte	-1
.section .data_cpu0.CCPUSR_u8DaqListInvalidData,"aw",@progbits
	.type	CCPUSR_u8DaqListInvalidData, @object
	.size	CCPUSR_u8DaqListInvalidData, 1
CCPUSR_u8DaqListInvalidData:
	.zero	1
.section .data_cpu0.CCPUSR_astrDaqListData,"aw",@progbits
	.align 1
	.type	CCPUSR_astrDaqListData, @object
	.size	CCPUSR_astrDaqListData, 18
CCPUSR_astrDaqListData:
	.zero	18
.section .data_cpu0.CCPUSR_au8DaqListElmVal,"aw",@progbits
	.type	CCPUSR_au8DaqListElmVal, @object
	.size	CCPUSR_au8DaqListElmVal, 322
CCPUSR_au8DaqListElmVal:
	.zero	322
	.global	CCPUSR_strDaqListDynCfg
.section .data_cpu0.CCPUSR_strDaqListDynCfg,"aw",@progbits
	.align 2
	.type	CCPUSR_strDaqListDynCfg, @object
	.size	CCPUSR_strDaqListDynCfg, 1612
CCPUSR_strDaqListDynCfg:
	.zero	1612
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
	.byte	0x4
	.uaword	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x10
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
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.byte	0x4
	.uaword	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Srv.h"
	.file 5 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
	.file 8 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\CCP\\SPY\\SPY.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xea8
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1c5
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
	.uaword	0x1f1
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
	.uaword	0x22d
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x298
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x298
	.uleb128 0x3
	.string	"CCP_tudtCmdSts"
	.byte	0x3
	.byte	0x3f
	.uaword	0x285
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x46
	.uaword	0x302
	.uleb128 0x5
	.string	"u32Adr"
	.byte	0x3
	.byte	0x48
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8Extn"
	.byte	0x3
	.byte	0x49
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrMta"
	.byte	0x3
	.byte	0x4b
	.uaword	0x2d7
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0x4d
	.uaword	0x33e
	.uleb128 0x5
	.string	"u8NoOdt"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x50
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrDaqListStatCfg"
	.byte	0x3
	.byte	0x53
	.uaword	0x315
	.uleb128 0x7
	.uaword	0x1b8
	.uaword	0x36c
	.uleb128 0x8
	.uaword	0x36c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x3a7
	.uleb128 0xa
	.string	"u8PktId"
	.byte	0x4
	.uahalf	0x2c2
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"au8Prm"
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x7
	.uaword	0x1b8
	.uaword	0x3b7
	.uleb128 0x8
	.uaword	0x36c
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrDaqTxObj"
	.byte	0x4
	.uahalf	0x2c5
	.uaword	0x378
	.uleb128 0x7
	.uaword	0x21f
	.uaword	0x3e0
	.uleb128 0x8
	.uaword	0x36c
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.uaword	0x1b8
	.uaword	0x3f0
	.uleb128 0x8
	.uaword	0x36c
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x42a
	.uleb128 0xd
	.string	"au32Data"
	.byte	0x4
	.uahalf	0x2e2
	.uaword	0x3d0
	.uleb128 0xd
	.string	"au8Data"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x3e0
	.uleb128 0xd
	.string	"uniDaq"
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x3b7
	.byte	0
	.uleb128 0xb
	.string	"CCP_tuniDaqMsgBuf"
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0x3f0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1b8
	.uleb128 0xf
	.uahalf	0x64c
	.byte	0x5
	.byte	0x43
	.uaword	0x48d
	.uleb128 0x5
	.string	"apu8DaqListElmAdr"
	.byte	0x5
	.byte	0x45
	.uaword	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"au8DaqListElmSize"
	.byte	0x5
	.byte	0x47
	.uaword	0x49e
	.byte	0x3
	.byte	0x23
	.uleb128 0x508
	.byte	0
	.uleb128 0x7
	.uaword	0x444
	.uaword	0x49e
	.uleb128 0x10
	.uaword	0x36c
	.uahalf	0x141
	.byte	0
	.uleb128 0x7
	.uaword	0x1b8
	.uaword	0x4af
	.uleb128 0x10
	.uaword	0x36c
	.uahalf	0x141
	.byte	0
	.uleb128 0x3
	.string	"CCPUSR_tstrDaqListDynCfg"
	.byte	0x5
	.byte	0x54
	.uaword	0x44a
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.byte	0x57
	.uaword	0x4f6
	.uleb128 0x12
	.string	"au8Data"
	.byte	0x5
	.byte	0x59
	.uaword	0x35c
	.uleb128 0x12
	.string	"u32Data"
	.byte	0x5
	.byte	0x5a
	.uaword	0x21f
	.byte	0
	.uleb128 0x3
	.string	"CCP_tuniCopyData"
	.byte	0x5
	.byte	0x5c
	.uaword	0x4cf
	.uleb128 0xe
	.byte	0x4
	.uaword	0x514
	.uleb128 0x13
	.uaword	0x1b8
	.uleb128 0xe
	.byte	0x4
	.uaword	0x21f
	.uleb128 0x4
	.byte	0x6
	.byte	0x1
	.byte	0x5a
	.uaword	0x578
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5c
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8OdtToTxIdx"
	.byte	0x1
	.byte	0x5d
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"u16ElmToTxIdx"
	.byte	0x1
	.byte	0x5e
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"bTxSuspd"
	.byte	0x1
	.byte	0x5f
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCPUSR_tstrDaqListData"
	.byte	0x1
	.byte	0x61
	.uaword	0x51f
	.uleb128 0x14
	.byte	0x1
	.string	"CCPUSR_vidDaqListIni"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5d0
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa7
	.uaword	0x1b8
	.uaword	.LLST0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"CCP_vidUsrDaqListClr"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x66e
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.byte	0xd8
	.uaword	0x1b8
	.uaword	.LLST1
	.uleb128 0x17
	.string	"pkstr8LocalDaqListStatCfg"
	.byte	0x1
	.byte	0xdb
	.uaword	0x66e
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.byte	0xdd
	.uaword	0x2ad
	.uaword	.LLST2
	.uleb128 0x18
	.string	"u16LocalLastElmIdx"
	.byte	0x1
	.byte	0xdf
	.uaword	0x2ad
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"u16LocalElmIdx"
	.byte	0x1
	.byte	0xe1
	.uaword	0x2ad
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x674
	.uleb128 0x13
	.uaword	0x33e
	.uleb128 0x19
	.byte	0x1
	.string	"CCP_udtUsrWrDaqElmCfg"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.uaword	0x2c1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7b6
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x102
	.uaword	0x1b8
	.uaword	.LLST3
	.uleb128 0x1b
	.string	"u8OdtIdx"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x1b8
	.uaword	.LLST4
	.uleb128 0x1b
	.string	"u8ElmIdx"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x1b8
	.uaword	.LLST5
	.uleb128 0x1c
	.string	"pkstrMta"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x7b6
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.string	"u8ElmSize"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x1b8
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x114
	.uaword	0x2ad
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x115
	.uaword	0x7c1
	.byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	CCPUSR_strDaqListDynCfg
	.byte	0x22
	.byte	0x9f
	.uleb128 0x1e
	.string	"pu8LocalElmSize"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x444
	.uaword	.LLST6
	.uleb128 0x1e
	.string	"u8LocalNrOfElmUsed"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x285
	.uaword	.LLST7
	.uleb128 0x1f
	.string	"u8LocalIdx"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x285
	.uleb128 0x1e
	.string	"u8LocalElmToUpdIdx"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x285
	.uaword	.LLST8
	.uleb128 0x1e
	.string	"pu8LocalData"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x444
	.uaword	.LLST9
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x7bc
	.uleb128 0x13
	.uaword	0x302
	.uleb128 0xe
	.byte	0x4
	.uaword	0x444
	.uleb128 0x20
	.byte	0x1
	.string	"CCP_vidUsrDaqListTxMgrInit"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x937
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x1b8
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1b8
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x162
	.uaword	0x1b8
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x165
	.uaword	0x1b8
	.uaword	.LLST13
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x166
	.uaword	0x937
	.uaword	.LLST14
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x168
	.uaword	0x2ad
	.uaword	.LLST15
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x7c1
	.uaword	.LLST16
	.uleb128 0x21
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x444
	.uaword	.LLST17
	.uleb128 0x1e
	.string	"u8LocalOdtIdx"
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x285
	.uaword	.LLST18
	.uleb128 0x1e
	.string	"bLocalVar32bit"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x26a
	.uaword	.LLST19
	.uleb128 0x1e
	.string	"udtLocalVar"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x4f6
	.uaword	.LLST20
	.uleb128 0x1e
	.string	"pu32LocalVar32bit"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x519
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	.LVL35
	.uaword	0xd64
	.uaword	0x909
	.uleb128 0x23
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL36
	.uaword	0xd98
	.uleb128 0x24
	.uaword	.LVL38
	.uaword	0xdb6
	.uleb128 0x24
	.uaword	.LVL42
	.uaword	0xdd3
	.uleb128 0x24
	.uaword	.LVL52
	.uaword	0xdf2
	.uleb128 0x24
	.uaword	.LVL57
	.uaword	0xdd3
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x578
	.uleb128 0x25
	.string	"CCPUSR_vidDaqListSrchNextActvDaqList"
	.byte	0x1
	.uahalf	0x24e
	.byte	0x1
	.byte	0x1
	.uaword	0x99d
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x253
	.uaword	0x1b8
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x256
	.uaword	0x285
	.uleb128 0x27
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x257
	.uaword	0x937
	.uleb128 0x27
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x258
	.uaword	0x26a
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"CCP_bUsrDaqListTxMgr"
	.byte	0x1
	.uahalf	0x1cd
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LLST22
	.byte	0x1
	.uaword	0xb13
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x1b8
	.uaword	.LLST23
	.uleb128 0x21
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x1b8
	.uaword	.LLST24
	.uleb128 0x21
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x26a
	.uaword	.LLST25
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x937
	.uaword	.LLST26
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x2ad
	.uaword	.LLST27
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x42a
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x444
	.uaword	.LLST28
	.uleb128 0x1e
	.string	"pu8LocalBufSrc"
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x444
	.uaword	.LLST29
	.uleb128 0x29
	.uaword	0x93d
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x22f
	.uaword	0xac1
	.uleb128 0x2a
	.uaword	0x96c
	.uaword	.LLST30
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2c
	.uaword	0x978
	.uaword	.LLST31
	.uleb128 0x2c
	.uaword	0x984
	.uaword	.LLST32
	.uleb128 0x2c
	.uaword	0x990
	.uaword	.LLST33
	.uleb128 0x24
	.uaword	.LVL89
	.uaword	0xd98
	.uleb128 0x24
	.uaword	.LVL95
	.uaword	0xdb6
	.uleb128 0x24
	.uaword	.LVL100
	.uaword	0xdb6
	.uleb128 0x2d
	.uaword	.LVL101
	.uaword	0xe10
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL66
	.uaword	0xd98
	.uleb128 0x24
	.uaword	.LVL71
	.uaword	0xdb6
	.uleb128 0x24
	.uaword	.LVL73
	.uaword	0xdb6
	.uleb128 0x22
	.uaword	.LVL76
	.uaword	0xe34
	.uaword	0xafc
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -7
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL85
	.uaword	0xe5d
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"CCP_vidUsrDaqListStopd"
	.byte	0x1
	.uahalf	0x23b
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbd1
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x240
	.uaword	0x1b8
	.uaword	.LLST34
	.uleb128 0x2e
	.uaword	0x93d
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.uahalf	0x248
	.uaword	0xbc0
	.uleb128 0x2a
	.uaword	0x96c
	.uaword	.LLST35
	.uleb128 0x2f
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x2c
	.uaword	0x978
	.uaword	.LLST36
	.uleb128 0x2c
	.uaword	0x984
	.uaword	.LLST37
	.uleb128 0x2c
	.uaword	0x990
	.uaword	.LLST38
	.uleb128 0x24
	.uaword	.LVL104
	.uaword	0xd98
	.uleb128 0x30
	.uaword	.LVL111
	.byte	0x1
	.uaword	0xdb6
	.uleb128 0x24
	.uaword	.LVL116
	.uaword	0xdb6
	.uleb128 0x31
	.uaword	.LVL117
	.byte	0x1
	.uaword	0xe10
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL103
	.uaword	0xe8b
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"CCP_vidUsrDaqListTxOvrn"
	.byte	0x1
	.uahalf	0x273
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LLST39
	.byte	0x1
	.uaword	0xc31
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x278
	.uaword	0x1b8
	.uaword	.LLST40
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x42a
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x31
	.uaword	.LVL119
	.byte	0x1
	.uaword	0xe5d
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"CCPUSR_au8DaqListElmVal"
	.byte	0x1
	.byte	0x87
	.uaword	0x49e
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_au8DaqListElmVal
	.uleb128 0x7
	.uaword	0x578
	.uaword	0xc66
	.uleb128 0x8
	.uaword	0x36c
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.string	"CCPUSR_astrDaqListData"
	.byte	0x1
	.byte	0x8a
	.uaword	0xc56
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.uleb128 0x18
	.string	"CCPUSR_u8DaqListInvalidData"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1b8
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_u8DaqListInvalidData
	.uleb128 0x18
	.string	"CCPUSR_vu8DaqListPrio"
	.byte	0x1
	.byte	0x90
	.uaword	0xcd6
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_vu8DaqListPrio
	.uleb128 0x33
	.uaword	0x1b8
	.uleb128 0x7
	.uaword	0x1b8
	.uaword	0xceb
	.uleb128 0x8
	.uaword	0x36c
	.byte	0xb
	.byte	0
	.uleb128 0x34
	.string	"CCP_kaudtDevId"
	.byte	0x6
	.byte	0x81
	.uaword	0xd03
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.uaword	0xcdb
	.uleb128 0x7
	.uaword	0x33e
	.uaword	0xd18
	.uleb128 0x8
	.uaword	0x36c
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.string	"CCP_kastrDaqListStatCfg"
	.byte	0x7
	.byte	0xfd
	.uaword	0xd39
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.uaword	0xd08
	.uleb128 0x35
	.string	"CCPUSR_strDaqListDynCfg"
	.byte	0x1
	.byte	0x7f
	.uaword	0x4af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_strDaqListDynCfg
	.uleb128 0x36
	.byte	0x1
	.string	"SPY_vidDaqListTxInit"
	.byte	0x9
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0xd98
	.uleb128 0x37
	.uaword	0x1b8
	.uleb128 0x37
	.uaword	0x7c1
	.uleb128 0x37
	.uaword	0x1e3
	.uleb128 0x37
	.uaword	0x1b8
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"Os_SuspendOSInterrupts"
	.byte	0x8
	.uahalf	0x413
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"Os_ResumeOSInterrupts"
	.byte	0x8
	.uahalf	0x414
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"Os_SuspendAllInterrupts"
	.byte	0x8
	.uahalf	0x411
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"Os_ResumeAllInterrupts"
	.byte	0x8
	.uahalf	0x412
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"CCP_vidDaqListTxMgr"
	.byte	0xa
	.byte	0xc2
	.byte	0x1
	.byte	0x1
	.uaword	0xe34
	.uleb128 0x37
	.uaword	0x1b8
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"SPY_bWrOdt"
	.byte	0x9
	.byte	0x3f
	.byte	0x1
	.uaword	0x26a
	.byte	0x1
	.uaword	0xe5d
	.uleb128 0x37
	.uaword	0x1b8
	.uleb128 0x37
	.uaword	0x1e3
	.uleb128 0x37
	.uaword	0x444
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"CCPUSR_vidSendDaqMessage"
	.byte	0x5
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uaword	0xe8b
	.uleb128 0x37
	.uaword	0x1b8
	.uleb128 0x37
	.uaword	0x50e
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"SPY_vidDaqListStopd"
	.byte	0x9
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.uaword	0x1b8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.text
	.uaword	.LVL1-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL3-.text
	.uaword	.LFE0-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-.text
	.uaword	.LFE1-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.text
	.uaword	.LVL9-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11-.text
	.uaword	.LVL12-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12-.text
	.uaword	.LFE2-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11-.text
	.uaword	.LVL13-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13-.text
	.uaword	.LFE2-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11-.text
	.uaword	.LVL16-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18-.text
	.uaword	.LVL27-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL27-.text
	.uaword	.LVL30-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL30-.text
	.uaword	.LVL32-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL32-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15-.text
	.uaword	.LVL25-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL25-.text
	.uaword	.LVL27-.text
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x508
	.byte	0x9f
	.uaword	.LVL27-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19-.text
	.uaword	.LVL20-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20-.text
	.uaword	.LVL23-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28-.text
	.uaword	.LVL30-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL21-.text
	.uaword	.LVL23-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22-.text
	.uaword	.LVL24-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24-.text
	.uaword	.LVL26-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31-.text
	.uaword	.LVL32-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL33-.text
	.uaword	.LVL35-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35-1-.text
	.uaword	.LFE3-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34-.text
	.uaword	.LFE3-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL33-.text
	.uaword	.LVL35-1-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL35-1-.text
	.uaword	.LFE3-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL37-.text
	.uaword	.LVL38-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL38-.text
	.uaword	.LVL41-.text
	.uahalf	0xb
	.byte	0x79
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40-.text
	.uaword	.LFE3-.text
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x37
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	CCPUSR_strDaqListDynCfg
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0xd
	.byte	0x7a
	.sleb128 0
	.byte	0x37
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	CCPUSR_strDaqListDynCfg
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41-.text
	.uaword	.LVL43-.text
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x3
	.byte	0x8c
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x3
	.byte	0x8c
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL45-.text
	.uaword	.LVL46-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46-.text
	.uaword	.LVL48-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL48-.text
	.uaword	.LVL49-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 12
	.byte	0x9f
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x3
	.byte	0x8c
	.sleb128 24
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LVL59-.text
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x3
	.byte	0x8c
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL60-.text
	.uaword	.LVL62-.text
	.uahalf	0x3
	.byte	0x8c
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL62-.text
	.uaword	.LVL63-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	CCPUSR_au8DaqListElmVal
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x37
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_au8DaqListElmVal
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41-.text
	.uaword	.LVL43-.text
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x3
	.byte	0x8d
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL45-.text
	.uaword	.LVL46-.text
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL46-.text
	.uaword	.LVL48-.text
	.uahalf	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL48-.text
	.uaword	.LVL49-.text
	.uahalf	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL49-.text
	.uaword	.LVL51-.text
	.uahalf	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL51-.text
	.uaword	.LVL53-.text
	.uahalf	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LVL54-.text
	.uahalf	0x3
	.byte	0x8d
	.sleb128 7
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LVL59-.text
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL60-.text
	.uaword	.LVL62-.text
	.uahalf	0x3
	.byte	0x8d
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL62-.text
	.uaword	.LVL63-.text
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL63-.text
	.uaword	.LFE3-.text
	.uahalf	0x3
	.byte	0x8d
	.sleb128 7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL39-.text
	.uaword	.LVL41-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41-.text
	.uaword	.LVL47-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47-.text
	.uaword	.LVL52-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL52-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55-.text
	.uaword	.LFE3-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL33-.text
	.uaword	.LVL46-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LVL63-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL58-.text
	.uaword	.LVL61-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LVL63-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LFB4-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL64-.text
	.uaword	.LVL66-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66-1-.text
	.uaword	.LFE4-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72-.text
	.uaword	.LVL73-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL65-.text
	.uaword	.LVL70-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70-.text
	.uaword	.LVL72-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL72-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL65-.text
	.uaword	.LVL66-1-.text
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL66-1-.text
	.uaword	.LVL69-.text
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL72-.text
	.uaword	.LVL86-.text
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL87-.text
	.uaword	.LVL88-.text
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL88-.text
	.uaword	.LVL93-.text
	.uahalf	0xb
	.byte	0x7f
	.sleb128 -1
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL74-.text
	.uaword	.LVL86-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL87-.text
	.uaword	.LVL98-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL75-.text
	.uaword	.LVL76-1-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76-1-.text
	.uaword	.LVL78-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -7
	.byte	0x9f
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -6
	.byte	0x9f
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -5
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -3
	.byte	0x9f
	.uaword	.LVL82-.text
	.uaword	.LVL83-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LVL84-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL82-.text
	.uaword	.LVL83-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LVL84-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 6
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL87-.text
	.uaword	.LVL88-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88-.text
	.uaword	.LVL93-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL89-.text
	.uaword	.LVL91-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91-.text
	.uaword	.LVL93-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL90-.text
	.uaword	.LVL92-.text
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL92-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData+12
	.byte	0x9f
	.uaword	.LVL96-.text
	.uaword	.LVL97-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData+12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL98-.text
	.uaword	.LVL99-.text
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	.LVL99-.text
	.uaword	.LFE4-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL102-.text
	.uaword	.LVL103-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL103-1-.text
	.uaword	.LFE5-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL103-.text
	.uaword	.LVL107-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107-.text
	.uaword	.LVL111-1-.text
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL111-.text
	.uaword	.LVL112-.text
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL105-.text
	.uaword	.LVL108-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL108-.text
	.uaword	.LVL110-.text
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL111-.text
	.uaword	.LVL112-.text
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL106-.text
	.uaword	.LVL109-.text
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL109-.text
	.uaword	.LVL110-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData+12
	.byte	0x9f
	.uaword	.LVL111-.text
	.uaword	.LVL113-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	CCPUSR_astrDaqListData+12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL114-.text
	.uaword	.LVL115-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL115-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LFB7-.text
	.uaword	.LCFI1-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1-.text
	.uaword	.LFE7-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL118-.text
	.uaword	.LVL119-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL119-1-.text
	.uaword	.LFE7-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	.LBB8-.Ltext0
	.uaword	.LBE8-.Ltext0
	.uaword	.LBB9-.Ltext0
	.uaword	.LBE9-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"pstrLocalDaqListData"
.LASF3:
	.string	"u16LocalFirstElmIdx"
.LASF6:
	.string	"u8LocalListPrio"
.LASF8:
	.string	"pu8LocalBufDst"
.LASF0:
	.string	"u8FirstPid"
.LASF10:
	.string	"uniLocalDaqBuf"
.LASF9:
	.string	"bLocalTxSuspd"
.LASF1:
	.string	"u8OdtLstIdx"
.LASF5:
	.string	"ppu8LocalElmAdr"
.LASF2:
	.string	"u8LocalListIdx"
.LASF4:
	.string	"u8ListIdx"
	.extern	SPY_vidDaqListStopd,STT_FUNC,0
	.extern	CCP_vidDaqListTxMgr,STT_FUNC,0
	.extern	CCPUSR_vidSendDaqMessage,STT_FUNC,0
	.extern	SPY_bWrOdt,STT_FUNC,0
	.extern	Os_ResumeAllInterrupts,STT_FUNC,0
	.extern	Os_SuspendAllInterrupts,STT_FUNC,0
	.extern	Os_ResumeOSInterrupts,STT_FUNC,0
	.extern	Os_SuspendOSInterrupts,STT_FUNC,0
	.extern	SPY_vidDaqListTxInit,STT_FUNC,0
	.extern	CCP_kastrDaqListStatCfg,STT_OBJECT,6
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
