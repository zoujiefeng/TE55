	.file	"oesm_1.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.OESM_vidInit,"ax",@progbits
	.align 1
	.global	OESM_vidInit
	.type	OESM_vidInit, @function
OESM_vidInit:
.LFB0:
	.file 1 "bswcdd\\ESM\\OESM\\oesm_1.c"
	.loc 1 79 0
	.loc 1 80 0
	mov	%d2, 1
	movh.a	%a15, hi:OESM_StpIState
	st.h	[%a15] lo:OESM_StpIState, %d2
	.loc 1 82 0
	movh.a	%a15, hi:OESM_StpIINfState
	st.h	[%a15] lo:OESM_StpIINfState, %d2
	.loc 1 83 0
	movh.a	%a15, hi:OESM_StpIIFtState
	st.h	[%a15] lo:OESM_StpIIFtState, %d2
	.loc 1 85 0
	movh.a	%a15, hi:OESM_OpNfState
	st.h	[%a15] lo:OESM_OpNfState, %d2
	.loc 1 86 0
	movh.a	%a15, hi:OESM_OpFtState
	st.h	[%a15] lo:OESM_OpFtState, %d2
	.loc 1 88 0
	movh.a	%a15, hi:OESM_PwrLNfState
	st.h	[%a15] lo:OESM_PwrLNfState, %d2
	.loc 1 89 0
	movh.a	%a15, hi:OESM_PwrLFtState
	.loc 1 91 0
	mov	%d15, 0
	.loc 1 89 0
	st.h	[%a15] lo:OESM_PwrLFtState, %d2
	.loc 1 91 0
	movh.a	%a15, hi:OESM_u16CmdReq
	st.h	[%a15] lo:OESM_u16CmdReq, %d15
	.loc 1 92 0
	movh.a	%a15, hi:OESM_u16CmdReqNm1
	st.h	[%a15] lo:OESM_u16CmdReqNm1, %d15
	.loc 1 93 0
	movh.a	%a15, hi:OESM_u16CmdRes
	st.h	[%a15] lo:OESM_u16CmdRes, %d15
	.loc 1 95 0
	movh.a	%a15, hi:OESM_EsmMode
	st.h	[%a15] lo:OESM_EsmMode, %d2
	.loc 1 96 0
	movh.a	%a15, hi:OESM_bCallAppliOn
	st.b	[%a15] lo:OESM_bCallAppliOn, %d15
	.loc 1 97 0
	movh.a	%a15, hi:OESM_bPwrLNfClrFltFinsh
	st.b	[%a15] lo:OESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 98 0
	movh.a	%a15, hi:OESM_bPwrDnReadyFlg
	st.b	[%a15] lo:OESM_bPwrDnReadyFlg, %d15
	.loc 1 99 0
	movh.a	%a15, hi:OESM_u8PwrLNfStep
	st.b	[%a15] lo:OESM_u8PwrLNfStep, %d15
	.loc 1 100 0
	movh.a	%a15, hi:OESM_u8PwrOffTim
	st.b	[%a15] lo:OESM_u8PwrOffTim, %d15
	.loc 1 101 0
	movh.a	%a15, hi:OESM_u8AllowPwrDnDelay
	st.b	[%a15] lo:OESM_u8AllowPwrDnDelay, %d15
	.loc 1 102 0
	movh.a	%a15, hi:OESM_bMcuEnaReq
	st.b	[%a15] lo:OESM_bMcuEnaReq, %d15
	.loc 1 103 0
	movh.a	%a15, hi:OESM_bAfterrunReq
	st.b	[%a15] lo:OESM_bAfterrunReq, %d15
	.loc 1 104 0
	movh.a	%a15, hi:OESM_bAfterrunFin
	st.b	[%a15] lo:OESM_bAfterrunFin, %d15
	.loc 1 105 0
	movh.a	%a15, hi:OESM_u16AfterrunCnt
	st.h	[%a15] lo:OESM_u16AfterrunCnt, %d15
	.loc 1 106 0
	movh.a	%a15, hi:OESM_u8RestartDelayCnt
	st.b	[%a15] lo:OESM_u8RestartDelayCnt, %d15
	.loc 1 107 0
	movh.a	%a15, hi:OESM_u16OpDelayTime
	st.h	[%a15] lo:OESM_u16OpDelayTime, %d15
	.loc 1 108 0
	movh.a	%a15, hi:OESM_u16OpTimeout
	st.h	[%a15] lo:OESM_u16OpTimeout, %d15
	.loc 1 110 0
	j	OESMSRV_vidVSIInit
.LVL0:
.LFE0:
	.size	OESM_vidInit, .-OESM_vidInit
.section .text.OESM_vidInitNf,"ax",@progbits
	.align 1
	.global	OESM_vidInitNf
	.type	OESM_vidInitNf, @function
OESM_vidInitNf:
.LFB1:
	.loc 1 123 0
	ret
.LFE1:
	.size	OESM_vidInitNf, .-OESM_vidInitNf
.section .text.OESM_vidInitFt,"ax",@progbits
	.align 1
	.global	OESM_vidInitFt
	.type	OESM_vidInitFt, @function
OESM_vidInitFt:
.LFB2:
	.loc 1 136 0
	ret
.LFE2:
	.size	OESM_vidInitFt, .-OESM_vidInitFt
.section .text.OESM_vidStfStpI,"ax",@progbits
	.align 1
	.global	OESM_vidStfStpI
	.type	OESM_vidStfStpI, @function
OESM_vidStfStpI:
.LFB3:
	.loc 1 150 0
	.loc 1 151 0
	movh.a	%a15, hi:OESM_StpIState
	ld.hu	%d15, [%a15] lo:OESM_StpIState
	jeq	%d15, 1, .L6
	mov	%d2, 16384
	jne	%d15, %d2, .L14
.L4:
	ret
.L14:
	.loc 1 179 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_StpIState, %d15
	ret
.L6:
	.loc 1 160 0
	mov	%d4, 2
	call	OESMSRV_bGetCmdReq
.LVL1:
	jz	%d2, .L4
	.loc 1 165 0
	mov	%d4, 2
	.loc 1 166 0
	mov	%d15, 16384
	.loc 1 165 0
	call	OESMSRV_vidSetCmdRes
.LVL2:
	.loc 1 166 0
	st.h	[%a15] lo:OESM_StpIState, %d15
	ret
.LFE3:
	.size	OESM_vidStfStpI, .-OESM_vidStfStpI
.section .text.OESM_vidStfStpII,"ax",@progbits
	.align 1
	.global	OESM_vidStfStpII
	.type	OESM_vidStfStpII, @function
OESM_vidStfStpII:
.LFB4:
	.loc 1 194 0
	.loc 1 195 0
	movh.a	%a15, hi:OESM_EsmMode
	ld.hu	%d15, [%a15] lo:OESM_EsmMode
	jeq	%d15, 1, .L17
	jne	%d15, 4, .L29
.LBB14:
.LBB15:
	.loc 1 282 0
	movh.a	%a15, hi:OESM_StpIIFtState
	ld.hu	%d2, [%a15] lo:OESM_StpIIFtState
	jeq	%d2, 2, .L25
	jlt.u	%d2, 3, .L30
	jeq	%d2, 4, .L28
	mov	%d15, 16384
	jne	%d2, %d15, .L24
.L15:
	ret
.L29:
	ret
.L17:
.LBE15:
.LBE14:
.LBB21:
.LBB22:
	.loc 1 221 0
	movh.a	%a15, hi:OESM_StpIINfState
	ld.hu	%d2, [%a15] lo:OESM_StpIINfState
	jeq	%d2, 2, .L20
	jlt.u	%d2, 3, .L31
	jeq	%d2, 4, .L23
	mov	%d15, 16384
	jeq	%d2, %d15, .L15
