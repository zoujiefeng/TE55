	.file	"SBC.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	SBC_vidInit
	.type	SBC_vidInit, @function
SBC_vidInit:
.LFB410:
	.file 1 "bswcdd\\SBC\\SBC.c"
	.loc 1 95 0
	.loc 1 96 0
	mov	%d15, 0
	movh.a	%a15, hi:SBC_bDeintWdgCmd
	st.b	[%a15] lo:SBC_bDeintWdgCmd, %d15
	.loc 1 97 0
	movh.a	%a15, hi:SBC_bWdgActvFlg
	st.b	[%a15] lo:SBC_bWdgActvFlg, %d15
	.loc 1 98 0
	movh.a	%a15, hi:SBC_bStdbyModReq
	st.b	[%a15] lo:SBC_bStdbyModReq, %d15
	.loc 1 99 0
	movh.a	%a15, hi:SBC_u8MaxWdgErrCnt
	st.b	[%a15] lo:SBC_u8MaxWdgErrCnt, %d15
	.loc 1 100 0
	movh.a	%a15, hi:SBC_u8LDOManagerState
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 101 0
	movh.a	%a15, hi:SBC_u8DebounceCount
	.loc 1 102 0
	mov	%d2, 0
	.loc 1 101 0
	st.b	[%a15] lo:SBC_u8DebounceCount, %d15
	.loc 1 102 0
	movh.a	%a15, hi:SBC_f32BatteryVoltage
	st.w	[%a15] lo:SBC_f32BatteryVoltage, %d2
	.loc 1 103 0
	movh.a	%a15, hi:SBC_f32BkpVoltage
	st.w	[%a15] lo:SBC_f32BkpVoltage, %d2
	.loc 1 104 0
	movh.a	%a15, hi:SBC_bLDOStateIsChanged
	st.b	[%a15] lo:SBC_bLDOStateIsChanged, %d15
	.loc 1 105 0
	mov	%d15, 0
	movh.a	%a15, hi:SBC_u16InitWindowCnt
	.loc 1 108 0
	mov	%d2, 85
	.loc 1 109 0
	movh.a	%a3, hi:SBC_au8StdbyModDataBuff
	.loc 1 105 0
	st.h	[%a15] lo:SBC_u16InitWindowCnt, %d15
	.loc 1 108 0
	movh.a	%a15, hi:SBC_au8StdbyModCmdBuff
	lea	%a2, [%a15] lo:SBC_au8StdbyModCmdBuff
	st.b	[%a15] lo:SBC_au8StdbyModCmdBuff, %d2
	.loc 1 109 0
	mov	%d15, 4
	lea	%a15, [%a3] lo:SBC_au8StdbyModDataBuff
	.loc 1 111 0
	mov	%d3, -5
	st.b	[%a15] 1, %d3
	.loc 1 109 0
	st.b	[%a3] lo:SBC_au8StdbyModDataBuff, %d15
	.loc 1 113 0
	movh.a	%a15, hi:SBC_au8CloseLDOCmdBuff
	.loc 1 110 0
	mov	%d15, 86
	.loc 1 114 0
	movh.a	%a3, hi:SBC_au8CloseLDODataBuff
	mov	%d3, -54
	.loc 1 110 0
	st.b	[%a2] 1, %d15
	.loc 1 113 0
	st.b	[%a15] lo:SBC_au8CloseLDOCmdBuff, %d2
	lea	%a2, [%a15] lo:SBC_au8CloseLDOCmdBuff
	.loc 1 114 0
	st.b	[%a3] lo:SBC_au8CloseLDODataBuff, %d3
	lea	%a15, [%a3] lo:SBC_au8CloseLDODataBuff
	.loc 1 116 0
	mov	%d3, 53
	st.b	[%a15] 1, %d3
	.loc 1 119 0
	movh.a	%a3, hi:SBC_au8OpenLDODataBuff
	.loc 1 118 0
	movh.a	%a15, hi:SBC_au8OpenLDOCmdBuff
	.loc 1 119 0
	mov	%d3, -22
	.loc 1 115 0
	st.b	[%a2] 1, %d15
	.loc 1 118 0
	st.b	[%a15] lo:SBC_au8OpenLDOCmdBuff, %d2
	lea	%a2, [%a15] lo:SBC_au8OpenLDOCmdBuff
	.loc 1 119 0
	st.b	[%a3] lo:SBC_au8OpenLDODataBuff, %d3
	lea	%a15, [%a3] lo:SBC_au8OpenLDODataBuff
	.loc 1 121 0
	mov	%d3, 21
	st.b	[%a15] 1, %d3
	.loc 1 123 0
	movh.a	%a15, hi:SBC_au8InitModCmdBuff
	.loc 1 120 0
	st.b	[%a2] 1, %d15
	.loc 1 124 0
	movh.a	%a3, hi:SBC_au8InitModDataBuff
	.loc 1 123 0
	lea	%a2, [%a15] lo:SBC_au8InitModCmdBuff
	st.b	[%a15] lo:SBC_au8InitModCmdBuff, %d2
	.loc 1 125 0
	st.b	[%a2] 1, %d15
	.loc 1 124 0
	lea	%a15, [%a3] lo:SBC_au8InitModDataBuff
	mov	%d2, -20
	.loc 1 126 0
	mov	%d15, 19
	.loc 1 124 0
	st.b	[%a3] lo:SBC_au8InitModDataBuff, %d2
	.loc 1 126 0
	st.b	[%a15] 1, %d15
	ret
.LFE410:
	.size	SBC_vidInit, .-SBC_vidInit
	.align 1
	.global	SBC_bGetFaultClearFlgs
	.type	SBC_bGetFaultClearFlgs, @function
SBC_bGetFaultClearFlgs:
.LFB411:
	.loc 1 136 0
	.loc 1 138 0
	mov	%d2, 1
	ret
.LFE411:
	.size	SBC_bGetFaultClearFlgs, .-SBC_bGetFaultClearFlgs
	.align 1
	.global	SBC_bIsSbcFautOccr
	.type	SBC_bIsSbcFautOccr, @function
SBC_bIsSbcFautOccr:
.LFB412:
	.loc 1 147 0
.LVL0:
	.loc 1 151 0
	mov	%d2, 0
	ret
.LFE412:
	.size	SBC_bIsSbcFautOccr, .-SBC_bIsSbcFautOccr
	.align 1
	.global	SBC_vidSetDeinitWdgCmd
	.type	SBC_vidSetDeinitWdgCmd, @function
SBC_vidSetDeinitWdgCmd:
.LFB413:
	.loc 1 163 0
.LVL1:
	.loc 1 164 0
	movh.a	%a15, hi:SBC_bDeintWdgCmd
	st.b	[%a15] lo:SBC_bDeintWdgCmd, %d4
	ret
.LFE413:
	.size	SBC_vidSetDeinitWdgCmd, .-SBC_vidSetDeinitWdgCmd
	.align 1
	.global	SBC_bGetDeinitWdgCmd
	.type	SBC_bGetDeinitWdgCmd, @function
SBC_bGetDeinitWdgCmd:
.LFB414:
	.loc 1 177 0
	.loc 1 179 0
	movh.a	%a15, hi:SBC_bDeintWdgCmd
	ld.bu	%d2, [%a15] lo:SBC_bDeintWdgCmd
	ret
.LFE414:
	.size	SBC_bGetDeinitWdgCmd, .-SBC_bGetDeinitWdgCmd
	.align 1
	.global	SBC_vidSetWdgActvFinshFlg
	.type	SBC_vidSetWdgActvFinshFlg, @function
SBC_vidSetWdgActvFinshFlg:
.LFB415:
	.loc 1 191 0
	.loc 1 192 0
	mov	%d15, 1
	movh.a	%a15, hi:SBC_bWdgActvFlg
	st.b	[%a15] lo:SBC_bWdgActvFlg, %d15
	ret
