	.file	"esm_1.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ESM_vidInit,"ax",@progbits
	.align 1
	.global	ESM_vidInit
	.type	ESM_vidInit, @function
ESM_vidInit:
.LFB412:
	.file 1 "bswcdd\\ESM\\ESM\\esm_1.c"
	.loc 1 100 0
	.loc 1 101 0
	mov	%d2, 1
	movh.a	%a15, hi:ESM_StpIState
	st.h	[%a15] lo:ESM_StpIState, %d2
	.loc 1 103 0
	movh.a	%a15, hi:ESM_StpIINfState
	st.h	[%a15] lo:ESM_StpIINfState, %d2
	.loc 1 104 0
	movh.a	%a15, hi:ESM_StpIIFtState
	st.h	[%a15] lo:ESM_StpIIFtState, %d2
	.loc 1 106 0
	movh.a	%a15, hi:ESM_OpNfState
	st.h	[%a15] lo:ESM_OpNfState, %d2
	.loc 1 107 0
	movh.a	%a15, hi:ESM_OpFtState
	st.h	[%a15] lo:ESM_OpFtState, %d2
	.loc 1 109 0
	movh.a	%a15, hi:ESM_PwrLNfState
	st.h	[%a15] lo:ESM_PwrLNfState, %d2
	.loc 1 110 0
	movh.a	%a15, hi:ESM_PwrLFtState
	.loc 1 112 0
	mov	%d15, 0
	.loc 1 110 0
	st.h	[%a15] lo:ESM_PwrLFtState, %d2
	.loc 1 112 0
	movh.a	%a15, hi:ESM_u16CmdReq
	st.h	[%a15] lo:ESM_u16CmdReq, %d15
	.loc 1 113 0
	movh.a	%a15, hi:ESM_u16CmdReqNm1
	st.h	[%a15] lo:ESM_u16CmdReqNm1, %d15
	.loc 1 114 0
	movh.a	%a15, hi:ESM_u16CmdRes
	st.h	[%a15] lo:ESM_u16CmdRes, %d15
	.loc 1 116 0
	movh.a	%a15, hi:ESM_EsmMode
	st.h	[%a15] lo:ESM_EsmMode, %d2
	.loc 1 117 0
	movh.a	%a15, hi:ESM_bCallAppliOn
	st.b	[%a15] lo:ESM_bCallAppliOn, %d15
	.loc 1 118 0
	movh.a	%a15, hi:ESM_bPwrLNfClrFltFinsh
	st.b	[%a15] lo:ESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 119 0
	movh.a	%a15, hi:ESM_bPwrDnReadyFlg
	st.b	[%a15] lo:ESM_bPwrDnReadyFlg, %d15
	.loc 1 120 0
	movh.a	%a15, hi:ESM_u8PwrLNfStep
	st.b	[%a15] lo:ESM_u8PwrLNfStep, %d15
	.loc 1 121 0
	movh.a	%a15, hi:ESM_u8PwrOffTim
	st.b	[%a15] lo:ESM_u8PwrOffTim, %d15
	.loc 1 122 0
	movh.a	%a15, hi:ESM_u16MsgOffDelay
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d15
	.loc 1 123 0
	movh.a	%a15, hi:ESM_bMcuEnaReq
	st.b	[%a15] lo:ESM_bMcuEnaReq, %d15
	.loc 1 124 0
	movh.a	%a15, hi:ESM_bAfterrunReq
	st.b	[%a15] lo:ESM_bAfterrunReq, %d15
	.loc 1 125 0
	movh.a	%a15, hi:ESM_bAfterrunFin
	st.b	[%a15] lo:ESM_bAfterrunFin, %d15
	.loc 1 126 0
	movh.a	%a15, hi:ESM_u8RestartDelayCnt
	st.b	[%a15] lo:ESM_u8RestartDelayCnt, %d15
	.loc 1 127 0
	movh.a	%a15, hi:ESM_u16OpDelayTime
	st.h	[%a15] lo:ESM_u16OpDelayTime, %d15
	.loc 1 128 0
	movh.a	%a15, hi:ESM_u16OpTimeout
	st.h	[%a15] lo:ESM_u16OpTimeout, %d15
	.loc 1 130 0
	j	ESMSRV_vidVSIInit
.LVL0:
.LFE412:
	.size	ESM_vidInit, .-ESM_vidInit
.section .text.ESM_vidInitNf,"ax",@progbits
	.align 1
	.global	ESM_vidInitNf
	.type	ESM_vidInitNf, @function
ESM_vidInitNf:
.LFB413:
	.loc 1 143 0
	ret
.LFE413:
	.size	ESM_vidInitNf, .-ESM_vidInitNf
.section .text.ESM_vidInitFt,"ax",@progbits
	.align 1
	.global	ESM_vidInitFt
	.type	ESM_vidInitFt, @function
ESM_vidInitFt:
.LFB414:
	.loc 1 156 0
	ret
.LFE414:
	.size	ESM_vidInitFt, .-ESM_vidInitFt
.section .text.ESM_vidStfStpI,"ax",@progbits
	.align 1
	.global	ESM_vidStfStpI
	.type	ESM_vidStfStpI, @function
ESM_vidStfStpI:
.LFB415:
	.loc 1 170 0
	.loc 1 171 0
	movh.a	%a15, hi:ESM_StpIState
	ld.hu	%d15, [%a15] lo:ESM_StpIState
	jeq	%d15, 1, .L6
	mov	%d2, 16384
	jne	%d15, %d2, .L14
.L4:
	ret
.L14:
	.loc 1 199 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_StpIState, %d15
	ret
.L6:
	.loc 1 180 0
	mov	%d4, 2
	call	ESMSRV_bGetCmdReq
.LVL1:
	jz	%d2, .L4
	.loc 1 185 0
	mov	%d4, 2
	.loc 1 186 0
	mov	%d15, 16384
	.loc 1 185 0
	call	ESMSRV_vidSetCmdRes
.LVL2:
	.loc 1 186 0
	st.h	[%a15] lo:ESM_StpIState, %d15
	ret
.LFE415:
	.size	ESM_vidStfStpI, .-ESM_vidStfStpI
.section .text.ESM_vidStfStpII,"ax",@progbits
	.align 1
	.global	ESM_vidStfStpII
	.type	ESM_vidStfStpII, @function
ESM_vidStfStpII:
.LFB416:
	.loc 1 214 0
	.loc 1 215 0
	movh.a	%a15, hi:ESM_EsmMode
	ld.hu	%d15, [%a15] lo:ESM_EsmMode
	jeq	%d15, 1, .L17
	jne	%d15, 4, .L29
.LBB14:
.LBB15:
	.loc 1 307 0
	movh.a	%a15, hi:ESM_StpIIFtState
	ld.hu	%d2, [%a15] lo:ESM_StpIIFtState
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
	.loc 1 241 0
	movh.a	%a15, hi:ESM_StpIINfState
	ld.hu	%d2, [%a15] lo:ESM_StpIINfState
	jeq	%d2, 2, .L20
	jlt.u	%d2, 3, .L31
	jeq	%d2, 4, .L23
	mov	%d15, 16384
	jeq	%d2, %d15, .L15
.L19:
	.loc 1 289 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	ret
.L31:
	.loc 1 241 0
	jne	%d2, 1, .L19
.LBB23:
.LBB24:
	.loc 1 252 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL3:
	.loc 1 255 0
	mov	%d4, 5
	call	CCU6_vidSetPwmModReq
.LVL4:
	.loc 1 260 0
	mov	%d15, 2
	.loc 1 257 0
	mov	%d4, 1000
	call	RESBSL_vidConfig
.LVL5:
	.loc 1 260 0
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	ret
.L30:
.LBE24:
.LBE23:
.LBE22:
.LBE21:
.LBB27:
.LBB18:
	.loc 1 307 0
	jne	%d2, 1, .L24
.LBB16:
.LBB17:
	.loc 1 317 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL6:
	.loc 1 319 0
	mov	%d4, 6
	call	CCU6_vidSetPwmModReq
.LVL7:
	.loc 1 324 0
	mov	%d15, 2
	.loc 1 321 0
	mov	%d4, 1000
	call	RESBSL_vidConfig
.LVL8:
	.loc 1 324 0
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	ret
.L24:
.LBE17:
.LBE16:
	.loc 1 354 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	ret
.L23:
.LBE18:
.LBE27:
.LBB28:
.LBB25:
	.loc 1 276 0
	movh.a	%a2, hi:ESM_bCallAppliOn
	st.b	[%a2] lo:ESM_bCallAppliOn, %d15
	.loc 1 277 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	ret
.L28:
.LBE25:
.LBE28:
.LBB29:
.LBB19:
	.loc 1 341 0
	mov	%d15, 1
	movh.a	%a2, hi:ESM_bCallAppliOn
	st.b	[%a2] lo:ESM_bCallAppliOn, %d15
	.loc 1 342 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	ret
.L20:
.LBE19:
.LBE29:
.LBB30:
.LBB26:
	.loc 1 268 0
	mov	%d4, 0
	.loc 1 269 0
	mov	%d15, 4
	.loc 1 268 0
	call	CCU6_vidSetPwmModReq
.LVL9:
	.loc 1 269 0
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	ret
.L25:
.LBE26:
.LBE30:
.LBB31:
.LBB20:
	.loc 1 331 0
	mov	%d4, 0
	call	CCU6_vidSetPwmModReq
.LVL10:
	.loc 1 332 0
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	ret
.LBE20:
.LBE31:
.LFE416:
	.size	ESM_vidStfStpII, .-ESM_vidStfStpII
.section .text.ESM_vidStfStpIINf,"ax",@progbits
	.align 1
	.global	ESM_vidStfStpIINf
	.type	ESM_vidStfStpIINf, @function
ESM_vidStfStpIINf:
.LFB417:
	.loc 1 240 0
	.loc 1 241 0
	movh.a	%a15, hi:ESM_StpIINfState
	ld.hu	%d15, [%a15] lo:ESM_StpIINfState
	jeq	%d15, 2, .L34
	jlt.u	%d15, 3, .L39
	jeq	%d15, 4, .L37
	mov	%d2, 16384
	jne	%d15, %d2, .L33
	ret
.L37:
	.loc 1 276 0
	mov	%d15, 1
	movh.a	%a2, hi:ESM_bCallAppliOn
	st.b	[%a2] lo:ESM_bCallAppliOn, %d15
	.loc 1 277 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	.loc 1 278 0
	ret
