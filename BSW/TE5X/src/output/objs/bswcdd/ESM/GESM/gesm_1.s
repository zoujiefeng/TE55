	.file	"gesm_1.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.GESM_vidInit,"ax",@progbits
	.align 1
	.global	GESM_vidInit
	.type	GESM_vidInit, @function
GESM_vidInit:
.LFB412:
	.file 1 "bswcdd\\ESM\\GESM\\gesm_1.c"
	.loc 1 93 0
	.loc 1 94 0
	mov	%d2, 1
	movh.a	%a15, hi:GESM_StpIState
	st.h	[%a15] lo:GESM_StpIState, %d2
	.loc 1 96 0
	movh.a	%a15, hi:GESM_StpIINfState
	st.h	[%a15] lo:GESM_StpIINfState, %d2
	.loc 1 97 0
	movh.a	%a15, hi:GESM_StpIIFtState
	st.h	[%a15] lo:GESM_StpIIFtState, %d2
	.loc 1 99 0
	movh.a	%a15, hi:GESM_OpNfState
	st.h	[%a15] lo:GESM_OpNfState, %d2
	.loc 1 100 0
	movh.a	%a15, hi:GESM_OpFtState
	st.h	[%a15] lo:GESM_OpFtState, %d2
	.loc 1 102 0
	movh.a	%a15, hi:GESM_PwrLNfState
	st.h	[%a15] lo:GESM_PwrLNfState, %d2
	.loc 1 103 0
	movh.a	%a15, hi:GESM_PwrLFtState
	.loc 1 105 0
	mov	%d15, 0
	.loc 1 103 0
	st.h	[%a15] lo:GESM_PwrLFtState, %d2
	.loc 1 105 0
	movh.a	%a15, hi:GESM_u16CmdReq
	st.h	[%a15] lo:GESM_u16CmdReq, %d15
	.loc 1 106 0
	movh.a	%a15, hi:GESM_u16CmdReqNm1
	st.h	[%a15] lo:GESM_u16CmdReqNm1, %d15
	.loc 1 107 0
	movh.a	%a15, hi:GESM_u16CmdRes
	st.h	[%a15] lo:GESM_u16CmdRes, %d15
	.loc 1 109 0
	movh.a	%a15, hi:GESM_EsmMode
	st.h	[%a15] lo:GESM_EsmMode, %d2
	.loc 1 110 0
	movh.a	%a15, hi:GESM_bCallAppliOn
	st.b	[%a15] lo:GESM_bCallAppliOn, %d15
	.loc 1 111 0
	movh.a	%a15, hi:GESM_bPwrLNfClrFltFinsh
	st.b	[%a15] lo:GESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 112 0
	movh.a	%a15, hi:GESM_bPwrDnReadyFlg
	st.b	[%a15] lo:GESM_bPwrDnReadyFlg, %d15
	.loc 1 113 0
	movh.a	%a15, hi:GESM_u8PwrLNfStep
	st.b	[%a15] lo:GESM_u8PwrLNfStep, %d15
	.loc 1 114 0
	movh.a	%a15, hi:GESM_u8PwrOffTim
	st.b	[%a15] lo:GESM_u8PwrOffTim, %d15
	.loc 1 115 0
	movh.a	%a15, hi:GESM_u8AllowPwrDnDelay
	st.b	[%a15] lo:GESM_u8AllowPwrDnDelay, %d15
	.loc 1 116 0
	movh.a	%a15, hi:GESM_bMcuEnaReq
	st.b	[%a15] lo:GESM_bMcuEnaReq, %d15
	.loc 1 117 0
	movh.a	%a15, hi:GESM_bAfterrunReq
	st.b	[%a15] lo:GESM_bAfterrunReq, %d15
	.loc 1 118 0
	movh.a	%a15, hi:GESM_bAfterrunFin
	st.b	[%a15] lo:GESM_bAfterrunFin, %d15
	.loc 1 119 0
	movh.a	%a15, hi:GESM_u16AfterrunCnt
	st.h	[%a15] lo:GESM_u16AfterrunCnt, %d15
	.loc 1 120 0
	movh.a	%a15, hi:GESM_u8RestartDelayCnt
	st.b	[%a15] lo:GESM_u8RestartDelayCnt, %d15
	.loc 1 121 0
	movh.a	%a15, hi:GESM_u16OpDelayTime
	st.h	[%a15] lo:GESM_u16OpDelayTime, %d15
	.loc 1 122 0
	movh.a	%a15, hi:GESM_u16OpTimeout
	st.h	[%a15] lo:GESM_u16OpTimeout, %d15
	.loc 1 124 0
	j	GESMSRV_vidVSIInit
.LVL0:
.LFE412:
	.size	GESM_vidInit, .-GESM_vidInit
.section .text.GESM_vidInitNf,"ax",@progbits
	.align 1
	.global	GESM_vidInitNf
	.type	GESM_vidInitNf, @function
GESM_vidInitNf:
.LFB413:
	.loc 1 137 0
	ret
.LFE413:
	.size	GESM_vidInitNf, .-GESM_vidInitNf
.section .text.GESM_vidInitFt,"ax",@progbits
	.align 1
	.global	GESM_vidInitFt
	.type	GESM_vidInitFt, @function
GESM_vidInitFt:
.LFB414:
	.loc 1 150 0
	ret
.LFE414:
	.size	GESM_vidInitFt, .-GESM_vidInitFt
.section .text.GESM_vidStfStpI,"ax",@progbits
	.align 1
	.global	GESM_vidStfStpI
	.type	GESM_vidStfStpI, @function
GESM_vidStfStpI:
.LFB415:
	.loc 1 164 0
	.loc 1 165 0
	movh.a	%a15, hi:GESM_StpIState
	ld.hu	%d15, [%a15] lo:GESM_StpIState
	jeq	%d15, 1, .L6
	mov	%d2, 16384
	jne	%d15, %d2, .L14
.L4:
	ret
.L14:
	.loc 1 193 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_StpIState, %d15
	ret
.L6:
	.loc 1 174 0
	mov	%d4, 2
	call	GESMSRV_bGetCmdReq
.LVL1:
	jz	%d2, .L4
	.loc 1 179 0
	mov	%d4, 2
	.loc 1 180 0
	mov	%d15, 16384
	.loc 1 179 0
	call	GESMSRV_vidSetCmdRes
.LVL2:
	.loc 1 180 0
	st.h	[%a15] lo:GESM_StpIState, %d15
	ret
.LFE415:
	.size	GESM_vidStfStpI, .-GESM_vidStfStpI
.section .text.GESM_vidStfStpII,"ax",@progbits
	.align 1
	.global	GESM_vidStfStpII
	.type	GESM_vidStfStpII, @function
GESM_vidStfStpII:
.LFB416:
	.loc 1 208 0
	.loc 1 209 0
	movh.a	%a15, hi:GESM_EsmMode
	ld.hu	%d15, [%a15] lo:GESM_EsmMode
	jeq	%d15, 1, .L17
	jne	%d15, 4, .L29
