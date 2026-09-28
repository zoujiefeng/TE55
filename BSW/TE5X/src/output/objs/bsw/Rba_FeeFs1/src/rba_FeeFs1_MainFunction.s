	.file	"rba_FeeFs1_MainFunction.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_LoadNextOrder,"ax",@progbits
	.align 1
	.global	Fee_LoadNextOrder
	.type	Fee_LoadNextOrder, @function
Fee_LoadNextOrder:
.LFB25:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_MainFunction.c"
	.loc 1 675 0
	.loc 1 679 0
	movh.a	%a15, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	movh	%d8, hi:Fee_OrderFifo_st
	addi	%d8, %d8, lo:Fee_OrderFifo_st
	sh	%d15, 4
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d3, [%a2] 12
	addi	%d2, %d3, -1
	jlt.u	%d2, 5, .L30
	.loc 1 808 0
	mov	%d15, 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 810 0
	ret
.L30:
	.loc 1 679 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L4:
	.code32
	j	.L3
	.code32
	j	.L5
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L3
.L5:
.LBB22:
	.loc 1 712 0
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 714 0
	ld.hu	%d15, [%a2] 6
	.loc 1 702 0
	jeq	%d3, 3, .L8
.LVL0:
	.loc 1 714 0
	movh.a	%a3, hi:Fee_BlockProperties_st
	mov.d	%d3, %a3
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a3, %d3
.LBB23:
.LBB24:
	.file 2 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.loc 2 1562 0
	ld.hu	%d3, [%a2] 10
.LBE24:
.LBE23:
	.loc 1 714 0
	ld.h	%d2, [%a3] 2
.LBB31:
.LBB29:
	.loc 2 1562 0
	addi	%d5, %d3, 14
.LBB25:
.LBB26:
	.loc 2 1533 0
	and	%d15, %d5, 7
.LBE26:
.LBE25:
.LBE29:
.LBE31:
	.loc 1 714 0
	and	%d2, %d2, 1
.LVL1:
.LBB32:
.LBB30:
.LBB28:
.LBB27:
	.loc 2 1535 0
	jnz	%d15, .L31
.LVL2:
.L9:
.LBE27:
.LBE28:
	.loc 2 1582 0
	sh	%d5, %d5, %d2
.LVL3:
.LBE30:
.LBE32:
	.loc 1 732 0
	movh	%d4, 1
	extr.u	%d5, %d5, 0, 16
.LVL4:
	addi	%d4, %d4, 8
	call	Fee_LLCheckReorganizationNeed
.LVL5:
	jeq	%d2, 5, .L32
	.loc 1 749 0
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	madd	%d2, %d8, %d15, 16
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 12
	jeq	%d15, 2, .L33
	.loc 1 755 0
	mov	%d15, 3
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	ret
.LVL6:
.L3:
.LBE22:
	.loc 1 686 0
	mov	%d15, 2
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 692 0
	ret
.L6:
.LVL7:
.LBB37:
	.loc 1 773 0
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 775 0
	movh.a	%a3, hi:Fee_BlockProperties_st
	mov.d	%d3, %a3
	ld.hu	%d15, [%a2] 6
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a3, %d3
.LBB38:
.LBB39:
	.loc 2 1562 0
	ld.hu	%d3, [%a2] 10
.LBE39:
.LBE38:
	.loc 1 775 0
	ld.h	%d2, [%a3] 2
.LBB46:
.LBB44:
	.loc 2 1562 0
	addi	%d5, %d3, 14
.LBB40:
.LBB41:
	.loc 2 1533 0
	and	%d15, %d5, 7
.LBE41:
.LBE40:
.LBE44:
.LBE46:
	.loc 1 775 0
	and	%d2, %d2, 1
.LVL8:
.LBB47:
.LBB45:
.LBB43:
.LBB42:
	.loc 2 1535 0
	jz	%d15, .L14
	addi	%d5, %d3, 22
.LVL9:
	.loc 2 1537 0
	sub	%d5, %d15
.LVL10:
.L14:
.LBE42:
.LBE43:
	.loc 2 1582 0
	sh	%d5, %d5, %d2
.LVL11:
.LBE45:
.LBE47:
	.loc 1 785 0
	movh	%d4, 1
	extr.u	%d5, %d5, 0, 16
.LVL12:
	addi	%d4, %d4, 8
	call	Fee_LLCheckReorganizationNeed
.LVL13:
.LBB48:
.LBB49:
	.loc 1 917 0
	mov	%d15, 4
.LVL14:
.LBE49:
.LBE48:
	.loc 1 785 0
	jeq	%d2, 5, .L34
	.loc 1 793 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 796 0
	mov	%d15, 2
	movh.a	%a15, hi:Fee_GlobModuleState_st
	st.b	[%a15] lo:Fee_GlobModuleState_st, %d15
	ret
.LVL15:
.L8:
.LBE37:
.LBB52:
	.loc 1 714 0
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d3, %a2
	mov	%d5, 16
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a2, %d3
	ld.h	%d2, [%a2] 2
	and	%d2, %d2, 1
.LVL16:
	j	.L9