.LFE415:
	.size	SBC_vidSetWdgActvFinshFlg, .-SBC_vidSetWdgActvFinshFlg
	.align 1
	.global	SBC_bGetWdgActvFinshFlg
	.type	SBC_bGetWdgActvFinshFlg, @function
SBC_bGetWdgActvFinshFlg:
.LFB416:
	.loc 1 205 0
	.loc 1 207 0
	movh.a	%a15, hi:SBC_bWdgActvFlg
	ld.bu	%d2, [%a15] lo:SBC_bWdgActvFlg
	ret
.LFE416:
	.size	SBC_bGetWdgActvFinshFlg, .-SBC_bGetWdgActvFinshFlg
	.align 1
	.global	SBC_u8GetMaxWdgErrCnt
	.type	SBC_u8GetMaxWdgErrCnt, @function
SBC_u8GetMaxWdgErrCnt:
.LFB417:
	.loc 1 219 0
	.loc 1 221 0
	movh.a	%a15, hi:SBC_u8MaxWdgErrCnt
	ld.bu	%d2, [%a15] lo:SBC_u8MaxWdgErrCnt
	ret
.LFE417:
	.size	SBC_u8GetMaxWdgErrCnt, .-SBC_u8GetMaxWdgErrCnt
	.align 1
	.global	SBC_vidSetStdbyModCmd
	.type	SBC_vidSetStdbyModCmd, @function
SBC_vidSetStdbyModCmd:
.LFB418:
	.loc 1 233 0
.LVL2:
	.loc 1 234 0
	movh.a	%a15, hi:SBC_bStdbyModReq
	st.b	[%a15] lo:SBC_bStdbyModReq, %d4
.LVL3:
.LBB19:
.LBB20:
	.loc 1 264 0
	movh.a	%a15, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a15] lo:SBC_u8UserCmdReq
	.loc 1 263 0
	mov	%d2, 0
	.loc 1 264 0
	jnz	%d15, .L10
	.loc 1 266 0
	mov	%d15, 1
	st.b	[%a15] lo:SBC_u8UserCmdReq, %d15
	.loc 1 271 0
	mov	%d2, 1
.L10:
.LVL4:
.LBE20:
.LBE19:
	.loc 1 236 0
	ret
.LFE418:
	.size	SBC_vidSetStdbyModCmd, .-SBC_vidSetStdbyModCmd
	.align 1
	.global	SBC_bGetStdbyModReq
	.type	SBC_bGetStdbyModReq, @function
SBC_bGetStdbyModReq:
.LFB419:
	.loc 1 248 0
	.loc 1 250 0
	movh.a	%a15, hi:SBC_bStdbyModReq
	ld.bu	%d2, [%a15] lo:SBC_bStdbyModReq
	ret
.LFE419:
	.size	SBC_bGetStdbyModReq, .-SBC_bGetStdbyModReq
	.align 1
	.global	SBC_bSetUserCmdReq
	.type	SBC_bSetUserCmdReq, @function
SBC_bSetUserCmdReq:
.LFB420:
	.loc 1 262 0
.LVL5:
	.loc 1 264 0
	movh.a	%a15, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a15] lo:SBC_u8UserCmdReq
	jz	%d15, .L15
	.loc 1 264 0 is_stmt 0 discriminator 1
	jnz	%d4, .L21
	.loc 1 266 0 is_stmt 1
	st.b	[%a15] lo:SBC_u8UserCmdReq, %d4
.L18:
	.loc 1 269 0
	mov	%d15, 1
	movh.a	%a15, hi:SBC_bSpiOperateFlag
	st.b	[%a15] lo:SBC_bSpiOperateFlag, %d15
	.loc 1 271 0
	mov	%d2, 1
	ret
.L15:
	.loc 1 266 0
	st.b	[%a15] lo:SBC_u8UserCmdReq, %d4
	.loc 1 271 0
	mov	%d2, 1
	.loc 1 267 0
	jz	%d4, .L18
	.loc 1 275 0
	ret
.L21:
	.loc 1 263 0
	mov	%d2, 0
	ret
.LFE420:
	.size	SBC_bSetUserCmdReq, .-SBC_bSetUserCmdReq
	.align 1
	.global	SBC_u8GetUserCmdReq
	.type	SBC_u8GetUserCmdReq, @function
SBC_u8GetUserCmdReq:
.LFB421:
	.loc 1 287 0
	.loc 1 289 0
	movh.a	%a15, hi:SBC_u8UserCmdReq
	ld.bu	%d2, [%a15] lo:SBC_u8UserCmdReq
	ret
.LFE421:
	.size	SBC_u8GetUserCmdReq, .-SBC_u8GetUserCmdReq
	.align 1
	.global	SBC_vidCloseLDO
	.type	SBC_vidCloseLDO, @function
SBC_vidCloseLDO:
.LFB422:
	.loc 1 298 0
.LVL6:
.LBB21:
.LBB22:
	.loc 1 264 0
	movh.a	%a15, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a15] lo:SBC_u8UserCmdReq
	jnz	%d15, .L23
	.loc 1 266 0
	mov	%d2, 2
	st.b	[%a15] lo:SBC_u8UserCmdReq, %d2
.LVL7:
.LBE22:
.LBE21:
	.loc 1 301 0
	movh.a	%a15, hi:SBC_bUserCmdSendFlag
	mov	%d2, 1
	st.b	[%a15] lo:SBC_bUserCmdSendFlag, %d2
	.loc 1 302 0
	movh.a	%a15, hi:SBC_bSpiOperateFlag
	st.b	[%a15] lo:SBC_bSpiOperateFlag, %d15
.LVL8:
.L23:
	ret
.LFE422:
	.size	SBC_vidCloseLDO, .-SBC_vidCloseLDO
	.align 1
	.global	SBC_vidSwitchInit
	.type	SBC_vidSwitchInit, @function
SBC_vidSwitchInit:
.LFB423:
	.loc 1 313 0
.LVL9:
.LBB23:
.LBB24:
	.loc 1 264 0
	movh.a	%a15, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a15] lo:SBC_u8UserCmdReq
	jnz	%d15, .L25
	.loc 1 266 0
	mov	%d2, 4
	st.b	[%a15] lo:SBC_u8UserCmdReq, %d2
.LVL10:
.LBE24:
.LBE23:
	.loc 1 316 0
	movh.a	%a15, hi:SBC_bUserCmdSendFlag
	mov	%d2, 1
	st.b	[%a15] lo:SBC_bUserCmdSendFlag, %d2
	.loc 1 317 0
	movh.a	%a15, hi:SBC_bSpiOperateFlag
	st.b	[%a15] lo:SBC_bSpiOperateFlag, %d15
.LVL11:
.L25:
	ret
.LFE423:
	.size	SBC_vidSwitchInit, .-SBC_vidSwitchInit
	.align 1
	.global	SBC_vidOpenLDO
	.type	SBC_vidOpenLDO, @function
SBC_vidOpenLDO:
.LFB424:
	.loc 1 328 0
.LVL12:
.LBB25:
.LBB26:
	.loc 1 264 0
	movh.a	%a15, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a15] lo:SBC_u8UserCmdReq
	jnz	%d15, .L27
	.loc 1 266 0
	mov	%d2, 3
	st.b	[%a15] lo:SBC_u8UserCmdReq, %d2
.LVL13:
.LBE26:
.LBE25:
	.loc 1 331 0
	movh.a	%a15, hi:SBC_bUserCmdSendFlag
	mov	%d2, 1
	st.b	[%a15] lo:SBC_bUserCmdSendFlag, %d2
	.loc 1 332 0
	movh.a	%a15, hi:SBC_bSpiOperateFlag
	st.b	[%a15] lo:SBC_bSpiOperateFlag, %d15
.LVL14:
.L27:
	ret
.LFE424:
	.size	SBC_vidOpenLDO, .-SBC_vidOpenLDO
	.align 1
	.global	SBC_bCheckOutputStt
	.type	SBC_bCheckOutputStt, @function
