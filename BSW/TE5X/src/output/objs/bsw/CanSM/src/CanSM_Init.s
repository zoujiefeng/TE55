	.file	"CanSM_Init.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_Init,"ax",@progbits
	.align 1
	.global	CanSM_Init
	.type	CanSM_Init, @function
CanSM_Init:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_Init.c"
	.loc 1 320 0
.LVL0:
	.loc 1 332 0
	movh.a	%a2, hi:CanSM_ConfigSet
	.loc 1 342 0
	movh	%d13, hi:CanSM_Network_pcst
	.loc 1 332 0
	lea	%a15, [%a2] lo:CanSM_ConfigSet
	.loc 1 342 0
	ld.w	%d4, [%a2] lo:CanSM_ConfigSet
	mov.a	%a2, %d13
	.loc 1 345 0
	ld.bu	%d15, [%a15] 10
	.loc 1 342 0
	st.w	[%a2] lo:CanSM_Network_pcst, %d4
	.loc 1 345 0
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Max_u8
	st.b	[%a2] lo:CanSM_ModeRepeatReq_Max_u8, %d15
	.loc 1 347 0
	ld.h	%d15, [%a15] 8
	movh.a	%a2, hi:CanSM_ModeRepeatReq_Time_u16
	.loc 1 332 0
	movh.a	%a3, hi:CanSM_ConfigSet_pcst
	.loc 1 347 0
	st.h	[%a2] lo:CanSM_ModeRepeatReq_Time_u16, %d15
.LVL1:
	.loc 1 350 0
	ld.bu	%d15, [%a15] 11
	.loc 1 332 0
	st.a	[%a3] lo:CanSM_ConfigSet_pcst, %a15
	.loc 1 350 0
	jz	%d15, .L2
	movh	%d12, hi:CanSM_TimerConfig_ast
	movh	%d14, hi:CanSM_Trcv_ModeInd_ab
	movh.a	%a13, hi:CanSM_ControllerState_en
	movh.a	%a12, hi:CanSM_ControllerIndications_ab
	mov	%d10, 0
	addi	%d12, %d12, lo:CanSM_TimerConfig_ast
	addi	%d14, %d14, lo:CanSM_Trcv_ModeInd_ab
	lea	%a14, [%a3] lo:CanSM_ConfigSet_pcst
	.loc 1 354 0
	mov	%d9, 0
	.loc 1 356 0
	mov	%d11, 2
	lea	%a13, [%a13] lo:CanSM_ControllerState_en
	lea	%a12, [%a12] lo:CanSM_ControllerIndications_ab