.L33:
	.loc 1 289 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	ret
.L39:
	.loc 1 241 0
	jne	%d15, 1, .L33
.LBB34:
.LBB35:
	.loc 1 252 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL11:
	.loc 1 255 0
	mov	%d4, 5
	call	CCU6_vidSetPwmModReq
.LVL12:
	.loc 1 260 0
	mov	%d15, 2
	.loc 1 257 0
	mov	%d4, 1000
	call	RESBSL_vidConfig
.LVL13:
	.loc 1 260 0
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	ret
.L34:
.LBE35:
.LBE34:
	.loc 1 268 0
	mov	%d4, 0
	.loc 1 269 0
	mov	%d15, 4
	.loc 1 268 0
	call	CCU6_vidSetPwmModReq
.LVL14:
	.loc 1 269 0
	st.h	[%a15] lo:ESM_StpIINfState, %d15
	.loc 1 270 0
	ret
.LFE417:
	.size	ESM_vidStfStpIINf, .-ESM_vidStfStpIINf
.section .text.ESM_vidStfStpIIFt,"ax",@progbits
	.align 1
	.global	ESM_vidStfStpIIFt
	.type	ESM_vidStfStpIIFt, @function
ESM_vidStfStpIIFt:
.LFB418:
	.loc 1 304 0
	.loc 1 307 0
	movh.a	%a15, hi:ESM_StpIIFtState
	ld.hu	%d15, [%a15] lo:ESM_StpIIFtState
	jeq	%d15, 2, .L42
	jlt.u	%d15, 3, .L47
	jeq	%d15, 4, .L45
	mov	%d2, 16384
	jne	%d15, %d2, .L41
	ret
.L45:
	.loc 1 341 0
	mov	%d15, 1
	movh.a	%a2, hi:ESM_bCallAppliOn
	st.b	[%a2] lo:ESM_bCallAppliOn, %d15
	.loc 1 342 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	.loc 1 343 0
	ret
.L41:
	.loc 1 354 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	ret
.L47:
	.loc 1 307 0
	jne	%d15, 1, .L41
.LBB38:
.LBB39:
	.loc 1 317 0
	mov	%d4, 1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL15:
	.loc 1 319 0
	mov	%d4, 6
	call	CCU6_vidSetPwmModReq
.LVL16:
	.loc 1 324 0
	mov	%d15, 2
	.loc 1 321 0
	mov	%d4, 1000
	call	RESBSL_vidConfig
.LVL17:
	.loc 1 324 0
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	ret
.L42:
.LBE39:
.LBE38:
	.loc 1 331 0
	mov	%d4, 0
	.loc 1 332 0
	mov	%d15, 4
	.loc 1 331 0
	call	CCU6_vidSetPwmModReq
.LVL18:
	.loc 1 332 0
	st.h	[%a15] lo:ESM_StpIIFtState, %d15
	.loc 1 333 0
	ret
.LFE418:
	.size	ESM_vidStfStpIIFt, .-ESM_vidStfStpIIFt
.section .text.ESM_vidStfOp,"ax",@progbits
	.align 1
	.global	ESM_vidStfOp
	.type	ESM_vidStfOp, @function
ESM_vidStfOp:
.LFB419:
	.loc 1 369 0
	.loc 1 370 0
	movh.a	%a15, hi:ESM_EsmMode
	ld.hu	%d15, [%a15] lo:ESM_EsmMode
	jeq	%d15, 1, .L50
	jne	%d15, 4, .L107
.LBB52:
.LBB53:
	.loc 1 511 0
	movh.a	%a12, hi:ESM_OpFtState
	ld.hu	%d2, [%a12] lo:ESM_OpFtState
	jeq	%d2, 4, .L70
	jge.u	%d2, 5, .L71
	jeq	%d2, 1, .L72
	jne	%d2, 2, .L69
	.loc 1 579 0
	mov	%d4, 1
	.loc 1 580 0
	mov	%d15, 1
	.loc 1 579 0
	call	CCU6_vidSetPwmModReq
.LVL19:
	.loc 1 580 0
	st.h	[%a12] lo:ESM_OpFtState, %d15
	ret
.L107:
	ret
.L50:
.LBE53:
.LBE52:
.LBB78:
.LBB79:
	.loc 1 396 0
	movh.a	%a12, hi:ESM_OpNfState
	ld.hu	%d2, [%a12] lo:ESM_OpNfState
	eq	%d3, %d2, 8
	jnz	%d3, .L53
	jge.u	%d2, 9, .L54
	jeq	%d2, 1, .L55
	jne	%d2, 4, .L52
	.loc 1 466 0
	mov	%d4, 0
	call	CCU6_vidSetPwmModReq
.LVL20:
	.loc 1 467 0
	st.h	[%a12] lo:ESM_OpNfState, %d15
	ret
.L71:
.LBE79:
.LBE78:
.LBB95:
.LBB72:
	.loc 1 511 0
	eq	%d15, %d2, 8
	jnz	%d15, .L74
	mov	%d15, 4096
	jne	%d2, %d15, .L69
.LBB54:
.LBB55:
	.loc 1 844 0
	movh.a	%a12, hi:ESM_PwrLFtState
	ld.hu	%d15, [%a12] lo:ESM_PwrLFtState
	jeq	%d15, 2, .L91
	mov	%d2, 16384
	jeq	%d15, %d2, .L48
	jeq	%d15, 1, .L108
	.loc 1 873 0
	mov	%d15, 1
	st.h	[%a12] lo:ESM_PwrLFtState, %d15
	ret
.L54:
.LBE55:
.LBE54:
.LBE72:
.LBE95:
.LBB96:
.LBB90:
	.loc 1 396 0
	mov	%d15, 8192
	jeq	%d2, %d15, .L48
	mov	%d15, 16384
	jne	%d2, %d15, .L52
.L48:
	ret
.L52:
	.loc 1 495 0
	mov	%d15, 1
	st.h	[%a12] lo:ESM_OpNfState, %d15
	ret
.L53:
	.loc 1 474 0
	mov	%d4, 3
	call	CCU6_vidSetPwmModReq
.LVL21:
	.loc 1 475 0
	st.h	[%a12] lo:ESM_OpNfState, %d15
	ret
.L55:
.LBB80:
.LBB81:
	.loc 1 405 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReq
.LVL22:
	jz	%d2, .L57
	.loc 1 407 0
	mov	%d15, 4
	st.h	[%a12] lo:ESM_OpNfState, %d15
.L58:
	.loc 1 438 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReqNm1
.LVL23:
	jnz	%d2, .L109
.L62:
	.loc 1 445 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReqNm1
.LVL24:
	jnz	%d2, .L110
.L65:
	.loc 1 452 0
	mov	%d4, 8
	call	ESMSRV_bGetCmdReqNm1
.LVL25:
	jnz	%d2, .L111
.L67:
	.loc 1 456 0
	mov	%d4, 4
	call	ESMSRV_bGetCmdReqNm1
.LVL26:
	jz	%d2, .L48
	.loc 1 458 0
	mov	%d4, 4
	j	ESMSRV_vidSetCmdRes
.LVL27:
.L74:
.LBE81:
.LBE80:
.LBE90:
.LBE96:
.LBB97:
.LBB73:
	.loc 1 595 0
	mov	%d4, 3
	.loc 1 596 0
	mov	%d15, 1
	.loc 1 595 0
	call	CCU6_vidSetPwmModReq
.LVL28:
	.loc 1 596 0
	st.h	[%a12] lo:ESM_OpFtState, %d15
	ret
.L70:
	.loc 1 587 0
	mov	%d4, 0
	.loc 1 588 0
	mov	%d15, 1
	.loc 1 587 0
	call	CCU6_vidSetPwmModReq
.LVL29:
	.loc 1 588 0
	st.h	[%a12] lo:ESM_OpFtState, %d15
	ret
.L69:
	.loc 1 607 0
	mov	%d15, 1
	st.h	[%a12] lo:ESM_OpFtState, %d15
	ret
.L72:
.LBB60:
.LBB61:
	.loc 1 520 0
	mov	%d4, 256
	call	ESMSRV_bGetCmdReq
.LVL30:
	jz	%d2, .L76
	.loc 1 522 0
	mov	%d15, 2
	st.h	[%a12] lo:ESM_OpFtState, %d15
.L77:
	.loc 1 548 0
	mov	%d4, 256
	call	ESMSRV_bGetCmdReqNm1
.LVL31:
	jnz	%d2, .L112
.L81:
	.loc 1 555 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReqNm1
.LVL32:
	jnz	%d2, .L113
.L84:
	.loc 1 562 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReqNm1
.LVL33:
	jnz	%d2, .L114
.L87:
	.loc 1 569 0
	mov	%d4, 16
	call	ESMSRV_bGetCmdReqNm1
.LVL34:
	jz	%d2, .L48
	.loc 1 571 0
	mov	%d4, 16
	j	ESMSRV_vidSetCmdRes
.LVL35:
.L57:
.LBE61:
.LBE60:
.LBE73:
.LBE97:
.LBB98:
.LBB91:
.LBB86:
.LBB82:
	.loc 1 411 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReq
.LVL36:
	jz	%d2, .L59
	.loc 1 413 0
	mov	%d15, 8
	st.h	[%a12] lo:ESM_OpNfState, %d15
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
	.loc 1 526 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReq
.LVL37:
	jz	%d2, .L115
.L106:
	.loc 1 540 0
	st.h	[%a12] lo:ESM_OpFtState, %d15
	j	.L77
.L91:
.LBE62:
.LBE66:
.LBB67:
.LBB58:
	.loc 1 860 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_EsmMode, %d15
	.loc 1 861 0
	mov	%d15, 16384
	st.h	[%a12] lo:ESM_PwrLFtState, %d15
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
	.loc 1 454 0
	mov	%d4, 8
	call	ESMSRV_vidSetCmdRes
.LVL38:
	j	.L67
.L110:
	.loc 1 447 0
	call	CCU6_u8GetPwmState
.LVL39:
	jne	%d2, 3, .L65
	.loc 1 449 0
	mov	%d4, 512
	call	ESMSRV_vidSetCmdRes
.LVL40:
	j	.L65
.L109:
	.loc 1 440 0
	call	CCU6_u8GetPwmState