SBC_bCheckOutputStt:
.LFB426:
	.loc 1 648 0
.LVL15:
	.loc 1 652 0
	call	SBCHal_u16GetAdVal_P5VCom
.LVL16:
	movh.a	%a15, hi:SBC_u16P5vComRaw
	st.h	[%a15] lo:SBC_u16P5vComRaw, %d2
	.loc 1 653 0
	call	SBCHal_u16GetAdVal_P5VAD2S
.LVL17:
	movh.a	%a14, hi:SBC_u16P5vAD2SRaw
	st.h	[%a14] lo:SBC_u16P5vAD2SRaw, %d2
	.loc 1 654 0
	call	SBCHal_u16GetAdVal_P5VGateway
.LVL18:
	movh.a	%a12, hi:SBC_u16GatewayRaw
	st.h	[%a12] lo:SBC_u16GatewayRaw, %d2
	.loc 1 655 0
	call	SBCHal_u16GetAdVal_P5VBt
.LVL19:
	movh.a	%a13, hi:SBC_u16MainSupRaw
	st.h	[%a13] lo:SBC_u16MainSupRaw, %d2
	.loc 1 656 0
	call	SBCHal_u16GetAdVal_P5VRef
.LVL20:
	movh.a	%a2, hi:SBC_u16P5vRefProtRaw
	st.h	[%a2] lo:SBC_u16P5vRefProtRaw, %d2
	.loc 1 658 0
	movh.a	%a2, hi:SBC_ku16IntUnderVoltThdC
	ld.hu	%d15, [%a2] lo:SBC_ku16IntUnderVoltThdC
	ld.hu	%d3, [%a15] lo:SBC_u16P5vComRaw
	jlt.u	%d3, %d15, .L30
	.loc 1 659 0
	ld.hu	%d3, [%a12] lo:SBC_u16GatewayRaw
	jge.u	%d3, %d15, .L34
.L30:
	.loc 1 664 0
	movh.a	%a15, hi:SBC_u16IntUvTimCnt
	movh.a	%a2, hi:SBC_ku16IntUvTimoutC
	ld.hu	%d15, [%a15] lo:SBC_u16IntUvTimCnt
	ld.hu	%d2, [%a2] lo:SBC_ku16IntUvTimoutC
	jlt.u	%d15, %d2, .L35
.LVL21:
	.loc 1 672 0
	movh.a	%a15, hi:SBC_u16OtherAbnormCnt
	ld.h	%d15, [%a15] lo:SBC_u16OtherAbnormCnt
	.loc 1 671 0
	mov	%d2, 1
	.loc 1 672 0
	add	%d15, 1
	st.h	[%a15] lo:SBC_u16OtherAbnormCnt, %d15
	movh	%d15, 16256
.LVL22:
.L33:
	.loc 1 681 0
	movh.a	%a15, hi:SBC_bOtherSttFailFlg
	st.w	[%a15] lo:SBC_bOtherSttFailFlg, %d15
	.loc 1 684 0
	ret
.LVL23:
.L35:
	.loc 1 666 0
	add	%d15, 1
	st.h	[%a15] lo:SBC_u16IntUvTimCnt, %d15
	mov	%d15, 0
	.loc 1 681 0
	movh.a	%a15, hi:SBC_bOtherSttFailFlg
	.loc 1 667 0
	mov	%d2, 0
.LVL24:
	.loc 1 681 0
	st.w	[%a15] lo:SBC_bOtherSttFailFlg, %d15
	.loc 1 684 0
	ret
.LVL25:
.L34:
	.loc 1 660 0
	ld.hu	%d3, [%a13] lo:SBC_u16MainSupRaw
	jlt.u	%d3, %d15, .L30
	.loc 1 661 0
	ld.hu	%d4, [%a14] lo:SBC_u16P5vAD2SRaw
	.loc 1 662 0
	lt.u	%d3, %d4, %d15
	or.lt.u	%d3, %d2, %d15
	jnz	%d3, .L30
	.loc 1 678 0
	movh.a	%a15, hi:SBC_u16IntUvTimCnt
	st.h	[%a15] lo:SBC_u16IntUvTimCnt, %d3
	mov	%d15, 0
	.loc 1 677 0
	mov	%d2, 0
	j	.L33
.LFE426:
	.size	SBC_bCheckOutputStt, .-SBC_bCheckOutputStt
	.align 1
	.global	SBC_bUnderVoltageManager
	.type	SBC_bUnderVoltageManager, @function
SBC_bUnderVoltageManager:
.LFB425:
	.loc 1 343 0
.LVL26:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 355 0
	mov	%d15, 0
	st.b	[%SP] 3, %d15
	.loc 1 358 0
	call	SBCHal_f32GetBatteryVol
.LVL27:
	mov	%d15, %d2
.LVL28:
	.loc 1 363 0
	call	CCU6_bGetPwmRuningFlg
.LVL29:
	mov	%d9, %d2
.LVL30:
	.loc 1 364 0
	call	CCU6_u8GetPwmState
.LVL31:
	mov	%d10, %d2
.LVL32:
	.loc 1 365 0
	call	GCCU6_bGetPwmRuningFlg
.LVL33:
	mov	%d11, %d2
.LVL34:
	.loc 1 366 0
	call	GCCU6_u8GetPwmState
.LVL35:
	mov	%d12, %d2
.LVL36:
	.loc 1 367 0
	call	SBC_bCheckOutputStt
.LVL37:
	mov	%d8, %d2
.LVL38:
	.loc 1 368 0
	call	ESMSRV_bGetPoDnReadyFlg
.LVL39:
	.loc 1 370 0
	movh.a	%a15, hi:SBC_u8LDOManagerState
	ld.bu	%d3, [%a15] lo:SBC_u8LDOManagerState
	jlt.u	%d3, 12, .L96
.LVL40:
.L37:
	.loc 1 629 0
	mov	%d15, 2
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
.LVL41:
	.loc 1 631 0
	ret
.LVL42:
.L96:
	.loc 1 370 0
	movh.a	%a2, hi:.L39
	lea	%a2, [%a2] lo:.L39
	addsc.a	%a2, %a2, %d3, 2
	ji	%a2
	.align 2
	.align 2
.L39:
	.code32
	j	.L38
	.code32
	j	.L40
	.code32
	j	.L41
	.code32
	j	.L42
	.code32
	j	.L43
	.code32
	j	.L44
	.code32
	j	.L45
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L92
.L40:
	.loc 1 388 0
	movh.a	%a12, hi:SBC_u16InitWindowCnt
	ld.hu	%d15, [%a12] lo:SBC_u16InitWindowCnt
.LVL43:
	ge.u	%d15, %d15, 100
	jnz	%d15, .L37
.LBB27:
	.loc 1 396 0
	call	BSW_bComIsNormal
.LVL44:
	.loc 1 397 0
	mov	%d4, 0
	lea	%a4, [%SP] 4
	.loc 1 396 0
	mov	%d15, %d2
.LVL45:
	.loc 1 397 0
	call	CanIf_GetControllerMode
.LVL46:
	.loc 1 398 0
	mov	%d4, 0
	lea	%a4, [%SP] 5
	call	CanSM_GetBusoff_Substate
.LVL47:
	.loc 1 399 0
	mov	%d4, 0
	lea	%a4, [%SP] 6
	call	CanSM_GetNetworkMode_Substate
.LVL48:
	.loc 1 400 0
	mov	%d4, 0
	lea	%a4, [%SP] 7
	call	ComM_GetState
.LVL49:
	.loc 1 402 0
	ld.h	%d2, [%a12] lo:SBC_u16InitWindowCnt
	add	%d2, 1
	st.h	[%a12] lo:SBC_u16InitWindowCnt, %d2
	.loc 1 404 0
	jnz	%d15, .L92
	.loc 1 405 0
	ld.bu	%d15, [%SP] 7
.LVL50:
	jne	%d15, 2, .L92
	.loc 1 406 0
	ld.bu	%d15, [%SP] 4
	jeq	%d15, 2, .L97
