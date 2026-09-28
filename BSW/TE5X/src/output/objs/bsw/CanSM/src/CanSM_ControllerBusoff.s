	.file	"CanSM_ControllerBusoff.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CANSM_GetBusoffCnt,"ax",@progbits
	.align 1
	.global	CANSM_GetBusoffCnt
	.type	CANSM_GetBusoffCnt, @function
CANSM_GetBusoffCnt:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_ControllerBusoff.c"
	.loc 1 35 0
.LVL0:
	.loc 1 36 0
	movh.a	%a15, hi:CanSM_BusOff_Cntr_au8
	lea	%a15, [%a15] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 37 0
	ld.bu	%d2, [%a15]0
	ret
.LFE76:
	.size	CANSM_GetBusoffCnt, .-CANSM_GetBusoffCnt
.section .text.CanSM_ControllerBusOff,"ax",@progbits
	.align 1
	.global	CanSM_ControllerBusOff
	.type	CanSM_ControllerBusOff, @function
CanSM_ControllerBusOff:
.LFB77:
	.loc 1 40 0
.LVL1:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 57 0
	jge.u	%d4, 4, .L20
	.loc 1 62 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	jz	%d15, .L21
	.loc 1 69 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a15] lo:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a2] 4
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d15, [%a2]0
.LVL2:
	.loc 1 71 0
	ne	%d2, %d15, 255
	jz	%d2, .L22
	.loc 1 81 0
	movh.a	%a3, hi:CanSM_BORMode_au8
	lea	%a3, [%a3] lo:CanSM_BORMode_au8
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 78 0
	movh.a	%a2, hi:CanSM_BusOffISRPend_ab
	.loc 1 81 0
	ld.bu	%d8, [%a3]0
	.loc 1 85 0
	movh.a	%a3, hi:CanSM_CurrNw_Mode_en
	lea	%a3, [%a3] lo:CanSM_CurrNw_Mode_en
	.loc 1 83 0
	movh.a	%a12, hi:CanSM_currBOR_State_en
	.loc 1 85 0
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 78 0
	lea	%a2, [%a2] lo:CanSM_BusOffISRPend_ab
	.loc 1 83 0
	lea	%a12, [%a12] lo:CanSM_currBOR_State_en
	.loc 1 78 0
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 83 0
	addsc.a	%a12, %a12, %d15, 0
	.loc 1 85 0
	ld.bu	%d2, [%a3]0
	.loc 1 76 0
	movh.a	%a13, hi:CanSM_Network_pcst
	ld.a	%a4, [%a13] lo:CanSM_Network_pcst
.LVL3:
	.loc 1 78 0
	ld.bu	%d9, [%a2]0
.LVL4:
	.loc 1 83 0
	ld.bu	%d3, [%a12]0
.LVL5:
	.loc 1 85 0
	jeq	%d2, 1, .L23
	.loc 1 113 0
	movh.a	%a3, hi:CanSM_BusOff_Indicated_ab
	lea	%a3, [%a3] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a3, %a3, %d15, 0
	mov	%d2, 1
	st.b	[%a3]0, %d2
	.loc 1 116 0
	jeq	%d8, 1, .L24
.LVL6:
.L2:
	ret
.LVL7:
.L20:
	.loc 1 57 0 discriminator 1
	mov	%e4, 140
.LVL8:
	mov	%d6, 4
	mov	%d7, 4
	j	Det_ReportError
.LVL9:
.L21:
	.loc 1 62 0 discriminator 1
	mov	%e4, 140
.LVL10:
	mov	%d6, 4
	mov	%d7, 1
	j	Det_ReportError
.LVL11:
.L24:
.LBB8:
.LBB9:
	.loc 1 889 0
	movh.a	%a14, hi:CanSM_MutexMode_au8
	lea	%a14, [%a14] lo:CanSM_MutexMode_au8
	addsc.a	%a3, %a14, %d15, 0
.LBE9:
.LBE8:
	.loc 1 76 0
	mul	%d10, %d15, 20
.LBB13:
.LBB10:
	.loc 1 889 0
	ld.bu	%d11, [%a3]0
.LBE10:
.LBE13:
	.loc 1 76 0
	addsc.a	%a4, %a4, %d10, 0
.LVL12:
.LBB14:
.LBB11:
	.loc 1 889 0
	jeq	%d11, 1, .L25
.LVL13:
.LBE11:
.LBE14:
	.loc 1 167 0
	jnz	%d9, .L2
	.loc 1 170 0
	st.b	[%a2]0, %d8
.LVL14:
	.loc 1 172 0
	add	%d3, -1
	jge.u	%d3, 2, .L2
.LVL15:
	.loc 1 178 0
	ld.bu	%d4, [%a4] 15
.LVL16:
	mov	%d5, 3
	call	BswM_CanSM_CurrentState
.LVL17:
	.loc 1 181 0
	movh.a	%a2, hi:CanSM_BusSMMode_au8
	lea	%a2, [%a2] lo:CanSM_BusSMMode_au8
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 183 0
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	.loc 1 181 0
	st.b	[%a2]0, %d8
	.loc 1 183 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d10, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d2, 2, .L15
	.loc 1 185 0
	movh.a	%a15, hi:CanSM_BOR_Controller_Stopped_state_en
	lea	%a15, [%a15] lo:CanSM_BOR_Controller_Stopped_state_en
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d9
.LVL18:
.L16:
	.loc 1 197 0
	ld.a	%a15, [%a13] lo:CanSM_Network_pcst
	.loc 1 196 0
	lea	%a4, [%SP] 8
	mov	%d15, 1
	.loc 1 197 0
	addsc.a	%a15, %a15, %d10, 0
	.loc 1 196 0
	st.b	[+%a4]-1, %d15
	.loc 1 197 0
	ld.bu	%d4, [%a15] 15
	j	ComM_BusSM_ModeIndication
.LVL19:
.L22:
	.loc 1 71 0 discriminator 1
	mov	%e4, 140
.LVL20:
	mov	%d6, 4
	mov	%d7, 3
	j	Det_ReportError
.LVL21:
.L23:
	.loc 1 89 0
	movh.a	%a15, hi:CanSM_BusOff_Indicated_ab
	lea	%a15, [%a15] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a15, %a15, %d15, 0
	mov	%d3, 0
	st.b	[%a15]0, %d3
	.loc 1 91 0
	movh.a	%a15, hi:CanSM_BOR_SilentCom_ab
	lea	%a15, [%a15] lo:CanSM_BOR_SilentCom_ab
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 90 0
	st.b	[%a2]0, %d3
.LVL22:
	.loc 1 91 0
	st.b	[%a15]0, %d2
	.loc 1 107 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 95 0
	mov	%d2, 4
	.loc 1 107 0
	mov	%d15, 0
.LVL23:
	.loc 1 95 0
	st.b	[%a12]0, %d2
.LVL24:
	.loc 1 107 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.LVL25:
.L25:
.LBB15:
.LBB12:
	.loc 1 892 0
	mov	%d8, 2
.LVL26:
	st.b	[%a3]0, %d8
.LVL27:
.LBE12:
.LBE15:
	.loc 1 123 0
	add	%d3, -1
	jlt.u	%d3, 2, .L26
.LVL28:
.L11:
	.loc 1 163 0
	addsc.a	%a15, %a14, %d15, 0
	mov	%d15, 1
.LVL29:
	st.b	[%a15]0, %d15
	ret
.LVL30:
.L26:
	.loc 1 129 0
	ld.bu	%d4, [%a4] 15
.LVL31:
	mov	%d5, 3
	call	BswM_CanSM_CurrentState
.LVL32:
	.loc 1 132 0
	movh.a	%a2, hi:CanSM_BusSMMode_au8
	lea	%a2, [%a2] lo:CanSM_BusSMMode_au8
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 134 0
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	.loc 1 132 0
	st.b	[%a2]0, %d11
	.loc 1 134 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d10, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d2, 2, .L12
	.loc 1 136 0
	movh.a	%a15, hi:CanSM_BOR_Controller_Stopped_state_en
	lea	%a15, [%a15] lo:CanSM_BOR_Controller_Stopped_state_en
	addsc.a	%a15, %a15, %d15, 0
	mov	%d2, 0
	st.b	[%a15]0, %d2
