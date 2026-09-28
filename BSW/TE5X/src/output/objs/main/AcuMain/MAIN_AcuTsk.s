	.file	"MAIN_AcuTsk.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_bGetAcuSoftOvcFlag_U,"ax",@progbits
	.align 1
	.global	MAIN_bGetAcuSoftOvcFlag_U
	.type	MAIN_bGetAcuSoftOvcFlag_U, @function
MAIN_bGetAcuSoftOvcFlag_U:
.LFB19:
	.file 1 "main\\AcuMain\\MAIN_AcuTsk.c"
	.loc 1 166 0
	.loc 1 168 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsUFlg
	ld.bu	%d2, [%a15] lo:AMAIN_bSoftOvCurrPhsUFlg
	ret
.LFE19:
	.size	MAIN_bGetAcuSoftOvcFlag_U, .-MAIN_bGetAcuSoftOvcFlag_U
.section .text.MAIN_bGetAcuSoftOvcFlag_V,"ax",@progbits
	.align 1
	.global	MAIN_bGetAcuSoftOvcFlag_V
	.type	MAIN_bGetAcuSoftOvcFlag_V, @function
MAIN_bGetAcuSoftOvcFlag_V:
.LFB20:
	.loc 1 171 0
	.loc 1 173 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsVFlg
	ld.bu	%d2, [%a15] lo:AMAIN_bSoftOvCurrPhsVFlg
	ret
.LFE20:
	.size	MAIN_bGetAcuSoftOvcFlag_V, .-MAIN_bGetAcuSoftOvcFlag_V
.section .text.MAIN_bGetAcuSoftOvcFlag_W,"ax",@progbits
	.align 1
	.global	MAIN_bGetAcuSoftOvcFlag_W
	.type	MAIN_bGetAcuSoftOvcFlag_W, @function
MAIN_bGetAcuSoftOvcFlag_W:
.LFB21:
	.loc 1 176 0
	.loc 1 178 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsWFlg
	ld.bu	%d2, [%a15] lo:AMAIN_bSoftOvCurrPhsWFlg
	ret
.LFE21:
	.size	MAIN_bGetAcuSoftOvcFlag_W, .-MAIN_bGetAcuSoftOvcFlag_W
.section .text.MAIN_bGetAcuSoftOvBhvFlag,"ax",@progbits
	.align 1
	.global	MAIN_bGetAcuSoftOvBhvFlag
	.type	MAIN_bGetAcuSoftOvBhvFlag, @function
MAIN_bGetAcuSoftOvBhvFlag:
.LFB22:
	.loc 1 181 0
	.loc 1 183 0
	movh.a	%a15, hi:AMAIN_bSoftOvBhvFlg
	ld.bu	%d2, [%a15] lo:AMAIN_bSoftOvBhvFlg
	ret
.LFE22:
	.size	MAIN_bGetAcuSoftOvBhvFlag, .-MAIN_bGetAcuSoftOvBhvFlag
.section .text.MAIN_bGetAcuIgbtLSFaultFlag,"ax",@progbits
	.align 1
	.global	MAIN_bGetAcuIgbtLSFaultFlag
	.type	MAIN_bGetAcuIgbtLSFaultFlag, @function
MAIN_bGetAcuIgbtLSFaultFlag:
.LFB23:
	.loc 1 186 0
	.loc 1 188 0
	movh.a	%a15, hi:AMAIN_bIgbtLowIsFlt
	ld.bu	%d2, [%a15] lo:AMAIN_bIgbtLowIsFlt
	ret
.LFE23:
	.size	MAIN_bGetAcuIgbtLSFaultFlag, .-MAIN_bGetAcuIgbtLSFaultFlag
.section .text.MAIN_bGetAcuIgbtHSFaultFlag,"ax",@progbits
	.align 1
	.global	MAIN_bGetAcuIgbtHSFaultFlag
	.type	MAIN_bGetAcuIgbtHSFaultFlag, @function
MAIN_bGetAcuIgbtHSFaultFlag:
.LFB24:
	.loc 1 191 0
	.loc 1 193 0
	movh.a	%a15, hi:AMAIN_bIgbtHighIsFlt
	ld.bu	%d2, [%a15] lo:AMAIN_bIgbtHighIsFlt
	ret
.LFE24:
	.size	MAIN_bGetAcuIgbtHSFaultFlag, .-MAIN_bGetAcuIgbtHSFaultFlag
.section .text.MAIN_vidClrAcuFaultFlag,"ax",@progbits
	.align 1
	.global	MAIN_vidClrAcuFaultFlag
	.type	MAIN_vidClrAcuFaultFlag, @function
MAIN_vidClrAcuFaultFlag:
.LFB25:
	.loc 1 196 0
	.loc 1 197 0
	mov	%d15, 0
	movh.a	%a15, hi:AMAIN_u8IgbtLowFltCnt
	st.b	[%a15] lo:AMAIN_u8IgbtLowFltCnt, %d15
	.loc 1 198 0
	movh.a	%a15, hi:AMAIN_u8IgbtHighFltCnt
	st.b	[%a15] lo:AMAIN_u8IgbtHighFltCnt, %d15
	.loc 1 199 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsUFlg
	st.b	[%a15] lo:AMAIN_bSoftOvCurrPhsUFlg, %d15
	.loc 1 200 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsVFlg
	st.b	[%a15] lo:AMAIN_bSoftOvCurrPhsVFlg, %d15
	.loc 1 201 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsWFlg
	st.b	[%a15] lo:AMAIN_bSoftOvCurrPhsWFlg, %d15
	.loc 1 202 0
	movh.a	%a15, hi:AMAIN_bSoftOvBhvFlg
	st.b	[%a15] lo:AMAIN_bSoftOvBhvFlg, %d15
	.loc 1 203 0
	movh.a	%a15, hi:AMAIN_bIgbtLowIsFlt
	st.b	[%a15] lo:AMAIN_bIgbtLowIsFlt, %d15
	.loc 1 206 0
	mov	%d4, 0
	.loc 1 204 0
	movh.a	%a15, hi:AMAIN_bIgbtHighIsFlt
	st.b	[%a15] lo:AMAIN_bIgbtHighIsFlt, %d15
	.loc 1 206 0
	j	MAIN_bSetACMASCEnableState
.LVL0:
.LFE25:
	.size	MAIN_vidClrAcuFaultFlag, .-MAIN_vidClrAcuFaultFlag
.section .text.MAIN_AcuTaskInit,"ax",@progbits
	.align 1
	.global	MAIN_AcuTaskInit
	.type	MAIN_AcuTaskInit, @function
MAIN_AcuTaskInit:
.LFB26:
	.loc 1 218 0
	.loc 1 229 0
	mov	%d15, 0
	movh.a	%a15, hi:AMAIN_u8IgbtLowFltCnt
	st.b	[%a15] lo:AMAIN_u8IgbtLowFltCnt, %d15
	.loc 1 230 0
	movh.a	%a15, hi:AMAIN_u8IgbtHighFltCnt
	st.b	[%a15] lo:AMAIN_u8IgbtHighFltCnt, %d15
	.loc 1 231 0
	movh.a	%a15, hi:AMAIN_bIgbtLowIsFlt
	st.b	[%a15] lo:AMAIN_bIgbtLowIsFlt, %d15
	.loc 1 232 0
	movh.a	%a15, hi:AMAIN_bIgbtHighIsFlt
	st.b	[%a15] lo:AMAIN_bIgbtHighIsFlt, %d15
	.loc 1 233 0
	movh.a	%a15, hi:AMAIN_bBswReadySts
	st.b	[%a15] lo:AMAIN_bBswReadySts, %d15
	.loc 1 234 0
	movh.a	%a15, hi:AMAIN_bESMStarted
	st.b	[%a15] lo:AMAIN_bESMStarted, %d15
	.loc 1 235 0
	movh.a	%a15, hi:AMAIN_bSoftOvBhvFlg
	st.b	[%a15] lo:AMAIN_bSoftOvBhvFlg, %d15
	.loc 1 236 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsUFlg
	st.b	[%a15] lo:AMAIN_bSoftOvCurrPhsUFlg, %d15
	.loc 1 237 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsVFlg
	st.b	[%a15] lo:AMAIN_bSoftOvCurrPhsVFlg, %d15
	.loc 1 238 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsWFlg
	st.b	[%a15] lo:AMAIN_bSoftOvCurrPhsWFlg, %d15
	.loc 1 239 0
	movh.a	%a15, hi:AMAIN_bVSIStarted
	st.b	[%a15] lo:AMAIN_bVSIStarted, %d15
	.loc 1 240 0
	movh.a	%a15, hi:AMAIN_ESMGo2StartupIEvent
	st.b	[%a15] lo:AMAIN_ESMGo2StartupIEvent, %d15
	.loc 1 241 0
	movh.a	%a15, hi:AMAIN_bProgConditionOk
	st.b	[%a15] lo:AMAIN_bProgConditionOk, %d15
	.loc 1 242 0
	mov	%d15, 0
	movh.a	%a15, hi:AMAIN_f32PWMDutyUPhys
	st.w	[%a15] lo:AMAIN_f32PWMDutyUPhys, %d15
	.loc 1 243 0
	movh.a	%a15, hi:AMAIN_f32PWMDutyVPhys
	st.w	[%a15] lo:AMAIN_f32PWMDutyVPhys, %d15
	.loc 1 244 0
	movh.a	%a15, hi:AMAIN_f32PWMDutyWPhys
	st.w	[%a15] lo:AMAIN_f32PWMDutyWPhys, %d15
	.loc 1 245 0
	mov	%d15, 0
	movh.a	%a15, hi:AMAIN_u16Cnt1
	st.h	[%a15] lo:AMAIN_u16Cnt1, %d15
	.loc 1 246 0
	movh.a	%a15, hi:AMAIN_u16Cnt2
	st.h	[%a15] lo:AMAIN_u16Cnt2, %d15
	.loc 1 247 0
	movh.a	%a15, hi:AMAIN_u16Cnt5
	st.h	[%a15] lo:AMAIN_u16Cnt5, %d15
	.loc 1 248 0
	movh.a	%a15, hi:AMAIN_u16Cnt10
	st.h	[%a15] lo:AMAIN_u16Cnt10, %d15
	.loc 1 249 0
	movh.a	%a15, hi:AMAIN_u16Cnt100
	st.h	[%a15] lo:AMAIN_u16Cnt100, %d15
	.loc 1 250 0
	movh.a	%a15, hi:AMAIN_u16Cnt200
	st.h	[%a15] lo:AMAIN_u16Cnt200, %d15
	.loc 1 251 0
	movh.a	%a15, hi:AMAIN_u16VadcPhaseCurU
	st.h	[%a15] lo:AMAIN_u16VadcPhaseCurU, %d15
	.loc 1 252 0
	movh.a	%a15, hi:AMAIN_u16VadcPhaseCurV
	st.h	[%a15] lo:AMAIN_u16VadcPhaseCurV, %d15
	.loc 1 253 0
	movh.a	%a15, hi:AMAIN_u16VadcPhaseCurW
	st.h	[%a15] lo:AMAIN_u16VadcPhaseCurW, %d15
	.loc 1 254 0
	mov	%d15, 0
	movh.a	%a15, hi:AMAIN_startTime
	st.w	[%a15] lo:AMAIN_startTime, %d15
	.loc 1 255 0
	movh.a	%a15, hi:AMAIN_EndTime
	st.w	[%a15] lo:AMAIN_EndTime, %d15
	.loc 1 256 0
	movh.a	%a15, hi:AMAIN_TotalTime
	st.w	[%a15] lo:AMAIN_TotalTime, %d15
	ret