.L54:
	.loc 1 409 0
	movh.a	%a15, hi:SBC_u8DebounceCount
	ld.bu	%d15, [%a15] lo:SBC_u8DebounceCount
	jge.u	%d15, 5, .L55
	.loc 1 411 0
	add	%d15, 1
	st.b	[%a15] lo:SBC_u8DebounceCount, %d15
.L92:
.LBE27:
	.loc 1 354 0
	mov	%d2, 0
.L50:
.LVL51:
	.loc 1 635 0
	ret
.LVL52:
.L38:
	.loc 1 374 0
	movh.a	%a2, hi:SBC_u16InitWindowCnt
	ld.hu	%d15, [%a2] lo:SBC_u16InitWindowCnt
.LVL53:
	ge.u	%d2, %d15, 40
.LVL54:
	jnz	%d2, .L51
	.loc 1 376 0
	add	%d15, 1
	st.h	[%a2] lo:SBC_u16InitWindowCnt, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL55:
.L41:
	.loc 1 430 0
	movh.a	%a2, hi:SBC_bLDOStateIsChanged
	mov	%d4, 0
	.loc 1 432 0
	ne	%d3, %d10, 1
	.loc 1 430 0
	st.b	[%a2] lo:SBC_bLDOStateIsChanged, %d4
	.loc 1 432 0
	and.eq	%d3, %d9, 0
	jz	%d3, .L56
	.loc 1 434 0
	ne	%d3, %d12, 1
	.loc 1 435 0
	and	%d2, %d2, 255
.LVL56:
	.loc 1 434 0
	and.eq	%d3, %d11, 0
	.loc 1 435 0
	eq	%d2, %d2, 0
	and	%d2, %d3
	jz	%d2, .L56
	.loc 1 440 0
	movh.a	%a3, hi:SBC_f32UnderVolLowThresholdC
	ld.w	%d2, [%a3] lo:SBC_f32UnderVolLowThresholdC
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,2, %d2,1
	jz	%d2, .L57
	.loc 1 441 0 discriminator 1
	movh.a	%a3, hi:SBC_f32UnderVolHighThresholdC
	.loc 1 440 0 discriminator 1
	ld.w	%d2, [%a3] lo:SBC_f32UnderVolHighThresholdC
	cmp.f	%d15, %d15, %d2
.LVL57:
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L57
	.loc 1 443 0
	movh.a	%a2, hi:SBC_u8DebounceCount
	ld.bu	%d15, [%a2] lo:SBC_u8DebounceCount
	jlt.u	%d15, 5, .L94
	.loc 1 452 0
	mov	%d15, 3
	.loc 1 450 0
	st.b	[%a2] lo:SBC_u8DebounceCount, %d4
	.loc 1 452 0
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL58:
.L42:
	.loc 1 477 0
	movh.a	%a2, hi:SBC_u16IntUvTimCnt
	ld.hu	%d15, [%a2] lo:SBC_u16IntUvTimCnt
.LVL59:
	jz	%d15, .L98
	.loc 1 354 0
	mov	%d2, 0
.LVL60:
	.loc 1 482 0
	jne	%d8, 1, .L50
	.loc 1 484 0
	movh.a	%a2, hi:SBC_bLDOStateIsChanged
	.loc 1 485 0
	mov	%d15, 4
	.loc 1 484 0
	st.b	[%a2] lo:SBC_bLDOStateIsChanged, %d8
	.loc 1 485 0
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	ret
.LVL61:
.L46:
	.loc 1 538 0
	movh.a	%a2, hi:SBC_f32RecoverThresholdC
	ld.w	%d2, [%a2] lo:SBC_f32RecoverThresholdC
.LVL62:
	cmp.f	%d15, %d15, %d2
.LVL63:
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L56
	.loc 1 540 0
	movh.a	%a12, hi:SBC_u8DebounceCount
	ld.bu	%d15, [%a12] lo:SBC_u8DebounceCount
	jge.u	%d15, 5, .L65
	.loc 1 542 0
	add	%d15, 1
	st.b	[%a12] lo:SBC_u8DebounceCount, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL64:
.L47:
	.loc 1 572 0
	movh.a	%a2, hi:SBC_bUserCmdSendFlag
	ld.bu	%d15, [%a2] lo:SBC_bUserCmdSendFlag
.LVL65:
	jnz	%d15, .L67
.LVL66:
.LBB28:
.LBB29:
.LBB30:
.LBB31:
	.loc 1 264 0
	movh.a	%a3, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a3] lo:SBC_u8UserCmdReq
	jnz	%d15, .L67
	.loc 1 266 0
	mov	%d2, 3
.LVL67:
.L93:
	st.b	[%a3] lo:SBC_u8UserCmdReq, %d2
.LVL68:
.LBE31:
.LBE30:
	.loc 1 332 0
	movh.a	%a15, hi:SBC_bSpiOperateFlag
	.loc 1 331 0
	mov	%d2, 1
	st.b	[%a2] lo:SBC_bUserCmdSendFlag, %d2
	.loc 1 332 0
	st.b	[%a15] lo:SBC_bSpiOperateFlag, %d15
.LBE29:
.LBE28:
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL69:
.L48:
	.loc 1 593 0
	mov	%d4, 0
	lea	%a4, [%SP] 3
	call	CanTrcv_GetOpMode_TJA1145
.LVL70:
	.loc 1 594 0
	ld.bu	%d15, [%SP] 3
.LVL71:
	jnz	%d15, .L68
	.loc 1 596 0
	mov	%d15, 2
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 591 0
	mov	%d2, 1
	ret
.LVL72:
.L49:
	.loc 1 607 0
	movh.a	%a2, hi:SBC_f32RecoverThresholdC
	ld.w	%d2, [%a2] lo:SBC_f32RecoverThresholdC
.LVL73:
	cmp.f	%d15, %d15, %d2
.LVL74:
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L92
	.loc 1 609 0
	movh.a	%a2, hi:SBC_u8DebounceCount
	ld.bu	%d15, [%a2] lo:SBC_u8DebounceCount
	jge.u	%d15, 5, .L70
.L94:
	.loc 1 611 0
	add	%d15, 1
	st.b	[%a2] lo:SBC_u8DebounceCount, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL75:
.L44:
	.loc 1 510 0
	mov	%d4, 0
	mov	%d5, 1
	call	CanTrcv_SetOpMode
.LVL76:
	.loc 1 511 0
	mov	%d15, 6
.LVL77:
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
	.loc 1 513 0
	ret
.LVL78:
.L45:
	.loc 1 518 0
	movh.a	%a2, hi:SBC_bUserCmdSendFlag
	ld.bu	%d15, [%a2] lo:SBC_bUserCmdSendFlag
.LVL79:
	jnz	%d15, .L63
.LVL80:
.LBB32:
.LBB33:
.LBB34:
.LBB35:
	.loc 1 264 0
	movh.a	%a3, hi:SBC_u8UserCmdReq
	ld.bu	%d15, [%a3] lo:SBC_u8UserCmdReq
	.loc 1 266 0
	mov	%d2, 2
.LVL81:
	.loc 1 264 0
	jz	%d15, .L93
.LVL82:
.L63:
.LBE35:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 524 0
	movh.a	%a3, hi:SBC_bSpiOperateFlag
	ld.bu	%d15, [%a3] lo:SBC_bSpiOperateFlag
	.loc 1 354 0
	mov	%d2, 0
	.loc 1 524 0
	jz	%d15, .L50
	.loc 1 527 0
	mov	%d15, 7
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 528 0
	movh.a	%a15, hi:SBC_u8DebounceCount
	st.b	[%a15] lo:SBC_u8DebounceCount, %d2
	.loc 1 529 0
	st.b	[%a2] lo:SBC_bUserCmdSendFlag, %d2
	ret
.LVL83:
.L43:
	.loc 1 496 0
	mov	%d4, 0
	call	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8
