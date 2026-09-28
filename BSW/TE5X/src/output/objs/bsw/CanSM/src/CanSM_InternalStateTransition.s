	.file	"CanSM_InternalStateTransition.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_GetHandle,"ax",@progbits
	.align 1
	.global	CanSM_GetHandle
	.type	CanSM_GetHandle, @function
CanSM_GetHandle:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_InternalStateTransition.c"
	.loc 1 34 0
.LVL0:
	.loc 1 42 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	.loc 1 39 0
	mov	%d2, 0
	.loc 1 42 0
	ld.bu	%d15, [%a15] 11
	jz	%d15, .L2
	.loc 1 45 0
	ld.a	%a15, [%a15]0
	ld.bu	%d3, [%a15] 15
	jeq	%d3, %d4, .L13
	lea	%a15, [%a15] 20
	mov	%d3, 0
	j	.L5
.LVL1:
.L6:
	ld.bu	%d5, [%a15] 15
	lea	%a15, [%a15] 20
	jeq	%d5, %d4, .L14
.LVL2:
.L5:
	add	%d3, 1
.LVL3:
	and	%d2, %d3, 255
.LVL4:
	.loc 1 42 0 discriminator 2
	jlt.u	%d2, %d15, .L6
	add	%d2, %d15, 1
	and	%d2, %d2, 255
.LVL5:
.L2:
	.loc 1 58 0
	ret
.LVL6:
.L14:
	ret
.LVL7:
.L13:
	ret
.LFE76:
	.size	CanSM_GetHandle, .-CanSM_GetHandle
.section .text.CanSM_StopCtrl,"ax",@progbits
	.align 1
	.global	CanSM_StopCtrl
	.type	CanSM_StopCtrl, @function
CanSM_StopCtrl:
.LFB77:
	.loc 1 88 0
.LVL8:
	.loc 1 105 0
	movh.a	%a13, hi:CanSM_Network_pcst
	ld.a	%a2, [%a13] lo:CanSM_Network_pcst
	mul	%d12, %d4, 20
	.loc 1 107 0
	movh.a	%a14, hi:CanSM_CurrNw_Mode_en
	lea	%a14, [%a14] lo:CanSM_CurrNw_Mode_en
	.loc 1 105 0
	addsc.a	%a15, %a2, %d12, 0
.LVL9:
	.loc 1 119 0
	movh.a	%a12, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 107 0
	addsc.a	%a2, %a14, %d4, 0
	.loc 1 110 0
	ld.bu	%d2, [%a15] 13
	.loc 1 119 0
	lea	%a12, [%a12] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 88 0
	mov	%d8, %d4
	.loc 1 107 0
	ld.bu	%d11, [%a2]0
.LVL10:
	.loc 1 110 0
	mov	%d15, 0
	mov	%d9, 0
	.loc 1 119 0
	addsc.a	%a12, %a12, %d4, 0
	.loc 1 110 0
	jnz	%d2, .L40
	j	.L21
.LVL11:
.L19:
	addi	%d3, %d10, 1
	ld.bu	%d2, [%a15] 13
	.loc 1 124 0
	add	%d9, 1
.LVL12:
	.loc 1 110 0
	and	%d3, %d3, 255
	.loc 1 124 0
	and	%d9, %d9, 255
.LVL13:
	add	%d15, 1
	.loc 1 110 0
	jge.u	%d3, %d2, .L49
.LVL14:
.L40:
	.loc 1 113 0
	and	%d2, %d15, 255
	ld.a	%a3, [%a15]0
	mov.a	%a2, %d2
	.loc 1 116 0
	mov	%d5, 3
	.loc 1 113 0
	add.a	%a2, %a3
	.loc 1 116 0
	ld.bu	%d4, [%a2]0
	and	%d10, %d15, 255
.LVL15:
	call	CanIf_SetControllerMode
.LVL16:
	jne	%d2, 1, .L19
	.loc 1 119 0
	ld.bu	%d2, [%a12]0
	addi	%d3, %d10, 1
	add	%d2, 1
	st.b	[%a12]0, %d2
.LVL17:
	.loc 1 110 0
	ld.bu	%d2, [%a15] 13
	and	%d3, %d3, 255
	add	%d15, 1
	jlt.u	%d3, %d2, .L40
.LVL18:
.L49:
	.loc 1 128 0
	jeq	%d2, %d9, .L21
	.loc 1 283 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
.LVL19:
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d8, 0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d2, [%a15]0
	ld.bu	%d15, [%a2] lo:CanSM_ModeRepeatReq_Max_u8
	jlt.u	%d2, %d15, .L15
	.loc 1 286 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 299 0
	jeq	%d11, 4, .L33
	.loc 1 321 0
	jeq	%d11, 6, .L50
	.loc 1 359 0
	jeq	%d11, 5, .L51
.L33:
	.loc 1 408 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL20:
.L57:
	.loc 1 153 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L46
.LVL21:
.L15:
	ret
.LVL22:
.L21:
	.loc 1 131 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL23:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L52
	.loc 1 235 0
	jeq	%d11, 4, .L53
	.loc 1 250 0
	jeq	%d11, 6, .L54
	.loc 1 256 0
	jeq	%d11, 5, .L55
	.loc 1 262 0
	ne	%d11, %d11, 9
.LVL24:
	jnz	%d11, .L30
	.loc 1 262 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a15, [%a15] lo:CanSM_TxTimeoutexception_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L56
.L30:
	.loc 1 276 0 is_stmt 1
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d8, 2
	mov	%d15, 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.LVL25:
.L51:
	.loc 1 359 0 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d2, [%a15]0
	jne	%d2, 3, .L33
.L47:
	.loc 1 361 0
	st.b	[%a15]0, %d15
	.loc 1 367 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 365 0
	addsc.a	%a14, %a14, %d8, 0
	.loc 1 367 0
	st.b	[%a15]0, %d15
	.loc 1 386 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 365 0
	mov	%d2, 4
	.loc 1 392 0
	mov	%d15, 1
	.loc 1 365 0
	st.b	[%a14]0, %d2
	.loc 1 392 0
	st.b	[%a15]0, %d15
	j	.L33
.L53:
	.loc 1 235 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L30
	.loc 1 238 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
	j	.L30
.L50:
	.loc 1 321 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d2, [%a15]0
	jne	%d2, 3, .L33
	j	.L47
.L52:
	.loc 1 134 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 137 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d15
.LVL26:
	.loc 1 153 0
	jeq	%d11, 4, .L57
	.loc 1 198 0
	jeq	%d11, 6, .L58
	.loc 1 203 0
	jeq	%d11, 5, .L59
	.loc 1 208 0
	ne	%d11, %d11, 9
.LVL27:
	jnz	%d11, .L15
	.loc 1 208 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a15, [%a15] lo:CanSM_TxTimeoutexception_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L15
	.loc 1 210 0 is_stmt 1
	mov	%d15, 3
	st.b	[%a15]0, %d15
	ret
.LVL28:
.L54:
	.loc 1 250 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 3, .L30
.L45:
	.loc 1 259 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
	j	.L30
.LVL29:
.L56:
	.loc 1 265 0
	mov	%d15, 2
	st.b	[%a15]0, %d15
	j	.L30
.LVL30:
.L58:
	.loc 1 198 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 3, .L15
.L46:
	.loc 1 200 0
	mov	%d15, 5
	st.b	[%a15]0, %d15
	ret
.L59:
	.loc 1 203 0 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 3, .L15
	.loc 1 205 0
	st.b	[%a15]0, %d11
	ret
.LVL31:
.L55:
	.loc 1 256 0 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 3, .L30
	j	.L45
.LFE77:
	.size	CanSM_StopCtrl, .-CanSM_StopCtrl
.section .text.CanSM_StartCtrl,"ax",@progbits
	.align 1
	.global	CanSM_StartCtrl
	.type	CanSM_StartCtrl, @function
CanSM_StartCtrl:
.LFB78:
	.loc 1 446 0
.LVL32:
	.loc 1 458 0
	movh.a	%a13, hi:CanSM_Network_pcst
	ld.a	%a2, [%a13] lo:CanSM_Network_pcst
	mul	%d11, %d4, 20
	.loc 1 460 0
	movh.a	%a14, hi:CanSM_CurrNw_Mode_en
	lea	%a14, [%a14] lo:CanSM_CurrNw_Mode_en
	.loc 1 458 0
	addsc.a	%a15, %a2, %d11, 0
.LVL33:
	.loc 1 472 0
	movh.a	%a12, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 460 0
	addsc.a	%a2, %a14, %d4, 0
	.loc 1 463 0
	ld.bu	%d2, [%a15] 13
	.loc 1 472 0
	lea	%a12, [%a12] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 446 0
	mov	%d8, %d4
	.loc 1 460 0
	ld.bu	%d12, [%a2]0
.LVL34:
	.loc 1 463 0
	mov	%d15, 0
	mov	%d9, 0
	.loc 1 472 0
	addsc.a	%a12, %a12, %d4, 0
	.loc 1 463 0
	jnz	%d2, .L82
	j	.L66
.LVL35:
.L64:
	addi	%d3, %d10, 1
	ld.bu	%d2, [%a15] 13
	.loc 1 477 0
	add	%d9, 1
.LVL36:
	.loc 1 463 0
	and	%d3, %d3, 255
	.loc 1 477 0
	and	%d9, %d9, 255
.LVL37:
	add	%d15, 1
	.loc 1 463 0
	jge.u	%d3, %d2, .L92
.LVL38:
.L82:
	.loc 1 466 0
	and	%d2, %d15, 255
	ld.a	%a3, [%a15]0
	mov.a	%a2, %d2
	.loc 1 469 0
	mov	%d5, 2
	.loc 1 466 0
	add.a	%a2, %a3
	.loc 1 469 0
	ld.bu	%d4, [%a2]0
	and	%d10, %d15, 255
.LVL39:
	call	CanIf_SetControllerMode
.LVL40:
	jne	%d2, 1, .L64
	.loc 1 472 0
	ld.bu	%d2, [%a12]0
	addi	%d3, %d10, 1
	add	%d2, 1
	st.b	[%a12]0, %d2
.LVL41:
	.loc 1 463 0
	ld.bu	%d2, [%a15] 13
	and	%d3, %d3, 255
	add	%d15, 1
	jlt.u	%d3, %d2, .L82
.LVL42:
.L92:
	.loc 1 481 0
	jeq	%d2, %d9, .L66
	.loc 1 571 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
.LVL43:
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d8, 0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d2, [%a15]0
	ld.bu	%d15, [%a2] lo:CanSM_ModeRepeatReq_Max_u8
	jlt.u	%d2, %d15, .L60
	.loc 1 574 0
	mov	%d2, 0
	st.b	[%a15]0, %d2
	.loc 1 575 0
	addsc.a	%a15, %a14, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 6, .L93
	.loc 1 627 0
	jeq	%d15, 5, .L94
	.loc 1 664 0
	ne	%d15, %d15, 9
	jnz	%d15, .L77
	.loc 1 664 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a15, [%a15] lo:CanSM_TxTimeoutexception_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 3, .L86
.L77:
	.loc 1 676 0 is_stmt 1
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL44:
.L99:
	.loc 1 491 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 5, .L87
.LVL45:
.L60:
	ret
.LVL46:
.L66:
	.loc 1 484 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL47:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L95
	.loc 1 530 0
	jeq	%d12, 6, .L96
	.loc 1 544 0
	jeq	%d12, 5, .L97
	.loc 1 550 0
	ne	%d12, %d12, 9
.LVL48:
	jnz	%d12, .L74
	.loc 1 550 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a15, [%a15] lo:CanSM_TxTimeoutexception_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 3, .L98
.L74:
	.loc 1 564 0 is_stmt 1
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d8, 2
	mov	%d15, 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
.L87:
	st.b	[%a15]0, %d15
	ret
.LVL49:
.L96:
	.loc 1 530 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 5, .L74
	.loc 1 533 0
	st.b	[%a15]0, %d12
	j	.L74
.L94:
	.loc 1 627 0 discriminator 1
	movh.a	%a2, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a2, [%a2] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a2, %a2, %d8, 0
	ld.bu	%d15, [%a2]0
	jne	%d15, 5, .L77