.LVL41:
	jnz	%d2, .L62
	.loc 1 442 0
	mov	%d4, 1024
	call	ESMSRV_vidSetCmdRes
.LVL42:
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
	.loc 1 564 0
	call	CCU6_u8GetPwmState
.LVL43:
	jne	%d2, 3, .L87
	.loc 1 566 0
	mov	%d4, 512
	call	ESMSRV_vidSetCmdRes
.LVL44:
	j	.L87
.L113:
	.loc 1 557 0
	call	CCU6_u8GetPwmState
.LVL45:
	jnz	%d2, .L84
	.loc 1 559 0
	mov	%d4, 1024
	call	ESMSRV_vidSetCmdRes
.LVL46:
	j	.L84
.L112:
	.loc 1 550 0
	call	CCU6_u8GetPwmState
.LVL47:
	jne	%d2, 1, .L81
	.loc 1 552 0
	mov	%d4, 256
	call	ESMSRV_vidSetCmdRes
.LVL48:
	j	.L81
.L108:
.LBE63:
.LBE68:
.LBB69:
.LBB59:
.LBB56:
.LBB57:
	.loc 1 851 0
	mov	%d15, 0
	movh.a	%a15, hi:ESM_bCallAppliOn
	st.b	[%a15] lo:ESM_bCallAppliOn, %d15
	.loc 1 852 0
	mov	%d4, 0
	.loc 1 853 0
	mov	%d15, 2
	.loc 1 852 0
	call	CCU6_vidSetPwmModReq
.LVL49:
	.loc 1 853 0
	st.h	[%a12] lo:ESM_PwrLFtState, %d15
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
	.loc 1 417 0
	mov	%d4, 8
	call	ESMSRV_bGetCmdReq
.LVL50:
	mov	%d15, %d2
	jz	%d2, .L60
	.loc 1 422 0
	mov	%d15, 4
	st.h	[%a15] lo:ESM_EsmMode, %d15
	.loc 1 423 0
	mov	%d15, 8192
	st.h	[%a12] lo:ESM_OpNfState, %d15
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
	.loc 1 532 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReq
.LVL51:
	jz	%d2, .L79
	.loc 1 534 0
	mov	%d15, 8
	st.h	[%a12] lo:ESM_OpFtState, %d15
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
	.loc 1 427 0
	mov	%d4, 4
	call	ESMSRV_bGetCmdReq
.LVL52:
	jz	%d2, .L58
	.loc 1 429 0
	movh.a	%a15, hi:ESM_bPwrLNfClrFltFinsh
	st.b	[%a15] lo:ESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 430 0
	mov	%d15, 16384
	st.h	[%a12] lo:ESM_OpNfState, %d15
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
	.loc 1 538 0
	mov	%d4, 16
	call	ESMSRV_bGetCmdReq
.LVL53:
	jz	%d2, .L77
	.loc 1 540 0
	mov	%d15, 4096
	j	.L106
.LBE65:
.LBE71:
.LBE77:
.LBE105:
.LFE419:
	.size	ESM_vidStfOp, .-ESM_vidStfOp
.section .text.ESM_vidStfOpNf,"ax",@progbits
	.align 1
	.global	ESM_vidStfOpNf
	.type	ESM_vidStfOpNf, @function
ESM_vidStfOpNf:
.LFB420:
	.loc 1 395 0
	.loc 1 396 0
	movh.a	%a15, hi:ESM_OpNfState
	ld.hu	%d15, [%a15] lo:ESM_OpNfState
	eq	%d2, %d15, 8
	jnz	%d2, .L118
	jge.u	%d15, 9, .L119
	jeq	%d15, 1, .L120
	jne	%d15, 4, .L117
	.loc 1 466 0
	mov	%d4, 0
	.loc 1 467 0
	mov	%d15, 1
	.loc 1 466 0
	call	CCU6_vidSetPwmModReq
.LVL54:
	.loc 1 467 0
	st.h	[%a15] lo:ESM_OpNfState, %d15
	.loc 1 468 0
	ret
.L120:
.LBB108:
.LBB109:
	.loc 1 405 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReq
.LVL55:
	jz	%d2, .L123
	.loc 1 407 0
	mov	%d15, 4
	st.h	[%a15] lo:ESM_OpNfState, %d15
.L124:
	.loc 1 438 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReqNm1
.LVL56:
	jnz	%d2, .L143
.L128:
	.loc 1 445 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReqNm1
.LVL57:
	jnz	%d2, .L144
.L131:
	.loc 1 452 0
	mov	%d4, 8
	call	ESMSRV_bGetCmdReqNm1
.LVL58:
	jnz	%d2, .L145
.L133:
	.loc 1 456 0
	mov	%d4, 4
	call	ESMSRV_bGetCmdReqNm1
.LVL59:
	jz	%d2, .L116
	.loc 1 458 0
	mov	%d4, 4
	j	ESMSRV_vidSetCmdRes
.LVL60:
.L119:
.LBE109:
.LBE108:
	.loc 1 396 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L116
	mov	%d2, 16384
	jne	%d15, %d2, .L117
.L116:
	ret
.L117:
	.loc 1 495 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_OpNfState, %d15
	ret
.L118:
	.loc 1 474 0
	mov	%d4, 3
	.loc 1 475 0
	mov	%d15, 1
	.loc 1 474 0
	call	CCU6_vidSetPwmModReq
.LVL61:
	.loc 1 475 0
	st.h	[%a15] lo:ESM_OpNfState, %d15
	.loc 1 476 0
	ret
.L123:
.LBB111:
.LBB110:
	.loc 1 411 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReq
.LVL62:
	jz	%d2, .L125
	.loc 1 413 0
	mov	%d15, 8
	st.h	[%a15] lo:ESM_OpNfState, %d15
	j	.L124
.L145:
	.loc 1 454 0
	mov	%d4, 8
	call	ESMSRV_vidSetCmdRes
.LVL63:
	j	.L133
.L144:
	.loc 1 447 0
	call	CCU6_u8GetPwmState
.LVL64:
	jne	%d2, 3, .L131
	.loc 1 449 0
	mov	%d4, 512
	call	ESMSRV_vidSetCmdRes
.LVL65:
	j	.L131
.L143:
	.loc 1 440 0
	call	CCU6_u8GetPwmState
.LVL66:
	jnz	%d2, .L128
	.loc 1 442 0
	mov	%d4, 1024
	call	ESMSRV_vidSetCmdRes
.LVL67:
	j	.L128
.L125:
	.loc 1 417 0
	mov	%d4, 8
	call	ESMSRV_bGetCmdReq
.LVL68:
	mov	%d15, %d2
	jz	%d2, .L126
	.loc 1 422 0
	mov	%d15, 4
	movh.a	%a2, hi:ESM_EsmMode
	st.h	[%a2] lo:ESM_EsmMode, %d15
	.loc 1 423 0
	mov	%d15, 8192
	st.h	[%a15] lo:ESM_OpNfState, %d15
	j	.L124
.L126:
	.loc 1 427 0
	mov	%d4, 4
	call	ESMSRV_bGetCmdReq
.LVL69:
	jz	%d2, .L124
	.loc 1 429 0
	movh.a	%a2, hi:ESM_bPwrLNfClrFltFinsh
	st.b	[%a2] lo:ESM_bPwrLNfClrFltFinsh, %d15
	.loc 1 430 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_OpNfState, %d15
	j	.L124
.LBE110:
.LBE111:
.LFE420:
	.size	ESM_vidStfOpNf, .-ESM_vidStfOpNf
.section .text.ESM_vidStfOpFt,"ax",@progbits
	.align 1
	.global	ESM_vidStfOpFt
	.type	ESM_vidStfOpFt, @function
ESM_vidStfOpFt:
.LFB421:
	.loc 1 510 0
	.loc 1 511 0
	movh.a	%a15, hi:ESM_OpFtState
	ld.hu	%d15, [%a15] lo:ESM_OpFtState
	jeq	%d15, 4, .L148
	jge.u	%d15, 5, .L149
	jeq	%d15, 1, .L150
	jne	%d15, 2, .L147
	.loc 1 579 0
	mov	%d4, 1
	.loc 1 580 0
	mov	%d15, 1
	.loc 1 579 0
	call	CCU6_vidSetPwmModReq
.LVL70:
	.loc 1 580 0
	st.h	[%a15] lo:ESM_OpFtState, %d15
	.loc 1 581 0
	ret
.L149:
	.loc 1 511 0
	eq	%d2, %d15, 8
	jnz	%d2, .L152
	mov	%d2, 4096
	jne	%d15, %d2, .L147
.LBB118:
.LBB119:
	.loc 1 844 0
	movh.a	%a15, hi:ESM_PwrLFtState
	ld.hu	%d15, [%a15] lo:ESM_PwrLFtState
	jeq	%d15, 2, .L169
	mov	%d2, 16384
	jeq	%d15, %d2, .L146
	jeq	%d15, 1, .L178
	.loc 1 873 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_PwrLFtState, %d15
	ret
.L147:
.LBE119:
.LBE118:
	.loc 1 607 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_OpFtState, %d15
.L146:
	ret
.L152:
	.loc 1 595 0
	mov	%d4, 3
	.loc 1 596 0
	mov	%d15, 1
	.loc 1 595 0
	call	CCU6_vidSetPwmModReq
.LVL71:
	.loc 1 596 0
	st.h	[%a15] lo:ESM_OpFtState, %d15
	.loc 1 597 0
	ret
.L150:
.LBB123:
.LBB124:
	.loc 1 520 0
	mov	%d4, 256
	call	ESMSRV_bGetCmdReq
.LVL72:
	jz	%d2, .L154
	.loc 1 522 0
	mov	%d15, 2
	st.h	[%a15] lo:ESM_OpFtState, %d15
.L155:
	.loc 1 548 0
	mov	%d4, 256
	call	ESMSRV_bGetCmdReqNm1
.LVL73:
	jnz	%d2, .L179
.L159:
	.loc 1 555 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReqNm1
.LVL74:
	jnz	%d2, .L180
.L162:
	.loc 1 562 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReqNm1
.LVL75:
	jnz	%d2, .L181
.L165:
	.loc 1 569 0
	mov	%d4, 16
	call	ESMSRV_bGetCmdReqNm1
.LVL76:
	jz	%d2, .L146
	.loc 1 571 0
	mov	%d4, 16
	j	ESMSRV_vidSetCmdRes