.LVL2:
.L3:
	.loc 1 354 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	and	%d3, %d10, 255
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 355 0
	movh.a	%a2, hi:CanSM_BusOff_Cntr_au8
	lea	%a2, [%a2] lo:CanSM_BusOff_Cntr_au8
	.loc 1 354 0
	st.b	[%a15]0, %d9
	.loc 1 355 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 356 0
	movh.a	%a2, hi:CanSM_BORMode_au8
	lea	%a2, [%a2] lo:CanSM_BORMode_au8
	.loc 1 355 0
	st.b	[%a15]0, %d9
	.loc 1 356 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 357 0
	movh.a	%a2, hi:CanSM_ReqComM_Mode_en
	lea	%a2, [%a2] lo:CanSM_ReqComM_Mode_en
	.loc 1 356 0
	st.b	[%a15]0, %d11
	.loc 1 357 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 358 0
	movh.a	%a2, hi:CanSM_BusOffISRPend_ab
	lea	%a2, [%a2] lo:CanSM_BusOffISRPend_ab
	.loc 1 357 0
	st.b	[%a15]0, %d9
	.loc 1 358 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 359 0
	movh.a	%a2, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Ctrl_ModeInd_ab
	.loc 1 358 0
	st.b	[%a15]0, %d9
	.loc 1 359 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 360 0
	movh.a	%a2, hi:CanSM_Network_Init_ab
	lea	%a2, [%a2] lo:CanSM_Network_Init_ab
	.loc 1 359 0
	st.b	[%a15]0, %d9
	.loc 1 360 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 361 0
	movh.a	%a2, hi:CanSM_MutexMode_au8
	lea	%a2, [%a2] lo:CanSM_MutexMode_au8
	.loc 1 360 0
	st.b	[%a15]0, %d9
	.loc 1 361 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 363 0
	movh.a	%a2, hi:CanSM_Wuvalidation_Start_ab
	.loc 1 361 0
	mov	%d5, 1
	.loc 1 363 0
	lea	%a2, [%a2] lo:CanSM_Wuvalidation_Start_ab
	.loc 1 361 0
	st.b	[%a15]0, %d5
	.loc 1 363 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 364 0
	movh.a	%a2, hi:CanSM_PreNoCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreNoCom_Substates_en
	.loc 1 363 0
	st.b	[%a15]0, %d9
	.loc 1 364 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 365 0
	movh.a	%a2, hi:CanSM_PreFullCom_Substates_en
	lea	%a2, [%a2] lo:CanSM_PreFullCom_Substates_en
	.loc 1 364 0
	st.b	[%a15]0, %d9
	.loc 1 365 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 366 0
	movh.a	%a2, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a2, [%a2] lo:CanSM_WakeUpValidation_Substates_en
	.loc 1 365 0
	st.b	[%a15]0, %d9
	.loc 1 366 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 369 0
	movh.a	%a2, hi:CanSM_ReqMode_a
	lea	%a2, [%a2] lo:CanSM_ReqMode_a
	.loc 1 366 0
	st.b	[%a15]0, %d9
	.loc 1 369 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 372 0
	movh.a	%a2, hi:CanSM_ModeChangeReq_flag
	lea	%a2, [%a2] lo:CanSM_ModeChangeReq_flag
	.loc 1 369 0
	st.b	[%a15]0, %d9
	.loc 1 372 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 377 0
	movh.a	%a2, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a2, [%a2] lo:CanSM_TxTimeoutexception_Substates_en
	.loc 1 372 0
	st.b	[%a15]0, %d9
	.loc 1 377 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 378 0
	movh.a	%a2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a2, [%a2] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 377 0
	st.b	[%a15]0, %d9
	.loc 1 378 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 379 0
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	.loc 1 378 0
	st.b	[%a15]0, %d9
	.loc 1 379 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 380 0
	mov.a	%a2, %d12
	.loc 1 379 0
	st.b	[%a15]0, %d9
	.loc 1 380 0
	addsc.a	%a15, %a2, %d3, 2
	.loc 1 381 0
	movh.a	%a2, hi:CanSM_BOR_Controller_Stopped_state_en
	.loc 1 380 0
	mov	%d2, 0
	.loc 1 381 0
	lea	%a2, [%a2] lo:CanSM_BOR_Controller_Stopped_state_en
	.loc 1 380 0
	st.b	[%a15]0, %d5
	st.h	[%a15] 2, %d2
	.loc 1 381 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 386 0
	movh.a	%a2, hi:CanSM_Rb_DisableBusOffRecovery_ab
	lea	%a2, [%a2] lo:CanSM_Rb_DisableBusOffRecovery_ab
	.loc 1 381 0
	st.b	[%a15]0, %d11
	.loc 1 386 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 388 0
	movh.a	%a2, hi:CanSM_GetBusOffDelay_Value_u8
	lea	%a2, [%a2] lo:CanSM_GetBusOffDelay_Value_u8
	.loc 1 386 0
	st.b	[%a15]0, %d2
	.loc 1 391 0
	madd	%d15, %d4, %d3, 20
	.loc 1 388 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 389 0
	movh.a	%a2, hi:CanSM_BOR_SilentCom_ab
	lea	%a2, [%a2] lo:CanSM_BOR_SilentCom_ab
	.loc 1 388 0
	st.b	[%a15]0, %d2
	.loc 1 389 0
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 399 0
	movh.a	%a2, hi:CanSM_CurrNw_Mode_en
	.loc 1 391 0
	mov.a	%a5, %d15
	.loc 1 399 0
	lea	%a2, [%a2] lo:CanSM_CurrNw_Mode_en
	.loc 1 389 0
	st.b	[%a15]0, %d2
	.loc 1 399 0
	addsc.a	%a15, %a2, %d3, 0
	mov	%d2, 4
	mov.a	%a2, %d14
	.loc 1 402 0
	ld.bu	%d15, [%a5] 12
	.loc 1 399 0
	st.b	[%a15]0, %d2
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 402 0
	eq	%d15, %d15, 255
	.loc 1 420 0
	ld.bu	%d2, [%a5] 13
	.loc 1 402 0
	st.b	[%a15]0, %d15
	and	%d8, %d10, 255
.LVL3:
	.loc 1 420 0
	jz	%d2, .L7
	ld.a	%a4, [%a5]0
	mov.aa	%a3, %a4
.LVL4:
.L6:
	.loc 1 425 0 discriminator 3
	ld.bu	%d15, [%a3+]1
.LVL5:
	.loc 1 427 0 discriminator 3
	addsc.a	%a15, %a12, %d15, 0
	.loc 1 425 0 discriminator 3
	addsc.a	%a2, %a13, %d15, 0
	.loc 1 427 0 discriminator 3
	st.b	[%a15]0, %d9
.LVL6:
	sub.a	%a15, %a3, %a4
	mov.d	%d15, %a15
.LVL7:
	.loc 1 425 0 discriminator 3
	st.b	[%a2]0, %d9
	.loc 1 420 0 discriminator 3
	and	%d15, 255
	jlt.u	%d15, %d2, .L6
.LVL8:
.L7:
	.loc 1 431 0
	ld.hu	%d4, [%a5] 10
	mov	%d5, 0
	call	Dem_ReportErrorStatus
.LVL9:
	.loc 1 350 0
	ld.a	%a15, [%a14]0
	add	%d15, %d8, 1
	and	%d15, 255
	ld.bu	%d2, [%a15] 11
	add	%d10, 1
	jge.u	%d15, %d2, .L2
	mov.a	%a2, %d13
	ld.w	%d4, [%a2] lo:CanSM_Network_pcst
	j	.L3
.LVL10:
.L2:
	.loc 1 441 0
	mov	%d15, 1
	movh.a	%a15, hi:CanSM_Init_ab
	st.b	[%a15] lo:CanSM_Init_ab, %d15
	ret
.LFE76:
	.size	CanSM_Init, .-CanSM_Init
.section .text.CanSM_DeInitPnNotSupported,"ax",@progbits
	.align 1
	.global	CanSM_DeInitPnNotSupported
	.type	CanSM_DeInitPnNotSupported, @function
CanSM_DeInitPnNotSupported:
.LFB77:
	.loc 1 472 0