.LBB14:
.LBB15:
	.loc 1 302 0
	movh.a	%a15, hi:GESM_StpIIFtState
	ld.hu	%d2, [%a15] lo:GESM_StpIIFtState
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
	.loc 1 235 0
	movh.a	%a15, hi:GESM_StpIINfState
	ld.hu	%d2, [%a15] lo:GESM_StpIINfState
	jeq	%d2, 2, .L20
	jlt.u	%d2, 3, .L31
	jeq	%d2, 4, .L23
	mov	%d15, 16384
	jeq	%d2, %d15, .L15
.L19:
	.loc 1 284 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	ret
.L31:
	.loc 1 235 0
	jne	%d2, 1, .L19
.LBB23:
.LBB24:
	.loc 1 250 0
	mov	%d4, 5
	call	GCCU6_vidSetPwmModReq
.LVL3:
	.loc 1 255 0
	mov	%d15, 2
	.loc 1 252 0
	mov	%d4, 1000
	call	GRESBSL_vidConfig
.LVL4:
	.loc 1 255 0
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	ret
.L30:
.LBE24:
.LBE23:
.LBE22:
.LBE21:
.LBB27:
.LBB18:
	.loc 1 302 0
	jne	%d2, 1, .L24
.LBB16:
.LBB17:
	.loc 1 314 0
	mov	%d4, 6
	call	GCCU6_vidSetPwmModReq
.LVL5:
	.loc 1 319 0
	mov	%d15, 2
	.loc 1 316 0
	mov	%d4, 1000
	call	GRESBSL_vidConfig
.LVL6:
	.loc 1 319 0
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	ret
.L24:
.LBE17:
.LBE16:
	.loc 1 349 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	ret
.L23:
.LBE18:
.LBE27:
.LBB28:
.LBB25:
	.loc 1 271 0
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 272 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	ret
.L28:
.LBE25:
.LBE28:
.LBB29:
.LBB19:
	.loc 1 336 0
	mov	%d15, 1
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 337 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	ret
.L20:
.LBE19:
.LBE29:
.LBB30:
.LBB26:
	.loc 1 263 0
	mov	%d4, 0
	.loc 1 264 0
	mov	%d15, 4
	.loc 1 263 0
	call	GCCU6_vidSetPwmModReq
.LVL7:
	.loc 1 264 0
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	ret
.L25:
.LBE26:
.LBE30:
.LBB31:
.LBB20:
	.loc 1 326 0
	mov	%d4, 0
	call	GCCU6_vidSetPwmModReq
.LVL8:
	.loc 1 327 0
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	ret
.LBE20:
.LBE31:
.LFE416:
	.size	GESM_vidStfStpII, .-GESM_vidStfStpII
.section .text.GESM_vidStfStpIINf,"ax",@progbits
	.align 1
	.global	GESM_vidStfStpIINf
	.type	GESM_vidStfStpIINf, @function
GESM_vidStfStpIINf:
.LFB417:
	.loc 1 234 0
	.loc 1 235 0
	movh.a	%a15, hi:GESM_StpIINfState
	ld.hu	%d15, [%a15] lo:GESM_StpIINfState
	jeq	%d15, 2, .L34
	jlt.u	%d15, 3, .L39
	jeq	%d15, 4, .L37
	mov	%d2, 16384
	jne	%d15, %d2, .L33
	ret
.L37:
	.loc 1 271 0
	mov	%d15, 1
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 272 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	.loc 1 273 0
	ret
.L33:
	.loc 1 284 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	ret
.L39:
	.loc 1 235 0
	jne	%d15, 1, .L33
.LBB34:
.LBB35:
	.loc 1 250 0
	mov	%d4, 5
	call	GCCU6_vidSetPwmModReq
.LVL9:
	.loc 1 255 0
	mov	%d15, 2
	.loc 1 252 0
	mov	%d4, 1000
	call	GRESBSL_vidConfig
.LVL10:
	.loc 1 255 0
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	ret
.L34:
.LBE35:
.LBE34:
	.loc 1 263 0
	mov	%d4, 0
	.loc 1 264 0
	mov	%d15, 4
	.loc 1 263 0
	call	GCCU6_vidSetPwmModReq
.LVL11:
	.loc 1 264 0
	st.h	[%a15] lo:GESM_StpIINfState, %d15
	.loc 1 265 0
	ret
.LFE417:
	.size	GESM_vidStfStpIINf, .-GESM_vidStfStpIINf
.section .text.GESM_vidStfStpIIFt,"ax",@progbits
	.align 1
	.global	GESM_vidStfStpIIFt
	.type	GESM_vidStfStpIIFt, @function
GESM_vidStfStpIIFt:
.LFB418:
	.loc 1 299 0
	.loc 1 302 0
	movh.a	%a15, hi:GESM_StpIIFtState
	ld.hu	%d15, [%a15] lo:GESM_StpIIFtState
	jeq	%d15, 2, .L42
	jlt.u	%d15, 3, .L47
	jeq	%d15, 4, .L45
	mov	%d2, 16384
	jne	%d15, %d2, .L41
	ret
.L45:
	.loc 1 336 0
	mov	%d15, 1
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 337 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	.loc 1 338 0
	ret
.L41:
	.loc 1 349 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	ret
.L47:
	.loc 1 302 0
	jne	%d15, 1, .L41
.LBB38:
.LBB39:
	.loc 1 314 0
	mov	%d4, 6
	call	GCCU6_vidSetPwmModReq
.LVL12:
	.loc 1 319 0
	mov	%d15, 2
	.loc 1 316 0
	mov	%d4, 1000
	call	GRESBSL_vidConfig
.LVL13:
	.loc 1 319 0
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	ret
.L42:
.LBE39:
.LBE38:
	.loc 1 326 0
	mov	%d4, 0
	.loc 1 327 0
	mov	%d15, 4
	.loc 1 326 0
	call	GCCU6_vidSetPwmModReq
.LVL14:
	.loc 1 327 0
	st.h	[%a15] lo:GESM_StpIIFtState, %d15
	.loc 1 328 0
	ret
.LFE418:
	.size	GESM_vidStfStpIIFt, .-GESM_vidStfStpIIFt
.section .text.GESM_vidStfOp,"ax",@progbits
	.align 1
	.global	GESM_vidStfOp
	.type	GESM_vidStfOp, @function
GESM_vidStfOp:
.LFB419:
	.loc 1 364 0
	.loc 1 365 0
	movh.a	%a15, hi:GESM_EsmMode
	ld.hu	%d15, [%a15] lo:GESM_EsmMode
	jeq	%d15, 1, .L50
	jne	%d15, 4, .L107
.LBB52:
.LBB53:
	.loc 1 506 0
	movh.a	%a12, hi:GESM_OpFtState
	ld.hu	%d2, [%a12] lo:GESM_OpFtState
	jeq	%d2, 4, .L70
	jge.u	%d2, 5, .L71
	jeq	%d2, 1, .L72
	jne	%d2, 2, .L69
	.loc 1 574 0
	mov	%d4, 1
	.loc 1 575 0
	mov	%d15, 1
	.loc 1 574 0
	call	GCCU6_vidSetPwmModReq