.LVL17:
.L34:
.LBE52:
.LBB53:
.LBB51:
.LBB50:
	.loc 1 917 0
	movh.a	%a2, hi:Fee_Rb_WorkingStateBackUp_en
	st.b	[%a2] lo:Fee_Rb_WorkingStateBackUp_en, %d15
	.loc 1 918 0
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_idxActQueueBackUp
	st.b	[%a2] lo:Fee_idxActQueueBackUp, %d15
	.loc 1 943 0
	mov	%d15, 6
	movh.a	%a2, hi:Fee_Rb_WorkingState_en
	st.b	[%a2] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 947 0
	mov	%d15, 0
	st.b	[%a15] lo:Fee_idxActQueue_u8, %d15
	ret
.LVL18:
.L32:
.LBE50:
.LBE51:
.LBE53:
.LBB54:
	.loc 1 735 0
	ld.bu	%d2, [%a15] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_idxActQueue_u8
	madd	%d15, %d8, %d2, 16
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 12
	jeq	%d15, 2, .L35
.LVL19:
.LBB33:
.LBB34:
	.loc 1 917 0
	mov	%d15, 3
.LVL20:
.L28:
	movh.a	%a15, hi:Fee_Rb_WorkingStateBackUp_en
	st.b	[%a15] lo:Fee_Rb_WorkingStateBackUp_en, %d15
	.loc 1 918 0
	movh.a	%a15, hi:Fee_idxActQueueBackUp
	.loc 1 943 0
	mov	%d15, 6
	.loc 1 918 0
	st.b	[%a15] lo:Fee_idxActQueueBackUp, %d2
	.loc 1 943 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 947 0
	mov	%d15, 0
	st.b	[%a2] lo:Fee_idxActQueue_u8, %d15
	ret
.LVL21:
.L31:
	addi	%d5, %d3, 22
.LVL22:
	sub	%d5, %d15
.LVL23:
	j	.L9
.LVL24:
.L33:
.LBE34:
.LBE33:
	.loc 1 751 0
	mov	%d15, 1
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	ret
.L35:
.LVL25:
.LBB35:
.LBB36:
	.loc 1 917 0
	mov	%d15, 1
	j	.L28
.LBE36:
.LBE35:
.LBE54:
.LFE25:
	.size	Fee_LoadNextOrder, .-Fee_LoadNextOrder
.section .text.Fee_MainFunction,"ax",@progbits
	.align 1
	.global	Fee_MainFunction
	.type	Fee_MainFunction, @function
Fee_MainFunction:
.LFB24:
	.loc 1 126 0
.LVL26:
	.loc 1 169 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	ld.bu	%d15, [%a15] lo:Fee_Rb_WorkingState_en
	.loc 1 126 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 169 0
	jge.u	%d15, 8, .L96
	movh.a	%a2, hi:.L39
	lea	%a2, [%a2] lo:.L39
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L39:
	.code32
	j	.L63
	.code32
	j	.L40
	.code32
	j	.L41
	.code32
	j	.L40
	.code32
	j	.L42
	.code32
	j	.L43
	.code32
	j	.L44
	.code32
	j	.L45
.LVL27:
.L62:
	.loc 1 602 0
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d2, %a2
.LVL28:
	addi	%d15, %d2, lo:Fee_OrderFifo_st
	madd	%d3, %d15, %d5, 16
	mov.a	%a2, %d3
	ld.hu	%d15, [%a2] 6
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 12
	jz.a	%a2, .L59
.L94:
	.loc 1 605 0
	calli	%a2
.LVL29:
	ld.bu	%d5, [%a12] lo:Fee_idxActQueue_u8
.L59:
	.loc 1 623 0
	mov	%d4, 0
	.loc 1 624 0
	mov	%d15, 3
	.loc 1 623 0
	call	Fee_SrvSetFifoMode
.LVL30:
	.loc 1 624 0
	st.b	[%a12] lo:Fee_idxActQueue_u8, %d15
.L96:
	.loc 1 650 0
	mov	%d15, 0
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
.L57:
	.loc 1 655 0
	j	Fee_UpdateStatus
.LVL31:
.L63:
.LBB59:
.LBB60:
	.loc 1 877 0
	movh	%d11, hi:Fee_OrderFifo_st
.LBE60:
.LBE59:
	.loc 1 169 0
	mov	%d15, 0
	mov	%d9, 3
	mov	%d8, 3
.LBB62:
.LBB61:
	.loc 1 877 0
	addi	%d11, %d11, lo:Fee_OrderFifo_st
.L38:
	.loc 1 865 0
	extr.u	%d4, %d15, 0, 16
	and	%d10, %d15, 255
.LVL32:
	call	Fee_SrvGetFifoMode
.LVL33:
	jz	%d2, .L46
.LVL34:
	.loc 1 877 0
	madd	%d2, %d11, %d15, 16
	mov	%d9, %d10
	mov.a	%a2, %d2
	ld.bu	%d2, [%a2] 13
	ne	%d2, %d2, 1
	sel	%d8, %d2, %d8, %d10
.LVL35:
.L46:
	add	%d15, 1
.LVL36:
	.loc 1 860 0
	jne	%d15, 3, .L38
	.loc 1 890 0
	jeq	%d8, 3, .L47