.L88:
	.loc 1 629 0
	st.b	[%a2]0, %d2
	.loc 1 633 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
	.loc 1 635 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d2
	.loc 1 654 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
.L86:
	.loc 1 667 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	j	.L77
.L93:
	.loc 1 575 0 discriminator 1
	movh.a	%a2, hi:CanSM_PreFullCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a2, %a2, %d8, 0
	ld.bu	%d15, [%a2]0
	jne	%d15, 5, .L77
	j	.L88
.L95:
	.loc 1 487 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 489 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d15
	.loc 1 491 0
	jeq	%d12, 6, .L99
	.loc 1 507 0
	jeq	%d12, 5, .L100
	.loc 1 513 0
	ne	%d12, %d12, 9
.LVL50:
	jnz	%d12, .L60
	.loc 1 513 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a15, [%a15] lo:CanSM_TxTimeoutexception_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 3, .L87
	ret
.LVL51:
.L97:
	.loc 1 544 0 is_stmt 1 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 5, .L74
	.loc 1 547 0
	mov	%d15, 6
	st.b	[%a15]0, %d15
	j	.L74
.LVL52:
.L98:
	.loc 1 553 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
	j	.L74
.LVL53:
.L100:
	.loc 1 507 0 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 5, .L87
	ret
.LFE78:
	.size	CanSM_StartCtrl, .-CanSM_StartCtrl
.section .text.CanSM_SleepCtrl,"ax",@progbits
	.align 1
	.global	CanSM_SleepCtrl
	.type	CanSM_SleepCtrl, @function
CanSM_SleepCtrl:
.LFB79:
	.loc 1 712 0
.LVL54:
	.loc 1 722 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.w	%d15, [%a15] lo:CanSM_Network_pcst
	.loc 1 734 0
	movh.a	%a12, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 722 0
	madd	%d2, %d15, %d4, 20
	.loc 1 734 0
	lea	%a12, [%a12] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 712 0
	mov	%d9, %d4
	.loc 1 722 0
	mov.a	%a15, %d2
.LVL55:
	.loc 1 725 0
	mov	%d15, 0
	ld.bu	%d2, [%a15] 13
.LVL56:
	mov	%d8, 0
	.loc 1 734 0
	addsc.a	%a12, %a12, %d4, 0
	.loc 1 725 0
	jnz	%d2, .L111
	j	.L108
.LVL57:
.L105:
	addi	%d3, %d10, 1
	ld.bu	%d2, [%a15] 13
	.loc 1 739 0
	add	%d8, 1
.LVL58:
	.loc 1 725 0
	and	%d3, %d3, 255
	.loc 1 739 0
	and	%d8, %d8, 255
.LVL59:
	add	%d15, 1
	.loc 1 725 0
	jge.u	%d3, %d2, .L116
.LVL60:
.L111:
	.loc 1 728 0
	and	%d2, %d15, 255
	ld.a	%a3, [%a15]0
	mov.a	%a2, %d2
	.loc 1 731 0
	mov	%d5, 1
	.loc 1 728 0
	add.a	%a2, %a3
	.loc 1 731 0
	ld.bu	%d4, [%a2]0
	and	%d10, %d15, 255
.LVL61:
	call	CanIf_SetControllerMode
.LVL62:
	jne	%d2, 1, .L105
	.loc 1 734 0
	ld.bu	%d2, [%a12]0
	addi	%d3, %d10, 1
	add	%d2, 1
	st.b	[%a12]0, %d2
.LVL63:
	.loc 1 725 0
	ld.bu	%d2, [%a15] 13
	and	%d3, %d3, 255
	add	%d15, 1
	jlt.u	%d3, %d2, .L111
.LVL64:
.L116:
	.loc 1 744 0
	jeq	%d2, %d8, .L108
	.loc 1 803 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
.LVL65:
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d9, 0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d2, [%a15]0
	ld.bu	%d15, [%a2] lo:CanSM_ModeRepeatReq_Max_u8
	jge.u	%d2, %d15, .L117
	ret
.L117:
	.loc 1 806 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 824 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d9, 0
	mov	%d15, 1
	.loc 1 827 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	.loc 1 824 0
	st.b	[%a15]0, %d15
	.loc 1 827 0
	j	Det_ReportError
.LVL66:
.L108:
	.loc 1 747 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL67:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d9, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L118
	.loc 1 794 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d9, 0
	mov	%d15, 7
	st.b	[%a15]0, %d15
	.loc 1 797 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d9, 2
	mov	%d15, 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.L118:
	.loc 1 750 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 769 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d9, 0
	mov	%d2, 9
	st.b	[%a15]0, %d2
	.loc 1 772 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d9, 0
	st.b	[%a15]0, %d15
	ret
.LFE79:
	.size	CanSM_SleepCtrl, .-CanSM_SleepCtrl
.section .text.CanSM_NormalTrcv,"ax",@progbits
	.align 1
	.global	CanSM_NormalTrcv
	.type	CanSM_NormalTrcv, @function
CanSM_NormalTrcv:
.LFB80:
	.loc 1 865 0
.LVL68:
	.loc 1 878 0
	movh.a	%a15, hi:CanSM_Network_pcst
	mul	%d10, %d4, 20
	ld.a	%a3, [%a15] lo:CanSM_Network_pcst
	.loc 1 869 0
	movh.a	%a12, hi:CanSM_CurrNw_Mode_en
	.loc 1 872 0
	movh.a	%a14, hi:CanSM_ReqMode_a
	.loc 1 875 0
	movh.a	%a13, hi:CanSM_ModeChangeReq_flag
	.loc 1 869 0
	lea	%a12, [%a12] lo:CanSM_CurrNw_Mode_en
	.loc 1 872 0
	lea	%a14, [%a14] lo:CanSM_ReqMode_a
	.loc 1 875 0
	lea	%a13, [%a13] lo:CanSM_ModeChangeReq_flag
	.loc 1 878 0
	addsc.a	%a2, %a3, %d10, 0
	.loc 1 869 0
	addsc.a	%a12, %a12, %d4, 0
	.loc 1 872 0
	addsc.a	%a14, %a14, %d4, 0
	.loc 1 875 0
	addsc.a	%a13, %a13, %d4, 0
	.loc 1 872 0
	mov	%d9, 1
	.loc 1 865 0
	mov	%d15, %d4
	.loc 1 878 0
	mov	%d5, 0
	ld.bu	%d4, [%a2] 12
.LVL69:
	.loc 1 869 0
	ld.bu	%d8, [%a12]0
.LVL70:
	.loc 1 872 0
	st.b	[%a14]0, %d9
	.loc 1 875 0
	st.b	[%a13]0, %d9
	.loc 1 878 0
	call	CanIf_SetTrcvMode
.LVL71:
	jnz	%d2, .L120
	.loc 1 881 0
	movh.a	%a15, hi:CanSM_Trcv_ModeInd_ab
	lea	%a15, [%a15] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d3, [%a15]0
	jeq	%d3, 1, .L138
	.loc 1 944 0
	jeq	%d8, 4, .L139
	.loc 1 950 0
	jeq	%d8, 6, .L140
	.loc 1 956 0
	jne	%d8, 5, .L127
	.loc 1 956 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 1, .L136
.L127:
	.loc 1 968 0 is_stmt 1
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	mov	%d15, 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.L120:
	.loc 1 981 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d15, 0
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Max_u8
	.loc 1 976 0
	mov	%d2, 0
	.loc 1 981 0
	ld.bu	%d3, [%a2]0
	ld.bu	%d4, [%a3] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 976 0
	st.b	[%a14]0, %d2
	.loc 1 979 0
	st.b	[%a13]0, %d2
	.loc 1 981 0
	jlt.u	%d3, %d4, .L129
	.loc 1 984 0
	st.b	[%a2]0, %d2
	.loc 1 997 0
	jeq	%d8, 4, .L141
	.loc 1 1003 0
	jeq	%d8, 6, .L142
	.loc 1 1040 0
	jne	%d8, 5, .L131
	.loc 1 1040 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a2, [%a2] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d3, [%a2]0
	jne	%d3, 1, .L131
.L137:
	.loc 1 1042 0 is_stmt 1
	st.b	[%a2]0, %d2
	.loc 1 1067 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	.loc 1 1048 0
	movh.a	%a2, hi:CanSM_ReqComM_Mode_en
	lea	%a2, [%a2] lo:CanSM_ReqComM_Mode_en
	.loc 1 1067 0
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	.loc 1 1048 0
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 1067 0
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 1046 0
	mov	%d4, 4
	st.b	[%a12]0, %d4
	.loc 1 1048 0
	st.b	[%a2]0, %d2
	.loc 1 1067 0
	st.b	[%a15]0, %d3
	j	.L131
.L129:
	.loc 1 1088 0
	add	%d3, 1
	st.b	[%a2]0, %d3
	ret
.L138:
	.loc 1 884 0
	st.b	[%a15]0, %d2
	.loc 1 901 0
	jeq	%d8, 4, .L143
	.loc 1 908 0
	jeq	%d8, 6, .L144
	.loc 1 913 0
	jne	%d8, 5, .L123
	.loc 1 913 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jne	%d2, 1, .L123
.L135:
	.loc 1 916 0 is_stmt 1
	mov	%d2, 3
	st.b	[%a15]0, %d2
.L123:
	.loc 1 923 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d15, 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	ret
.L140:
	.loc 1 950 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jne	%d2, 1, .L127
.L136:
	.loc 1 959 0
	mov	%d2, 2
	st.b	[%a15]0, %d2
	j	.L127
.L141:
	.loc 1 997 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	ne	%d15, %d15, 9
	jz	%d15, .L145
.L131:
	.loc 1 1083 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL72:
.L139:
	.loc 1 944 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	ne	%d2, %d2, 9
	jnz	%d2, .L127
	.loc 1 947 0
	mov	%d2, 11
	st.b	[%a15]0, %d2
	j	.L127
.L142:
	.loc 1 1003 0 discriminator 1
	movh.a	%a2, hi:CanSM_PreFullCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d3, [%a2]0
	jne	%d3, 1, .L131
	j	.L137
.L143:
	.loc 1 901 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	ne	%d2, %d2, 9
	jnz	%d2, .L123
	.loc 1 904 0
	mov	%d2, 13
	st.b	[%a15]0, %d2
	j	.L123
.L144:
	.loc 1 908 0 discriminator 1
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jne	%d2, 1, .L123
	j	.L135
.L145:
	.loc 1 1000 0
	st.b	[%a15]0, %d9
	j	.L131
.LFE80:
	.size	CanSM_NormalTrcv, .-CanSM_NormalTrcv
.section .text.CanSM_StandbyTrcv,"ax",@progbits
	.align 1
	.global	CanSM_StandbyTrcv
	.type	CanSM_StandbyTrcv, @function
CanSM_StandbyTrcv:
.LFB81:
	.loc 1 1123 0
.LVL73:
	.loc 1 1132 0
	movh.a	%a15, hi:CanSM_Network_pcst
	mul	%d8, %d4, 20
	ld.a	%a3, [%a15] lo:CanSM_Network_pcst
	.loc 1 1126 0
	movh.a	%a13, hi:CanSM_ReqMode_a
	.loc 1 1129 0
	movh.a	%a12, hi:CanSM_ModeChangeReq_flag
	.loc 1 1126 0
	lea	%a13, [%a13] lo:CanSM_ReqMode_a
	.loc 1 1129 0
	lea	%a12, [%a12] lo:CanSM_ModeChangeReq_flag
	.loc 1 1132 0
	addsc.a	%a2, %a3, %d8, 0
	.loc 1 1126 0
	addsc.a	%a13, %a13, %d4, 0
	.loc 1 1129 0
	addsc.a	%a12, %a12, %d4, 0
	.loc 1 1123 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 1123 0
	mov	%d15, %d4
	.loc 1 1126 0
	mov	%d10, 3
	.loc 1 1129 0
	mov	%d9, 1
	.loc 1 1132 0
	ld.bu	%d4, [%a2] 12
.LVL74:
	mov	%d5, 2
	.loc 1 1126 0
	st.b	[%a13]0, %d10
	.loc 1 1129 0
	st.b	[%a12]0, %d9
	.loc 1 1132 0
	call	CanIf_SetTrcvMode