.LVL11:
	.loc 1 480 0
	movh.a	%a5, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	lea	%a5, [%a5] lo:CanSM_Num_Unsuccessful_ModeReq_au8
	.loc 1 477 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	.loc 1 480 0
	addsc.a	%a2, %a5, %d4, 0
	.loc 1 477 0
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	.loc 1 480 0
	movh.a	%a4, hi:CanSM_ModeRepeatReq_Max_u8
	.loc 1 477 0
	addsc.a	%a3, %a15, %d4, 0
	.loc 1 480 0
	ld.bu	%d3, [%a2]0
	ld.bu	%d15, [%a4] lo:CanSM_ModeRepeatReq_Max_u8
	.loc 1 477 0
	ld.bu	%d2, [%a3]0
.LVL12:
	.loc 1 480 0
	jge.u	%d3, %d15, .L15
	.loc 1 482 0
	addi	%d3, %d2, -3
	mov	%d15, %d4
	jlt.u	%d3, 13, .L47
.L16:
.LVL13:
	.loc 1 678 0
	jeq	%d2, 1, .L24
.LVL14:
.L30:
	.loc 1 688 0
	jeq	%d2, 5, .L45
.LVL15:
.L31:
	.loc 1 698 0
	ne	%d2, %d2, 9
.LVL16:
	jz	%d2, .L46
.L32:
	.loc 1 722 0
	addsc.a	%a2, %a15, %d15, 0
	ld.bu	%d2, [%a2]0
	ne	%d2, %d2, 13
	jz	%d2, .L48
	ret
.LVL17:
.L47:
	.loc 1 482 0
	movh.a	%a2, hi:.L18
	lea	%a2, [%a2] lo:.L18
	addsc.a	%a2, %a2, %d3, 2
	ji	%a2
	.align 2
	.align 2
.L18:
	.code32
	j	.L17
	.code32
	j	.L16
	.code32
	j	.L16
	.code32
	j	.L16
	.code32
	j	.L19
	.code32
	j	.L16
	.code32
	j	.L16
	.code32
	j	.L16
	.code32
	j	.L20
	.code32
	j	.L16
	.code32
	j	.L16
	.code32
	j	.L16
	.code32
	j	.L21
.L15:
	.loc 1 664 0
	mov	%d15, 1
	st.b	[%a3]0, %d15
.LVL18:
	.loc 1 673 0
	mov	%e4, 140
.LVL19:
	.loc 1 670 0
	mov	%d15, 0
	.loc 1 673 0
	mov	%d6, 5
	mov	%d7, 10
	.loc 1 670 0
	st.b	[%a2]0, %d15
	.loc 1 673 0
	j	Det_ReportError
.LVL20:
.L21:
	.loc 1 612 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d3, [%a2]0
	jeq	%d3, 1, .L49
	.loc 1 638 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
.LVL21:
	ld.hu	%d4, [%a2] 2
.LVL22:
	ld.hu	%d3, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d4, %d3, .L30
	.loc 1 641 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 644 0
	addsc.a	%a2, %a15, %d15, 0
	mov	%d2, 13
	st.b	[%a2]0, %d2
.LVL23:
	j	.L32
.LVL24:
.L19:
	.loc 1 527 0
	movh.a	%a2, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d3, [%a2]0
	jeq	%d3, 1, .L50
	.loc 1 549 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
.LVL25:
	ld.hu	%d4, [%a2] 2
.LVL26:
	ld.hu	%d3, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d4, %d3, .L30
	.loc 1 552 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 555 0
	addsc.a	%a2, %a15, %d15, 0
	mov	%d2, 5
	st.b	[%a2]0, %d2
.LVL27:
.L45:
	.loc 1 692 0
	mov	%d4, %d15
	call	CanSM_SleepCtrl
.LVL28:
	.loc 1 694 0
	addsc.a	%a2, %a15, %d15, 0
	ld.bu	%d2, [%a2]0
.LVL29:
	j	.L31
.LVL30:
.L17:
	.loc 1 487 0
	movh.a	%a2, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d3, [%a2]0
	jeq	%d3, 1, .L51
	.loc 1 509 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
.LVL31:
	ld.hu	%d4, [%a2] 2
.LVL32:
	ld.hu	%d3, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d4, %d3, .L30
	.loc 1 512 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 515 0
	addsc.a	%a2, %a15, %d15, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
.LVL33:
.L24:
	.loc 1 682 0
	mov	%d4, %d15
	call	CanSM_StopCtrl
.LVL34:
	.loc 1 684 0
	addsc.a	%a2, %a15, %d15, 0
	ld.bu	%d2, [%a2]0
.LVL35:
	j	.L30
.LVL36:
.L20:
	.loc 1 569 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d3, [%a2]0
	jeq	%d3, 1, .L52
	.loc 1 594 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	movh.a	%a3, hi:CanSM_ModeRepeatReq_Time_u16
.LVL37:
	ld.hu	%d4, [%a2] 2
.LVL38:
	ld.hu	%d3, [%a3] lo:CanSM_ModeRepeatReq_Time_u16
	jlt.u	%d4, %d3, .L30
	.loc 1 597 0
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 600 0
	addsc.a	%a2, %a15, %d15, 0
	mov	%d2, 9
	st.b	[%a2]0, %d2
.LVL39:
.L46:
	.loc 1 700 0
	movh.a	%a2, hi:CanSM_Network_pcst
	ld.w	%d2, [%a2] lo:CanSM_Network_pcst
	madd	%d3, %d2, %d15, 20
	mov.a	%a2, %d3
	ld.bu	%d2, [%a2] 12
	eq	%d2, %d2, 255
	jz	%d2, .L53