.L19:
	.loc 1 264 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	ret
.L31:
	.loc 1 221 0
	jne	%d2, 1, .L19
.LBB23:
.LBB24:
	.loc 1 232 0
	mov	%d4, 1
	mov	%d5, 5
	.loc 1 235 0
	mov	%d15, 2
	.loc 1 232 0
	call	TPPCDev_vidSetPwmModReq
.LVL3:
	.loc 1 235 0
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	ret
.L30:
.LBE24:
.LBE23:
.LBE22:
.LBE21:
.LBB27:
.LBB18:
	.loc 1 282 0
	jne	%d2, 1, .L24
.LBB16:
.LBB17:
	.loc 1 292 0
	mov	%d4, 1
	mov	%d5, 6
	.loc 1 295 0
	mov	%d15, 2
	.loc 1 292 0
	call	TPPCDev_vidSetPwmModReq
.LVL4:
	.loc 1 295 0
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	ret
.L24:
.LBE17:
.LBE16:
	.loc 1 325 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	ret
.L23:
.LBE18:
.LBE27:
.LBB28:
.LBB25:
	.loc 1 251 0
	movh.a	%a2, hi:OESM_bCallAppliOn
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 252 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	ret
.L28:
.LBE25:
.LBE28:
.LBB29:
.LBB19:
	.loc 1 312 0
	mov	%d15, 1
	movh.a	%a2, hi:OESM_bCallAppliOn
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 313 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	ret
.L20:
.LBE19:
.LBE29:
.LBB30:
.LBB26:
	.loc 1 243 0
	mov	%e4, 1
	.loc 1 244 0
	mov	%d15, 4
	.loc 1 243 0
	call	TPPCDev_vidSetPwmModReq
.LVL5:
	.loc 1 244 0
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	ret
.L25:
.LBE26:
.LBE30:
.LBB31:
.LBB20:
	.loc 1 302 0
	mov	%e4, 1
	call	TPPCDev_vidSetPwmModReq
.LVL6:
	.loc 1 303 0
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	ret
.LBE20:
.LBE31:
.LFE4:
	.size	OESM_vidStfStpII, .-OESM_vidStfStpII
.section .text.OESM_vidStfStpIINf,"ax",@progbits
	.align 1
	.global	OESM_vidStfStpIINf
	.type	OESM_vidStfStpIINf, @function
OESM_vidStfStpIINf:
.LFB5:
	.loc 1 220 0
	.loc 1 221 0
	movh.a	%a15, hi:OESM_StpIINfState
	ld.hu	%d15, [%a15] lo:OESM_StpIINfState
	jeq	%d15, 2, .L34
	jlt.u	%d15, 3, .L39
	jeq	%d15, 4, .L37
	mov	%d2, 16384
	jne	%d15, %d2, .L33
	ret
.L37:
	.loc 1 251 0
	mov	%d15, 1
	movh.a	%a2, hi:OESM_bCallAppliOn
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 252 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	.loc 1 253 0
	ret
.L33:
	.loc 1 264 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	ret
.L39:
	.loc 1 221 0
	jne	%d15, 1, .L33
.LBB34:
.LBB35:
	.loc 1 232 0
	mov	%d4, 1
	mov	%d5, 5
	.loc 1 235 0
	mov	%d15, 2
	.loc 1 232 0
	call	TPPCDev_vidSetPwmModReq
.LVL7:
	.loc 1 235 0
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	ret
.L34:
.LBE35:
.LBE34:
	.loc 1 243 0
	mov	%e4, 1
	.loc 1 244 0
	mov	%d15, 4
	.loc 1 243 0
	call	TPPCDev_vidSetPwmModReq
.LVL8:
	.loc 1 244 0
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	.loc 1 245 0
	ret
.LFE5:
	.size	OESM_vidStfStpIINf, .-OESM_vidStfStpIINf
.section .text.OESM_vidStfStpIIFt,"ax",@progbits
	.align 1
	.global	OESM_vidStfStpIIFt
	.type	OESM_vidStfStpIIFt, @function
OESM_vidStfStpIIFt:
.LFB6:
	.loc 1 279 0
	.loc 1 282 0
	movh.a	%a15, hi:OESM_StpIIFtState
	ld.hu	%d15, [%a15] lo:OESM_StpIIFtState
	jeq	%d15, 2, .L42
	jlt.u	%d15, 3, .L47
	jeq	%d15, 4, .L45
	mov	%d2, 16384
	jne	%d15, %d2, .L41
	ret
.L45:
	.loc 1 312 0
	mov	%d15, 1
	movh.a	%a2, hi:OESM_bCallAppliOn
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 313 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	.loc 1 314 0
	ret
.L41:
	.loc 1 325 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	ret
.L47:
	.loc 1 282 0
	jne	%d15, 1, .L41
.LBB38:
.LBB39:
	.loc 1 292 0
	mov	%d4, 1
	mov	%d5, 6
	.loc 1 295 0
	mov	%d15, 2
	.loc 1 292 0
	call	TPPCDev_vidSetPwmModReq
.LVL9:
	.loc 1 295 0
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	ret
.L42:
.LBE39:
.LBE38:
	.loc 1 302 0
	mov	%e4, 1
	.loc 1 303 0
	mov	%d15, 4
	.loc 1 302 0
	call	TPPCDev_vidSetPwmModReq
.LVL10:
	.loc 1 303 0
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	.loc 1 304 0
	ret
.LFE6:
	.size	OESM_vidStfStpIIFt, .-OESM_vidStfStpIIFt
.section .text.OESM_vidStfOp,"ax",@progbits
	.align 1
	.global	OESM_vidStfOp
	.type	OESM_vidStfOp, @function
OESM_vidStfOp:
.LFB7:
	.loc 1 340 0
	.loc 1 341 0
	movh.a	%a15, hi:OESM_EsmMode
	ld.hu	%d15, [%a15] lo:OESM_EsmMode
	jeq	%d15, 1, .L50
	jne	%d15, 4, .L107
.LBB52:
.LBB53:
	.loc 1 483 0
	movh.a	%a12, hi:OESM_OpFtState
	ld.hu	%d2, [%a12] lo:OESM_OpFtState
	jeq	%d2, 4, .L70
	jge.u	%d2, 5, .L71
	jeq	%d2, 1, .L72
	jne	%d2, 2, .L69
	.loc 1 551 0
	mov	%d4, 1
	mov	%d5, 1
	.loc 1 552 0
	mov	%d15, 1
	.loc 1 551 0
	call	TPPCDev_vidSetPwmModReq
.LVL11:
	.loc 1 552 0
	st.h	[%a12] lo:OESM_OpFtState, %d15
	ret
.L107:
	ret
.L50:
.LBE53:
.LBE52:
.LBB78:
.LBB79:
	.loc 1 367 0
	movh.a	%a12, hi:OESM_OpNfState
	ld.hu	%d2, [%a12] lo:OESM_OpNfState
	eq	%d3, %d2, 8
	jnz	%d3, .L53
	jge.u	%d2, 9, .L54
	jeq	%d2, 1, .L55
	jne	%d2, 4, .L52
	.loc 1 438 0
	mov	%e4, 1
	call	TPPCDev_vidSetPwmModReq
.LVL12:
	.loc 1 439 0
	st.h	[%a12] lo:OESM_OpNfState, %d15
	ret
.L71:
.LBE79:
.LBE78:
.LBB95:
.LBB72:
	.loc 1 483 0
	eq	%d15, %d2, 8
	jnz	%d15, .L74
	mov	%d15, 4096
	jne	%d2, %d15, .L69