.LVL84:
	.loc 1 497 0
	movh.a	%a2, hi:SBC_bLDOStateIsChanged
	ld.bu	%d15, [%a2] lo:SBC_bLDOStateIsChanged
.LVL85:
	jeq	%d15, 1, .L99
	.loc 1 503 0
	mov	%d15, 7
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL86:
.L67:
	.loc 1 578 0
	movh.a	%a3, hi:SBC_bSpiOperateFlag
	ld.bu	%d15, [%a3] lo:SBC_bSpiOperateFlag
	.loc 1 354 0
	mov	%d2, 0
.LVL87:
	.loc 1 578 0
	jz	%d15, .L50
	.loc 1 581 0
	mov	%d15, 9
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 582 0
	st.b	[%a2] lo:SBC_bUserCmdSendFlag, %d2
	ret
.L56:
	.loc 1 465 0
	mov	%d15, 0
	movh.a	%a15, hi:SBC_u8DebounceCount
	st.b	[%a15] lo:SBC_u8DebounceCount, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL88:
.L98:
	.loc 1 479 0
	movh.a	%a2, hi:SBC_bLDOStateIsChanged
	st.b	[%a2] lo:SBC_bLDOStateIsChanged, %d15
	.loc 1 480 0
	mov	%d15, 4
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
.LVL89:
	ret
.L51:
	.loc 1 380 0
	mov	%d15, 1
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 381 0
	call	BSW_vidClearComNormalFlag
.LVL90:
	.loc 1 354 0
	mov	%d2, 0
	ret
.LVL91:
.L68:
	.loc 1 600 0
	mov	%e4, 0
	call	CanTrcv_SetOpMode
.LVL92:
	.loc 1 591 0
	mov	%d2, 1
	ret
.LVL93:
.L99:
	.loc 1 499 0
	mov	%d15, 5
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.L65:
	.loc 1 546 0
	mov	%d4, 2
	call	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8
.LVL94:
	.loc 1 548 0
	movh.a	%a2, hi:SBC_bLDOStateIsChanged
	ld.bu	%d15, [%a2] lo:SBC_bLDOStateIsChanged
	.loc 1 555 0
	mov	%d2, 8
	eq	%d15, %d15, 1
	sel	%d15, %d15, %d2, 2
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 559 0
	mov	%d15, 0
	st.b	[%a12] lo:SBC_u8DebounceCount, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.L70:
	.loc 1 615 0
	call	MCU_vSetResetCmd
.LVL95:
	.loc 1 616 0
	mov	%d15, 11
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.L57:
	.loc 1 455 0
	jne	%d8, 1, .L56
	.loc 1 458 0
	mov	%d15, 0
	movh.a	%a3, hi:SBC_u8DebounceCount
	st.b	[%a3] lo:SBC_u8DebounceCount, %d15
	.loc 1 461 0
	mov	%d15, 4
	.loc 1 460 0
	st.b	[%a2] lo:SBC_bLDOStateIsChanged, %d8
	.loc 1 461 0
	st.b	[%a15] lo:SBC_u8LDOManagerState, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.L55:
.LBB36:
	.loc 1 415 0
	mov	%d15, 0
	st.b	[%a15] lo:SBC_u8DebounceCount, %d15
.LBE36:
	.loc 1 354 0
	mov	%d2, 0
	j	.L50
.L97:
.LBB37:
	.loc 1 407 0
	ld.bu	%d15, [%SP] 6
	jne	%d15, 2, .L54
.LBE37:
	.loc 1 354 0
	mov	%d2, 0
	j	.L50
.LFE425:
	.size	SBC_bUnderVoltageManager, .-SBC_bUnderVoltageManager
.section .bss.a2.SBC_u16InitWindowCnt,"aw",@nobits
	.align 1
	.type	SBC_u16InitWindowCnt, @object
	.size	SBC_u16InitWindowCnt, 2
SBC_u16InitWindowCnt:
	.zero	2
.section .bss.a1.SBC_bLDOStateIsChanged,"aw",@nobits
	.type	SBC_bLDOStateIsChanged, @object
	.size	SBC_bLDOStateIsChanged, 1