.LVL15:
	.loc 1 575 0
	st.h	[%a12] lo:GESM_OpFtState, %d15
	ret
.L107:
	ret
.L50:
.LBE53:
.LBE52:
.LBB78:
.LBB79:
	.loc 1 391 0
	movh.a	%a12, hi:GESM_OpNfState
	ld.hu	%d2, [%a12] lo:GESM_OpNfState
	eq	%d3, %d2, 8
	jnz	%d3, .L53
	jge.u	%d2, 9, .L54
	jeq	%d2, 1, .L55
	jne	%d2, 4, .L52
	.loc 1 461 0
	mov	%d4, 0
	call	GCCU6_vidSetPwmModReq
.LVL16:
	.loc 1 462 0
	st.h	[%a12] lo:GESM_OpNfState, %d15
	ret
.L71:
.LBE79:
.LBE78:
.LBB95:
.LBB72:
	.loc 1 506 0
	eq	%d15, %d2, 8
	jnz	%d15, .L74
	mov	%d15, 4096
	jne	%d2, %d15, .L69
.LBB54:
.LBB55:
	.loc 1 694 0
	movh.a	%a12, hi:GESM_PwrLFtState
	ld.hu	%d15, [%a12] lo:GESM_PwrLFtState
	jeq	%d15, 2, .L91
	mov	%d2, 16384
	jeq	%d15, %d2, .L48
	jeq	%d15, 1, .L108
	.loc 1 723 0
	mov	%d15, 1
	st.h	[%a12] lo:GESM_PwrLFtState, %d15
	ret
.L54:
.LBE55:
.LBE54:
.LBE72:
.LBE95:
.LBB96:
.LBB90:
	.loc 1 391 0
	mov	%d15, 8192
	jeq	%d2, %d15, .L48
	mov	%d15, 16384
	jne	%d2, %d15, .L52
.L48:
	ret
.L52:
	.loc 1 490 0
	mov	%d15, 1
	st.h	[%a12] lo:GESM_OpNfState, %d15
	ret
.L53:
	.loc 1 469 0
	mov	%d4, 3
	call	GCCU6_vidSetPwmModReq
.LVL17:
	.loc 1 470 0
	st.h	[%a12] lo:GESM_OpNfState, %d15
	ret
.L55:
.LBB80:
.LBB81:
	.loc 1 400 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReq
.LVL18:
	jz	%d2, .L57
	.loc 1 402 0
	mov	%d15, 4
	st.h	[%a12] lo:GESM_OpNfState, %d15
.L58:
	.loc 1 433 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReqNm1
.LVL19:
	jnz	%d2, .L109
.L62:
	.loc 1 440 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReqNm1
.LVL20:
	jnz	%d2, .L110
.L65:
	.loc 1 447 0
	mov	%d4, 8
	call	GESMSRV_bGetCmdReqNm1
.LVL21:
	jnz	%d2, .L111
.L67:
	.loc 1 451 0
	mov	%d4, 4
	call	GESMSRV_bGetCmdReqNm1
.LVL22:
	jz	%d2, .L48
	.loc 1 453 0
	mov	%d4, 4
	j	GESMSRV_vidSetCmdRes
.LVL23:
.L74:
.LBE81:
.LBE80:
.LBE90:
.LBE96:
.LBB97:
.LBB73:
	.loc 1 590 0
	mov	%d4, 3
	.loc 1 591 0
	mov	%d15, 1
	.loc 1 590 0
	call	GCCU6_vidSetPwmModReq
.LVL24:
	.loc 1 591 0
	st.h	[%a12] lo:GESM_OpFtState, %d15
	ret
.L70:
	.loc 1 582 0
	mov	%d4, 0
	.loc 1 583 0
	mov	%d15, 1
	.loc 1 582 0
	call	GCCU6_vidSetPwmModReq
.LVL25:
	.loc 1 583 0
	st.h	[%a12] lo:GESM_OpFtState, %d15
	ret
.L69:
	.loc 1 602 0
	mov	%d15, 1
	st.h	[%a12] lo:GESM_OpFtState, %d15
	ret
.L72:
.LBB60:
.LBB61:
	.loc 1 515 0
	mov	%d4, 256
	call	GESMSRV_bGetCmdReq
.LVL26:
	jz	%d2, .L76
	.loc 1 517 0
	mov	%d15, 2
	st.h	[%a12] lo:GESM_OpFtState, %d15
.L77:
	.loc 1 543 0
	mov	%d4, 256
	call	GESMSRV_bGetCmdReqNm1
.LVL27:
	jnz	%d2, .L112
.L81:
	.loc 1 550 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReqNm1
.LVL28:
	jnz	%d2, .L113
.L84:
	.loc 1 557 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReqNm1
.LVL29:
	jnz	%d2, .L114
.L87:
	.loc 1 564 0
	mov	%d4, 16
	call	GESMSRV_bGetCmdReqNm1
.LVL30:
	jz	%d2, .L48
	.loc 1 566 0
	mov	%d4, 16
	j	GESMSRV_vidSetCmdRes
.LVL31:
.L57:
.LBE61:
.LBE60:
.LBE73:
.LBE97:
.LBB98:
.LBB91:
.LBB86:
.LBB82:
	.loc 1 406 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReq
.LVL32:
	jz	%d2, .L59
	.loc 1 408 0
	mov	%d15, 8
	st.h	[%a12] lo:GESM_OpNfState, %d15
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
	.loc 1 521 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReq
.LVL33:
	jz	%d2, .L115
.L106:
	.loc 1 535 0
	st.h	[%a12] lo:GESM_OpFtState, %d15
	j	.L77
.L91:
.LBE62:
.LBE66:
.LBB67:
.LBB58:
	.loc 1 710 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_EsmMode, %d15
	.loc 1 711 0
	mov	%d15, 16384
	st.h	[%a12] lo:GESM_PwrLFtState, %d15
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
	.loc 1 449 0
	mov	%d4, 8
	call	GESMSRV_vidSetCmdRes
.LVL34:
	j	.L67
.L110:
	.loc 1 442 0
	call	GCCU6_u8GetPwmState
.LVL35:
	jne	%d2, 3, .L65
	.loc 1 444 0
	mov	%d4, 512
	call	GESMSRV_vidSetCmdRes
.LVL36:
	j	.L65
.L109:
	.loc 1 435 0
	call	GCCU6_u8GetPwmState
.LVL37:
	jnz	%d2, .L62
	.loc 1 437 0
	mov	%d4, 1024
	call	GESMSRV_vidSetCmdRes
.LVL38:
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
	.loc 1 559 0
	call	GCCU6_u8GetPwmState
.LVL39:
	jne	%d2, 3, .L87
	.loc 1 561 0
	mov	%d4, 512
	call	GESMSRV_vidSetCmdRes