.LBB54:
.LBB55:
	.loc 1 728 0
	movh.a	%a12, hi:OESM_PwrLFtState
	ld.hu	%d15, [%a12] lo:OESM_PwrLFtState
	jeq	%d15, 2, .L91
	mov	%d2, 16384
	jeq	%d15, %d2, .L48
	jeq	%d15, 1, .L108
	.loc 1 757 0
	mov	%d15, 1
	st.h	[%a12] lo:OESM_PwrLFtState, %d15
	ret
.L54:
.LBE55:
.LBE54:
.LBE72:
.LBE95:
.LBB96:
.LBB90:
	.loc 1 367 0
	mov	%d15, 8192
	jeq	%d2, %d15, .L48
	mov	%d15, 16384
	jne	%d2, %d15, .L52
.L48:
	ret
.L52:
	.loc 1 467 0
	mov	%d15, 1
	st.h	[%a12] lo:OESM_OpNfState, %d15
	ret
.L53:
	.loc 1 446 0
	mov	%d4, 1
	mov	%d5, 3
	call	TPPCDev_vidSetPwmModReq
.LVL13:
	.loc 1 447 0
	st.h	[%a12] lo:OESM_OpNfState, %d15
	ret
.L55:
.LBB80:
.LBB81:
	.loc 1 376 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReq
.LVL14:
	jz	%d2, .L57
	.loc 1 378 0
	mov	%d15, 4
	st.h	[%a12] lo:OESM_OpNfState, %d15
.L58:
	.loc 1 410 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReqNm1
.LVL15:
	jnz	%d2, .L109
.L62:
	.loc 1 417 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReqNm1
.LVL16:
	jnz	%d2, .L110
.L65:
	.loc 1 424 0
	mov	%d4, 8
	call	OESMSRV_bGetCmdReqNm1
.LVL17:
	jnz	%d2, .L111
.L67:
	.loc 1 428 0
	mov	%d4, 4
	call	OESMSRV_bGetCmdReqNm1
.LVL18:
	jz	%d2, .L48
	.loc 1 430 0
	mov	%d4, 4
	j	OESMSRV_vidSetCmdRes
.LVL19:
.L74:
.LBE81:
.LBE80:
.LBE90:
.LBE96:
.LBB97:
.LBB73:
	.loc 1 567 0
	mov	%d4, 1
	mov	%d5, 3
	.loc 1 568 0
	mov	%d15, 1
	.loc 1 567 0
	call	TPPCDev_vidSetPwmModReq
.LVL20:
	.loc 1 568 0
	st.h	[%a12] lo:OESM_OpFtState, %d15
	ret
.L70:
	.loc 1 559 0
	mov	%e4, 1
	.loc 1 560 0
	mov	%d15, 1
	.loc 1 559 0
	call	TPPCDev_vidSetPwmModReq
.LVL21:
	.loc 1 560 0
	st.h	[%a12] lo:OESM_OpFtState, %d15
	ret
.L69:
	.loc 1 579 0
	mov	%d15, 1
	st.h	[%a12] lo:OESM_OpFtState, %d15
	ret
.L72:
.LBB60:
.LBB61:
	.loc 1 492 0
	mov	%d4, 256
	call	OESMSRV_bGetCmdReq
.LVL22:
	jz	%d2, .L76
	.loc 1 494 0
	mov	%d15, 2
	st.h	[%a12] lo:OESM_OpFtState, %d15
.L77:
	.loc 1 520 0
	mov	%d4, 256
	call	OESMSRV_bGetCmdReqNm1
.LVL23:
	jnz	%d2, .L112
.L81:
	.loc 1 527 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReqNm1
.LVL24:
	jnz	%d2, .L113
.L84:
	.loc 1 534 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReqNm1
.LVL25:
	jnz	%d2, .L114
.L87:
	.loc 1 541 0
	mov	%d4, 16
	call	OESMSRV_bGetCmdReqNm1
.LVL26:
	jz	%d2, .L48
	.loc 1 543 0
	mov	%d4, 16
	j	OESMSRV_vidSetCmdRes
.LVL27:
.L57:
.LBE61:
.LBE60:
.LBE73:
.LBE97:
.LBB98:
.LBB91:
.LBB86:
.LBB82:
	.loc 1 382 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReq
.LVL28:
	jz	%d2, .L59
	.loc 1 384 0
	mov	%d15, 8
	st.h	[%a12] lo:OESM_OpNfState, %d15
	j	.L58
.L76:
.LBE82:
.LBE86:
.LBE91:
.LBE98:
.LBB99:
.LBB74:
.LBB66:
.LBB62:
	.loc 1 498 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReq
.LVL29:
	jz	%d2, .L115
.L106:
	.loc 1 512 0
	st.h	[%a12] lo:OESM_OpFtState, %d15
	j	.L77
.L91:
.LBE62:
.LBE66:
.LBB67:
.LBB58:
	.loc 1 744 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_EsmMode, %d15
	.loc 1 745 0
	mov	%d15, 16384
	st.h	[%a12] lo:OESM_PwrLFtState, %d15
	ret
.L111:
.LBE58:
.LBE67:
.LBE74:
.LBE99:
.LBB100:
.LBB92:
.LBB87:
.LBB83:
	.loc 1 426 0
	mov	%d4, 8
	call	OESMSRV_vidSetCmdRes
.LVL30:
	j	.L67
.L110:
	.loc 1 419 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL31:
	jne	%d2, 3, .L65
	.loc 1 421 0
	mov	%d4, 512
	call	OESMSRV_vidSetCmdRes
.LVL32:
	j	.L65
.L109:
	.loc 1 412 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL33:
	jnz	%d2, .L62
	.loc 1 414 0
	mov	%d4, 1024
	call	OESMSRV_vidSetCmdRes
.LVL34:
	j	.L62
.L114:
.LBE83:
.LBE87:
.LBE92:
.LBE100:
.LBB101:
.LBB75:
.LBB68:
.LBB63:
	.loc 1 536 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL35:
	jne	%d2, 3, .L87
	.loc 1 538 0
	mov	%d4, 512
	call	OESMSRV_vidSetCmdRes
.LVL36:
	j	.L87
.L113:
	.loc 1 529 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL37:
	jnz	%d2, .L84
	.loc 1 531 0
	mov	%d4, 1024
	call	OESMSRV_vidSetCmdRes
.LVL38:
	j	.L84
.L112:
	.loc 1 522 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL39:
	jne	%d2, 1, .L81
	.loc 1 524 0
	mov	%d4, 256
	call	OESMSRV_vidSetCmdRes
.LVL40:
	j	.L81
.L108:
.LBE63:
.LBE68:
.LBB69:
.LBB59:
.LBB56:
.LBB57:
	.loc 1 735 0
	mov	%d15, 0
	movh.a	%a15, hi:OESM_bCallAppliOn
	st.b	[%a15] lo:OESM_bCallAppliOn, %d15
	.loc 1 736 0
	mov	%e4, 1
	.loc 1 737 0
	mov	%d15, 2
	.loc 1 736 0
	call	TPPCDev_vidSetPwmModReq
.LVL41:
	.loc 1 737 0
	st.h	[%a12] lo:OESM_PwrLFtState, %d15
	ret
.L59:
.LBE57:
.LBE56:
.LBE59:
.LBE69:
.LBE75:
.LBE101:
.LBB102:
.LBB93:
.LBB88:
.LBB84:
	.loc 1 388 0
	mov	%d4, 8
	call	OESMSRV_bGetCmdReq
