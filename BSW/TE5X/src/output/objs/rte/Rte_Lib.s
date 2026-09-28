	.file	"Rte_Lib.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Rte_ActivateRE,"ax",@progbits
	.align 1
	.global	Rte_ActivateRE
	.type	Rte_ActivateRE, @function
Rte_ActivateRE:
.LFB19:
	.file 1 "rte\\Rte_Lib.c"
	.loc 1 161 0
.LVL0:
	.loc 1 165 0
	ld.a	%a15, [%a4] 4
	jz.a	%a15, .L2
	.loc 1 167 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.L2:
	.loc 1 170 0
	ld.a	%a4, [%a4]0
.LVL1:
	.loc 1 162 0
	mov	%d2, 0
	.loc 1 170 0
	jz.a	%a4, .L3
.LBB14:
	.loc 1 180 0
	call	Os_ActivateTask
.LVL2:
	.loc 1 181 0
	and	%d2, %d2, 251
.LVL3:
.LBE14:
	.loc 1 162 0
	ne	%d2, %d2, 0
.L3:
.LVL4:
	.loc 1 192 0
	ret
.LFE19:
	.size	Rte_ActivateRE, .-Rte_ActivateRE
.section .text.Rte_DecrementWaitingCount,"ax",@progbits
	.align 1
	.global	Rte_DecrementWaitingCount
	.type	Rte_DecrementWaitingCount, @function
Rte_DecrementWaitingCount:
.LFB20:
	.loc 1 220 0
.LVL5:
	ret
.LFE20:
	.size	Rte_DecrementWaitingCount, .-Rte_DecrementWaitingCount
.section .text.Rte_GetCurrentTaskIndex,"ax",@progbits
	.align 1
	.global	Rte_GetCurrentTaskIndex
	.type	Rte_GetCurrentTaskIndex, @function
Rte_GetCurrentTaskIndex:
.LFB21:
	.loc 1 243 0
.LVL6:
	.loc 1 247 0
	mov	%d2, 20
	ret
.LFE21:
	.size	Rte_GetCurrentTaskIndex, .-Rte_GetCurrentTaskIndex
.section .text.Rte_MainFunction,"ax",@progbits
	.align 1
	.global	Rte_MainFunction
	.type	Rte_MainFunction, @function
Rte_MainFunction:
.LFB22:
	.loc 1 269 0
	ret
.LFE22:
	.size	Rte_MainFunction, .-Rte_MainFunction
.section .text.Rte_ReadQueue,"ax",@progbits
	.align 1
	.global	Rte_ReadQueue
	.type	Rte_ReadQueue, @function
Rte_ReadQueue:
.LFB23:
	.loc 1 295 0
.LVL7:
	.loc 1 297 0
	ld.a	%a15, [%a4]0
.LVL8:
	.loc 1 295 0
	mov.aa	%a13, %a4
	mov.aa	%a12, %a5
	.loc 1 302 0
	call	Os_SuspendOSInterrupts
.LVL9:
	.loc 1 304 0
	ld.hu	%d15, [%a15] 8
	jnz	%d15, .L14
	.loc 1 306 0
	ld.bu	%d2, [%a15] 10
	eq	%d2, %d2, 128
	.loc 1 308 0
	sel	%d15, %d2, %d15, 131
.LVL10:
	.loc 1 328 0
	call	Os_ResumeOSInterrupts
.LVL11:
	.loc 1 331 0
	ld.bu	%d2, [%a15] 10
	or	%d15, %d2
.LVL12:
	.loc 1 332 0
	mov	%d2, 0
	st.b	[%a15] 10, %d2
	.loc 1 335 0
	and	%d2, %d15, 255
	ret
.LVL13:
.L14:
	.loc 1 316 0
	ld.a	%a2, [%a15] 4
	ld.hu	%d2, [%a13] 8
.LVL14:
.LBB15:
.LBB16:
	.loc 1 653 0
	mov	%d4, 0
	addi	%d3, %d2, -1
	extr.u	%d3, %d3, 0, 16
.LVL15:
	mov.d	%d5, %a2
	jz	%d2, .L16
	mov.d	%d4, %a12
	mov.d	%d6, %a2
	add	%d4, 4
	mov.d	%d7, %a12
	ge.u	%d15, %d6, %d4
	add	%d5, 4
	or.ge.u	%d15, %d7, %d5
	ge.u	%d4, %d2, 10
	and	%d4, %d15
	mov.d	%d15, %a12
	or	%d15, %d6
	and	%d15, %d15, 3
	eq	%d15, %d15, 0
	and	%d15, %d4
	jz	%d15, .L17
.LVL16:
	addi	%d6, %d2, -4
	extr.u	%d6, %d6, 2, 14
	add	%d6, 1
	sh	%d15, %d6, 2
	extr.u	%d15, %d15, 0, 16
	jlt.u	%d3, 3, .L18
	mov.aa	%a4, %a2
	mov.aa	%a3, %a12
	mov	%d4, 0
.LVL17:
.L19:
	.loc 1 655 0
	ld.w	%d5, [%a4+]4
	add	%d4, 1
	st.w	[%a3+]4, %d5
	extr.u	%d5, %d4, 0, 16
	jlt.u	%d5, %d6, .L19
	sub	%d3, %d15
	addsc.a	%a12, %a12, %d15, 0
.LVL18:
	addsc.a	%a2, %a2, %d15, 0
.LVL19:
	extr.u	%d3, %d3, 0, 16
	jeq	%d2, %d15, .L24
.L18:
.LVL20:
	ld.bu	%d15, [%a2]0
	st.b	[%a12]0, %d15
.LVL21:
	.loc 1 653 0
	jz	%d3, .L24
.LVL22:
	.loc 1 655 0
	ld.bu	%d15, [%a2] 1
	st.b	[%a12] 1, %d15
.LVL23:
	.loc 1 653 0
	jeq	%d3, 1, .L24
.LVL24:
	.loc 1 655 0
	ld.bu	%d15, [%a2] 2
	st.b	[%a12] 2, %d15
.LVL25:
.L24:
	ld.w	%d5, [%a15] 4
	ld.hu	%d4, [%a13] 8
	ld.hu	%d15, [%a15] 8
.LVL26:
.L16:
.LBE16:
.LBE15:
	.loc 1 318 0
	add	%d2, %d5, %d4
	.loc 1 320 0
	ld.w	%d3, [%a13] 16
	.loc 1 318 0
	st.w	[%a15] 4, %d2
	.loc 1 320 0
	jlt.u	%d2, %d3, .L25
	.loc 1 323 0
	ld.w	%d2, [%a13] 12
	st.w	[%a15] 4, %d2
.L25:
	.loc 1 325 0
	add	%d15, -1
	st.h	[%a15] 8, %d15
	.loc 1 328 0
	call	Os_ResumeOSInterrupts
.LVL27:
	.loc 1 331 0
	ld.bu	%d2, [%a15] 10
	.loc 1 296 0
	mov	%d15, 0
.LVL28:
	.loc 1 331 0
	or	%d15, %d2
.LVL29:
	.loc 1 332 0
	mov	%d2, 0
	st.b	[%a15] 10, %d2
	.loc 1 335 0
	and	%d2, %d15, 255
	ret
.LVL30:
.L17:
	add	%d2, %d7
.LBB18:
.LBB17:
	.loc 1 653 0
	mov.d	%d3, %a12
.LVL31:
	extr.u	%d2, %d2, 0, 16
.LVL32:
.L23:
	.loc 1 655 0
	ld.bu	%d15, [%a2]0
	mov.a	%a3, %d3
	add	%d3, 1
.LVL33:
	st.b	[%a3]0, %d15
.LVL34:
	.loc 1 653 0
	extr.u	%d15, %d3, 0, 16
	.loc 1 655 0
	add.a	%a2, 1