.LFE26:
	.size	MAIN_AcuTaskInit, .-MAIN_AcuTaskInit
.section .text.MAIN_vidAcuTask1ms,"ax",@progbits
	.align 1
	.global	MAIN_vidAcuTask1ms
	.type	MAIN_vidAcuTask1ms, @function
MAIN_vidAcuTask1ms:
.LFB27:
	.loc 1 268 0
	.loc 1 269 0
	movh.a	%a15, hi:AMAIN_u16Cnt1
	ld.h	%d15, [%a15] lo:AMAIN_u16Cnt1
.LBB12:
.LBB13:
	.file 2 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h"
	.loc 2 117 0
	mov	%d4, 0
.LBE13:
.LBE12:
	.loc 1 269 0
	add	%d15, 1
	st.h	[%a15] lo:AMAIN_u16Cnt1, %d15
.LBB15:
.LBB14:
	.loc 2 117 0
	call	TPPCDev_vidMotorStateMng
.LVL1:
.LBE14:
.LBE15:
	.loc 1 273 0
	call	TPPC_vidACMASCStateMng
.LVL2:
	.loc 1 329 0
	j	AFAIL_vidFailDetection_1ms
.LVL3:
.LFE27:
	.size	MAIN_vidAcuTask1ms, .-MAIN_vidAcuTask1ms
.section .text.MAIN_vidAcuTask2ms,"ax",@progbits
	.align 1
	.global	MAIN_vidAcuTask2ms
	.type	MAIN_vidAcuTask2ms, @function
MAIN_vidAcuTask2ms:
.LFB28:
	.loc 1 341 0
	.loc 1 342 0
	movh.a	%a15, hi:AMAIN_u16Cnt2
	ld.h	%d15, [%a15] lo:AMAIN_u16Cnt2
	add	%d15, 1
	st.h	[%a15] lo:AMAIN_u16Cnt2, %d15
	.loc 1 377 0
	movh.a	%a15, hi:AMAIN_VSIBenchOnWriteDataC
	ld.bu	%d15, [%a15] lo:AMAIN_VSIBenchOnWriteDataC
	jnz	%d15, .L11
	.loc 1 380 0
	movh.a	%a12, hi:ABSW_u32VSICounterCkreq
	movh.a	%a15, hi:AMAIN_u32VSICntCkreqVSIStartedC
	ld.w	%d15, [%a12] lo:ABSW_u32VSICounterCkreq
	ld.w	%d2, [%a15] lo:AMAIN_u32VSICntCkreqVSIStartedC
	jlt.u	%d15, %d2, .L13
	.loc 1 383 0
	movh.a	%a15, hi:AMAIN_bVSIStarted
	ld.bu	%d2, [%a15] lo:AMAIN_bVSIStarted
	jz	%d2, .L19
.L14:
	.loc 1 387 0
	mov	%d8, 1
	st.b	[%a15] lo:AMAIN_bVSIStarted, %d8
	.loc 1 389 0
	movh.a	%a15, hi:AMAIN_u32VSICntCkreqESMStartedC
	ld.w	%d2, [%a15] lo:AMAIN_u32VSICntCkreqESMStartedC
	jge.u	%d15, %d2, .L20
.L13:
	.loc 1 395 0
	j	AESM_vidOnAESM_EV0
.LVL4:
.L11:
	.loc 1 400 0
	movh.a	%a15, hi:ABSW_u32VSICounterCkreq
	ld.w	%d15, [%a15] lo:ABSW_u32VSICounterCkreq
	movh.a	%a15, hi:AMAIN_u32VSICntCkreqVSIStartedC
	ld.w	%d2, [%a15] lo:AMAIN_u32VSICntCkreqVSIStartedC
	jlt.u	%d15, %d2, .L10
	.loc 1 402 0
	movh.a	%a15, hi:AMAIN_bVSIStarted
	ld.bu	%d15, [%a15] lo:AMAIN_bVSIStarted
	jz	%d15, .L21
.L17:
	.loc 1 407 0
	mov	%d15, 1
	st.b	[%a15] lo:AMAIN_bVSIStarted, %d15
.L10:
	ret
.L20:
	.loc 1 391 0
	mov	%d4, 2
	mov	%d5, 1
	call	AESMSRV_vidSetCmdReq
.LVL5:
	.loc 1 392 0
	movh.a	%a15, hi:AMAIN_bESMStarted
	st.b	[%a15] lo:AMAIN_bESMStarted, %d8
	.loc 1 395 0
	j	AESM_vidOnAESM_EV0
.LVL6:
.L19:
	.loc 1 385 0
	call	FAIL_vidInitVSICounters
.LVL7:
	ld.w	%d15, [%a12] lo:ABSW_u32VSICounterCkreq
	j	.L14
.L21:
	.loc 1 404 0
	call	FAIL_vidInitVSICounters
.LVL8:
	j	.L17
.LFE28:
	.size	MAIN_vidAcuTask2ms, .-MAIN_vidAcuTask2ms
.section .text.MAIN_vidAcuTask5ms,"ax",@progbits
	.align 1
	.global	MAIN_vidAcuTask5ms
	.type	MAIN_vidAcuTask5ms, @function
MAIN_vidAcuTask5ms:
.LFB29:
	.loc 1 421 0
	.loc 1 422 0
	movh.a	%a15, hi:AMAIN_u16Cnt5
	ld.h	%d15, [%a15] lo:AMAIN_u16Cnt5
	add	%d15, 1
	st.h	[%a15] lo:AMAIN_u16Cnt5, %d15
	ret
.LFE29:
	.size	MAIN_vidAcuTask5ms, .-MAIN_vidAcuTask5ms
.section .text.MAIN_vidAcuTask10ms,"ax",@progbits
	.align 1
	.global	MAIN_vidAcuTask10ms
	.type	MAIN_vidAcuTask10ms, @function
MAIN_vidAcuTask10ms:
.LFB30:
	.loc 1 434 0
	.loc 1 435 0
	movh.a	%a15, hi:AMAIN_u16Cnt10
	ld.h	%d15, [%a15] lo:AMAIN_u16Cnt10
	.loc 1 434 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 435 0
	add	%d15, 1
	st.h	[%a15] lo:AMAIN_u16Cnt10, %d15
	.loc 1 436 0
	call	BSW_bGetBswReadySts
.LVL9:
	movh.a	%a15, hi:AMAIN_bBswReadySts
.LBB18:
.LBB19:
	.loc 1 891 0
	mov	%d4, 2
.LBE19:
.LBE18:
	.loc 1 436 0
	st.b	[%a15] lo:AMAIN_bBswReadySts, %d2
.LVL10:
.LBB21:
.LBB20:
	.loc 1 891 0
	call	MAIN_REC_vidClrErrCode
.LVL11:
	.loc 1 893 0
	mov	%d4, 2
	mov.aa	%a4, %SP
	mov	%d5, 22
	call	MAIN_ECP_vidPollingFault
.LVL12:
	.loc 1 897 0
	ld.w	%d15, [%SP]0
	movh.a	%a2, hi:AMAIN_u8DEV_Fault
	st.w	[%a2] lo:AMAIN_u8DEV_Fault, %d15
	ld.w	%d15, [%SP] 4
	lea	%a15, [%a2] lo:AMAIN_u8DEV_Fault
	st.w	[%a15] 4, %d15
	ld.w	%d15, [%SP] 8
	st.w	[%a15] 8, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%a15] 12, %d15
	ret
.LBE20:
.LBE21:
.LFE30:
	.size	MAIN_vidAcuTask10ms, .-MAIN_vidAcuTask10ms
.section .text.MAIN_vidAcuTask100ms,"ax",@progbits
	.align 1
	.global	MAIN_vidAcuTask100ms
	.type	MAIN_vidAcuTask100ms, @function
MAIN_vidAcuTask100ms:
.LFB31:
	.loc 1 490 0
	.loc 1 491 0
	movh.a	%a15, hi:AMAIN_u16Cnt100
	ld.h	%d15, [%a15] lo:AMAIN_u16Cnt100
	add	%d15, 1
	st.h	[%a15] lo:AMAIN_u16Cnt100, %d15
	ret
.LFE31:
	.size	MAIN_vidAcuTask100ms, .-MAIN_vidAcuTask100ms
.section .text.MAIN_vidAcuTask200ms,"ax",@progbits
	.align 1
	.global	MAIN_vidAcuTask200ms
	.type	MAIN_vidAcuTask200ms, @function
MAIN_vidAcuTask200ms:
.LFB32:
	.loc 1 578 0
	.loc 1 579 0
	movh.a	%a15, hi:AMAIN_u16Cnt200
	ld.h	%d15, [%a15] lo:AMAIN_u16Cnt200
	add	%d15, 1
	st.h	[%a15] lo:AMAIN_u16Cnt200, %d15
	.loc 1 581 0
	movh.a	%a15, hi:AMAIN_ESMGo2StartupIEvent
	ld.bu	%d15, [%a15] lo:AMAIN_ESMGo2StartupIEvent
	jnz	%d15, .L30
	ret
.L30:
	.loc 1 584 0
	mov	%d15, 0
	.loc 1 583 0
	call	AESM_vidOnAESM_EV1