.LVL40:
	j	.L87
.L113:
	.loc 1 552 0
	call	GCCU6_u8GetPwmState
.LVL41:
	jnz	%d2, .L84
	.loc 1 554 0
	mov	%d4, 1024
	call	GESMSRV_vidSetCmdRes
.LVL42:
	j	.L84
.L112:
	.loc 1 545 0
	call	GCCU6_u8GetPwmState
.LVL43:
	jne	%d2, 1, .L81
	.loc 1 547 0
	mov	%d4, 256
	call	GESMSRV_vidSetCmdRes
.LVL44:
	j	.L81
.L108:
.LBE63:
.LBE68:
.LBB69:
.LBB59:
.LBB56:
.LBB57:
	.loc 1 701 0
	mov	%d15, 0
	movh.a	%a15, hi:GESM_bCallAppliOn
	st.b	[%a15] lo:GESM_bCallAppliOn, %d15
	.loc 1 702 0
	mov	%d4, 0
	.loc 1 703 0
	mov	%d15, 2
	.loc 1 702 0
	call	GCCU6_vidSetPwmModReq
.LVL45:
	.loc 1 703 0
	st.h	[%a12] lo:GESM_PwrLFtState, %d15
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
	.loc 1 412 0
	mov	%d4, 8
	call	GESMSRV_bGetCmdReq
.LVL46:
	mov	%d15, %d2
	jz	%d2, .L60
	.loc 1 417 0
	mov	%d15, 4
	st.h	[%a15] lo:GESM_EsmMode, %d15
	.loc 1 418 0
	mov	%d15, 8192
	st.h	[%a12] lo:GESM_OpNfState, %d15
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
	.loc 1 527 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReq
.LVL47:
	jz	%d2, .L79
	.loc 1 529 0
	mov	%d15, 8
	st.h	[%a12] lo:GESM_OpFtState, %d15
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
	.loc 1 422 0
	mov	%d4, 4
	call	GESMSRV_bGetCmdReq
.LVL48:
	jz	%d2, .L58
	.loc 1 424 0
	movh.a	%a15, hi:GESM_bPwrLNfClrFltFinsh
	st.b	[%a15] lo:GESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 425 0
	mov	%d15, 16384
	st.h	[%a12] lo:GESM_OpNfState, %d15
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
	.loc 1 533 0
	mov	%d4, 16
	call	GESMSRV_bGetCmdReq
.LVL49:
	jz	%d2, .L77
	.loc 1 535 0
	mov	%d15, 4096
	j	.L106
.LBE65:
.LBE71:
.LBE77:
.LBE105:
.LFE419:
	.size	GESM_vidStfOp, .-GESM_vidStfOp
.section .text.GESM_vidStfOpNf,"ax",@progbits
	.align 1
	.global	GESM_vidStfOpNf
	.type	GESM_vidStfOpNf, @function
GESM_vidStfOpNf:
.LFB420:
	.loc 1 390 0
	.loc 1 391 0
	movh.a	%a15, hi:GESM_OpNfState
	ld.hu	%d15, [%a15] lo:GESM_OpNfState
	eq	%d2, %d15, 8
	jnz	%d2, .L118
	jge.u	%d15, 9, .L119
	jeq	%d15, 1, .L120
	jne	%d15, 4, .L117
	.loc 1 461 0
	mov	%d4, 0
	.loc 1 462 0
	mov	%d15, 1
	.loc 1 461 0
	call	GCCU6_vidSetPwmModReq
.LVL50:
	.loc 1 462 0
	st.h	[%a15] lo:GESM_OpNfState, %d15
	.loc 1 463 0
	ret
.L120:
.LBB108:
.LBB109:
	.loc 1 400 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReq
.LVL51:
	jz	%d2, .L123
	.loc 1 402 0
	mov	%d15, 4
	st.h	[%a15] lo:GESM_OpNfState, %d15
.L124:
	.loc 1 433 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReqNm1
.LVL52:
	jnz	%d2, .L143
.L128:
	.loc 1 440 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReqNm1
.LVL53:
	jnz	%d2, .L144
.L131:
	.loc 1 447 0
	mov	%d4, 8
	call	GESMSRV_bGetCmdReqNm1
.LVL54:
	jnz	%d2, .L145
.L133:
	.loc 1 451 0
	mov	%d4, 4
	call	GESMSRV_bGetCmdReqNm1
.LVL55:
	jz	%d2, .L116
	.loc 1 453 0
	mov	%d4, 4
	j	GESMSRV_vidSetCmdRes
.LVL56:
.L119:
.LBE109:
.LBE108:
	.loc 1 391 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L116
	mov	%d2, 16384
	jne	%d15, %d2, .L117
.L116:
	ret
.L117:
	.loc 1 490 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_OpNfState, %d15
	ret
.L118:
	.loc 1 469 0
	mov	%d4, 3
	.loc 1 470 0
	mov	%d15, 1
	.loc 1 469 0
	call	GCCU6_vidSetPwmModReq
.LVL57:
	.loc 1 470 0
	st.h	[%a15] lo:GESM_OpNfState, %d15
	.loc 1 471 0
	ret
.L123:
.LBB111:
.LBB110:
	.loc 1 406 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReq
.LVL58:
	jz	%d2, .L125
	.loc 1 408 0
	mov	%d15, 8
	st.h	[%a15] lo:GESM_OpNfState, %d15
	j	.L124
.L145:
	.loc 1 449 0
	mov	%d4, 8
	call	GESMSRV_vidSetCmdRes
.LVL59:
	j	.L133
.L144:
	.loc 1 442 0
	call	GCCU6_u8GetPwmState
.LVL60:
	jne	%d2, 3, .L131
	.loc 1 444 0
	mov	%d4, 512
	call	GESMSRV_vidSetCmdRes
.LVL61:
	j	.L131
.L143:
	.loc 1 435 0
	call	GCCU6_u8GetPwmState
.LVL62:
	jnz	%d2, .L128
	.loc 1 437 0
	mov	%d4, 1024
	call	GESMSRV_vidSetCmdRes
.LVL63:
	j	.L128
.L125:
	.loc 1 412 0
	mov	%d4, 8
	call	GESMSRV_bGetCmdReq
.LVL64:
	mov	%d15, %d2
	jz	%d2, .L126
	.loc 1 417 0
	mov	%d15, 4
	movh.a	%a2, hi:GESM_EsmMode
	st.h	[%a2] lo:GESM_EsmMode, %d15
	.loc 1 418 0
	mov	%d15, 8192
	st.h	[%a15] lo:GESM_OpNfState, %d15
	j	.L124
.L126:
	.loc 1 422 0
	mov	%d4, 4
	call	GESMSRV_bGetCmdReq
.LVL65:
	jz	%d2, .L124
	.loc 1 424 0
	movh.a	%a2, hi:GESM_bPwrLNfClrFltFinsh
	st.b	[%a2] lo:GESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 425 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_OpNfState, %d15
	j	.L124