.LVL35:
	.loc 1 653 0
	jne	%d15, %d2, .L23
	j	.L24
.LBE17:
.LBE18:
.LFE23:
	.size	Rte_ReadQueue, .-Rte_ReadQueue
.section .text.Rte_SetEvent,"ax",@progbits
	.align 1
	.global	Rte_SetEvent
	.type	Rte_SetEvent, @function
Rte_SetEvent:
.LFB24:
	.loc 1 350 0
.LVL36:
	.loc 1 359 0
	mov	%d2, 0
	ret
.LFE24:
	.size	Rte_SetEvent, .-Rte_SetEvent
.section .text.SchM_Init,"ax",@progbits
	.align 1
	.global	SchM_Init
	.type	SchM_Init, @function
SchM_Init:
.LFB25:
	.loc 1 377 0
	.loc 1 379 0
	movh.a	%a15, hi:SchM_Initialized
	ld.bu	%d15, [%a15] lo:SchM_Initialized
	jz	%d15, .L39
	ret
.L39:
	.loc 1 386 0
	mov	%d15, 1
	st.b	[%a15] lo:SchM_Initialized, %d15
	.loc 1 387 0
	j	SchM_IModeInit
.LVL37:
.LFE25:
	.size	SchM_Init, .-SchM_Init
.section .text.SchM_Deinit,"ax",@progbits
	.align 1
	.global	SchM_Deinit
	.type	SchM_Deinit, @function
SchM_Deinit:
.LFB26:
	.loc 1 402 0
	.loc 1 404 0
	movh.a	%a15, hi:SchM_Initialized
	ld.bu	%d15, [%a15] lo:SchM_Initialized
	jz	%d15, .L40
	.loc 1 407 0
	mov	%d15, 0
	st.b	[%a15] lo:SchM_Initialized, %d15
.L40:
	ret
.LFE26:
	.size	SchM_Deinit, .-SchM_Deinit
.section .text.Rte_WaitWithTimeout,"ax",@progbits
	.align 1
	.global	Rte_WaitWithTimeout
	.type	Rte_WaitWithTimeout, @function
Rte_WaitWithTimeout:
.LFB27:
	.loc 1 434 0
.LVL38:
	.loc 1 442 0
	mov	%d2, 0
	ret
.LFE27:
	.size	Rte_WaitWithTimeout, .-Rte_WaitWithTimeout
.section .text.Rte_WriteQueue,"ax",@progbits
	.align 1
	.global	Rte_WriteQueue
	.type	Rte_WriteQueue, @function
Rte_WriteQueue:
.LFB28:
	.loc 1 465 0
.LVL39:
	.loc 1 471 0
	ld.bu	%d15, [%a4] 20
	.loc 1 465 0
	mov.aa	%a15, %a4
.LVL40:
	.loc 1 471 0
	add	%d15, -1
	.loc 1 465 0
	mov.aa	%a13, %a5
	.loc 1 467 0
	ld.a	%a12, [%a4]0
.LVL41:
	.loc 1 471 0
	jlt.u	%d15, 5, .L120
.L56:
	.loc 1 485 0
	call	Os_SuspendOSInterrupts
.LVL42:
	.loc 1 504 0
	ld.hu	%d15, [%a12] 8
	ld.hu	%d2, [%a15] 6
	jne	%d2, %d15, .L58
.L123:
	.loc 1 507 0
	mov	%d15, 64
	st.b	[%a12] 10, %d15
.LVL43:
	ld.bu	%d2, [%a15] 20
	.loc 1 508 0
	mov	%d15, 130
.LVL44:
.L59:
	.loc 1 589 0
	add	%d2, -1
	jlt.u	%d2, 5, .L121
.LVL45:
.L86:
	.loc 1 603 0
	call	Os_ResumeOSInterrupts
.LVL46:
.L94:
	.loc 1 622 0
	mov	%d2, %d15
	ret
.LVL47:
.L120:
	.loc 1 471 0
	movh.a	%a2, hi:.L49
	lea	%a2, [%a2] lo:.L49
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L49:
	.code32
	j	.L116
	.code32
	j	.L116
	.code32
	j	.L50
	.code32
	j	.L116
	.code32
	j	.L51
.L51:
	.loc 1 493 0
	ld.w	%d15, [%a4] 24
	jz	%d15, .L56
.L116:
.LBB31:
	.loc 1 499 0
	call	Os_GetApplicationID
.LVL48:
	movh.a	%a14, hi:Rte_ResourceCount
	sh	%d2, 2
.LVL49:
	lea	%a14, [%a14] lo:Rte_ResourceCount
	addsc.a	%a14, %a14, %d2, 0
	ld.a	%a2, [%a14]0
	ld.hu	%d15, [%a2]0
	jz	%d15, .L122
.L57:
	.loc 1 499 0 is_stmt 0 discriminator 3
	add	%d15, 1
	st.h	[%a2]0, %d15
.LBE31:
	.loc 1 504 0 is_stmt 1 discriminator 3
	ld.hu	%d15, [%a12] 8
	ld.hu	%d2, [%a15] 6
	jeq	%d2, %d15, .L123
.L58:
	.loc 1 513 0
	ld.bu	%d2, [%a15] 4
	.loc 1 516 0
	ld.a	%a2, [%a12]0
	.loc 1 513 0
	jnz	%d2, .L124
	.loc 1 522 0
	st.a	[%a2]0, %a13
	ld.w	%d8, [%a12]0
	ld.hu	%d4, [%a15] 8
.LVL50:
.L61:
	.loc 1 528 0
	add	%d2, %d8, %d4
	.loc 1 530 0
	ld.w	%d3, [%a15] 16
	.loc 1 528 0
	st.w	[%a12]0, %d2
	.loc 1 530 0
	jlt.u	%d2, %d3, .L70
	.loc 1 532 0
	ld.w	%d2, [%a15] 12
	st.w	[%a12]0, %d2
.L70:
	.loc 1 534 0
	add	%d15, 1
	st.h	[%a12] 8, %d15
	.loc 1 536 0
	ld.bu	%d15, [%a15] 20
	jeq	%d15, 2, .L71
	jne	%d15, 3, .L125
	.loc 1 571 0
	ld.a	%a2, [%a15] 24
.LVL51:
.LBB32:
.LBB33:
	.loc 1 165 0
	ld.a	%a3, [%a2] 4
	jz.a	%a3, .L74
	.loc 1 167 0
	mov	%d15, 1
	st.b	[%a3]0, %d15
.L74:
	.loc 1 170 0
	ld.a	%a4, [%a2]0
	jz.a	%a4, .L75
.LBB34:
	.loc 1 180 0
	call	Os_ActivateTask
.LVL52:
	.loc 1 181 0
	and	%d2, %d2, 251
.LVL53:
	jz	%d2, .L75
.LVL54:
.L76:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 575 0
	ld.h	%d15, [%a12] 8
	ld.bu	%d2, [%a15] 20
	add	%d15, -1
	st.h	[%a12] 8, %d15
.LVL55:
	.loc 1 574 0
	st.w	[%a12]0, %d8
	.loc 1 589 0
	add	%d2, -1
	.loc 1 576 0
	mov	%d15, 1
.LVL56:
	.loc 1 589 0
	jge.u	%d2, 5, .L86
.LVL57:
.L121:
	movh.a	%a2, hi:.L79
	lea	%a2, [%a2] lo:.L79
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L79:
	.code32
	j	.L113
	.code32
	j	.L113
	.code32
	j	.L80
	.code32
	j	.L113
	.code32
	j	.L81
.LVL58:
.L124:
	.loc 1 516 0
	ld.hu	%d2, [%a15] 8
.LVL59:
.LBB35:
.LBB36:
	.loc 1 653 0
	mov.d	%d8, %a2
	addi	%d3, %d2, -1
	extr.u	%d3, %d3, 0, 16