.LVL77:
.L148:
.LBE124:
.LBE123:
	.loc 1 587 0
	mov	%d4, 0
	.loc 1 588 0
	mov	%d15, 1
	.loc 1 587 0
	call	CCU6_vidSetPwmModReq
.LVL78:
	.loc 1 588 0
	st.h	[%a15] lo:ESM_OpFtState, %d15
	.loc 1 589 0
	ret
.L181:
.LBB127:
.LBB125:
	.loc 1 564 0
	call	CCU6_u8GetPwmState
.LVL79:
	jne	%d2, 3, .L165
	.loc 1 566 0
	mov	%d4, 512
	call	ESMSRV_vidSetCmdRes
.LVL80:
	j	.L165
.L180:
	.loc 1 557 0
	call	CCU6_u8GetPwmState
.LVL81:
	jnz	%d2, .L162
	.loc 1 559 0
	mov	%d4, 1024
	call	ESMSRV_vidSetCmdRes
.LVL82:
	j	.L162
.L179:
	.loc 1 550 0
	call	CCU6_u8GetPwmState
.LVL83:
	jne	%d2, 1, .L159
	.loc 1 552 0
	mov	%d4, 256
	call	ESMSRV_vidSetCmdRes
.LVL84:
	j	.L159
.L154:
	.loc 1 526 0
	mov	%d4, 1024
	call	ESMSRV_bGetCmdReq
.LVL85:
	jz	%d2, .L156
	.loc 1 528 0
	mov	%d15, 4
	st.h	[%a15] lo:ESM_OpFtState, %d15
	j	.L155
.L178:
.LBE125:
.LBE127:
.LBB128:
.LBB122:
.LBB120:
.LBB121:
	.loc 1 851 0
	mov	%d15, 0
	movh.a	%a2, hi:ESM_bCallAppliOn
	st.b	[%a2] lo:ESM_bCallAppliOn, %d15
	.loc 1 852 0
	mov	%d4, 0
	.loc 1 853 0
	mov	%d15, 2
	.loc 1 852 0
	call	CCU6_vidSetPwmModReq
.LVL86:
	.loc 1 853 0
	st.h	[%a15] lo:ESM_PwrLFtState, %d15
	ret
.L169:
.LBE121:
.LBE120:
	.loc 1 860 0
	mov	%d15, 1
	movh.a	%a2, hi:ESM_EsmMode
	st.h	[%a2] lo:ESM_EsmMode, %d15
	.loc 1 861 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_PwrLFtState, %d15
	ret
.L156:
.LBE122:
.LBE128:
.LBB129:
.LBB126:
	.loc 1 532 0
	mov	%d4, 512
	call	ESMSRV_bGetCmdReq
.LVL87:
	jz	%d2, .L157
	.loc 1 534 0
	mov	%d15, 8
	st.h	[%a15] lo:ESM_OpFtState, %d15
	j	.L155
.L157:
	.loc 1 538 0
	mov	%d4, 16
	call	ESMSRV_bGetCmdReq
.LVL88:
	jz	%d2, .L155
	.loc 1 540 0
	mov	%d15, 4096
	st.h	[%a15] lo:ESM_OpFtState, %d15
	j	.L155
.LBE126:
.LBE129:
.LFE421:
	.size	ESM_vidStfOpFt, .-ESM_vidStfOpFt
.section .text.ESM_vidStfPwrL,"ax",@progbits
	.align 1
	.global	ESM_vidStfPwrL
	.type	ESM_vidStfPwrL, @function
ESM_vidStfPwrL:
.LFB422:
	.loc 1 622 0
	.loc 1 623 0
	movh.a	%a15, hi:ESM_EsmMode
	ld.hu	%d15, [%a15] lo:ESM_EsmMode
	.loc 1 622 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 623 0
	jeq	%d15, 1, .L211
.L182:
	ret
.L211:
.LVL89:
.LBB133:
.LBB134:
	.loc 1 649 0
	mov	%d8, 0
	st.h	[%SP] 6, %d8
	.loc 1 653 0
	st.b	[%SP] 5, %d8
	.loc 1 655 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL90:
	mov	%d15, %d2
.LVL91:
	.loc 1 656 0
	call	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
.LVL92:
	.loc 1 657 0
	and	%d2, %d2, 255
.LVL93:
	and	%d15, 255
.LVL94:
	eq	%d3, %d2, 1
	.loc 1 659 0
	movh.a	%a15, hi:ESM_PwrLNfState
	.loc 1 657 0
	or.eq	%d3, %d15, 1
.LVL95:
	.loc 1 659 0
	ld.hu	%d15, [%a15] lo:ESM_PwrLNfState
	jeq	%d15, 2, .L186
	jlt.u	%d15, 3, .L212
	mov	%d2, 8192
	jeq	%d15, %d2, .L182
	mov	%d2, 16384
	jne	%d15, %d2, .L185
	.loc 1 796 0
	movh.a	%a15, hi:ESM_u8PwrOffTim
	ld.bu	%d2, [%a15] lo:ESM_u8PwrOffTim
	ge.u	%d15, %d2, 200
	jz	%d15, .L213
	.loc 1 803 0
	jz	%d3, .L182
	.loc 1 805 0
	movh.a	%a2, hi:ESM_u8RestartDelayCnt
	movh.a	%a3, hi:ESM_u8RestartDelayCntC
	ld.bu	%d15, [%a2] lo:ESM_u8RestartDelayCnt
	ld.bu	%d2, [%a3] lo:ESM_u8RestartDelayCntC
	jge.u	%d15, %d2, .L203
	.loc 1 807 0
	add	%d15, 1
	st.b	[%a2] lo:ESM_u8RestartDelayCnt, %d15
	ret
.L212:
	.loc 1 659 0
	jne	%d15, 1, .L185
	.loc 1 667 0
	movh.a	%a2, hi:ESM_bCallAppliOn
	.loc 1 668 0
	mov	%d4, 0
	.loc 1 667 0
	st.b	[%a2] lo:ESM_bCallAppliOn, %d8
	.loc 1 668 0
	call	CCU6_vidSetPwmModReq
.LVL96:
	.loc 1 671 0
	mov	%e4, 0
	call	Mutex_bGrabSpecifiedLock
.LVL97:
	jne	%d2, 1, .L182
	.loc 1 673 0
	call	ERL_MarkNormalShutdown
.LVL98:
	.loc 1 674 0
	call	MAIN_vidUpdateSystemRunTime
.LVL99:
	.loc 1 676 0
	mov	%d4, 24
	mov	%d5, 1
	call	NvM_SetRamBlockStatus
.LVL100:
	.loc 1 679 0
	mov	%d15, 2
	.loc 1 677 0
	call	Dem_Shutdown
.LVL101:
	.loc 1 678 0
	call	NvM_WriteAll
.LVL102:
	.loc 1 679 0
	st.h	[%a15] lo:ESM_PwrLNfState, %d15
	.loc 1 680 0
	movh.a	%a15, hi:ESM_u8PwrLNfStep
	st.b	[%a15] lo:ESM_u8PwrLNfStep, %d8
	.loc 1 681 0
	movh.a	%a15, hi:ESM_u16MsgOffDelay
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d8
	ret
.LVL103:
.L186:
	.loc 1 689 0
	movh.a	%a12, hi:ESM_u8PwrLNfStep
	ld.bu	%d2, [%a12] lo:ESM_u8PwrLNfStep
	jz	%d2, .L214
	.loc 1 708 0
	jeq	%d2, 1, .L215
	.loc 1 735 0
	movh.a	%a2, hi:ESM_u16MsgOffDelay
	ld.hu	%d15, [%a2] lo:ESM_u16MsgOffDelay
	jlt.u	%d15, 10, .L216
	.loc 1 741 0
	jnz	%d3, .L200
	.loc 1 747 0
	movh.a	%a2, hi:ESM_u16OpDelayTime
	ld.hu	%d15, [%a2] lo:ESM_u16OpDelayTime
	jge.u	%d15, 5, .L198
	.loc 1 749 0
	add	%d15, 1
	st.h	[%a2] lo:ESM_u16OpDelayTime, %d15
	ret
.L185:
	.loc 1 828 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_PwrLNfState, %d15
	ret
.L213:
	.loc 1 798 0
	add	%d2, 1
	st.b	[%a15] lo:ESM_u8PwrOffTim, %d2
	ret
.L215:
	.loc 1 710 0
	movh.a	%a15, hi:ESM_bPwrDnReadyFlg
	.loc 1 712 0
	lea	%a4, [%SP] 6
	.loc 1 710 0
	st.b	[%a15] lo:ESM_bPwrDnReadyFlg, %d2
	.loc 1 712 0
	call	MAIN_vidGetMsgOffDelayT_ms
.LVL104:
	.loc 1 714 0
	ld.hu	%d3, [%SP] 6
	movh.a	%a15, hi:ESM_u16MsgOffDelay
	add	%d3, 1
	ld.hu	%d2, [%a15] lo:ESM_u16MsgOffDelay
	sha	%d3, -1
	jge	%d2, %d3, .L195
	.loc 1 716 0
	add	%d2, 1
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d2
	ret
.LVL105:
.L214:
	.loc 1 691 0
	lea	%a4, [%SP] 4
	call	NvM_Rb_GetStatus
.LVL106:
	.loc 1 692 0
	call	MemIf_Rb_GetStatus
.LVL107:
	.loc 1 693 0
	ld.bu	%d15, [%SP] 4
	eq	%d3, %d15, 1
	and.eq	%d3, %d2, 1
	jnz	%d3, .L204
	.loc 1 703 0
	movh.a	%a15, hi:ESM_u16PowerLatchTempo
	ld.h	%d15, [%a15] lo:ESM_u16PowerLatchTempo
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	jge.u	%d15, 9, .L182
.L204:
	.loc 1 705 0
	mov	%d15, 1
	st.b	[%a12] lo:ESM_u8PwrLNfStep, %d15
	ret
.LVL108:
.L216:
	.loc 1 737 0
	add	%d15, 1
	st.h	[%a2] lo:ESM_u16MsgOffDelay, %d15
	ret
.LVL109:
.L200:
	.loc 1 743 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_PwrLNfState, %d15
	ret
.LVL110:
.L203:
	.loc 1 811 0
	st.b	[%a15] lo:ESM_u8PwrOffTim, %d8
	.loc 1 812 0
	st.b	[%a2] lo:ESM_u8RestartDelayCnt, %d8
	.loc 1 813 0
	call	MCU_u8GetResetCmd