.LVL42:
	mov	%d15, %d2
	jz	%d2, .L60
	.loc 1 393 0
	mov	%d15, 4
	st.h	[%a15] lo:OESM_EsmMode, %d15
	.loc 1 395 0
	mov	%d4, 16
	.loc 1 394 0
	mov	%d15, 8192
	st.h	[%a12] lo:OESM_OpNfState, %d15
	.loc 1 395 0
	call	OESMSRV_bGetCmdReq
.LVL43:
	j	.L58
.L115:
.LBE84:
.LBE88:
.LBE93:
.LBE102:
.LBB103:
.LBB76:
.LBB70:
.LBB64:
	.loc 1 504 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReq
.LVL44:
	jz	%d2, .L79
	.loc 1 506 0
	mov	%d15, 8
	st.h	[%a12] lo:OESM_OpFtState, %d15
	j	.L77
.L60:
.LBE64:
.LBE70:
.LBE76:
.LBE103:
.LBB104:
.LBB94:
.LBB89:
.LBB85:
	.loc 1 399 0
	mov	%d4, 4
	call	OESMSRV_bGetCmdReq
.LVL45:
	jz	%d2, .L58
	.loc 1 401 0
	movh.a	%a15, hi:OESM_bPwrLNfClrFltFinsh
	st.b	[%a15] lo:OESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 402 0
	mov	%d15, 16384
	st.h	[%a12] lo:OESM_OpNfState, %d15
	j	.L58
.L79:
.LBE85:
.LBE89:
.LBE94:
.LBE104:
.LBB105:
.LBB77:
.LBB71:
.LBB65:
	.loc 1 510 0
	mov	%d4, 16
	call	OESMSRV_bGetCmdReq
.LVL46:
	jz	%d2, .L77
	.loc 1 512 0
	mov	%d15, 4096
	j	.L106
.LBE65:
.LBE71:
.LBE77:
.LBE105:
.LFE7:
	.size	OESM_vidStfOp, .-OESM_vidStfOp
.section .text.OESM_vidStfOpNf,"ax",@progbits
	.align 1
	.global	OESM_vidStfOpNf
	.type	OESM_vidStfOpNf, @function
OESM_vidStfOpNf:
.LFB8:
	.loc 1 366 0
	.loc 1 367 0
	movh.a	%a15, hi:OESM_OpNfState
	ld.hu	%d15, [%a15] lo:OESM_OpNfState
	eq	%d2, %d15, 8
	jnz	%d2, .L118
	jge.u	%d15, 9, .L119
	jeq	%d15, 1, .L120
	jne	%d15, 4, .L117
	.loc 1 438 0
	mov	%e4, 1
	.loc 1 439 0
	mov	%d15, 1
	.loc 1 438 0
	call	TPPCDev_vidSetPwmModReq
.LVL47:
	.loc 1 439 0
	st.h	[%a15] lo:OESM_OpNfState, %d15
	.loc 1 440 0
	ret
.L120:
.LBB108:
.LBB109:
	.loc 1 376 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReq
.LVL48:
	jz	%d2, .L123
	.loc 1 378 0
	mov	%d15, 4
	st.h	[%a15] lo:OESM_OpNfState, %d15
.L124:
	.loc 1 410 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReqNm1
.LVL49:
	jnz	%d2, .L143
.L128:
	.loc 1 417 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReqNm1
.LVL50:
	jnz	%d2, .L144
.L131:
	.loc 1 424 0
	mov	%d4, 8
	call	OESMSRV_bGetCmdReqNm1
.LVL51:
	jnz	%d2, .L145
.L133:
	.loc 1 428 0
	mov	%d4, 4
	call	OESMSRV_bGetCmdReqNm1
.LVL52:
	jz	%d2, .L116
	.loc 1 430 0
	mov	%d4, 4
	j	OESMSRV_vidSetCmdRes
.LVL53:
.L119:
.LBE109:
.LBE108:
	.loc 1 367 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L116
	mov	%d2, 16384
	jne	%d15, %d2, .L117
.L116:
	ret
.L117:
	.loc 1 467 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_OpNfState, %d15
	ret
.L118:
	.loc 1 446 0
	mov	%d4, 1
	mov	%d5, 3
	.loc 1 447 0
	mov	%d15, 1
	.loc 1 446 0
	call	TPPCDev_vidSetPwmModReq
.LVL54:
	.loc 1 447 0
	st.h	[%a15] lo:OESM_OpNfState, %d15
	.loc 1 448 0
	ret
.L123:
.LBB111:
.LBB110:
	.loc 1 382 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReq
.LVL55:
	jz	%d2, .L125
	.loc 1 384 0
	mov	%d15, 8
	st.h	[%a15] lo:OESM_OpNfState, %d15
	j	.L124
.L145:
	.loc 1 426 0
	mov	%d4, 8
	call	OESMSRV_vidSetCmdRes
.LVL56:
	j	.L133
.L144:
	.loc 1 419 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL57:
	jne	%d2, 3, .L131
	.loc 1 421 0
	mov	%d4, 512
	call	OESMSRV_vidSetCmdRes
.LVL58:
	j	.L131
.L143:
	.loc 1 412 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL59:
	jnz	%d2, .L128
	.loc 1 414 0
	mov	%d4, 1024
	call	OESMSRV_vidSetCmdRes
.LVL60:
	j	.L128
.L125:
	.loc 1 388 0
	mov	%d4, 8
	call	OESMSRV_bGetCmdReq
.LVL61:
	mov	%d15, %d2
	jz	%d2, .L126
	.loc 1 393 0
	mov	%d15, 4
	movh.a	%a2, hi:OESM_EsmMode
	st.h	[%a2] lo:OESM_EsmMode, %d15
	.loc 1 395 0
	mov	%d4, 16
	.loc 1 394 0
	mov	%d15, 8192
	st.h	[%a15] lo:OESM_OpNfState, %d15
	.loc 1 395 0
	call	OESMSRV_bGetCmdReq
.LVL62:
	j	.L124
.L126:
	.loc 1 399 0
	mov	%d4, 4
	call	OESMSRV_bGetCmdReq
.LVL63:
	jz	%d2, .L124
	.loc 1 401 0
	movh.a	%a2, hi:OESM_bPwrLNfClrFltFinsh
	st.b	[%a2] lo:OESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 402 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_OpNfState, %d15
	j	.L124
.LBE110:
.LBE111:
.LFE8:
	.size	OESM_vidStfOpNf, .-OESM_vidStfOpNf
.section .text.OESM_vidStfOpFt,"ax",@progbits
	.align 1
	.global	OESM_vidStfOpFt
	.type	OESM_vidStfOpFt, @function
OESM_vidStfOpFt:
.LFB9:
	.loc 1 482 0
	.loc 1 483 0
	movh.a	%a15, hi:OESM_OpFtState
	ld.hu	%d15, [%a15] lo:OESM_OpFtState
	jeq	%d15, 4, .L148
	jge.u	%d15, 5, .L149
	jeq	%d15, 1, .L150
	jne	%d15, 2, .L147
	.loc 1 551 0
	mov	%d4, 1
	mov	%d5, 1
	.loc 1 552 0
	mov	%d15, 1
	.loc 1 551 0
	call	TPPCDev_vidSetPwmModReq
.LVL64:
	.loc 1 552 0
	st.h	[%a15] lo:OESM_OpFtState, %d15
	.loc 1 553 0
	ret
.L149:
	.loc 1 483 0
	eq	%d2, %d15, 8
	jnz	%d2, .L152
	mov	%d2, 4096
	jne	%d15, %d2, .L147