.LVL60:
	mov	%d4, 0
	jz	%d2, .L61
.LVL61:
	mov.d	%d4, %a13
	mov.d	%d5, %a2
	add	%d4, 4
	mov.d	%d7, %a13
	ge.u	%d15, %d8, %d4
	add	%d5, 4
	or.ge.u	%d15, %d7, %d5
	ge.u	%d4, %d2, 10
	and	%d4, %d15
	mov.d	%d15, %a13
	or	%d15, %d8
	and	%d15, %d15, 3
	eq	%d15, %d15, 0
	and	%d15, %d4
	jz	%d15, .L62
.LVL62:
	addi	%d6, %d2, -4
	extr.u	%d6, %d6, 2, 14
	add	%d6, 1
	sh	%d15, %d6, 2
	extr.u	%d15, %d15, 0, 16
	jlt.u	%d3, 3, .L63
	mov.aa	%a4, %a13
	mov.aa	%a3, %a2
	mov	%d4, 0
.LVL63:
.L64:
	.loc 1 655 0
	ld.w	%d5, [%a4+]4
	add	%d4, 1
	st.w	[%a3+]4, %d5
	extr.u	%d5, %d4, 0, 16
	jlt.u	%d5, %d6, .L64
	sub	%d3, %d15
	addsc.a	%a2, %a2, %d15, 0
.LVL64:
	addsc.a	%a13, %a13, %d15, 0
.LVL65:
	extr.u	%d3, %d3, 0, 16
	jeq	%d2, %d15, .L69
.L63:
.LVL66:
	ld.bu	%d15, [%a13]0
	st.b	[%a2]0, %d15
.LVL67:
	.loc 1 653 0
	jz	%d3, .L69
.LVL68:
	.loc 1 655 0
	ld.bu	%d15, [%a13] 1
	st.b	[%a2] 1, %d15
.LVL69:
	.loc 1 653 0
	jeq	%d3, 1, .L69
.LVL70:
	.loc 1 655 0
	ld.bu	%d15, [%a13] 2
	st.b	[%a2] 2, %d15
.LVL71:
.L69:
	ld.w	%d8, [%a12]0
.LVL72:
	ld.hu	%d4, [%a15] 8
	ld.hu	%d15, [%a12] 8
	j	.L61
.LVL73:
.L50:
.LBE36:
.LBE35:
	.loc 1 483 0
	ld.a	%a2, [%a4] 24
	ld.w	%d15, [%a2]0
	jnz	%d15, .L116
	j	.L56
.LVL74:
.L81:
	.loc 1 611 0
	ld.w	%d2, [%a15] 24
	jz	%d2, .L86
.LVL75:
.L113:
.LBB38:
	.loc 1 617 0
	call	Os_GetApplicationID
.LVL76:
	movh.a	%a15, hi:Rte_ResourceCount
	sh	%d2, 2
.LVL77:
	lea	%a15, [%a15] lo:Rte_ResourceCount
	addsc.a	%a15, %a15, %d2, 0
	ld.a	%a15, [%a15]0
	ld.h	%d3, [%a15]0
	add	%d3, -1
	extr.u	%d3, %d3, 0, 16
	st.h	[%a15]0, %d3
	jnz	%d3, .L94
	.loc 1 617 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Rte_Resources
	lea	%a15, [%a15] lo:Rte_Resources
	addsc.a	%a15, %a15, %d2, 0
	ld.a	%a4, [%a15]0
	call	Os_ReleaseResource
.LVL78:
.LBE38:
	.loc 1 622 0 is_stmt 1 discriminator 1
	mov	%d2, %d15
	ret
.LVL79:
.L80:
	.loc 1 601 0
	ld.a	%a15, [%a15] 24
.LVL80:
	ld.w	%d2, [%a15]0
	jnz	%d2, .L113
	j	.L86
.LVL81:
.L122:
.LBB39:
	.loc 1 499 0 discriminator 1
	movh.a	%a2, hi:Rte_Resources
	lea	%a2, [%a2] lo:Rte_Resources
	addsc.a	%a2, %a2, %d2, 0
	ld.a	%a4, [%a2]0
	call	Os_GetResource
.LVL82:
	ld.a	%a2, [%a14]0
	ld.hu	%d15, [%a2]0
	j	.L57
.LVL83:
.L125:
.LBE39:
	.loc 1 536 0
	mov	%d2, %d15
	.loc 1 466 0
	mov	%d15, 0
	j	.L59
.L71:
.LBB40:
	.loc 1 552 0
	ld.a	%a4, [%a15] 24
	call	Os_ActivateTask
.LVL84:
	.loc 1 553 0
	and	%d2, %d2, 251
.LVL85:
	jnz	%d2, .L76
.L75:
.LVL86:
	ld.bu	%d2, [%a15] 20
.LBE40:
	.loc 1 466 0
	mov	%d15, 0
	j	.L59
.LVL87:
.L62:
	add	%d2, %d7
.LBB41:
.LBB37:
	.loc 1 653 0
	mov.d	%d3, %a13
.LVL88:
	extr.u	%d2, %d2, 0, 16
.LVL89:
.L68:
	.loc 1 655 0
	mov.a	%a3, %d3
	add	%d3, 1
.LVL90:
	ld.bu	%d15, [%a3]0
	st.b	[%a2]0, %d15
.LVL91:
	.loc 1 653 0
	extr.u	%d15, %d3, 0, 16
	.loc 1 655 0
	add.a	%a2, 1
.LVL92:
	.loc 1 653 0
	jne	%d15, %d2, .L68
	j	.L69
.LBE37:
.LBE41:
.LFE28:
	.size	Rte_WriteQueue, .-Rte_WriteQueue
.section .text.Rte_memcpy,"ax",@progbits
	.align 1
	.global	Rte_memcpy
	.type	Rte_memcpy, @function
Rte_memcpy:
.LFB29:
	.loc 1 649 0
.LVL93:
	.loc 1 653 0
	add	%d15, %d4, -1
	extr.u	%d15, %d15, 0, 16
.LVL94:
	jz	%d4, .L126
	mov.d	%d3, %a4
	mov.d	%d6, %a5
	mov.d	%d5, %a5
	add	%d3, 4
	mov.d	%d7, %a4
	ge.u	%d2, %d6, %d3
	add	%d5, 4
	or.ge.u	%d2, %d7, %d5
	ge.u	%d3, %d4, 10
	and	%d3, %d2
	mov.d	%d2, %a4
	or	%d2, %d6
	and	%d2, %d2, 3
	eq	%d2, %d2, 0
	and	%d2, %d3
	jz	%d2, .L128
	addi	%d6, %d4, -4
	extr.u	%d6, %d6, 2, 14
	add	%d6, 1
	sh	%d2, %d6, 2
	extr.u	%d2, %d2, 0, 16
	jlt.u	%d15, 3, .L129
	mov.aa	%a2, %a5
	mov.aa	%a15, %a4
	mov	%d3, 0
.LVL95:
.L130:
	.loc 1 655 0
	ld.w	%d5, [%a2+]4
	add	%d3, 1
	st.w	[%a15+]4, %d5
	extr.u	%d5, %d3, 0, 16
	jlt.u	%d5, %d6, .L130
	sub	%d15, %d2
	addsc.a	%a4, %a4, %d2, 0
	addsc.a	%a5, %a5, %d2, 0
.LVL96:
	extr.u	%d15, %d15, 0, 16
	jeq	%d4, %d2, .L126
.L129:
.LVL97:
	ld.bu	%d2, [%a5]0
	st.b	[%a4]0, %d2
.LVL98:
	.loc 1 653 0
	jz	%d15, .L126
.LVL99:
	.loc 1 655 0
	ld.bu	%d2, [%a5] 1
	st.b	[%a4] 1, %d2