.LVL111:
	jnz	%d2, .L182
	j	MCU_vSetResetCmd
.LVL112:
.L198:
	.loc 1 754 0
	mov	%d4, 0
	mov	%d5, 1
	.loc 1 753 0
	st.h	[%a2] lo:ESM_u16OpDelayTime, %d3
	.loc 1 754 0
	call	CanTrcv_SetOpMode
.LVL113:
	.loc 1 755 0
	mov	%d4, 0
	lea	%a4, [%SP] 5
	call	CanTrcv_GetOpMode_TJA1145
.LVL114:
	.loc 1 756 0
	ld.bu	%d15, [%SP] 5
	and	%d15, %d15, 253
	jnz	%d15, .L199
	.loc 1 758 0
	movh.a	%a2, hi:ESM_u16OpTimeout
	ld.hu	%d15, [%a2] lo:ESM_u16OpTimeout
	jge.u	%d15, 5, .L199
	.loc 1 760 0
	add	%d15, 1
	st.h	[%a2] lo:ESM_u16OpTimeout, %d15
	ret
.L199:
	.loc 1 764 0
	mov	%d4, 1
	call	SBC_vidSetStdbyModCmd
.LVL115:
	jeq	%d2, 1, .L200
	ret
.L195:
.LBB135:
	.loc 1 720 0
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d8
	.loc 1 721 0
	st.b	[%a12] lo:ESM_u8PwrLNfStep, %d15
	.loc 1 728 0
	call	FAIL_vidDisableEmbFltCheck
.LVL116:
	.loc 1 729 0
	mov	%d4, 0
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL117:
	.loc 1 730 0
	mov	%d4, 0
	mov	%d5, 1
	j	BswM_Dcm_CommunicationMode_CurrentState
.LVL118:
.LBE135:
.LBE134:
.LBE133:
.LFE422:
	.size	ESM_vidStfPwrL, .-ESM_vidStfPwrL
.section .text.ESM_vidStfPwrLNf,"ax",@progbits
	.align 1
	.global	ESM_vidStfPwrLNf
	.type	ESM_vidStfPwrLNf, @function
ESM_vidStfPwrLNf:
.LFB423:
	.loc 1 644 0
.LVL119:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 649 0
	mov	%d8, 0
	st.h	[%SP] 6, %d8
	.loc 1 653 0
	st.b	[%SP] 5, %d8
	.loc 1 655 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL120:
	mov	%d15, %d2
.LVL121:
	.loc 1 656 0
	call	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
.LVL122:
	.loc 1 657 0
	and	%d2, %d2, 255
.LVL123:
	and	%d15, 255
.LVL124:
	eq	%d3, %d2, 1
	.loc 1 659 0
	movh.a	%a15, hi:ESM_PwrLNfState
	.loc 1 657 0
	or.eq	%d3, %d15, 1
.LVL125:
	.loc 1 659 0
	ld.hu	%d15, [%a15] lo:ESM_PwrLNfState
	jeq	%d15, 2, .L219
	jlt.u	%d15, 3, .L244
	mov	%d2, 8192
	jeq	%d15, %d2, .L217
	mov	%d2, 16384
	jne	%d15, %d2, .L218
	.loc 1 796 0
	movh.a	%a15, hi:ESM_u8PwrOffTim
	ld.bu	%d2, [%a15] lo:ESM_u8PwrOffTim
	ge.u	%d15, %d2, 200
	jz	%d15, .L245
	.loc 1 803 0
	jz	%d3, .L217
	.loc 1 805 0
	movh.a	%a2, hi:ESM_u8RestartDelayCnt
	movh.a	%a3, hi:ESM_u8RestartDelayCntC
	ld.bu	%d15, [%a2] lo:ESM_u8RestartDelayCnt
	ld.bu	%d2, [%a3] lo:ESM_u8RestartDelayCntC
	jge.u	%d15, %d2, .L236
	.loc 1 807 0
	add	%d15, 1
	st.b	[%a2] lo:ESM_u8RestartDelayCnt, %d15
	ret
.L244:
	.loc 1 659 0
	jne	%d15, 1, .L218
	.loc 1 667 0
	movh.a	%a2, hi:ESM_bCallAppliOn
	.loc 1 668 0
	mov	%d4, 0
	.loc 1 667 0
	st.b	[%a2] lo:ESM_bCallAppliOn, %d8
	.loc 1 668 0
	call	CCU6_vidSetPwmModReq
.LVL126:
	.loc 1 671 0
	mov	%e4, 0
	call	Mutex_bGrabSpecifiedLock
.LVL127:
	jeq	%d2, 1, .L246
.L217:
	ret
.LVL128:
.L219:
	.loc 1 689 0
	movh.a	%a12, hi:ESM_u8PwrLNfStep
	ld.bu	%d2, [%a12] lo:ESM_u8PwrLNfStep
	jz	%d2, .L247
	.loc 1 708 0
	jeq	%d2, 1, .L248
	.loc 1 735 0
	movh.a	%a2, hi:ESM_u16MsgOffDelay
	ld.hu	%d15, [%a2] lo:ESM_u16MsgOffDelay
	jlt.u	%d15, 10, .L249
	.loc 1 741 0
	jnz	%d3, .L233
	.loc 1 747 0
	movh.a	%a2, hi:ESM_u16OpDelayTime
	ld.hu	%d15, [%a2] lo:ESM_u16OpDelayTime
	jge.u	%d15, 5, .L231
	.loc 1 749 0
	add	%d15, 1
	st.h	[%a2] lo:ESM_u16OpDelayTime, %d15
	ret
.L218:
	.loc 1 828 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_PwrLNfState, %d15
	.loc 1 829 0
	ret
.L245:
	.loc 1 798 0
	add	%d2, 1
	st.b	[%a15] lo:ESM_u8PwrOffTim, %d2
	ret
.L247:
	.loc 1 691 0
	lea	%a4, [%SP] 4
	call	NvM_Rb_GetStatus
.LVL129:
	.loc 1 692 0
	call	MemIf_Rb_GetStatus
.LVL130:
	.loc 1 693 0
	ld.bu	%d15, [%SP] 4
	eq	%d3, %d15, 1
	and.eq	%d3, %d2, 1
	jnz	%d3, .L237
	.loc 1 703 0
	movh.a	%a15, hi:ESM_u16PowerLatchTempo
	ld.h	%d15, [%a15] lo:ESM_u16PowerLatchTempo
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	jge.u	%d15, 9, .L217
.L237:
	.loc 1 705 0
	mov	%d15, 1
	st.b	[%a12] lo:ESM_u8PwrLNfStep, %d15
	ret
.LVL131:
.L233:
	.loc 1 743 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_PwrLNfState, %d15
	ret
.LVL132:
.L236:
	.loc 1 811 0
	st.b	[%a15] lo:ESM_u8PwrOffTim, %d8
	.loc 1 812 0
	st.b	[%a2] lo:ESM_u8RestartDelayCnt, %d8
	.loc 1 813 0
	call	MCU_u8GetResetCmd
.LVL133:
	jnz	%d2, .L217
	j	MCU_vSetResetCmd
.LVL134:
.L246:
	.loc 1 673 0
	call	ERL_MarkNormalShutdown
.LVL135:
	.loc 1 674 0
	call	MAIN_vidUpdateSystemRunTime
.LVL136:
	.loc 1 676 0
	mov	%d4, 24
	mov	%d5, 1
	call	NvM_SetRamBlockStatus
.LVL137:
	.loc 1 679 0
	mov	%d15, 2
	.loc 1 677 0
	call	Dem_Shutdown
.LVL138:
	.loc 1 678 0
	call	NvM_WriteAll
.LVL139:
	.loc 1 679 0
	st.h	[%a15] lo:ESM_PwrLNfState, %d15
	.loc 1 680 0
	movh.a	%a15, hi:ESM_u8PwrLNfStep
	st.b	[%a15] lo:ESM_u8PwrLNfStep, %d8
	.loc 1 681 0
	movh.a	%a15, hi:ESM_u16MsgOffDelay
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d8
	ret
.LVL140:
.L249:
	.loc 1 737 0
	add	%d15, 1
	st.h	[%a2] lo:ESM_u16MsgOffDelay, %d15
	ret
.L248:
	.loc 1 710 0
	movh.a	%a15, hi:ESM_bPwrDnReadyFlg
	.loc 1 712 0
	lea	%a4, [%SP] 6
	.loc 1 710 0
	st.b	[%a15] lo:ESM_bPwrDnReadyFlg, %d2
	.loc 1 712 0
	call	MAIN_vidGetMsgOffDelayT_ms
.LVL141:
	.loc 1 714 0
	ld.hu	%d3, [%SP] 6
	movh.a	%a15, hi:ESM_u16MsgOffDelay
	add	%d3, 1
	ld.hu	%d2, [%a15] lo:ESM_u16MsgOffDelay
	sha	%d3, -1
	jge	%d2, %d3, .L228
	.loc 1 716 0
	add	%d2, 1
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d2
	ret
.LVL142:
.L231:
	.loc 1 754 0
	mov	%d4, 0
	mov	%d5, 1
	.loc 1 753 0
	st.h	[%a2] lo:ESM_u16OpDelayTime, %d3
	.loc 1 754 0
	call	CanTrcv_SetOpMode
.LVL143:
	.loc 1 755 0
	mov	%d4, 0
	lea	%a4, [%SP] 5
	call	CanTrcv_GetOpMode_TJA1145
.LVL144:
	.loc 1 756 0
	ld.bu	%d15, [%SP] 5
	and	%d15, %d15, 253
	jnz	%d15, .L232
	.loc 1 758 0
	movh.a	%a2, hi:ESM_u16OpTimeout
	ld.hu	%d15, [%a2] lo:ESM_u16OpTimeout
	jge.u	%d15, 5, .L232
	.loc 1 760 0
	add	%d15, 1
	st.h	[%a2] lo:ESM_u16OpTimeout, %d15
	ret
.L232:
	.loc 1 764 0
	mov	%d4, 1
	call	SBC_vidSetStdbyModCmd
.LVL145:
	jeq	%d2, 1, .L233
	ret