.LBB118:
.LBB119:
	.loc 1 728 0
	movh.a	%a15, hi:OESM_PwrLFtState
	ld.hu	%d15, [%a15] lo:OESM_PwrLFtState
	jeq	%d15, 2, .L169
	mov	%d2, 16384
	jeq	%d15, %d2, .L146
	jeq	%d15, 1, .L178
	.loc 1 757 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
	ret
.L147:
.LBE119:
.LBE118:
	.loc 1 579 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_OpFtState, %d15
.L146:
	ret
.L152:
	.loc 1 567 0
	mov	%d4, 1
	mov	%d5, 3
	.loc 1 568 0
	mov	%d15, 1
	.loc 1 567 0
	call	TPPCDev_vidSetPwmModReq
.LVL65:
	.loc 1 568 0
	st.h	[%a15] lo:OESM_OpFtState, %d15
	.loc 1 569 0
	ret
.L150:
.LBB123:
.LBB124:
	.loc 1 492 0
	mov	%d4, 256
	call	OESMSRV_bGetCmdReq
.LVL66:
	jz	%d2, .L154
	.loc 1 494 0
	mov	%d15, 2
	st.h	[%a15] lo:OESM_OpFtState, %d15
.L155:
	.loc 1 520 0
	mov	%d4, 256
	call	OESMSRV_bGetCmdReqNm1
.LVL67:
	jnz	%d2, .L179
.L159:
	.loc 1 527 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReqNm1
.LVL68:
	jnz	%d2, .L180
.L162:
	.loc 1 534 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReqNm1
.LVL69:
	jnz	%d2, .L181
.L165:
	.loc 1 541 0
	mov	%d4, 16
	call	OESMSRV_bGetCmdReqNm1
.LVL70:
	jz	%d2, .L146
	.loc 1 543 0
	mov	%d4, 16
	j	OESMSRV_vidSetCmdRes
.LVL71:
.L148:
.LBE124:
.LBE123:
	.loc 1 559 0
	mov	%e4, 1
	.loc 1 560 0
	mov	%d15, 1
	.loc 1 559 0
	call	TPPCDev_vidSetPwmModReq
.LVL72:
	.loc 1 560 0
	st.h	[%a15] lo:OESM_OpFtState, %d15
	.loc 1 561 0
	ret
.L181:
.LBB127:
.LBB125:
	.loc 1 536 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL73:
	jne	%d2, 3, .L165
	.loc 1 538 0
	mov	%d4, 512
	call	OESMSRV_vidSetCmdRes
.LVL74:
	j	.L165
.L180:
	.loc 1 529 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL75:
	jnz	%d2, .L162
	.loc 1 531 0
	mov	%d4, 1024
	call	OESMSRV_vidSetCmdRes
.LVL76:
	j	.L162
.L179:
	.loc 1 522 0
	mov	%d4, 1
	call	TPPCDev_u8GetPwmState
.LVL77:
	jne	%d2, 1, .L159
	.loc 1 524 0
	mov	%d4, 256
	call	OESMSRV_vidSetCmdRes
.LVL78:
	j	.L159
.L154:
	.loc 1 498 0
	mov	%d4, 1024
	call	OESMSRV_bGetCmdReq
.LVL79:
	jz	%d2, .L156
	.loc 1 500 0
	mov	%d15, 4
	st.h	[%a15] lo:OESM_OpFtState, %d15
	j	.L155
.L178:
.LBE125:
.LBE127:
.LBB128:
.LBB122:
.LBB120:
.LBB121:
	.loc 1 735 0
	mov	%d15, 0
	movh.a	%a2, hi:OESM_bCallAppliOn
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 736 0
	mov	%e4, 1
	.loc 1 737 0
	mov	%d15, 2
	.loc 1 736 0
	call	TPPCDev_vidSetPwmModReq
.LVL80:
	.loc 1 737 0
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
	ret
.L169:
.LBE121:
.LBE120:
	.loc 1 744 0
	mov	%d15, 1
	movh.a	%a2, hi:OESM_EsmMode
	st.h	[%a2] lo:OESM_EsmMode, %d15
	.loc 1 745 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
	ret
.L156:
.LBE122:
.LBE128:
.LBB129:
.LBB126:
	.loc 1 504 0
	mov	%d4, 512
	call	OESMSRV_bGetCmdReq
.LVL81:
	jz	%d2, .L157
	.loc 1 506 0
	mov	%d15, 8
	st.h	[%a15] lo:OESM_OpFtState, %d15
	j	.L155
.L157:
	.loc 1 510 0
	mov	%d4, 16
	call	OESMSRV_bGetCmdReq
.LVL82:
	jz	%d2, .L155
	.loc 1 512 0
	mov	%d15, 4096
	st.h	[%a15] lo:OESM_OpFtState, %d15
	j	.L155
.LBE126:
.LBE129:
.LFE9:
	.size	OESM_vidStfOpFt, .-OESM_vidStfOpFt
.section .text.OESM_vidStfPwrL,"ax",@progbits
	.align 1
	.global	OESM_vidStfPwrL
	.type	OESM_vidStfPwrL, @function
OESM_vidStfPwrL:
.LFB10:
	.loc 1 594 0
	.loc 1 595 0
	movh.a	%a15, hi:OESM_EsmMode
	ld.hu	%d15, [%a15] lo:OESM_EsmMode
	jeq	%d15, 1, .L198
.L182:
	ret
.L198:
.LVL83:
.LBB134:
.LBB135:
	.loc 1 620 0
	movh.a	%a15, hi:OESM_bAfterrunReq
	ld.bu	%d15, [%a15] lo:OESM_bAfterrunReq
	jnz	%d15, .L199
.L185:
	.loc 1 629 0
	movh.a	%a15, hi:OESM_PwrLNfState
	ld.hu	%d15, [%a15] lo:OESM_PwrLNfState
	jeq	%d15, 2, .L187
	jlt.u	%d15, 3, .L200
	mov	%d2, 8192
	jeq	%d15, %d2, .L182
	mov	%d2, 16384
	jeq	%d15, %d2, .L182
.L186:
	.loc 1 712 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_PwrLNfState, %d15
	ret
.L199:
	.loc 1 622 0
	movh.a	%a15, hi:OESM_u16AfterrunCnt
	ld.h	%d15, [%a15] lo:OESM_u16AfterrunCnt
	add	%d15, 1
	st.h	[%a15] lo:OESM_u16AfterrunCnt, %d15
	j	.L185
.L200:
	.loc 1 629 0
	jne	%d15, 1, .L186
	.loc 1 637 0
	mov	%d15, 0
	movh.a	%a2, hi:OESM_bCallAppliOn
	.loc 1 638 0
	mov	%e4, 1
	.loc 1 637 0
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 638 0
	call	TPPCDev_vidSetPwmModReq
.LVL84:
	.loc 1 641 0
	mov	%d2, 2
	st.h	[%a15] lo:OESM_PwrLNfState, %d2
	.loc 1 642 0
	movh.a	%a15, hi:OESM_u8PwrLNfStep
	st.b	[%a15] lo:OESM_u8PwrLNfStep, %d15
	.loc 1 643 0
	movh.a	%a15, hi:OESM_u8AllowPwrDnDelay
	st.b	[%a15] lo:OESM_u8AllowPwrDnDelay, %d15
	ret