.LVL100:
	.loc 1 653 0
	jeq	%d15, 1, .L144
.LVL101:
	.loc 1 655 0
	ld.bu	%d15, [%a5] 2
.LVL102:
	st.b	[%a4] 2, %d15
	ret
.LVL103:
.L128:
	add	%d4, %d7
	.loc 1 653 0
	mov.d	%d2, %a4
	extr.u	%d4, %d4, 0, 16
.LVL104:
.L135:
	.loc 1 655 0
	ld.bu	%d15, [%a5]0
	mov.a	%a15, %d2
	add	%d2, 1
.LVL105:
	st.b	[%a15]0, %d15
.LVL106:
	.loc 1 653 0
	extr.u	%d15, %d2, 0, 16
	.loc 1 655 0
	add.a	%a5, 1
.LVL107:
	.loc 1 653 0
	jne	%d15, %d4, .L135
.LVL108:
.L126:
	ret
.LVL109:
.L144:
	ret
.LFE29:
	.size	Rte_memcpy, .-Rte_memcpy
.section .text.Rte_Start,"ax",@progbits
	.align 1
	.global	Rte_Start
	.type	Rte_Start, @function
Rte_Start:
.LFB30:
	.loc 1 679 0
.LVL110:
	.loc 1 682 0
	movh	%d15, hi:Os_const_resources+36
	addi	%d15, %d15, lo:Os_const_resources+36
	movh.a	%a15, hi:Rte_Resources
	lea	%a15, [%a15] lo:Rte_Resources
	.loc 1 683 0
	addi	%d2, %d15, -24
	.loc 1 682 0
	st.w	[%a15] 4, %d15
	.loc 1 683 0
	st.w	[%a15] 8, %d2
	.loc 1 684 0
	addi	%d2, %d15, -12
	.loc 1 685 0
	addi	%d15, %d15, -36
	st.w	[%a15] 16, %d15
	.loc 1 684 0
	st.w	[%a15] 12, %d2
	.loc 1 687 0
	movh	%d15, hi:Rte_ResourceCount_OsApplication_Core0
	movh.a	%a15, hi:Rte_ResourceCount
	lea	%a15, [%a15] lo:Rte_ResourceCount
	addi	%d15, %d15, lo:Rte_ResourceCount_OsApplication_Core0
	st.w	[%a15] 4, %d15
	.loc 1 688 0
	movh	%d15, hi:Rte_ResourceCount_OsApplication_Core1
	addi	%d15, %d15, lo:Rte_ResourceCount_OsApplication_Core1
	st.w	[%a15] 8, %d15
	.loc 1 689 0
	movh	%d15, hi:Rte_ResourceCount_OsApplication_Core2
	addi	%d15, %d15, lo:Rte_ResourceCount_OsApplication_Core2
	st.w	[%a15] 12, %d15
	.loc 1 690 0
	movh	%d15, hi:Rte_ResourceCount_OsApplication_Core3
	addi	%d15, %d15, lo:Rte_ResourceCount_OsApplication_Core3
	.loc 1 710 0
	movh.a	%a4, hi:Os_const_scheduletables
	.loc 1 690 0
	st.w	[%a15] 16, %d15
	.loc 1 710 0
	lea	%a4, [%a4] lo:Os_const_scheduletables
	.loc 1 698 0
	mov	%d15, 1
	movh.a	%a15, hi:Rte_Initialized
	.loc 1 710 0
	mov	%d4, 1
	.loc 1 698 0
	st.b	[%a15] lo:Rte_Initialized, %d15
	.loc 1 710 0
	call	Os_StartScheduleTableRel
.LVL111:
	.loc 1 729 0
	seln	%d2, %d2, %d2, 130
.LVL112:
	ret
.LFE30:
	.size	Rte_Start, .-Rte_Start
.section .text.Rte_Stop,"ax",@progbits
	.align 1
	.global	Rte_Stop
	.type	Rte_Stop, @function
Rte_Stop:
.LFB31:
	.loc 1 744 0
.LVL113:
	.loc 1 753 0
	movh.a	%a4, hi:Os_const_scheduletables
	.loc 1 750 0
	mov	%d15, 0
	movh.a	%a15, hi:Rte_Initialized
	.loc 1 753 0
	lea	%a4, [%a4] lo:Os_const_scheduletables
	.loc 1 750 0
	st.b	[%a15] lo:Rte_Initialized, %d15
	.loc 1 753 0
	call	Os_StopScheduleTable
.LVL114:
	.loc 1 772 0
	seln	%d2, %d2, %d2, 130
.LVL115:
	ret
.LFE31:
	.size	Rte_Stop, .-Rte_Stop
	.global	SchM_Initialized
.section .bss.a1.SchM_Initialized,"aw",@nobits
	.type	SchM_Initialized, @object
	.size	SchM_Initialized, 1
SchM_Initialized:
	.zero	1
	.global	Rte_Initialized
.section .bss.a1.Rte_Initialized,"aw",@nobits
	.type	Rte_Initialized, @object
	.size	Rte_Initialized, 1
Rte_Initialized:
	.zero	1
	.global	Rte_SpinlockCount
.section .bss.a2.Rte_SpinlockCount,"aw",@nobits
	.align 1
	.type	Rte_SpinlockCount, @object
	.size	Rte_SpinlockCount, 8
Rte_SpinlockCount:
	.zero	8
	.global	Rte_Resources
.section .bss.a4.Rte_Resources,"aw",@nobits
	.align 2
	.type	Rte_Resources, @object
	.size	Rte_Resources, 20
Rte_Resources:
	.zero	20
	.global	Rte_ResourceCount_OsApplication_Core3
.section .bss.a2.Rte_ResourceCount_OsApplication_Core3,"aw",@nobits
	.align 1
	.type	Rte_ResourceCount_OsApplication_Core3, @object
	.size	Rte_ResourceCount_OsApplication_Core3, 2
Rte_ResourceCount_OsApplication_Core3:
	.zero	2
	.global	Rte_ResourceCount_OsApplication_Core2
.section .bss.a2.Rte_ResourceCount_OsApplication_Core2,"aw",@nobits
	.align 1
	.type	Rte_ResourceCount_OsApplication_Core2, @object
	.size	Rte_ResourceCount_OsApplication_Core2, 2
Rte_ResourceCount_OsApplication_Core2:
	.zero	2
	.global	Rte_ResourceCount_OsApplication_Core1
.section .bss.a2.Rte_ResourceCount_OsApplication_Core1,"aw",@nobits
	.align 1
	.type	Rte_ResourceCount_OsApplication_Core1, @object
	.size	Rte_ResourceCount_OsApplication_Core1, 2
Rte_ResourceCount_OsApplication_Core1:
	.zero	2
	.global	Rte_ResourceCount_OsApplication_Core0
.section .bss.a2.Rte_ResourceCount_OsApplication_Core0,"aw",@nobits
	.align 1
	.type	Rte_ResourceCount_OsApplication_Core0, @object
	.size	Rte_ResourceCount_OsApplication_Core0, 2
Rte_ResourceCount_OsApplication_Core0:
	.zero	2
	.global	Rte_ResourceCount
.section .bss.a4.Rte_ResourceCount,"aw",@nobits
	.align 2
	.type	Rte_ResourceCount, @object
	.size	Rte_ResourceCount, 20