.LVL13:
	.loc 1 584 0
	st.b	[%a15] lo:AMAIN_ESMGo2StartupIEvent, %d15
	ret
.LFE32:
	.size	MAIN_vidAcuTask200ms, .-MAIN_vidAcuTask200ms
.section .cpu3_psram,"awxc3",@progbits
	.align 1
	.global	MAIN_vidAcuPwmTreatment
	.type	MAIN_vidAcuPwmTreatment, @function
MAIN_vidAcuPwmTreatment:
.LFB33:
	.loc 1 625 0
	.loc 1 626 0
	ld.w	%d15, 0xf0001110
	.loc 1 628 0
	movh.a	%a15, hi:MAIN_AcuTreatmentLastStartTime
	ld.w	%d2, [%a15] lo:MAIN_AcuTreatmentLastStartTime
	.loc 1 626 0
	movh.a	%a12, hi:MAIN_AcuTreatmentStartTime
	.loc 1 629 0
	st.w	[%a15] lo:MAIN_AcuTreatmentLastStartTime, %d15
	.loc 1 632 0
	movh.a	%a15, hi:ABSW_u32VSICounterCkreq
	.loc 1 628 0
	sub	%d2, %d15, %d2
	.loc 1 626 0
	st.w	[%a12] lo:MAIN_AcuTreatmentStartTime, %d15
	.loc 1 632 0
	ld.w	%d15, [%a15] lo:ABSW_u32VSICounterCkreq
	.loc 1 628 0
	movh.a	%a2, hi:MAIN_AcuTreatmentPeriodTime
	.loc 1 632 0
	add	%d15, 2
	.loc 1 628 0
	st.w	[%a2] lo:MAIN_AcuTreatmentPeriodTime, %d2
	.loc 1 632 0
	st.w	[%a15] lo:ABSW_u32VSICounterCkreq, %d15
	.loc 1 656 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U
.LVL14:
	movh.a	%a15, hi:AMAIN_u16VadcPhaseCurU
	st.h	[%a15] lo:AMAIN_u16VadcPhaseCurU, %d2
	.loc 1 657 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V
.LVL15:
	movh.a	%a15, hi:AMAIN_u16VadcPhaseCurV
	st.h	[%a15] lo:AMAIN_u16VadcPhaseCurV, %d2
	.loc 1 658 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W
.LVL16:
	movh.a	%a15, hi:AMAIN_u16VadcPhaseCurW
	st.h	[%a15] lo:AMAIN_u16VadcPhaseCurW, %d2
	.loc 1 660 0
	movh.a	%a15, hi:AMAIN_HARDBenchOnC
	ld.bu	%d15, [%a15] lo:AMAIN_HARDBenchOnC
	jnz	%d15, .L64
.L32:
	.loc 1 666 0
	movh.a	%a15, hi:AMAIN_bVSIStarted
	ld.bu	%d15, [%a15] lo:AMAIN_bVSIStarted
	jnz	%d15, .L65
.L34:
	.loc 1 728 0
	mov	%d4, 2
	call	DSM_u8GetUnitFaultLevel
.LVL17:
	.loc 1 730 0
	jge.u	%d2, 4, .L36
	.loc 1 731 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsUFlg
	ld.bu	%d15, [%a15] lo:AMAIN_bSoftOvCurrPhsUFlg
	jeq	%d15, 1, .L36
	.loc 1 732 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsVFlg
	ld.bu	%d15, [%a15] lo:AMAIN_bSoftOvCurrPhsVFlg
	jeq	%d15, 1, .L36
	.loc 1 733 0
	movh.a	%a15, hi:AMAIN_bSoftOvCurrPhsWFlg
	ld.bu	%d15, [%a15] lo:AMAIN_bSoftOvCurrPhsWFlg
	jeq	%d15, 1, .L36
	.loc 1 734 0
	movh.a	%a15, hi:AMAIN_bIgbtLowIsFlt
	ld.bu	%d15, [%a15] lo:AMAIN_bIgbtLowIsFlt
	jeq	%d15, 1, .L36
	.loc 1 735 0
	movh.a	%a15, hi:AMAIN_bIgbtHighIsFlt
	ld.bu	%d15, [%a15] lo:AMAIN_bIgbtHighIsFlt
	jeq	%d15, 1, .L36
	.loc 1 736 0
	movh.a	%a15, hi:AMAIN_bSoftOvBhvFlg
	ld.bu	%d15, [%a15] lo:AMAIN_bSoftOvBhvFlg
	movh.a	%a15, hi:AMAIN_u8StopCacheFreezeFrameCnt
	jne	%d15, 1, .L37
.L36:
.LBB30:
.LBB31:
	.loc 2 122 0
	mov	%d4, 0
.LBE31:
.LBE30:
	.loc 1 739 0
	movh.a	%a15, hi:AMAIN_u8StopCacheFreezeFrameCnt
	mov	%d15, -96
.LBB33:
.LBB32:
	.loc 2 122 0
	call	TPPCDev_vidAscEntry
.LVL18:
.LBE32:
.LBE33:
	.loc 1 739 0
	st.b	[%a15] lo:AMAIN_u8StopCacheFreezeFrameCnt, %d15
.L37:
	.loc 1 742 0
	ld.bu	%d15, [%a15] lo:AMAIN_u8StopCacheFreezeFrameCnt
	jz	%d15, .L38
	.loc 1 744 0
	ld.bu	%d15, [%a15] lo:AMAIN_u8StopCacheFreezeFrameCnt
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] lo:AMAIN_u8StopCacheFreezeFrameCnt, %d15
.L39:
	.loc 1 755 0
	ld.w	%d15, 0xf0001110
	movh.a	%a15, hi:AMAIN_EndTime
	st.w	[%a15] lo:AMAIN_EndTime, %d15
	.loc 1 757 0
	movh.a	%a15, hi:AMAIN_startTime
	ld.w	%d2, [%a15] lo:AMAIN_startTime
	jlt.u	%d15, %d2, .L40
	.loc 1 759 0
	sub	%d15, %d2
	movh.a	%a15, hi:AMAIN_TotalTime
	st.w	[%a15] lo:AMAIN_TotalTime, %d15
.L40:
	.loc 1 762 0
	ld.w	%d15, 0xf0001110
	movh.a	%a15, hi:MAIN_AcuTreatmentStopTime
	.loc 1 763 0
	ld.w	%d2, [%a12] lo:MAIN_AcuTreatmentStartTime
	.loc 1 762 0
	st.w	[%a15] lo:MAIN_AcuTreatmentStopTime, %d15
	.loc 1 763 0
	jlt.u	%d15, %d2, .L31
	.loc 1 765 0
	sub	%d15, %d2
	movh.a	%a15, hi:MAIN_AcuTreatmentTotalTime
	st.w	[%a15] lo:MAIN_AcuTreatmentTotalTime, %d15
.L31:
	ret
.L38:
	.loc 1 748 0
	st.b	[%a15] lo:AMAIN_u8StopCacheFreezeFrameCnt, %d15
	j	.L39
.L65:
.LBB34:
.LBB35:
.LBB36:
.LBB37:
	.loc 2 147 0
	mov	%d4, 0
	call	TPPCDev_bGetPwmRunFlag
.LVL19:
.LBE37:
.LBE36:
	.loc 1 781 0
	jz	%d2, .L34
	.loc 1 784 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL20:
	.loc 1 788 0
	jnz	%d2, .L34
	.loc 1 796 0
	mov	%d15, 1
	movh.a	%a15, hi:AMAIN_bIgbtLowIsFlt
	st.b	[%a15] lo:AMAIN_bIgbtLowIsFlt, %d15
	.loc 1 815 0
	movh.a	%a15, hi:AMAIN_bIgbtHighIsFlt
	st.b	[%a15] lo:AMAIN_bIgbtHighIsFlt, %d15
	j	.L34
.LVL21:
.L64:
.LBE35:
.LBE34:
.LBB38:
.LBB39:
	.loc 2 132 0
	movh.a	%a15, hi:AMAIN_f32PWMDutyUPhys
	ld.w	%d5, [%a15] lo:AMAIN_f32PWMDutyUPhys
.LBE39:
.LBE38:
	.loc 1 662 0
	movh.a	%a15, hi:AMAIN_f32PWMDutyVPhys
.LBB42:
.LBB40:
	.loc 2 132 0
	ld.w	%d6, [%a15] lo:AMAIN_f32PWMDutyVPhys
.LBE40:
.LBE42:
	.loc 1 662 0
	movh.a	%a15, hi:AMAIN_f32PWMDutyWPhys
.LBB43:
.LBB41:
	.loc 2 132 0
	ld.w	%d7, [%a15] lo:AMAIN_f32PWMDutyWPhys
	movh	%d15, 17096
	mul.f	%d5, %d15, %d5
	mul.f	%d6, %d15, %d6
	mul.f	%d7, %d15, %d7
	mov	%d4, 0
	call	TPPCDev_vidSetPwmBcDuty
.LVL22:
	j	.L32
.LBE41:
.LBE43:
.LFE33:
	.size	MAIN_vidAcuPwmTreatment, .-MAIN_vidAcuPwmTreatment
.section .text.AMAIN_bGetDiagAllowCondition,"ax",@progbits
	.align 1
	.global	AMAIN_bGetDiagAllowCondition
	.type	AMAIN_bGetDiagAllowCondition, @function
AMAIN_bGetDiagAllowCondition:
.LFB36:
	.loc 1 902 0
.LVL23:
.LBB44:
.LBB45:
	.loc 2 152 0
	mov	%d4, 0
	call	TPPCDev_u8GetPwmState
.LVL24:
.LBE45:
.LBE44:
	.loc 1 917 0
	ne	%d2, %d2, 1
.LVL25:
	ret
.LFE36:
	.size	AMAIN_bGetDiagAllowCondition, .-AMAIN_bGetDiagAllowCondition
.section .text.AMAIN_vidGetProgCondition,"ax",@progbits
	.align 1
	.global	AMAIN_vidGetProgCondition
	.type	AMAIN_vidGetProgCondition, @function
AMAIN_vidGetProgCondition:
.LFB37:
	.loc 1 920 0
	.loc 1 945 0
	mov	%d15, 1
	movh.a	%a15, hi:AMAIN_bProgConditionOk
	st.b	[%a15] lo:AMAIN_bProgConditionOk, %d15
	.loc 1 949 0
	mov	%d2, 1
	ret