.L13:
	.loc 1 149 0
	ld.a	%a15, [%a13] lo:CanSM_Network_pcst
	.loc 1 148 0
	lea	%a4, [%SP] 8
	mov	%d2, 1
	.loc 1 149 0
	addsc.a	%a15, %a15, %d10, 0
	.loc 1 148 0
	st.b	[+%a4]-1, %d2
	.loc 1 149 0
	ld.bu	%d4, [%a15] 15
	call	ComM_BusSM_ModeIndication
.LVL33:
	j	.L11
.L12:
	.loc 1 143 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	.loc 1 141 0
	mov	%d2, 4
	.loc 1 143 0
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 141 0
	st.b	[%a12]0, %d2
	.loc 1 143 0
	mov	%d2, 0
	st.h	[%a15] 2, %d2
	st.b	[%a15]0, %d8
	j	.L13
.LVL34:
.L15:
	.loc 1 192 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 190 0
	mov	%d2, 4
	.loc 1 192 0
	mov	%d15, 2
.LVL35:
	.loc 1 190 0
	st.b	[%a12]0, %d2
	.loc 1 192 0
	st.h	[%a15] 2, %d9
	st.b	[%a15]0, %d15
	j	.L16
.LFE77:
	.size	CanSM_ControllerBusOff, .-CanSM_ControllerBusOff
.section .text.CanSM_BOR_MultipleCtrlsStop,"ax",@progbits
	.align 1
	.global	CanSM_BOR_MultipleCtrlsStop
	.type	CanSM_BOR_MultipleCtrlsStop, @function
CanSM_BOR_MultipleCtrlsStop:
.LFB79:
	.loc 1 552 0
.LVL36:
	.loc 1 565 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.w	%d15, [%a15] lo:CanSM_Network_pcst
	.loc 1 552 0
	mov	%d9, %d4
	.loc 1 565 0
	madd	%d2, %d15, %d4, 20
	.loc 1 568 0
	mov	%d15, 0
	.loc 1 565 0
	mov.a	%a15, %d2
.LVL37:
	.loc 1 568 0
	ld.bu	%d2, [%a15] 13
.LVL38:
	jnz	%d2, .L37
	j	.L33
.LVL39:
.L31:
	addi	%d3, %d8, 1
	.loc 1 568 0 is_stmt 0 discriminator 2
	ld.bu	%d2, [%a15] 13
	and	%d3, %d3, 255
.LVL40:
	add	%d15, 1
	jge.u	%d3, %d2, .L42
.LVL41:
.L37:
	.loc 1 571 0 is_stmt 1
	and	%d2, %d15, 255
	ld.a	%a3, [%a15]0
	mov.a	%a2, %d2
	.loc 1 574 0
	mov	%d5, 3
	.loc 1 571 0
	add.a	%a2, %a3
	.loc 1 574 0
	ld.bu	%d4, [%a2]0
	and	%d8, %d15, 255
.LVL42:
	call	CanIf_SetControllerMode
.LVL43:
	jne	%d2, 1, .L31
	.loc 1 578 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d9, 0
	ld.bu	%d2, [%a15] 13
	ld.bu	%d15, [%a2]0
.LVL44:
	add	%d15, 1
	st.b	[%a2]0, %d15
	.loc 1 589 0
	jeq	%d2, %d8, .L33
.LVL45:
.L40:
	.loc 1 617 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d9, 0
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d2, [%a2]0
	ld.bu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Max_u8
	jlt.u	%d2, %d15, .L27
	.loc 1 620 0
	movh.a	%a3, hi:CanSM_CurrNw_Mode_en
	lea	%a3, [%a3] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a3, %a3, %d9, 0
	mov	%d15, 4
	st.b	[%a3]0, %d15
	.loc 1 622 0
	mov	%d15, 0
	.loc 1 624 0
	st.b	[%a2]0, %d15
	.loc 1 626 0
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a2, %a2, %d9, 0
	mov	%d2, 1
	st.b	[%a2]0, %d15
	movh.a	%a2, hi:CanSM_PreNoCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a2, %a2, %d9, 0
	.loc 1 622 0
	movh.a	%a3, hi:CanSM_ReqComM_Mode_en
	st.b	[%a2]0, %d2
	.loc 1 654 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	.loc 1 622 0
	lea	%a3, [%a3] lo:CanSM_ReqComM_Mode_en
	.loc 1 654 0
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	.loc 1 622 0
	addsc.a	%a3, %a3, %d9, 0
	.loc 1 654 0
	addsc.a	%a2, %a2, %d9, 0
	.loc 1 658 0
	ld.bu	%d4, [%a15] 15
	mov	%d5, 0
	.loc 1 622 0
	st.b	[%a3]0, %d15
	.loc 1 654 0
	st.b	[%a2]0, %d15
.LVL46:
	.loc 1 658 0
	call	BswM_CanSM_CurrentState
.LVL47:
	.loc 1 660 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL48:
.L27:
	ret
.LVL49:
.L42:
	mov	%d8, %d3
	.loc 1 589 0
	jne	%d2, %d8, .L40
.LVL50:
.L33:
	.loc 1 592 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL51:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d9, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L43
	.loc 1 607 0
	movh.a	%a15, hi:CanSM_BOR_Controller_Stopped_state_en
	lea	%a15, [%a15] lo:CanSM_BOR_Controller_Stopped_state_en
	addsc.a	%a15, %a15, %d9, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	.loc 1 609 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d9, 2
	mov	%d15, 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.L43:
	.loc 1 595 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 598 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d9, 0
	st.b	[%a15]0, %d15
	.loc 1 601 0
	movh.a	%a15, hi:CanSM_BOR_Controller_Stopped_state_en
	lea	%a15, [%a15] lo:CanSM_BOR_Controller_Stopped_state_en
	addsc.a	%a15, %a15, %d9, 0
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.LFE79:
	.size	CanSM_BOR_MultipleCtrlsStop, .-CanSM_BOR_MultipleCtrlsStop
.section .text.CanSM_BOR_CtrlsStart,"ax",@progbits
	.align 1
	.global	CanSM_BOR_CtrlsStart
	.type	CanSM_BOR_CtrlsStart, @function
CanSM_BOR_CtrlsStart:
.LFB80:
	.loc 1 695 0
.LVL52:
	.loc 1 709 0
	movh.a	%a12, hi:CanSM_Network_pcst
	mul	%d10, %d4, 20
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	.loc 1 695 0
	mov	%d9, %d4
	.loc 1 712 0
	mov	%d15, 0
	.loc 1 709 0
	addsc.a	%a15, %a2, %d10, 0
.LVL53:
	.loc 1 712 0
	ld.bu	%d2, [%a15] 13
	jnz	%d2, .L55
	j	.L50
.LVL54:
.L48:
	addi	%d3, %d8, 1
	.loc 1 712 0 is_stmt 0 discriminator 2
	ld.bu	%d2, [%a15] 13
	and	%d3, %d3, 255
.LVL55:
	add	%d15, 1
	jge.u	%d3, %d2, .L60
.LVL56:
.L55:
	.loc 1 715 0 is_stmt 1
	and	%d2, %d15, 255
	ld.a	%a3, [%a15]0
	mov.a	%a2, %d2
	.loc 1 718 0
	mov	%d5, 2
	.loc 1 715 0
	add.a	%a2, %a3
	.loc 1 718 0
	ld.bu	%d4, [%a2]0
	and	%d8, %d15, 255
.LVL57:
	call	CanIf_SetControllerMode
.LVL58:
	jne	%d2, 1, .L48
	.loc 1 722 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d9, 0
	ld.bu	%d2, [%a15] 13
	ld.bu	%d15, [%a2]0
.LVL59:
	add	%d15, 1
	st.b	[%a2]0, %d15
	.loc 1 733 0
	jeq	%d8, %d2, .L50