.L33:
	.loc 1 727 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d15, 0
	mov	%d2, 1
	.loc 1 731 0
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 727 0
	st.b	[%a2]0, %d2
	.loc 1 733 0
	mov	%d4, %d15
	.loc 1 731 0
	mov	%d2, 0
	st.b	[%a15]0, %d2
	.loc 1 733 0
	j	CanSM_PreNoCom_Exit
.LVL40:
.L48:
	movh.a	%a2, hi:CanSM_Network_pcst
	ld.w	%d2, [%a2] lo:CanSM_Network_pcst
	madd	%d3, %d2, %d15, 20
	mov.a	%a2, %d3
	.loc 1 724 0
	ld.bu	%d2, [%a2] 12
	ne	%d2, %d2, 255
	jz	%d2, .L33
	.loc 1 741 0
	mov	%d4, %d15
	j	CanSM_StandbyTrcv
.LVL41:
.L53:
	.loc 1 715 0
	mov	%d4, %d15
	call	CanSM_NormalTrcv
.LVL42:
	j	.L32
.LVL43:
.L49:
	.loc 1 615 0
	movh.a	%a3, hi:CanSM_ConfigSet_pcst
.LVL44:
	ld.a	%a3, [%a3] lo:CanSM_ConfigSet_pcst
	ld.w	%d2, [%a3]0
	madd	%d3, %d2, %d4, 20
	mov.a	%a3, %d3
	ld.bu	%d2, [%a3] 12
	eq	%d2, %d2, 255
	jnz	%d2, .L29
	.loc 1 618 0
	st.b	[%a2]0, %d2
.L29:
	.loc 1 621 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d15, 2
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 624 0
	addsc.a	%a5, %a5, %d15, 0
	.loc 1 627 0
	addsc.a	%a2, %a15, %d15, 0
	.loc 1 624 0
	mov	%d2, 0
	.loc 1 632 0
	mov	%d4, %d15
.LVL45:
	.loc 1 624 0
	st.b	[%a5]0, %d2
	.loc 1 627 0
	st.b	[%a2]0, %d2
.LVL46:
	.loc 1 632 0
	call	CanSM_PreNoCom_Exit
.LVL47:
	j	.L32
.LVL48:
.L52:
	.loc 1 572 0
	movh.a	%a3, hi:CanSM_ConfigSet_pcst
.LVL49:
	ld.a	%a3, [%a3] lo:CanSM_ConfigSet_pcst
	ld.w	%d2, [%a3]0
	madd	%d3, %d2, %d4, 20
	mov.a	%a3, %d3
	ld.bu	%d2, [%a3] 12
	eq	%d2, %d2, 255
	jnz	%d2, .L27
	.loc 1 575 0
	st.b	[%a2]0, %d2
.L27:
	.loc 1 579 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d15, 2
	mov	%d2, 3
	st.b	[%a2]0, %d2
	.loc 1 582 0
	addsc.a	%a2, %a15, %d15, 0
	mov	%d2, 13
	.loc 1 585 0
	addsc.a	%a5, %a5, %d15, 0
	.loc 1 582 0
	st.b	[%a2]0, %d2
.LVL50:
	.loc 1 585 0
	mov	%d2, 0
	st.b	[%a5]0, %d2
.LVL51:
	j	.L32
.LVL52:
.L51:
	.loc 1 490 0
	movh.a	%a3, hi:CanSM_TimerConfig_ast
.LVL53:
	lea	%a3, [%a3] lo:CanSM_TimerConfig_ast
	addsc.a	%a3, %a3, %d4, 2
	mov	%d2, 3
	st.b	[%a3]0, %d2
	.loc 1 493 0
	mov	%d2, 0
	st.b	[%a2]0, %d2
	.loc 1 502 0
	addsc.a	%a5, %a5, %d4, 0
	.loc 1 496 0
	addsc.a	%a2, %a15, %d4, 0
	mov	%d3, 5
	st.b	[%a2]0, %d3
.LVL54:
	.loc 1 502 0
	st.b	[%a5]0, %d2
	j	.L45
.LVL55:
.L50:
	.loc 1 530 0
	mov	%d2, 0
	st.b	[%a2]0, %d2
	.loc 1 533 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a2, %a2, %d4, 2
	mov	%d3, 3
	st.b	[%a2]0, %d3
	.loc 1 542 0
	addsc.a	%a5, %a5, %d4, 0
	.loc 1 536 0
	addsc.a	%a2, %a15, %d4, 0
	mov	%d3, 9
	st.b	[%a2]0, %d3
.LVL56:
	.loc 1 542 0
	st.b	[%a5]0, %d2
	j	.L46
.LFE77:
	.size	CanSM_DeInitPnNotSupported, .-CanSM_DeInitPnNotSupported
	.global	CanSM_BOR_SilentCom_ab
.section .bss.a1.CanSM_BOR_SilentCom_ab,"aw",@nobits
	.type	CanSM_BOR_SilentCom_ab, @object
	.size	CanSM_BOR_SilentCom_ab, 4
CanSM_BOR_SilentCom_ab:
	.zero	4
	.global	CanSM_GetBusOffDelay_Value_u8
.section .bss.a1.CanSM_GetBusOffDelay_Value_u8,"aw",@nobits
	.type	CanSM_GetBusOffDelay_Value_u8, @object
	.size	CanSM_GetBusOffDelay_Value_u8, 4
CanSM_GetBusOffDelay_Value_u8:
	.zero	4
	.global	CanSM_Rb_DisableBusOffRecovery_ab
.section .bss.a1.CanSM_Rb_DisableBusOffRecovery_ab,"aw",@nobits
	.type	CanSM_Rb_DisableBusOffRecovery_ab, @object
	.size	CanSM_Rb_DisableBusOffRecovery_ab, 4