.L228:
.LBB136:
	.loc 1 720 0
	st.h	[%a15] lo:ESM_u16MsgOffDelay, %d8
	.loc 1 721 0
	st.b	[%a12] lo:ESM_u8PwrLNfStep, %d15
	.loc 1 728 0
	call	FAIL_vidDisableEmbFltCheck
.LVL146:
	.loc 1 729 0
	mov	%d4, 0
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL147:
	.loc 1 730 0
	mov	%d4, 0
	mov	%d5, 1
	j	BswM_Dcm_CommunicationMode_CurrentState
.LVL148:
.LBE136:
.LFE423:
	.size	ESM_vidStfPwrLNf, .-ESM_vidStfPwrLNf
.section .text.ESM_vidStfPwrLFt,"ax",@progbits
	.align 1
	.global	ESM_vidStfPwrLFt
	.type	ESM_vidStfPwrLFt, @function
ESM_vidStfPwrLFt:
.LFB424:
	.loc 1 843 0
	.loc 1 844 0
	movh.a	%a15, hi:ESM_PwrLFtState
	ld.hu	%d15, [%a15] lo:ESM_PwrLFtState
	jeq	%d15, 2, .L252
	mov	%d2, 16384
	jeq	%d15, %d2, .L250
	jeq	%d15, 1, .L256
	.loc 1 873 0
	mov	%d15, 1
	st.h	[%a15] lo:ESM_PwrLFtState, %d15
.L250:
	ret
.L256:
.LBB139:
.LBB140:
	.loc 1 851 0
	mov	%d15, 0
	movh.a	%a2, hi:ESM_bCallAppliOn
	st.b	[%a2] lo:ESM_bCallAppliOn, %d15
	.loc 1 852 0
	mov	%d4, 0
	.loc 1 853 0
	mov	%d15, 2
	.loc 1 852 0
	call	CCU6_vidSetPwmModReq
.LVL149:
	.loc 1 853 0
	st.h	[%a15] lo:ESM_PwrLFtState, %d15
	ret
.L252:
.LBE140:
.LBE139:
	.loc 1 860 0
	mov	%d15, 1
	movh.a	%a2, hi:ESM_EsmMode
	st.h	[%a2] lo:ESM_EsmMode, %d15
	.loc 1 861 0
	mov	%d15, 16384
	st.h	[%a15] lo:ESM_PwrLFtState, %d15
	.loc 1 862 0
	ret