.LVL60:
.L58:
	.loc 1 766 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a2, %d9, 0
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d2, [%a2]0
	ld.bu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Max_u8
	jlt.u	%d2, %d15, .L44
	.loc 1 769 0
	movh.a	%a3, hi:CanSM_CurrNw_Mode_en
	lea	%a3, [%a3] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a3, %a3, %d9, 0
	mov	%d15, 4
	st.b	[%a3]0, %d15
	.loc 1 771 0
	mov	%d15, 0
	.loc 1 773 0
	st.b	[%a2]0, %d15
	movh.a	%a2, hi:CanSM_PreNoCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a2, %a2, %d9, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
	.loc 1 771 0
	movh.a	%a3, hi:CanSM_ReqComM_Mode_en
	.loc 1 801 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	.loc 1 771 0
	lea	%a3, [%a3] lo:CanSM_ReqComM_Mode_en
	.loc 1 801 0
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	.loc 1 771 0
	addsc.a	%a3, %a3, %d9, 0
	.loc 1 801 0
	addsc.a	%a2, %a2, %d9, 0
	.loc 1 805 0
	ld.bu	%d4, [%a15] 15
	mov	%d5, 0
	.loc 1 771 0
	st.b	[%a3]0, %d15
	.loc 1 801 0
	st.b	[%a2]0, %d15
.LVL61:
	.loc 1 805 0
	call	BswM_CanSM_CurrentState
.LVL62:
	.loc 1 807 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL63:
.L44:
	ret
.LVL64:
.L60:
	mov	%d8, %d3
	.loc 1 733 0
	jne	%d8, %d2, .L58
.LVL65:
.L50:
	.loc 1 736 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL66:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d9, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L61
	.loc 1 759 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d9, 0
	mov	%d15, 5
	st.b	[%a15]0, %d15
	ret
.L61:
	.loc 1 739 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 742 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d9, 0
	.loc 1 744 0
	movh.a	%a2, hi:CanSM_BusOff_Cntr_au8
	.loc 1 742 0
	st.b	[%a15]0, %d15
	.loc 1 744 0
	ld.a	%a15, [%a12] lo:CanSM_Network_pcst
	lea	%a2, [%a2] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a2, %a2, %d9, 0
	addsc.a	%a15, %a15, %d10, 0
	ld.bu	%d2, [%a2]0
	ld.bu	%d15, [%a15] 14
	.loc 1 747 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d9, 0
	.loc 1 744 0
	jge.u	%d2, %d15, .L52
	.loc 1 747 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
	ret
.L52:
	.loc 1 752 0
	mov	%d15, 6
	st.b	[%a15]0, %d15
	ret
.LFE80:
	.size	CanSM_BOR_CtrlsStart, .-CanSM_BOR_CtrlsStart
.section .text.CanSM_BusOffTransitions,"ax",@progbits
	.align 1
	.global	CanSM_BusOffTransitions
	.type	CanSM_BusOffTransitions, @function
CanSM_BusOffTransitions:
.LFB78:
	.loc 1 244 0
.LVL67:
	.loc 1 266 0
	movh.a	%a12, hi:CanSM_Network_pcst
	mul	%d8, %d4, 20
	ld.a	%a2, [%a12] lo:CanSM_Network_pcst
	.loc 1 273 0
	movh.a	%a13, hi:CanSM_ConfigSet_pcst
	.loc 1 270 0
	movh	%d12, hi:CanSM_BOR_Controller_Stopped_state_en
	.loc 1 266 0
	addsc.a	%a15, %a2, %d8, 0
.LVL68:
	.loc 1 273 0
	ld.a	%a2, [%a13] lo:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a2]0
	.loc 1 270 0
	addi	%d12, %d12, lo:CanSM_BOR_Controller_Stopped_state_en
	mov.a	%a4, %d12
	.loc 1 273 0
	addsc.a	%a2, %a2, %d8, 0
	.loc 1 268 0
	movh	%d11, hi:CanSM_currBOR_State_en
	.loc 1 270 0
	addsc.a	%a14, %a4, %d4, 0
	.loc 1 244 0
	mov	%d15, %d4
	.loc 1 268 0
	addi	%d11, %d11, lo:CanSM_currBOR_State_en
	.loc 1 273 0
	ld.bu	%d3, [%a2] 13
	.loc 1 268 0
	add	%d10, %d15, %d11
	.loc 1 270 0
	ld.bu	%d2, [%a14]0
	.loc 1 268 0
	mov.a	%a3, %d10
	.loc 1 275 0
	ge.u	%d5, %d3, 2
	and.eq	%d5, %d2, 0
	.loc 1 244 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 268 0
	ld.bu	%d9, [%a3]0
.LVL69:
	.loc 1 275 0
	jnz	%d5, .L103
.LVL70:
.L63:
	.loc 1 295 0
	jlt.u	%d3, 2, .L67
	.loc 1 298 0
	movh.a	%a3, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a3, [%a3] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a3, %d15, 0
	movh.a	%a4, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d4, [%a2]0
	ld.bu	%d3, [%a4] lo:CanSM_ModeRepeatReq_Max_u8
	jge.u	%d4, %d3, .L68
	.loc 1 300 0
	jeq	%d2, 1, .L104
.LVL71:
.L67:
	.loc 1 388 0
	jeq	%d9, 4, .L71
	.loc 1 393 0
	jeq	%d9, 5, .L105
	.loc 1 427 0
	eq	%d3, %d9, 3
	mov	%d2, %d3
	or.eq	%d2, %d9, 6
	jnz	%d2, .L76
.LVL72:
	.loc 1 514 0 discriminator 1
	ld.bu	%d2, [%a15] 13
	movh.a	%a12, hi:CanSM_ControllerState_en
	mov	%d15, 0
	lea	%a12, [%a12] lo:CanSM_ControllerState_en
	jz	%d2, .L106
.LVL73:
.L95:
	.loc 1 517 0
	and	%d3, %d15, 255
	ld.a	%a4, [%a15]0
	mov.a	%a2, %d3
	and	%d8, %d15, 255
.LVL74:
	add.a	%a2, %a4
	ld.bu	%d4, [%a2]0
.LVL75:
	.loc 1 518 0
	addsc.a	%a2, %a12, %d4, 0
.LVL76:
	ld.bu	%d3, [%a2]0
.LVL77:
	jeq	%d3, 2, .L84
	.loc 1 521 0
	mov	%d5, 2
	call	CanIf_SetControllerMode
.LVL78:
	ld.bu	%d2, [%a15] 13
.L84:
.LVL79:
	addi	%d3, %d8, 1
	.loc 1 514 0 discriminator 2
	and	%d3, %d3, 255
	add	%d15, 1
	jlt.u	%d3, %d2, .L95
	ret
.LVL80:
.L103:
	.loc 1 278 0
	call	CanSM_BOR_MultipleCtrlsStop
.LVL81:
	.loc 1 280 0
	ld.bu	%d2, [%a14]0
.LVL82:
	.loc 1 281 0
	jne	%d2, 2, .L107
	.loc 1 285 0
	mov.a	%a2, %d10
	mov	%d3, 4
	st.b	[%a2]0, %d3
.LVL83:
	.loc 1 288 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d15, 2
	mov	%d3, 0
	st.b	[%a2]0, %d2
.LVL84:
	st.h	[%a2] 2, %d3
	.loc 1 295 0
	ld.a	%a2, [%a13] lo:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a2]0
	addsc.a	%a2, %a2, %d8, 0
	ld.bu	%d2, [%a2] 13
	jlt.u	%d2, 2, .L71
	.loc 1 298 0
	movh.a	%a3, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a3, [%a3] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d3, [%a2]0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	ld.bu	%d2, [%a2] lo:CanSM_ModeRepeatReq_Max_u8
	jlt.u	%d3, %d2, .L71
.LVL85:
.L68:
	.loc 1 342 0
	movh.a	%a2, hi:CanSM_CurrNw_Mode_en
	lea	%a2, [%a2] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a2, %a2, %d15, 0
	mov	%d2, 4
	st.b	[%a2]0, %d2
	.loc 1 343 0
	movh.a	%a2, hi:CanSM_ReqComM_Mode_en
	lea	%a2, [%a2] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a2, %a2, %d15, 0
	mov	%d2, 0
	st.b	[%a2]0, %d2
	.loc 1 347 0
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 345 0
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 347 0
	st.b	[%a2]0, %d2
	movh.a	%a2, hi:CanSM_PreNoCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 345 0
	st.b	[%a3]0, %d2
	mov	%d3, 1
	.loc 1 375 0
	mov.a	%a3, %d11
	st.b	[%a2]0, %d3
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 381 0
	ld.bu	%d4, [%a15] 15
	mov	%d5, 0
	.loc 1 375 0
	st.b	[%a2]0, %d2