SBC_bLDOStateIsChanged:
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
	.uaword	.LFB410
	.uaword	.LFE410-.LFB410
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB411
	.uaword	.LFE411-.LFB411
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB413
	.uaword	.LFE413-.LFB413
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB414
	.uaword	.LFE414-.LFB414
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB415
	.uaword	.LFE415-.LFB415
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB416
	.uaword	.LFE416-.LFB416
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB417
	.uaword	.LFE417-.LFB417
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB418
	.uaword	.LFE418-.LFB418
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB419
	.uaword	.LFE419-.LFB419
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB420
	.uaword	.LFE420-.LFB420
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB421
	.uaword	.LFE421-.LFB421
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB422
	.uaword	.LFE422-.LFB422
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB423
	.uaword	.LFE423-.LFB423
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB424
	.uaword	.LFE424-.LFB424
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB426
	.uaword	.LFE426-.LFB426
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB425
	.uaword	.LFE425-.LFB425
	.byte	0x4
	.uaword	.LCFI0-.LFB425
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE32:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 10 "bswcdd\\SBC\\SBC.h"
	.file 11 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 12 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 13 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 14 "bswcdd\\SBC\\SBC_L.h"
	.file 15 ".\\output\\inc/..\\..\\bswcdd\\BSW\\bswsrv.h"
	.file 16 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
	.file 17 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
	.file 18 ".\\output\\inc/..\\..\\bswcdd\\CCU6\\CCU6.h"
	.file 19 ".\\output\\inc/..\\..\\bswcdd\\GCCU6\\GCCU6.h"
	.file 20 ".\\output\\inc/..\\..\\bsw\\CanTrcv\\api\\CanTrcv.h"
	.file 21 ".\\output\\inc/..\\..\\rte\\Rte_ASW_NM.h"
	.file 22 ".\\output\\inc/..\\..\\ASW\\ASW_DCM\\src\\Dcm_ExternalServiceProcessing.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x194a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SBC\\SBC.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x19b
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1ac
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x1ee
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x272
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
	.uaword	0x19b
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
	.uaword	0x201
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x201
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x84
	.uaword	0x33b
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
	.uaword	0x2e4
	.uleb128 0x6
	.uaword	0x201
	.uleb128 0x6
	.uaword	0x20e
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x6
	.byte	0xe0
	.uaword	0x201
	.uleb128 0x7
	.uaword	0x201
	.uaword	0x386
	.uleb128 0x8
	.uaword	0x1f5
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0x89
	.uaword	0x41e
	.uleb128 0x5
	.string	"COMM_NO_COM_NO_PENDING_REQUEST"
	.sleb128 0
	.uleb128 0x5
	.string	"COMM_NO_COM_REQUEST_PENDING"
	.sleb128 1
	.uleb128 0x5
	.string	"COMM_FULL_COM_NETWORK_REQUESTED"
	.sleb128 2
	.uleb128 0x5
	.string	"COMM_FULL_COM_READY_SLEEP"
	.sleb128 3
	.uleb128 0x5
	.string	"COMM_SILENT_COM"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"ComM_StateType"
	.byte	0x7
	.byte	0x8f
	.uaword	0x386
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.byte	0x49
	.uaword	0x486
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
	.byte	0x8
	.byte	0x5b
	.uaword	0x434
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0xab
	.uaword	0x5b4
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
	.byte	0x9
	.byte	0xb6
	.uaword	0x4a6
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0xba
	.uaword	0x68c
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
	.byte	0x9
	.byte	0xc2
	.uaword	0x5da
	.uleb128 0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uaword	0x734
	.uleb128 0x5
	.string	"SBC_USER_IDLE"
	.sleb128 0
	.uleb128 0x5
	.string	"SBC_USER_CMD_GOTO_STANDBY"
	.sleb128 1
	.uleb128 0x5
	.string	"SBC_USER_CMD_CLOSE_LDO"
	.sleb128 2
	.uleb128 0x5
	.string	"SBC_USER_CMD_OPEN_LDO"
	.sleb128 3
	.uleb128 0x5
	.string	"SBC_USER_CMD_GOTO_INIT"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x33b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x4
	.uaword	0x748
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8c
	.uaword	0x773
	.uleb128 0xc
	.string	"module"
	.byte	0xb
	.byte	0x8e
	.uaword	0x742
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"index"
	.byte	0xb
	.byte	0x8f
	.uaword	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0xb
	.byte	0x90
	.uaword	0x749
	.uleb128 0x4
	.byte	0x1
	.byte	0xc
	.byte	0x88
	.uaword	0x7ee
	.uleb128 0x5
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0xd
	.uahalf	0x160
	.uaword	0x8f7
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3f
	.uaword	0x9ee
	.uleb128 0x5
	.string	"eSBC_Init"
	.sleb128 0
	.uleb128 0x5
	.string	"eSBC_CheckComStack"
	.sleb128 1
	.uleb128 0x5
	.string	"eSBC_UnderVolDiag"
	.sleb128 2
	.uleb128 0x5
	.string	"eSBC_CheckLDOState"
	.sleb128 3
	.uleb128 0x5
	.string	"eSBC_SetNoComReq"
	.sleb128 4
	.uleb128 0x5
	.string	"eSBC_SetTrcvSleepReq"
	.sleb128 5
	.uleb128 0x5
	.string	"eSBC_SetLDOCloseReq"
	.sleb128 6
	.uleb128 0x5
	.string	"eSBC_WaitNormal"
	.sleb128 7
	.uleb128 0x5
	.string	"eSBC_SetLDOOpenReq"
	.sleb128 8
	.uleb128 0x5
	.string	"eSBC_SetTrcvNormalReq"
	.sleb128 9
	.uleb128 0x5
	.string	"eSBC_PreEcuReset"
	.sleb128 10
	.uleb128 0x5
	.string	"eSBC_FaultState"
	.sleb128 11
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"SBC_bSetUserCmdReq"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uaword	0xa39
	.uleb128 0xf
	.string	"u8UserCmdReq"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x357
	.uleb128 0x10
	.string	"bReturnVal"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x285
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"SBC_vidCloseLDO"
	.byte	0x1
	.uahalf	0x129
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"SBC_vidOpenLDO"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"SBC_vidInit"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB410
	.uaword	.LFE410
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"SBC_bGetFaultClearFlgs"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB411
	.uaword	.LFE411
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"SBC_bIsSbcFautOccr"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB412
	.uaword	.LFE412
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xaf2
	.uleb128 0x15
	.string	"Local_bFltSts"
	.byte	0x1
	.byte	0x94
	.uaword	0x285
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"SBC_vidSetDeinitWdgCmd"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	.LFB413
	.uaword	.LFE413
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb33
	.uleb128 0x17
	.string	"bDeinitCmd"
	.byte	0x1
	.byte	0xa2
	.uaword	0xb33
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.uaword	0x285
	.uleb128 0x13
	.byte	0x1
	.string	"SBC_bGetDeinitWdgCmd"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"SBC_vidSetWdgActvFinshFlg"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"SBC_bGetWdgActvFinshFlg"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB416
	.uaword	.LFE416
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"SBC_u8GetMaxWdgErrCnt"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	0x201
	.uaword	.LFB417
	.uaword	.LFE417
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"SBC_vidSetStdbyModCmd"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB418
	.uaword	.LFE418
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc54
	.uleb128 0x17
	.string	"bStdbyModReq"
	.byte	0x1
	.byte	0xe8
	.uaword	0xb33
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uaword	0x9ee
	.uaword	.LBB19
	.uaword	.LBE19
	.byte	0x1
	.byte	0xeb
	.uleb128 0x19
	.uaword	0xa10
	.byte	0x1
	.uleb128 0x1a
	.uaword	.LBB20
	.uaword	.LBE20
	.uleb128 0x1b
	.uaword	0xa25
	.uaword	.LLST0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"SBC_bGetStdbyModReq"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB419
	.uaword	.LFE419
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x9ee
	.uaword	.LFB420
	.uaword	.LFE420
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xca0
	.uleb128 0x1d
	.uaword	0xa10
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	0xa25
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"SBC_u8GetUserCmdReq"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	0x201
	.uaword	.LFB421
	.uaword	.LFE421
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1c
	.uaword	0xa39
	.uaword	.LFB422
	.uaword	.LFE422
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd0a
	.uleb128 0x20
	.uaword	0x9ee
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x1
	.uahalf	0x12b
	.uleb128 0x19
	.uaword	0xa10
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LBB22
	.uaword	.LBE22
	.uleb128 0x1b
	.uaword	0xa25
	.uaword	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"SBC_vidSwitchInit"
	.byte	0x1
	.uahalf	0x138
	.byte	0x1
	.uaword	.LFB423
	.uaword	.LFE423
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd6c
	.uleb128 0x22
	.string	"type"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x201
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	0x9ee
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.uahalf	0x13a
	.uleb128 0x19
	.uaword	0xa10
	.byte	0x4
	.uleb128 0x1a
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x1b
	.uaword	0xa25
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0xa50
	.uaword	.LFB424
	.uaword	.LFE424
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdac
	.uleb128 0x20
	.uaword	0x9ee
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.uahalf	0x149
	.uleb128 0x19
	.uaword	0xa10
	.byte	0x3
	.uleb128 0x1a
	.uaword	.LBB26
	.uaword	.LBE26
	.uleb128 0x1b
	.uaword	0xa25
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"SBC_bCheckOutputStt"
	.byte	0x1
	.uahalf	0x287
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB426
	.uaword	.LFE426
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe3d
	.uleb128 0x24
	.string	"bLocOtherSttFailFlg"
	.byte	0x1
	.uahalf	0x289
	.uaword	0x285
	.uaword	.LLST4
	.uleb128 0x25
	.string	"bLocVcuTout"
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x285
	.byte	0
	.uleb128 0x26
	.uaword	.LVL16
	.uaword	0x1608
	.uleb128 0x26
	.uaword	.LVL17
	.uaword	0x162c
	.uleb128 0x26
	.uaword	.LVL18
	.uaword	0x1651
	.uleb128 0x26
	.uaword	.LVL19
	.uaword	0x1679
	.uleb128 0x26
	.uaword	.LVL20
	.uaword	0x169c
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"SBC_bUnderVoltageManager"
	.byte	0x1
	.uahalf	0x156
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB425
	.uaword	.LFE425
	.uaword	.LLST5
	.byte	0x1
	.uaword	0x11c6
	.uleb128 0x24
	.string	"bTJA1145NeedToInit"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x285
	.uaword	.LLST6
	.uleb128 0x24
	.string	"bLocPwmOngoingFlag"
	.byte	0x1
	.uahalf	0x159
	.uaword	0x285
	.uaword	.LLST7
	.uleb128 0x24
	.string	"bLocGPwmOngoingFlag"
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x285
	.uaword	.LLST8
	.uleb128 0x24
	.string	"bLocOtherCheckFail"
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x285
	.uaword	.LLST9
	.uleb128 0x24
	.string	"bLocEsmPoDnReady"
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x285
	.uaword	.LLST10
	.uleb128 0x24
	.string	"f32LocBatValAd"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x263
	.uaword	.LLST11
	.uleb128 0x28
	.string	"f32LocBkpVolAd"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x263
	.byte	0x4
	.uaword	0
	.uleb128 0x24
	.string	"u8LocCCU6State"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x201
	.uaword	.LLST12
	.uleb128 0x24
	.string	"u8LocGCCU6State"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x201
	.uaword	.LLST13
	.uleb128 0x29
	.string	"CurMode"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x33b
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x170
	.uaword	0x1ee
	.byte	0x1
	.uaword	0xfa0
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0
	.uaword	0x1081
	.uleb128 0x24
	.string	"bComIsNoraml"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x285
	.uaword	.LLST14
	.uleb128 0x29
	.string	"eCtrlType"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x486
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x29
	.string	"eBORType"
	.byte	0x1
	.uahalf	0x188
	.uaword	0x68c
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x29
	.string	"eNWModeType"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x5b4
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x29
	.string	"eComMType"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x41e
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x26
	.uaword	.LVL44
	.uaword	0x16c0
	.uleb128 0x2d
	.uaword	.LVL46
	.uaword	0x16db
	.uaword	0x1039
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL47
	.uaword	0x1712
	.uaword	0x1052
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL48
	.uaword	0x174b
	.uaword	0x106b
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL49
	.uaword	0x1789
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xa50
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x10c3
	.uleb128 0x20
	.uaword	0x9ee
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x149
	.uleb128 0x31
	.uaword	0xa10
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x1b
	.uaword	0xa25
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xa39
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x208
	.uaword	0x1105
	.uleb128 0x20
	.uaword	0x9ee
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x12b
	.uleb128 0x31
	.uaword	0xa10
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x1b
	.uaword	0xa25
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL27
	.uaword	0x17b6
	.uleb128 0x26
	.uaword	.LVL29
	.uaword	0x17d8
	.uleb128 0x26
	.uaword	.LVL31
	.uaword	0x17f8
	.uleb128 0x26
	.uaword	.LVL33
	.uaword	0x1815
	.uleb128 0x26
	.uaword	.LVL35
	.uaword	0x1836
	.uleb128 0x26
	.uaword	.LVL37
	.uaword	0xdac
	.uleb128 0x26
	.uaword	.LVL39
	.uaword	0x1854
	.uleb128 0x2d
	.uaword	.LVL70
	.uaword	0x1868
	.uaword	0x115d
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL76
	.uaword	0x189b
	.uaword	0x1175
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL84
	.uaword	0x18c7
	.uaword	0x1188
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.uaword	.LVL90
	.uaword	0x1916
	.uleb128 0x2d
	.uaword	.LVL92
	.uaword	0x189b
	.uaword	0x11a9
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL94
	.uaword	0x18c7
	.uaword	0x11bc
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x26
	.uaword	.LVL95
	.uaword	0x1936
	.byte	0
	.uleb128 0x32
	.string	"SBC_bLDOStateIsChanged"
	.byte	0x1
	.byte	0x52
	.uaword	0x285
	.byte	0x5
	.byte	0x3
	.uaword	SBC_bLDOStateIsChanged
	.uleb128 0x32
	.string	"SBC_u16InitWindowCnt"
	.byte	0x1
	.byte	0x53
	.uaword	0x20e
	.byte	0x5
	.byte	0x3
	.uaword	SBC_u16InitWindowCnt
	.uleb128 0x33
	.string	"SBC_u8DebounceCount"
	.byte	0xa
	.byte	0x4e
	.uaword	0x201
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u8LDOManagerState"
	.byte	0xa
	.byte	0x4f
	.uaword	0x201
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8StdbyModCmdBuff"
	.byte	0xa
	.byte	0x50
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8StdbyModDataBuff"
	.byte	0xa
	.byte	0x51
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8CloseLDOCmdBuff"
	.byte	0xa
	.byte	0x52
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8CloseLDODataBuff"
	.byte	0xa
	.byte	0x53
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8OpenLDOCmdBuff"
	.byte	0xa
	.byte	0x54
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8OpenLDODataBuff"
	.byte	0xa
	.byte	0x55
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8InitModCmdBuff"
	.byte	0xa
	.byte	0x56
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_au8InitModDataBuff"
	.byte	0xa
	.byte	0x57
	.uaword	0x376
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u8MaxWdgErrCnt"
	.byte	0xa
	.byte	0x58
	.uaword	0x201
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_f32BatteryVoltage"
	.byte	0xa
	.byte	0x5b
	.uaword	0x263
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_f32BkpVoltage"
	.byte	0xa
	.byte	0x5c
	.uaword	0x263
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_bOtherSttFailFlg"
	.byte	0xa
	.byte	0x5d
	.uaword	0x263
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_ku16IntUnderVoltThdC"
	.byte	0xe
	.byte	0x37
	.uaword	0x35c
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_ku16IntUvTimoutC"
	.byte	0xe
	.byte	0x38
	.uaword	0x35c
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_f32UnderVolHighThresholdC"
	.byte	0xe
	.byte	0x39
	.uaword	0x1423
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x263
	.uleb128 0x33
	.string	"SBC_f32UnderVolLowThresholdC"
	.byte	0xe
	.byte	0x3a
	.uaword	0x1423
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_f32RecoverThresholdC"
	.byte	0xe
	.byte	0x3b
	.uaword	0x1423
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u8UserCmdReq"
	.byte	0xe
	.byte	0x46
	.uaword	0x201
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16P5vAD2SRaw"
	.byte	0xe
	.byte	0x47
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16GatewayRaw"
	.byte	0xe
	.byte	0x48
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16MainSupRaw"
	.byte	0xe
	.byte	0x49
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16P5vRefProtRaw"
	.byte	0xe
	.byte	0x4a
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16P5vComRaw"
	.byte	0xe
	.byte	0x4b
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16IntUvTimCnt"
	.byte	0xe
	.byte	0x4c
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_u16OtherAbnormCnt"
	.byte	0xe
	.byte	0x4d
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_bDeintWdgCmd"
	.byte	0xe
	.byte	0x4e
	.uaword	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_bStdbyModReq"
	.byte	0xe
	.byte	0x4f
	.uaword	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_bWdgActvFlg"
	.byte	0xe
	.byte	0x50
	.uaword	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_bSpiOperateFlag"
	.byte	0xe
	.byte	0x51
	.uaword	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"SBC_bUserCmdSendFlag"
	.byte	0xe
	.byte	0x52
	.uaword	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x773
	.uaword	0x15e6
	.uleb128 0x8
	.uaword	0x1f5
	.byte	0x3
	.byte	0
	.uleb128 0x33
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xc
	.byte	0xaa
	.uaword	0x1603
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x15d6
	.uleb128 0x34
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VCom"
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VAD2S"
	.byte	0xa
	.byte	0x7a
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VGateway"
	.byte	0xa
	.byte	0x77
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VBt"
	.byte	0xa
	.byte	0x78
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VRef"
	.byte	0xa
	.byte	0x79
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"BSW_bComIsNormal"
	.byte	0xf
	.byte	0x3c
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"CanIf_GetControllerMode"
	.byte	0x10
	.byte	0x53
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x170c
	.uleb128 0x36
	.uaword	0x201
	.uleb128 0x36
	.uaword	0x170c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x486
	.uleb128 0x37
	.byte	0x1
	.string	"CanSM_GetBusoff_Substate"
	.byte	0x9
	.uahalf	0x10e
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x1745
	.uleb128 0x36
	.uaword	0x201
	.uleb128 0x36
	.uaword	0x1745
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x68c
	.uleb128 0x37
	.byte	0x1
	.string	"CanSM_GetNetworkMode_Substate"
	.byte	0x9
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x1783
	.uleb128 0x36
	.uaword	0x2cb
	.uleb128 0x36
	.uaword	0x1783
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5b4
	.uleb128 0x35
	.byte	0x1
	.string	"ComM_GetState"
	.byte	0x11
	.byte	0x69
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x17b0
	.uleb128 0x36
	.uaword	0x2cb
	.uleb128 0x36
	.uaword	0x17b0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x41e
	.uleb128 0x34
	.byte	0x1
	.string	"SBCHal_f32GetBatteryVol"
	.byte	0xa
	.byte	0x7b
	.byte	0x1
	.uaword	0x263
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"CCU6_bGetPwmRuningFlg"
	.byte	0x12
	.byte	0x57
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"CCU6_u8GetPwmState"
	.byte	0x12
	.byte	0x5e
	.byte	0x1
	.uaword	0x201
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"GCCU6_bGetPwmRuningFlg"
	.byte	0x13
	.byte	0x57
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"GCCU6_u8GetPwmState"
	.byte	0x13
	.byte	0x5e
	.byte	0x1
	.uaword	0x201
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x170
	.uaword	0x1ee
	.byte	0x1
	.uaword	0x1868
	.uleb128 0x2b
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"CanTrcv_GetOpMode_TJA1145"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x189b
	.uleb128 0x36
	.uaword	0x201
	.uleb128 0x36
	.uaword	0x734
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"CanTrcv_SetOpMode"
	.byte	0x14
	.uahalf	0x165
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x18c7
	.uleb128 0x36
	.uaword	0x201
	.uleb128 0x36
	.uaword	0x33b
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8"
	.byte	0x15
	.byte	0x89
	.byte	0x1
	.uaword	0x2b5
	.byte	0x1
	.uaword	0x1916
	.uleb128 0x36
	.uaword	0x201
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"BSW_vidClearComNormalFlag"
	.byte	0xf
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"MCU_vSetResetCmd"
	.byte	0x16
	.byte	0xe
	.byte	0x1
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4-.text
	.uaword	.LFE418-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL9-.text
	.uaword	.LVL10-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10-.text
	.uaword	.LVL11-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13-.text
	.uaword	.LVL14-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15-.text
	.uaword	.LVL21-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL22-.text
	.uaword	.LVL23-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23-.text
	.uaword	.LVL24-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25-.text
	.uaword	.LFE426-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB425-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE425-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26-.text
	.uaword	.LVL51-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL72-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL72-.text
	.uaword	.LVL91-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91-.text
	.uaword	.LVL93-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL93-.text
	.uaword	.LFE425-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL26-.text
	.uaword	.LVL30-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30-.text
	.uaword	.LVL31-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31-1-.text
	.uaword	.LFE425-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26-.text
	.uaword	.LVL34-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34-.text
	.uaword	.LVL35-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35-1-.text
	.uaword	.LFE425-.text
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL26-.text
	.uaword	.LVL38-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38-.text
	.uaword	.LVL39-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39-1-.text
	.uaword	.LFE425-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL26-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39-.text
	.uaword	.LVL41-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42-.text
	.uaword	.LVL44-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61-.text
	.uaword	.LVL62-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64-.text
	.uaword	.LVL67-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69-.text
	.uaword	.LVL70-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72-.text
	.uaword	.LVL73-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75-.text
	.uaword	.LVL76-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78-.text
	.uaword	.LVL81-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83-.text
	.uaword	.LVL84-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86-.text
	.uaword	.LVL87-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26-.text
	.uaword	.LVL28-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL28-.text
	.uaword	.LVL29-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-1-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42-.text
	.uaword	.LVL43-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL52-.text
	.uaword	.LVL53-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55-.text
	.uaword	.LVL57-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61-.text
	.uaword	.LVL63-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64-.text
	.uaword	.LVL65-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69-.text
	.uaword	.LVL71-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72-.text
	.uaword	.LVL74-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75-.text
	.uaword	.LVL77-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL83-.text
	.uaword	.LVL85-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL26-.text
	.uaword	.LVL32-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32-.text
	.uaword	.LVL33-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-1-.text
	.uaword	.LFE425-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL26-.text
	.uaword	.LVL36-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36-.text
	.uaword	.LVL37-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37-1-.text
	.uaword	.LFE425-.text
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL45-.text
	.uaword	.LVL46-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46-1-.text
	.uaword	.LVL50-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL80-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL80-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LBB27-.Ltext0
	.uaword	.LBE27-.Ltext0
	.uaword	.LBB36-.Ltext0
	.uaword	.LBE36-.Ltext0
	.uaword	.LBB37-.Ltext0
	.uaword	.LBE37-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"ESMSRV_bGetPoDnReadyFlg"
	.extern	MCU_vSetResetCmd,STT_FUNC,0
	.extern	BSW_vidClearComNormalFlag,STT_FUNC,0
	.extern	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8,STT_FUNC,0
	.extern	CanTrcv_SetOpMode,STT_FUNC,0
	.extern	CanTrcv_GetOpMode_TJA1145,STT_FUNC,0
	.extern	SBC_f32RecoverThresholdC,STT_OBJECT,4
	.extern	SBC_f32UnderVolHighThresholdC,STT_OBJECT,4
	.extern	SBC_f32UnderVolLowThresholdC,STT_OBJECT,4
	.extern	ComM_GetState,STT_FUNC,0
	.extern	CanSM_GetNetworkMode_Substate,STT_FUNC,0
	.extern	CanSM_GetBusoff_Substate,STT_FUNC,0
	.extern	CanIf_GetControllerMode,STT_FUNC,0
	.extern	BSW_bComIsNormal,STT_FUNC,0
	.extern	ESMSRV_bGetPoDnReadyFlg,STT_FUNC,0
	.extern	GCCU6_u8GetPwmState,STT_FUNC,0
	.extern	GCCU6_bGetPwmRuningFlg,STT_FUNC,0
	.extern	CCU6_u8GetPwmState,STT_FUNC,0
	.extern	CCU6_bGetPwmRuningFlg,STT_FUNC,0
	.extern	SBCHal_f32GetBatteryVol,STT_FUNC,0
	.extern	SBC_bOtherSttFailFlg,STT_OBJECT,4
	.extern	SBC_u16OtherAbnormCnt,STT_OBJECT,2
	.extern	SBC_ku16IntUvTimoutC,STT_OBJECT,2
	.extern	SBC_u16IntUvTimCnt,STT_OBJECT,2
	.extern	SBC_ku16IntUnderVoltThdC,STT_OBJECT,2
	.extern	SBC_u16P5vRefProtRaw,STT_OBJECT,2
	.extern	SBCHal_u16GetAdVal_P5VRef,STT_FUNC,0
	.extern	SBC_u16MainSupRaw,STT_OBJECT,2
	.extern	SBCHal_u16GetAdVal_P5VBt,STT_FUNC,0
	.extern	SBC_u16GatewayRaw,STT_OBJECT,2
	.extern	SBCHal_u16GetAdVal_P5VGateway,STT_FUNC,0
	.extern	SBC_u16P5vAD2SRaw,STT_OBJECT,2
	.extern	SBCHal_u16GetAdVal_P5VAD2S,STT_FUNC,0
	.extern	SBC_u16P5vComRaw,STT_OBJECT,2
	.extern	SBCHal_u16GetAdVal_P5VCom,STT_FUNC,0
	.extern	SBC_bUserCmdSendFlag,STT_OBJECT,1
	.extern	SBC_bSpiOperateFlag,STT_OBJECT,1
	.extern	SBC_u8UserCmdReq,STT_OBJECT,1
	.extern	SBC_au8InitModDataBuff,STT_OBJECT,2
	.extern	SBC_au8InitModCmdBuff,STT_OBJECT,2
	.extern	SBC_au8OpenLDOCmdBuff,STT_OBJECT,2
	.extern	SBC_au8OpenLDODataBuff,STT_OBJECT,2
	.extern	SBC_au8CloseLDODataBuff,STT_OBJECT,2
	.extern	SBC_au8CloseLDOCmdBuff,STT_OBJECT,2
	.extern	SBC_au8StdbyModCmdBuff,STT_OBJECT,2
	.extern	SBC_au8StdbyModDataBuff,STT_OBJECT,2
	.extern	SBC_f32BkpVoltage,STT_OBJECT,4
	.extern	SBC_f32BatteryVoltage,STT_OBJECT,4
	.extern	SBC_u8DebounceCount,STT_OBJECT,1
	.extern	SBC_u8LDOManagerState,STT_OBJECT,1
	.extern	SBC_u8MaxWdgErrCnt,STT_OBJECT,1
	.extern	SBC_bStdbyModReq,STT_OBJECT,1
	.extern	SBC_bWdgActvFlg,STT_OBJECT,1
	.extern	SBC_bDeintWdgCmd,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