.LFE37:
	.size	AMAIN_vidGetProgCondition, .-AMAIN_vidGetProgCondition
.section .text.AMAIN_bSpeedReadyMng,"ax",@progbits
	.align 1
	.global	AMAIN_bSpeedReadyMng
	.type	AMAIN_bSpeedReadyMng, @function
AMAIN_bSpeedReadyMng:
.LFB38:
	.loc 1 960 0
.LVL26:
	.loc 1 964 0
	mov	%d2, 0
	ret
.LFE38:
	.size	AMAIN_bSpeedReadyMng, .-AMAIN_bSpeedReadyMng
	.global	AMAIN_u8DEV_Fault
.section .bss.a4.AMAIN_u8DEV_Fault,"aw",@nobits
	.align 2
	.type	AMAIN_u8DEV_Fault, @object
	.size	AMAIN_u8DEV_Fault, 16
AMAIN_u8DEV_Fault:
	.zero	16
.section .bss.a4.AMAIN_TotalTime,"aw",@nobits
	.align 2
	.type	AMAIN_TotalTime, @object
	.size	AMAIN_TotalTime, 4
AMAIN_TotalTime:
	.zero	4
.section .bss.a4.AMAIN_EndTime,"aw",@nobits
	.align 2
	.type	AMAIN_EndTime, @object
	.size	AMAIN_EndTime, 4
AMAIN_EndTime:
	.zero	4
.section .bss.a4.AMAIN_startTime,"aw",@nobits
	.align 2
	.type	AMAIN_startTime, @object
	.size	AMAIN_startTime, 4
AMAIN_startTime:
	.zero	4
.section .bss.a2.AMAIN_u16VadcPhaseCurW,"aw",@nobits
	.align 1
	.type	AMAIN_u16VadcPhaseCurW, @object
	.size	AMAIN_u16VadcPhaseCurW, 2
AMAIN_u16VadcPhaseCurW:
	.zero	2
.section .bss.a2.AMAIN_u16VadcPhaseCurV,"aw",@nobits
	.align 1
	.type	AMAIN_u16VadcPhaseCurV, @object
	.size	AMAIN_u16VadcPhaseCurV, 2
AMAIN_u16VadcPhaseCurV:
	.zero	2
.section .bss.a2.AMAIN_u16VadcPhaseCurU,"aw",@nobits
	.align 1
	.type	AMAIN_u16VadcPhaseCurU, @object
	.size	AMAIN_u16VadcPhaseCurU, 2
AMAIN_u16VadcPhaseCurU:
	.zero	2
.section .bss.a2.AMAIN_u16Cnt200,"aw",@nobits
	.align 1
	.type	AMAIN_u16Cnt200, @object
	.size	AMAIN_u16Cnt200, 2
AMAIN_u16Cnt200:
	.zero	2
.section .bss.a2.AMAIN_u16Cnt100,"aw",@nobits
	.align 1
	.type	AMAIN_u16Cnt100, @object
	.size	AMAIN_u16Cnt100, 2
AMAIN_u16Cnt100:
	.zero	2
.section .bss.a2.AMAIN_u16Cnt10,"aw",@nobits
	.align 1
	.type	AMAIN_u16Cnt10, @object
	.size	AMAIN_u16Cnt10, 2
AMAIN_u16Cnt10:
	.zero	2
.section .bss.a2.AMAIN_u16Cnt5,"aw",@nobits
	.align 1
	.type	AMAIN_u16Cnt5, @object
	.size	AMAIN_u16Cnt5, 2
AMAIN_u16Cnt5:
	.zero	2
.section .bss.a2.AMAIN_u16Cnt2,"aw",@nobits
	.align 1
	.type	AMAIN_u16Cnt2, @object
	.size	AMAIN_u16Cnt2, 2
AMAIN_u16Cnt2:
	.zero	2
.section .bss.a2.AMAIN_u16Cnt1,"aw",@nobits
	.align 1
	.type	AMAIN_u16Cnt1, @object
	.size	AMAIN_u16Cnt1, 2
AMAIN_u16Cnt1:
	.zero	2
.section .bss.a4.AMAIN_f32PWMDutyWPhys,"aw",@nobits
	.align 2
	.type	AMAIN_f32PWMDutyWPhys, @object
	.size	AMAIN_f32PWMDutyWPhys, 4
AMAIN_f32PWMDutyWPhys:
	.zero	4
.section .bss.a4.AMAIN_f32PWMDutyVPhys,"aw",@nobits
	.align 2
	.type	AMAIN_f32PWMDutyVPhys, @object
	.size	AMAIN_f32PWMDutyVPhys, 4
AMAIN_f32PWMDutyVPhys:
	.zero	4
.section .bss.a4.AMAIN_f32PWMDutyUPhys,"aw",@nobits
	.align 2
	.type	AMAIN_f32PWMDutyUPhys, @object
	.size	AMAIN_f32PWMDutyUPhys, 4
AMAIN_f32PWMDutyUPhys:
	.zero	4
.section .bss.a1.AMAIN_bProgConditionOk,"aw",@nobits
	.type	AMAIN_bProgConditionOk, @object
	.size	AMAIN_bProgConditionOk, 1
AMAIN_bProgConditionOk:
	.zero	1
.section .bss.a1.AMAIN_ESMGo2StartupIEvent,"aw",@nobits
	.type	AMAIN_ESMGo2StartupIEvent, @object
	.size	AMAIN_ESMGo2StartupIEvent, 1
AMAIN_ESMGo2StartupIEvent:
	.zero	1
.section .bss.a1.AMAIN_bVSIStarted,"aw",@nobits
	.type	AMAIN_bVSIStarted, @object
	.size	AMAIN_bVSIStarted, 1
AMAIN_bVSIStarted:
	.zero	1
.section .bss.a1.AMAIN_bSoftOvCurrPhsWFlg,"aw",@nobits
	.type	AMAIN_bSoftOvCurrPhsWFlg, @object
	.size	AMAIN_bSoftOvCurrPhsWFlg, 1
AMAIN_bSoftOvCurrPhsWFlg:
	.zero	1
.section .bss.a1.AMAIN_bSoftOvCurrPhsVFlg,"aw",@nobits
	.type	AMAIN_bSoftOvCurrPhsVFlg, @object
	.size	AMAIN_bSoftOvCurrPhsVFlg, 1
AMAIN_bSoftOvCurrPhsVFlg:
	.zero	1
.section .bss.a1.AMAIN_bSoftOvCurrPhsUFlg,"aw",@nobits
	.type	AMAIN_bSoftOvCurrPhsUFlg, @object
	.size	AMAIN_bSoftOvCurrPhsUFlg, 1
AMAIN_bSoftOvCurrPhsUFlg:
	.zero	1
.section .bss.a1.AMAIN_bSoftOvBhvFlg,"aw",@nobits
	.type	AMAIN_bSoftOvBhvFlg, @object
	.size	AMAIN_bSoftOvBhvFlg, 1
AMAIN_bSoftOvBhvFlg:
	.zero	1
.section .bss.a1.AMAIN_bESMStarted,"aw",@nobits
	.type	AMAIN_bESMStarted, @object
	.size	AMAIN_bESMStarted, 1
AMAIN_bESMStarted:
	.zero	1
.section .bss.a1.AMAIN_bBswReadySts,"aw",@nobits
	.type	AMAIN_bBswReadySts, @object
	.size	AMAIN_bBswReadySts, 1
AMAIN_bBswReadySts:
	.zero	1
.section .bss.a1.AMAIN_bIgbtHighIsFlt,"aw",@nobits
	.type	AMAIN_bIgbtHighIsFlt, @object
	.size	AMAIN_bIgbtHighIsFlt, 1
AMAIN_bIgbtHighIsFlt:
	.zero	1
.section .bss.a1.AMAIN_bIgbtLowIsFlt,"aw",@nobits
	.type	AMAIN_bIgbtLowIsFlt, @object
	.size	AMAIN_bIgbtLowIsFlt, 1
AMAIN_bIgbtLowIsFlt:
	.zero	1
.section .bss.a1.AMAIN_u8IgbtHighFltCnt,"aw",@nobits
	.type	AMAIN_u8IgbtHighFltCnt, @object
	.size	AMAIN_u8IgbtHighFltCnt, 1
AMAIN_u8IgbtHighFltCnt:
	.zero	1
.section .bss.a1.AMAIN_u8IgbtLowFltCnt,"aw",@nobits
	.type	AMAIN_u8IgbtLowFltCnt, @object
	.size	AMAIN_u8IgbtLowFltCnt, 1
AMAIN_u8IgbtLowFltCnt:
	.zero	1
.section .bss.a4.MAIN_AcuTreatmentPeriodTime,"aw",@nobits
	.align 2
	.type	MAIN_AcuTreatmentPeriodTime, @object
	.size	MAIN_AcuTreatmentPeriodTime, 4
MAIN_AcuTreatmentPeriodTime:
	.zero	4
.section .bss.a4.MAIN_AcuTreatmentTotalTime,"aw",@nobits
	.align 2
	.type	MAIN_AcuTreatmentTotalTime, @object
	.size	MAIN_AcuTreatmentTotalTime, 4
MAIN_AcuTreatmentTotalTime:
	.zero	4
.section .bss.a4.MAIN_AcuTreatmentStopTime,"aw",@nobits
	.align 2
	.type	MAIN_AcuTreatmentStopTime, @object
	.size	MAIN_AcuTreatmentStopTime, 4
MAIN_AcuTreatmentStopTime:
	.zero	4
.section .bss.a4.MAIN_AcuTreatmentLastStartTime,"aw",@nobits
	.align 2
	.type	MAIN_AcuTreatmentLastStartTime, @object
	.size	MAIN_AcuTreatmentLastStartTime, 4
MAIN_AcuTreatmentLastStartTime:
	.zero	4
.section .bss.a4.MAIN_AcuTreatmentStartTime,"aw",@nobits
	.align 2
	.type	MAIN_AcuTreatmentStartTime, @object
	.size	MAIN_AcuTreatmentStartTime, 4
MAIN_AcuTreatmentStartTime:
	.zero	4
	.global	AMAIN_u8IgbtFltConfirmCntC
.section .rodata.Calib_8.AMAIN_u8IgbtFltConfirmCntC,"a",@progbits
	.type	AMAIN_u8IgbtFltConfirmCntC, @object
	.size	AMAIN_u8IgbtFltConfirmCntC, 1