.LFE424:
	.size	ESM_vidStfPwrLFt, .-ESM_vidStfPwrLFt
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
	.byte	0x4
	.uaword	.LCFI0-.LFB422
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB423
	.uaword	.LFE423-.LFB423
	.byte	0x4
	.uaword	.LCFI1-.LFB423
	.byte	0xe
	.uleb128 0x8
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
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\DFM\\MutexDef.h"
	.file 10 "bswcdd\\ESM\\ESM\\ESM_L.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\STFSRV\\STFSRV_L.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\STFSRV\\STFSRV.h"
	.file 13 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 14 "bswcdd\\ESM\\ESM\\esmsrv.h"
	.file 15 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 16 ".\\output\\inc/..\\..\\bswcdd\\CCU6\\CCU6.h"
	.file 17 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h"
	.file 18 ".\\output\\inc/..\\..\\bswcdd\\ERL\\EnhancedResetLogger.h"
	.file 19 ".\\output\\inc/..\\..\\main\\_MainModule\\RunTime\\MAIN_RunTime.h"
	.file 20 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM.h"
	.file 21 ".\\output\\inc/..\\..\\bsw\\Dem\\api\\Dem.h"
	.file 22 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf.h"
	.file 23 ".\\output\\inc/..\\..\\ASW\\ASW_DCM\\src\\Dcm_ExternalServiceProcessing.h"
	.file 24 ".\\output\\inc/..\\..\\bsw\\CanTrcv\\api\\CanTrcv.h"
	.file 25 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1889
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\ESM\\esm_1.c"
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
	.uaword	0x1c1
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
	.uaword	0x1ed
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x211
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
	.uaword	0x1c1
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
	.uaword	0x1b4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.uaword	0x1b4
	.uleb128 0x4
	.uaword	0x1df
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1df
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x84
	.uaword	0x31f
	.uleb128 0x7
	.string	"CANTRCV_TRCVMODE_NORMAL"
	.sleb128 0
	.uleb128 0x7
	.string	"CANTRCV_TRCVMODE_SLEEP"
	.sleb128 1
	.uleb128 0x7
	.string	"CANTRCV_TRCVMODE_STANDBY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvModeType"
	.byte	0x4
	.byte	0x89
	.uaword	0x2c8
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x5
	.uahalf	0x1ca
	.uaword	0x1df
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x18
	.uaword	0x39b
	.uleb128 0x7
	.string	"MEMIF_UNINIT"
	.sleb128 0
	.uleb128 0x7
	.string	"MEMIF_IDLE"
	.sleb128 1
	.uleb128 0x7
	.string	"MEMIF_BUSY"
	.sleb128 2
	.uleb128 0x7
	.string	"MEMIF_BUSY_INTERNAL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"MemIf_StatusType"
	.byte	0x6
	.byte	0x1d
	.uaword	0x353
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9a
	.uaword	0x3fd
	.uleb128 0x7
	.string	"NVM_RB_STATUS_UNINIT"
	.sleb128 0
	.uleb128 0x7
	.string	"NVM_RB_STATUS_IDLE"
	.sleb128 1
	.uleb128 0x7
	.string	"NVM_RB_STATUS_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_Rb_StatusType"
	.byte	0x7
	.byte	0x9e
	.uaword	0x3b3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x31f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x42a
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x8c
	.uaword	0x455
	.uleb128 0xb
	.string	"module"
	.byte	0x8
	.byte	0x8e
	.uaword	0x424
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"index"
	.byte	0x8
	.byte	0x8f
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x8
	.byte	0x90
	.uaword	0x42b
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9
	.byte	0x1c
	.uaword	0x4a2
	.uleb128 0x7
	.string	"MUTEX_GET_LOCK"
	.sleb128 0
	.uleb128 0x7
	.string	"MUTEX_RELEASE_LOCK"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x9
	.byte	0x1f
	.uaword	0x46f
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x9
	.byte	0x21
	.uaword	0x548
	.uleb128 0x7
	.string	"MUTEX_ESM_AND_DFLASH_INDEX"
	.sleb128 0
	.uleb128 0x7
	.string	"MUTEX_NVM_AND_DFLASH_INDEX"
	.sleb128 1
	.uleb128 0x7
	.string	"MUTEX_MEMIF_AND_DFLASH_INDEX"
	.sleb128 2
	.uleb128 0x7
	.string	"MUTEX_DFLASH_MULTI_CORE_INDEX"
	.sleb128 3
	.uleb128 0x7
	.string	"MUTEX_MAX_LOCK_NUM"
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0x27
	.uaword	0x4ad
	.uleb128 0xe
	.byte	0x1
	.string	"ESM_vidInitNf"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"ESM_vidStfStpIINf"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"ESM_vidInitFt"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"ESM_vidStfStpIIFt"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"ESM_vidStfOpNf"
	.byte	0x1
	.uahalf	0x18a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"ESM_vidStfPwrLFt"
	.byte	0x1
	.uahalf	0x34a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"ESM_vidStfOpFt"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"ESM_vidInit"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	.LFB412
	.uaword	.LFE412
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x61c
	.uleb128 0x11
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x14c8
	.byte	0
	.uleb128 0x12
	.uaword	0x553
	.uaword	.LFB413
	.uaword	.LFE413
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.uaword	0x57f
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"ESM_vidStfStpI"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x685
	.uleb128 0x13
	.uaword	.LVL1
	.uaword	0x14e0
	.uaword	0x675
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.uaword	.LVL2
	.uaword	0x1506
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"ESM_vidStfStpII"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.uaword	.LFB416
	.uaword	.LFE416
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x763
	.uleb128 0x16
	.uaword	0x593
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xde
	.uaword	0x708
	.uleb128 0x13
	.uaword	.LVL6
	.uaword	0x152a
	.uaword	0x6d0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL7
	.uaword	0x155e
	.uaword	0x6e3
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x13
	.uaword	.LVL8
	.uaword	0x1583
	.uaword	0x6f8
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	.LVL10
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x567
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xda
	.uleb128 0x13
	.uaword	.LVL3
	.uaword	0x152a
	.uaword	0x72a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL4
	.uaword	0x155e
	.uaword	0x73d
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x13
	.uaword	.LVL5
	.uaword	0x1583
	.uaword	0x752
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	.LVL9
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x567
	.uaword	.LFB417
	.uaword	.LFE417
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7c3
	.uleb128 0x13
	.uaword	.LVL11
	.uaword	0x152a
	.uaword	0x78b
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL12
	.uaword	0x155e
	.uaword	0x79e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x13
	.uaword	.LVL13
	.uaword	0x1583
	.uaword	0x7b3
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	.LVL14
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x593
	.uaword	.LFB418
	.uaword	.LFE418
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x823
	.uleb128 0x13
	.uaword	.LVL15
	.uaword	0x152a
	.uaword	0x7eb
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL16
	.uaword	0x155e
	.uaword	0x7fe
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x13
	.uaword	.LVL17
	.uaword	0x1583
	.uaword	0x813
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	.LVL18
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"ESM_vidStfOp"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	.LFB419
	.uaword	.LFE419
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xafd
	.uleb128 0x1a
	.uaword	0x5da
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x179
	.uaword	0x9c6
	.uleb128 0x1a
	.uaword	0x5c2
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x87e
	.uleb128 0x15
	.uaword	.LVL49
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL19
	.uaword	0x155e
	.uaword	0x891
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL28
	.uaword	0x155e
	.uaword	0x8a4
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.uaword	.LVL29
	.uaword	0x155e
	.uaword	0x8b7
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL30
	.uaword	0x14e0
	.uaword	0x8cc
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x13
	.uaword	.LVL31
	.uaword	0x15a5
	.uaword	0x8e1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x13
	.uaword	.LVL32
	.uaword	0x15a5
	.uaword	0x8f6
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL33
	.uaword	0x15a5
	.uaword	0x90b
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x13
	.uaword	.LVL34
	.uaword	0x15a5
	.uaword	0x91e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL35
	.byte	0x1
	.uaword	0x1506
	.uaword	0x932
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.uaword	.LVL37
	.uaword	0x14e0
	.uaword	0x947
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL43
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL44
	.uaword	0x1506
	.uaword	0x965
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL45
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL46
	.uaword	0x1506
	.uaword	0x983
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL47
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL48
	.uaword	0x1506
	.uaword	0x9a1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x13
	.uaword	.LVL51
	.uaword	0x14e0
	.uaword	0x9b6
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x15
	.uaword	.LVL53
	.uaword	0x14e0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5ac
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x175
	.uleb128 0x13
	.uaword	.LVL20
	.uaword	0x155e
	.uaword	0x9e9
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL21
	.uaword	0x155e
	.uaword	0x9fc
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.uaword	.LVL22
	.uaword	0x14e0
	.uaword	0xa11
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL23
	.uaword	0x15a5
	.uaword	0xa26
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL24
	.uaword	0x15a5
	.uaword	0xa3b
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x13
	.uaword	.LVL25
	.uaword	0x15a5
	.uaword	0xa4e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.uaword	.LVL26
	.uaword	0x15a5
	.uaword	0xa61
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL27
	.byte	0x1
	.uaword	0x1506
	.uaword	0xa75
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.uaword	.LVL36
	.uaword	0x14e0
	.uaword	0xa8a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x13
	.uaword	.LVL38
	.uaword	0x1506
	.uaword	0xa9d
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL39
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL40
	.uaword	0x1506
	.uaword	0xabb
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL41
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL42
	.uaword	0x1506
	.uaword	0xad9
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL50
	.uaword	0x14e0
	.uaword	0xaec
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.uaword	.LVL52
	.uaword	0x14e0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x5ac
	.uaword	.LFB420
	.uaword	.LFE420
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc38
	.uleb128 0x13
	.uaword	.LVL54
	.uaword	0x155e
	.uaword	0xb25
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL55
	.uaword	0x14e0
	.uaword	0xb3a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL56
	.uaword	0x15a5
	.uaword	0xb4f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL57
	.uaword	0x15a5
	.uaword	0xb64
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x13
	.uaword	.LVL58
	.uaword	0x15a5
	.uaword	0xb77
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.uaword	.LVL59
	.uaword	0x15a5
	.uaword	0xb8a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL60
	.byte	0x1
	.uaword	0x1506
	.uaword	0xb9e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.uaword	.LVL61
	.uaword	0x155e
	.uaword	0xbb1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.uaword	.LVL62
	.uaword	0x14e0
	.uaword	0xbc6
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x13
	.uaword	.LVL63
	.uaword	0x1506
	.uaword	0xbd9
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL64
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL65
	.uaword	0x1506
	.uaword	0xbf7
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL66
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL67
	.uaword	0x1506
	.uaword	0xc15
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL68
	.uaword	0x14e0
	.uaword	0xc28
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.uaword	.LVL69
	.uaword	0x14e0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x5da
	.uaword	.LFB421
	.uaword	.LFE421
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdb9
	.uleb128 0x1a
	.uaword	0x5c2
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x25b
	.uaword	0xc71
	.uleb128 0x15
	.uaword	.LVL86
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL70
	.uaword	0x155e
	.uaword	0xc84
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL71
	.uaword	0x155e
	.uaword	0xc97
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.uaword	.LVL72
	.uaword	0x14e0
	.uaword	0xcac
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x13
	.uaword	.LVL73
	.uaword	0x15a5
	.uaword	0xcc1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x13
	.uaword	.LVL74
	.uaword	0x15a5
	.uaword	0xcd6
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL75
	.uaword	0x15a5
	.uaword	0xceb
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x13
	.uaword	.LVL76
	.uaword	0x15a5
	.uaword	0xcfe
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL77
	.byte	0x1
	.uaword	0x1506
	.uaword	0xd12
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.uaword	.LVL78
	.uaword	0x155e
	.uaword	0xd25
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL79
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL80
	.uaword	0x1506
	.uaword	0xd43
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL81
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL82
	.uaword	0x1506
	.uaword	0xd61
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL83
	.uaword	0x15ce
	.uleb128 0x13
	.uaword	.LVL84
	.uaword	0x1506
	.uaword	0xd7f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x13
	.uaword	.LVL85
	.uaword	0x14e0
	.uaword	0xd94
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.byte	0
	.uleb128 0x13
	.uaword	.LVL87
	.uaword	0x14e0
	.uaword	0xda9
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.byte	0
	.uleb128 0x15
	.uaword	.LVL88
	.uaword	0x14e0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"ESM_vidStfPwrLNf"
	.byte	0x1
	.uahalf	0x283
	.byte	0x1
	.byte	0x1
	.uaword	0xe83
	.uleb128 0x1f
	.string	"bLocKL15Sts"
	.byte	0x1
	.uahalf	0x285
	.uaword	0x266
	.uleb128 0x1f
	.string	"u16KeyOn"
	.byte	0x1
	.uahalf	0x286
	.uaword	0x1df
	.uleb128 0x1f
	.string	"u16ChgOn"
	.byte	0x1
	.uahalf	0x287
	.uaword	0x1df
	.uleb128 0x1f
	.string	"bLocBswEndOp"
	.byte	0x1
	.uahalf	0x288
	.uaword	0x266
	.uleb128 0x1f
	.string	"u16PwrDownDelayT"
	.byte	0x1
	.uahalf	0x289
	.uaword	0x1df
	.uleb128 0x1f
	.string	"status_NvM"
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x3fd
	.uleb128 0x1f
	.string	"stMemIf_en"
	.byte	0x1
	.uahalf	0x28c
	.uaword	0x39b
	.uleb128 0x1f
	.string	"CurMode"
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x31f
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x211
	.byte	0
	.uleb128 0x22
	.uleb128 0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"ESM_vidStfPwrL"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.uaword	.LFB422
	.uaword	.LFE422
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1043
	.uleb128 0x24
	.uaword	0xdb9
	.uaword	.LBB133
	.uaword	.LBE133
	.byte	0x1
	.uahalf	0x272
	.uaword	0x1023
	.uleb128 0x25
	.uaword	.LBB134
	.uaword	.LBE134
	.uleb128 0x26
	.uaword	0xdd5
	.uaword	.LLST1
	.uleb128 0x26
	.uaword	0xde9
	.uaword	.LLST2
	.uleb128 0x26
	.uaword	0xdfa
	.uaword	.LLST3
	.uleb128 0x27
	.uaword	0xe0b
	.byte	0
	.uleb128 0x28
	.uaword	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x28
	.uaword	0xe39
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x26
	.uaword	0xe4c
	.uaword	.LLST4
	.uleb128 0x28
	.uaword	0xe5f
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x29
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	0xf2e
	.uleb128 0x1c
	.uaword	.LVL116
	.uaword	0x15eb
	.uleb128 0x15
	.uaword	.LVL117
	.uaword	0x152a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL90
	.uaword	0x15ff
	.uleb128 0x1c
	.uaword	.LVL92
	.uaword	0x162a
	.uleb128 0x13
	.uaword	.LVL96
	.uaword	0x155e
	.uaword	0xf53
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL97
	.uaword	0x1655
	.uaword	0xf6b
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL98
	.uaword	0x1687
	.uleb128 0x1c
	.uaword	.LVL99
	.uaword	0x16a4
	.uleb128 0x13
	.uaword	.LVL100
	.uaword	0x16c6
	.uaword	0xf95
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL101
	.uaword	0x16f6
	.uleb128 0x1c
	.uaword	.LVL102
	.uaword	0x170a
	.uleb128 0x13
	.uaword	.LVL104
	.uaword	0x171e
	.uaword	0xfbb
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x13
	.uaword	.LVL106
	.uaword	0x1749
	.uaword	0xfcf
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL107
	.uaword	0x1775
	.uleb128 0x1c
	.uaword	.LVL111
	.uaword	0x1792
	.uleb128 0x13
	.uaword	.LVL113
	.uaword	0x17ae
	.uaword	0xff9
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL114
	.uaword	0x17da
	.uaword	0x1012
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL115
	.uaword	0x180d
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	.LVL112
	.byte	0x1
	.uaword	0x183c
	.uleb128 0x2a
	.uaword	.LVL118
	.byte	0x1
	.uaword	0x1853
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xdb9
	.uaword	.LFB423
	.uaword	.LFE423
	.uaword	.LLST5
	.byte	0x1
	.uaword	0x11e3
	.uleb128 0x26
	.uaword	0xdd5
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	0xde9
	.uaword	.LLST7
	.uleb128 0x26
	.uaword	0xdfa
	.uaword	.LLST8
	.uleb128 0x27
	.uaword	0xe0b
	.byte	0
	.uleb128 0x28
	.uaword	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x28
	.uaword	0xe39
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x26
	.uaword	0xe4c
	.uaword	.LLST9
	.uleb128 0x28
	.uaword	0xe5f
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x29
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	0x10cc
	.uleb128 0x2c
	.uaword	0xe70
	.uaword	0x10b3
	.uleb128 0x22
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL146
	.uaword	0x15eb
	.uleb128 0x15
	.uaword	.LVL147
	.uaword	0x152a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL120
	.uaword	0x15ff
	.uleb128 0x1c
	.uaword	.LVL122
	.uaword	0x162a
	.uleb128 0x13
	.uaword	.LVL126
	.uaword	0x155e
	.uaword	0x10f1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL127
	.uaword	0x1655
	.uaword	0x1109
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL129
	.uaword	0x1749
	.uaword	0x111d
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL130
	.uaword	0x1775
	.uleb128 0x1c
	.uaword	.LVL133
	.uaword	0x1792
	.uleb128 0x11
	.uaword	.LVL134
	.byte	0x1
	.uaword	0x183c
	.uleb128 0x1c
	.uaword	.LVL135
	.uaword	0x1687
	.uleb128 0x1c
	.uaword	.LVL136
	.uaword	0x16a4
	.uleb128 0x13
	.uaword	.LVL137
	.uaword	0x16c6
	.uaword	0x1163
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL138
	.uaword	0x16f6
	.uleb128 0x1c
	.uaword	.LVL139
	.uaword	0x170a
	.uleb128 0x13
	.uaword	.LVL141
	.uaword	0x171e
	.uaword	0x1189
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x13
	.uaword	.LVL143
	.uaword	0x17ae
	.uaword	0x11a1
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL144
	.uaword	0x17da
	.uaword	0x11ba
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL145
	.uaword	0x180d
	.uaword	0x11cd
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL148
	.byte	0x1
	.uaword	0x1853
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x5c2
	.uaword	.LFB424
	.uaword	.LFE424
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1208
	.uleb128 0x15
	.uaword	.LVL149
	.uaword	0x155e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"ESM_u8RestartDelayCntC"
	.byte	0xa
	.byte	0x37
	.uaword	0x2b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16PowerLatchTempo"
	.byte	0xa
	.byte	0x41
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16MsgOffDelay"
	.byte	0xb
	.byte	0x40
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u8PwrLNfStep"
	.byte	0xb
	.byte	0x42
	.uaword	0x1b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u8PwrOffTim"
	.byte	0xb
	.byte	0x43
	.uaword	0x1b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_EsmMode"
	.byte	0xc
	.byte	0x57
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_bAfterrunFin"
	.byte	0xc
	.byte	0x58
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_bAfterrunReq"
	.byte	0xc
	.byte	0x59
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_bCallAppliOn"
	.byte	0xc
	.byte	0x5a
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_bMcuEnaReq"
	.byte	0xc
	.byte	0x5b
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_bPwrDnReadyFlg"
	.byte	0xc
	.byte	0x5c
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_bPwrLNfClrFltFinsh"
	.byte	0xc
	.byte	0x5d
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_OpFtState"
	.byte	0xc
	.byte	0x5e
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_OpNfState"
	.byte	0xc
	.byte	0x5f
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_PwrLFtState"
	.byte	0xc
	.byte	0x60
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_PwrLNfState"
	.byte	0xc
	.byte	0x61
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16OpDelayTime"
	.byte	0xc
	.byte	0x62
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16OpTimeout"
	.byte	0xc
	.byte	0x63
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_StpIIFtState"
	.byte	0xc
	.byte	0x64
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_StpIINfState"
	.byte	0xc
	.byte	0x65
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_StpIState"
	.byte	0xc
	.byte	0x66
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16CmdReq"
	.byte	0xc
	.byte	0x67
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16CmdReqNm1"
	.byte	0xc
	.byte	0x68
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u16CmdRes"
	.byte	0xc
	.byte	0x69
	.uaword	0x1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ESM_u8RestartDelayCnt"
	.byte	0xc
	.byte	0x6a
	.uaword	0x1b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x455
	.uaword	0x14a6
	.uleb128 0x2f
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xd
	.byte	0xaa
	.uaword	0x14c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x1496
	.uleb128 0x30
	.byte	0x1
	.string	"ESMSRV_vidVSIInit"
	.byte	0xe
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"ESMSRV_bGetCmdReq"
	.byte	0xe
	.byte	0x57
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uaword	0x1506
	.uleb128 0x32
	.uaword	0x1df
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"ESMSRV_vidSetCmdRes"
	.byte	0xe
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uaword	0x152a
	.uleb128 0x32
	.uaword	0x1df
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN"
	.byte	0xf
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0x155e
	.uleb128 0x32
	.uaword	0x1df
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"CCU6_vidSetPwmModReq"
	.byte	0x10
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uaword	0x1583
	.uleb128 0x32
	.uaword	0x2bd
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"RESBSL_vidConfig"
	.byte	0x11
	.uahalf	0x12a
	.byte	0x1
	.byte	0x1
	.uaword	0x15a5
	.uleb128 0x32
	.uaword	0x1df
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"ESMSRV_bGetCmdReqNm1"
	.byte	0xe
	.byte	0x58
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uaword	0x15ce
	.uleb128 0x32
	.uaword	0x1df
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"CCU6_u8GetPwmState"
	.byte	0x10
	.byte	0x5e
	.byte	0x1
	.uaword	0x1b4
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x211
	.byte	0x1
	.uaword	0x15ff
	.uleb128 0x22
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0xf
	.byte	0x7d
	.byte	0x1
	.uaword	0x1df
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_CHG_ON"
	.byte	0xf
	.byte	0x87
	.byte	0x1
	.uaword	0x1df
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Mutex_bGrabSpecifiedLock"
	.byte	0x9
	.byte	0x42
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uaword	0x1687
	.uleb128 0x32
	.uaword	0x548
	.uleb128 0x32
	.uaword	0x4a2
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"ERL_MarkNormalShutdown"
	.byte	0x12
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"MAIN_vidUpdateSystemRunTime"
	.byte	0x13
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"NvM_SetRamBlockStatus"
	.byte	0x14
	.uahalf	0x198
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0x16f6
	.uleb128 0x32
	.uaword	0x33b
	.uleb128 0x32
	.uaword	0x266
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"Dem_Shutdown"
	.byte	0x15
	.uahalf	0x618
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"NvM_WriteAll"
	.byte	0x14
	.uahalf	0x29c
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"MAIN_vidGetMsgOffDelayT_ms"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uaword	0x1749
	.uleb128 0x32
	.uaword	0x2c2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"NvM_Rb_GetStatus"
	.byte	0x14
	.uahalf	0x1aa
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0x176f
	.uleb128 0x32
	.uaword	0x176f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3fd
	.uleb128 0x35
	.byte	0x1
	.string	"MemIf_Rb_GetStatus"
	.byte	0x16
	.byte	0x48
	.byte	0x1
	.uaword	0x39b
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"MCU_u8GetResetCmd"
	.byte	0x17
	.byte	0xf
	.byte	0x1
	.uaword	0x1b4
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"CanTrcv_SetOpMode"
	.byte	0x18
	.uahalf	0x165
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0x17da
	.uleb128 0x32
	.uaword	0x1b4
	.uleb128 0x32
	.uaword	0x31f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"CanTrcv_GetOpMode_TJA1145"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0x180d
	.uleb128 0x32
	.uaword	0x1b4
	.uleb128 0x32
	.uaword	0x416
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"SBC_vidSetStdbyModCmd"
	.byte	0x19
	.byte	0x72
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uaword	0x1837
	.uleb128 0x32
	.uaword	0x1837
	.byte	0
	.uleb128 0x4
	.uaword	0x266
	.uleb128 0x30
	.byte	0x1
	.string	"MCU_vSetResetCmd"
	.byte	0x17
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.string	"BswM_Dcm_CommunicationMode_CurrentState"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.uaword	0x1b4
	.uleb128 0x32
	.uaword	0x1b4
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB422
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE422
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL95
	.uaword	.LVL96-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL105
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL110
	.uaword	.LVL111-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL112
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL91
	.uaword	.LVL92-1
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL92-1
	.uaword	.LVL94
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB423
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE423
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL125
	.uaword	.LVL126-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL128
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL132
	.uaword	.LVL133-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL140
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL121
	.uaword	.LVL122-1
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL122-1
	.uaword	.LVL124
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x52
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
.LASF1:
	.string	"MUTEX_LOCK_INDEX"