CanSM_Rb_DisableBusOffRecovery_ab:
	.zero	4
	.global	CanSM_ConfigSet_pcst
.section .bss.a4.CanSM_ConfigSet_pcst,"aw",@nobits
	.align 2
	.type	CanSM_ConfigSet_pcst, @object
	.size	CanSM_ConfigSet_pcst, 4
CanSM_ConfigSet_pcst:
	.zero	4
	.global	CanSM_Network_pcst
.section .bss.a4.CanSM_Network_pcst,"aw",@nobits
	.align 2
	.type	CanSM_Network_pcst, @object
	.size	CanSM_Network_pcst, 4
CanSM_Network_pcst:
	.zero	4
	.global	CanSM_BOR_Controller_Stopped_state_en
.section .bss.a1.CanSM_BOR_Controller_Stopped_state_en,"aw",@nobits
	.type	CanSM_BOR_Controller_Stopped_state_en, @object
	.size	CanSM_BOR_Controller_Stopped_state_en, 4
CanSM_BOR_Controller_Stopped_state_en:
	.zero	4
	.global	CanSM_ControllerIndications_ab
.section .bss.a1.CanSM_ControllerIndications_ab,"aw",@nobits
	.type	CanSM_ControllerIndications_ab, @object
	.size	CanSM_ControllerIndications_ab, 4
CanSM_ControllerIndications_ab:
	.zero	4
	.global	CanSM_Network_Init_ab
.section .bss.a1.CanSM_Network_Init_ab,"aw",@nobits
	.type	CanSM_Network_Init_ab, @object
	.size	CanSM_Network_Init_ab, 4
CanSM_Network_Init_ab:
	.zero	4
	.global	CanSM_ControllerState_en
.section .bss.a1.CanSM_ControllerState_en,"aw",@nobits
	.type	CanSM_ControllerState_en, @object
	.size	CanSM_ControllerState_en, 4
CanSM_ControllerState_en:
	.zero	4
	.global	CanSM_ModeRepeatReq_Max_u8
.section .bss.a1.CanSM_ModeRepeatReq_Max_u8,"aw",@nobits
	.type	CanSM_ModeRepeatReq_Max_u8, @object
	.size	CanSM_ModeRepeatReq_Max_u8, 1
CanSM_ModeRepeatReq_Max_u8:
	.zero	1
	.global	CanSM_ModeRepeatReq_Time_u16
.section .bss.a2.CanSM_ModeRepeatReq_Time_u16,"aw",@nobits
	.align 1
	.type	CanSM_ModeRepeatReq_Time_u16, @object
	.size	CanSM_ModeRepeatReq_Time_u16, 2
CanSM_ModeRepeatReq_Time_u16:
	.zero	2
	.global	CanSM_TxTimeoutexception_Substates_en
.section .bss.a1.CanSM_TxTimeoutexception_Substates_en,"aw",@nobits
	.type	CanSM_TxTimeoutexception_Substates_en, @object
	.size	CanSM_TxTimeoutexception_Substates_en, 4
CanSM_TxTimeoutexception_Substates_en:
	.zero	4
	.global	CanSM_WakeUpValidation_Substates_en
.section .bss.a1.CanSM_WakeUpValidation_Substates_en,"aw",@nobits
	.type	CanSM_WakeUpValidation_Substates_en, @object
	.size	CanSM_WakeUpValidation_Substates_en, 4
CanSM_WakeUpValidation_Substates_en:
	.zero	4
	.global	CanSM_PreFullCom_Substates_en
.section .bss.a1.CanSM_PreFullCom_Substates_en,"aw",@nobits
	.type	CanSM_PreFullCom_Substates_en, @object
	.size	CanSM_PreFullCom_Substates_en, 4
CanSM_PreFullCom_Substates_en:
	.zero	4
	.global	CanSM_BusSMMode_au8
.section .bss.a1.CanSM_BusSMMode_au8,"aw",@nobits
	.type	CanSM_BusSMMode_au8, @object
	.size	CanSM_BusSMMode_au8, 4
CanSM_BusSMMode_au8:
	.zero	4
	.global	CanSM_PreNoCom_Substates_en
.section .bss.a1.CanSM_PreNoCom_Substates_en,"aw",@nobits
	.type	CanSM_PreNoCom_Substates_en, @object
	.size	CanSM_PreNoCom_Substates_en, 4
CanSM_PreNoCom_Substates_en:
	.zero	4
	.global	CanSM_Ctrl_ModeInd_ab
.section .bss.a1.CanSM_Ctrl_ModeInd_ab,"aw",@nobits
	.type	CanSM_Ctrl_ModeInd_ab, @object
	.size	CanSM_Ctrl_ModeInd_ab, 4
CanSM_Ctrl_ModeInd_ab:
	.zero	4
	.global	CanSM_ReqMode_a
.section .bss.a1.CanSM_ReqMode_a,"aw",@nobits
	.type	CanSM_ReqMode_a, @object
	.size	CanSM_ReqMode_a, 4
CanSM_ReqMode_a:
	.zero	4
	.global	CanSM_ModeChangeReq_flag
.section .bss.a1.CanSM_ModeChangeReq_flag,"aw",@nobits
	.type	CanSM_ModeChangeReq_flag, @object
	.size	CanSM_ModeChangeReq_flag, 4
CanSM_ModeChangeReq_flag:
	.zero	4
	.global	CanSM_Trcv_ModeInd_ab