.LVL75:
	jnz	%d2, .L147
	.loc 1 1135 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d3, [%a2]0
	jeq	%d3, 1, .L152
	.loc 1 1195 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	mov	%d3, 15
	st.b	[%a15]0, %d3
	.loc 1 1198 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	mov	%d15, 2
	st.h	[%a15] 2, %d2
	st.b	[%a15]0, %d15
	ret
.L147:
	.loc 1 1211 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d15, 0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	.loc 1 1206 0
	mov	%d2, 0
	.loc 1 1211 0
	ld.bu	%d3, [%a15]0
	ld.bu	%d4, [%a2] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 1206 0
	st.b	[%a13]0, %d2
	.loc 1 1209 0
	st.b	[%a12]0, %d2
	.loc 1 1211 0
	jge.u	%d3, %d4, .L153
	.loc 1 1241 0
	add	%d3, 1
	st.b	[%a15]0, %d3
	ret
.L153:
	.loc 1 1214 0
	st.b	[%a15]0, %d2
	.loc 1 1233 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 1236 0
	mov	%e4, 140
	.loc 1 1233 0
	st.b	[%a15]0, %d9
	.loc 1 1244 0
	.loc 1 1236 0
	mov	%d6, 5
	mov	%d7, 10
	.loc 1 1244 0
	lea	%SP, [%SP] 8
	.loc 1 1236 0
	j	Det_ReportError
.LVL76:
.L152:
	.loc 1 1138 0
	st.b	[%a2]0, %d2
	.loc 1 1140 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d15, 2
.LBB20:
.LBB21:
	.loc 1 2915 0
	ld.a	%a15, [%a15] lo:CanSM_Network_pcst
.LBE21:
.LBE20:
	.loc 1 1140 0
	st.b	[%a2]0, %d10
	.loc 1 1143 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d15, 0
.LBB25:
.LBB22:
	.loc 1 2915 0
	addsc.a	%a15, %a15, %d8, 0
.LBE22:
.LBE25:
	.loc 1 1143 0
	st.b	[%a2]0, %d2
	.loc 1 1165 0
	movh.a	%a2, hi:CanSM_PreNoCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a2, %a2, %d15, 0
.LBB26:
.LBB23:
	.loc 1 2915 0
	ld.bu	%d4, [%a15] 15
.LBE23:
.LBE26:
	.loc 1 1165 0
	st.b	[%a2]0, %d2
.LVL77:
.LBB27:
.LBB24:
	.loc 1 2909 0
	movh.a	%a2, hi:CanSM_Network_Init_ab
	lea	%a2, [%a2] lo:CanSM_Network_Init_ab
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 2915 0
	mov	%d5, 0
	.loc 1 2909 0
	st.b	[%a2]0, %d3
.LVL78:
	.loc 1 2915 0
	st.w	[%SP] 4, %d2
	call	BswM_CanSM_CurrentState
.LVL79:
	.loc 1 2918 0
	movh.a	%a15, hi:CanSM_Wuvalidation_Start_ab
	lea	%a15, [%a15] lo:CanSM_Wuvalidation_Start_ab
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d2, [%SP] 4
	ld.bu	%d3, [%a15]0
	.loc 1 2921 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 2918 0
	jeq	%d3, 1, .L154
	.loc 1 2928 0
	st.b	[%a15]0, %d2
	ret
.L154:
	.loc 1 2921 0
	mov	%d2, 5
	st.b	[%a15]0, %d2
	.loc 1 2923 0
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d3
	ret
.LBE24:
.LBE27:
.LFE81:
	.size	CanSM_StandbyTrcv, .-CanSM_StandbyTrcv
.section .text.CanSM_NO2FULL_COM,"ax",@progbits
	.align 1
	.global	CanSM_NO2FULL_COM
	.type	CanSM_NO2FULL_COM, @function
CanSM_NO2FULL_COM:
.LFB82:
	.loc 1 1753 0
.LVL80:
	.loc 1 1771 0
	movh.a	%a12, hi:CanSM_Network_pcst
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	mul	%d9, %d4, 20
	.loc 1 1774 0
	movh	%d10, hi:CanSM_PreFullCom_Substates_en
	addi	%d10, %d10, lo:CanSM_PreFullCom_Substates_en
	.loc 1 1777 0
	movh	%d11, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 1771 0
	addsc.a	%a14, %a2, %d9, 0
.LVL81:
	.loc 1 1777 0
	addi	%d11, %d11, lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 1774 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d4, 0
	.loc 1 1777 0
	mov.a	%a2, %d11
	addsc.a	%a13, %a2, %d4, 0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d3, [%a13]0
	ld.bu	%d2, [%a2] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 1753 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 1774 0
	ld.bu	%d15, [%a15]0
.LVL82:
	.loc 1 1777 0
	jge.u	%d3, %d2, .L156
	mov	%d8, %d4
	.loc 1 1779 0
	jeq	%d15, 4, .L158
	jeq	%d15, 6, .L159
	jeq	%d15, 2, .L194
	.loc 1 1986 0
	jne	%d15, 1, .L170
.LVL83:
.L164:
	.loc 1 1988 0
	ld.bu	%d15, [%a14] 12
	ne	%d15, %d15, 255
	jnz	%d15, .L171
	.loc 1 1991 0
	movh.a	%a15, hi:CanSM_Trcv_ModeInd_ab
	lea	%a15, [%a15] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a15, %a15, %d8, 0
	mov	%d15, 1
	.loc 1 1995 0
	mov.a	%a2, %d10
	.loc 1 1991 0
	st.b	[%a15]0, %d15
	.loc 1 1995 0
	addsc.a	%a15, %a2, %d8, 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
.LVL84:
.L172:
	.loc 1 2013 0
	mov	%d4, %d8
	call	CanSM_StopCtrl
.LVL85:
	.loc 1 2015 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
.LVL86:
	.loc 1 2018 0
	jeq	%d15, 5, .L174
.LVL87:
.L155:
	ret
.LVL88:
.L156:
	.loc 1 1949 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
.LVL89:
	.loc 1 1955 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d4, 0
	mov	%d2, 4
	st.b	[%a15]0, %d2
	.loc 1 1957 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1953 0
	st.b	[%a13]0, %d15
	.loc 1 1957 0
	st.b	[%a15]0, %d15
	.loc 1 1976 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1982 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.LVL90:
.L159:
	.loc 1 1865 0
	movh.a	%a2, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d15, [%a2]0
	jeq	%d15, 1, .L195
	.loc 1 1927 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a2] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d2, %d15, .L155
	.loc 1 1930 0
	mov	%d15, 3
	st.b	[%a2]0, %d15
	.loc 1 1933 0
	mov	%d15, 5
	st.b	[%a15]0, %d15
.LVL91:
.L174:
	.loc 1 2021 0
	mov	%d4, %d8
	call	CanSM_StartCtrl
.LVL92:
	.loc 1 2023 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 2025 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L155
	.loc 1 2028 0
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 2033 0
	ld.bu	%d4, [%a14] 15
	mov	%d5, 2
	.loc 1 2028 0
	st.b	[%a15]0, %d15
.LVL93:
	.loc 1 2033 0
	call	BswM_CanSM_CurrentState
.LVL94:
	.loc 1 2036 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d8, 0
	mov	%d2, 2
	st.b	[%a15]0, %d2
	.loc 1 2039 0
	movh.a	%a15, hi:CanSM_BusOff_Cntr_au8
	lea	%a15, [%a15] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d15
	.loc 1 2042 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d8, 2
	st.b	[%a15]0, %d2
	st.h	[%a15] 2, %d15
	.loc 1 2045 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d8, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	.loc 1 2048 0
	movh.a	%a15, hi:CanSM_BORMode_au8
	lea	%a15, [%a15] lo:CanSM_BORMode_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d15
	.loc 1 2051 0
	movh.a	%a15, hi:CanSM_BusSMMode_au8
	lea	%a15, [%a15] lo:CanSM_BusSMMode_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d2
.LVL95:
	.loc 1 2053 0
	ld.a	%a15, [%a12] lo:CanSM_Network_pcst
	addsc.a	%a15, %a15, %d9, 0
	ld.bu	%d15, [%a15] 13
	jz	%d15, .L177
	movh.a	%a12, hi:CanSM_Network_pcst
	.loc 1 2053 0 is_stmt 0 discriminator 3
	mov	%d15, 0
	lea	%a12, [%a12] lo:CanSM_Network_pcst
.LVL96:
.L178:
	.loc 1 2055 0 is_stmt 1 discriminator 3
	ld.a	%a15, [%a15]0
.LVL97:
	and	%d2, %d15, 255
	.loc 1 2069 0 discriminator 3
	mov	%d5, 3
	.loc 1 2055 0 discriminator 3
	addsc.a	%a15, %a15, %d2, 0
.LVL98:
	add	%d15, 1
.LVL99:
	.loc 1 2069 0 discriminator 3
	ld.bu	%d4, [%a15]0
	call	CanIf_SetPduMode
.LVL100:
	.loc 1 2053 0 discriminator 3
	ld.a	%a2, [%a12]0
	and	%d3, %d15, 255
.LVL101:
	addsc.a	%a15, %a2, %d9, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d3, %d2, .L178
.LVL102:
.L177:
	.loc 1 2074 0
	lea	%a4, [%SP] 8
	mov	%d15, 2
	st.b	[+%a4]-1, %d15
	.loc 1 2075 0
	ld.bu	%d4, [%a15] 15
	call	ComM_BusSM_ModeIndication
.LVL103:
	ret
.LVL104:
.L158:
	.loc 1 1826 0
	movh.a	%a2, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d15, [%a2]0
	jeq	%d15, 1, .L196
	.loc 1 1848 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a2] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d2, %d15, .L155
	.loc 1 1851 0
	mov	%d15, 3
	st.b	[%a2]0, %d15
	.loc 1 1854 0
	st.b	[%a15]0, %d15
.LVL105:
	j	.L172
.LVL106:
.L194:
	.loc 1 1784 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d15, [%a2]0
	jeq	%d15, 1, .L197
	.loc 1 1809 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a2] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d2, %d15, .L155
	.loc 1 1812 0
	mov	%d15, 3
	st.b	[%a2]0, %d15
	.loc 1 1815 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.LVL107:
	j	.L164
.LVL108:
.L171:
	.loc 1 2004 0
	mov	%d4, %d8
.LVL109:
	call	CanSM_NormalTrcv
.LVL110:
	.loc 1 2007 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
.LVL111:
.L170:
	.loc 1 2010 0
	jeq	%d15, 3, .L172
	.loc 1 2018 0
	jne	%d15, 5, .L155
	j	.L174
.LVL112:
.L197:
	.loc 1 1787 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
.LVL113:
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d9, 0
	ld.bu	%d15, [%a15] 12
	eq	%d15, %d15, 255
	jnz	%d15, .L162
	.loc 1 1790 0
	st.b	[%a2]0, %d15
.L162:
	.loc 1 1794 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d8, 2
	mov	%d15, 3
	.loc 1 1797 0
	mov.a	%a2, %d10
	.loc 1 1794 0
	st.b	[%a15]0, %d15
	.loc 1 1797 0
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 1803 0
	mov.a	%a2, %d11
	.loc 1 1797 0
	st.b	[%a15]0, %d15
.LVL114:
	.loc 1 1803 0
	addsc.a	%a15, %a2, %d8, 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	j	.L172
.LVL115:
.L196:
	.loc 1 1829 0
	movh.a	%a3, hi:CanSM_TimerConfig_ast
	lea	%a3, [%a3] lo:CanSM_TimerConfig_ast
	addsc.a	%a3, %a3, %d4, 2
	mov	%d15, 3
	st.b	[%a3]0, %d15
	.loc 1 1835 0
	mov	%d2, 5
	.loc 1 1832 0
	mov	%d15, 0
	st.b	[%a2]0, %d15
	.loc 1 1835 0
	st.b	[%a15]0, %d2
.LVL116:
	.loc 1 1841 0
	st.b	[%a13]0, %d15
	j	.L174