.L187:
.LBB136:
	.loc 1 651 0
	movh.a	%a2, hi:OESM_u8PwrLNfStep
	ld.bu	%d2, [%a2] lo:OESM_u8PwrLNfStep
	jz	%d2, .L201
	.loc 1 661 0
	jeq	%d2, 1, .L202
	.loc 1 677 0
	movh.a	%a2, hi:OESM_u8AllowPwrDnDelay
	ld.bu	%d2, [%a2] lo:OESM_u8AllowPwrDnDelay
	ge.u	%d15, %d2, 20
	jz	%d15, .L203
	.loc 1 683 0
	movh.a	%a2, hi:OESM_u16OpDelayTime
	ld.hu	%d15, [%a2] lo:OESM_u16OpDelayTime
	jge.u	%d15, 5, .L194
	.loc 1 685 0
	add	%d15, 1
	st.h	[%a2] lo:OESM_u16OpDelayTime, %d15
	ret
.L202:
	.loc 1 663 0
	movh.a	%a15, hi:OESM_bPwrDnReadyFlg
	st.b	[%a15] lo:OESM_bPwrDnReadyFlg, %d2
	.loc 1 665 0
	movh.a	%a15, hi:OESM_u8AllowPwrDnDelay
	ld.bu	%d2, [%a15] lo:OESM_u8AllowPwrDnDelay
	jge.u	%d2, 10, .L192
	.loc 1 667 0
	add	%d2, 1
	st.b	[%a15] lo:OESM_u8AllowPwrDnDelay, %d2
	ret
.L201:
.LVL85:
	.loc 1 658 0
	mov	%d15, 1
	st.b	[%a2] lo:OESM_u8PwrLNfStep, %d15
	ret
.LVL86:
.L203:
	.loc 1 679 0
	add	%d2, 1
	st.b	[%a2] lo:OESM_u8AllowPwrDnDelay, %d2
	ret
.L194:
	.loc 1 689 0
	mov	%d15, 0
	st.h	[%a2] lo:OESM_u16OpDelayTime, %d15
	.loc 1 690 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_PwrLNfState, %d15
	ret
.L192:
	.loc 1 671 0
	mov	%d2, 0
	movh.a	%a15, hi:OESM_u16AfterrunCnt
	st.h	[%a15] lo:OESM_u16AfterrunCnt, %d2
	.loc 1 672 0
	st.b	[%a2] lo:OESM_u8PwrLNfStep, %d15
	ret
.LBE136:
.LBE135:
.LBE134:
.LFE10:
	.size	OESM_vidStfPwrL, .-OESM_vidStfPwrL
.section .text.OESM_vidStfPwrLNf,"ax",@progbits
	.align 1
	.global	OESM_vidStfPwrLNf
	.type	OESM_vidStfPwrLNf, @function
OESM_vidStfPwrLNf:
.LFB11:
	.loc 1 616 0
.LVL87:
	.loc 1 620 0
	movh.a	%a15, hi:OESM_bAfterrunReq
	ld.bu	%d15, [%a15] lo:OESM_bAfterrunReq
	jz	%d15, .L205
	.loc 1 622 0
	movh.a	%a15, hi:OESM_u16AfterrunCnt
	ld.h	%d15, [%a15] lo:OESM_u16AfterrunCnt
	add	%d15, 1
	st.h	[%a15] lo:OESM_u16AfterrunCnt, %d15
.L205:
	.loc 1 629 0
	movh.a	%a15, hi:OESM_PwrLNfState
	ld.hu	%d15, [%a15] lo:OESM_PwrLNfState
	jeq	%d15, 2, .L207
	jlt.u	%d15, 3, .L219
	mov	%d2, 8192
	jeq	%d15, %d2, .L204
	mov	%d2, 16384
	jne	%d15, %d2, .L206
.L204:
	ret
.L219:
	jne	%d15, 1, .L206
	.loc 1 637 0
	mov	%d15, 0
	movh.a	%a2, hi:OESM_bCallAppliOn
	.loc 1 638 0
	mov	%e4, 1
	.loc 1 637 0
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 638 0
	call	TPPCDev_vidSetPwmModReq
.LVL88:
	.loc 1 641 0
	mov	%d2, 2
	st.h	[%a15] lo:OESM_PwrLNfState, %d2
	.loc 1 642 0
	movh.a	%a15, hi:OESM_u8PwrLNfStep
	st.b	[%a15] lo:OESM_u8PwrLNfStep, %d15
	.loc 1 643 0
	movh.a	%a15, hi:OESM_u8AllowPwrDnDelay
	st.b	[%a15] lo:OESM_u8AllowPwrDnDelay, %d15
	.loc 1 645 0
	ret
.L206:
	.loc 1 712 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_PwrLNfState, %d15
	ret
.L207:
.LBB139:
	.loc 1 651 0
	movh.a	%a2, hi:OESM_u8PwrLNfStep
	ld.bu	%d2, [%a2] lo:OESM_u8PwrLNfStep
	jz	%d2, .L220
	.loc 1 661 0
	jeq	%d2, 1, .L221
	.loc 1 677 0
	movh.a	%a2, hi:OESM_u8AllowPwrDnDelay
	ld.bu	%d2, [%a2] lo:OESM_u8AllowPwrDnDelay
	ge.u	%d15, %d2, 20
	jz	%d15, .L222
	.loc 1 683 0
	movh.a	%a2, hi:OESM_u16OpDelayTime
	ld.hu	%d15, [%a2] lo:OESM_u16OpDelayTime
	jge.u	%d15, 5, .L215
	.loc 1 685 0
	add	%d15, 1
	st.h	[%a2] lo:OESM_u16OpDelayTime, %d15
	ret
.L220:
.LVL89:
	.loc 1 658 0
	mov	%d15, 1
	st.b	[%a2] lo:OESM_u8PwrLNfStep, %d15
	ret
.LVL90:
.L215:
	.loc 1 689 0
	mov	%d15, 0
	st.h	[%a2] lo:OESM_u16OpDelayTime, %d15
	.loc 1 690 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_PwrLNfState, %d15
	ret
.L222:
	.loc 1 679 0
	add	%d2, 1
	st.b	[%a2] lo:OESM_u8AllowPwrDnDelay, %d2
	ret
.L221:
	.loc 1 663 0
	movh.a	%a15, hi:OESM_bPwrDnReadyFlg
	st.b	[%a15] lo:OESM_bPwrDnReadyFlg, %d2
	.loc 1 665 0
	movh.a	%a15, hi:OESM_u8AllowPwrDnDelay
	ld.bu	%d2, [%a15] lo:OESM_u8AllowPwrDnDelay
	jge.u	%d2, 10, .L213
	.loc 1 667 0
	add	%d2, 1
	st.b	[%a15] lo:OESM_u8AllowPwrDnDelay, %d2
	ret
.L213:
	.loc 1 671 0
	mov	%d2, 0
	movh.a	%a15, hi:OESM_u16AfterrunCnt
	st.h	[%a15] lo:OESM_u16AfterrunCnt, %d2
	.loc 1 672 0
	st.b	[%a2] lo:OESM_u8PwrLNfStep, %d15
	ret
.LBE139:
.LFE11:
	.size	OESM_vidStfPwrLNf, .-OESM_vidStfPwrLNf
.section .text.OESM_vidStfPwrLFt,"ax",@progbits
	.align 1
	.global	OESM_vidStfPwrLFt
	.type	OESM_vidStfPwrLFt, @function
OESM_vidStfPwrLFt:
.LFB12:
	.loc 1 727 0
	.loc 1 728 0
	movh.a	%a15, hi:OESM_PwrLFtState
	ld.hu	%d15, [%a15] lo:OESM_PwrLFtState
	jeq	%d15, 2, .L225
	mov	%d2, 16384
	jeq	%d15, %d2, .L223
	jeq	%d15, 1, .L229
	.loc 1 757 0
	mov	%d15, 1
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
.L223:
	ret