.section .bss.a1.CanSM_Trcv_ModeInd_ab,"aw",@nobits
	.type	CanSM_Trcv_ModeInd_ab, @object
	.size	CanSM_Trcv_ModeInd_ab, 4
CanSM_Trcv_ModeInd_ab:
	.zero	4
	.global	CanSM_Num_Unsuccessful_ModeReq_au8
.section .bss.a1.CanSM_Num_Unsuccessful_ModeReq_au8,"aw",@nobits
	.type	CanSM_Num_Unsuccessful_ModeReq_au8, @object
	.size	CanSM_Num_Unsuccessful_ModeReq_au8, 4
CanSM_Num_Unsuccessful_ModeReq_au8:
	.zero	4
	.global	CanSM_BusOffISRPend_ab
.section .bss.a1.CanSM_BusOffISRPend_ab,"aw",@nobits
	.type	CanSM_BusOffISRPend_ab, @object
	.size	CanSM_BusOffISRPend_ab, 4
CanSM_BusOffISRPend_ab:
	.zero	4
	.global	CanSM_Wuvalidation_Start_ab
.section .bss.a1.CanSM_Wuvalidation_Start_ab,"aw",@nobits
	.type	CanSM_Wuvalidation_Start_ab, @object
	.size	CanSM_Wuvalidation_Start_ab, 4
CanSM_Wuvalidation_Start_ab:
	.zero	4
	.global	CanSM_ReqComM_Mode_en
.section .bss.a1.CanSM_ReqComM_Mode_en,"aw",@nobits
	.type	CanSM_ReqComM_Mode_en, @object
	.size	CanSM_ReqComM_Mode_en, 4
CanSM_ReqComM_Mode_en:
	.zero	4
	.global	CanSM_MutexMode_au8
.section .bss.a1.CanSM_MutexMode_au8,"aw",@nobits
	.type	CanSM_MutexMode_au8, @object
	.size	CanSM_MutexMode_au8, 4
CanSM_MutexMode_au8:
	.zero	4
	.global	CanSM_BusOff_Indicated_ab
.section .bss.a1.CanSM_BusOff_Indicated_ab,"aw",@nobits
	.type	CanSM_BusOff_Indicated_ab, @object
	.size	CanSM_BusOff_Indicated_ab, 4
CanSM_BusOff_Indicated_ab:
	.zero	4
	.global	CanSM_BORMode_au8
.section .bss.a1.CanSM_BORMode_au8,"aw",@nobits
	.type	CanSM_BORMode_au8, @object
	.size	CanSM_BORMode_au8, 4
CanSM_BORMode_au8:
	.zero	4
	.global	CanSM_BusOff_Cntr_au8
.section .bss.a1.CanSM_BusOff_Cntr_au8,"aw",@nobits
	.type	CanSM_BusOff_Cntr_au8, @object
	.size	CanSM_BusOff_Cntr_au8, 4
CanSM_BusOff_Cntr_au8:
	.zero	4
	.global	CanSM_currBOR_State_en
.section .bss.a1.CanSM_currBOR_State_en,"aw",@nobits
	.type	CanSM_currBOR_State_en, @object
	.size	CanSM_currBOR_State_en, 4
CanSM_currBOR_State_en:
	.zero	4
	.global	CanSM_CurrNw_Mode_en
.section .bss.a1.CanSM_CurrNw_Mode_en,"aw",@nobits
	.type	CanSM_CurrNw_Mode_en, @object
	.size	CanSM_CurrNw_Mode_en, 4
CanSM_CurrNw_Mode_en:
	.zero	4
	.global	CanSM_Init_ab
.section .bss.a1.CanSM_Init_ab,"aw",@nobits
	.type	CanSM_Init_ab, @object
	.size	CanSM_Init_ab, 1
CanSM_Init_ab:
	.zero	1
	.global	CanSM_TimerConfig_ast
.section .bss.a2.CanSM_TimerConfig_ast,"aw",@nobits
	.align 1
	.type	CanSM_TimerConfig_ast, @object
	.size	CanSM_TimerConfig_ast, 16