.LVL37:
.LBE61:
.LBE62:
	.loc 1 190 0
	movh.a	%a15, hi:Fee_idxActQueue_u8
	st.b	[%a15] lo:Fee_idxActQueue_u8, %d8
.LVL38:
.L48:
	.loc 1 195 0
	call	Fee_LoadNextOrder
.LVL39:
	.loc 1 655 0
	j	Fee_UpdateStatus
.LVL40:
.L40:
	.loc 1 333 0
	call	Fee_HLWriteBlock
.LVL41:
	.loc 1 337 0
	jeq	%d2, 5, .L97
.LVL42:
.L55:
	.loc 1 552 0
	movh.a	%a12, hi:Fee_idxActQueue_u8
	ld.bu	%d5, [%a12] lo:Fee_idxActQueue_u8
	lt.u	%d15, %d5, 3
	and.ne	%d15, %d2, 0
	jz	%d15, .L57
	.loc 1 554 0
	movh.a	%a2, hi:Fee_JobTypeMapping
	lea	%a2, [%a2] lo:Fee_JobTypeMapping
	addsc.a	%a2, %a2, %d2, 0
	ld.bu	%d15, [%a2]0
	movh.a	%a2, hi:Fee_JobResult
	lea	%a2, [%a2] lo:Fee_JobResult
	addsc.a	%a2, %a2, %d5, 0
	st.b	[%a2]0, %d15
	.loc 1 561 0
	jeq	%d15, 4, .L98
.L58:
	.loc 1 582 0
	add	%d2, -1
.LVL43:
	jge.u	%d2, 6, .L59
	movh.a	%a2, hi:.L61
	lea	%a2, [%a2] lo:.L61
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L61:
	.code32
	j	.L60
	.code32
	j	.L60
	.code32
	j	.L62
	.code32
	j	.L59
	.code32
	j	.L59
	.code32
	j	.L62
.L60:
	.loc 1 589 0
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d3, %a2
	addi	%d15, %d3, lo:Fee_OrderFifo_st
	madd	%d2, %d15, %d5, 16
.LVL44:
	mov.a	%a2, %d2
	ld.hu	%d15, [%a2] 6
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 8
	jnz.a	%a2, .L94
	j	.L59
.LVL45:
.L41:
	.loc 1 382 0
	call	Fee_HLReadBlock
.LVL46:
	.loc 1 384 0
	j	.L55
.LVL47:
.L42:
	.loc 1 353 0
	call	Fee_HLMaintainBlock
.LVL48:
	.loc 1 355 0
	j	.L55
.LVL49:
.L43:
	.loc 1 493 0
	lea	%a4, [%SP] 7
	call	Fee_LLSectorReorganization
.LVL50:
	jnz	%d2, .L96
	.loc 1 501 0
	ld.bu	%d15, [%SP] 7
	jnz	%d15, .L96
	j	.L57
.L44:
	.loc 1 516 0
	lea	%a4, [%SP] 7
	call	Fee_LLSectorReorganization
.LVL51:
	jz	%d2, .L57
	.loc 1 519 0
	movh.a	%a2, hi:Fee_Rb_WorkingStateBackUp_en
	ld.bu	%d15, [%a2] lo:Fee_Rb_WorkingStateBackUp_en
.L95:
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 520 0
	movh.a	%a15, hi:Fee_idxActQueueBackUp
	ld.bu	%d15, [%a15] lo:Fee_idxActQueueBackUp
	movh.a	%a3, hi:Fee_idxActQueue_u8
	st.b	[%a3] lo:Fee_idxActQueue_u8, %d15
	.loc 1 523 0
	mov	%d15, 0
	st.b	[%a2] lo:Fee_Rb_WorkingStateBackUp_en, %d15
	.loc 1 524 0
	mov	%d15, 3
	st.b	[%a15] lo:Fee_idxActQueueBackUp, %d15
	.loc 1 655 0
	j	Fee_UpdateStatus
.LVL52:
.L45:
	.loc 1 440 0
	call	Fee_LLEraseSector
.LVL53:
	jz	%d2, .L57
	.loc 1 444 0
	movh.a	%a2, hi:Fee_Rb_WorkingStateBackUp_en
	ld.bu	%d15, [%a2] lo:Fee_Rb_WorkingStateBackUp_en
	jz	%d15, .L96
	j	.L95
.LVL54:
.L98:
	.loc 1 562 0 discriminator 1
	ld.bu	%d3, [%a15] lo:Fee_Rb_WorkingState_en
	addi	%d4, %d3, -3
	.loc 1 564 0 discriminator 1
	lt.u	%d15, %d4, 2
	or.eq	%d15, %d3, 1
	jz	%d15, .L58
	.loc 1 568 0
	mov	%d15, 1
	st.b	[%a2]0, %d15
	j	.L58
.L97:
.LVL55:
.LBB63:
.LBB64:
	.loc 1 917 0
	ld.bu	%d15, [%a15] lo:Fee_Rb_WorkingState_en
	movh.a	%a2, hi:Fee_Rb_WorkingStateBackUp_en
	st.b	[%a2] lo:Fee_Rb_WorkingStateBackUp_en, %d15
	.loc 1 918 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a3, hi:Fee_idxActQueueBackUp
	st.b	[%a3] lo:Fee_idxActQueueBackUp, %d15
	.loc 1 943 0
	mov	%d15, 6
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
.LVL56:
	.loc 1 947 0
	mov	%d15, 0
	st.b	[%a2] lo:Fee_idxActQueue_u8, %d15