.LVL86:
	.loc 1 381 0
	call	BswM_CanSM_CurrentState
.LVL87:
	.loc 1 383 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL88:
.L76:
	.loc 1 446 0
	movh.a	%a3, hi:CanSM_BusOff_Cntr_au8
	ld.a	%a4, [%a12] lo:CanSM_Network_pcst
	lea	%a3, [%a3] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a15, %a3, %d15, 0
.LVL89:
	movh	%d12, hi:CanSM_TimerConfig_ast
	ld.bu	%d2, [%a15]0
	addsc.a	%a15, %a4, %d8, 0
	addi	%d12, %d12, lo:CanSM_TimerConfig_ast
	ld.bu	%d4, [%a15] 14
	sh	%d10, %d15, 2
	mov.a	%a4, %d12
	addsc.a	%a2, %a4, %d10, 0
	jlt.u	%d2, %d4, .L108
	.loc 1 447 0
	ld.hu	%d4, [%a2] 2
	movh.a	%a2, hi:CanSM_GetBusOffDelay_Value_u8
	lea	%a2, [%a2] lo:CanSM_GetBusOffDelay_Value_u8
	addsc.a	%a2, %a2, %d15, 0
	ld.hu	%d5, [%a15] 6
	ld.bu	%d6, [%a2]0
	add	%d5, %d6
	jlt	%d4, %d5, .L62
.L80:
	.loc 1 460 0 discriminator 1
	ne	%d4, %d2, 255
	and	%d3, %d4
	jz	%d3, .L81
	.loc 1 463 0
	addsc.a	%a3, %a3, %d15, 0
	add	%d2, 1
	st.b	[%a3]0, %d2
.L81:
	.loc 1 466 0
	mov.a	%a3, %d12
	addsc.a	%a2, %a3, %d10, 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
.LVL90:
	.loc 1 470 0
	ld.bu	%d2, [%a15] 13
	jz	%d2, .L82
	movh.a	%a13, hi:CanSM_Network_pcst
	.loc 1 470 0 is_stmt 0 discriminator 3
	mov	%d9, 0
.LVL91:
	lea	%a13, [%a13] lo:CanSM_Network_pcst
.LVL92:
.L83:
	.loc 1 472 0 is_stmt 1 discriminator 3
	ld.a	%a15, [%a15]0
.LVL93:
	and	%d2, %d9, 255
	.loc 1 486 0 discriminator 3
	mov	%d5, 3
	.loc 1 472 0 discriminator 3
	addsc.a	%a15, %a15, %d2, 0
.LVL94:
	add	%d9, 1
.LVL95:
	.loc 1 486 0 discriminator 3
	ld.bu	%d4, [%a15]0
	call	CanIf_SetPduMode
.LVL96:
	.loc 1 470 0 discriminator 3
	ld.a	%a4, [%a13]0
	and	%d3, %d9, 255
.LVL97:
	addsc.a	%a15, %a4, %d8, 0
	ld.bu	%d2, [%a15] 13
	jlt.u	%d3, %d2, .L83
.LVL98:
.L82:
	.loc 1 494 0
	ld.bu	%d4, [%a15] 15
	mov	%d5, 2
	call	BswM_CanSM_CurrentState
.LVL99:
	.loc 1 497 0
	movh.a	%a15, hi:CanSM_BusSMMode_au8
	lea	%a15, [%a15] lo:CanSM_BusSMMode_au8
	addsc.a	%a15, %a15, %d15, 0
	mov	%d9, 2
	.loc 1 500 0
	mov.a	%a2, %d11
	.loc 1 497 0
	st.b	[%a15]0, %d9
	.loc 1 500 0
	addsc.a	%a15, %a2, %d15, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	.loc 1 504 0
	ld.a	%a15, [%a12] lo:CanSM_Network_pcst
	.loc 1 503 0
	lea	%a4, [%SP] 8
	st.b	[+%a4]-1, %d9
	.loc 1 504 0
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 506 0
	mov	%d15, 0
	.loc 1 504 0
	ld.bu	%d4, [%a15] 15
	call	ComM_BusSM_ModeIndication
.LVL100:
	.loc 1 506 0
	mov.a	%a3, %d12
	addsc.a	%a15, %a3, %d10, 0
	st.h	[%a15] 2, %d15
	st.b	[%a15]0, %d9
	ret
.LVL101:
.L105:
	.loc 1 396 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL102:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 1, .L109
	.loc 1 418 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	ld.hu	%d3, [%a15] 2
	movh.a	%a15, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a15] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d3, %d2, .L62
	.loc 1 421 0
	mov.a	%a3, %d11
	addsc.a	%a15, %a3, %d15, 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
	ret
.LVL103:
.L107:
	ld.a	%a2, [%a13] lo:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a2]0
	addsc.a	%a2, %a2, %d8, 0
	ld.bu	%d3, [%a2] 13
	j	.L63
.LVL104:
.L104:
	.loc 1 303 0
	movh.a	%a3, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a3, [%a3] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a3, %a3, %d15, 0
	ld.bu	%d2, [%a3]0
.LVL105:
	jeq	%d2, 1, .L110
	.loc 1 327 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d15, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d3, [%a2] 2
	ld.hu	%d2, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d3, %d2, .L67
	.loc 1 330 0
	mov	%d2, 3
	.loc 1 333 0
	mov.a	%a4, %d12
	.loc 1 330 0
	st.b	[%a2]0, %d2
	.loc 1 333 0
	addsc.a	%a2, %a4, %d15, 0
	mov	%d2, 0
	st.b	[%a2]0, %d2
	j	.L67
.LVL106:
.L62:
	ret
.LVL107:
.L71:
	.loc 1 391 0
	mov	%d4, %d15
	j	CanSM_BOR_CtrlsStart
.LVL108:
.L108:
	.loc 1 446 0 discriminator 1
	ld.hu	%d4, [%a2] 2
	movh.a	%a2, hi:CanSM_GetBusOffDelay_Value_u8
	lea	%a2, [%a2] lo:CanSM_GetBusOffDelay_Value_u8
	addsc.a	%a2, %a2, %d15, 0
	ld.hu	%d5, [%a15] 4
	ld.bu	%d6, [%a2]0
	add	%d5, %d6
	jge	%d4, %d5, .L80
	ret
.L109:
	.loc 1 399 0
	mov	%d2, 0
	st.b	[%a15]0, %d2
	.loc 1 402 0
	movh.a	%a15, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a15, [%a15] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 404 0
	movh.a	%a2, hi:CanSM_BusOff_Cntr_au8
	.loc 1 402 0
	st.b	[%a15]0, %d2
	.loc 1 404 0
	ld.a	%a15, [%a12] lo:CanSM_Network_pcst
	lea	%a2, [%a2] lo:CanSM_BusOff_Cntr_au8
	addsc.a	%a2, %a2, %d15, 0
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d3, [%a2]0
	ld.bu	%d2, [%a15] 14
	jge.u	%d3, %d2, .L74
	.loc 1 407 0
	mov.a	%a4, %d11
	addsc.a	%a15, %a4, %d15, 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
	ret
.LVL109:
.L110:
	.loc 1 309 0
	mov	%d3, 0
	.loc 1 312 0
	mov.a	%a4, %d12
	.loc 1 309 0
	st.b	[%a3]0, %d3
	.loc 1 312 0
	addsc.a	%a3, %a4, %d15, 0
	mov	%d2, 2
	st.b	[%a3]0, %d2
	.loc 1 318 0
	mov.a	%a3, %d11
	.loc 1 315 0
	st.b	[%a2]0, %d3
	.loc 1 318 0
	addsc.a	%a2, %a3, %d15, 0
	mov	%d3, 4
	st.b	[%a2]0, %d3
	.loc 1 321 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d15, 2
	mov	%d3, 0
	st.h	[%a2] 2, %d3
	st.b	[%a2]0, %d2
	j	.L67
.LVL110:
.L74:
	.loc 1 412 0
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d15, 0
	mov	%d15, 6
	st.b	[%a15]0, %d15
	ret
.LVL111:
.L106:
	ret
.LFE78:
	.size	CanSM_BusOffTransitions, .-CanSM_BusOffTransitions