CanSM_TimerConfig_ast:
	.zero	16
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Dem\\api\\Dem.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1924
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_Init.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1b8
	.uleb128 0x4
	.uaword	0x25c
	.uaword	0x2d7
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0x1b8
	.uaword	0x2e7
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1b8
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1b8
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1e3
	.uleb128 0x7
	.string	"Dem_EventStatusType"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x1b8
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e7
	.uleb128 0x6
	.uaword	0x1e3
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x471
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x25c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x25c
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x340
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x59c
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
	.uaword	0x48e
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xba
	.uaword	0x674
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
	.uaword	0x5c2
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xc7
	.uaword	0x703
	.uleb128 0xc
	.string	"CANSM_CANTRCV_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_CANTRCV_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_CANTRCV_SLEEP"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_CANTRCV_STANDBY"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanSM_ReqCanTrcv_States"
	.byte	0x6
	.byte	0xcc
	.uaword	0x69d
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x815
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x81b
	.uleb128 0x6
	.uaword	0x471
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x722
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x8e
	.uaword	0xab2
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
	.byte	0x7
	.byte	0xa6
	.uaword	0x838
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xaa
	.uaword	0xb5b
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
	.byte	0x7
	.byte	0xae
	.uaword	0xad6
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xb2
	.uaword	0xc89
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_S_CC_STARTED"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_PRE_FULLCOM_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreFullCom_Substates_ten"
	.byte	0x7
	.byte	0xbb
	.uaword	0xb8d
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xbf
	.uaword	0xdd5
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_WakeUpValidation_Substates_ten"
	.byte	0x7
	.byte	0xc8
	.uaword	0xcaf
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xd9
	.uaword	0xed7
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STOPPED_WAIT"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STARTED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STARTED_WAIT"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TxTimeoutException_Substates_ten"
	.byte	0x7
	.byte	0xe0
	.uaword	0xe01
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xe4
	.uaword	0xf8b
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
	.byte	0x7
	.byte	0xe9
	.uaword	0xf05
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xee
	.uaword	0x1013
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
	.byte	0x7
	.byte	0xf4
	.uaword	0xfb3
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0xf6
	.uaword	0x1064
	.uleb128 0xa
	.string	"stTimer"
	.byte	0x7
	.byte	0xf8
	.uaword	0x1013
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"cntTick_u16"
	.byte	0x7
	.byte	0xf9
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerConfig_tst"
	.byte	0x7
	.byte	0xfa
	.uaword	0x1033
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_Init"
	.byte	0x1
	.uahalf	0x13f
	.byte	0x1
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x114b
	.uleb128 0xe
	.string	"ConfigPtr"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x114b
	.uaword	.LLST0
	.uleb128 0xf
	.string	"CanSM_NetworkIdx_u8"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x1b8
	.uaword	.LLST1
	.uleb128 0xf
	.string	"CanSM_ControllerId_u8"
	.byte	0x1
	.uahalf	0x144
	.uaword	0x1b8
	.uaword	.LLST2
	.uleb128 0xf
	.string	"CanSM_Ctrl_index_u8"
	.byte	0x1
	.uahalf	0x146
	.uaword	0x1b8
	.uaword	.LLST3
	.uleb128 0xf
	.string	"CanSM_NetworkConf_ps"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x815
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.LVL9
	.uaword	0x1821
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1151
	.uleb128 0x6
	.uaword	0x820
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_DeInitPnNotSupported"
	.byte	0x1
	.uahalf	0x1d7
	.byte	0x1
	.uaword	.LFB77
	.uaword	.LFE77
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x125b
	.uleb128 0xe
	.string	"network"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x2ae
	.uaword	.LLST5
	.uleb128 0xf
	.string	"CanSM_PreNoCom_Substates"
	.byte	0x1
	.uahalf	0x1da
	.uaword	0xab2
	.uaword	.LLST6
	.uleb128 0x12
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x184d
	.uaword	0x11e4
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3a
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x13
	.uaword	.LVL28
	.uaword	0x1880
	.uaword	0x11f8
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL34
	.uaword	0x18a1
	.uaword	0x120c
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x18c1
	.uaword	0x1221
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x18e6
	.uaword	0x1236
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL42
	.uaword	0x1909
	.uaword	0x124a
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL47
	.uaword	0x18c1
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"CanSM_GetBusOffDelay_Value_u8"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_GetBusOffDelay_Value_u8
	.uleb128 0x4
	.uaword	0x820
	.uaword	0x1293
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.string	"CanSM_ConfigSet"
	.byte	0x6
	.byte	0xeb
	.uaword	0x12ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1288
	.uleb128 0x17
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x1
	.byte	0xf5
	.uaword	0x114b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ConfigSet_pcst
	.uleb128 0x17
	.string	"CanSM_Network_pcst"
	.byte	0x1
	.byte	0xee
	.uaword	0x815
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Network_pcst
	.uleb128 0x4
	.uaword	0x1064
	.uaword	0x1305
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_TimerConfig_ast"
	.byte	0x1
	.byte	0x13
	.uaword	0x12f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_TimerConfig_ast
	.uleb128 0x17
	.string	"CanSM_Init_ab"
	.byte	0x1
	.byte	0x1a
	.uaword	0x25c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Init_ab
	.uleb128 0x4
	.uaword	0x59c
	.uaword	0x1355
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x1
	.byte	0x21
	.uaword	0x1345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_CurrNw_Mode_en
	.uleb128 0x4
	.uaword	0x674
	.uaword	0x1388
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_currBOR_State_en"
	.byte	0x1
	.byte	0x28
	.uaword	0x1378
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_currBOR_State_en
	.uleb128 0x17
	.string	"CanSM_BusOff_Cntr_au8"
	.byte	0x1
	.byte	0x2f
	.uaword	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BusOff_Cntr_au8
	.uleb128 0x17
	.string	"CanSM_BORMode_au8"
	.byte	0x1
	.byte	0x36
	.uaword	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BORMode_au8
	.uleb128 0x17
	.string	"CanSM_BusOff_Indicated_ab"
	.byte	0x1
	.byte	0x3d
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BusOff_Indicated_ab
	.uleb128 0x17
	.string	"CanSM_MutexMode_au8"
	.byte	0x1
	.byte	0x45
	.uaword	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_MutexMode_au8
	.uleb128 0x4
	.uaword	0x2ec
	.uaword	0x144b
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_ReqComM_Mode_en"
	.byte	0x1
	.byte	0x4d
	.uaword	0x143b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ReqComM_Mode_en
	.uleb128 0x17
	.string	"CanSM_Wuvalidation_Start_ab"
	.byte	0x1
	.byte	0x54
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Wuvalidation_Start_ab
	.uleb128 0x17
	.string	"CanSM_BusOffISRPend_ab"
	.byte	0x1
	.byte	0x5b
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BusOffISRPend_ab
	.uleb128 0x17
	.string	"CanSM_Num_Unsuccessful_ModeReq_au8"
	.byte	0x1
	.byte	0x76
	.uaword	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Num_Unsuccessful_ModeReq_au8
	.uleb128 0x17
	.string	"CanSM_Trcv_ModeInd_ab"
	.byte	0x1
	.byte	0x7d
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Trcv_ModeInd_ab
	.uleb128 0x17
	.string	"CanSM_Ctrl_ModeInd_ab"
	.byte	0x1
	.byte	0x93
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Ctrl_ModeInd_ab
	.uleb128 0x17
	.string	"CanSM_ModeChangeReq_flag"
	.byte	0x1
	.byte	0x85
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ModeChangeReq_flag
	.uleb128 0x4
	.uaword	0x703
	.uaword	0x156e
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_ReqMode_a"
	.byte	0x1
	.byte	0x8c
	.uaword	0x155e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ReqMode_a
	.uleb128 0x4
	.uaword	0xab2
	.uaword	0x159c
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_PreNoCom_Substates_en"
	.byte	0x1
	.byte	0x9a
	.uaword	0x158c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_PreNoCom_Substates_en
	.uleb128 0x17
	.string	"CanSM_BusSMMode_au8"
	.byte	0x1
	.byte	0xaa
	.uaword	0x143b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BusSMMode_au8
	.uleb128 0x4
	.uaword	0xc89
	.uaword	0x15f8
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_PreFullCom_Substates_en"
	.byte	0x1
	.byte	0xb1
	.uaword	0x15e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_PreFullCom_Substates_en
	.uleb128 0x4
	.uaword	0xdd5
	.uaword	0x1634
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_WakeUpValidation_Substates_en"
	.byte	0x1
	.byte	0xb8
	.uaword	0x1624
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_WakeUpValidation_Substates_en
	.uleb128 0x4
	.uaword	0xed7
	.uaword	0x1676
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_TxTimeoutexception_Substates_en"
	.byte	0x1
	.byte	0xbf
	.uaword	0x1666
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_TxTimeoutexception_Substates_en
	.uleb128 0x17
	.string	"CanSM_ModeRepeatReq_Time_u16"
	.byte	0x1
	.byte	0xc6
	.uaword	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ModeRepeatReq_Time_u16
	.uleb128 0x17
	.string	"CanSM_ModeRepeatReq_Max_u8"
	.byte	0x1
	.byte	0xcd
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ModeRepeatReq_Max_u8
	.uleb128 0x4
	.uaword	0xf8b
	.uaword	0x170e
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_ControllerState_en"
	.byte	0x1
	.byte	0xd3
	.uaword	0x16fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ControllerState_en
	.uleb128 0x17
	.string	"CanSM_Network_Init_ab"
	.byte	0x1
	.byte	0xda
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Network_Init_ab
	.uleb128 0x17
	.string	"CanSM_ControllerIndications_ab"
	.byte	0x1
	.byte	0xe1
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_ControllerIndications_ab
	.uleb128 0x4
	.uaword	0xb5b
	.uaword	0x1796
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"CanSM_BOR_Controller_Stopped_state_en"
	.byte	0x1
	.byte	0xe7
	.uaword	0x1786
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BOR_Controller_Stopped_state_en
	.uleb128 0x14
	.string	"CanSM_Rb_DisableBusOffRecovery_ab"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_Rb_DisableBusOffRecovery_ab
	.uleb128 0x14
	.string	"CanSM_BOR_SilentCom_ab"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanSM_BOR_SilentCom_ab
	.uleb128 0x18
	.byte	0x1
	.string	"Dem_ReportErrorStatus"
	.byte	0x8
	.uahalf	0x33b
	.byte	0x1
	.byte	0x1
	.uaword	0x184d
	.uleb128 0x19
	.uaword	0x301
	.uleb128 0x19
	.uaword	0x319
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x1880
	.uleb128 0x19
	.uaword	0x1e3
	.uleb128 0x19
	.uaword	0x1b8
	.uleb128 0x19
	.uaword	0x1b8
	.uleb128 0x19
	.uaword	0x1b8
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanSM_SleepCtrl"
	.byte	0x7
	.uahalf	0x23c
	.byte	0x1
	.byte	0x1
	.uaword	0x18a1
	.uleb128 0x19
	.uaword	0x2ae
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanSM_StopCtrl"
	.byte	0x7
	.uahalf	0x23a
	.byte	0x1
	.byte	0x1
	.uaword	0x18c1
	.uleb128 0x19
	.uaword	0x2ae
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanSM_PreNoCom_Exit"
	.byte	0x7
	.uahalf	0x254
	.byte	0x1
	.byte	0x1
	.uaword	0x18e6
	.uleb128 0x19
	.uaword	0x2ae
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanSM_StandbyTrcv"
	.byte	0x7
	.uahalf	0x23f
	.byte	0x1
	.byte	0x1
	.uaword	0x1909
	.uleb128 0x19
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"CanSM_NormalTrcv"
	.byte	0x7
	.uahalf	0x23e
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x2ae
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x83
	.sleb128 -1
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x83
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x83
	.sleb128 -1
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x8
	.byte	0x83
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LVL43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LFE77
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	CanSM_PreNoCom_Substates_en
	.byte	0x22
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL56
	.uaword	.LFE77
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LFB77
	.uaword	.LFE77
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	CanSM_NormalTrcv,STT_FUNC,0
	.extern	CanSM_StandbyTrcv,STT_FUNC,0
	.extern	CanSM_PreNoCom_Exit,STT_FUNC,0
	.extern	CanSM_StopCtrl,STT_FUNC,0
	.extern	CanSM_SleepCtrl,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Dem_ReportErrorStatus,STT_FUNC,0
	.extern	CanSM_ConfigSet,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