.LBE64:
.LBE63:
	.loc 1 655 0
	j	Fee_UpdateStatus
.LVL57:
.L47:
	.loc 1 190 0
	movh.a	%a12, hi:Fee_idxActQueue_u8
	st.b	[%a12] lo:Fee_idxActQueue_u8, %d9
	.loc 1 193 0
	jne	%d9, 3, .L48
.LVL58:
	.loc 1 200 0 discriminator 1
	movh.a	%a2, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d15, [%a2] lo:Fee_NumFlashBanksUsed_u8
.LVL59:
	jz	%d15, .L50
	.loc 1 205 0
	movh.a	%a2, hi:Fee_Prv_stInit_u8
	ld.bu	%d2, [%a2] lo:Fee_Prv_stInit_u8
	jeq	%d2, 1, .L99
.LVL60:
.L50:
	.loc 1 224 0
	movh	%d4, 1
	addi	%d4, %d4, 8
	mov	%d5, 0
	call	Fee_LLCheckReorganizationNeed
.LVL61:
	jne	%d2, 5, .L57
	.loc 1 224 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] lo:Fee_Rb_WorkingState_en
	jeq	%d15, 7, .L57
	.loc 1 226 0 is_stmt 1
	movh.a	%a15, hi:Fee_Prv_stInit_u8
	.loc 1 225 0
	ld.bu	%d15, [%a15] lo:Fee_Prv_stInit_u8
	jne	%d15, 1, .L57
	.loc 1 229 0
	mov	%d15, 0
	.loc 1 232 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	.loc 1 229 0
	st.b	[%a12] lo:Fee_idxActQueue_u8, %d15
	.loc 1 232 0
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d2
	.loc 1 655 0
	j	Fee_UpdateStatus
.LVL62:
.L99:
	movh.a	%a3, hi:Fee_LLSectorOrder_st
	.loc 1 205 0
	mov	%d2, 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:Fee_LLSectorOrder_st
.LVL63:
.L53:
	.loc 1 203 0
	addsc.a	%a2, %a3, %d2, 3
	ld.bu	%d3, [%a2] 4
	and	%d3, %d3, 251
	jnz	%d3, .L52
	.loc 1 214 0
	mov	%d15, 7
	.loc 1 208 0
	st.b	[%a12] lo:Fee_idxActQueue_u8, %d3
	.loc 1 211 0
	call	Fee_LLSetEraseSector
.LVL64:
	.loc 1 214 0
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 217 0
	j	.L50
.L52:
.LVL65:
	add	%d2, 1
.LVL66:
	.loc 1 200 0 discriminator 2
	and	%d4, %d2, 255
	jlt.u	%d4, %d15, .L53
	j	.L50
.LFE24:
	.size	Fee_MainFunction, .-Fee_MainFunction
.section .text.Fee_SearchNextOrder,"ax",@progbits
	.align 1
	.global	Fee_SearchNextOrder
	.type	Fee_SearchNextOrder, @function
Fee_SearchNextOrder:
.LFB26:
	.loc 1 832 0
.LVL67:
	.loc 1 877 0
	movh	%d12, hi:Fee_OrderFifo_st
	.loc 1 832 0
	mov	%d11, %d4
	mov	%d15, 0
	.loc 1 854 0
	mov	%d8, 3
	.loc 1 857 0
	mov	%d9, 3
	.loc 1 877 0
	addi	%d12, %d12, lo:Fee_OrderFifo_st
.LVL68:
.L102:
	.loc 1 865 0
	extr.u	%d4, %d15, 0, 16
	and	%d10, %d15, 255
.LVL69:
	call	Fee_SrvGetFifoMode
.LVL70:
	jz	%d2, .L101
	.loc 1 865 0 is_stmt 0 discriminator 1
	or	%d2, %d10, %d11
	jz	%d2, .L101
.LVL71:
	.loc 1 877 0 is_stmt 1
	madd	%d2, %d12, %d15, 16
	mov	%d9, %d10
	mov.a	%a15, %d2
	ld.bu	%d2, [%a15] 13
	ne	%d2, %d2, 1
	sel	%d8, %d2, %d8, %d10
.LVL72:
.L101:
	add	%d15, 1
.LVL73:
	.loc 1 860 0 discriminator 2
	jne	%d15, 3, .L102
	ne	%d2, %d8, 3
.LVL74:
	.loc 1 897 0
	sel	%d2, %d2, %d8, %d9
.LVL75:
	ret
.LFE26:
	.size	Fee_SearchNextOrder, .-Fee_SearchNextOrder
.section .text.Fee_TriggerHardSectorReorg,"ax",@progbits
	.align 1
	.global	Fee_TriggerHardSectorReorg
	.type	Fee_TriggerHardSectorReorg, @function
Fee_TriggerHardSectorReorg:
.LFB27:
	.loc 1 915 0