.section .text.CanSM_Rb_DisableBusOffRecovery,"ax",@progbits
	.align 1
	.global	CanSM_Rb_DisableBusOffRecovery
	.type	CanSM_Rb_DisableBusOffRecovery, @function
CanSM_Rb_DisableBusOffRecovery:
.LFB81:
	.loc 1 845 0
.LVL112:
	.loc 1 847 0
	call	CanSM_GetHandle
.LVL113:
	.loc 1 849 0
	movh.a	%a15, hi:CanSM_Rb_DisableBusOffRecovery_ab
	lea	%a15, [%a15] lo:CanSM_Rb_DisableBusOffRecovery_ab
	addsc.a	%a15, %a15, %d2, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.LFE81:
	.size	CanSM_Rb_DisableBusOffRecovery, .-CanSM_Rb_DisableBusOffRecovery
.section .text.CanSM_GetMutex,"ax",@progbits
	.align 1
	.global	CanSM_GetMutex
	.type	CanSM_GetMutex, @function
CanSM_GetMutex:
.LFB82:
	.loc 1 881 0
.LVL114:
	.loc 1 889 0
	movh.a	%a15, hi:CanSM_MutexMode_au8
	lea	%a15, [%a15] lo:CanSM_MutexMode_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 900 0
	mov	%d2, 1
	.loc 1 889 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L115
.LVL115:
	.loc 1 908 0
	ret
.LVL116:
.L115:
	.loc 1 892 0
	mov	%d15, 2
	st.b	[%a15]0, %d15
.LVL117:
	.loc 1 894 0
	mov	%d2, 0
.LVL118:
	.loc 1 908 0
	ret
.LFE82:
	.size	CanSM_GetMutex, .-CanSM_GetMutex
.section .text.CanSM_GetBusoff_Substate,"ax",@progbits
	.align 1
	.global	CanSM_GetBusoff_Substate
	.type	CanSM_GetBusoff_Substate, @function
CanSM_GetBusoff_Substate:
.LFB83:
	.loc 1 938 0
.LVL119:
	.loc 1 946 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	jz	%d15, .L122
	.loc 1 952 0
	jge.u	%d4, 4, .L123
	.loc 1 957 0
	jz.a	%a4, .L124
	.loc 1 963 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
.LVL120:
	.loc 1 965 0
	ne	%d2, %d15, 255
	jz	%d2, .L125
	.loc 1 969 0
	movh.a	%a15, hi:CanSM_currBOR_State_en
.LVL121:
	lea	%a15, [%a15] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 972 0
	mov	%d2, 0
	.loc 1 969 0
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
.LVL122:
	.loc 1 973 0
	ret
.LVL123:
.L122:
	.loc 1 946 0 discriminator 1
	mov	%e4, 140
.LVL124:
	mov	%d6, 129
	mov	%d7, 1
	call	Det_ReportError
.LVL125:
	mov	%d2, 1
	ret
.LVL126:
.L123:
	.loc 1 952 0 discriminator 1
	mov	%e4, 140
.LVL127:
	mov	%d6, 129
	mov	%d7, 4
	call	Det_ReportError
.LVL128:
	mov	%d2, 1
	ret
.LVL129:
.L125:
	.loc 1 965 0 discriminator 1
	mov	%e4, 140
.LVL130:
	mov	%d6, 129
	mov	%d7, 3
	call	Det_ReportError
.LVL131:
	mov	%d2, 1
	ret
.LVL132:
.L124:
	.loc 1 957 0 discriminator 1
	mov	%e4, 140
.LVL133:
	mov	%d6, 129
	mov	%d7, 2
	call	Det_ReportError
.LVL134:
	mov	%d2, 1
	ret
.LFE83:
	.size	CanSM_GetBusoff_Substate, .-CanSM_GetBusoff_Substate
.section .text.CanSM_BOR_CtrlsStart_SilentCom,"ax",@progbits
	.align 1
	.global	CanSM_BOR_CtrlsStart_SilentCom
	.type	CanSM_BOR_CtrlsStart_SilentCom, @function
CanSM_BOR_CtrlsStart_SilentCom:
.LFB84:
	.loc 1 1059 0
.LVL135:
	.loc 1 1074 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.w	%d2, [%a15] lo:CanSM_Network_pcst
	.loc 1 1078 0
	movh.a	%a12, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 1074 0
	madd	%d3, %d2, %d4, 20
	.loc 1 1059 0
	mov	%d15, %d4
	.loc 1 1078 0
	lea	%a12, [%a12] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 1076 0
	movh.a	%a13, hi:CanSM_currBOR_State_en
	.loc 1 1078 0
	addsc.a	%a3, %a12, %d15, 0
	.loc 1 1076 0
	lea	%a13, [%a13] lo:CanSM_currBOR_State_en
	.loc 1 1078 0
	movh.a	%a4, hi:CanSM_ModeRepeatReq_Max_u8
	.loc 1 1074 0
	mov.a	%a15, %d3
.LVL136:
	.loc 1 1076 0
	addsc.a	%a2, %a13, %d4, 0
	.loc 1 1078 0
	ld.bu	%d3, [%a3]0
.LVL137:
	ld.bu	%d2, [%a4] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 1076 0
	ld.bu	%d4, [%a2]0
.LVL138:
	.loc 1 1078 0
	jge.u	%d3, %d2, .L127
	.loc 1 1080 0
	jeq	%d4, 4, .L129
	jne	%d4, 5, .L147
	.loc 1 1085 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL139:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 1, .L132
	.loc 1 1092 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
	ld.hu	%d2, [%a15] 2
	ld.hu	%d15, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
.LVL140:
	jlt.u	%d2, %d15, .L126
	.loc 1 1095 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
	.loc 1 1098 0
	mov	%d15, 4
	st.b	[%a2]0, %d15
.LVL141:
	ret
.LVL142:
.L127:
	.loc 1 1154 0
	movh.a	%a4, hi:CanSM_CurrNw_Mode_en
	lea	%a4, [%a4] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a4, %a4, %d15, 0
	mov	%d2, 4
	st.b	[%a4]0, %d2
	.loc 1 1156 0
	mov	%d2, 0
	.loc 1 1158 0
	st.b	[%a3]0, %d2
	.loc 1 1160 0
	movh.a	%a3, hi:CanSM_BOR_SilentCom_ab
	lea	%a3, [%a3] lo:CanSM_BOR_SilentCom_ab
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 1163 0
	mov	%d3, 3
	.loc 1 1160 0
	st.b	[%a3]0, %d2
	.loc 1 1163 0
	movh.a	%a3, hi:CanSM_TimerConfig_ast
	lea	%a3, [%a3] lo:CanSM_TimerConfig_ast
	addsc.a	%a3, %a3, %d15, 2
	.loc 1 1156 0
	movh.a	%a4, hi:CanSM_ReqComM_Mode_en
	.loc 1 1163 0
	st.b	[%a3]0, %d3
	movh.a	%a3, hi:CanSM_PreNoCom_Substates_en
	.loc 1 1156 0
	lea	%a4, [%a4] lo:CanSM_ReqComM_Mode_en
	lea	%a3, [%a3] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a4, %a4, %d15, 0
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 1196 0
	ld.bu	%d4, [%a15] 15
	mov	%d5, 0
	mov	%d15, 1
	.loc 1 1156 0
	st.b	[%a4]0, %d2
	st.b	[%a3]0, %d15
	.loc 1 1192 0
	st.b	[%a2]0, %d2
.LVL143:
	.loc 1 1196 0
	call	BswM_CanSM_CurrentState
.LVL144:
	.loc 1 1198 0
	mov	%e4, 140
	mov	%d6, 5
	mov	%d7, 10
	j	Det_ReportError
.LVL145:
.L147:
	ret
.L129:
.LVL146:
	.loc 1 1106 0 discriminator 1
	ld.bu	%d2, [%a15] 13
	mov	%d9, 0
	jnz	%d2, .L143
	j	.L138
.LVL147:
.L136:
	add	%d8, 1
	.loc 1 1106 0 is_stmt 0 discriminator 2
	ld.bu	%d2, [%a15] 13
	and	%d8, %d8, 255
.LVL148:
	add	%d9, 1
	jge.u	%d8, %d2, .L137