Rte_ResourceCount:
	.zero	20
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 "rte\\Rte.h"
	.file 6 "rte\\Rte_Intl.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1c5a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"rte\\Rte_Lib.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x48
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
	.uaword	0x1b8
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
	.uaword	0x1e4
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
	.uaword	0x220
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
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"StatusType"
	.byte	0x3
	.byte	0x48
	.uaword	0x1b8
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1ab
	.uleb128 0x4
	.byte	0x44
	.byte	0x4
	.byte	0xc7
	.uaword	0x2ce
	.uleb128 0x5
	.string	"store"
	.byte	0x4
	.byte	0xc8
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0x212
	.uaword	0x2de
	.uleb128 0x7
	.uaword	0x2de
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"Os_JumpBufType"
	.byte	0x4
	.byte	0xc9
	.uaword	0x300
	.uleb128 0x6
	.uaword	0x2b5
	.uaword	0x310
	.uleb128 0x7
	.uaword	0x2de
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Os_StackTraceType"
	.byte	0x4
	.byte	0xdb
	.uaword	0x220
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xdc
	.uaword	0x34d
	.uleb128 0x5
	.string	"sp"
	.byte	0x4
	.byte	0xdc
	.uaword	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctx"
	.byte	0x4
	.byte	0xdc
	.uaword	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Os_StackValueType"
	.byte	0x4
	.byte	0xdc
	.uaword	0x329
	.uleb128 0x3
	.string	"Os_StackSizeType"
	.byte	0x4
	.byte	0xdd
	.uaword	0x34d
	.uleb128 0x3
	.string	"Os_VoidVoidFunctionType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x39d
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3a3
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x4
	.byte	0xee
	.uaword	0x1b8
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3c2
	.uleb128 0xa
	.uaword	0x1ab
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1ab
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1d6
	.uleb128 0xb
	.string	"TickType"
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x220
	.uleb128 0xb
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x220
	.uleb128 0x8
	.byte	0x4
	.uaword	0x407
	.uleb128 0xc
	.uleb128 0xb
	.string	"CoreIdType"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x1d6
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.string	"Os_MeterInfoType_s"
	.byte	0x30
	.byte	0x4
	.uahalf	0x172
	.uaword	0x4d4
	.uleb128 0xf
	.string	"elapsed"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"previous"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"max"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"cumulative"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"stackbase"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"stackusage"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"stackmax"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xb
	.string	"Os_MeterInfoType"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x41d
	.uleb128 0xb
	.string	"EventMaskType"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x1ab
	.uleb128 0xb
	.string	"Os_bitmask"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x220
	.uleb128 0xb
	.string	"Os_pset0Type"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x503
	.uleb128 0xb
	.string	"Os_pset1Type"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x503
	.uleb128 0xb
	.string	"Os_pset2Type"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x503
	.uleb128 0xb
	.string	"Os_pset3Type"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x503
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x5a0
	.uleb128 0x12
	.string	"p0"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x516
	.uleb128 0x12
	.string	"p1"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x52b
	.uleb128 0x12
	.string	"p2"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x540
	.uleb128 0x12
	.string	"p3"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x555
	.byte	0
	.uleb128 0xb
	.string	"Os_psetType"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x56a
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x5ea
	.uleb128 0x12
	.string	"t0"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x503
	.uleb128 0x12
	.string	"t1"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x503
	.uleb128 0x12
	.string	"t2"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x503
	.uleb128 0x12
	.string	"t3"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x503
	.byte	0
	.uleb128 0xb
	.string	"Os_tpmaskType"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x5b4
	.uleb128 0xe
	.string	"Os_TaskDynType_s"
	.byte	0x78
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x667
	.uleb128 0xf
	.string	"terminate_jump_buf"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"meter"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"termination_state"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0
	.uleb128 0xb
	.string	"Os_TaskDynType"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x600
	.uleb128 0xe
	.string	"Os_TaskType_s"
	.byte	0x28
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x746
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x746
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"entry_function"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"pset"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"base_tpmask"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"core_id"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"index"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x3a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0xa
	.uaword	0x74b
	.uleb128 0x8
	.byte	0x4
	.uaword	0x667
	.uleb128 0xb
	.string	"Os_TaskType"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x67e
	.uleb128 0xb
	.string	"TaskType"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x776
	.uleb128 0x8
	.byte	0x4
	.uaword	0x77c
	.uleb128 0xa
	.uaword	0x751
	.uleb128 0x8
	.byte	0x4
	.uaword	0x765
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x79d
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x5ea
	.byte	0
	.uleb128 0xe
	.string	"Os_ResourceDynType_s"
	.byte	0x8
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x7e8
	.uleb128 0xf
	.string	"locker"
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"saved_priority"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x787
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"Os_ResourceDynType"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x79d
	.uleb128 0xe
	.string	"Os_ResourceType_s"
	.byte	0xc
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x84c
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x84c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.uaword	0x851
	.uleb128 0x8
	.byte	0x4
	.uaword	0x7e8
	.uleb128 0xb
	.string	"Os_ResourceType"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x803
	.uleb128 0xb
	.string	"ResourceType"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x884
	.uleb128 0x8
	.byte	0x4
	.uaword	0x88a
	.uleb128 0xa
	.uaword	0x857
	.uleb128 0x14
	.byte	0xc
	.byte	0x4
	.uahalf	0x1f1
	.uaword	0x8d4
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x1f2
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ticksperbase"
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"mincycle"
	.byte	0x4
	.uahalf	0x1f4
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"AlarmBaseType"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x88f
	.uleb128 0xb
	.string	"Os_CounterIncrAdvType"
	.byte	0x4
	.uahalf	0x215
	.uaword	0x908
	.uleb128 0x8
	.byte	0x4
	.uaword	0x90e
	.uleb128 0x15
	.byte	0x1
	.uaword	0x28d
	.uleb128 0xe
	.string	"s_swd"
	.byte	0x4
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x935
	.uleb128 0xf
	.string	"count"
	.byte	0x4
	.uahalf	0x21b
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.uahalf	0x219
	.uaword	0x94a
	.uleb128 0x12
	.string	"sw"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x914
	.byte	0
	.uleb128 0xe
	.string	"Os_CounterDynType_s"
	.byte	0x4
	.byte	0x4
	.uahalf	0x218
	.uaword	0x982
	.uleb128 0xf
	.string	"type_dependent"
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x935
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Os_CounterDynType"
	.byte	0x4
	.uahalf	0x21e
	.uaword	0x94a
	.uleb128 0xe
	.string	"Os_CounterType_s"
	.byte	0x1c
	.byte	0x4
	.uahalf	0x21f
	.uaword	0xa17
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x220
	.uaword	0xa17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"advincr"
	.byte	0x4
	.uahalf	0x221
	.uaword	0x8ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"base"
	.byte	0x4
	.uahalf	0x222
	.uaword	0x8d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"core"
	.byte	0x4
	.uahalf	0x223
	.uaword	0x401
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x224
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x225
	.uaword	0x3a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xa
	.uaword	0xa1c
	.uleb128 0x8
	.byte	0x4
	.uaword	0x982
	.uleb128 0xb
	.string	"Os_CounterType"
	.byte	0x4
	.uahalf	0x226
	.uaword	0x99c
	.uleb128 0xb
	.string	"CounterType"
	.byte	0x4
	.uahalf	0x227
	.uaword	0xa4d
	.uleb128 0x8
	.byte	0x4
	.uaword	0xa53
	.uleb128 0xa
	.uaword	0xa22
	.uleb128 0x16
	.string	"Os_ScheduleTableStatusType"
	.byte	0x1
	.byte	0x4
	.uahalf	0x22c
	.uaword	0xb02
	.uleb128 0x17
	.string	"SCHEDULETABLE_STOPPED"
	.sleb128 0
	.uleb128 0x17
	.string	"SCHEDULETABLE_NEXT"
	.sleb128 1
	.uleb128 0x17
	.string	"SCHEDULETABLE_WAITING"
	.sleb128 2
	.uleb128 0x17
	.string	"SCHEDULETABLE_RUNNING"
	.sleb128 3
	.uleb128 0x17
	.string	"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.string	"ScheduleTableStatusType"
	.byte	0x4
	.uahalf	0x22d
	.uaword	0xa58
	.uleb128 0x18
	.byte	0x1
	.byte	0x4
	.uahalf	0x22f
	.uaword	0xb61
	.uleb128 0x17
	.string	"OS_SYNC_NONE"
	.sleb128 0
	.uleb128 0x17
	.string	"OS_SYNC_IMPLICIT"
	.sleb128 1
	.uleb128 0x17
	.string	"OS_SYNC_EXPLICIT"
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.string	"Os_ScheduleTableSyncType"
	.byte	0x4
	.uahalf	0x22f
	.uaword	0xb22
	.uleb128 0x18
	.byte	0x1
	.byte	0x4
	.uahalf	0x230
	.uaword	0xbd5
	.uleb128 0x17
	.string	"OS_SYNC_ASYNC"
	.sleb128 0
	.uleb128 0x17
	.string	"OS_SYNC_ADVANCING"
	.sleb128 1
	.uleb128 0x17
	.string	"OS_SYNC_RETARDING"
	.sleb128 2
	.uleb128 0x17
	.string	"OS_SYNC_INSYNC"
	.sleb128 3
	.byte	0
	.uleb128 0xb
	.string	"Os_ScheduleTableSyncStateType"
	.byte	0x4
	.uahalf	0x230
	.uaword	0xb82
	.uleb128 0xe
	.string	"Os_ScheduleTableType_s"
	.byte	0x1c
	.byte	0x4
	.uahalf	0x233
	.uaword	0xcd1
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x234
	.uaword	0xd7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"counter"
	.byte	0x4
	.uahalf	0x235
	.uaword	0xa39
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"sync_precision"
	.byte	0x4
	.uahalf	0x236
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x237
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"repeat"
	.byte	0x4
	.uahalf	0x238
	.uaword	0x25d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"config"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"initial"
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x23b
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xf
	.string	"sync_type"
	.byte	0x4
	.uahalf	0x23c
	.uaword	0xb61
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x3a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.byte	0
	.uleb128 0xe
	.string	"Os_ScheduleTableDynType_s"
	.byte	0x1c
	.byte	0x4
	.uahalf	0x241
	.uaword	0xd7e
	.uleb128 0xf
	.string	"match"
	.byte	0x4
	.uahalf	0x242
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"drift"
	.byte	0x4
	.uahalf	0x243
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"next"
	.byte	0x4
	.uahalf	0x244
	.uaword	0xda6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"state"
	.byte	0x4
	.uahalf	0x245
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"config"
	.byte	0x4
	.uahalf	0x246
	.uaword	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"sync_count_tracker"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"sync_state"
	.byte	0x4
	.uahalf	0x248
	.uaword	0xbd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xa
	.uaword	0xd83
	.uleb128 0x8
	.byte	0x4
	.uaword	0xcd1
	.uleb128 0xb
	.string	"Os_ScheduleTableType"
	.byte	0x4
	.uahalf	0x23e
	.uaword	0xbfb
	.uleb128 0xb
	.string	"ScheduleTableType"
	.byte	0x4
	.uahalf	0x23f
	.uaword	0xdc0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xdc6
	.uleb128 0xa
	.uaword	0xd89
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0xb0
	.uaword	0xe12
	.uleb128 0x5
	.string	"in"
	.byte	0x5
	.byte	0xb1
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"out"
	.byte	0x5
	.byte	0xb2
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"used"
	.byte	0x5
	.byte	0xb3
	.uaword	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"lost_data"
	.byte	0x5
	.byte	0xb4
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"Rte_QDynType"
	.byte	0x5
	.byte	0xb5
	.uaword	0xdcb
	.uleb128 0x19
	.byte	0x1
	.byte	0x5
	.byte	0xb7
	.uaword	0xe6c
	.uleb128 0x17
	.string	"RTE_DRA"
	.sleb128 0
	.uleb128 0x17
	.string	"RTE_WOWP"
	.sleb128 1
	.uleb128 0x17
	.string	"RTE_TASK"
	.sleb128 2
	.uleb128 0x17
	.string	"RTE_ARE"
	.sleb128 3
	.uleb128 0x17
	.string	"RTE_EV"
	.sleb128 4
	.uleb128 0x17
	.string	"RTE_MSI"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Rte_NotificationType"
	.byte	0x5
	.byte	0xbe
	.uaword	0xe26
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x18
	.byte	0x5
	.byte	0xc0
	.uaword	0xf26
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0x5
	.byte	0xc1
	.uaword	0xf26
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"copy"
	.byte	0x5
	.byte	0xc2
	.uaword	0x25d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"queue_size"
	.byte	0x5
	.byte	0xc3
	.uaword	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"element_size"
	.byte	0x5
	.byte	0xc4
	.uaword	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"buffer_start"
	.byte	0x5
	.byte	0xc5
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"buffer_end"
	.byte	0x5
	.byte	0xc6
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"notification_type"
	.byte	0x5
	.byte	0xc7
	.uaword	0xe6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe12
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x5
	.byte	0xc8
	.uaword	0xe88
	.uleb128 0x3
	.string	"Rte_QCmnRefType"
	.byte	0x5
	.byte	0xcd
	.uaword	0xf4e
	.uleb128 0x8
	.byte	0x4
	.uaword	0xf54
	.uleb128 0xa
	.uaword	0xe88
	.uleb128 0x3
	.string	"Rte_ResourceRefType"
	.byte	0x5
	.byte	0xdb
	.uaword	0x401
	.uleb128 0x3
	.string	"Rte_ResourceCountRefType"
	.byte	0x6
	.byte	0xb5
	.uaword	0x3cd
	.uleb128 0x3
	.string	"Rte_TaskRefType"
	.byte	0x6
	.byte	0xb7
	.uaword	0x765
	.uleb128 0x3
	.string	"Rte_EventRefType"
	.byte	0x6
	.byte	0xb8
	.uaword	0x4ed
	.uleb128 0x3
	.string	"Rte_EventType"
	.byte	0x6
	.byte	0xb9
	.uaword	0x212
	.uleb128 0xb
	.string	"Rte_REActCounterType"
	.byte	0x6
	.uahalf	0x128
	.uaword	0x1ab
	.uleb128 0xb
	.string	"Rte_REActCounterRefType"
	.byte	0x6
	.uahalf	0x129
	.uaword	0x1015
	.uleb128 0x8
	.byte	0x4
	.uaword	0xfd8
	.uleb128 0x14
	.byte	0x8
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x1045
	.uleb128 0xf
	.string	"task"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0xf94
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"acnt"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0xff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"Rte_REContainerType"
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x101b
	.uleb128 0xb
	.string	"Rte_REContainerRefType"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1080
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1086
	.uleb128 0xa
	.uaword	0x1045
	.uleb128 0xb
	.string	"Rte_MSICounterType"
	.byte	0x6
	.uahalf	0x141
	.uaword	0x1d6
	.uleb128 0xb
	.string	"Rte_MSICounterRefType"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x10c4
	.uleb128 0x8
	.byte	0x4
	.uaword	0x108b
	.uleb128 0xb
	.string	"Rte_MSIPendingFlagType"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x25d
	.uleb128 0xb
	.string	"Rte_MSIPendingFlagRefType"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x110b
	.uleb128 0x8
	.byte	0x4
	.uaword	0x10ca
	.uleb128 0xb
	.string	"Rte_TaskArrayIndex"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x212
	.uleb128 0xb
	.string	"Rte_NrWaitingTasks"
	.byte	0x6
	.uahalf	0x160
	.uaword	0x212
	.uleb128 0x14
	.byte	0xc
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1191
	.uleb128 0xf
	.string	"pending"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"count"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x112c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"firstWaitingTask"
	.byte	0x6
	.uahalf	0x165
	.uaword	0x1111
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"Rte_WaitableDatum"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x1147
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1191
	.uleb128 0x1d
	.uaword	.LASF7
	.byte	0x1c
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x11de
	.uleb128 0xf
	.string	"cmn"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xf2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"task"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0xf94
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x11b1
	.uleb128 0xb
	.string	"Rte_QRefTaskType"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0x1203
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1209
	.uleb128 0xa
	.uaword	0x11de
	.uleb128 0x1d
	.uaword	.LASF8
	.byte	0x1c
	.byte	0x6
	.uahalf	0x1a6
	.uaword	0x1239
	.uleb128 0xf
	.string	"cmn"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0xf2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"re"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x1061
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x120e
	.uleb128 0xb
	.string	"Rte_QRefREType"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x125c
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1262
	.uleb128 0xa
	.uaword	0x1239
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x30
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0x12f4
	.uleb128 0xf
	.string	"cmn"
	.byte	0x6
	.uahalf	0x1be
	.uaword	0xf2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"task"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0xf94
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"mask"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0xfab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"acnt"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0xff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"msiCounter"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x10a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"msiPending"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x10e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"msiLimit"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x1267
	.uleb128 0xb
	.string	"Rte_QRefMSIType"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1318
	.uleb128 0x8
	.byte	0x4
	.uaword	0x131e
	.uleb128 0xa
	.uaword	0x12f4
	.uleb128 0xb
	.string	"Rte_VarDataPtr"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x41b
	.uleb128 0xb
	.string	"Rte_ConstDataPtr"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x401
	.uleb128 0x1f
	.byte	0x1
	.string	"Rte_memcpy"
	.byte	0x1
	.uahalf	0x286
	.byte	0x1
	.byte	0x1
	.uaword	0x13a5
	.uleb128 0x20
	.string	"dst"
	.byte	0x1
	.uahalf	0x286
	.uaword	0x41b
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.uahalf	0x287
	.uaword	0x401
	.uleb128 0x20
	.string	"length"
	.byte	0x1
	.uahalf	0x288
	.uaword	0x1d6
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x3c7
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x3bc
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Rte_ActivateRE"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x13e5
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xa0
	.uaword	0x1061
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0xa2
	.uaword	0x29f
	.uleb128 0x25
	.uleb128 0x26
	.string	"stat"
	.byte	0x1
	.byte	0xac
	.uaword	0x28d
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x13a5
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1429
	.uleb128 0x28
	.uaword	0x13c2
	.uaword	.LLST0
	.uleb128 0x29
	.uaword	0x13cb
	.uaword	.LLST1
	.uleb128 0x2a
	.uaword	.LBB14
	.uaword	.LBE14
	.uleb128 0x29
	.uaword	0x13d7
	.uaword	.LLST2
	.uleb128 0x2b
	.uaword	.LVL2
	.uaword	0x1b24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Rte_DecrementWaitingCount"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1484
	.uleb128 0x2d
	.string	"datum"
	.byte	0x1
	.byte	0xd9
	.uaword	0x11ab
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.string	"idx"
	.byte	0x1
	.byte	0xda
	.uaword	0x1111
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"event"
	.byte	0x1
	.byte	0xdb
	.uaword	0xfc3
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Rte_GetCurrentTaskIndex"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	0x1111
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14c7
	.uleb128 0x2d
	.string	"taskRef"
	.byte	0x1
	.byte	0xf2
	.uaword	0x781
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"Rte_MainFunction"
	.byte	0x1
	.uahalf	0x10c
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Rte_ReadQueue"
	.byte	0x1
	.uahalf	0x125
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x15b3
	.uleb128 0x31
	.string	"q"
	.byte	0x1
	.uahalf	0x125
	.uaword	0xf37
	.uaword	.LLST3
	.uleb128 0x31
	.string	"data"
	.byte	0x1
	.uahalf	0x126
	.uaword	0x1323
	.uaword	.LLST4
	.uleb128 0x32
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x128
	.uaword	0x29f
	.uaword	.LLST5
	.uleb128 0x33
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x129
	.uaword	0xf26
	.byte	0x1
	.byte	0x6f
	.uleb128 0x34
	.uaword	0x1353
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x1597
	.uleb128 0x28
	.uaword	0x1381
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	0x1375
	.uaword	.LLST7
	.uleb128 0x28
	.uaword	0x1369
	.uaword	.LLST8
	.uleb128 0x35
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x29
	.uaword	0x1390
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	0x139a
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL9
	.uaword	0x1b49
	.uleb128 0x2b
	.uaword	.LVL11
	.uaword	0x1b67
	.uleb128 0x2b
	.uaword	.LVL27
	.uaword	0x1b67
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Rte_SetEvent"
	.byte	0x1
	.uahalf	0x15c
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1608
	.uleb128 0x36
	.string	"datum"
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x11ab
	.byte	0x1
	.byte	0x64
	.uleb128 0x36
	.string	"event"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0xfc3
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x29f
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"SchM_Init"
	.byte	0x1
	.uahalf	0x178
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1633
	.uleb128 0x39
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x1b84
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"SchM_Deinit"
	.byte	0x1
	.uahalf	0x191
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Rte_WaitWithTimeout"
	.byte	0x1
	.uahalf	0x1af
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x16b2
	.uleb128 0x36
	.string	"datum"
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x11ab
	.byte	0x1
	.byte	0x64
	.uleb128 0x36
	.string	"event"
	.byte	0x1
	.uahalf	0x1b0
	.uaword	0xfc3
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.string	"timeout"
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x16b2
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xa
	.uaword	0x3d3
	.uleb128 0x30
	.byte	0x1
	.string	"Rte_WriteQueue"
	.byte	0x1
	.uahalf	0x1cf
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1868
	.uleb128 0x31
	.string	"q"
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0xf37
	.uaword	.LLST11
	.uleb128 0x31
	.string	"data"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x133a
	.uaword	.LLST12
	.uleb128 0x32
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x29f
	.uaword	.LLST13
	.uleb128 0x33
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0xf26
	.byte	0x1
	.byte	0x6c
	.uleb128 0x3a
	.string	"old_in"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x41b
	.uaword	.LLST14
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0x1760
	.uleb128 0x3a
	.string	"osappID"
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x3a5
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	.LVL48
	.uaword	0x1b99
	.uleb128 0x2b
	.uaword	.LVL82
	.uaword	0x1bb8
	.byte	0
	.uleb128 0x3c
	.uaword	0x13a5
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x17ad
	.uleb128 0x28
	.uaword	0x13c2
	.uaword	.LLST16
	.uleb128 0x2a
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x29
	.uaword	0x13cb
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	.LBB34
	.uaword	.LBE34
	.uleb128 0x29
	.uaword	0x13d7
	.uaword	.LLST18
	.uleb128 0x2b
	.uaword	.LVL52
	.uaword	0x1b24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1353
	.uaword	.LBB35
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x204
	.uaword	0x17f5
	.uleb128 0x28
	.uaword	0x1381
	.uaword	.LLST19
	.uleb128 0x28
	.uaword	0x1375
	.uaword	.LLST20
	.uleb128 0x28
	.uaword	0x1369
	.uaword	.LLST21
	.uleb128 0x35
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.uaword	0x1390
	.uaword	.LLST22
	.uleb128 0x29
	.uaword	0x139a
	.uaword	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0x1829
	.uleb128 0x3a
	.string	"osappID"
	.byte	0x1
	.uahalf	0x269
	.uaword	0x3a5
	.uaword	.LLST24
	.uleb128 0x2b
	.uaword	.LVL76
	.uaword	0x1b99
	.uleb128 0x2b
	.uaword	.LVL78
	.uaword	0x1bdc
	.byte	0
	.uleb128 0x3d
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0x1855
	.uleb128 0x3a
	.string	"act_stat"
	.byte	0x1
	.uahalf	0x222
	.uaword	0x28d
	.uaword	.LLST25
	.uleb128 0x2b
	.uaword	.LVL84
	.uaword	0x1b24
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL42
	.uaword	0x1b49
	.uleb128 0x2b
	.uaword	.LVL46
	.uaword	0x1b67
	.byte	0
	.uleb128 0x27
	.uaword	0x1353
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x18ab
	.uleb128 0x28
	.uaword	0x1369
	.uaword	.LLST26
	.uleb128 0x28
	.uaword	0x1375
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	0x1381
	.uaword	.LLST28
	.uleb128 0x29
	.uaword	0x1390
	.uaword	.LLST29
	.uleb128 0x29
	.uaword	0x139a
	.uaword	.LLST30
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Rte_Start"
	.byte	0x1
	.uahalf	0x2a6
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x18ef
	.uleb128 0x3a
	.string	"rtn"
	.byte	0x1
	.uahalf	0x2a8
	.uaword	0x29f
	.uaword	.LLST31
	.uleb128 0x3e
	.uaword	.LVL111
	.uaword	0x1c04
	.uleb128 0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Rte_Stop"
	.byte	0x1
	.uahalf	0x2e7
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x192c
	.uleb128 0x3a
	.string	"rtn"
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0x29f
	.uaword	.LLST32
	.uleb128 0x2b
	.uaword	.LVL114
	.uaword	0x1c37
	.byte	0
	.uleb128 0x6
	.uaword	0x857
	.uaword	0x1937
	.uleb128 0x40
	.byte	0
	.uleb128 0x41
	.string	"Os_const_resources"
	.byte	0x4
	.uahalf	0x45e
	.uaword	0x1954
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x192c
	.uleb128 0x6
	.uaword	0xd89
	.uaword	0x1964
	.uleb128 0x40
	.byte	0
	.uleb128 0x41
	.string	"Os_const_scheduletables"
	.byte	0x4
	.uahalf	0x460
	.uaword	0x1986
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1959
	.uleb128 0x6
	.uaword	0xf59
	.uaword	0x199b
	.uleb128 0x7
	.uaword	0x2de
	.byte	0x4
	.byte	0
	.uleb128 0x42
	.string	"Rte_Resources"
	.byte	0x1
	.byte	0x68
	.uaword	0x198b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_Resources
	.uleb128 0x6
	.uaword	0xf74
	.uaword	0x19c7
	.uleb128 0x7
	.uaword	0x2de
	.byte	0x4
	.byte	0
	.uleb128 0x42
	.string	"Rte_ResourceCount"
	.byte	0x1
	.byte	0x48
	.uaword	0x19b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ResourceCount
	.uleb128 0x6
	.uaword	0x1d6
	.uaword	0x19f7
	.uleb128 0x7
	.uaword	0x2de
	.byte	0x3
	.byte	0
	.uleb128 0x42
	.string	"Rte_SpinlockCount"
	.byte	0x1
	.byte	0x71
	.uaword	0x19e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_SpinlockCount
	.uleb128 0x42
	.string	"Rte_Initialized"
	.byte	0x1
	.byte	0x81
	.uaword	0x25d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_Initialized
	.uleb128 0x42
	.string	"SchM_Initialized"
	.byte	0x1
	.byte	0x82
	.uaword	0x25d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SchM_Initialized
	.uleb128 0x42
	.string	"Rte_ResourceCount_OsApplication_Core0"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ResourceCount_OsApplication_Core0
	.uleb128 0x42
	.string	"Rte_ResourceCount_OsApplication_Core1"
	.byte	0x1
	.byte	0x54
	.uaword	0x1d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ResourceCount_OsApplication_Core1
	.uleb128 0x42
	.string	"Rte_ResourceCount_OsApplication_Core2"
	.byte	0x1
	.byte	0x5a
	.uaword	0x1d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ResourceCount_OsApplication_Core2
	.uleb128 0x42
	.string	"Rte_ResourceCount_OsApplication_Core3"
	.byte	0x1
	.byte	0x60
	.uaword	0x1d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ResourceCount_OsApplication_Core3
	.uleb128 0x43
	.byte	0x1
	.string	"Os_ActivateTask"
	.byte	0x4
	.uahalf	0x405
	.byte	0x1
	.uaword	0x28d
	.byte	0x1
	.uaword	0x1b49
	.uleb128 0x44
	.uaword	0x765
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"Os_SuspendOSInterrupts"
	.byte	0x4
	.uahalf	0x413
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.byte	0x1
	.string	"Os_ResumeOSInterrupts"
	.byte	0x4
	.uahalf	0x414
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.byte	0x1
	.string	"SchM_IModeInit"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"Os_GetApplicationID"
	.byte	0x4
	.uahalf	0x419
	.byte	0x1
	.uaword	0x3a5
	.byte	0x1
	.uleb128 0x43
	.byte	0x1
	.string	"Os_GetResource"
	.byte	0x4
	.uahalf	0x40d
	.byte	0x1
	.uaword	0x28d
	.byte	0x1
	.uaword	0x1bdc
	.uleb128 0x44
	.uaword	0x86f
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"Os_ReleaseResource"
	.byte	0x4
	.uahalf	0x40e
	.byte	0x1
	.uaword	0x28d
	.byte	0x1
	.uaword	0x1c04
	.uleb128 0x44
	.uaword	0x86f
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"Os_StartScheduleTableRel"
	.byte	0x4
	.uahalf	0x428
	.byte	0x1
	.uaword	0x28d
	.byte	0x1
	.uaword	0x1c37
	.uleb128 0x44
	.uaword	0xda6
	.uleb128 0x44
	.uaword	0x3d3
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"Os_StopScheduleTable"
	.byte	0x4
	.uahalf	0x427
	.byte	0x1
	.uaword	0x28d
	.byte	0x1
	.uleb128 0x44
	.uaword	0xda6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1e
	.uleb128 0x16
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9-1
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL16
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0xb
	.byte	0x8d
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL16
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x8c
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x8c
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x82
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL39
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42-1
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL45
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
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL75
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL39
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL42-1
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL48-1
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL50
	.uaword	.LVL58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL62
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL74
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL83
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x9
	.byte	0x82
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL50
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL83
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0xb
	.byte	0x8f
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL87
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL61
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL87
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x3
	.byte	0x82
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL89
	.uaword	.LVL92
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x3
	.byte	0x8d
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x3
	.byte	0x8d
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL95
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL96
	.uaword	.LVL103
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL108
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LVL100
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL109
	.uaword	.LFE29
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL109
	.uaword	.LFE29
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x85
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL104
	.uaword	.LVL107
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL109
	.uaword	.LFE29
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0xd
	.byte	0x8
	.byte	0x82
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
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0xd
	.byte	0x8
	.byte	0x82
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
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"dynamic"
.LASF3:
	.string	"access"
.LASF9:
	.string	"Rte_QMSIType"
.LASF10:
	.string	"status"
.LASF4:
	.string	"application"
.LASF8:
	.string	"Rte_QREType"
.LASF2:
	.string	"tpmask"
.LASF7:
	.string	"Rte_QTaskType"
.LASF5:
	.string	"maxallowedvalue"
.LASF0:
	.string	"stackbudget"
.LASF6:
	.string	"Rte_QCmnType"
	.extern	Os_StopScheduleTable,STT_FUNC,0
	.extern	Os_StartScheduleTableRel,STT_FUNC,0
	.extern	Os_const_scheduletables,STT_OBJECT,-1
	.extern	Os_const_resources,STT_OBJECT,-1
	.extern	Os_GetResource,STT_FUNC,0
	.extern	Os_ReleaseResource,STT_FUNC,0
	.extern	Os_GetApplicationID,STT_FUNC,0
	.extern	SchM_IModeInit,STT_FUNC,0
	.extern	Os_ResumeOSInterrupts,STT_FUNC,0
	.extern	Os_SuspendOSInterrupts,STT_FUNC,0
	.extern	Os_ActivateTask,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