AMAIN_u8IgbtFltConfirmCntC:
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
	.byte	0x4
	.uaword	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x18
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
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_ACM.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h"
	.file 7 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
	.file 13 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
	.file 14 "main\\AcuMain\\MAIN_AcuL.h"
	.file 15 ".\\output\\inc/..\\..\\main\\_MainModule\\AOCUErrProtect\\MAIN_ACMErrProtect.h"
	.file 16 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
	.file 17 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h"
	.file 18 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h"
	.file 19 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\aesmsrv.h"
	.file 20 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2e40
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\AcuMain\\MAIN_AcuTsk.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x68
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
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x266
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
	.uaword	0x1c5
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
	.byte	0xc
	.uaword	0x340
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_PDU"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x6
	.byte	0x26
	.uaword	0x34b
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x16
	.byte	0x4
	.byte	0xc
	.uaword	0x3e9
	.uleb128 0x8
	.string	"u8LocFaultCode"
	.byte	0x4
	.byte	0xe
	.uaword	0x5ab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"bFaultLv0"
	.byte	0x4
	.byte	0x11
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"bFaultLv1"
	.byte	0x4
	.byte	0x12
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"bFaultLv2"
	.byte	0x4
	.byte	0x13
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"bFaultLv3"
	.byte	0x4
	.byte	0x14
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x8
	.string	"bFaultLv4"
	.byte	0x4
	.byte	0x15
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"bFaultLv5"
	.byte	0x4
	.byte	0x16
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2e
	.uaword	0x5a0
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_00"
	.sleb128 0
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_01"
	.sleb128 1
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_02"
	.sleb128 2
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_03"
	.sleb128 3
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_04"
	.sleb128 4
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_05"
	.sleb128 5
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_06"
	.sleb128 6
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_07"
	.sleb128 7
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_08"
	.sleb128 8
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_09"
	.sleb128 9
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_10"
	.sleb128 10
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_11"
	.sleb128 11
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_12"
	.sleb128 12
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_13"
	.sleb128 13
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_14"
	.sleb128 14
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_15"
	.sleb128 15
	.uleb128 0x5
	.string	"MAIN_ECP_FAULT_CODE_MAX_NUM"
	.sleb128 16
	.byte	0
	.uleb128 0x9
	.uaword	0x5a5
	.uleb128 0xa
	.byte	0x4
	.uaword	0x340
	.uleb128 0xb
	.uaword	0x1b8
	.uaword	0x5bb
	.uleb128 0xc
	.uaword	0x5bb
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xd
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x7
	.byte	0x15
	.uaword	0x682
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0x1f
	.uaword	0x6fa
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x7
	.byte	0x27
	.uaword	0x937
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0xd
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x8
	.byte	0x2b
	.uaword	0x9ab
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
	.uleb128 0x3
	.string	"Ifx_UReg_8Bit"
	.byte	0x9
	.byte	0x60
	.uaword	0x1c5
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x9
	.byte	0x62
	.uaword	0x22d
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x9
	.byte	0x65
	.uaword	0x207
	.uleb128 0xe
	.string	"_Ifx_STM_ACCEN0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x44
	.uaword	0xc40
	.uleb128 0xf
	.string	"EN0"
	.byte	0xa
	.byte	0x46
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xa
	.byte	0x47
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xa
	.byte	0x48
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xa
	.byte	0x49
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xa
	.byte	0x4a
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xa
	.byte	0x4b
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xa
	.byte	0x4c
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xa
	.byte	0x4d
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xa
	.byte	0x4e
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xa
	.byte	0x4f
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xa
	.byte	0x50
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xa
	.byte	0x51
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xa
	.byte	0x52
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xa
	.byte	0x53
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xa
	.byte	0x54
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xa
	.byte	0x55
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN16"
	.byte	0xa
	.byte	0x56
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN17"
	.byte	0xa
	.byte	0x57
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN18"
	.byte	0xa
	.byte	0x58
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN19"
	.byte	0xa
	.byte	0x59
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN20"
	.byte	0xa
	.byte	0x5a
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN21"
	.byte	0xa
	.byte	0x5b
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN22"
	.byte	0xa
	.byte	0x5c
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN23"
	.byte	0xa
	.byte	0x5d
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN24"
	.byte	0xa
	.byte	0x5e
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN25"
	.byte	0xa
	.byte	0x5f
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN26"
	.byte	0xa
	.byte	0x60
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN27"
	.byte	0xa
	.byte	0x61
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN28"
	.byte	0xa
	.byte	0x62
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN29"
	.byte	0xa
	.byte	0x63
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN30"
	.byte	0xa
	.byte	0x64
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN31"
	.byte	0xa
	.byte	0x65
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0_Bits"
	.byte	0xa
	.byte	0x66
	.uaword	0x9ec
	.uleb128 0xe
	.string	"_Ifx_STM_ACCEN1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x69
	.uaword	0xc8a
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0x6b
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN1_Bits"
	.byte	0xa
	.byte	0x6c
	.uaword	0xc5b
	.uleb128 0xe
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6f
	.uaword	0xcd1
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0xa
	.byte	0x71
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0xa
	.byte	0x72
	.uaword	0xca5
	.uleb128 0xe
	.string	"_Ifx_STM_CAPSV_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x75
	.uaword	0xd17
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0xa
	.byte	0x77
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAPSV_Bits"
	.byte	0xa
	.byte	0x78
	.uaword	0xce9
	.uleb128 0xe
	.string	"_Ifx_STM_CLC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x7b
	.uaword	0xda4
	.uleb128 0xf
	.string	"DISR"
	.byte	0xa
	.byte	0x7d
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DISS"
	.byte	0xa
	.byte	0x7e
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0xa
	.byte	0x7f
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EDIS"
	.byte	0xa
	.byte	0x80
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0xa
	.byte	0x81
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CLC_Bits"
	.byte	0xa
	.byte	0x82
	.uaword	0xd31
	.uleb128 0xe
	.string	"_Ifx_STM_CMCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x85
	.uaword	0xe8e
	.uleb128 0xf
	.string	"MSIZE0"
	.byte	0xa
	.byte	0x87
	.uaword	0x9c0
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_5"
	.byte	0xa
	.byte	0x88
	.uaword	0x9c0
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MSTART0"
	.byte	0xa
	.byte	0x89
	.uaword	0x9c0
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_13"
	.byte	0xa
	.byte	0x8a
	.uaword	0x9c0
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MSIZE1"
	.byte	0xa
	.byte	0x8b
	.uaword	0x9c0
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_21"
	.byte	0xa
	.byte	0x8c
	.uaword	0x9c0
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MSTART1"
	.byte	0xa
	.byte	0x8d
	.uaword	0x9c0
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_29"
	.byte	0xa
	.byte	0x8e
	.uaword	0x9c0
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMCON_Bits"
	.byte	0xa
	.byte	0x8f
	.uaword	0xdbc
	.uleb128 0xe
	.string	"_Ifx_STM_CMP_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x92
	.uaword	0xed7
	.uleb128 0xf
	.string	"CMPVAL"
	.byte	0xa
	.byte	0x94
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMP_Bits"
	.byte	0xa
	.byte	0x95
	.uaword	0xea8
	.uleb128 0xe
	.string	"_Ifx_STM_ICR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x98
	.uaword	0xfab
	.uleb128 0xf
	.string	"CMP0EN"
	.byte	0xa
	.byte	0x9a
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP0IR"
	.byte	0xa
	.byte	0x9b
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP0OS"
	.byte	0xa
	.byte	0x9c
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0xa
	.byte	0x9d
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP1EN"
	.byte	0xa
	.byte	0x9e
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP1IR"
	.byte	0xa
	.byte	0x9f
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP1OS"
	.byte	0xa
	.byte	0xa0
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_7"
	.byte	0xa
	.byte	0xa1
	.uaword	0x9c0
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ICR_Bits"
	.byte	0xa
	.byte	0xa2
	.uaword	0xeef
	.uleb128 0xe
	.string	"_Ifx_STM_ID_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa5
	.uaword	0x101a
	.uleb128 0xf
	.string	"MODREV"
	.byte	0xa
	.byte	0xa7
	.uaword	0x9c0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0xa
	.byte	0xa8
	.uaword	0x9c0
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODNUM"
	.byte	0xa
	.byte	0xa9
	.uaword	0x9c0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ID_Bits"
	.byte	0xa
	.byte	0xaa
	.uaword	0xfc3
	.uleb128 0xe
	.string	"_Ifx_STM_ISCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xad
	.uaword	0x10b2
	.uleb128 0xf
	.string	"CMP0IRR"
	.byte	0xa
	.byte	0xaf
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP0IRS"
	.byte	0xa
	.byte	0xb0
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP1IRR"
	.byte	0xa
	.byte	0xb1
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CMP1IRS"
	.byte	0xa
	.byte	0xb2
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0xa
	.byte	0xb3
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ISCR_Bits"
	.byte	0xa
	.byte	0xb4
	.uaword	0x1031
	.uleb128 0xe
	.string	"_Ifx_STM_KRST0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb7
	.uaword	0x111f
	.uleb128 0xf
	.string	"RST"
	.byte	0xa
	.byte	0xb9
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0xa
	.byte	0xba
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0xa
	.byte	0xbb
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST0_Bits"
	.byte	0xa
	.byte	0xbc
	.uaword	0x10cb
	.uleb128 0xe
	.string	"_Ifx_STM_KRST1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xbf
	.uaword	0x1178
	.uleb128 0xf
	.string	"RST"
	.byte	0xa
	.byte	0xc1
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0xa
	.byte	0xc2
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST1_Bits"
	.byte	0xa
	.byte	0xc3
	.uaword	0x1139
	.uleb128 0xe
	.string	"_Ifx_STM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc6
	.uaword	0x11d3
	.uleb128 0xf
	.string	"CLR"
	.byte	0xa
	.byte	0xc8
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0xa
	.byte	0xc9
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRSTCLR_Bits"
	.byte	0xa
	.byte	0xca
	.uaword	0x1192
	.uleb128 0xe
	.string	"_Ifx_STM_OCS_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xcd
	.uaword	0x127d
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0xcf
	.uaword	0x9c0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0xa
	.byte	0xd0
	.uaword	0x9c0
	.byte	0x4
	.byte	0x15
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SUS"
	.byte	0xa
	.byte	0xd1
	.uaword	0x9c0
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SUS_P"
	.byte	0xa
	.byte	0xd2
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SUSSTA"
	.byte	0xa
	.byte	0xd3
	.uaword	0x9c0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_30"
	.byte	0xa
	.byte	0xd4
	.uaword	0x9c0
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_OCS_Bits"
	.byte	0xa
	.byte	0xd5
	.uaword	0x11ef
	.uleb128 0xe
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd8
	.uaword	0x12c2
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0xa
	.byte	0xda
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xa
	.byte	0xdb
	.uaword	0x1295
	.uleb128 0xe
	.string	"_Ifx_STM_TIM0SV_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xde
	.uaword	0x130a
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0xa
	.byte	0xe0
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0SV_Bits"
	.byte	0xa
	.byte	0xe1
	.uaword	0x12db
	.uleb128 0xe
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xe4
	.uaword	0x1357
	.uleb128 0xf
	.string	"STM_35_4"
	.byte	0xa
	.byte	0xe6
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0xa
	.byte	0xe7
	.uaword	0x1325
	.uleb128 0xe
	.string	"_Ifx_STM_TIM2_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xea
	.uaword	0x13a2
	.uleb128 0xf
	.string	"STM_39_8"
	.byte	0xa
	.byte	0xec
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM2_Bits"
	.byte	0xa
	.byte	0xed
	.uaword	0x1370
	.uleb128 0xe
	.string	"_Ifx_STM_TIM3_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xf0
	.uaword	0x13ee
	.uleb128 0xf
	.string	"STM_43_12"
	.byte	0xa
	.byte	0xf2
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM3_Bits"
	.byte	0xa
	.byte	0xf3
	.uaword	0x13bb
	.uleb128 0xe
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xf6
	.uaword	0x143a
	.uleb128 0xf
	.string	"STM_47_16"
	.byte	0xa
	.byte	0xf8
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0xa
	.byte	0xf9
	.uaword	0x1407
	.uleb128 0xe
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xfc
	.uaword	0x1486
	.uleb128 0xf
	.string	"STM_51_20"
	.byte	0xa
	.byte	0xfe
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0xa
	.byte	0xff
	.uaword	0x1453
	.uleb128 0x11
	.string	"_Ifx_STM_TIM6_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x102
	.uaword	0x14d4
	.uleb128 0x12
	.string	"STM_63_32"
	.byte	0xa
	.uahalf	0x104
	.uaword	0x9c0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM6_Bits"
	.byte	0xa
	.uahalf	0x105
	.uaword	0x149f
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x10d
	.uaword	0x1516
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x111
	.uaword	0xc40
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_ACCEN0"
	.byte	0xa
	.uahalf	0x112
	.uaword	0x14ee
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x115
	.uaword	0x1555
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x117
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x118
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x119
	.uaword	0xc8a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_ACCEN1"
	.byte	0xa
	.uahalf	0x11a
	.uaword	0x152d
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x11d
	.uaword	0x1594
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x11f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x120
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x121
	.uaword	0xcd1
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_CAP"
	.byte	0xa
	.uahalf	0x122
	.uaword	0x156c
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x125
	.uaword	0x15d0
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x127
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x129
	.uaword	0xd17
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_CAPSV"
	.byte	0xa
	.uahalf	0x12a
	.uaword	0x15a8
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x12d
	.uaword	0x160e
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x12f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x131
	.uaword	0xda4
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_CLC"
	.byte	0xa
	.uahalf	0x132
	.uaword	0x15e6
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x135
	.uaword	0x164a
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x139
	.uaword	0xe8e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_CMCON"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0x1622
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x1688
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x140
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x141
	.uaword	0xed7
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_CMP"
	.byte	0xa
	.uahalf	0x142
	.uaword	0x1660
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x145
	.uaword	0x16c4
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x149
	.uaword	0xfab
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_ICR"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0x169c
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x14d
	.uaword	0x1700
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x14f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x150
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x151
	.uaword	0x101a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_ID"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x16d8
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x155
	.uaword	0x173b
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x158
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x159
	.uaword	0x10b2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_ISCR"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x1713
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x15d
	.uaword	0x1778
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x161
	.uaword	0x111f
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_KRST0"
	.byte	0xa
	.uahalf	0x162
	.uaword	0x1750
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x165
	.uaword	0x17b6
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x167
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x168
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x169
	.uaword	0x1178
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_KRST1"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x178e
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x16d
	.uaword	0x17f4
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x170
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x171
	.uaword	0x11d3
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_KRSTCLR"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x17cc
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x175
	.uaword	0x1834
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x177
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x179
	.uaword	0x127d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_OCS"
	.byte	0xa
	.uahalf	0x17a
	.uaword	0x180c
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x1870
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x181
	.uaword	0x12c2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM0"
	.byte	0xa
	.uahalf	0x182
	.uaword	0x1848
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x185
	.uaword	0x18ad
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x187
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x188
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x189
	.uaword	0x130a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM0SV"
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x1885
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x18ec
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x18f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x190
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x191
	.uaword	0x1357
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM1"
	.byte	0xa
	.uahalf	0x192
	.uaword	0x18c4
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x195
	.uaword	0x1929
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x197
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x199
	.uaword	0x13a2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM2"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0x1901
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x19d
	.uaword	0x1966
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x1a0
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0x13ee
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM3"
	.byte	0xa
	.uahalf	0x1a2
	.uaword	0x193e
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x1a5
	.uaword	0x19a3
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x1a8
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x1a9
	.uaword	0x143a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM4"
	.byte	0xa
	.uahalf	0x1aa
	.uaword	0x197b
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x19e0
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x1b0
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x1b1
	.uaword	0x1486
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM5"
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x19b8
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x1a1d
	.uleb128 0x15
	.string	"U"
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x9c0
	.uleb128 0x15
	.string	"I"
	.byte	0xa
	.uahalf	0x1b8
	.uaword	0x9d6
	.uleb128 0x15
	.string	"B"
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x14d4
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM_TIM6"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0x19f5
	.uleb128 0x16
	.string	"_Ifx_STM"
	.uahalf	0x100
	.byte	0xa
	.uahalf	0x1c6
	.uaword	0x1c05
	.uleb128 0x17
	.string	"CLC"
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0x160e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x1c9
	.uaword	0x1c05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0xa
	.uahalf	0x1ca
	.uaword	0x1700
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"reserved_C"
	.byte	0xa
	.uahalf	0x1cb
	.uaword	0x1c05
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"TIM0"
	.byte	0xa
	.uahalf	0x1cc
	.uaword	0x1870
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"TIM1"
	.byte	0xa
	.uahalf	0x1cd
	.uaword	0x18ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"TIM2"
	.byte	0xa
	.uahalf	0x1ce
	.uaword	0x1929
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"TIM3"
	.byte	0xa
	.uahalf	0x1cf
	.uaword	0x1966
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"TIM4"
	.byte	0xa
	.uahalf	0x1d0
	.uaword	0x19a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"TIM5"
	.byte	0xa
	.uahalf	0x1d1
	.uaword	0x19e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.string	"TIM6"
	.byte	0xa
	.uahalf	0x1d2
	.uaword	0x1a1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"CAP"
	.byte	0xa
	.uahalf	0x1d3
	.uaword	0x1594
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.string	"CMP"
	.byte	0xa
	.uahalf	0x1d4
	.uaword	0x1c15
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.string	"CMCON"
	.byte	0xa
	.uahalf	0x1d5
	.uaword	0x164a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.string	"ICR"
	.byte	0xa
	.uahalf	0x1d6
	.uaword	0x16c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.string	"ISCR"
	.byte	0xa
	.uahalf	0x1d7
	.uaword	0x173b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.string	"reserved_44"
	.byte	0xa
	.uahalf	0x1d8
	.uaword	0x1c25
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x17
	.string	"TIM0SV"
	.byte	0xa
	.uahalf	0x1d9
	.uaword	0x18ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.string	"CAPSV"
	.byte	0xa
	.uahalf	0x1da
	.uaword	0x15d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.string	"reserved_58"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0x1c35
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.string	"OCS"
	.byte	0xa
	.uahalf	0x1dc
	.uaword	0x1834
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x17
	.string	"KRSTCLR"
	.byte	0xa
	.uahalf	0x1dd
	.uaword	0x17f4
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x17
	.string	"KRST1"
	.byte	0xa
	.uahalf	0x1de
	.uaword	0x17b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x17
	.string	"KRST0"
	.byte	0xa
	.uahalf	0x1df
	.uaword	0x1778
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0xa
	.uahalf	0x1e0
	.uaword	0x1555
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0xa
	.uahalf	0x1e1
	.uaword	0x1516
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0xb
	.uaword	0x9ab
	.uaword	0x1c15
	.uleb128 0xc
	.uaword	0x5bb
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x1688
	.uaword	0x1c25
	.uleb128 0xc
	.uaword	0x5bb
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x9ab
	.uaword	0x1c35
	.uleb128 0xc
	.uaword	0x5bb
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.uaword	0x9ab
	.uaword	0x1c45
	.uleb128 0xc
	.uaword	0x5bb
	.byte	0x8f
	.byte	0
	.uleb128 0x13
	.string	"Ifx_STM"
	.byte	0xa
	.uahalf	0x1e2
	.uaword	0x1c55
	.uleb128 0x19
	.uaword	0x1a32
	.uleb128 0x4
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.uaword	0x1dac
	.uleb128 0x5
	.string	"ePMux_DIOInputMux1"
	.sleb128 0
	.uleb128 0x5
	.string	"ePMux_DIOInputMux2"
	.sleb128 1
	.uleb128 0x5
	.string	"ePMux_DIOInputMux3"
	.sleb128 2
	.uleb128 0x5
	.string	"ePMUX_ANInputMux1"
	.sleb128 3
	.uleb128 0x5
	.string	"ePMUX_ANInputMux2"
	.sleb128 4
	.uleb128 0x5
	.string	"ePMUX_ANInputMux3"
	.sleb128 5
	.uleb128 0x5
	.string	"ePMUX_ANInputMux4"
	.sleb128 6
	.uleb128 0x5
	.string	"ePMUX_ANInputMux5"
	.sleb128 7
	.uleb128 0x5
	.string	"ePMUX_ANInputMux6"
	.sleb128 8
	.uleb128 0x5
	.string	"ePMUX_ANInputMux7"
	.sleb128 9
	.uleb128 0x5
	.string	"ePMUX_ANInputMux8"
	.sleb128 10
	.uleb128 0x5
	.string	"ePMUX_ANInputMux9"
	.sleb128 11
	.uleb128 0x5
	.string	"ePMUX_ANInputMux10"
	.sleb128 12
	.uleb128 0x5
	.string	"ePMUX_ANInputMux11"
	.sleb128 13
	.uleb128 0x5
	.string	"ePMUX_ANInputMux12"
	.sleb128 14
	.uleb128 0x5
	.string	"ePMUX_InputMuxMaxNum"
	.sleb128 15
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0xc
	.byte	0x24
	.uaword	0x1e33
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
	.uleb128 0x1a
	.string	"CDD_TPPC_bGetACMPwmRunFlag"
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.uaword	0x279
	.byte	0x3
	.uleb128 0x1b
	.string	"CDD_TPPC_vidACMMotorStateMng"
	.byte	0x2
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"CDD_TPPC_vidSetACMPwmDuty"
	.byte	0x2
	.byte	0x82
	.byte	0x1
	.byte	0x3
	.uaword	0x1ecd
	.uleb128 0x1d
	.string	"f32DutyU"
	.byte	0x2
	.byte	0x82
	.uaword	0x257
	.uleb128 0x1d
	.string	"f32DutyV"
	.byte	0x2
	.byte	0x82
	.uaword	0x257
	.uleb128 0x1d
	.string	"f32DutyW"
	.byte	0x2
	.byte	0x82
	.uaword	0x257
	.byte	0
	.uleb128 0x1b
	.string	"CDD_TPPC_vidACMSoftTrapTrigger"
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"CDD_TPPC_bGetACMPwmState"
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.uaword	0x279
	.byte	0x3
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_bGetAcuSoftOvcFlag_U"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_bGetAcuSoftOvcFlag_V"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_bGetAcuSoftOvcFlag_W"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_bGetAcuSoftOvBhvFlag"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_bGetAcuIgbtLSFaultFlag"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_bGetAcuIgbtHSFaultFlag"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"MAIN_vidClrAcuFaultFlag"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x206f
	.uleb128 0x20
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x2b1e
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"MAIN_AcuTaskInit"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"MAIN_vidAcuTask1ms"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2106
	.uleb128 0x24
	.byte	0x1
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x111
	.uaword	0x207
	.byte	0x1
	.uaword	0x20ce
	.uleb128 0x25
	.byte	0
	.uleb128 0x26
	.uaword	0x1e57
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x20f2
	.uleb128 0x27
	.uaword	.LVL1
	.uaword	0x2b49
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL2
	.uaword	0x2b72
	.uleb128 0x29
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x2b86
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"MAIN_vidAcuTask2ms"
	.byte	0x1
	.uahalf	0x154
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x216e
	.uleb128 0x29
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x2ba7
	.uleb128 0x2a
	.uaword	.LVL5
	.uaword	0x2bc0
	.uaword	0x2151
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x29
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x2ba7
	.uleb128 0x28
	.uaword	.LVL7
	.uaword	0x2bea
	.uleb128 0x28
	.uaword	.LVL8
	.uaword	0x2bea
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"MAIN_vidAcuTask5ms"
	.byte	0x1
	.uahalf	0x1a4
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x2c
	.string	"MAIN_vidFaultHandler"
	.byte	0x1
	.uahalf	0x376
	.byte	0x1
	.byte	0x1
	.uaword	0x21d8
	.uleb128 0x2d
	.string	"u8Index"
	.byte	0x1
	.uahalf	0x378
	.uaword	0x1b8
	.uleb128 0x2d
	.string	"tLocECPParam"
	.byte	0x1
	.uahalf	0x379
	.uaword	0x34b
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"MAIN_vidAcuTask10ms"
	.byte	0x1
	.uahalf	0x1b1
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x2266
	.uleb128 0x26
	.uaword	0x2193
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1de
	.uaword	0x225c
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x30
	.uaword	0x21b2
	.uaword	.LLST1
	.uleb128 0x31
	.uaword	0x21c2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.uaword	.LVL11
	.uaword	0x2c08
	.uaword	0x2240
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x27
	.uaword	.LVL12
	.uaword	0x2c2f
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x46
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL9
	.uaword	0x2c62
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"MAIN_vidAcuTask100ms"
	.byte	0x1
	.uahalf	0x1e9
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"MAIN_vidAcuTask200ms"
	.byte	0x1
	.uahalf	0x241
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x22c2
	.uleb128 0x28
	.uaword	.LVL13
	.uaword	0x2c80
	.byte	0
	.uleb128 0x2c
	.string	"MAIN_vidCheckIGBT"
	.byte	0x1
	.uahalf	0x306
	.byte	0x1
	.byte	0x3
	.uaword	0x2341
	.uleb128 0x2d
	.string	"bLocPwmOnFlg"
	.byte	0x1
	.uahalf	0x308
	.uaword	0x279
	.uleb128 0x2d
	.string	"bLocIgbtLowFltPinLev"
	.byte	0x1
	.uahalf	0x309
	.uaword	0x279
	.uleb128 0x2d
	.string	"bLocIgbtHigFltPinLev"
	.byte	0x1
	.uahalf	0x30a
	.uaword	0x279
	.uleb128 0x2d
	.string	"u16TempVal"
	.byte	0x1
	.uahalf	0x30b
	.uaword	0x1e3
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"MAIN_vidAcuPwmTreatment"
	.byte	0x1
	.uahalf	0x270
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2486
	.uleb128 0x32
	.string	"u8LocAFaultLevel"
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x1b8
	.uaword	.LLST2
	.uleb128 0x26
	.uaword	0x1ecd
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x23b0
	.uleb128 0x27
	.uaword	.LVL18
	.uaword	0x2c99
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x22c2
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0x241c
	.uleb128 0x34
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x35
	.uaword	0x22de
	.uleb128 0x30
	.uaword	0x22f3
	.uaword	.LLST3
	.uleb128 0x30
	.uaword	0x2310
	.uaword	.LLST3
	.uleb128 0x30
	.uaword	0x232d
	.uaword	.LLST5
	.uleb128 0x33
	.uaword	0x1e33
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x308
	.uaword	0x2411
	.uleb128 0x27
	.uaword	.LVL19
	.uaword	0x2cbd
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL20
	.uaword	0x2ce8
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x1e79
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x296
	.uaword	0x245b
	.uleb128 0x36
	.uaword	0x1ebc
	.uaword	.LLST6
	.uleb128 0x36
	.uaword	0x1eac
	.uaword	.LLST7
	.uleb128 0x36
	.uaword	0x1e9c
	.uaword	.LLST8
	.uleb128 0x27
	.uaword	.LVL22
	.uaword	0x2d1b
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL14
	.uaword	0x2d52
	.uleb128 0x28
	.uaword	.LVL15
	.uaword	0x2d87
	.uleb128 0x28
	.uaword	.LVL16
	.uaword	0x2dbc
	.uleb128 0x27
	.uaword	.LVL17
	.uaword	0x2df1
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"AMAIN_bGetDiagAllowCondition"
	.byte	0x1
	.uahalf	0x385
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x250a
	.uleb128 0x32
	.string	"bLocRet"
	.byte	0x1
	.uahalf	0x387
	.uaword	0x279
	.uaword	.LLST9
	.uleb128 0x32
	.string	"u8LocPwmSts"
	.byte	0x1
	.uahalf	0x388
	.uaword	0x1b8
	.uaword	.LLST10
	.uleb128 0x38
	.uaword	0x1ef1
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x38a
	.uleb128 0x27
	.uaword	.LVL24
	.uaword	0x2e1d
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"AMAIN_vidGetProgCondition"
	.byte	0x1
	.uahalf	0x397
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"AMAIN_bSpeedReadyMng"
	.byte	0x1
	.uahalf	0x3bf
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2582
	.uleb128 0x3a
	.string	"bLocSpeedReady"
	.byte	0x1
	.uahalf	0x3c1
	.uaword	0x279
	.byte	0
	.byte	0
	.uleb128 0x3b
	.string	"MAIN_AcuTreatmentStartTime"
	.byte	0x1
	.byte	0x5b
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_AcuTreatmentStartTime
	.uleb128 0x3b
	.string	"MAIN_AcuTreatmentLastStartTime"
	.byte	0x1
	.byte	0x5c
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_AcuTreatmentLastStartTime
	.uleb128 0x3b
	.string	"MAIN_AcuTreatmentStopTime"
	.byte	0x1
	.byte	0x5d
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_AcuTreatmentStopTime
	.uleb128 0x3b
	.string	"MAIN_AcuTreatmentTotalTime"
	.byte	0x1
	.byte	0x5e
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_AcuTreatmentTotalTime
	.uleb128 0x3b
	.string	"MAIN_AcuTreatmentPeriodTime"
	.byte	0x1
	.byte	0x5f
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_AcuTreatmentPeriodTime
	.uleb128 0x3b
	.string	"AMAIN_u8IgbtLowFltCnt"
	.byte	0x1
	.byte	0x6e
	.uaword	0x1b8
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u8IgbtLowFltCnt
	.uleb128 0x3b
	.string	"AMAIN_u8IgbtHighFltCnt"
	.byte	0x1
	.byte	0x6f
	.uaword	0x1b8
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u8IgbtHighFltCnt
	.uleb128 0x3b
	.string	"AMAIN_bIgbtLowIsFlt"
	.byte	0x1
	.byte	0x70
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bIgbtLowIsFlt
	.uleb128 0x3b
	.string	"AMAIN_bIgbtHighIsFlt"
	.byte	0x1
	.byte	0x71
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bIgbtHighIsFlt
	.uleb128 0x3b
	.string	"AMAIN_bBswReadySts"
	.byte	0x1
	.byte	0x72
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bBswReadySts
	.uleb128 0x3b
	.string	"AMAIN_bESMStarted"
	.byte	0x1
	.byte	0x73
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bESMStarted
	.uleb128 0x3b
	.string	"AMAIN_bSoftOvBhvFlg"
	.byte	0x1
	.byte	0x74
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bSoftOvBhvFlg
	.uleb128 0x3b
	.string	"AMAIN_bSoftOvCurrPhsUFlg"
	.byte	0x1
	.byte	0x75
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bSoftOvCurrPhsUFlg
	.uleb128 0x3b
	.string	"AMAIN_bSoftOvCurrPhsVFlg"
	.byte	0x1
	.byte	0x76
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bSoftOvCurrPhsVFlg
	.uleb128 0x3b
	.string	"AMAIN_bSoftOvCurrPhsWFlg"
	.byte	0x1
	.byte	0x77
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bSoftOvCurrPhsWFlg
	.uleb128 0x3b
	.string	"AMAIN_bVSIStarted"
	.byte	0x1
	.byte	0x78
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bVSIStarted
	.uleb128 0x3b
	.string	"AMAIN_ESMGo2StartupIEvent"
	.byte	0x1
	.byte	0x79
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_ESMGo2StartupIEvent
	.uleb128 0x3b
	.string	"AMAIN_bProgConditionOk"
	.byte	0x1
	.byte	0x7a
	.uaword	0x279
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_bProgConditionOk
	.uleb128 0x3b
	.string	"AMAIN_f32PWMDutyUPhys"
	.byte	0x1
	.byte	0x7b
	.uaword	0x257
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_f32PWMDutyUPhys
	.uleb128 0x3b
	.string	"AMAIN_f32PWMDutyVPhys"
	.byte	0x1
	.byte	0x7c
	.uaword	0x257
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_f32PWMDutyVPhys
	.uleb128 0x3b
	.string	"AMAIN_f32PWMDutyWPhys"
	.byte	0x1
	.byte	0x7d
	.uaword	0x257
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_f32PWMDutyWPhys
	.uleb128 0x3b
	.string	"AMAIN_u16Cnt1"
	.byte	0x1
	.byte	0x7e
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16Cnt1
	.uleb128 0x3b
	.string	"AMAIN_u16Cnt2"
	.byte	0x1
	.byte	0x7f
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16Cnt2
	.uleb128 0x3b
	.string	"AMAIN_u16Cnt5"
	.byte	0x1
	.byte	0x80
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16Cnt5
	.uleb128 0x3b
	.string	"AMAIN_u16Cnt10"
	.byte	0x1
	.byte	0x81
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16Cnt10
	.uleb128 0x3b
	.string	"AMAIN_u16Cnt100"
	.byte	0x1
	.byte	0x82
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16Cnt100
	.uleb128 0x3b
	.string	"AMAIN_u16Cnt200"
	.byte	0x1
	.byte	0x83
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16Cnt200
	.uleb128 0x3b
	.string	"AMAIN_u16VadcPhaseCurU"
	.byte	0x1
	.byte	0x84
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16VadcPhaseCurU
	.uleb128 0x3b
	.string	"AMAIN_u16VadcPhaseCurV"
	.byte	0x1
	.byte	0x85
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16VadcPhaseCurV
	.uleb128 0x3b
	.string	"AMAIN_u16VadcPhaseCurW"
	.byte	0x1
	.byte	0x86
	.uaword	0x1e3
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16VadcPhaseCurW
	.uleb128 0x3b
	.string	"AMAIN_startTime"
	.byte	0x1
	.byte	0x87
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_startTime
	.uleb128 0x3b
	.string	"AMAIN_EndTime"
	.byte	0x1
	.byte	0x88
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_EndTime
	.uleb128 0x3b
	.string	"AMAIN_TotalTime"
	.byte	0x1
	.byte	0x89
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_TotalTime
	.uleb128 0x3c
	.string	"ABSW_u32VSICounterCkreq"
	.byte	0xd
	.byte	0x4d
	.uaword	0x21f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"AMAIN_HARDBenchOnC"
	.byte	0xe
	.byte	0x37
	.uaword	0x2a22
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x279
	.uleb128 0x3c
	.string	"AMAIN_VSIBenchOnWriteDataC"
	.byte	0xe
	.byte	0x38
	.uaword	0x2a22
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"AMAIN_u32VSICntCkreqESMStartedC"
	.byte	0xe
	.byte	0x41
	.uaword	0x2a74
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x21f
	.uleb128 0x3c
	.string	"AMAIN_u32VSICntCkreqVSIStartedC"
	.byte	0xe
	.byte	0x42
	.uaword	0x2a74
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"AMAIN_u8IgbtFltConfirmCntC"
	.byte	0xe
	.byte	0x49
	.uaword	0x2acb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u8IgbtFltConfirmCntC
	.uleb128 0x9
	.uaword	0x1b8
	.uleb128 0x3c
	.string	"AMAIN_u8StopCacheFreezeFrameCnt"
	.byte	0xe
	.byte	0x57
	.uaword	0x2af9
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x1b8
	.uleb128 0x3d
	.string	"AMAIN_u8DEV_Fault"
	.byte	0x1
	.byte	0x8b
	.uaword	0x5ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u8DEV_Fault
	.uleb128 0x3e
	.byte	0x1
	.string	"MAIN_bSetACMASCEnableState"
	.byte	0xf
	.byte	0x24
	.byte	0x1
	.byte	0x1
	.uaword	0x2b49
	.uleb128 0x3f
	.uaword	0x279
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"TPPCDev_vidMotorStateMng"
	.byte	0x10
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0x2b72
	.uleb128 0x3f
	.uaword	0x2acb
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x111
	.uaword	0x207
	.byte	0x1
	.uaword	0x2b86
	.uleb128 0x25
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"AFAIL_vidFailDetection_1ms"
	.byte	0x11
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.byte	0x1
	.string	"AESM_vidOnAESM_EV0"
	.byte	0x12
	.byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"AESMSRV_vidSetCmdReq"
	.byte	0x13
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uaword	0x2bea
	.uleb128 0x3f
	.uaword	0x1e3
	.uleb128 0x3f
	.uaword	0x279
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"FAIL_vidInitVSICounters"
	.byte	0x11
	.byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"MAIN_REC_vidClrErrCode"
	.byte	0x5
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.uaword	0x2c2f
	.uleb128 0x3f
	.uaword	0x2acb
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"MAIN_ECP_vidPollingFault"
	.byte	0x6
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0x2c62
	.uleb128 0x3f
	.uaword	0x2acb
	.uleb128 0x3f
	.uaword	0x5a0
	.uleb128 0x3f
	.uaword	0x2a74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"BSW_bGetBswReadySts"
	.byte	0xd
	.byte	0x73
	.byte	0x1
	.uaword	0x279
	.byte	0x1
	.uleb128 0x40
	.byte	0x1
	.string	"AESM_vidOnAESM_EV1"
	.byte	0x12
	.byte	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"TPPCDev_vidAscEntry"
	.byte	0x10
	.byte	0x3e
	.byte	0x1
	.byte	0x1
	.uaword	0x2cbd
	.uleb128 0x3f
	.uaword	0x2acb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"TPPCDev_bGetPwmRunFlag"
	.byte	0x10
	.byte	0x48
	.byte	0x1
	.uaword	0x279
	.byte	0x1
	.uaword	0x2ce8
	.uleb128 0x3f
	.uaword	0x2acb
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N"
	.byte	0x14
	.byte	0x62
	.byte	0x1
	.uaword	0x1e3
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"TPPCDev_vidSetPwmBcDuty"
	.byte	0x10
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x2d52
	.uleb128 0x3f
	.uaword	0x2acb
	.uleb128 0x3f
	.uaword	0x257
	.uleb128 0x3f
	.uaword	0x257
	.uleb128 0x3f
	.uaword	0x257
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U"
	.byte	0x14
	.byte	0xb7
	.byte	0x1
	.uaword	0x1e3
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V"
	.byte	0x14
	.byte	0xb8
	.byte	0x1
	.uaword	0x1e3
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W"
	.byte	0x14
	.byte	0xbb
	.byte	0x1
	.uaword	0x1e3
	.byte	0x1
	.uleb128 0x42
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0x8
	.byte	0x5f
	.byte	0x1
	.uaword	0x1b8
	.byte	0x1
	.uaword	0x2e1d
	.uleb128 0x3f
	.uaword	0x1b8
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"TPPCDev_u8GetPwmState"
	.byte	0x10
	.byte	0x47
	.byte	0x1
	.uaword	0x1b8
	.byte	0x1
	.uleb128 0x3f
	.uaword	0x2acb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LFB30
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE30
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
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
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x5
	.byte	0x3
	.uaword	AMAIN_f32PWMDutyWPhys
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x5
	.byte	0x3
	.uaword	AMAIN_f32PWMDutyVPhys
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x5
	.byte	0x3
	.uaword	AMAIN_f32PWMDutyUPhys
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xa4
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
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
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
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"reserved_4"
.LASF1:
	.string	"reserved_0"