.LVL76:
	.loc 1 917 0
	movh.a	%a15, hi:Fee_Rb_WorkingStateBackUp_en
	st.b	[%a15] lo:Fee_Rb_WorkingStateBackUp_en, %d4
	.loc 1 918 0
	movh.a	%a15, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_idxActQueueBackUp
	st.b	[%a2] lo:Fee_idxActQueueBackUp, %d15
	.loc 1 943 0
	mov	%d15, 6
	movh.a	%a2, hi:Fee_Rb_WorkingState_en
	st.b	[%a2] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 947 0
	mov	%d15, 0
	st.b	[%a15] lo:Fee_idxActQueue_u8, %d15
	ret
.LFE27:
	.size	Fee_TriggerHardSectorReorg, .-Fee_TriggerHardSectorReorg
	.global	Fee_idxActQueueBackUp
.section .data.a1.Fee_idxActQueueBackUp,"aw",@progbits
	.type	Fee_idxActQueueBackUp, @object
	.size	Fee_idxActQueueBackUp, 1
Fee_idxActQueueBackUp:
	.byte	3
	.global	Fee_Rb_WorkingStateBackUp_en
.section .bss.a1.Fee_Rb_WorkingStateBackUp_en,"aw",@nobits
	.type	Fee_Rb_WorkingStateBackUp_en, @object
	.size	Fee_Rb_WorkingStateBackUp_en, 1
Fee_Rb_WorkingStateBackUp_en:
	.zero	1
	.global	Fee_JobTypeMapping
.section .rodata.a1.Fee_JobTypeMapping,"a",@progbits
	.type	Fee_JobTypeMapping, @object
	.size	Fee_JobTypeMapping, 9