.LVL149:
.L143:
	.loc 1 1109 0 is_stmt 1
	and	%d2, %d9, 255
	ld.a	%a3, [%a15]0
	mov.a	%a2, %d2
	.loc 1 1112 0
	mov	%d5, 2
	.loc 1 1109 0
	add.a	%a2, %a3
	.loc 1 1112 0
	ld.bu	%d4, [%a2]0
	and	%d8, %d9, 255
.LVL150:
	call	CanIf_SetControllerMode
.LVL151:
	jne	%d2, 1, .L136
	.loc 1 1115 0
	addsc.a	%a12, %a12, %d15, 0
	ld.bu	%d2, [%a12]0
	add	%d2, 1
	st.b	[%a12]0, %d2
	ld.bu	%d2, [%a15] 13
.LVL152:
.L137:
	.loc 1 1126 0
	jeq	%d2, %d8, .L138
.LVL153:
.L126:
	ret
.LVL154:
.L138:
	.loc 1 1129 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
.LVL155:
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 1, .L132
	.loc 1 1138 0
	movh.a	%a15, hi:CanSM_TimerConfig_ast
	lea	%a15, [%a15] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 1135 0
	addsc.a	%a13, %a13, %d15, 0
	.loc 1 1138 0
	mov	%d15, 0
	.loc 1 1135 0
	mov	%d2, 5
	.loc 1 1138 0
	st.h	[%a15] 2, %d15
	mov	%d15, 2
	.loc 1 1135 0
	st.b	[%a13]0, %d2
	.loc 1 1138 0
	st.b	[%a15]0, %d15
	ret
.L132:
	.loc 1 1087 0
	mov	%d4, %d15
	j	CanSM_BOR_SilentCom_Exit
.LVL156:
.LFE84:
	.size	CanSM_BOR_CtrlsStart_SilentCom, .-CanSM_BOR_CtrlsStart_SilentCom
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
	.byte	0x4
	.uaword	.LCFI0-.LFB77
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB79
	.uaword	.LFE79-.LFB79
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB80
	.uaword	.LFE80-.LFB80
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB78
	.uaword	.LFE78-.LFB78
	.byte	0x4
	.uaword	.LCFI1-.LFB78
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB81
	.uaword	.LFE81-.LFB81
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB82
	.uaword	.LFE82-.LFB82
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB83
	.uaword	.LFE83-.LFB83
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB84
	.uaword	.LFE84-.LFB84
	.align 2