.LASF6:
	.string	"reserved_1"
.LASF3:
	.string	"reserved_2"
.LASF5:
	.string	"reserved_3"
.LASF0:
	.string	"MAIN_ECPParam"
.LASF2:
	.string	"STMCAP_63_32"
.LASF7:
	.string	"STM_31_0"
.LASF8:
	.string	"TPPC_vidACMASCStateMng"
	.extern	TPPCDev_u8GetPwmState,STT_FUNC,0
	.extern	TPPCDev_vidSetPwmBcDuty,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N,STT_FUNC,0
	.extern	TPPCDev_bGetPwmRunFlag,STT_FUNC,0
	.extern	TPPCDev_vidAscEntry,STT_FUNC,0
	.extern	AMAIN_u8StopCacheFreezeFrameCnt,STT_OBJECT,1
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	AMAIN_HARDBenchOnC,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U,STT_FUNC,0
	.extern	AESM_vidOnAESM_EV1,STT_FUNC,0
	.extern	MAIN_ECP_vidPollingFault,STT_FUNC,0
	.extern	MAIN_REC_vidClrErrCode,STT_FUNC,0
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.extern	FAIL_vidInitVSICounters,STT_FUNC,0
	.extern	AESMSRV_vidSetCmdReq,STT_FUNC,0
	.extern	AESM_vidOnAESM_EV0,STT_FUNC,0
	.extern	AMAIN_u32VSICntCkreqESMStartedC,STT_OBJECT,4
	.extern	AMAIN_u32VSICntCkreqVSIStartedC,STT_OBJECT,4
	.extern	ABSW_u32VSICounterCkreq,STT_OBJECT,4
	.extern	AMAIN_VSIBenchOnWriteDataC,STT_OBJECT,1
	.extern	AFAIL_vidFailDetection_1ms,STT_FUNC,0
	.extern	TPPC_vidACMASCStateMng,STT_FUNC,0
	.extern	TPPCDev_vidMotorStateMng,STT_FUNC,0
	.extern	MAIN_bSetACMASCEnableState,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