Fee_JobTypeMapping:
	.byte	2
	.byte	0
	.byte	5
	.byte	4
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	2
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1411
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_MainFunction.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xd8
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x23f
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
	.byte	0x4
	.byte	0x18
	.uaword	0x2f4
	.uleb128 0x5
	.string	"MEMIF_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_BUSY"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_BUSY_INTERNAL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"MemIf_StatusType"
	.byte	0x4
	.byte	0x1d
	.uaword	0x2ac
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.uaword	0x391
	.uleb128 0x5
	.string	"MEMIF_JOB_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_JOB_FAILED"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_JOB_PENDING"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_JOB_CANCELED"
	.sleb128 3
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INCONSISTENT"
	.sleb128 4
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INVALID"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MemIf_JobResultType"
	.byte	0x4
	.byte	0x27
	.uaword	0x30c
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x43
	.uaword	0x494
	.uleb128 0x5
	.string	"FEE_RB_IDLE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_RB_WRITE_MODE_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_RB_READ_MODE_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_RB_INVALIDATE_MODE_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_RB_MAINTAIN_MODE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_RB_SOFT_SECTOR_REORG_MODE_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_RB_HARD_SECTOR_REORG_MODE_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_RB_SECTOR_ERASE_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_RB_STOPMODE_E"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"Fee_Rb_WorkingStateType_ten"
	.byte	0x5
	.byte	0x4d
	.uaword	0x3ac
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x52
	.uaword	0x536
	.uleb128 0x5
	.string	"FEE_NO_ORDER"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_READ_ORDER"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_WRITE_ORDER"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_INVALIDATE_ORDER"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_MAINTAIN_ORDER"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_FORCED_READ_ORDER"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlMode_ten"
	.byte	0x5
	.byte	0x59
	.uaword	0x4b7
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ca
	.uleb128 0x6
	.byte	0x4
	.uaword	0x558
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.byte	0x9f
	.uaword	0x589
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x2
	.byte	0xa2
	.uaword	0x55a
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.byte	0xa9
	.uaword	0x5f0
	.uleb128 0x5
	.string	"FEE_INTERNAL_JOB"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_NVM_JOB"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_ADAPTER_JOB"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_QUEUE_SIZE"
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0x2
	.byte	0xb0
	.uaword	0x6a2
	.uleb128 0x9
	.string	"DataBufferPtr_pu8"
	.byte	0x2
	.byte	0xb2
	.uaword	0x54c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FeeIdx_u16"
	.byte	0x2
	.byte	0xb3
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"BlockPropIdx_u16"
	.byte	0x2
	.byte	0xb4
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"Offset_u16"
	.byte	0x2
	.byte	0xb5
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.byte	0xb6
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"Mode_en"
	.byte	0x2
	.byte	0xb7
	.uaword	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Prio_en"
	.byte	0x2
	.byte	0xb8
	.uaword	0x589
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x9
	.string	"SecLevel_u8"
	.byte	0x2
	.byte	0xb9
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x2
	.byte	0xba
	.uaword	0x5f0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.byte	0xdb
	.uaword	0x815
	.uleb128 0x5
	.string	"FEE_ERASED_MARKER_ID_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_USED_MARKER_ID_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_FULL_MARKER_ID_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_ERASE_REQUEST_ID_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_START_MARKER_ID_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_CLONE_START_MARKER_ID_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID1_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID2_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID3_E"
	.sleb128 9
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID4_E"
	.sleb128 10
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID5_E"
	.sleb128 11
	.uleb128 0x5
	.string	"FEE_ERASE_START_FLAG_ID_E"
	.sleb128 12
	.uleb128 0x5
	.string	"FEE_NUM_MARKER_E"
	.sleb128 13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.uahalf	0x103
	.uaword	0x8bb
	.uleb128 0x5
	.string	"FEE_SECTOR_STATE_UNDEF_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_SECTOR_ERASED_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_SECTOR_USED_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_SECTOR_FULL_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_SECTOR_REQUEST2ERASE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_SECTOR_CONSIDERED_E"
	.sleb128 13
	.byte	0
	.uleb128 0xc
	.string	"Fee_SectorState_ten"
	.byte	0x2
	.uahalf	0x10a
	.uaword	0x821
	.uleb128 0xd
	.byte	0x8
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x92b
	.uleb128 0xe
	.string	"SecChngCnt_u32"
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SecState_en"
	.byte	0x2
	.uahalf	0x110
	.uaword	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"xPhySecIdx_u8"
	.byte	0x2
	.uahalf	0x111
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x2
	.uahalf	0x112
	.uaword	0x8d7
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.uahalf	0x116
	.uaword	0xa20
	.uleb128 0x5
	.string	"FEE_ORDER_PENDING_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_ORDER_FINISHED_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_BLOCK_INVALIDATED_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_ERROR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_SECTORCHANGE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_SECTORFULL_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_ABORTED_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_ERASE_SECTOR_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_SEARCH_ABORTED_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_NUM_RET_VAL_E"
	.sleb128 9
	.byte	0
	.uleb128 0xc
	.string	"Fee_stRetVal_ten"
	.byte	0x2
	.uahalf	0x121
	.uaword	0x949
	.uleb128 0xd
	.byte	0x10
	.byte	0x2
	.uahalf	0x14c
	.uaword	0xace
	.uleb128 0xe
	.string	"BlockPersistentId_u16"
	.byte	0x2
	.uahalf	0x14e
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Flags_u16"
	.byte	0x2
	.uahalf	0x14f
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x150
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"JobEndNotification_pfn"
	.byte	0x2
	.uahalf	0x151
	.uaword	0xace
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"JobErrorNotification_pfn"
	.byte	0x2
	.uahalf	0x152
	.uaword	0xace
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.uaword	0x552
	.uleb128 0xc
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x2
	.uahalf	0x153
	.uaword	0xa39
	.uleb128 0x11
	.string	"Fee_SrvRoundUp"
	.byte	0x2
	.uahalf	0x5f7
	.byte	0x1
	.uaword	0x231
	.byte	0x3
	.uaword	0xb64
	.uleb128 0x12
	.string	"value_u32"
	.byte	0x2
	.uahalf	0x5f7
	.uaword	0x231
	.uleb128 0x12
	.string	"stepsize_u32"
	.byte	0x2
	.uahalf	0x5f7
	.uaword	0x231
	.uleb128 0x13
	.string	"modValue_u32"
	.byte	0x2
	.uahalf	0x5f9
	.uaword	0x231
	.uleb128 0x13
	.string	"retVal_u32"
	.byte	0x2
	.uahalf	0x5f9
	.uaword	0x231
	.byte	0
	.uleb128 0x11
	.string	"Fee_SrvCalcSpaceNeededForWrite"
	.byte	0x2
	.uahalf	0x615
	.byte	0x1
	.uaword	0x231
	.byte	0x3
	.uaword	0xbec
	.uleb128 0x12
	.string	"blockLen_u16"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x1f5
	.uleb128 0x12
	.string	"securityLevel_b"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x27c
	.uleb128 0x12
	.string	"noFallback_b"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x27c
	.uleb128 0x13
	.string	"neededSpace_u32"
	.byte	0x2
	.uahalf	0x617
	.uaword	0x231
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Fee_TriggerHardSectorReorg"
	.byte	0x1
	.uahalf	0x392
	.byte	0x1
	.byte	0x1
	.uaword	0xc2b
	.uleb128 0x12
	.string	"WorkingState_en"
	.byte	0x1
	.uahalf	0x392
	.uaword	0x494
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Fee_LoadNextOrder"
	.byte	0x1
	.uahalf	0x2a2
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe55
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0x1f5
	.uaword	.LLST0
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0
	.uaword	0xd6f
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0x1f5
	.uaword	.LLST1
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0x1f5
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2bb
	.uaword	0x27c
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2bb
	.uaword	0x27c
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	0xb64
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0xd22
	.uleb128 0x1a
	.uaword	0xbbe
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	0xba6
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	0xb91
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1c
	.uaword	0xbd3
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	0xaf7
	.uaword	.LBB25
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0x61f
	.uleb128 0x1a
	.uaword	0xb26
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	0xb14
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x1c
	.uaword	0xb3b
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	0xb50
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbec
	.uaword	.LBB33
	.uaword	.LBE33
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0xd40
	.uleb128 0x1a
	.uaword	0xc12
	.uaword	.LLST12
	.byte	0
	.uleb128 0x1e
	.uaword	0xbec
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0xd5b
	.uleb128 0x1f
	.uaword	0xc12
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.uaword	.LVL5
	.uaword	0x12a8
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x10008
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x1f5
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x1f5
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2fd
	.uaword	0x27c
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2fd
	.uaword	0x27c
	.uaword	.LLST14
	.uleb128 0x19
	.uaword	0xb64
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x30f
	.uaword	0xe22
	.uleb128 0x1a
	.uaword	0xbbe
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	0xba6
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	0xb91
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x1c
	.uaword	0xbd3
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	0xaf7
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x2
	.uahalf	0x61f
	.uleb128 0x1a
	.uaword	0xb26
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	0xb14
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x1c
	.uaword	0xb3b
	.uaword	.LLST20
	.uleb128 0x1c
	.uaword	0xb50
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0xbec
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x314
	.uaword	0xe40
	.uleb128 0x1a
	.uaword	0xc12
	.uaword	.LLST22
	.byte	0
	.uleb128 0x20
	.uaword	.LVL13
	.uaword	0x12a8
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x10008
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"Fee_SearchNextOrder"
	.byte	0x1
	.uahalf	0x33f
	.byte	0x1
	.uaword	0x1ca
	.byte	0x1
	.uaword	0xecc
	.uleb128 0x12
	.string	"isIntOrder_b"
	.byte	0x1
	.uahalf	0x33f
	.uaword	0x27c
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.uahalf	0x341
	.uaword	0x1ca
	.uleb128 0x13
	.string	"idxActQueue_u8"
	.byte	0x1
	.uahalf	0x342
	.uaword	0x1ca
	.uleb128 0x13
	.string	"idexHighPrioOrder_u8"
	.byte	0x1
	.uahalf	0x343
	.uaword	0x1ca
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Fee_MainFunction"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST23
	.byte	0x1
	.uaword	0x106b
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.uaword	0x1ca
	.uaword	.LLST24
	.uleb128 0x25
	.string	"xRetVal"
	.byte	0x1
	.byte	0x80
	.uaword	0xa20
	.uaword	.LLST25
	.uleb128 0x26
	.string	"stSectReorgInt_b"
	.byte	0x1
	.byte	0x81
	.uaword	0x27c
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x27
	.string	"tmpContinueToErase_b"
	.byte	0x1
	.byte	0x82
	.uaword	0x27c
	.byte	0x1
	.uleb128 0x28
	.uaword	0xe55
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0xbe
	.uaword	0xf91
	.uleb128 0x22
	.uaword	0xe78
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x1c
	.uaword	0xe8d
	.uaword	.LLST26
	.uleb128 0x1c
	.uaword	0xe97
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0xeae
	.uleb128 0x20
	.uaword	.LVL33
	.uaword	0x12e0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbec
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.uahalf	0x157
	.uaword	0xfab
	.uleb128 0x22
	.uaword	0xc12
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL30
	.uaword	0x1308
	.uaword	0xfbe
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL31
	.byte	0x1
	.uaword	0x1331
	.uleb128 0x2c
	.uaword	.LVL39
	.uaword	0xc2b
	.uleb128 0x2b
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x1331
	.uleb128 0x2c
	.uaword	.LVL41
	.uaword	0x1349
	.uleb128 0x2c
	.uaword	.LVL46
	.uaword	0x1365
	.uleb128 0x2c
	.uaword	.LVL48
	.uaword	0x1380
	.uleb128 0x2a
	.uaword	.LVL50
	.uaword	0x139f
	.uaword	0x100a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL51
	.uaword	0x139f
	.uaword	0x101e
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL52
	.byte	0x1
	.uaword	0x1331
	.uleb128 0x2c
	.uaword	.LVL53
	.uaword	0x13d5
	.uleb128 0x2b
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x1331
	.uleb128 0x2a
	.uaword	.LVL61
	.uaword	0x12a8
	.uaword	0x1057
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x10008
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL62
	.byte	0x1
	.uaword	0x1331
	.uleb128 0x2c
	.uaword	.LVL64
	.uaword	0x13f2
	.byte	0
	.uleb128 0x2d
	.uaword	0xe55
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10b5
	.uleb128 0x1a
	.uaword	0xe78
	.uaword	.LLST28
	.uleb128 0x1c
	.uaword	0xe8d
	.uaword	.LLST29
	.uleb128 0x1c
	.uaword	0xe97
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0xeae
	.uaword	.LLST31
	.uleb128 0x20
	.uaword	.LVL70
	.uaword	0x12e0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xbec
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10d2
	.uleb128 0x2e
	.uaword	0xc12
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2f
	.uaword	0x391
	.uaword	0x10e2
	.uleb128 0x30
	.uaword	0x815
	.byte	0x8
	.byte	0
	.uleb128 0x31
	.string	"Fee_JobTypeMapping"
	.byte	0x1
	.byte	0x26
	.uaword	0x1103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_JobTypeMapping
	.uleb128 0x10
	.uaword	0x10d2
	.uleb128 0x2f
	.uaword	0x92b
	.uaword	0x1118
	.uleb128 0x30
	.uaword	0x815
	.byte	0x1
	.byte	0
	.uleb128 0x32
	.string	"Fee_LLSectorOrder_st"
	.byte	0x2
	.uahalf	0x406
	.uaword	0x1108
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x6a2
	.uaword	0x1147
	.uleb128 0x30
	.uaword	0x815
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.string	"Fee_OrderFifo_st"
	.byte	0x2
	.uahalf	0x409
	.uaword	0x1137
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x391
	.uaword	0x1172
	.uleb128 0x30
	.uaword	0x815
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.string	"Fee_JobResult"
	.byte	0x2
	.uahalf	0x40d
	.uaword	0x1162
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"Fee_Prv_stInit_u8"
	.byte	0x2
	.uahalf	0x41a
	.uaword	0x1ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"Fee_NumFlashBanksUsed_u8"
	.byte	0x2
	.uahalf	0x41c
	.uaword	0x1ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"Fee_idxActQueueBackUp"
	.byte	0x1
	.byte	0x55
	.uaword	0x1ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_idxActQueueBackUp
	.uleb128 0x32
	.string	"Fee_GlobModuleState_st"
	.byte	0x2
	.uahalf	0x42f
	.uaword	0x2f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"Fee_Rb_WorkingStateBackUp_en"
	.byte	0x1
	.byte	0x4f
	.uaword	0x494
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_Rb_WorkingStateBackUp_en
	.uleb128 0x32
	.string	"Fee_idxActQueue_u8"
	.byte	0x2
	.uahalf	0x438
	.uaword	0x1ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0xad3
	.uaword	0x1266
	.uleb128 0x30
	.uaword	0x815
	.byte	0x39
	.byte	0
	.uleb128 0x32
	.string	"Fee_BlockProperties_st"
	.byte	0x2
	.uahalf	0x464
	.uaword	0x1256
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"Fee_Rb_WorkingState_en"
	.byte	0x2
	.uahalf	0x497
	.uaword	0x494
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"Fee_LLCheckReorganizationNeed"
	.byte	0x2
	.uahalf	0x508
	.byte	0x1
	.uaword	0xa20
	.byte	0x1
	.uaword	0x12e0
	.uleb128 0x34
	.uaword	0x231
	.uleb128 0x34
	.uaword	0x1f5
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"Fee_SrvGetFifoMode"
	.byte	0x2
	.uahalf	0x53a
	.byte	0x1
	.uaword	0x536
	.byte	0x1
	.uaword	0x1308
	.uleb128 0x34
	.uaword	0x1f5
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Fee_SrvSetFifoMode"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x1
	.uaword	0x1331
	.uleb128 0x34
	.uaword	0x536
	.uleb128 0x34
	.uaword	0x1f5
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Fee_UpdateStatus"
	.byte	0x2
	.uahalf	0x53d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Fee_HLWriteBlock"
	.byte	0x2
	.uahalf	0x50c
	.byte	0x1
	.uaword	0xa20
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Fee_HLReadBlock"
	.byte	0x2
	.uahalf	0x510
	.byte	0x1
	.uaword	0xa20
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Fee_HLMaintainBlock"
	.byte	0x2
	.uahalf	0x514
	.byte	0x1
	.uaword	0xa20
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"Fee_LLSectorReorganization"
	.byte	0x2
	.uahalf	0x509
	.byte	0x1
	.uaword	0xa20
	.byte	0x1
	.uaword	0x13cf
	.uleb128 0x34
	.uaword	0x13cf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x27c
	.uleb128 0x37
	.byte	0x1
	.string	"Fee_LLEraseSector"
	.byte	0x2
	.uahalf	0x4bd
	.byte	0x1
	.uaword	0xa20
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"Fee_LLSetEraseSector"
	.byte	0x2
	.uahalf	0x4be
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0x1ca
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL8
	.uaword	.LVL13-1
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL13-1
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LFB24
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE24
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL57
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL68
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE26
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE26
	.uahalf	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	0
	.uaword	0
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"blockPropIdx_u16"
.LASF0:
	.string	"Length_u16"