.LBE110:
.LBE111:
.LFE420:
	.size	GESM_vidStfOpNf, .-GESM_vidStfOpNf
.section .text.GESM_vidStfOpFt,"ax",@progbits
	.align 1
	.global	GESM_vidStfOpFt
	.type	GESM_vidStfOpFt, @function
GESM_vidStfOpFt:
.LFB421:
	.loc 1 505 0
	.loc 1 506 0
	movh.a	%a15, hi:GESM_OpFtState
	ld.hu	%d15, [%a15] lo:GESM_OpFtState
	jeq	%d15, 4, .L148
	jge.u	%d15, 5, .L149
	jeq	%d15, 1, .L150
	jne	%d15, 2, .L147
	.loc 1 574 0
	mov	%d4, 1
	.loc 1 575 0
	mov	%d15, 1
	.loc 1 574 0
	call	GCCU6_vidSetPwmModReq
.LVL66:
	.loc 1 575 0
	st.h	[%a15] lo:GESM_OpFtState, %d15
	.loc 1 576 0
	ret
.L149:
	.loc 1 506 0
	eq	%d2, %d15, 8
	jnz	%d2, .L152
	mov	%d2, 4096
	jne	%d15, %d2, .L147
.LBB118:
.LBB119:
	.loc 1 694 0
	movh.a	%a15, hi:GESM_PwrLFtState
	ld.hu	%d15, [%a15] lo:GESM_PwrLFtState
	jeq	%d15, 2, .L169
	mov	%d2, 16384
	jeq	%d15, %d2, .L146
	jeq	%d15, 1, .L178
	.loc 1 723 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_PwrLFtState, %d15
	ret
.L147:
.LBE119:
.LBE118:
	.loc 1 602 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_OpFtState, %d15
.L146:
	ret
.L152:
	.loc 1 590 0
	mov	%d4, 3
	.loc 1 591 0
	mov	%d15, 1
	.loc 1 590 0
	call	GCCU6_vidSetPwmModReq
.LVL67:
	.loc 1 591 0
	st.h	[%a15] lo:GESM_OpFtState, %d15
	.loc 1 592 0
	ret
.L150:
.LBB123:
.LBB124:
	.loc 1 515 0
	mov	%d4, 256
	call	GESMSRV_bGetCmdReq
.LVL68:
	jz	%d2, .L154
	.loc 1 517 0
	mov	%d15, 2
	st.h	[%a15] lo:GESM_OpFtState, %d15
.L155:
	.loc 1 543 0
	mov	%d4, 256
	call	GESMSRV_bGetCmdReqNm1
.LVL69:
	jnz	%d2, .L179
.L159:
	.loc 1 550 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReqNm1
.LVL70:
	jnz	%d2, .L180
.L162:
	.loc 1 557 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReqNm1
.LVL71:
	jnz	%d2, .L181
.L165:
	.loc 1 564 0
	mov	%d4, 16
	call	GESMSRV_bGetCmdReqNm1
.LVL72:
	jz	%d2, .L146
	.loc 1 566 0
	mov	%d4, 16
	j	GESMSRV_vidSetCmdRes
.LVL73:
.L148:
.LBE124:
.LBE123:
	.loc 1 582 0
	mov	%d4, 0
	.loc 1 583 0
	mov	%d15, 1
	.loc 1 582 0
	call	GCCU6_vidSetPwmModReq
.LVL74:
	.loc 1 583 0
	st.h	[%a15] lo:GESM_OpFtState, %d15
	.loc 1 584 0
	ret
.L181:
.LBB127:
.LBB125:
	.loc 1 559 0
	call	GCCU6_u8GetPwmState
.LVL75:
	jne	%d2, 3, .L165
	.loc 1 561 0
	mov	%d4, 512
	call	GESMSRV_vidSetCmdRes
.LVL76:
	j	.L165
.L180:
	.loc 1 552 0
	call	GCCU6_u8GetPwmState
.LVL77:
	jnz	%d2, .L162
	.loc 1 554 0
	mov	%d4, 1024
	call	GESMSRV_vidSetCmdRes
.LVL78:
	j	.L162
.L179:
	.loc 1 545 0
	call	GCCU6_u8GetPwmState
.LVL79:
	jne	%d2, 1, .L159
	.loc 1 547 0
	mov	%d4, 256
	call	GESMSRV_vidSetCmdRes
.LVL80:
	j	.L159
.L154:
	.loc 1 521 0
	mov	%d4, 1024
	call	GESMSRV_bGetCmdReq
.LVL81:
	jz	%d2, .L156
	.loc 1 523 0
	mov	%d15, 4
	st.h	[%a15] lo:GESM_OpFtState, %d15
	j	.L155
.L178:
.LBE125:
.LBE127:
.LBB128:
.LBB122:
.LBB120:
.LBB121:
	.loc 1 701 0
	mov	%d15, 0
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 702 0
	mov	%d4, 0
	.loc 1 703 0
	mov	%d15, 2
	.loc 1 702 0
	call	GCCU6_vidSetPwmModReq
.LVL82:
	.loc 1 703 0
	st.h	[%a15] lo:GESM_PwrLFtState, %d15
	ret
.L169:
.LBE121:
.LBE120:
	.loc 1 710 0
	mov	%d15, 1
	movh.a	%a2, hi:GESM_EsmMode
	st.h	[%a2] lo:GESM_EsmMode, %d15
	.loc 1 711 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_PwrLFtState, %d15
	ret
.L156:
.LBE122:
.LBE128:
.LBB129:
.LBB126:
	.loc 1 527 0
	mov	%d4, 512
	call	GESMSRV_bGetCmdReq
.LVL83:
	jz	%d2, .L157
	.loc 1 529 0
	mov	%d15, 8
	st.h	[%a15] lo:GESM_OpFtState, %d15
	j	.L155
.L157:
	.loc 1 533 0
	mov	%d4, 16
	call	GESMSRV_bGetCmdReq
.LVL84:
	jz	%d2, .L155
	.loc 1 535 0
	mov	%d15, 4096
	st.h	[%a15] lo:GESM_OpFtState, %d15
	j	.L155
.LBE126:
.LBE129:
.LFE421:
	.size	GESM_vidStfOpFt, .-GESM_vidStfOpFt
.section .text.GESM_vidStfPwrL,"ax",@progbits
	.align 1
	.global	GESM_vidStfPwrL
	.type	GESM_vidStfPwrL, @function
GESM_vidStfPwrL:
.LFB422:
	.loc 1 617 0
	.loc 1 618 0
	movh.a	%a15, hi:GESM_EsmMode
	ld.hu	%d15, [%a15] lo:GESM_EsmMode
	jeq	%d15, 1, .L191
.L182:
	ret
.L191:
.LBB134:
.LBB135:
	.loc 1 640 0
	movh.a	%a15, hi:GESM_PwrLNfState
	ld.hu	%d15, [%a15] lo:GESM_PwrLNfState
	jeq	%d15, 2, .L182
	jge.u	%d15, 3, .L186
	jne	%d15, 1, .L185