.LVL117:
.L195:
	.loc 1 1867 0
	mov	%d10, 0
	.loc 1 1879 0
	ld.bu	%d4, [%a14] 15
.LVL118:
	mov	%d5, 2
	.loc 1 1867 0
	st.b	[%a2]0, %d10
	.loc 1 1868 0
	st.b	[%a15]0, %d10
.LVL119:
	.loc 1 1874 0
	st.b	[%a13]0, %d10
.LVL120:
	.loc 1 1879 0
	call	BswM_CanSM_CurrentState
.LVL121:
	.loc 1 1882 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d8, 0
	mov	%d2, 2
	st.b	[%a15]0, %d2
	.loc 1 1888 0
	movh.a	%a15, hi:CanSM_BusOff_Cntr_au8
	lea	%a15, [%a15] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 1899 0
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	.loc 1 1888 0
	st.b	[%a15]0, %d10
	.loc 1 1891 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 1885 0
	st.b	[%a13]0, %d10
	.loc 1 1891 0
	st.b	[%a15]0, %d15
	.loc 1 1894 0
	movh.a	%a15, hi:CanSM_BORMode_au8
	lea	%a15, [%a15] lo:CanSM_BORMode_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d15
	.loc 1 1897 0
	movh.a	%a15, hi:CanSM_BusSMMode_au8
	lea	%a15, [%a15] lo:CanSM_BusSMMode_au8
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15]0, %d2
.LVL122:
	.loc 1 1899 0
	addsc.a	%a15, %a2, %d9, 0
	ld.bu	%d15, [%a15] 13
	jz	%d15, .L177
	.loc 1 1899 0 is_stmt 0 discriminator 3
	mov	%d15, 0
	lea	%a12, [%a12] lo:CanSM_Network_pcst
.LVL123:
.L168:
	.loc 1 1901 0 is_stmt 1 discriminator 3
	ld.a	%a15, [%a15]0
.LVL124:
	and	%d2, %d15, 255
	.loc 1 1915 0 discriminator 3
	mov	%d5, 3
	.loc 1 1901 0 discriminator 3
	addsc.a	%a15, %a15, %d2, 0
.LVL125:
	add	%d15, 1
.LVL126:
	.loc 1 1915 0 discriminator 3
	ld.bu	%d4, [%a15]0
	call	CanIf_SetPduMode
.LVL127:
	.loc 1 1899 0 discriminator 3
	ld.a	%a2, [%a12]0
	and	%d3, %d15, 255
.LVL128:
	addsc.a	%a15, %a2, %d9, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d3, %d2, .L168
	j	.L177
.LFE82:
	.size	CanSM_NO2FULL_COM, .-CanSM_NO2FULL_COM
.section .text.CanSM_FULL2SILENT_COM,"ax",@progbits
	.align 1
	.global	CanSM_FULL2SILENT_COM
	.type	CanSM_FULL2SILENT_COM, @function
CanSM_FULL2SILENT_COM:
.LFB83:
	.loc 1 2108 0
.LVL129:
	.loc 1 2124 0
	movh.a	%a12, hi:CanSM_Network_pcst
	mul	%d8, %d4, 20
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	.loc 1 2130 0
	mov	%d15, 2
	.loc 1 2108 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 2124 0
	addsc.a	%a15, %a2, %d8, 0
.LVL130:
	.loc 1 2130 0
	movh.a	%a2, hi:CanSM_BORMode_au8
	lea	%a2, [%a2] lo:CanSM_BORMode_au8
	addsc.a	%a2, %a2, %d4, 0
	.loc 1 2147 0
	mov	%d5, 1
	.loc 1 2130 0
	st.b	[%a2]0, %d15
	.loc 1 2133 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	addsc.a	%a2, %a2, %d4, 0
	mov	%d15, 0
	st.b	[%a2]0, %d15
	.loc 1 2136 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d4, 0
	st.b	[%a2]0, %d15
	.loc 1 2140 0
	movh.a	%a2, hi:CanSM_CurrNw_Mode_en
	lea	%a2, [%a2] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a2, %a2, %d4, 0
	mov	%d15, 1
	st.b	[%a2]0, %d15
	.loc 1 2143 0
	movh.a	%a2, hi:CanSM_BusSMMode_au8
	lea	%a2, [%a2] lo:CanSM_BusSMMode_au8
	addsc.a	%a2, %a2, %d4, 0
	.loc 1 2147 0
	ld.bu	%d4, [%a15] 15
.LVL131:
	.loc 1 2143 0
	st.b	[%a2]0, %d15
.LVL132:
	.loc 1 2147 0
	call	BswM_CanSM_CurrentState
.LVL133:
	.loc 1 2150 0
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	addsc.a	%a15, %a2, %d8, 0
.LVL134:
	ld.bu	%d15, [%a15] 13
	jz	%d15, .L199
	.loc 1 2150 0 is_stmt 0 discriminator 3
	mov	%d15, 0
	lea	%a12, [%a12] lo:CanSM_Network_pcst
.LVL135:
.L200:
	.loc 1 2152 0 is_stmt 1 discriminator 3
	ld.a	%a15, [%a15]0
.LVL136:
	and	%d2, %d15, 255
	.loc 1 2155 0 discriminator 3
	mov	%d5, 1
	.loc 1 2152 0 discriminator 3
	addsc.a	%a15, %a15, %d2, 0
.LVL137:
	add	%d15, 1
.LVL138:
	.loc 1 2155 0 discriminator 3
	ld.bu	%d4, [%a15]0
	call	CanIf_SetPduMode
.LVL139:
	.loc 1 2150 0 discriminator 3
	ld.a	%a2, [%a12]0
	and	%d3, %d15, 255
.LVL140:
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d3, %d2, .L200
.LVL141:
.L199:
	.loc 1 2159 0
	lea	%a4, [%SP] 8
	mov	%d15, 1
	st.b	[+%a4]-1, %d15
	.loc 1 2160 0
	ld.bu	%d4, [%a15] 15
	j	ComM_BusSM_ModeIndication
.LVL142:
.LFE83:
	.size	CanSM_FULL2SILENT_COM, .-CanSM_FULL2SILENT_COM
.section .text.CanSM_SILENT2FULL_COM,"ax",@progbits
	.align 1
	.global	CanSM_SILENT2FULL_COM
	.type	CanSM_SILENT2FULL_COM, @function
CanSM_SILENT2FULL_COM:
.LFB84:
	.loc 1 2190 0
.LVL143:
	.loc 1 2205 0
	movh.a	%a12, hi:CanSM_Network_pcst
	mul	%d8, %d4, 20
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	.loc 1 2190 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 2190 0
	mov	%d9, %d4
	.loc 1 2205 0
	addsc.a	%a13, %a2, %d8, 0
.LVL144:
	.loc 1 2208 0
	ld.bu	%d15, [%a13] 13
	mov.aa	%a15, %a13
	jz	%d15, .L206
	.loc 1 2208 0 is_stmt 0 discriminator 3
	mov	%d15, 0
	lea	%a12, [%a12] lo:CanSM_Network_pcst
.LVL145:
.L207:
	.loc 1 2210 0 is_stmt 1 discriminator 3
	ld.a	%a15, [%a15]0
.LVL146:
	and	%d2, %d15, 255
	.loc 1 2224 0 discriminator 3
	mov	%d5, 3
	.loc 1 2210 0 discriminator 3
	addsc.a	%a15, %a15, %d2, 0
.LVL147:
	add	%d15, 1
.LVL148:
	.loc 1 2224 0 discriminator 3
	ld.bu	%d4, [%a15]0
	call	CanIf_SetPduMode
.LVL149:
	.loc 1 2208 0 discriminator 3
	ld.a	%a2, [%a12]0
	and	%d3, %d15, 255
.LVL150:
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d3, %d2, .L207
.LVL151:
.L206:
	.loc 1 2228 0
	movh.a	%a2, hi:CanSM_CurrNw_Mode_en
	lea	%a2, [%a2] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a2, %a2, %d9, 0
	mov	%d15, 2
	st.b	[%a2]0, %d15
	.loc 1 2231 0
	movh.a	%a2, hi:CanSM_BusOff_Cntr_au8
	lea	%a2, [%a2] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a2, %a2, %d9, 0
	mov	%d2, 0
	st.b	[%a2]0, %d2
	.loc 1 2234 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d9, 2
	mov	%d2, 0
	st.b	[%a2]0, %d15
	st.h	[%a2] 2, %d2
	.loc 1 2237 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	addsc.a	%a2, %a2, %d9, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
	.loc 1 2240 0
	movh.a	%a2, hi:CanSM_BORMode_au8
	lea	%a2, [%a2] lo:CanSM_BORMode_au8
	addsc.a	%a2, %a2, %d9, 0
	.loc 1 2246 0
	lea	%a4, [%SP] 8
	.loc 1 2240 0
	st.b	[%a2]0, %d2
	.loc 1 2243 0
	movh.a	%a2, hi:CanSM_BusSMMode_au8
	lea	%a2, [%a2] lo:CanSM_BusSMMode_au8
	addsc.a	%a2, %a2, %d9, 0
	.loc 1 2247 0
	ld.bu	%d4, [%a15] 15
	.loc 1 2246 0
	st.b	[+%a4]-1, %d15
	.loc 1 2243 0
	st.b	[%a2]0, %d15
	.loc 1 2247 0
	call	ComM_BusSM_ModeIndication
.LVL152:
	.loc 1 2253 0
	ld.bu	%d4, [%a13] 15
	mov	%d5, 2
	j	BswM_CanSM_CurrentState
.LVL153:
.LFE84:
	.size	CanSM_SILENT2FULL_COM, .-CanSM_SILENT2FULL_COM
.section .text.CanSM_TxTimeoutException_StateMachine,"ax",@progbits
	.align 1
	.global	CanSM_TxTimeoutException_StateMachine
	.type	CanSM_TxTimeoutException_StateMachine, @function
CanSM_TxTimeoutException_StateMachine:
.LFB85:
	.loc 1 2282 0
.LVL154:
	.loc 1 2294 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 2291 0
	movh.a	%a12, hi:CanSM_TxTimeoutexception_Substates_en
	.loc 1 2294 0
	addsc.a	%a2, %a2, %d4, 0
	.loc 1 2291 0
	lea	%a12, [%a12] lo:CanSM_TxTimeoutexception_Substates_en
	.loc 1 2294 0
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Max_u8
	.loc 1 2291 0
	addsc.a	%a15, %a12, %d4, 0
	.loc 1 2294 0
	ld.bu	%d3, [%a2]0
	ld.bu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 2291 0
	ld.bu	%d2, [%a15]0
.LVL155:
	.loc 1 2294 0
	jge.u	%d3, %d15, .L212
	mov	%d15, %d4
	.loc 1 2296 0
	jeq	%d2, 2, .L214
	jne	%d2, 4, .L238
	.loc 1 2343 0
	movh.a	%a3, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a3, [%a3] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a3, %a3, %d4, 0
	ld.bu	%d2, [%a3]0
	jeq	%d2, 1, .L239
	.loc 1 2391 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d3, [%a2] 2
	ld.hu	%d2, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d3, %d2, .L211
	.loc 1 2395 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 2398 0
	st.b	[%a15]0, %d2
.LVL156:
.L224:
	.loc 1 2437 0
	mov	%d4, %d15
	call	CanSM_StartCtrl
.LVL157:
	.loc 1 2439 0
	addsc.a	%a12, %a12, %d15, 0
	.loc 1 2440 0
	ld.bu	%d2, [%a12]0
	jnz	%d2, .L211
.LVL158:
	.loc 1 2444 0 discriminator 1
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.a	%a3, [%a15] lo:CanSM_Network_pcst
	mul	%d9, %d15, 20
	mov	%d8, 0
	lea	%a15, [%a15] lo:CanSM_Network_pcst
	addsc.a	%a2, %a3, %d9, 0
	ld.bu	%d2, [%a2] 13
	jz	%d2, .L229
.LVL159:
.L231:
	.loc 1 2446 0 discriminator 3
	ld.a	%a2, [%a2]0
.LVL160:
	and	%d2, %d8, 255
	.loc 1 2460 0 discriminator 3
	mov	%d5, 3
	.loc 1 2446 0 discriminator 3
	addsc.a	%a2, %a2, %d2, 0