.LASF1:
	.string	"dataLen_u16"
.LASF3:
	.string	"noFbActive_b"
.LASF4:
	.string	"doubleSecActive_b"
	.extern	Fee_LLSetEraseSector,STT_FUNC,0
	.extern	Fee_LLSectorOrder_st,STT_OBJECT,16
	.extern	Fee_Prv_stInit_u8,STT_OBJECT,1
	.extern	Fee_NumFlashBanksUsed_u8,STT_OBJECT,1
	.extern	Fee_LLEraseSector,STT_FUNC,0
	.extern	Fee_LLSectorReorganization,STT_FUNC,0
	.extern	Fee_HLMaintainBlock,STT_FUNC,0
	.extern	Fee_HLReadBlock,STT_FUNC,0
	.extern	Fee_JobResult,STT_OBJECT,3
	.extern	Fee_HLWriteBlock,STT_FUNC,0
	.extern	Fee_SrvGetFifoMode,STT_FUNC,0
	.extern	Fee_UpdateStatus,STT_FUNC,0
	.extern	Fee_SrvSetFifoMode,STT_FUNC,0
	.extern	Fee_GlobModuleState_st,STT_OBJECT,1
	.extern	Fee_LLCheckReorganizationNeed,STT_FUNC,0
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Fee_Rb_WorkingState_en,STT_OBJECT,1
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_idxActQueue_u8,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