.LBB136:
.LBB137:
	.loc 1 648 0
	mov	%d15, 0
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 649 0
	mov	%d4, 0
	.loc 1 652 0
	mov	%d15, 2
	.loc 1 649 0
	call	GCCU6_vidSetPwmModReq
.LVL85:
	.loc 1 652 0
	st.h	[%a15] lo:GESM_PwrLNfState, %d15
	ret
.L186:
.LBE137:
.LBE136:
	.loc 1 640 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L182
	mov	%d2, 16384
	jeq	%d15, %d2, .L192
.L185:
	.loc 1 678 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_PwrLNfState, %d15
	ret
.L192:
	ret
.LBE135:
.LBE134:
.LFE422:
	.size	GESM_vidStfPwrL, .-GESM_vidStfPwrL
.section .text.GESM_vidStfPwrLNf,"ax",@progbits
	.align 1
	.global	GESM_vidStfPwrLNf
	.type	GESM_vidStfPwrLNf, @function
GESM_vidStfPwrLNf:
.LFB423:
	.loc 1 639 0
	.loc 1 640 0
	movh.a	%a15, hi:GESM_PwrLNfState
	ld.hu	%d15, [%a15] lo:GESM_PwrLNfState
	jeq	%d15, 2, .L193
	jge.u	%d15, 3, .L196
	jne	%d15, 1, .L194
.LBB140:
.LBB141:
	.loc 1 648 0
	mov	%d15, 0
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 649 0
	mov	%d4, 0
	.loc 1 652 0
	mov	%d15, 2
	.loc 1 649 0
	call	GCCU6_vidSetPwmModReq
.LVL86:
	.loc 1 652 0
	st.h	[%a15] lo:GESM_PwrLNfState, %d15
	ret
.L196:
.LBE141:
.LBE140:
	.loc 1 640 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L193
	mov	%d2, 16384
	jeq	%d15, %d2, .L201
.L194:
	.loc 1 678 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_PwrLNfState, %d15
.L193:
	ret
.L201:
	ret
.LFE423:
	.size	GESM_vidStfPwrLNf, .-GESM_vidStfPwrLNf
.section .text.GESM_vidStfPwrLFt,"ax",@progbits
	.align 1
	.global	GESM_vidStfPwrLFt
	.type	GESM_vidStfPwrLFt, @function
GESM_vidStfPwrLFt:
.LFB424:
	.loc 1 693 0
	.loc 1 694 0
	movh.a	%a15, hi:GESM_PwrLFtState
	ld.hu	%d15, [%a15] lo:GESM_PwrLFtState
	jeq	%d15, 2, .L204
	mov	%d2, 16384
	jeq	%d15, %d2, .L202
	jeq	%d15, 1, .L208
	.loc 1 723 0
	mov	%d15, 1
	st.h	[%a15] lo:GESM_PwrLFtState, %d15
.L202:
	ret
.L208:
.LBB144:
.LBB145:
	.loc 1 701 0
	mov	%d15, 0
	movh.a	%a2, hi:GESM_bCallAppliOn
	st.b	[%a2] lo:GESM_bCallAppliOn, %d15
	.loc 1 702 0
	mov	%d4, 0
	.loc 1 703 0
	mov	%d15, 2
	.loc 1 702 0
	call	GCCU6_vidSetPwmModReq
.LVL87:
	.loc 1 703 0
	st.h	[%a15] lo:GESM_PwrLFtState, %d15
	ret
.L204:
.LBE145:
.LBE144:
	.loc 1 710 0
	mov	%d15, 1
	movh.a	%a2, hi:GESM_EsmMode
	st.h	[%a2] lo:GESM_EsmMode, %d15
	.loc 1 711 0
	mov	%d15, 16384
	st.h	[%a15] lo:GESM_PwrLFtState, %d15
	.loc 1 712 0
	ret