.LVL161:
	add	%d8, 1
.LVL162:
	.loc 1 2460 0 discriminator 3
	ld.bu	%d4, [%a2]0
	call	CanIf_SetPduMode
.LVL163:
	.loc 1 2444 0 discriminator 3
	ld.a	%a3, [%a15]0
	and	%d3, %d8, 255
.LVL164:
	addsc.a	%a2, %a3, %d9, 0
	ld.bu	%d2, [%a2] 13
	jlt.u	%d3, %d2, .L231
.LVL165:
.L229:
	.loc 1 2464 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d15, 0
	mov	%d2, 2
	st.b	[%a15]0, %d2
	.loc 1 2466 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d2
	ret
.LVL166:
.L238:
	.loc 1 2426 0
	jeq	%d2, 1, .L218
	.loc 1 2434 0
	jeq	%d2, 3, .L224
.LVL167:
.L211:
	ret
.LVL168:
.L214:
	.loc 1 2302 0
	movh.a	%a3, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a3, [%a3] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a3, %a3, %d4, 0
	ld.bu	%d2, [%a3]0
	jeq	%d2, 1, .L240
	.loc 1 2322 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d3, [%a2] 2
	ld.hu	%d2, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d3, %d2, .L211
	.loc 1 2326 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 2329 0
	mov	%d2, 1
	st.b	[%a15]0, %d2
.LVL169:
.L218:
	.loc 1 2429 0
	mov	%d4, %d15
.LVL170:
	call	CanSM_StopCtrl
.LVL171:
	.loc 1 2431 0
	addsc.a	%a15, %a12, %d15, 0
	ld.bu	%d2, [%a15]0
.LVL172:
	.loc 1 2434 0
	jne	%d2, 3, .L211
	j	.L224
.LVL173:
.L212:
	.loc 1 2416 0
	mov	%d15, 0
	st.b	[%a2]0, %d15
	.loc 1 2422 0
	mov	%e4, 140
.LVL174:
	.loc 1 2418 0
	mov	%d15, 1
	.loc 1 2422 0
	mov	%d6, 5
	mov	%d7, 10
	.loc 1 2418 0
	st.b	[%a15]0, %d15
.LVL175:
	.loc 1 2422 0
	j	Det_ReportError
.LVL176:
.L240:
	.loc 1 2305 0
	movh.a	%a4, hi:CanSM_TimerConfig_ast
	lea	%a4, [%a4] lo:CanSM_TimerConfig_ast
	addsc.a	%a4, %a4, %d4, 2
	mov	%d3, 3
	.loc 1 2308 0
	mov	%d2, 0
	.loc 1 2305 0
	st.b	[%a4]0, %d3
	.loc 1 2308 0
	st.b	[%a3]0, %d2
	.loc 1 2311 0
	st.b	[%a15]0, %d3
.LVL177:
	.loc 1 2317 0
	st.b	[%a2]0, %d2
	j	.L224
.LVL178:
.L239:
	.loc 1 2346 0
	movh.a	%a4, hi:CanSM_TimerConfig_ast
	lea	%a4, [%a4] lo:CanSM_TimerConfig_ast
	addsc.a	%a4, %a4, %d4, 2
	mov	%d2, 3
	st.b	[%a4]0, %d2
	.loc 1 2349 0
	mov	%d2, 0
	.loc 1 2352 0
	st.b	[%a15]0, %d2
.LVL179:
	.loc 1 2362 0
	movh.a	%a15, hi:CanSM_Network_pcst
	.loc 1 2349 0
	st.b	[%a3]0, %d2
	.loc 1 2362 0
	mul	%d9, %d4, 20
	ld.a	%a3, [%a15] lo:CanSM_Network_pcst
	.loc 1 2358 0
	st.b	[%a2]0, %d2
.LVL180:
	.loc 1 2362 0
	mov	%d8, 0
	addsc.a	%a2, %a3, %d9, 0
	lea	%a15, [%a15] lo:CanSM_Network_pcst
	ld.bu	%d2, [%a2] 13
	jz	%d2, .L229
.LVL181:
.L232:
	.loc 1 2364 0 discriminator 3
	ld.a	%a2, [%a2]0
.LVL182:
	and	%d2, %d8, 255
	.loc 1 2378 0 discriminator 3
	mov	%d5, 3
	.loc 1 2364 0 discriminator 3
	addsc.a	%a2, %a2, %d2, 0
.LVL183:
	add	%d8, 1
.LVL184:
	.loc 1 2378 0 discriminator 3
	ld.bu	%d4, [%a2]0
	call	CanIf_SetPduMode
.LVL185:
	.loc 1 2362 0 discriminator 3
	ld.a	%a3, [%a15]0
	and	%d3, %d8, 255
.LVL186:
	addsc.a	%a2, %a3, %d9, 0
	ld.bu	%d2, [%a2] 13
	jlt.u	%d3, %d2, .L232
	j	.L229
.LFE85:
	.size	CanSM_TxTimeoutException_StateMachine, .-CanSM_TxTimeoutException_StateMachine
.section .text.CanSM_WakeUpValidation_StateMachine,"ax",@progbits
	.align 1
	.global	CanSM_WakeUpValidation_StateMachine
	.type	CanSM_WakeUpValidation_StateMachine, @function
CanSM_WakeUpValidation_StateMachine:
.LFB86:
	.loc 1 2646 0
.LVL187:
	.loc 1 2654 0
	movh.a	%a13, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a13, [%a13] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 2651 0
	movh.a	%a12, hi:CanSM_WakeUpValidation_Substates_en
	.loc 1 2654 0
	addsc.a	%a2, %a13, %d4, 0
	.loc 1 2651 0
	lea	%a12, [%a12] lo:CanSM_WakeUpValidation_Substates_en
	.loc 1 2654 0
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Max_u8
	.loc 1 2651 0
	addsc.a	%a15, %a12, %d4, 0
	.loc 1 2654 0
	ld.bu	%d3, [%a2]0
	ld.bu	%d2, [%a3] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 2651 0
	ld.bu	%d15, [%a15]0
.LVL188:
	.loc 1 2654 0
	jge.u	%d3, %d2, .L242
	mov	%d8, %d4
	.loc 1 2656 0
	jeq	%d15, 4, .L244
	jeq	%d15, 6, .L245
	jeq	%d15, 2, .L268
	.loc 1 2825 0
	jne	%d15, 1, .L254
.LVL189:
.L250:
	.loc 1 2827 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.w	%d15, [%a15] lo:CanSM_Network_pcst
	madd	%d2, %d15, %d8, 20
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 12
	ne	%d15, %d15, 255
	jnz	%d15, .L255
	.loc 1 2830 0
	movh.a	%a15, hi:CanSM_Trcv_ModeInd_ab
	lea	%a15, [%a15] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a15, %a15, %d8, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	.loc 1 2834 0
	addsc.a	%a15, %a12, %d8, 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
.LVL190:
.L256:
	.loc 1 2854 0
	addsc.a	%a15, %a12, %d8, 0
	.loc 1 2852 0
	mov	%d4, %d8
	call	CanSM_StopCtrl
.LVL191:
	.loc 1 2854 0
	ld.bu	%d15, [%a15]0
.LVL192:
	.loc 1 2856 0
	jeq	%d15, 5, .L258
.LVL193:
.L241:
	ret
.LVL194:
.L242:
	.loc 1 2784 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
.LVL195:
	.loc 1 2787 0
	movh.a	%a15, hi:CanSM_Wuvalidation_Start_ab
	lea	%a15, [%a15] lo:CanSM_Wuvalidation_Start_ab
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2794 0
	mov	%d2, 4
	.loc 1 2787 0
	st.b	[%a15]0, %d15
.LVL196:
	.loc 1 2794 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2792 0
	st.b	[%a2]0, %d15
	.loc 1 2794 0
	st.b	[%a15]0, %d2
	.loc 1 2796 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d15
	.loc 1 2815 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2821 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.LVL197:
.L269:
	.loc 1 2706 0
	movh.a	%a4, hi:CanSM_TimerConfig_ast
	lea	%a4, [%a4] lo:CanSM_TimerConfig_ast
	addsc.a	%a4, %a4, %d4, 2
	mov	%d15, 3
	st.b	[%a4]0, %d15
	.loc 1 2712 0
	mov	%d2, 5
	.loc 1 2709 0
	mov	%d15, 0
	st.b	[%a3]0, %d15
	.loc 1 2712 0
	st.b	[%a15]0, %d2
.LVL198:
	.loc 1 2718 0
	st.b	[%a2]0, %d15
.LVL199:
.L258:
	.loc 1 2861 0
	addsc.a	%a12, %a12, %d8, 0
	.loc 1 2859 0
	mov	%d4, %d8
	call	CanSM_StartCtrl
.LVL200:
	.loc 1 2863 0
	ld.bu	%d15, [%a12]0
	jnz	%d15, .L241
	.loc 1 2869 0
	movh.a	%a15, hi:CanSM_Wuvalidation_Start_ab
	.loc 1 2866 0
	addsc.a	%a13, %a13, %d8, 0
	.loc 1 2869 0
	lea	%a15, [%a15] lo:CanSM_Wuvalidation_Start_ab
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 2866 0
	st.b	[%a13]0, %d15
	.loc 1 2869 0
	st.b	[%a15]0, %d15
	ret
.LVL201:
.L244:
	.loc 1 2703 0
	movh.a	%a3, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a3, [%a3] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a3, %a3, %d4, 0
	ld.bu	%d15, [%a3]0
	jeq	%d15, 1, .L269
	.loc 1 2725 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a2] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d2, %d15, .L241
	.loc 1 2728 0
	mov	%d15, 3
	st.b	[%a2]0, %d15
	.loc 1 2731 0
	st.b	[%a15]0, %d15
.LVL202:
	j	.L256
.LVL203:
.L268:
	.loc 1 2661 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d15, [%a2]0
	jeq	%d15, 1, .L270
	.loc 1 2686 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a2] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d2, %d15, .L241
	.loc 1 2689 0
	mov	%d15, 3
	st.b	[%a2]0, %d15
	.loc 1 2692 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.LVL204:
	j	.L250
.LVL205:
.L255:
	.loc 1 2846 0
	addsc.a	%a15, %a12, %d8, 0
	.loc 1 2843 0
	mov	%d4, %d8
.LVL206:
	call	CanSM_NormalTrcv
.LVL207:
	.loc 1 2846 0
	ld.bu	%d15, [%a15]0
.LVL208:
.L254:
	.loc 1 2849 0
	jeq	%d15, 3, .L256
	.loc 1 2856 0
	jne	%d15, 5, .L241
	j	.L258
.LVL209:
.L245:
	.loc 1 2742 0
	movh.a	%a3, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a3, [%a3] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a3, %a3, %d4, 0
	ld.bu	%d15, [%a3]0
	jeq	%d15, 1, .L271
	.loc 1 2762 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a2] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d2, %d15, .L241
	.loc 1 2765 0
	mov	%d15, 3
	st.b	[%a2]0, %d15
	.loc 1 2768 0
	mov	%d15, 5
	st.b	[%a15]0, %d15
.LVL210:
	j	.L258
.LVL211:
.L271:
	.loc 1 2744 0
	mov	%d15, 0
	.loc 1 2746 0
	st.b	[%a15]0, %d15
.LVL212:
	.loc 1 2749 0
	movh.a	%a15, hi:CanSM_Wuvalidation_Start_ab
	lea	%a15, [%a15] lo:CanSM_Wuvalidation_Start_ab
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2744 0
	st.b	[%a3]0, %d15
	.loc 1 2749 0
	st.b	[%a15]0, %d15
.LVL213:
	.loc 1 2755 0
	st.b	[%a2]0, %d15
	ret
.LVL214:
.L270:
	.loc 1 2664 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
.LVL215:
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	ld.w	%d15, [%a15]0
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 12
	eq	%d15, %d15, 255
	jnz	%d15, .L248
	.loc 1 2667 0
	st.b	[%a2]0, %d15