.LEFDE16:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM_BswM.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 9 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\CanSM\\integration\\CanSM_Cfg_SchM.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_CanSM.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1b30
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_ControllerBusoff.c"
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
	.uaword	0x1d1
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
	.uaword	0x1fd
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
	.uaword	0x1d1
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
	.uaword	0x1c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c4
	.uleb128 0x4
	.uaword	0x268
	.uaword	0x2e3
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0x1c4
	.uaword	0x2f3
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1c4
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1c4
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1ef
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2f8
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2f3
	.uleb128 0x6
	.uaword	0x1ef
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x467
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x336
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x592
	.uleb128 0xc
	.string	"CANSM_BSM_S_NOCOM"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_BSM_S_SILENTCOM"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_BSM_S_FULLCOM"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_BSM_S_NOT_INITIALIZED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_BSM_S_PRE_NOCOM"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_BSM_WUVALIDATION"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_BSM_S_PRE_FULLCOM"
	.sleb128 6
	.uleb128 0xc
	.string	"CANSM_BSM_S_SET_BAUDRATE"
	.sleb128 7
	.uleb128 0xc
	.string	"CANSM_BSM_S_SILENTCOM_BOR"
	.sleb128 8
	.uleb128 0xc
	.string	"CANSM_BSM_S_TX_TIMEOUT_EXCEPTION"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkModeStateType_ten"
	.byte	0x6
	.byte	0xb6
	.uaword	0x484
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xba
	.uaword	0x66a
	.uleb128 0xc
	.string	"CANSM_BOR_IDLE"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_CHECK"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_S_NO_BUS_OFF"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_RECOVERY_L1"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_S_RESTART_CC"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_S_RESTART_CC_WAIT"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_RECOVERY_L2"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BusOffRecoveryStateType_ten"
	.byte	0x6
	.byte	0xc2
	.uaword	0x5b8
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x786
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x786
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x78c
	.uleb128 0x6
	.uaword	0x467
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x693
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x14
	.uaword	0x844
	.uleb128 0xc
	.string	"CANSM_BSWM_NO_COMMUNICATION"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_BSWM_SILENT_COMMUNICATION"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_BSWM_FULL_COMMUNICATION"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_BSWM_BUS_OFF"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_BSWM_CHANGE_BAUDRATE"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BswMCurrentStateType"
	.byte	0x7
	.byte	0x1b
	.uaword	0x7a9
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0x1f
	.uaword	0x8ea
	.uleb128 0xc
	.string	"CANIF_OFFLINE"
	.sleb128 0
	.uleb128 0xc
	.string	"CANIF_TX_OFFLINE"
	.sleb128 1
	.uleb128 0xc
	.string	"CANIF_TX_OFFLINE_ACTIVE"
	.sleb128 2
	.uleb128 0xc
	.string	"CANIF_ONLINE"
	.sleb128 3
	.uleb128 0xc
	.string	"CANIF_TX_TP_ONLINE"
	.sleb128 4
	.uleb128 0xc
	.string	"CANIF_TX_USER_TP_ONLINE"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"CanIf_PduModeType"
	.byte	0x8
	.byte	0x43
	.uaword	0x866
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0x49
	.uaword	0x955
	.uleb128 0xc
	.string	"CANIF_CS_UNINIT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANIF_CS_SLEEP"
	.sleb128 1
	.uleb128 0xc
	.string	"CANIF_CS_STARTED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANIF_CS_STOPPED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanIf_ControllerModeType"
	.byte	0x8
	.byte	0x5b
	.uaword	0x903
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0x8e
	.uaword	0xbef
	.uleb128 0xc
	.string	"CANSM_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_STOPPED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_S_CC_STOPPED_WAIT"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_S_CC_SLEEP"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_SLEEP"
	.sleb128 6
	.uleb128 0xc
	.string	"CANSM_S_CC_SLEEP_WAIT"
	.sleb128 7
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_SLEEP_WAIT"
	.sleb128 8
	.uleb128 0xc
	.string	"CANSM_S_TRCV_NORMAL"
	.sleb128 9
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_NORMAL"
	.sleb128 10
	.uleb128 0xc
	.string	"CANSM_S_TRCV_NORMAL_WAIT"
	.sleb128 11
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_NORMAL_WAIT"
	.sleb128 12
	.uleb128 0xc
	.string	"CANSM_S_TRCV_STANDBY"
	.sleb128 13
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_STANDBY"
	.sleb128 14
	.uleb128 0xc
	.string	"CANSM_S_TRCV_STANDBY_WAIT"
	.sleb128 15
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_STANDBY_WAIT"
	.sleb128 16
	.uleb128 0xc
	.string	"CANSM_S_PN_CLEAR_WUF"
	.sleb128 17
	.uleb128 0xc
	.string	"CANSM_S_PN_CLEAR_WUF_WAIT"
	.sleb128 18
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP"
	.sleb128 19
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP_WAIT"
	.sleb128 20
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP"
	.sleb128 21
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP_WAIT"
	.sleb128 22
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreNoCom_Substates_ten"
	.byte	0x9
	.byte	0xa6
	.uaword	0x975
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0xaa
	.uaword	0xc98
	.uleb128 0xc
	.string	"CANSM_BOR_CONTROLLER_STOPPED_REQUEST"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_BOR_CONTROLLER_STOPPED_WAIT"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_BOR_CONTROLLER_STOPPED_REQUEST_COMPLETED"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BOR_Controller_Stopped_stateType_ten"
	.byte	0x9
	.byte	0xae
	.uaword	0xc13
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0xe4
	.uaword	0xd50
	.uleb128 0xc
	.string	"CANSM_ControllerState_UNINIT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_ControllerState_STOPPED"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_ControllerState_STARTED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_ControllerState_SLEEP"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanSM_CANControllerStateType_ten"
	.byte	0x9
	.byte	0xe9
	.uaword	0xcca
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0xee
	.uaword	0xdd8
	.uleb128 0xc
	.string	"CANSM_TIMER_INIT"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_TIMER_RUNNING"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_TIMER_ELAPSED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_TIMER_CANCELLED"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerStateType_ten"
	.byte	0x9
	.byte	0xf4
	.uaword	0xd78
	.uleb128 0x9
	.byte	0x4
	.byte	0x9
	.byte	0xf6
	.uaword	0xe29
	.uleb128 0xa
	.string	"stTimer"
	.byte	0x9
	.byte	0xf8
	.uaword	0xdd8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"cntTick_u16"
	.byte	0x9
	.byte	0xf9
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerConfig_tst"
	.byte	0x9
	.byte	0xfa
	.uaword	0xdf8
	.uleb128 0xd
	.string	"SchM_Enter_CanSM_GetMutexNoNest"
	.byte	0xa
	.byte	0x35
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"SchM_Exit_CanSM_GetMutexNoNest"
	.byte	0xa
	.byte	0x3a
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.byte	0x1
	.string	"CanSM_GetMutex"
	.byte	0x1
	.uahalf	0x370
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0xec6
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x370
	.uaword	0x2ba
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x373
	.uaword	0x298
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"CANSM_GetBusoffCnt"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf09
	.uleb128 0x12
	.string	"NetworkIndex"
	.byte	0x1
	.byte	0x22
	.uaword	0x1c4
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"CanSM_ControllerBusOff"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	.LFB77
	.uaword	.LFE77
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x10c2
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.byte	0x27
	.uaword	0x1c4
	.uaword	.LLST1
	.uleb128 0x15
	.string	"CanSM_ComM_ModeType_uo"
	.byte	0x1
	.byte	0x2a
	.uaword	0x2f8
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2c
	.uaword	0x844
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0x2e
	.uaword	0x66a
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.byte	0x30
	.uaword	0x786
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.byte	0x32
	.uaword	0x1c4
	.uaword	.LLST5
	.uleb128 0x17
	.string	"BusoffISRPend_Temp_b"
	.byte	0x1
	.byte	0x34
	.uaword	0x268
	.uaword	.LLST6
	.uleb128 0x17
	.string	"CanSM_BORMode_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x1c4
	.uaword	.LLST7
	.uleb128 0x18
	.uaword	0xe8f
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x77
	.uaword	0x100a
	.uleb128 0x19
	.uaword	0xead
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0xeb9
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x19fe
	.uaword	0x102e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x19fe
	.uaword	0x1052
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL17
	.uaword	0x1a31
	.uaword	0x1065
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x1a5e
	.uaword	0x107a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x19fe
	.uaword	0x109e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL32
	.uaword	0x1a31
	.uaword	0x10b1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL33
	.uaword	0x1a5e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"CanSM_BOR_MultipleCtrlsStop"
	.byte	0x1
	.uahalf	0x227
	.byte	0x1
	.uaword	.LFB79
	.uaword	.LFE79
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x119b
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x227
	.uaword	0x2ba
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x786
	.uaword	.LLST11
	.uleb128 0x22
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x844
	.uaword	.LLST12
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x1c4
	.uaword	.LLST13
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x230
	.uaword	0x1c4
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x232
	.uaword	0x1c4
	.uaword	.LLST15
	.uleb128 0x1e
	.uaword	.LVL43
	.uaword	0x1a8d
	.uaword	0x1167
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL47
	.uaword	0x1a31
	.uaword	0x117a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.uaword	.LVL48
	.byte	0x1
	.uaword	0x19fe
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"CanSM_BOR_CtrlsStart"
	.byte	0x1
	.uahalf	0x2b6
	.byte	0x1
	.uaword	.LFB80
	.uaword	.LFE80
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x126d
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x2ba
	.uaword	.LLST16
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2b9
	.uaword	0x786
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2bb
	.uaword	0x844
	.uaword	.LLST18
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2bd
	.uaword	0x1c4
	.uaword	.LLST19
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2bf
	.uaword	0x1c4
	.uaword	.LLST20
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x1c4
	.uaword	.LLST21
	.uleb128 0x1e
	.uaword	.LVL58
	.uaword	0x1a8d
	.uaword	0x1239
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL62
	.uaword	0x1a31
	.uaword	0x124c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.uaword	.LVL63
	.byte	0x1
	.uaword	0x19fe
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"CanSM_BusOffTransitions"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.uaword	.LFB78
	.uaword	.LFE78
	.uaword	.LLST22
	.byte	0x1
	.uaword	0x13e8
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0xf3
	.uaword	0x2ba
	.uaword	.LLST23
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf6
	.uaword	0x844
	.uaword	.LLST24
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf8
	.uaword	0x66a
	.uaword	.LLST25
	.uleb128 0x17
	.string	"CanSM_BOR_Controller_Stopped_states_en"
	.byte	0x1
	.byte	0xfa
	.uaword	0xc98
	.uaword	.LLST26
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.byte	0xfc
	.uaword	0x786
	.uaword	.LLST27
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfe
	.uaword	0x1c4
	.uaword	.LLST28
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x100
	.uaword	0x1c4
	.uaword	.LLST29
	.uleb128 0x24
	.string	"CanSM_reqComM_Mode_uo"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x2f8
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1e
	.uaword	.LVL78
	.uaword	0x1a8d
	.uaword	0x135c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.uaword	.LVL81
	.uaword	0x10c2
	.uleb128 0x1e
	.uaword	.LVL87
	.uaword	0x1a31
	.uaword	0x1378
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL88
	.byte	0x1
	.uaword	0x19fe
	.uaword	0x139c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL96
	.uaword	0x1abe
	.uaword	0x13af
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL99
	.uaword	0x1a31
	.uaword	0x13c2
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL100
	.uaword	0x1a5e
	.uaword	0x13d6
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x23
	.uaword	.LVL108
	.byte	0x1
	.uaword	0x119b
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"CanSM_Rb_DisableBusOffRecovery"
	.byte	0x1
	.uahalf	0x34c
	.byte	0x1
	.uaword	.LFB81
	.uaword	.LFE81
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1437
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x34c
	.uaword	0x2ba
	.uaword	.LLST30
	.uleb128 0x25
	.uaword	.LVL113
	.uaword	0x1ae8
	.byte	0
	.uleb128 0x26
	.uaword	0xe8f
	.uaword	.LFB82
	.uaword	.LFE82
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x145d
	.uleb128 0x27
	.uaword	0xead
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0xeb9
	.uaword	.LLST31
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"CanSM_GetBusoff_Substate"
	.byte	0x1
	.uahalf	0x3a9
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB83
	.uaword	.LFE83
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1565
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x3a9
	.uaword	0x1c4
	.uaword	.LLST32
	.uleb128 0x29
	.string	"BORStatePtr"
	.byte	0x1
	.uahalf	0x3a9
	.uaword	0x1565
	.uaword	.LLST33
	.uleb128 0x22
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3ac
	.uaword	0x1c4
	.uaword	.LLST34
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x3af
	.uaword	0x298
	.uaword	.LLST35
	.uleb128 0x1e
	.uaword	.LVL125
	.uaword	0x19fe
	.uaword	0x14fc
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL128
	.uaword	0x19fe
	.uaword	0x1520
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL131
	.uaword	0x19fe
	.uaword	0x1544
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL134
	.uaword	0x19fe
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x66a
	.uleb128 0x20
	.byte	0x1
	.string	"CanSM_BOR_CtrlsStart_SilentCom"
	.byte	0x1
	.uahalf	0x422
	.byte	0x1
	.uaword	.LFB84
	.uaword	.LFE84
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x166c
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x422
	.uaword	0x2ba
	.uaword	.LLST36
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x425
	.uaword	0x786
	.uaword	.LLST37
	.uleb128 0x22
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x427
	.uaword	0x844
	.uaword	.LLST38
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x429
	.uaword	0x1c4
	.uaword	.LLST39
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x42b
	.uaword	0x1c4
	.uaword	.LLST40
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x42d
	.uaword	0x1c4
	.uaword	.LLST41
	.uleb128 0x22
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x42f
	.uaword	0x66a
	.uaword	.LLST42
	.uleb128 0x1e
	.uaword	.LVL144
	.uaword	0x1a31
	.uaword	0x1623
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL145
	.byte	0x1
	.uaword	0x19fe
	.uaword	0x1647
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL151
	.uaword	0x1a8d
	.uaword	0x165a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.uaword	.LVL156
	.byte	0x1
	.uaword	0x1b0d
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"CanSM_GetBusOffDelay_Value_u8"
	.byte	0x6
	.byte	0xe5
	.uaword	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x9
	.uahalf	0x125
	.uaword	0x16b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0x16b8
	.uleb128 0x6
	.uaword	0x791
	.uleb128 0x2b
	.string	"CanSM_Network_pcst"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x786
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xe29
	.uaword	0x16ea
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_TimerConfig_ast"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x16da
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Init_ab"
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x592
	.uaword	0x1732
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x9
	.uahalf	0x142
	.uaword	0x1722
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x66a
	.uaword	0x1761
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_currBOR_State_en"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x1751
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BusOff_Cntr_au8"
	.byte	0x9
	.uahalf	0x150
	.uaword	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BORMode_au8"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BusOff_Indicated_ab"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_MutexMode_au8"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x2f8
	.uaword	0x1810
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_ReqComM_Mode_en"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x1800
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BusOffISRPend_ab"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Num_Unsuccessful_ModeReq_au8"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Ctrl_ModeInd_ab"
	.byte	0x9
	.uahalf	0x1a6
	.uaword	0x2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xbef
	.uaword	0x18ae
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_PreNoCom_Substates_en"
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x189e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BusSMMode_au8"
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0x1800
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_ModeRepeatReq_Time_u16"
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0x1ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_ModeRepeatReq_Max_u8"
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x1c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xd50
	.uaword	0x194e
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_ControllerState_en"
	.byte	0x9
	.uahalf	0x1f8
	.uaword	0x193e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xc98
	.uaword	0x1981
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.string	"CanSM_BOR_Controller_Stopped_state_en"
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x1971
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_Rb_DisableBusOffRecovery_ab"
	.byte	0x9
	.uahalf	0x21d
	.uaword	0x2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"CanSM_BOR_SilentCom_ab"
	.byte	0x9
	.uahalf	0x224
	.uaword	0x2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x1a31
	.uleb128 0x2d
	.uaword	0x1ef
	.uleb128 0x2d
	.uaword	0x1c4
	.uleb128 0x2d
	.uaword	0x1c4
	.uleb128 0x2d
	.uaword	0x1c4
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"BswM_CanSM_CurrentState"
	.byte	0xc
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0x1a5e
	.uleb128 0x2d
	.uaword	0x2ba
	.uleb128 0x2d
	.uaword	0x844
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"ComM_BusSM_ModeIndication"
	.byte	0xd
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uaword	0x1a8d
	.uleb128 0x2d
	.uaword	0x2ba
	.uleb128 0x2d
	.uaword	0x325
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"CanIf_SetControllerMode"
	.byte	0xe
	.byte	0x4a
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x1abe
	.uleb128 0x2d
	.uaword	0x1c4
	.uleb128 0x2d
	.uaword	0x955
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"CanIf_SetPduMode"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x1ae8
	.uleb128 0x2d
	.uaword	0x1c4
	.uleb128 0x2d
	.uaword	0x8ea
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x9
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2ba
	.byte	0x1
	.uaword	0x1b0d
	.uleb128 0x2d
	.uaword	0x2ba
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"CanSM_BOR_SilentCom_Exit"
	.byte	0x9
	.uahalf	0x253
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x2ba
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB77
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE77
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
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
	.uaword	.LFE77
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE77
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL11
	.uaword	.LVL17-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL30
	.uaword	.LVL32-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL30
	.uaword	.LVL32-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL32-1
	.uaword	.LFE77
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LFE77
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE77
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LFE79
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL38
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL54
	.uaword	.LFE80
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL53
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LFB78
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE78
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL67
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LVL80
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL81-1
	.uaword	.LFE78
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x7a
	.sleb128 0
	.uaword	.LVL70
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x2
	.byte	0x7a
	.sleb128 0
	.uaword	.LVL81-1
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL101
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL108
	.uaword	.LFE78
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL68
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL111
	.uaword	.LFE78
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.uaword	.LVL77
	.uaword	.LVL78-1
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL94
	.uaword	.LVL96-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL111
	.uaword	.LFE78
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL112
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113-1
	.uaword	.LVL113
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LFE81
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LFE82
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL124
	.uaword	.LVL126
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133
	.uaword	.LFE83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL119
	.uaword	.LVL125-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL125-1
	.uaword	.LVL126
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL128-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL128-1
	.uaword	.LVL129
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL131-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL131-1
	.uaword	.LVL132
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL134-1
	.uaword	.LFE83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL129
	.uaword	.LVL131-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL131-1
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL135
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138
	.uaword	.LFE84
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL142
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL135
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL138
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x5c
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
	.uaword	.LFB79
	.uaword	.LFE79-.LFB79
	.uaword	.LFB80
	.uaword	.LFE80-.LFB80
	.uaword	.LFB78
	.uaword	.LFE78-.LFB78
	.uaword	.LFB81
	.uaword	.LFE81-.LFB81
	.uaword	.LFB82
	.uaword	.LFE82-.LFB82
	.uaword	.LFB83
	.uaword	.LFE83-.LFB83
	.uaword	.LFB84
	.uaword	.LFE84-.LFB84
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LFB77
	.uaword	.LFE77
	.uaword	.LFB79
	.uaword	.LFE79
	.uaword	.LFB80
	.uaword	.LFE80
	.uaword	.LFB78
	.uaword	.LFE78
	.uaword	.LFB81
	.uaword	.LFE81
	.uaword	.LFB82
	.uaword	.LFE82
	.uaword	.LFB83
	.uaword	.LFE83
	.uaword	.LFB84
	.uaword	.LFE84
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"CanSM_ControllerId_u8"
.LASF0:
	.string	"ControllerId"