.L229:
.LBB142:
.LBB143:
	.loc 1 735 0
	mov	%d15, 0
	movh.a	%a2, hi:OESM_bCallAppliOn
	st.b	[%a2] lo:OESM_bCallAppliOn, %d15
	.loc 1 736 0
	mov	%e4, 1
	.loc 1 737 0
	mov	%d15, 2
	.loc 1 736 0
	call	TPPCDev_vidSetPwmModReq
.LVL91:
	.loc 1 737 0
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
	ret
.L225:
.LBE143:
.LBE142:
	.loc 1 744 0
	mov	%d15, 1
	movh.a	%a2, hi:OESM_EsmMode
	st.h	[%a2] lo:OESM_EsmMode, %d15
	.loc 1 745 0
	mov	%d15, 16384
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
	.loc 1 746 0
	ret
.LFE12:
	.size	OESM_vidStfPwrLFt, .-OESM_vidStfPwrLFt
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
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\ESM\\OESM\\OESM_L.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
	.file 6 "bswcdd\\ESM\\OESM\\oesmsrv.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x10a0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\OESM\\oesm_1.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xf8
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
	.uaword	0x1c3
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
	.uaword	0x1ef
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
	.uaword	0x1c3
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
	.byte	0x8
	.byte	0x24
	.uaword	0x311
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
	.byte	0x1
	.string	"OESM_vidInitNf"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidStfStpIINf"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidInitFt"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"OESM_vidStfStpIIFt"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"OESM_vidStfOpNf"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.string	"OESM_vidStfPwrLNf"
	.byte	0x1
	.uahalf	0x267
	.byte	0x1
	.byte	0x1
	.uaword	0x3cc
	.uleb128 0x9
	.string	"bLocBswEndOp"
	.byte	0x1
	.uahalf	0x269
	.uaword	0x25a
	.uleb128 0x9
	.string	"bLocKL15Sts"
	.byte	0x1
	.uahalf	0x26a
	.uaword	0x25a
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"OESM_vidStfPwrLFt"
	.byte	0x1
	.uahalf	0x2d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"OESM_vidStfOpFt"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"OESM_vidInit"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x429
	.uleb128 0xb
	.uaword	.LVL0
	.byte	0x1
	.uaword	0xfb7
	.byte	0
	.uleb128 0xc
	.uaword	0x311
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.uaword	0x33f
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"OESM_vidStfStpI"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x493
	.uleb128 0xd
	.uaword	.LVL1
	.uaword	0xfd0
	.uaword	0x483
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0xf
	.uaword	.LVL2
	.uaword	0xff7
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"OESM_vidStfStpII"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x536
	.uleb128 0x10
	.uaword	0x354
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xca
	.uaword	0x4f9
	.uleb128 0xd
	.uaword	.LVL4
	.uaword	0x101c
	.uaword	0x4e4
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.uaword	.LVL6
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x326
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xc6
	.uleb128 0xd
	.uaword	.LVL3
	.uaword	0x101c
	.uaword	0x520
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.uaword	.LVL5
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x326
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x578
	.uleb128 0xd
	.uaword	.LVL7
	.uaword	0x101c
	.uaword	0x563
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.uaword	.LVL8
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x354
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5ba
	.uleb128 0xd
	.uaword	.LVL9
	.uaword	0x101c
	.uaword	0x5a5
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.uaword	.LVL10
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"OESM_vidStfOp"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8f8
	.uleb128 0x14
	.uaword	0x3e5
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x790
	.uleb128 0x14
	.uaword	0x3cc
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x61b
	.uleb128 0xf
	.uaword	.LVL41
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL11
	.uaword	0x101c
	.uaword	0x633
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL20
	.uaword	0x101c
	.uaword	0x64b
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL21
	.uaword	0x101c
	.uaword	0x663
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL22
	.uaword	0xfd0
	.uaword	0x678
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xd
	.uaword	.LVL23
	.uaword	0x1053
	.uaword	0x68d
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xd
	.uaword	.LVL24
	.uaword	0x1053
	.uaword	0x6a2
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL25
	.uaword	0x1053
	.uaword	0x6b7
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL26
	.uaword	0x1053
	.uaword	0x6ca
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL27
	.byte	0x1
	.uaword	0xff7
	.uaword	0x6de
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.uaword	.LVL29
	.uaword	0xfd0
	.uaword	0x6f3
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL35
	.uaword	0x107d
	.uaword	0x706
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL36
	.uaword	0xff7
	.uaword	0x71b
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL37
	.uaword	0x107d
	.uaword	0x72e
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL38
	.uaword	0xff7
	.uaword	0x743
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL39
	.uaword	0x107d
	.uaword	0x756
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL40
	.uaword	0xff7
	.uaword	0x76b
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xd
	.uaword	.LVL44
	.uaword	0xfd0
	.uaword	0x780
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xf
	.uaword	.LVL46
	.uaword	0xfd0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x36e
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x158
	.uleb128 0xd
	.uaword	.LVL12
	.uaword	0x101c
	.uaword	0x7b8
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL13
	.uaword	0x101c
	.uaword	0x7d0
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL14
	.uaword	0xfd0
	.uaword	0x7e5
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL15
	.uaword	0x1053
	.uaword	0x7fa
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL16
	.uaword	0x1053
	.uaword	0x80f
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL17
	.uaword	0x1053
	.uaword	0x822
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.uaword	.LVL18
	.uaword	0x1053
	.uaword	0x835
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.uaword	.LVL19
	.byte	0x1
	.uaword	0xff7
	.uaword	0x849
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xd
	.uaword	.LVL28
	.uaword	0xfd0
	.uaword	0x85e
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL30
	.uaword	0xff7
	.uaword	0x871
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.uaword	.LVL31
	.uaword	0x107d
	.uaword	0x884
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL32
	.uaword	0xff7
	.uaword	0x899
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL33
	.uaword	0x107d
	.uaword	0x8ac
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL34
	.uaword	0xff7
	.uaword	0x8c1
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL42
	.uaword	0xfd0
	.uaword	0x8d4
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.uaword	.LVL43
	.uaword	0xfd0
	.uaword	0x8e7
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.uaword	.LVL45
	.uaword	0xfd0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x36e
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa64
	.uleb128 0xd
	.uaword	.LVL47
	.uaword	0x101c
	.uaword	0x925
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL48
	.uaword	0xfd0
	.uaword	0x93a
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL49
	.uaword	0x1053
	.uaword	0x94f
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL50
	.uaword	0x1053
	.uaword	0x964
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL51
	.uaword	0x1053
	.uaword	0x977
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.uaword	.LVL52
	.uaword	0x1053
	.uaword	0x98a
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.uaword	.LVL53
	.byte	0x1
	.uaword	0xff7
	.uaword	0x99e
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xd
	.uaword	.LVL54
	.uaword	0x101c
	.uaword	0x9b6
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL55
	.uaword	0xfd0
	.uaword	0x9cb
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL56
	.uaword	0xff7
	.uaword	0x9de
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.uaword	.LVL57
	.uaword	0x107d
	.uaword	0x9f1
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL58
	.uaword	0xff7
	.uaword	0xa06
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL59
	.uaword	0x107d
	.uaword	0xa19
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL60
	.uaword	0xff7
	.uaword	0xa2e
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL61
	.uaword	0xfd0
	.uaword	0xa41
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.uaword	.LVL62
	.uaword	0xfd0
	.uaword	0xa54
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.uaword	.LVL63
	.uaword	0xfd0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3e5
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc17
	.uleb128 0x14
	.uaword	0x3cc
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x23f
	.uaword	0xaa2
	.uleb128 0xf
	.uaword	.LVL80
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL64
	.uaword	0x101c
	.uaword	0xaba
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL65
	.uaword	0x101c
	.uaword	0xad2
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL66
	.uaword	0xfd0
	.uaword	0xae7
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xd
	.uaword	.LVL67
	.uaword	0x1053
	.uaword	0xafc
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xd
	.uaword	.LVL68
	.uaword	0x1053
	.uaword	0xb11
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL69
	.uaword	0x1053
	.uaword	0xb26
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL70
	.uaword	0x1053
	.uaword	0xb39
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL71
	.byte	0x1
	.uaword	0xff7
	.uaword	0xb4d
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.uaword	.LVL72
	.uaword	0x101c
	.uaword	0xb65
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL73
	.uaword	0x107d
	.uaword	0xb78
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL74
	.uaword	0xff7
	.uaword	0xb8d
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xd
	.uaword	.LVL75
	.uaword	0x107d
	.uaword	0xba0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL76
	.uaword	0xff7
	.uaword	0xbb5
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL77
	.uaword	0x107d
	.uaword	0xbc8
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.uaword	.LVL78
	.uaword	0xff7
	.uaword	0xbdd
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xd
	.uaword	.LVL79
	.uaword	0xfd0
	.uaword	0xbf2
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xd
	.uaword	.LVL81
	.uaword	0xfd0
	.uaword	0xc07
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xf
	.uaword	.LVL82
	.uaword	0xfd0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"OESM_vidStfPwrL"
	.byte	0x1
	.uahalf	0x251
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc95
	.uleb128 0x17
	.uaword	0x385
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.uahalf	0x256
	.uleb128 0x18
	.uaword	.LBB135
	.uaword	.LBE135
	.uleb128 0x19
	.uaword	0x3a2
	.byte	0
	.uleb128 0x19
	.uaword	0x3b7
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	0xc7e
	.uleb128 0x1b
	.uaword	0x3a2
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x3b7
	.byte	0
	.uleb128 0xf
	.uaword	.LVL84
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x385
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xce7
	.uleb128 0x19
	.uaword	0x3a2
	.byte	0
	.uleb128 0x19
	.uaword	0x3b7
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	0xcd2
	.uleb128 0x1b
	.uaword	0x3a2
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	0x3b7
	.byte	0
	.uleb128 0xf
	.uaword	.LVL88
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3cc
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd11
	.uleb128 0xf
	.uaword	.LVL91
	.uaword	0x101c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"OESM_u16PowerLatchTempo"
	.byte	0x3
	.byte	0x41
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u8AllowPwrDnDelay"
	.byte	0x4
	.byte	0x40
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u8PwrLNfStep"
	.byte	0x4
	.byte	0x41
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u8PwrOffTim"
	.byte	0x4
	.byte	0x42
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_EsmMode"
	.byte	0x5
	.byte	0x57
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_bAfterrunFin"
	.byte	0x5
	.byte	0x58
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_bAfterrunReq"
	.byte	0x5
	.byte	0x59
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_bCallAppliOn"
	.byte	0x5
	.byte	0x5a
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_bMcuEnaReq"
	.byte	0x5
	.byte	0x5b
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_bPwrDnReadyFlg"
	.byte	0x5
	.byte	0x5c
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_bPwrLNfClrFltFinsh"
	.byte	0x5
	.byte	0x5d
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_OpFtState"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_OpNfState"
	.byte	0x5
	.byte	0x5f
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_PwrLFtState"
	.byte	0x5
	.byte	0x60
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_PwrLNfState"
	.byte	0x5
	.byte	0x61
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u16OpDelayTime"
	.byte	0x5
	.byte	0x62
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u16OpTimeout"
	.byte	0x5
	.byte	0x63
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_StpIIFtState"
	.byte	0x5
	.byte	0x64
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_StpIINfState"
	.byte	0x5
	.byte	0x65
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_StpIState"
	.byte	0x5
	.byte	0x66
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u16AfterrunCnt"
	.byte	0x5
	.byte	0x67
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u16CmdReq"
	.byte	0x5
	.byte	0x68
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u16CmdReqNm1"
	.byte	0x5
	.byte	0x69
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u16CmdRes"
	.byte	0x5
	.byte	0x6a
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"OESM_u8RestartDelayCnt"
	.byte	0x5
	.byte	0x6b
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"OESMSRV_vidVSIInit"
	.byte	0x6
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"OESMSRV_bGetCmdReq"
	.byte	0x6
	.byte	0x57
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0xff7
	.uleb128 0x20
	.uaword	0x1e1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"OESMSRV_vidSetCmdRes"
	.byte	0x6
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uaword	0x101c
	.uleb128 0x20
	.uaword	0x1e1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"TPPCDev_vidSetPwmModReq"
	.byte	0x7
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uaword	0x1049
	.uleb128 0x20
	.uaword	0x1049
	.uleb128 0x20
	.uaword	0x104e
	.byte	0
	.uleb128 0x22
	.uaword	0x1b6
	.uleb128 0x22
	.uaword	0x1e1
	.uleb128 0x1f
	.byte	0x1
	.string	"OESMSRV_bGetCmdReqNm1"
	.byte	0x6
	.byte	0x58
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0x107d
	.uleb128 0x20
	.uaword	0x1e1
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"TPPCDev_u8GetPwmState"
	.byte	0x7
	.byte	0x47
	.byte	0x1
	.uaword	0x1b6
	.byte	0x1
	.uleb128 0x20
	.uaword	0x1049
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x31
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	0
	.uaword	0
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	TPPCDev_u8GetPwmState,STT_FUNC,0
	.extern	OESMSRV_bGetCmdReqNm1,STT_FUNC,0
	.extern	TPPCDev_vidSetPwmModReq,STT_FUNC,0
	.extern	OESMSRV_vidSetCmdRes,STT_FUNC,0
	.extern	OESMSRV_bGetCmdReq,STT_FUNC,0
	.extern	OESMSRV_vidVSIInit,STT_FUNC,0
	.extern	OESM_u16OpTimeout,STT_OBJECT,2
	.extern	OESM_u16OpDelayTime,STT_OBJECT,2
	.extern	OESM_u8RestartDelayCnt,STT_OBJECT,1
	.extern	OESM_u16AfterrunCnt,STT_OBJECT,2
	.extern	OESM_bAfterrunFin,STT_OBJECT,1
	.extern	OESM_bAfterrunReq,STT_OBJECT,1
	.extern	OESM_bMcuEnaReq,STT_OBJECT,1
	.extern	OESM_u8AllowPwrDnDelay,STT_OBJECT,1
	.extern	OESM_u8PwrOffTim,STT_OBJECT,1
	.extern	OESM_u8PwrLNfStep,STT_OBJECT,1
	.extern	OESM_bPwrDnReadyFlg,STT_OBJECT,1
	.extern	OESM_bPwrLNfClrFltFinsh,STT_OBJECT,1
	.extern	OESM_bCallAppliOn,STT_OBJECT,1
	.extern	OESM_EsmMode,STT_OBJECT,2
	.extern	OESM_u16CmdRes,STT_OBJECT,2
	.extern	OESM_u16CmdReqNm1,STT_OBJECT,2
	.extern	OESM_u16CmdReq,STT_OBJECT,2
	.extern	OESM_PwrLFtState,STT_OBJECT,2
	.extern	OESM_PwrLNfState,STT_OBJECT,2
	.extern	OESM_OpFtState,STT_OBJECT,2
	.extern	OESM_OpNfState,STT_OBJECT,2
	.extern	OESM_StpIIFtState,STT_OBJECT,2
	.extern	OESM_StpIINfState,STT_OBJECT,2
	.extern	OESM_StpIState,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