.L248:
	.loc 1 2671 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d8, 2
	mov	%d15, 3
	st.b	[%a15]0, %d15
	.loc 1 2674 0
	addsc.a	%a15, %a12, %d8, 0
	st.b	[%a15]0, %d15
.LVL216:
	.loc 1 2680 0
	addsc.a	%a15, %a13, %d8, 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	j	.L256
.LFE86:
	.size	CanSM_WakeUpValidation_StateMachine, .-CanSM_WakeUpValidation_StateMachine
.section .text.CanSM_PreNoCom_Exit,"ax",@progbits
	.align 1
	.global	CanSM_PreNoCom_Exit
	.type	CanSM_PreNoCom_Exit, @function
CanSM_PreNoCom_Exit:
.LFB87:
	.loc 1 2904 0
.LVL217:
	.loc 1 2909 0
	movh.a	%a15, hi:CanSM_Network_Init_ab
	lea	%a15, [%a15] lo:CanSM_Network_Init_ab
	addsc.a	%a15, %a15, %d4, 0
	mov	%d2, 1
	st.b	[%a15]0, %d2
.LVL218:
	.loc 1 2915 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.w	%d2, [%a15] lo:CanSM_Network_pcst
	.loc 1 2904 0
	mov	%d15, %d4
	.loc 1 2915 0
	madd	%d3, %d2, %d4, 20
	mov	%d5, 0
	mov.a	%a15, %d3
	ld.bu	%d4, [%a15] 15
.LVL219:
	call	BswM_CanSM_CurrentState
.LVL220:
	.loc 1 2918 0
	movh.a	%a15, hi:CanSM_Wuvalidation_Start_ab
	lea	%a15, [%a15] lo:CanSM_Wuvalidation_Start_ab
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 2928 0
	mov	%d3, 0
	.loc 1 2918 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 1, .L275
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d3
	ret
.L275:
	.loc 1 2923 0
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 2921 0
	mov	%d3, 5
	.loc 1 2923 0
	st.b	[%a15]0, %d2
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d3
	ret
.LFE87:
	.size	CanSM_PreNoCom_Exit, .-CanSM_PreNoCom_Exit
.section .text.CanSM_BOR_SilentCom_Exit,"ax",@progbits
	.align 1
	.global	CanSM_BOR_SilentCom_Exit
	.type	CanSM_BOR_SilentCom_Exit, @function
CanSM_BOR_SilentCom_Exit:
.LFB88:
	.loc 1 2962 0
.LVL221:
	.loc 1 2971 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.a	%a3, [%a15] lo:CanSM_Network_pcst
	mul	%d8, %d4, 20
	.loc 1 2974 0
	mov	%d15, 0
	.loc 1 2983 0
	mov	%d2, 3
	.loc 1 2971 0
	addsc.a	%a2, %a3, %d8, 0
.LVL222:
	.loc 1 2974 0
	movh.a	%a3, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a3, [%a3] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a3, %a3, %d4, 0
	.loc 1 2962 0
	sub.a	%SP, 8
.LCFI4:
	.loc 1 2974 0
	st.b	[%a3]0, %d15
	.loc 1 2977 0
	movh.a	%a3, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a3, [%a3] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a3, %a3, %d4, 0
	st.b	[%a3]0, %d15
	.loc 1 2980 0
	movh.a	%a3, hi:CanSM_BOR_SilentCom_ab
	lea	%a3, [%a3] lo:CanSM_BOR_SilentCom_ab
	addsc.a	%a3, %a3, %d4, 0
	st.b	[%a3]0, %d15
	.loc 1 2983 0
	movh.a	%a3, hi:CanSM_TimerConfig_ast
	lea	%a3, [%a3] lo:CanSM_TimerConfig_ast
	addsc.a	%a3, %a3, %d4, 2
	st.b	[%a3]0, %d2
	.loc 1 2986 0
	movh.a	%a3, hi:CanSM_ReqComM_Mode_en
	lea	%a3, [%a3] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a3, %a3, %d4, 0
	ld.bu	%d2, [%a3]0
	jnz	%d2, .L277
	.loc 1 2989 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d4, 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
	.loc 1 2992 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 3017 0
	mov	%d15, 1
	.loc 1 2992 0
	st.b	[%a15]0, %d2
	.loc 1 3011 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 3017 0
	st.b	[%a15]0, %d15
	ret
.L277:
	.loc 1 3024 0
	movh.a	%a3, hi:CanSM_currBOR_State_en
	lea	%a3, [%a3] lo:CanSM_currBOR_State_en
	addsc.a	%a3, %a3, %d4, 0
	mov	%d9, %d4
	.loc 1 3030 0
	mov	%d5, 1
	ld.bu	%d4, [%a2] 15
.LVL223:
	.loc 1 3024 0
	st.b	[%a3]0, %d15
.LVL224:
	.loc 1 3030 0
	call	BswM_CanSM_CurrentState
.LVL225:
	.loc 1 3037 0
	ld.a	%a15, [%a15] lo:CanSM_Network_pcst
	.loc 1 3033 0
	movh.a	%a2, hi:CanSM_BusSMMode_au8
	lea	%a2, [%a2] lo:CanSM_BusSMMode_au8
	addsc.a	%a2, %a2, %d9, 0
	.loc 1 3037 0
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 3033 0
	mov	%d15, 1
	.loc 1 3036 0
	lea	%a4, [%SP] 8
	.loc 1 3033 0
	st.b	[%a2]0, %d15
	.loc 1 3036 0
	st.b	[+%a4]-1, %d15
	.loc 1 3037 0
	ld.bu	%d4, [%a15] 15
	j	ComM_BusSM_ModeIndication