.LASF2:
	.string	"FAIL_vidDisableEmbFltCheck"
.LASF0:
	.string	"MUTEX_LOCK_OPERATION_TYPE"
	.extern	BswM_Dcm_CommunicationMode_CurrentState,STT_FUNC,0
	.extern	FAIL_vidDisableEmbFltCheck,STT_FUNC,0
	.extern	SBC_vidSetStdbyModCmd,STT_FUNC,0
	.extern	CanTrcv_GetOpMode_TJA1145,STT_FUNC,0
	.extern	CanTrcv_SetOpMode,STT_FUNC,0
	.extern	MCU_vSetResetCmd,STT_FUNC,0
	.extern	MCU_u8GetResetCmd,STT_FUNC,0
	.extern	ESM_u16PowerLatchTempo,STT_OBJECT,2
	.extern	MemIf_Rb_GetStatus,STT_FUNC,0
	.extern	NvM_Rb_GetStatus,STT_FUNC,0
	.extern	MAIN_vidGetMsgOffDelayT_ms,STT_FUNC,0
	.extern	NvM_WriteAll,STT_FUNC,0
	.extern	Dem_Shutdown,STT_FUNC,0
	.extern	NvM_SetRamBlockStatus,STT_FUNC,0
	.extern	MAIN_vidUpdateSystemRunTime,STT_FUNC,0
	.extern	ERL_MarkNormalShutdown,STT_FUNC,0
	.extern	Mutex_bGrabSpecifiedLock,STT_FUNC,0
	.extern	ESM_u8RestartDelayCntC,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON,STT_FUNC,0
	.extern	CCU6_u8GetPwmState,STT_FUNC,0
	.extern	ESMSRV_bGetCmdReqNm1,STT_FUNC,0
	.extern	RESBSL_vidConfig,STT_FUNC,0
	.extern	CCU6_vidSetPwmModReq,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN,STT_FUNC,0
	.extern	ESMSRV_vidSetCmdRes,STT_FUNC,0
	.extern	ESMSRV_bGetCmdReq,STT_FUNC,0
	.extern	ESMSRV_vidVSIInit,STT_FUNC,0
	.extern	ESM_u16OpTimeout,STT_OBJECT,2
	.extern	ESM_u16OpDelayTime,STT_OBJECT,2
	.extern	ESM_u8RestartDelayCnt,STT_OBJECT,1
	.extern	ESM_bAfterrunFin,STT_OBJECT,1
	.extern	ESM_bAfterrunReq,STT_OBJECT,1
	.extern	ESM_bMcuEnaReq,STT_OBJECT,1
	.extern	ESM_u16MsgOffDelay,STT_OBJECT,2
	.extern	ESM_u8PwrOffTim,STT_OBJECT,1
	.extern	ESM_u8PwrLNfStep,STT_OBJECT,1
	.extern	ESM_bPwrDnReadyFlg,STT_OBJECT,1
	.extern	ESM_bPwrLNfClrFltFinsh,STT_OBJECT,1
	.extern	ESM_bCallAppliOn,STT_OBJECT,1
	.extern	ESM_EsmMode,STT_OBJECT,2
	.extern	ESM_u16CmdRes,STT_OBJECT,2
	.extern	ESM_u16CmdReqNm1,STT_OBJECT,2
	.extern	ESM_u16CmdReq,STT_OBJECT,2
	.extern	ESM_PwrLFtState,STT_OBJECT,2
	.extern	ESM_PwrLNfState,STT_OBJECT,2
	.extern	ESM_OpFtState,STT_OBJECT,2
	.extern	ESM_OpNfState,STT_OBJECT,2
	.extern	ESM_StpIIFtState,STT_OBJECT,2
	.extern	ESM_StpIINfState,STT_OBJECT,2
	.extern	ESM_StpIState,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