.LASF3:
	.string	"CanSM_NetworkConf_ps"
.LASF9:
	.string	"CanSM_FuncVal_uo"
.LASF2:
	.string	"CanSM_CurrBORState_en"
.LASF4:
	.string	"network_indx_u8"
.LASF7:
	.string	"CanSM_Ctrl_index_u8"
.LASF1:
	.string	"CanSM_BswM_Mode_en"
.LASF8:
	.string	"CanSM_Controller_Counter_u8"
.LASF5:
	.string	"network"
	.extern	CanSM_BOR_SilentCom_Exit,STT_FUNC,0
	.extern	CanSM_Rb_DisableBusOffRecovery_ab,STT_OBJECT,4
	.extern	CanSM_GetHandle,STT_FUNC,0
	.extern	CanSM_ModeRepeatReq_Time_u16,STT_OBJECT,2
	.extern	CanIf_SetPduMode,STT_FUNC,0
	.extern	CanSM_GetBusOffDelay_Value_u8,STT_OBJECT,4
	.extern	CanSM_ControllerState_en,STT_OBJECT,4
	.extern	CanSM_Ctrl_ModeInd_ab,STT_OBJECT,4
	.extern	CanSM_ReqComM_Mode_en,STT_OBJECT,4
	.extern	CanSM_PreNoCom_Substates_en,STT_OBJECT,4
	.extern	CanSM_ModeRepeatReq_Max_u8,STT_OBJECT,1
	.extern	CanSM_Num_Unsuccessful_ModeReq_au8,STT_OBJECT,4
	.extern	CanIf_SetControllerMode,STT_FUNC,0
	.extern	CanSM_TimerConfig_ast,STT_OBJECT,16
	.extern	CanSM_BOR_SilentCom_ab,STT_OBJECT,4
	.extern	ComM_BusSM_ModeIndication,STT_FUNC,0
	.extern	CanSM_BOR_Controller_Stopped_state_en,STT_OBJECT,4
	.extern	CanSM_BusSMMode_au8,STT_OBJECT,4
	.extern	BswM_CanSM_CurrentState,STT_FUNC,0
	.extern	CanSM_MutexMode_au8,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_BusOff_Indicated_ab,STT_OBJECT,4
	.extern	CanSM_Network_pcst,STT_OBJECT,4
	.extern	CanSM_currBOR_State_en,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_BusOffISRPend_ab,STT_OBJECT,4
	.extern	CanSM_BORMode_au8,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.extern	CanSM_BusOff_Cntr_au8,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