.LVL226:
.LFE88:
	.size	CanSM_BOR_SilentCom_Exit, .-CanSM_BOR_SilentCom_Exit
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB78
	.uaword	.LFE78-.LFB78
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB79
	.uaword	.LFE79-.LFB79
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB80
	.uaword	.LFE80-.LFB80
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB81
	.uaword	.LFE81-.LFB81
	.byte	0x4
	.uaword	.LCFI0-.LFB81
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB82
	.uaword	.LFE82-.LFB82
	.byte	0x4
	.uaword	.LCFI1-.LFB82
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB83
	.uaword	.LFE83-.LFB83
	.byte	0x4
	.uaword	.LCFI2-.LFB83
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB84
	.uaword	.LFE84-.LFB84
	.byte	0x4
	.uaword	.LCFI3-.LFB84
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB85
	.uaword	.LFE85-.LFB85
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB87
	.uaword	.LFE87-.LFB87
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB88
	.uaword	.LFE88-.LFB88
	.byte	0x4
	.uaword	.LCFI4-.LFB88
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM_BswM.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 10 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\CanSM\\integration\\CanSM_Cfg_SchM.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_CanSM.h"
	.file 15 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1fa3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_InternalStateTransition.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x28
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
	.uaword	0x1d8
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
	.uaword	0x204
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
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1cb
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x84
	.uaword	0x331
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
	.byte	0x5
	.byte	0x89
	.uaword	0x2da
	.uleb128 0x6
	.uaword	0x26f
	.uaword	0x35d
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1cb
	.uaword	0x36d
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	0x1cb
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x6
	.byte	0xe0
	.uaword	0x1cb
	.uleb128 0x9
	.string	"Dem_EventIdType"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1f6
	.uleb128 0xa
	.byte	0x4
	.uaword	0x372
	.uleb128 0xa
	.byte	0x4
	.uaword	0x36d
	.uleb128 0x8
	.uaword	0x1f6
	.uleb128 0xb
	.byte	0x14
	.byte	0x7
	.byte	0x92
	.uaword	0x4e1
	.uleb128 0xc
	.string	"Cntrl_startidx_pu8"
	.byte	0x7
	.byte	0x94
	.uaword	0x3a5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"BorTimeL1_u16"
	.byte	0x7
	.byte	0x99
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"BorTimeL2_u16"
	.byte	0x7
	.byte	0x9a
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"BorTimeTxEnsured_u16"
	.byte	0x7
	.byte	0x9c
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"BusOffEventId_uo"
	.byte	0x7
	.byte	0x9d
	.uaword	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"Trcv_hndle_u8"
	.byte	0x7
	.byte	0x9e
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"SizeofController_u8"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.string	"BorCntL1L2_u8"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.string	"ComM_channelId_uo"
	.byte	0x7
	.byte	0xa1
	.uaword	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xc
	.string	"BusOffDelayConfig_b"
	.byte	0x7
	.byte	0xa5
	.uaword	0x26f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"TrcvPnConfig_b"
	.byte	0x7
	.byte	0xa6
	.uaword	0x26f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x7
	.byte	0xa7
	.uaword	0x3b0
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xab
	.uaword	0x60c
	.uleb128 0x5
	.string	"CANSM_BSM_S_NOCOM"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_BSM_S_SILENTCOM"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_BSM_S_FULLCOM"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_BSM_S_NOT_INITIALIZED"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_BSM_S_PRE_NOCOM"
	.sleb128 4
	.uleb128 0x5
	.string	"CANSM_BSM_WUVALIDATION"
	.sleb128 5
	.uleb128 0x5
	.string	"CANSM_BSM_S_PRE_FULLCOM"
	.sleb128 6
	.uleb128 0x5
	.string	"CANSM_BSM_S_SET_BAUDRATE"
	.sleb128 7
	.uleb128 0x5
	.string	"CANSM_BSM_S_SILENTCOM_BOR"
	.sleb128 8
	.uleb128 0x5
	.string	"CANSM_BSM_S_TX_TIMEOUT_EXCEPTION"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkModeStateType_ten"
	.byte	0x7
	.byte	0xb6
	.uaword	0x4fe
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xba
	.uaword	0x6e4
	.uleb128 0x5
	.string	"CANSM_BOR_IDLE"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_S_BUS_OFF_CHECK"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_S_NO_BUS_OFF"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_S_BUS_OFF_RECOVERY_L1"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_S_RESTART_CC"
	.sleb128 4
	.uleb128 0x5
	.string	"CANSM_S_RESTART_CC_WAIT"
	.sleb128 5
	.uleb128 0x5
	.string	"CANSM_S_BUS_OFF_RECOVERY_L2"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BusOffRecoveryStateType_ten"
	.byte	0x7
	.byte	0xc2
	.uaword	0x632
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xc7
	.uaword	0x773
	.uleb128 0x5
	.string	"CANSM_CANTRCV_DEFAULT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_CANTRCV_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_CANTRCV_SLEEP"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_CANTRCV_STANDBY"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanSM_ReqCanTrcv_States"
	.byte	0x7
	.byte	0xcc
	.uaword	0x70d
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0xcf
	.uaword	0x885
	.uleb128 0xc
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x7
	.byte	0xd1
	.uaword	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x7
	.byte	0xd2
	.uaword	0x3a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x7
	.byte	0xd6
	.uaword	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x7
	.byte	0xd7
	.uaword	0x36d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x7
	.byte	0xd8
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x7
	.byte	0xd9
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x88b
	.uleb128 0x8
	.uaword	0x4e1
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x7
	.byte	0xdb
	.uaword	0x792
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.byte	0x14
	.uaword	0x943
	.uleb128 0x5
	.string	"CANSM_BSWM_NO_COMMUNICATION"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_BSWM_SILENT_COMMUNICATION"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_BSWM_FULL_COMMUNICATION"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_BSWM_BUS_OFF"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_BSWM_CHANGE_BAUDRATE"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BswMCurrentStateType"
	.byte	0x8
	.byte	0x1b
	.uaword	0x8a8
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x1f
	.uaword	0x9e9
	.uleb128 0x5
	.string	"CANIF_OFFLINE"
	.sleb128 0
	.uleb128 0x5
	.string	"CANIF_TX_OFFLINE"
	.sleb128 1
	.uleb128 0x5
	.string	"CANIF_TX_OFFLINE_ACTIVE"
	.sleb128 2
	.uleb128 0x5
	.string	"CANIF_ONLINE"
	.sleb128 3
	.uleb128 0x5
	.string	"CANIF_TX_TP_ONLINE"
	.sleb128 4
	.uleb128 0x5
	.string	"CANIF_TX_USER_TP_ONLINE"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"CanIf_PduModeType"
	.byte	0x9
	.byte	0x43
	.uaword	0x965
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x49
	.uaword	0xa54
	.uleb128 0x5
	.string	"CANIF_CS_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANIF_CS_SLEEP"
	.sleb128 1
	.uleb128 0x5
	.string	"CANIF_CS_STARTED"
	.sleb128 2
	.uleb128 0x5
	.string	"CANIF_CS_STOPPED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanIf_ControllerModeType"
	.byte	0x9
	.byte	0x5b
	.uaword	0xa02
	.uleb128 0x4
	.byte	0x1
	.byte	0xa
	.byte	0x8e
	.uaword	0xcee
	.uleb128 0x5
	.string	"CANSM_DEFAULT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_S_PN_CC_STOPPED"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_S_CC_STOPPED_WAIT"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_S_PN_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0x5
	.string	"CANSM_S_CC_SLEEP"
	.sleb128 5
	.uleb128 0x5
	.string	"CANSM_S_PN_CC_SLEEP"
	.sleb128 6
	.uleb128 0x5
	.string	"CANSM_S_CC_SLEEP_WAIT"
	.sleb128 7
	.uleb128 0x5
	.string	"CANSM_S_PN_CC_SLEEP_WAIT"
	.sleb128 8
	.uleb128 0x5
	.string	"CANSM_S_TRCV_NORMAL"
	.sleb128 9
	.uleb128 0x5
	.string	"CANSM_S_PN_TRCV_NORMAL"
	.sleb128 10
	.uleb128 0x5
	.string	"CANSM_S_TRCV_NORMAL_WAIT"
	.sleb128 11
	.uleb128 0x5
	.string	"CANSM_S_PN_TRCV_NORMAL_WAIT"
	.sleb128 12
	.uleb128 0x5
	.string	"CANSM_S_TRCV_STANDBY"
	.sleb128 13
	.uleb128 0x5
	.string	"CANSM_S_PN_TRCV_STANDBY"
	.sleb128 14
	.uleb128 0x5
	.string	"CANSM_S_TRCV_STANDBY_WAIT"
	.sleb128 15
	.uleb128 0x5
	.string	"CANSM_S_PN_TRCV_STANDBY_WAIT"
	.sleb128 16
	.uleb128 0x5
	.string	"CANSM_S_PN_CLEAR_WUF"
	.sleb128 17
	.uleb128 0x5
	.string	"CANSM_S_PN_CLEAR_WUF_WAIT"
	.sleb128 18
	.uleb128 0x5
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP"
	.sleb128 19
	.uleb128 0x5
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP_WAIT"
	.sleb128 20
	.uleb128 0x5
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP"
	.sleb128 21
	.uleb128 0x5
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP_WAIT"
	.sleb128 22
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreNoCom_Substates_ten"
	.byte	0xa
	.byte	0xa6
	.uaword	0xa74
	.uleb128 0x4
	.byte	0x1
	.byte	0xa
	.byte	0xb2
	.uaword	0xe0e
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_DEFAULT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_S_CC_STARTED"
	.sleb128 5
	.uleb128 0x5
	.string	"CANSM_PRE_FULLCOM_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreFullCom_Substates_ten"
	.byte	0xa
	.byte	0xbb
	.uaword	0xd12
	.uleb128 0x4
	.byte	0x1
	.byte	0xa
	.byte	0xbf
	.uaword	0xf5a
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_DEFAULT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED"
	.sleb128 5
	.uleb128 0x5
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_WakeUpValidation_Substates_ten"
	.byte	0xa
	.byte	0xc8
	.uaword	0xe34
	.uleb128 0x4
	.byte	0x1
	.byte	0xa
	.byte	0xd9
	.uaword	0x105c
	.uleb128 0x5
	.string	"CANSM_TxTimeoutException_DEFAULT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_TxTimeoutException_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_TxTimeoutException_S_CC_STOPPED_WAIT"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_TxTimeoutException_S_CC_STARTED"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_TxTimeoutException_S_CC_STARTED_WAIT"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TxTimeoutException_Substates_ten"
	.byte	0xa
	.byte	0xe0
	.uaword	0xf86
	.uleb128 0x4
	.byte	0x1
	.byte	0xa
	.byte	0xee
	.uaword	0x10ea
	.uleb128 0x5
	.string	"CANSM_TIMER_INIT"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_TIMER_RUNNING"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_TIMER_ELAPSED"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_TIMER_CANCELLED"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerStateType_ten"
	.byte	0xa
	.byte	0xf4
	.uaword	0x108a
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xf6
	.uaword	0x113b
	.uleb128 0xc
	.string	"stTimer"
	.byte	0xa
	.byte	0xf8
	.uaword	0x10ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"cntTick_u16"
	.byte	0xa
	.byte	0xf9
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerConfig_tst"
	.byte	0xa
	.byte	0xfa
	.uaword	0x110a
	.uleb128 0xd
	.string	"SchM_Enter_CanSM_BOR_Nw_ModesNoNest"
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"SchM_Exit_CanSM_BOR_Nw_ModesNoNest"
	.byte	0xb
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.uaword	0x2c1
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x121c
	.uleb128 0xf
	.string	"ComMChannelId"
	.byte	0x1
	.byte	0x21
	.uaword	0x2c1
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"loop_uo"
	.byte	0x1
	.byte	0x24
	.uaword	0x1cb
	.uaword	.LLST0
	.uleb128 0x10
	.string	"CanSM_NetworkIdx_u8"
	.byte	0x1
	.byte	0x27
	.uaword	0x1cb
	.uaword	.LLST1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"CanSM_StopCtrl"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB77
	.uaword	.LFE77
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12ce
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0x57
	.uaword	0x2c1
	.uaword	.LLST2
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5a
	.uaword	0x885
	.uaword	.LLST3
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.byte	0x5c
	.uaword	0x1cb
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5e
	.uaword	0x1cb
	.uaword	.LLST5
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.byte	0x65
	.uaword	0x60c
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.byte	0x67
	.uaword	0x1cb
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.LVL16
	.uaword	0x1e94
	.uaword	0x12ad
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x16
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x1ec5
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanSM_StartCtrl"
	.byte	0x1
	.uahalf	0x1bd
	.byte	0x1
	.uaword	.LFB78
	.uaword	.LFE78
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1388
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x2c1
	.uaword	.LLST8
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x885
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x1cb
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x1cb
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x60c
	.uaword	.LLST12
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1cb
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	.LVL40
	.uaword	0x1e94
	.uaword	0x1367
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x16
	.uaword	.LVL44
	.byte	0x1
	.uaword	0x1ec5
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanSM_SleepCtrl"
	.byte	0x1
	.uahalf	0x2c7
	.byte	0x1
	.uaword	.LFB79
	.uaword	.LFE79
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1432
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x2c1
	.uaword	.LLST14
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x885
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x1cb
	.uaword	.LLST16
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x1cb
	.uaword	.LLST17
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0x1cb
	.uaword	.LLST18
	.uleb128 0x14
	.uaword	.LVL62
	.uaword	0x1e94
	.uaword	0x1411
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.uaword	.LVL66
	.byte	0x1
	.uaword	0x1ec5
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanSM_NormalTrcv"
	.byte	0x1
	.uahalf	0x360
	.byte	0x1
	.uaword	.LFB80
	.uaword	.LFE80
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14ad
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x360
	.uaword	0x2c1
	.uaword	.LLST19
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x363
	.uaword	0x60c
	.uaword	.LLST20
	.uleb128 0x14
	.uaword	.LVL71
	.uaword	0x1ef8
	.uaword	0x148c
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL72
	.byte	0x1
	.uaword	0x1ec5
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"CanSM_PreNoCom_Exit"
	.byte	0x1
	.uahalf	0xb57
	.byte	0x1
	.byte	0x1
	.uaword	0x14e5
	.uleb128 0x1b
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0xb57
	.uaword	0x2c1
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xb5a
	.uaword	0x943
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"CanSM_StandbyTrcv"
	.byte	0x1
	.uahalf	0x462
	.byte	0x1
	.uaword	.LFB81
	.uaword	.LFE81
	.uaword	.LLST21
	.byte	0x1
	.uaword	0x1589
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x462
	.uaword	0x2c1
	.uaword	.LLST22
	.uleb128 0x1e
	.uaword	0x14ad
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x490
	.uaword	0x1555
	.uleb128 0x1f
	.uaword	0x14cc
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x21
	.uaword	0x14d8
	.byte	0
	.uleb128 0x22
	.uaword	.LVL79
	.uaword	0x1f24
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL75
	.uaword	0x1ef8
	.uaword	0x1568
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x16
	.uaword	.LVL76
	.byte	0x1
	.uaword	0x1ec5
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"CanSM_NO2FULL_COM"
	.byte	0x1
	.uahalf	0x6d8
	.byte	0x1
	.uaword	.LFB82
	.uaword	.LFE82
	.uaword	.LLST23
	.byte	0x1
	.uaword	0x16cf
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x6d8
	.uaword	0x2c1
	.uaword	.LLST24
	.uleb128 0x23
	.string	"CanSM_PreFullCom_Substates"
	.byte	0x1
	.uahalf	0x6db
	.uaword	0xe0e
	.uaword	.LLST25
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x6de
	.uaword	0x943
	.uaword	.LLST26
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x6e1
	.uaword	0x885
	.byte	0x1
	.byte	0x6e
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x6e4
	.uaword	0x1cb
	.uaword	.LLST27
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x6e6
	.uaword	0x1cb
	.uaword	.LLST28
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x6e8
	.uaword	0x372
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x14
	.uaword	.LVL85
	.uaword	0x121c
	.uaword	0x164a
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL92
	.uaword	0x12ce
	.uaword	0x165e
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL94
	.uaword	0x1f24
	.uaword	0x1671
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.uaword	.LVL100
	.uaword	0x1f51
	.uaword	0x1684
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.uaword	.LVL103
	.uaword	0x1f7b
	.uaword	0x1698
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x14
	.uaword	.LVL110
	.uaword	0x1432
	.uaword	0x16ac
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL121
	.uaword	0x1f24
	.uaword	0x16bf
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.uaword	.LVL127
	.uaword	0x1f51
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"CanSM_FULL2SILENT_COM"
	.byte	0x1
	.uahalf	0x83b
	.byte	0x1
	.uaword	.LFB83
	.uaword	.LFE83
	.uaword	.LLST29
	.byte	0x1
	.uaword	0x1790
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x83b
	.uaword	0x2c1
	.uaword	.LLST30
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x83e
	.uaword	0x943
	.byte	0x1
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x841
	.uaword	0x885
	.uaword	.LLST31
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x844
	.uaword	0x1cb
	.uaword	.LLST32
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x847
	.uaword	0x1cb
	.uaword	.LLST33
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x849
	.uaword	0x372
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x14
	.uaword	.LVL133
	.uaword	0x1f24
	.uaword	0x176b
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.uaword	.LVL139
	.uaword	0x1f51
	.uaword	0x177e
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.uaword	.LVL142
	.byte	0x1
	.uaword	0x1f7b
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"CanSM_SILENT2FULL_COM"
	.byte	0x1
	.uahalf	0x88d
	.byte	0x1
	.uaword	.LFB84
	.uaword	.LFE84
	.uaword	.LLST34
	.byte	0x1
	.uaword	0x184f
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x88d
	.uaword	0x2c1
	.uaword	.LLST35
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x890
	.uaword	0x943
	.byte	0x2
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x893
	.uaword	0x885
	.byte	0x1
	.byte	0x6d
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x896
	.uaword	0x1cb
	.uaword	.LLST36
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x898
	.uaword	0x1cb
	.uaword	.LLST37
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x89a
	.uaword	0x372
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x14
	.uaword	.LVL149
	.uaword	0x1f51
	.uaword	0x182a
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.uaword	.LVL152
	.uaword	0x1f7b
	.uaword	0x183e
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x16
	.uaword	.LVL153
	.byte	0x1
	.uaword	0x1f24
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanSM_TxTimeoutException_StateMachine"
	.byte	0x1
	.uahalf	0x8e9
	.byte	0x1
	.uaword	.LFB85
	.uaword	.LFE85
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1956
	.uleb128 0x26
	.string	"Channel"
	.byte	0x1
	.uahalf	0x8e9
	.uaword	0x2c1
	.uaword	.LLST38
	.uleb128 0x23
	.string	"CanSM_TxTimeoutException_en"
	.byte	0x1
	.uahalf	0x8ec
	.uaword	0x105c
	.uaword	.LLST39
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x8ee
	.uaword	0x1cb
	.uaword	.LLST40
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x8f0
	.uaword	0x1cb
	.uaword	.LLST41
	.uleb128 0x14
	.uaword	.LVL157
	.uaword	0x12ce
	.uaword	0x18fb
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL163
	.uaword	0x1f51
	.uaword	0x190e
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.uaword	.LVL171
	.uaword	0x121c
	.uaword	0x1922
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL176
	.byte	0x1
	.uaword	0x1ec5
	.uaword	0x1946
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x22
	.uaword	.LVL185
	.uaword	0x1f51
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CanSM_WakeUpValidation_StateMachine"
	.byte	0x1
	.uahalf	0xa55
	.byte	0x1
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a06
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0xa55
	.uaword	0x2c1
	.uaword	.LLST42
	.uleb128 0x23
	.string	"CanSM_WakeUpValidation_Substates"
	.byte	0x1
	.uahalf	0xa58
	.uaword	0xf5a
	.uaword	.LLST43
	.uleb128 0x14
	.uaword	.LVL191
	.uaword	0x121c
	.uaword	0x19e1
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL200
	.uaword	0x12ce
	.uaword	0x19f5
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL207
	.uaword	0x1432
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x14ad
	.uaword	.LFB87
	.uaword	.LFE87
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a3a
	.uleb128 0x29
	.uaword	0x14cc
	.uaword	.LLST44
	.uleb128 0x21
	.uaword	0x14d8
	.byte	0
	.uleb128 0x22
	.uaword	.LVL220
	.uaword	0x1f24
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"CanSM_BOR_SilentCom_Exit"
	.byte	0x1
	.uahalf	0xb91
	.byte	0x1
	.uaword	.LFB88
	.uaword	.LFE88
	.uaword	.LLST45
	.byte	0x1
	.uaword	0x1ada
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0xb91
	.uaword	0x2c1
	.uaword	.LLST46
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0xb94
	.uaword	0x885
	.uaword	.LLST47
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xb96
	.uaword	0x943
	.byte	0x1
	.uleb128 0x2a
	.string	"CanSM_ComM_Mode_uo"
	.byte	0x1
	.uahalf	0xb98
	.uaword	0x372
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x14
	.uaword	.LVL225
	.uaword	0x1f24
	.uaword	0x1ac8
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.uaword	.LVL226
	.byte	0x1
	.uaword	0x1f7b
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_ConfigSet_pcst"
	.byte	0xa
	.uahalf	0x125
	.uaword	0x1af9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1aff
	.uleb128 0x8
	.uaword	0x890
	.uleb128 0x2b
	.string	"CanSM_Network_pcst"
	.byte	0xa
	.uahalf	0x12d
	.uaword	0x885
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x113b
	.uaword	0x1b31
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_TimerConfig_ast"
	.byte	0xa
	.uahalf	0x134
	.uaword	0x1b21
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x60c
	.uaword	0x1b61
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0xa
	.uahalf	0x142
	.uaword	0x1b51
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x6e4
	.uaword	0x1b90
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_currBOR_State_en"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x1b80
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BusOff_Cntr_au8"
	.byte	0xa
	.uahalf	0x150
	.uaword	0x35d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BORMode_au8"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x35d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x372
	.uaword	0x1bfd
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_ReqComM_Mode_en"
	.byte	0xa
	.uahalf	0x16e
	.uaword	0x1bed
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Wuvalidation_Start_ab"
	.byte	0xa
	.uahalf	0x175
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Num_Unsuccessful_ModeReq_au8"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x35d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Trcv_ModeInd_ab"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Ctrl_ModeInd_ab"
	.byte	0xa
	.uahalf	0x1a6
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_ModeChangeReq_flag"
	.byte	0xa
	.uahalf	0x1ae
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x773
	.uaword	0x1ce3
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_ReqMode_a"
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x1cd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xcee
	.uaword	0x1d0d
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_PreNoCom_Substates_en"
	.byte	0xa
	.uahalf	0x1bf
	.uaword	0x1cfd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BusSMMode_au8"
	.byte	0xa
	.uahalf	0x1cf
	.uaword	0x1bed
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xe0e
	.uaword	0x1d61
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_PreFullCom_Substates_en"
	.byte	0xa
	.uahalf	0x1d6
	.uaword	0x1d51
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xf5a
	.uaword	0x1d99
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_WakeUpValidation_Substates_en"
	.byte	0xa
	.uahalf	0x1dd
	.uaword	0x1d89
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x105c
	.uaword	0x1dd7
	.uleb128 0x7
	.uaword	0x2b5
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_TxTimeoutexception_Substates_en"
	.byte	0xa
	.uahalf	0x1e4
	.uaword	0x1dc7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_ModeRepeatReq_Time_u16"
	.byte	0xa
	.uahalf	0x1eb
	.uaword	0x1f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_ModeRepeatReq_Max_u8"
	.byte	0xa
	.uahalf	0x1f2
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Network_Init_ab"
	.byte	0xa
	.uahalf	0x1ff
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BOR_SilentCom_ab"
	.byte	0xa
	.uahalf	0x224
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"CanIf_SetControllerMode"
	.byte	0xc
	.byte	0x4a
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x1ec5
	.uleb128 0x2d
	.uaword	0x1cb
	.uleb128 0x2d
	.uaword	0xa54
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xd
	.byte	0x70
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x1ef8
	.uleb128 0x2d
	.uaword	0x1f6
	.uleb128 0x2d
	.uaword	0x1cb
	.uleb128 0x2d
	.uaword	0x1cb
	.uleb128 0x2d
	.uaword	0x1cb
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"CanIf_SetTrcvMode"
	.byte	0xc
	.uahalf	0x10f
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x1f24
	.uleb128 0x2d
	.uaword	0x1cb
	.uleb128 0x2d
	.uaword	0x331
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"BswM_CanSM_CurrentState"
	.byte	0xe
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0x1f51
	.uleb128 0x2d
	.uaword	0x2c1
	.uleb128 0x2d
	.uaword	0x943
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"CanIf_SetPduMode"
	.byte	0xc
	.byte	0x70
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x1f7b
	.uleb128 0x2d
	.uaword	0x1cb
	.uleb128 0x2d
	.uaword	0x9e9
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"ComM_BusSM_ModeIndication"
	.byte	0xf
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x2c1
	.uleb128 0x2d
	.uaword	0x39f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2f
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL7
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE77
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL11
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL30
	.uaword	.LFE77
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LFE78
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL33
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL35
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL53
	.uaword	.LFE78
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LFE79
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69
	.uaword	.LFE80
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL71-1
	.uaword	.LFE80
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LFB81
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE81
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74
	.uaword	.LFE81
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LFB82
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE82
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109
	.uaword	.LVL112
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL118
	.uaword	.LFE82
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL119
	.uaword	.LFE82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL93
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LFE82
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LFE82
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL98
	.uaword	.LVL100-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL125
	.uaword	.LVL127-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LFB83
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE83
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL131
	.uaword	.LFE83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL130
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL138
	.uaword	.LVL140
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL137
	.uaword	.LVL139-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LFB84
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE84
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL145
	.uaword	.LFE84
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL145
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL147
	.uaword	.LVL149-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL154
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL156
	.uaword	.LVL166
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL170
	.uaword	.LVL173
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL174
	.uaword	.LVL176
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL181
	.uaword	.LFE85
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL172
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL179
	.uaword	.LFE85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL184
	.uaword	.LVL186
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LFE85
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL154
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.uaword	.LVL161
	.uaword	.LVL163-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL166
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.uaword	.LVL183
	.uaword	.LVL185-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL187
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL190
	.uaword	.LVL194
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL206
	.uaword	.LVL209
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL209
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL202
	.uaword	.LVL203
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL216
	.uaword	.LFE86
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL217
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL219
	.uaword	.LFE87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LFB88
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE88
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL221
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL223
	.uaword	.LFE88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL222
	.uaword	.LVL225-1
	.uahalf	0x1
	.byte	0x62
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.uaword	.LFB78
	.uaword	.LFE78-.LFB78
	.uaword	.LFB79
	.uaword	.LFE79-.LFB79
	.uaword	.LFB80
	.uaword	.LFE80-.LFB80
	.uaword	.LFB81
	.uaword	.LFE81-.LFB81
	.uaword	.LFB82
	.uaword	.LFE82-.LFB82
	.uaword	.LFB83
	.uaword	.LFE83-.LFB83
	.uaword	.LFB84
	.uaword	.LFE84-.LFB84
	.uaword	.LFB85
	.uaword	.LFE85-.LFB85
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.uaword	.LFB87
	.uaword	.LFE87-.LFB87
	.uaword	.LFB88
	.uaword	.LFE88-.LFB88
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
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LFB77
	.uaword	.LFE77
	.uaword	.LFB78
	.uaword	.LFE78
	.uaword	.LFB79
	.uaword	.LFE79
	.uaword	.LFB80
	.uaword	.LFE80
	.uaword	.LFB81
	.uaword	.LFE81
	.uaword	.LFB82
	.uaword	.LFE82
	.uaword	.LFB83
	.uaword	.LFE83
	.uaword	.LFB84
	.uaword	.LFE84
	.uaword	.LFB85
	.uaword	.LFE85
	.uaword	.LFB86
	.uaword	.LFE86
	.uaword	.LFB87
	.uaword	.LFE87
	.uaword	.LFB88
	.uaword	.LFE88
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF8:
	.string	"CanSM_reqComM_Mode_uo"