.LFE424:
	.size	GESM_vidStfPwrLFt, .-GESM_vidStfPwrLFt
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
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB413
	.uaword	.LFE413-.LFB413
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB414
	.uaword	.LFE414-.LFB414
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB415
	.uaword	.LFE415-.LFB415
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB416
	.uaword	.LFE416-.LFB416
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB417
	.uaword	.LFE417-.LFB417
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB418
	.uaword	.LFE418-.LFB418
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB419
	.uaword	.LFE419-.LFB419
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB420
	.uaword	.LFE420-.LFB420
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB421
	.uaword	.LFE421-.LFB421
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB422
	.uaword	.LFE422-.LFB422
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB423
	.uaword	.LFE423-.LFB423
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB424
	.uaword	.LFE424-.LFB424
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\GSTFSRV\\GSTFSRV_L.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\GSTFSRV\\GSTFSRV.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 7 "bswcdd\\ESM\\GESM\\gesmsrv.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\GCCU6\\GCCU6.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf75
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\GESM\\gesm_1.c"
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
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x213
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.uaword	0x1e1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b7
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x2e2
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x2b8
	.uleb128 0x9
	.byte	0x1
	.string	"GESM_vidInitNf"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"GESM_vidStfStpIINf"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"GESM_vidInitFt"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GESM_vidStfStpIIFt"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GESM_vidStfOpNf"
	.byte	0x1
	.uahalf	0x185
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GESM_vidStfPwrLNf"
	.byte	0x1
	.uahalf	0x27e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GESM_vidStfPwrLFt"
	.byte	0x1
	.uahalf	0x2b4
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GESM_vidStfOpFt"
	.byte	0x1
	.uahalf	0x1f8
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"GESM_vidInit"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	.LFB412
	.uaword	.LFE412
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e6
	.uleb128 0xc
	.uaword	.LVL0
	.byte	0x1
	.uaword	0xe82
	.byte	0
	.uleb128 0xd
	.uaword	0x2fc
	.uaword	.LFB413
	.uaword	.LFE413
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.uaword	0x32a
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"GESM_vidStfStpI"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x450
	.uleb128 0xe
	.uaword	.LVL1
	.uaword	0xe9b
	.uaword	0x440
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.uaword	.LVL2
	.uaword	0xec2
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"GESM_vidStfStpII"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.uaword	.LFB416
	.uaword	.LFE416
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x509
	.uleb128 0x11
	.uaword	0x33f
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd8
	.uaword	0x4c1
	.uleb128 0xe
	.uaword	.LVL5
	.uaword	0xee7
	.uaword	0x49c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0xf0d
	.uaword	0x4b1
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x10
	.uaword	.LVL8
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x311
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xd4
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0xee7
	.uaword	0x4e3
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0xe
	.uaword	.LVL4
	.uaword	0xf0d
	.uaword	0x4f8
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x10
	.uaword	.LVL7
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x311
	.uaword	.LFB417
	.uaword	.LFE417
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x556
	.uleb128 0xe
	.uaword	.LVL9
	.uaword	0xee7
	.uaword	0x531
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0xe
	.uaword	.LVL10
	.uaword	0xf0d
	.uaword	0x546
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x10
	.uaword	.LVL11
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x33f
	.uaword	.LFB418
	.uaword	.LFE418
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5a3
	.uleb128 0xe
	.uaword	.LVL12
	.uaword	0xee7
	.uaword	0x57e
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0xe
	.uaword	.LVL13
	.uaword	0xf0d
	.uaword	0x593
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x10
	.uaword	.LVL14
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"GESM_vidStfOp"
	.byte	0x1
	.uahalf	0x16b
	.byte	0x1
	.uaword	.LFB419
	.uaword	.LFE419
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x87e
	.uleb128 0x15
	.uaword	0x3a2
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x174
	.uaword	0x747
	.uleb128 0x15
	.uaword	0x389
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x256
	.uaword	0x5ff
	.uleb128 0x10
	.uaword	.LVL45
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL15
	.uaword	0xee7
	.uaword	0x612
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.uaword	.LVL24
	.uaword	0xee7
	.uaword	0x625
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL25
	.uaword	0xee7
	.uaword	0x638
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL26
	.uaword	0xe9b
	.uaword	0x64d
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL27
	.uaword	0xf30
	.uaword	0x662
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL28
	.uaword	0xf30
	.uaword	0x677
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL29
	.uaword	0xf30
	.uaword	0x68c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xe
	.uaword	.LVL30
	.uaword	0xf30
	.uaword	0x69f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.uaword	.LVL31
	.byte	0x1
	.uaword	0xec2
	.uaword	0x6b3
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.uaword	.LVL33
	.uaword	0xe9b
	.uaword	0x6c8
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x17
	.uaword	.LVL39
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL40
	.uaword	0xec2
	.uaword	0x6e6
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x17
	.uaword	.LVL41
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL42
	.uaword	0xec2
	.uaword	0x704
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x17
	.uaword	.LVL43
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL44
	.uaword	0xec2
	.uaword	0x722
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL47
	.uaword	0xe9b
	.uaword	0x737
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x10
	.uaword	.LVL49
	.uaword	0xe9b
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x359
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x170
	.uleb128 0xe
	.uaword	.LVL16
	.uaword	0xee7
	.uaword	0x76a
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0xee7
	.uaword	0x77d
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL18
	.uaword	0xe9b
	.uaword	0x792
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL19
	.uaword	0xf30
	.uaword	0x7a7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL20
	.uaword	0xf30
	.uaword	0x7bc
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xe
	.uaword	.LVL21
	.uaword	0xf30
	.uaword	0x7cf
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.uaword	.LVL22
	.uaword	0xf30
	.uaword	0x7e2
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.uaword	.LVL23
	.byte	0x1
	.uaword	0xec2
	.uaword	0x7f6
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.uaword	.LVL32
	.uaword	0xe9b
	.uaword	0x80b
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xe
	.uaword	.LVL34
	.uaword	0xec2
	.uaword	0x81e
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.uaword	.LVL35
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL36
	.uaword	0xec2
	.uaword	0x83c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x17
	.uaword	.LVL37
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL38
	.uaword	0xec2
	.uaword	0x85a
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL46
	.uaword	0xe9b
	.uaword	0x86d
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x10
	.uaword	.LVL48
	.uaword	0xe9b
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x359
	.uaword	.LFB420
	.uaword	.LFE420
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9b9
	.uleb128 0xe
	.uaword	.LVL50
	.uaword	0xee7
	.uaword	0x8a6
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL51
	.uaword	0xe9b
	.uaword	0x8bb
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL52
	.uaword	0xf30
	.uaword	0x8d0
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL53
	.uaword	0xf30
	.uaword	0x8e5
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xe
	.uaword	.LVL54
	.uaword	0xf30
	.uaword	0x8f8
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.uaword	.LVL55
	.uaword	0xf30
	.uaword	0x90b
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.uaword	.LVL56
	.byte	0x1
	.uaword	0xec2
	.uaword	0x91f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.uaword	.LVL57
	.uaword	0xee7
	.uaword	0x932
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL58
	.uaword	0xe9b
	.uaword	0x947
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xe
	.uaword	.LVL59
	.uaword	0xec2
	.uaword	0x95a
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.uaword	.LVL60
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL61
	.uaword	0xec2
	.uaword	0x978
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x17
	.uaword	.LVL62
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL63
	.uaword	0xec2
	.uaword	0x996
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL64
	.uaword	0xe9b
	.uaword	0x9a9
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x10
	.uaword	.LVL65
	.uaword	0xe9b
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3a2
	.uaword	.LFB421
	.uaword	.LFE421
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb3a
	.uleb128 0x15
	.uaword	0x389
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x256
	.uaword	0x9f2
	.uleb128 0x10
	.uaword	.LVL82
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL66
	.uaword	0xee7
	.uaword	0xa05
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.uaword	.LVL67
	.uaword	0xee7
	.uaword	0xa18
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL68
	.uaword	0xe9b
	.uaword	0xa2d
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL69
	.uaword	0xf30
	.uaword	0xa42
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL70
	.uaword	0xf30
	.uaword	0xa57
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL71
	.uaword	0xf30
	.uaword	0xa6c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0xe
	.uaword	.LVL72
	.uaword	0xf30
	.uaword	0xa7f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.uaword	.LVL73
	.byte	0x1
	.uaword	0xec2
	.uaword	0xa93
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.uaword	.LVL74
	.uaword	0xee7
	.uaword	0xaa6
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.uaword	.LVL75
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL76
	.uaword	0xec2
	.uaword	0xac4
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x17
	.uaword	.LVL77
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL78
	.uaword	0xec2
	.uaword	0xae2
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x17
	.uaword	.LVL79
	.uaword	0xf5a
	.uleb128 0xe
	.uaword	.LVL80
	.uaword	0xec2
	.uaword	0xb00
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL81
	.uaword	0xe9b
	.uaword	0xb15
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0xe
	.uaword	.LVL83
	.uaword	0xe9b
	.uaword	0xb2a
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x10
	.uaword	.LVL84
	.uaword	0xe9b
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"GESM_vidStfPwrL"
	.byte	0x1
	.uahalf	0x268
	.byte	0x1
	.uaword	.LFB422
	.uaword	.LFE422
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb81
	.uleb128 0x19
	.uaword	0x370
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.uahalf	0x26d
	.uleb128 0x10
	.uaword	.LVL85
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x370
	.uaword	.LFB423
	.uaword	.LFE423
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xba6
	.uleb128 0x10
	.uaword	.LVL86
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x389
	.uaword	.LFB424
	.uaword	.LFE424
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbcb
	.uleb128 0x10
	.uaword	.LVL87
	.uaword	0xee7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.string	"GESM_u8AllowPwrDnDelay"
	.byte	0x4
	.byte	0x40
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u8PwrLNfStep"
	.byte	0x4
	.byte	0x41
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u8PwrOffTim"
	.byte	0x4
	.byte	0x42
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_EsmMode"
	.byte	0x5
	.byte	0x57
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_bAfterrunFin"
	.byte	0x5
	.byte	0x58
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_bAfterrunReq"
	.byte	0x5
	.byte	0x59
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_bCallAppliOn"
	.byte	0x5
	.byte	0x5a
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_bMcuEnaReq"
	.byte	0x5
	.byte	0x5b
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_bPwrDnReadyFlg"
	.byte	0x5
	.byte	0x5c
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_bPwrLNfClrFltFinsh"
	.byte	0x5
	.byte	0x5d
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_OpFtState"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_OpNfState"
	.byte	0x5
	.byte	0x5f
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_PwrLFtState"
	.byte	0x5
	.byte	0x60
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_PwrLNfState"
	.byte	0x5
	.byte	0x61
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u16OpDelayTime"
	.byte	0x5
	.byte	0x62
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u16OpTimeout"
	.byte	0x5
	.byte	0x63
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_StpIIFtState"
	.byte	0x5
	.byte	0x64
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_StpIINfState"
	.byte	0x5
	.byte	0x65
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_StpIState"
	.byte	0x5
	.byte	0x66
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u16AfterrunCnt"
	.byte	0x5
	.byte	0x67
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u16CmdReq"
	.byte	0x5
	.byte	0x68
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u16CmdReqNm1"
	.byte	0x5
	.byte	0x69
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u16CmdRes"
	.byte	0x5
	.byte	0x6a
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"GESM_u8RestartDelayCnt"
	.byte	0x5
	.byte	0x6b
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x2e2
	.uaword	0xe60
	.uleb128 0x1c
	.uaword	0x298
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xaa
	.uaword	0xe7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xe50
	.uleb128 0x1d
	.byte	0x1
	.string	"GESMSRV_vidVSIInit"
	.byte	0x7
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"GESMSRV_bGetCmdReq"
	.byte	0x7
	.byte	0x57
	.byte	0x1
	.uaword	0x268
	.byte	0x1
	.uaword	0xec2
	.uleb128 0x1f
	.uaword	0x1e1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"GESMSRV_vidSetCmdRes"
	.byte	0x7
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uaword	0xee7
	.uleb128 0x1f
	.uaword	0x1e1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"GCCU6_vidSetPwmModReq"
	.byte	0x8
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uaword	0xf0d
	.uleb128 0x1f
	.uaword	0x2a4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"GRESBSL_vidConfig"
	.byte	0x9
	.uahalf	0x12c
	.byte	0x1
	.byte	0x1
	.uaword	0xf30
	.uleb128 0x1f
	.uaword	0x1e1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"GESMSRV_bGetCmdReqNm1"
	.byte	0x7
	.byte	0x58
	.byte	0x1
	.uaword	0x268
	.byte	0x1
	.uaword	0xf5a
	.uleb128 0x1f
	.uaword	0x1e1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"GCCU6_u8GetPwmState"
	.byte	0x8
	.byte	0x5e
	.byte	0x1
	.uaword	0x1b6
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.uaword	.LFB413
	.uaword	.LFE413-.LFB413
	.uaword	.LFB414
	.uaword	.LFE414-.LFB414
	.uaword	.LFB415
	.uaword	.LFE415-.LFB415
	.uaword	.LFB416
	.uaword	.LFE416-.LFB416
	.uaword	.LFB417
	.uaword	.LFE417-.LFB417
	.uaword	.LFB418
	.uaword	.LFE418-.LFB418
	.uaword	.LFB419
	.uaword	.LFE419-.LFB419
	.uaword	.LFB420
	.uaword	.LFE420-.LFB420
	.uaword	.LFB421
	.uaword	.LFE421-.LFB421
	.uaword	.LFB422
	.uaword	.LFE422-.LFB422
	.uaword	.LFB423
	.uaword	.LFE423-.LFB423
	.uaword	.LFB424
	.uaword	.LFE424-.LFB424
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
	.uaword	.LFB412
	.uaword	.LFE412
	.uaword	.LFB413
	.uaword	.LFE413
	.uaword	.LFB414
	.uaword	.LFE414
	.uaword	.LFB415
	.uaword	.LFE415
	.uaword	.LFB416
	.uaword	.LFE416
	.uaword	.LFB417
	.uaword	.LFE417
	.uaword	.LFB418
	.uaword	.LFE418
	.uaword	.LFB419
	.uaword	.LFE419
	.uaword	.LFB420
	.uaword	.LFE420
	.uaword	.LFB421
	.uaword	.LFE421
	.uaword	.LFB422
	.uaword	.LFE422
	.uaword	.LFB423
	.uaword	.LFE423
	.uaword	.LFB424
	.uaword	.LFE424
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	GCCU6_u8GetPwmState,STT_FUNC,0
	.extern	GESMSRV_bGetCmdReqNm1,STT_FUNC,0
	.extern	GRESBSL_vidConfig,STT_FUNC,0
	.extern	GCCU6_vidSetPwmModReq,STT_FUNC,0
	.extern	GESMSRV_vidSetCmdRes,STT_FUNC,0
	.extern	GESMSRV_bGetCmdReq,STT_FUNC,0
	.extern	GESMSRV_vidVSIInit,STT_FUNC,0
	.extern	GESM_u16OpTimeout,STT_OBJECT,2
	.extern	GESM_u16OpDelayTime,STT_OBJECT,2
	.extern	GESM_u8RestartDelayCnt,STT_OBJECT,1
	.extern	GESM_u16AfterrunCnt,STT_OBJECT,2
	.extern	GESM_bAfterrunFin,STT_OBJECT,1
	.extern	GESM_bAfterrunReq,STT_OBJECT,1
	.extern	GESM_bMcuEnaReq,STT_OBJECT,1
	.extern	GESM_u8AllowPwrDnDelay,STT_OBJECT,1
	.extern	GESM_u8PwrOffTim,STT_OBJECT,1
	.extern	GESM_u8PwrLNfStep,STT_OBJECT,1
	.extern	GESM_bPwrDnReadyFlg,STT_OBJECT,1
	.extern	GESM_bPwrLNfClrFltFinsh,STT_OBJECT,1
	.extern	GESM_bCallAppliOn,STT_OBJECT,1
	.extern	GESM_EsmMode,STT_OBJECT,2
	.extern	GESM_u16CmdRes,STT_OBJECT,2
	.extern	GESM_u16CmdReqNm1,STT_OBJECT,2
	.extern	GESM_u16CmdReq,STT_OBJECT,2
	.extern	GESM_PwrLFtState,STT_OBJECT,2
	.extern	GESM_PwrLNfState,STT_OBJECT,2
	.extern	GESM_OpFtState,STT_OBJECT,2
	.extern	GESM_OpNfState,STT_OBJECT,2
	.extern	GESM_StpIIFtState,STT_OBJECT,2
	.extern	GESM_StpIINfState,STT_OBJECT,2
	.extern	GESM_StpIState,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