.LASF2:
	.string	"CanSM_ControllerId_u8"
.LASF1:
	.string	"CanSM_NetworkConf_ps"
.LASF7:
	.string	"NetworkConf_ps"
.LASF3:
	.string	"CanSM_Ctrl_index_u8"
.LASF4:
	.string	"CanSM_CurrNwMode_en"
.LASF6:
	.string	"CanSM_BswM_Mode_en"
.LASF5:
	.string	"CanSM_Controller_Counter_u8"
.LASF0:
	.string	"network"
	.extern	CanSM_BOR_SilentCom_ab,STT_OBJECT,4
	.extern	ComM_BusSM_ModeIndication,STT_FUNC,0
	.extern	CanIf_SetPduMode,STT_FUNC,0
	.extern	CanSM_BusSMMode_au8,STT_OBJECT,4
	.extern	CanSM_BORMode_au8,STT_OBJECT,4
	.extern	CanSM_currBOR_State_en,STT_OBJECT,4
	.extern	CanSM_BusOff_Cntr_au8,STT_OBJECT,4
	.extern	CanSM_ModeRepeatReq_Time_u16,STT_OBJECT,2
	.extern	CanSM_Wuvalidation_Start_ab,STT_OBJECT,4
	.extern	BswM_CanSM_CurrentState,STT_FUNC,0
	.extern	CanSM_Network_Init_ab,STT_OBJECT,4
	.extern	CanSM_Trcv_ModeInd_ab,STT_OBJECT,4
	.extern	CanIf_SetTrcvMode,STT_FUNC,0
	.extern	CanSM_ModeChangeReq_flag,STT_OBJECT,4
	.extern	CanSM_ReqMode_a,STT_OBJECT,4
	.extern	CanSM_PreFullCom_Substates_en,STT_OBJECT,4
	.extern	CanSM_ReqComM_Mode_en,STT_OBJECT,4
	.extern	CanSM_WakeUpValidation_Substates_en,STT_OBJECT,4
	.extern	CanSM_TimerConfig_ast,STT_OBJECT,16
	.extern	CanSM_TxTimeoutexception_Substates_en,STT_OBJECT,4
	.extern	CanSM_Ctrl_ModeInd_ab,STT_OBJECT,4
	.extern	CanSM_PreNoCom_Substates_en,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_ModeRepeatReq_Max_u8,STT_OBJECT,1
	.extern	CanIf_SetControllerMode,STT_FUNC,0
	.extern	CanSM_Num_Unsuccessful_ModeReq_au8,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_Network_pcst,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
