	.file	"FAIL.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	FAIL_vidInitVSICounters
	.type	FAIL_vidInitVSICounters, @function
FAIL_vidInitVSICounters:
.LFB411:
	.file 1 "bswcdd\\Dsm\\fail\\FAIL.c"
	.loc 1 181 0
	.loc 1 182 0
	mov	%d15, 0
	movh.a	%a15, hi:FAIL_u32VSICounterTimeoutCs
	st.w	[%a15] lo:FAIL_u32VSICounterTimeoutCs, %d15
	.loc 1 183 0
	movh.a	%a15, hi:FAIL_u32VSICounterTimeoutSyncPos
	st.w	[%a15] lo:FAIL_u32VSICounterTimeoutSyncPos, %d15
	.loc 1 184 0
	movh.a	%a15, hi:FAIL_u32VSICounterTimeoutTCalc
	st.w	[%a15] lo:FAIL_u32VSICounterTimeoutTCalc, %d15
	ret
.LFE411:
	.size	FAIL_vidInitVSICounters, .-FAIL_vidInitVSICounters
	.align 1
	.global	FAIL_vidPowerUp
	.type	FAIL_vidPowerUp, @function
FAIL_vidPowerUp:
.LFB412:
	.loc 1 198 0
	.loc 1 199 0
	movh.a	%a15, hi:FAIL_bRstHotFlagNvm
	ld.bu	%d15, [%a15] lo:FAIL_bRstHotFlagNvm
	jz	%d15, .L3
	.loc 1 201 0
	mov	%d15, 1
	movh.a	%a2, hi:FAIL_bRstHotFlag
	st.b	[%a2] lo:FAIL_bRstHotFlag, %d15
	.loc 1 202 0
	movh.a	%a2, hi:FAIL_u16RstHotCntNvm
	ld.h	%d15, [%a2] lo:FAIL_u16RstHotCntNvm
	add	%d15, 1
	st.h	[%a2] lo:FAIL_u16RstHotCntNvm, %d15
.L3:
	.loc 1 204 0
	mov	%d15, 1
	st.b	[%a15] lo:FAIL_bRstHotFlagNvm, %d15
	.loc 1 205 0
	movh.a	%a15, hi:FAIL_u16RstStartUpCntNvm
	ld.h	%d15, [%a15] lo:FAIL_u16RstStartUpCntNvm
	add	%d15, 1
	st.h	[%a15] lo:FAIL_u16RstStartUpCntNvm, %d15
	ret
.LFE412:
	.size	FAIL_vidPowerUp, .-FAIL_vidPowerUp
	.align 1
	.global	FAIL_vidFailDetection_1ms
	.type	FAIL_vidFailDetection_1ms, @function
FAIL_vidFailDetection_1ms:
.LFB413:
	.loc 1 219 0
.LVL0:
	.loc 1 223 0
	call	BSW_bGetBswReadySts
.LVL1:
	.loc 1 225 0
	jnz	%d2, .L42
	ret
.L42:
	.loc 1 227 0
	call	CCU6_bGetHwFaultIgbtH
.LVL2:
	jeq	%d2, 1, .L43
	mov	%e4, 20
	call	FaultDetectionWithoutFail
.LVL3:
.L25:
	.loc 1 228 0
	call	CCU6_bGetHwFaultIgbtL
.LVL4:
	jeq	%d2, 1, .L44
	mov	%d4, 20
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL5:
.L26:
	.loc 1 230 0
	mov	%d4, 0
	call	DSM_u8GetUnitFaultLevel
.LVL6:
	.loc 1 231 0
	jge.u	%d2, 4, .L14
	.loc 1 233 0
	movh.a	%a15, hi:MAIN_bSoftOvCurrPhsUFlg
	ld.bu	%d15, [%a15] lo:MAIN_bSoftOvCurrPhsUFlg
	jeq	%d15, 1, .L17
	.loc 1 234 0
	call	CCU6_bGetHwFaultOvcU
.LVL7:
	jeq	%d2, 1, .L17
	.loc 1 240 0
	mov	%d4, 20
	mov	%d5, 2
	call	FaultDetectionWithoutFail
.LVL8:
.L16:
	.loc 1 243 0
	movh.a	%a15, hi:MAIN_bSoftOvCurrPhsVFlg
	ld.bu	%d15, [%a15] lo:MAIN_bSoftOvCurrPhsVFlg
	jeq	%d15, 1, .L20
	.loc 1 244 0
	call	CCU6_bGetHwFaultOvcV
.LVL9:
	jeq	%d2, 1, .L20
	.loc 1 250 0
	mov	%d4, 20
	mov	%d5, 3
	call	FaultDetectionWithoutFail
.LVL10:
.L19:
	.loc 1 253 0
	movh.a	%a15, hi:MAIN_bSoftOvCurrPhsWFlg
	ld.bu	%d15, [%a15] lo:MAIN_bSoftOvCurrPhsWFlg
	jeq	%d15, 1, .L22
	.loc 1 254 0
	call	CCU6_bGetHwFaultOvcW
.LVL11:
	jeq	%d2, 1, .L22
	.loc 1 260 0
	mov	%d4, 20
	mov	%d5, 4
	call	FaultDetectionWithoutFail
.LVL12:
.L14:
	.loc 1 269 0
	call	CCU6_bGetHwFaultDcOvVolt
.LVL13:
	jeq	%d2, 1, .L45
.L38:
	mov	%e4, 19
	j	FaultDetectionWithoutFail
.LVL14:
.L17:
	.loc 1 236 0
	mov	%d4, 20
	mov	%d5, 2
	call	FaultDetectionWithFail
.LVL15:
	j	.L16
.L22:
	.loc 1 256 0
	mov	%d4, 20
	mov	%d5, 4
	call	FaultDetectionWithFail
.LVL16:
	.loc 1 269 0
	call	CCU6_bGetHwFaultDcOvVolt
.LVL17:
	jne	%d2, 1, .L38
.L45:
	mov	%e4, 19
	j	FaultDetectionWithFail
.LVL18:
.L20:
	.loc 1 246 0
	mov	%d4, 20
	mov	%d5, 3
	call	FaultDetectionWithFail
.LVL19:
	j	.L19
.LVL20:
.L44:
	.loc 1 228 0
	mov	%d4, 20
	mov	%d5, 1
	call	FaultDetectionWithFail
.LVL21:
	j	.L26
.L43:
	.loc 1 227 0
	mov	%e4, 20
	call	FaultDetectionWithFail
.LVL22:
	j	.L25
.LFE413:
	.size	FAIL_vidFailDetection_1ms, .-FAIL_vidFailDetection_1ms
	.align 1
	.global	GFAIL_vidFailDetection_1ms
	.type	GFAIL_vidFailDetection_1ms, @function
GFAIL_vidFailDetection_1ms:
.LFB414:
	.loc 1 286 0
.LVL23:
	.loc 1 290 0
	call	BSW_bGetBswReadySts
.LVL24:
	.loc 1 292 0
	jnz	%d2, .L80
	ret
.L80:
	.loc 1 294 0
	call	GCCU6_bGetHwFaultIgbtH
.LVL25:
	jeq	%d2, 1, .L81
	mov	%e4, 40
	call	FaultDetectionWithoutFail
.LVL26:
.L63:
	.loc 1 295 0
	call	GCCU6_bGetHwFaultIgbtL
.LVL27:
	jeq	%d2, 1, .L82
	mov	%d4, 40
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL28:
.L64:
	.loc 1 297 0
	mov	%d4, 1
	call	DSM_u8GetUnitFaultLevel
.LVL29:
	.loc 1 298 0
	jge.u	%d2, 4, .L52
	.loc 1 300 0
	movh.a	%a15, hi:GMAIN_bSoftOvCurrPhsUFlg
	ld.bu	%d15, [%a15] lo:GMAIN_bSoftOvCurrPhsUFlg
	jeq	%d15, 1, .L55
	.loc 1 301 0
	call	GCCU6_bGetHwFaultOvcU
.LVL30:
	jeq	%d2, 1, .L55
	.loc 1 307 0
	mov	%d4, 40
	mov	%d5, 2
	call	FaultDetectionWithoutFail
.LVL31:
.L54:
	.loc 1 310 0
	movh.a	%a15, hi:GMAIN_bSoftOvCurrPhsVFlg
	ld.bu	%d15, [%a15] lo:GMAIN_bSoftOvCurrPhsVFlg
	jeq	%d15, 1, .L58
	.loc 1 311 0
	call	GCCU6_bGetHwFaultOvcV
.LVL32:
	jeq	%d2, 1, .L58
	.loc 1 317 0
	mov	%d4, 40
	mov	%d5, 3
	call	FaultDetectionWithoutFail
.LVL33:
.L57:
	.loc 1 320 0
	movh.a	%a15, hi:GMAIN_bSoftOvCurrPhsWFlg
	ld.bu	%d15, [%a15] lo:GMAIN_bSoftOvCurrPhsWFlg
	jeq	%d15, 1, .L60
	.loc 1 321 0
	call	GCCU6_bGetHwFaultOvcW
.LVL34:
	jeq	%d2, 1, .L60
	.loc 1 327 0
	mov	%d4, 40
	mov	%d5, 4
	call	FaultDetectionWithoutFail
.LVL35:
.L52:
	.loc 1 336 0
	call	GCCU6_bGetHwFaultDcOvVolt
.LVL36:
	jeq	%d2, 1, .L83
.L76:
	mov	%e4, 39
	j	FaultDetectionWithoutFail
.LVL37:
.L55:
	.loc 1 303 0
	mov	%d4, 40
	mov	%d5, 2
	call	FaultDetectionWithFail
.LVL38:
	j	.L54
.L60:
	.loc 1 323 0
	mov	%d4, 40
	mov	%d5, 4
	call	FaultDetectionWithFail
.LVL39:
	.loc 1 336 0
	call	GCCU6_bGetHwFaultDcOvVolt
.LVL40:
	jne	%d2, 1, .L76
.L83:
	mov	%e4, 39
	j	FaultDetectionWithFail
.LVL41:
.L58:
	.loc 1 313 0
	mov	%d4, 40
	mov	%d5, 3
	call	FaultDetectionWithFail
.LVL42:
	j	.L57
.LVL43:
.L82:
	.loc 1 295 0
	mov	%d4, 40
	mov	%d5, 1
	call	FaultDetectionWithFail
.LVL44:
	j	.L64
.L81:
	.loc 1 294 0
	mov	%e4, 40
	call	FaultDetectionWithFail
.LVL45:
	j	.L63
.LFE414:
	.size	GFAIL_vidFailDetection_1ms, .-GFAIL_vidFailDetection_1ms
	.align 1
	.global	AFAIL_vidFailDetection_1ms
	.type	AFAIL_vidFailDetection_1ms, @function
AFAIL_vidFailDetection_1ms:
.LFB415:
	.loc 1 353 0
.LVL46:
	.loc 1 357 0
	call	BSW_bGetBswReadySts
.LVL47:
	.loc 1 359 0
	jnz	%d2, .L107
	ret
.L107:
.LBB4:
	.loc 1 361 0
	mov	%d4, 0
	call	TPPCDev_bGetHwFaultIgbtH
.LVL48:
	jeq	%d2, 1, .L88
	.loc 1 361 0 is_stmt 0 discriminator 2
	call	MAIN_bGetACMASCEnableState
.LVL49:
	jeq	%d2, 1, .L88
	.loc 1 361 0 discriminator 8
	mov	%e4, 2
	call	FaultDetectionWithoutFail
.LVL50:
	.loc 1 362 0 is_stmt 1 discriminator 8
	mov	%d4, 0
	call	TPPCDev_bGetHwFaultIgbtL
.LVL51:
	jne	%d2, 1, .L89
.L91:
	.loc 1 362 0 is_stmt 0
	mov	%d4, 2
	mov	%d5, 1
	call	FaultDetectionWithFail
.LVL52:
	.loc 1 364 0 is_stmt 1
	mov	%d4, 2
	call	DSM_u8GetUnitFaultLevel
.LVL53:
	.loc 1 365 0
	jlt.u	%d2, 4, .L108
.LVL54:
.L92:
	.loc 1 400 0
	call	MAIN_bGetAcuSoftOvBhvFlag
.LVL55:
	mov	%e4, 1
	jeq	%d2, 1, .L109
	j	FaultDetectionWithoutFail
.LVL56:
.L88:
	.loc 1 361 0
	mov	%e4, 2
	call	FaultDetectionWithFail
.LVL57:
	.loc 1 362 0
	mov	%d4, 0
	call	TPPCDev_bGetHwFaultIgbtL
.LVL58:
	jeq	%d2, 1, .L91
.L89:
	.loc 1 362 0 is_stmt 0 discriminator 2
	call	MAIN_bGetACMASCEnableState
.LVL59:
	jeq	%d2, 1, .L91
	.loc 1 362 0 discriminator 8
	mov	%d4, 2
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL60:
	.loc 1 364 0 is_stmt 1 discriminator 8
	mov	%d4, 2
	call	DSM_u8GetUnitFaultLevel
.LVL61:
	.loc 1 365 0 discriminator 8
	jge.u	%d2, 4, .L92
.L108:
.LBB5:
	.loc 1 367 0
	call	MAIN_bGetAcuSoftOvcFlag_U
.LVL62:
	.loc 1 369 0
	mov	%d4, 2
	mov	%d5, 2
	.loc 1 367 0
	jeq	%d2, 1, .L110
	.loc 1 373 0
	call	FaultDetectionWithoutFail
.LVL63:
.L94:
	.loc 1 376 0
	call	MAIN_bGetAcuSoftOvcFlag_V
.LVL64:
	.loc 1 378 0
	mov	%d4, 2
	mov	%d5, 3
	.loc 1 376 0
	jeq	%d2, 1, .L111
	.loc 1 382 0
	call	FaultDetectionWithoutFail
.LVL65:
.L96:
	.loc 1 385 0
	call	MAIN_bGetAcuSoftOvcFlag_W
.LVL66:
	.loc 1 387 0
	mov	%d4, 2
	mov	%d5, 4
	.loc 1 385 0
	jeq	%d2, 1, .L112
	.loc 1 391 0
	call	FaultDetectionWithoutFail
.LVL67:
	j	.L92
.L109:
.LBE5:
	.loc 1 400 0
	j	FaultDetectionWithFail
.LVL68:
.L110:
.LBB6:
	.loc 1 369 0
	call	FaultDetectionWithFail
.LVL69:
	j	.L94
.L112:
	.loc 1 387 0
	call	FaultDetectionWithFail
.LVL70:
	j	.L92
.L111:
	.loc 1 378 0
	call	FaultDetectionWithFail
.LVL71:
	j	.L96
.LBE6:
.LBE4:
.LFE415:
	.size	AFAIL_vidFailDetection_1ms, .-AFAIL_vidFailDetection_1ms
	.align 1
	.global	OFAIL_vidFailDetection_1ms
	.type	OFAIL_vidFailDetection_1ms, @function
OFAIL_vidFailDetection_1ms:
.LFB416:
	.loc 1 415 0
.LVL72:
	.loc 1 419 0
	call	BSW_bGetBswReadySts
.LVL73:
	.loc 1 421 0
	jnz	%d2, .L136
	ret
.L136:
.LBB7:
	.loc 1 423 0
	mov	%d4, 1
	call	TPPCDev_bGetHwFaultIgbtH
.LVL74:
	jeq	%d2, 1, .L117
	.loc 1 423 0 is_stmt 0 discriminator 2
	call	MAIN_bGetEPSASCEnableState
.LVL75:
	jeq	%d2, 1, .L117
	.loc 1 423 0 discriminator 8
	mov	%e4, 61
	call	FaultDetectionWithoutFail
.LVL76:
	.loc 1 424 0 is_stmt 1 discriminator 8
	mov	%d4, 1
	call	TPPCDev_bGetHwFaultIgbtL
.LVL77:
	jne	%d2, 1, .L118
.L120:
	.loc 1 424 0 is_stmt 0
	mov	%d4, 61
	mov	%d5, 1
	call	FaultDetectionWithFail
.LVL78:
	.loc 1 426 0 is_stmt 1
	mov	%d4, 3
	call	DSM_u8GetUnitFaultLevel
.LVL79:
	.loc 1 427 0
	jlt.u	%d2, 4, .L137
.LVL80:
.L121:
	.loc 1 462 0
	call	MAIN_bGetOcuSoftOvBhvFlag
.LVL81:
	mov	%e4, 60
	jeq	%d2, 1, .L138
	j	FaultDetectionWithoutFail
.LVL82:
.L117:
	.loc 1 423 0
	mov	%e4, 61
	call	FaultDetectionWithFail
.LVL83:
	.loc 1 424 0
	mov	%d4, 1
	call	TPPCDev_bGetHwFaultIgbtL
.LVL84:
	jeq	%d2, 1, .L120
.L118:
	.loc 1 424 0 is_stmt 0 discriminator 2
	call	MAIN_bGetEPSASCEnableState
.LVL85:
	jeq	%d2, 1, .L120
	.loc 1 424 0 discriminator 8
	mov	%d4, 61
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL86:
	.loc 1 426 0 is_stmt 1 discriminator 8
	mov	%d4, 3
	call	DSM_u8GetUnitFaultLevel
.LVL87:
	.loc 1 427 0 discriminator 8
	jge.u	%d2, 4, .L121
.L137:
.LBB8:
	.loc 1 429 0
	call	MAIN_bGetOcuSoftOvcFlag_U
.LVL88:
	.loc 1 431 0
	mov	%d4, 61
	mov	%d5, 2
	.loc 1 429 0
	jeq	%d2, 1, .L139
	.loc 1 435 0
	call	FaultDetectionWithoutFail
.LVL89:
.L123:
	.loc 1 438 0
	call	MAIN_bGetOcuSoftOvcFlag_V
.LVL90:
	.loc 1 440 0
	mov	%d4, 61
	mov	%d5, 3
	.loc 1 438 0
	jeq	%d2, 1, .L140
	.loc 1 444 0
	call	FaultDetectionWithoutFail
.LVL91:
.L125:
	.loc 1 447 0
	call	MAIN_bGetOcuSoftOvcFlag_W
.LVL92:
	.loc 1 449 0
	mov	%d4, 61
	mov	%d5, 4
	.loc 1 447 0
	jeq	%d2, 1, .L141
	.loc 1 453 0
	call	FaultDetectionWithoutFail
.LVL93:
	j	.L121
.L138:
.LBE8:
	.loc 1 462 0
	j	FaultDetectionWithFail
.LVL94:
.L139:
.LBB9:
	.loc 1 431 0
	call	FaultDetectionWithFail
.LVL95:
	j	.L123
.L141:
	.loc 1 449 0
	call	FaultDetectionWithFail
.LVL96:
	j	.L121
.L140:
	.loc 1 440 0
	call	FaultDetectionWithFail
.LVL97:
	j	.L125
.LBE9:
.LBE7:
.LFE416:
	.size	OFAIL_vidFailDetection_1ms, .-OFAIL_vidFailDetection_1ms
	.align 1
	.global	FAIL_vidFailDetection_100ms
	.type	FAIL_vidFailDetection_100ms, @function
FAIL_vidFailDetection_100ms:
.LFB418:
	.loc 1 565 0
	ret
.LFE418:
	.size	FAIL_vidFailDetection_100ms, .-FAIL_vidFailDetection_100ms
	.align 1
	.global	FAIL_vidFailDetection_1000ms
	.type	FAIL_vidFailDetection_1000ms, @function
FAIL_vidFailDetection_1000ms:
.LFB419:
	.loc 1 579 0
	.loc 1 580 0
	movh.a	%a15, hi:FAIL_u32TimestampLifeNvm
	ld.w	%d15, [%a15] lo:FAIL_u32TimestampLifeNvm
	add	%d15, 1
	st.w	[%a15] lo:FAIL_u32TimestampLifeNvm, %d15
	.loc 1 581 0
	movh.a	%a15, hi:FAIL_u16TimestampIgnNvm
	ld.h	%d15, [%a15] lo:FAIL_u16TimestampIgnNvm
	add	%d15, 1
	st.h	[%a15] lo:FAIL_u16TimestampIgnNvm, %d15
	ret
.LFE419:
	.size	FAIL_vidFailDetection_1000ms, .-FAIL_vidFailDetection_1000ms
	.align 1
	.global	FAIL_vidPowerDown
	.type	FAIL_vidPowerDown, @function
FAIL_vidPowerDown:
.LFB420:
	.loc 1 595 0
	.loc 1 596 0
	mov	%d15, 0
	movh.a	%a15, hi:FAIL_bRstHotFlagNvm
	st.b	[%a15] lo:FAIL_bRstHotFlagNvm, %d15
	ret
.LFE420:
	.size	FAIL_vidPowerDown, .-FAIL_vidPowerDown
	.align 1
	.global	FAIL_vidCheckBatVolt
	.type	FAIL_vidCheckBatVolt, @function
FAIL_vidCheckBatVolt:
.LFB421:
	.loc 1 610 0
	.loc 1 611 0
	movh.a	%a15, hi:FAIL_f32LvBatVoltage
	ld.w	%d3, [%a15] lo:FAIL_f32LvBatVoltage
	movh	%d15, 16736
	cmp.f	%d15, %d3, %d15
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L163
	.loc 1 617 0
	movh	%d2, 16912
	cmp.f	%d2, %d3, %d2
	or.t	%d2, %d2,2, %d2,1
	jnz	%d2, .L164
	.loc 1 626 0
	movh.a	%a15, hi:FAIL_bComLostDiagVLow
	ld.bu	%d15, [%a15] lo:FAIL_bComLostDiagVLow
	jz	%d15, .L151
	.loc 1 629 0
	movh	%d15, 16768
	cmp.f	%d3, %d3, %d15
	jz.t	%d3, 2, .L145
	.loc 1 631 0
	movh.a	%a2, hi:FAIL_u16ComLostDiagVRecCnt
	ld.h	%d15, [%a2] lo:FAIL_u16ComLostDiagVRecCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 632 0
	ge.u	%d3, %d15, 53
	jnz	%d3, .L153
	.loc 1 631 0
	st.h	[%a2] lo:FAIL_u16ComLostDiagVRecCnt, %d15
	ret
.L164:
	.loc 1 620 0
	movh.a	%a15, hi:FAIL_bComLostDiagVHigh
	mov	%d2, 1
	st.b	[%a15] lo:FAIL_bComLostDiagVHigh, %d2
	.loc 1 621 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	ret
.L163:
	.loc 1 614 0
	mov	%d15, 1
	movh.a	%a15, hi:FAIL_bComLostDiagVLow
	st.b	[%a15] lo:FAIL_bComLostDiagVLow, %d15
	.loc 1 615 0
	mov	%d15, 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	ret
.L151:
	.loc 1 640 0
	movh.a	%a15, hi:FAIL_bComLostDiagVHigh
	ld.bu	%d2, [%a15] lo:FAIL_bComLostDiagVHigh
	jz	%d2, .L155
	.loc 1 643 0
	movh	%d2, 16904
	cmp.f	%d3, %d3, %d2
	jz.t	%d3, 0, .L145
	.loc 1 645 0
	movh.a	%a2, hi:FAIL_u16ComLostDiagVRecCnt
	ld.h	%d2, [%a2] lo:FAIL_u16ComLostDiagVRecCnt
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
	.loc 1 646 0
	ge.u	%d3, %d2, 53
	jz	%d3, .L165
.LBB12:
	.loc 1 648 0
	st.h	[%a2] lo:FAIL_u16ComLostDiagVRecCnt, %d15
	.loc 1 649 0
	mov	%d15, 1
	movh.a	%a2, hi:FAIL_bComLostDiagVEna
	st.b	[%a2] lo:FAIL_bComLostDiagVEna, %d15
	.loc 1 650 0
	mov	%d15, 0
	st.b	[%a15] lo:FAIL_bComLostDiagVHigh, %d15
	ret
.L155:
.LBE12:
	.loc 1 656 0
	mov	%d15, 1
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
.L145:
	ret
.L153:
	.loc 1 635 0
	mov	%d15, 1
	.loc 1 634 0
	st.h	[%a2] lo:FAIL_u16ComLostDiagVRecCnt, %d2
	.loc 1 635 0
	movh.a	%a2, hi:FAIL_bComLostDiagVEna
	st.b	[%a2] lo:FAIL_bComLostDiagVEna, %d15
	.loc 1 636 0
	mov	%d15, 0
	st.b	[%a15] lo:FAIL_bComLostDiagVLow, %d15
	ret
.L165:
	.loc 1 645 0
	st.h	[%a2] lo:FAIL_u16ComLostDiagVRecCnt, %d2
	ret
.LFE421:
	.size	FAIL_vidCheckBatVolt, .-FAIL_vidCheckBatVolt
	.align 1
	.global	FAIL_vidDisableEmbFltCheck
	.type	FAIL_vidDisableEmbFltCheck, @function
FAIL_vidDisableEmbFltCheck:
.LFB422:
	.loc 1 672 0
	.loc 1 673 0
	movh.a	%a3, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a4, hi:FaultFunctionTypeLockedArray
	lea	%a15, [%a3] lo:FaultFunctionTypeAuthorizedArray
	lea	%a2, [%a4] lo:FaultFunctionTypeLockedArray
	ld.h	%d2, [%a2] 36
	ld.h	%d15, [%a15] 36
	and	%d15, %d2
	st.h	[%a15] 36, %d15
	.loc 1 674 0
	ld.h	%d2, [%a2] 38
	ld.h	%d15, [%a15] 38
	and	%d15, %d2
	st.h	[%a15] 38, %d15
	.loc 1 675 0
	ld.h	%d2, [%a2] 40
	ld.h	%d15, [%a15] 40
	and	%d15, %d2
	st.h	[%a15] 40, %d15
	.loc 1 676 0
	ld.h	%d2, [%a2] 42
	ld.h	%d15, [%a15] 42
	and	%d15, %d2
	st.h	[%a15] 42, %d15
	.loc 1 677 0
	ld.h	%d2, [%a2] 44
	ld.h	%d15, [%a15] 44
	and	%d15, %d2
	st.h	[%a15] 44, %d15
	.loc 1 678 0
	ld.h	%d2, [%a2] 46
	ld.h	%d15, [%a15] 46
	and	%d15, %d2
	st.h	[%a15] 46, %d15
	.loc 1 679 0
	ld.h	%d2, [%a2] 48
	ld.h	%d15, [%a15] 48
	and	%d15, %d2
	st.h	[%a15] 48, %d15
	.loc 1 680 0
	ld.h	%d2, [%a2] 50
	ld.h	%d15, [%a15] 50
	and	%d15, %d2
	st.h	[%a15] 50, %d15
	.loc 1 681 0
	ld.h	%d2, [%a2] 52
	ld.h	%d15, [%a15] 52
	and	%d15, %d2
	st.h	[%a15] 52, %d15
	.loc 1 682 0
	ld.h	%d2, [%a2] 54
	ld.h	%d15, [%a15] 54
	and	%d15, %d2
	st.h	[%a15] 54, %d15
	.loc 1 683 0
	ld.h	%d2, [%a2] 56
	ld.h	%d15, [%a15] 56
	and	%d15, %d2
	st.h	[%a15] 56, %d15
	.loc 1 684 0
	ld.h	%d2, [%a2] 58
	ld.h	%d15, [%a15] 58
	and	%d15, %d2
	st.h	[%a15] 58, %d15
	.loc 1 685 0
	ld.h	%d2, [%a2] 60
	ld.h	%d15, [%a15] 60
	and	%d15, %d2
	st.h	[%a15] 60, %d15
	.loc 1 686 0
	ld.h	%d2, [%a2] 62
	ld.h	%d15, [%a15] 62
	and	%d15, %d2
	st.h	[%a15] 62, %d15
	.loc 1 687 0
	ld.h	%d2, [%a2] 64
	ld.h	%d15, [%a15] 64
	and	%d15, %d2
	st.h	[%a15] 64, %d15
	.loc 1 688 0
	ld.h	%d2, [%a2] 66
	ld.h	%d15, [%a15] 66
	and	%d15, %d2
	st.h	[%a15] 66, %d15
	.loc 1 689 0
	ld.h	%d2, [%a2] 68
	ld.h	%d15, [%a15] 68
	and	%d15, %d2
	st.h	[%a15] 68, %d15
	.loc 1 690 0
	ld.h	%d2, [%a2] 70
	ld.h	%d15, [%a15] 70
	and	%d15, %d2
	st.h	[%a15] 70, %d15
	.loc 1 691 0
	ld.h	%d2, [%a2] 72
	ld.h	%d15, [%a15] 72
	and	%d15, %d2
	st.h	[%a15] 72, %d15
	.loc 1 692 0
	ld.h	%d2, [%a2] 74
	ld.h	%d15, [%a15] 74
	and	%d15, %d2
	st.h	[%a15] 74, %d15
	.loc 1 693 0
	ld.h	%d2, [%a2] 176
	ld.h	%d15, [%a15] 176
	and	%d15, %d2
	st.h	[%a15] 176, %d15
	.loc 1 695 0
	ld.h	%d2, [%a2] 82
	ld.h	%d15, [%a15] 82
	and	%d15, %d2
	st.h	[%a15] 82, %d15
	.loc 1 696 0
	ld.h	%d2, [%a2] 84
	.loc 1 698 0
	ld.h	%d4, [%a2] 76
	ld.h	%d3, [%a15] 76
	.loc 1 696 0
	ld.h	%d15, [%a15] 84
	.loc 1 698 0
	and	%d3, %d4
	st.h	[%a15] 76, %d3
	.loc 1 699 0
	ld.h	%d4, [%a2] 80
	ld.h	%d3, [%a15] 80
	.loc 1 696 0
	and	%d15, %d2
	.loc 1 699 0
	and	%d3, %d4
	st.h	[%a15] 80, %d3
	.loc 1 700 0
	ld.h	%d4, [%a2] 78
	ld.h	%d3, [%a15] 78
	.loc 1 697 0
	ld.hu	%d2, [%a2] 100
	.loc 1 700 0
	and	%d3, %d4
	st.h	[%a15] 78, %d3
	.loc 1 701 0
	ld.h	%d4, [%a2] 86
	ld.h	%d3, [%a15] 86
	.loc 1 696 0
	st.h	[%a15] 84, %d15
	.loc 1 701 0
	and	%d3, %d4
	st.h	[%a15] 86, %d3
	.loc 1 702 0
	ld.h	%d4, [%a2] 88
	ld.h	%d3, [%a15] 88
	.loc 1 697 0
	ld.hu	%d15, [%a15] 100
	.loc 1 702 0
	and	%d3, %d4
	st.h	[%a15] 88, %d3
	.loc 1 703 0
	ld.h	%d4, [%a2] 90
	ld.h	%d3, [%a15] 90
	.loc 1 708 0
	and	%d15, %d2
	.loc 1 703 0
	and	%d3, %d4
	st.h	[%a15] 90, %d3
	.loc 1 704 0
	ld.h	%d4, [%a2] 92
	ld.h	%d3, [%a15] 92
	and	%d3, %d4
	st.h	[%a15] 92, %d3
	.loc 1 705 0
	ld.h	%d4, [%a2] 94
	ld.h	%d3, [%a15] 94
	and	%d3, %d4
	st.h	[%a15] 94, %d3
	.loc 1 706 0
	ld.h	%d4, [%a2] 96
	ld.h	%d3, [%a15] 96
	and	%d3, %d4
	st.h	[%a15] 96, %d3
	.loc 1 707 0
	ld.h	%d4, [%a2] 98
	ld.h	%d3, [%a15] 98
	.loc 1 709 0
	ld.h	%d2, [%a2] 102
	.loc 1 708 0
	st.h	[%a15] 100, %d15
	.loc 1 709 0
	ld.h	%d15, [%a15] 102
	.loc 1 707 0
	and	%d3, %d4
	.loc 1 709 0
	and	%d15, %d2
	st.h	[%a15] 102, %d15
	.loc 1 710 0
	ld.h	%d2, [%a2] 104
	ld.h	%d15, [%a15] 104
	.loc 1 707 0
	st.h	[%a15] 98, %d3
	.loc 1 710 0
	and	%d15, %d2
	st.h	[%a15] 104, %d15
	.loc 1 711 0
	ld.h	%d2, [%a2] 106
	ld.h	%d15, [%a15] 106
	and	%d15, %d2
	st.h	[%a15] 106, %d15
	.loc 1 712 0
	ld.h	%d2, [%a2] 110
	ld.h	%d15, [%a15] 110
	and	%d15, %d2
	st.h	[%a15] 110, %d15
	.loc 1 713 0
	ld.h	%d2, [%a2] 112
	ld.h	%d15, [%a15] 112
	and	%d15, %d2
	st.h	[%a15] 112, %d15
	.loc 1 714 0
	ld.h	%d2, [%a2] 114
	ld.h	%d15, [%a15] 114
	and	%d15, %d2
	st.h	[%a15] 114, %d15
	.loc 1 715 0
	ld.h	%d2, [%a2] 116
	ld.h	%d15, [%a15] 116
	and	%d15, %d2
	st.h	[%a15] 116, %d15
	.loc 1 716 0
	ld.h	%d2, [%a2] 108
	ld.h	%d15, [%a15] 108
	and	%d15, %d2
	st.h	[%a15] 108, %d15
	.loc 1 718 0
	ld.h	%d2, [%a4] lo:FaultFunctionTypeLockedArray
	ld.h	%d15, [%a3] lo:FaultFunctionTypeAuthorizedArray
	and	%d15, %d2
	st.h	[%a3] lo:FaultFunctionTypeAuthorizedArray, %d15
	.loc 1 719 0
	ld.h	%d2, [%a2] 2
	ld.h	%d15, [%a15] 2
	and	%d15, %d2
	st.h	[%a15] 2, %d15
	.loc 1 720 0
	ld.h	%d2, [%a2] 4
	ld.h	%d15, [%a15] 4
	and	%d15, %d2
	st.h	[%a15] 4, %d15
	.loc 1 721 0
	ld.h	%d2, [%a2] 6
	ld.h	%d15, [%a15] 6
	and	%d15, %d2
	st.h	[%a15] 6, %d15
	.loc 1 722 0
	ld.h	%d2, [%a2] 8
	ld.h	%d15, [%a15] 8
	and	%d15, %d2
	st.h	[%a15] 8, %d15
	.loc 1 723 0
	ld.h	%d2, [%a2] 10
	ld.h	%d15, [%a15] 10
	and	%d15, %d2
	st.h	[%a15] 10, %d15
	.loc 1 724 0
	ld.h	%d2, [%a2] 12
	ld.h	%d15, [%a15] 12
	and	%d15, %d2
	st.h	[%a15] 12, %d15
	.loc 1 725 0
	ld.h	%d2, [%a2] 14
	ld.h	%d15, [%a15] 14
	and	%d15, %d2
	st.h	[%a15] 14, %d15
	.loc 1 726 0
	ld.h	%d2, [%a2] 16
	ld.h	%d15, [%a15] 16
	and	%d15, %d2
	st.h	[%a15] 16, %d15
	.loc 1 727 0
	ld.h	%d2, [%a2] 18
	ld.h	%d15, [%a15] 18
	and	%d15, %d2
	st.h	[%a15] 18, %d15
	.loc 1 728 0
	ld.h	%d2, [%a2] 20
	ld.h	%d15, [%a15] 20
	and	%d15, %d2
	st.h	[%a15] 20, %d15
	.loc 1 729 0
	ld.h	%d2, [%a2] 22
	ld.h	%d15, [%a15] 22
	and	%d15, %d2
	st.h	[%a15] 22, %d15
	.loc 1 730 0
	ld.h	%d2, [%a2] 24
	ld.h	%d15, [%a15] 24
	and	%d15, %d2
	st.h	[%a15] 24, %d15
	.loc 1 731 0
	ld.h	%d2, [%a2] 26
	ld.h	%d15, [%a15] 26
	and	%d15, %d2
	st.h	[%a15] 26, %d15
	.loc 1 732 0
	ld.h	%d2, [%a2] 28
	ld.h	%d15, [%a15] 28
	and	%d15, %d2
	st.h	[%a15] 28, %d15
	.loc 1 733 0
	ld.h	%d2, [%a2] 30
	ld.h	%d15, [%a15] 30
	and	%d15, %d2
	st.h	[%a15] 30, %d15
	.loc 1 734 0
	ld.h	%d2, [%a2] 32
	ld.h	%d15, [%a15] 32
	and	%d15, %d2
	st.h	[%a15] 32, %d15
	.loc 1 735 0
	ld.h	%d2, [%a2] 34
	ld.h	%d15, [%a15] 34
	and	%d15, %d2
	st.h	[%a15] 34, %d15
	.loc 1 737 0
	ld.h	%d2, [%a2] 118
	ld.h	%d15, [%a15] 118
	and	%d15, %d2
	st.h	[%a15] 118, %d15
	.loc 1 738 0
	ld.h	%d2, [%a2] 120
	ld.h	%d15, [%a15] 120
	and	%d15, %d2
	st.h	[%a15] 120, %d15
	.loc 1 739 0
	ld.h	%d2, [%a2] 122
	ld.h	%d15, [%a15] 122
	and	%d15, %d2
	st.h	[%a15] 122, %d15
	.loc 1 740 0
	ld.h	%d2, [%a2] 124
	ld.h	%d15, [%a15] 124
	and	%d15, %d2
	st.h	[%a15] 124, %d15
	.loc 1 741 0
	ld.h	%d2, [%a2] 126
	ld.h	%d15, [%a15] 126
	and	%d15, %d2
	st.h	[%a15] 126, %d15
	.loc 1 742 0
	ld.h	%d2, [%a2] 128
	ld.h	%d15, [%a15] 128
	and	%d15, %d2
	st.h	[%a15] 128, %d15
	.loc 1 743 0
	ld.h	%d2, [%a2] 130
	ld.h	%d15, [%a15] 130
	and	%d15, %d2
	st.h	[%a15] 130, %d15
	.loc 1 744 0
	ld.h	%d2, [%a2] 132
	ld.h	%d15, [%a15] 132
	and	%d15, %d2
	st.h	[%a15] 132, %d15
	.loc 1 745 0
	ld.h	%d2, [%a2] 134
	ld.h	%d15, [%a15] 134
	and	%d15, %d2
	st.h	[%a15] 134, %d15
	.loc 1 746 0
	ld.h	%d2, [%a2] 136
	ld.h	%d15, [%a15] 136
	and	%d15, %d2
	st.h	[%a15] 136, %d15
	.loc 1 747 0
	ld.h	%d2, [%a2] 138
	ld.h	%d15, [%a15] 138
	and	%d15, %d2
	st.h	[%a15] 138, %d15
	.loc 1 748 0
	ld.h	%d2, [%a2] 140
	ld.h	%d15, [%a15] 140
	and	%d15, %d2
	st.h	[%a15] 140, %d15
	.loc 1 749 0
	ld.h	%d2, [%a2] 142
	ld.h	%d15, [%a15] 142
	and	%d15, %d2
	st.h	[%a15] 142, %d15
	.loc 1 750 0
	ld.h	%d2, [%a2] 144
	ld.h	%d15, [%a15] 144
	and	%d15, %d2
	st.h	[%a15] 144, %d15
	.loc 1 751 0
	ld.h	%d2, [%a2] 146
	ld.h	%d15, [%a15] 146
	and	%d15, %d2
	st.h	[%a15] 146, %d15
	.loc 1 752 0
	ld.h	%d2, [%a2] 148
	ld.h	%d15, [%a15] 148
	and	%d15, %d2
	st.h	[%a15] 148, %d15
	.loc 1 753 0
	ld.h	%d2, [%a2] 150
	ld.h	%d15, [%a15] 150
	and	%d15, %d2
	st.h	[%a15] 150, %d15
	.loc 1 754 0
	ld.h	%d2, [%a2] 152
	ld.h	%d15, [%a15] 152
	and	%d15, %d2
	st.h	[%a15] 152, %d15
	.loc 1 756 0
	ld.h	%d2, [%a2] 154
	ld.h	%d15, [%a15] 154
	and	%d15, %d2
	st.h	[%a15] 154, %d15
	.loc 1 757 0
	ld.h	%d2, [%a2] 156
	ld.h	%d15, [%a15] 156
	and	%d15, %d2
	st.h	[%a15] 156, %d15
	.loc 1 758 0
	ld.h	%d2, [%a2] 158
	ld.h	%d15, [%a15] 158
	and	%d15, %d2
	st.h	[%a15] 158, %d15
	.loc 1 759 0
	ld.h	%d2, [%a2] 160
	ld.h	%d15, [%a15] 160
	and	%d15, %d2
	st.h	[%a15] 160, %d15
	.loc 1 760 0
	ld.h	%d2, [%a2] 162
	ld.h	%d15, [%a15] 162
	and	%d15, %d2
	st.h	[%a15] 162, %d15
	.loc 1 761 0
	ld.h	%d2, [%a2] 164
	ld.h	%d15, [%a15] 164
	and	%d15, %d2
	st.h	[%a15] 164, %d15
	.loc 1 762 0
	ld.h	%d2, [%a2] 170
	ld.h	%d15, [%a15] 170
	and	%d15, %d2
	st.h	[%a15] 170, %d15
	.loc 1 763 0
	ld.h	%d2, [%a2] 172
	ld.h	%d15, [%a15] 172
	and	%d15, %d2
	st.h	[%a15] 172, %d15
	.loc 1 764 0
	ld.h	%d2, [%a2] 174
	ld.h	%d15, [%a15] 174
	and	%d15, %d2
	st.h	[%a15] 174, %d15
	.loc 1 765 0
	ld.h	%d2, [%a2] 166
	ld.h	%d15, [%a15] 166
	and	%d15, %d2
	st.h	[%a15] 166, %d15
	.loc 1 766 0
	ld.h	%d2, [%a2] 168
	ld.h	%d15, [%a15] 168
	and	%d15, %d2
	st.h	[%a15] 168, %d15
	ret
.LFE422:
	.size	FAIL_vidDisableEmbFltCheck, .-FAIL_vidDisableEmbFltCheck
	.align 1
	.global	FAIL_vidInit
	.type	FAIL_vidInit, @function
FAIL_vidInit:
.LFB410:
	.loc 1 144 0
.LBB13:
.LBB14:
	.loc 1 182 0
	mov	%d15, 0
	movh.a	%a15, hi:FAIL_u32VSICounterTimeoutCs
	st.w	[%a15] lo:FAIL_u32VSICounterTimeoutCs, %d15
	.loc 1 183 0
	movh.a	%a15, hi:FAIL_u32VSICounterTimeoutSyncPos
	st.w	[%a15] lo:FAIL_u32VSICounterTimeoutSyncPos, %d15
	.loc 1 184 0
	movh.a	%a15, hi:FAIL_u32VSICounterTimeoutTCalc
	st.w	[%a15] lo:FAIL_u32VSICounterTimeoutTCalc, %d15
.LBE14:
.LBE13:
	.loc 1 148 0
	movh.a	%a15, hi:FAIL_u8Can01BusoffCnt
	.loc 1 146 0
	call	FAIL_vidDisableEmbFltCheck
.LVL98:
	.loc 1 148 0
	st.b	[%a15] lo:FAIL_u8Can01BusoffCnt, %d15
	.loc 1 149 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	.loc 1 150 0
	movh.a	%a15, hi:FAIL_bComLostDiagVLow
	st.b	[%a15] lo:FAIL_bComLostDiagVLow, %d15
	.loc 1 151 0
	movh.a	%a15, hi:FAIL_bComLostDiagVHigh
	st.b	[%a15] lo:FAIL_bComLostDiagVHigh, %d15
	.loc 1 152 0
	movh.a	%a15, hi:FAIL_u16KeyOnValue
	st.h	[%a15] lo:FAIL_u16KeyOnValue, %d15
	.loc 1 153 0
	movh.a	%a15, hi:FAIL_u16ComLostDiagVRecCnt
	st.h	[%a15] lo:FAIL_u16ComLostDiagVRecCnt, %d15
	.loc 1 154 0
	movh.a	%a15, hi:FAIL_u16LvBatVoltRaw
	.loc 1 152 0
	mov	%d2, 0
	.loc 1 154 0
	st.h	[%a15] lo:FAIL_u16LvBatVoltRaw, %d15
	.loc 1 155 0
	movh.a	%a15, hi:FAIL_bRstHotFlag
	st.b	[%a15] lo:FAIL_bRstHotFlag, %d2
	.loc 1 156 0
	movh.a	%a15, hi:FAIL_u16TimestampIgnNvm
	st.h	[%a15] lo:FAIL_u16TimestampIgnNvm, %d15
	.loc 1 157 0
	movh.a	%a15, hi:FAIL_bCanErrChkDisabled
	st.b	[%a15] lo:FAIL_bCanErrChkDisabled, %d2
	.loc 1 158 0
	movh.a	%a15, hi:FAIL_u16KeyOnDelay
	st.h	[%a15] lo:FAIL_u16KeyOnDelay, %d15
	.loc 1 159 0
	movh	%d3, 16704
	movh.a	%a15, hi:FAIL_f32LvBatVoltage
	st.w	[%a15] lo:FAIL_f32LvBatVoltage, %d3
	.loc 1 163 0
	movh.a	%a15, hi:FAIL_u8FaultDetMngStt
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d2
	.loc 1 164 0
	movh.a	%a15, hi:FAIL_u16FaultDetTimCnt
	st.h	[%a15] lo:FAIL_u16FaultDetTimCnt, %d15
	.loc 1 165 0
	movh.a	%a15, hi:FAIL_bDiagDisableFlg
	st.b	[%a15] lo:FAIL_bDiagDisableFlg, %d2
	.loc 1 167 0
	j	UDS_vidFrazeFrameInit
.LVL99:
.LFE410:
	.size	FAIL_vidInit, .-FAIL_vidInit
	.align 1
	.global	FAIL_vidEnableEmbFltCheck
	.type	FAIL_vidEnableEmbFltCheck, @function
FAIL_vidEnableEmbFltCheck:
.LFB423:
	.loc 1 780 0
	.loc 1 781 0
	movh.a	%a15, hi:FAIL_bErrCheckonC_ECU1
	ld.bu	%d15, [%a15] lo:FAIL_bErrCheckonC_ECU1
	jeq	%d15, 1, .L174
.L169:
	.loc 1 806 0
	movh.a	%a15, hi:FAIL_bErrCheckonC_ECU2
	ld.bu	%d15, [%a15] lo:FAIL_bErrCheckonC_ECU2
	jeq	%d15, 1, .L175
.L170:
	.loc 1 832 0
	movh.a	%a15, hi:FAIL_bErrCheckonC_ECU3
	ld.bu	%d15, [%a15] lo:FAIL_bErrCheckonC_ECU3
	jeq	%d15, 1, .L176
.L171:
	.loc 1 854 0
	movh.a	%a15, hi:FAIL_bErrCheckonC_ECU4
	ld.bu	%d15, [%a15] lo:FAIL_bErrCheckonC_ECU4
	jeq	%d15, 1, .L177
.L172:
	.loc 1 876 0
	movh.a	%a15, hi:FAIL_bErrCheckonC_ECU5
	ld.bu	%d15, [%a15] lo:FAIL_bErrCheckonC_ECU5
	jeq	%d15, 1, .L178
	ret
.L178:
	.loc 1 878 0
	movh.a	%a15, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a2, hi:FaultFunctionTypeLockedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeAuthorizedArray
	lea	%a2, [%a2] lo:FaultFunctionTypeLockedArray
	ld.h	%d2, [%a2] 154
	ld.h	%d15, [%a15] 154
	orn	%d15, %d15, %d2
	st.h	[%a15] 154, %d15
	.loc 1 879 0
	ld.h	%d2, [%a2] 156
	ld.h	%d15, [%a15] 156
	orn	%d15, %d15, %d2
	st.h	[%a15] 156, %d15
	.loc 1 880 0
	ld.h	%d2, [%a2] 158
	ld.h	%d15, [%a15] 158
	orn	%d15, %d15, %d2
	st.h	[%a15] 158, %d15
	.loc 1 881 0
	ld.h	%d2, [%a2] 160
	ld.h	%d15, [%a15] 160
	orn	%d15, %d15, %d2
	st.h	[%a15] 160, %d15
	.loc 1 882 0
	ld.h	%d2, [%a2] 162
	ld.h	%d15, [%a15] 162
	orn	%d15, %d15, %d2
	st.h	[%a15] 162, %d15
	.loc 1 883 0
	ld.h	%d2, [%a2] 164
	ld.h	%d15, [%a15] 164
	orn	%d15, %d15, %d2
	st.h	[%a15] 164, %d15
	.loc 1 884 0
	ld.h	%d2, [%a2] 170
	ld.h	%d15, [%a15] 170
	orn	%d15, %d15, %d2
	st.h	[%a15] 170, %d15
	.loc 1 885 0
	ld.h	%d2, [%a2] 172
	ld.h	%d15, [%a15] 172
	orn	%d15, %d15, %d2
	st.h	[%a15] 172, %d15
	.loc 1 886 0
	ld.h	%d2, [%a2] 174
	ld.h	%d15, [%a15] 174
	orn	%d15, %d15, %d2
	st.h	[%a15] 174, %d15
	.loc 1 887 0
	ld.h	%d2, [%a2] 166
	ld.h	%d15, [%a15] 166
	orn	%d15, %d15, %d2
	st.h	[%a15] 166, %d15
	.loc 1 888 0
	ld.h	%d2, [%a2] 168
	ld.h	%d15, [%a15] 168
	orn	%d15, %d15, %d2
	st.h	[%a15] 168, %d15
	ret
.L177:
	.loc 1 856 0
	movh.a	%a15, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a2, hi:FaultFunctionTypeLockedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeAuthorizedArray
	lea	%a2, [%a2] lo:FaultFunctionTypeLockedArray
	ld.h	%d2, [%a2] 118
	ld.h	%d15, [%a15] 118
	orn	%d15, %d15, %d2
	st.h	[%a15] 118, %d15
	.loc 1 857 0
	ld.h	%d2, [%a2] 120
	ld.h	%d15, [%a15] 120
	orn	%d15, %d15, %d2
	st.h	[%a15] 120, %d15
	.loc 1 858 0
	ld.h	%d2, [%a2] 122
	ld.h	%d15, [%a15] 122
	orn	%d15, %d15, %d2
	st.h	[%a15] 122, %d15
	.loc 1 859 0
	ld.h	%d2, [%a2] 124
	ld.h	%d15, [%a15] 124
	orn	%d15, %d15, %d2
	st.h	[%a15] 124, %d15
	.loc 1 860 0
	ld.h	%d2, [%a2] 126
	ld.h	%d15, [%a15] 126
	orn	%d15, %d15, %d2
	st.h	[%a15] 126, %d15
	.loc 1 861 0
	ld.h	%d2, [%a2] 128
	ld.h	%d15, [%a15] 128
	orn	%d15, %d15, %d2
	st.h	[%a15] 128, %d15
	.loc 1 862 0
	ld.h	%d2, [%a2] 130
	ld.h	%d15, [%a15] 130
	orn	%d15, %d15, %d2
	st.h	[%a15] 130, %d15
	.loc 1 863 0
	ld.h	%d2, [%a2] 132
	ld.h	%d15, [%a15] 132
	orn	%d15, %d15, %d2
	st.h	[%a15] 132, %d15
	.loc 1 864 0
	ld.h	%d2, [%a2] 134
	ld.h	%d15, [%a15] 134
	orn	%d15, %d15, %d2
	st.h	[%a15] 134, %d15
	.loc 1 865 0
	ld.h	%d2, [%a2] 136
	ld.h	%d15, [%a15] 136
	orn	%d15, %d15, %d2
	st.h	[%a15] 136, %d15
	.loc 1 866 0
	ld.h	%d2, [%a2] 138
	ld.h	%d15, [%a15] 138
	orn	%d15, %d15, %d2
	st.h	[%a15] 138, %d15
	.loc 1 867 0
	ld.h	%d2, [%a2] 140
	ld.h	%d15, [%a15] 140
	orn	%d15, %d15, %d2
	st.h	[%a15] 140, %d15
	.loc 1 868 0
	ld.h	%d2, [%a2] 142
	ld.h	%d15, [%a15] 142
	orn	%d15, %d15, %d2
	st.h	[%a15] 142, %d15
	.loc 1 869 0
	ld.h	%d2, [%a2] 144
	ld.h	%d15, [%a15] 144
	orn	%d15, %d15, %d2
	st.h	[%a15] 144, %d15
	.loc 1 870 0
	ld.h	%d2, [%a2] 146
	ld.h	%d15, [%a15] 146
	orn	%d15, %d15, %d2
	st.h	[%a15] 146, %d15
	.loc 1 871 0
	ld.h	%d2, [%a2] 148
	ld.h	%d15, [%a15] 148
	orn	%d15, %d15, %d2
	st.h	[%a15] 148, %d15
	.loc 1 872 0
	ld.h	%d2, [%a2] 150
	ld.h	%d15, [%a15] 150
	orn	%d15, %d15, %d2
	st.h	[%a15] 150, %d15
	.loc 1 873 0
	ld.h	%d2, [%a2] 152
	ld.h	%d15, [%a15] 152
	orn	%d15, %d15, %d2
	st.h	[%a15] 152, %d15
	j	.L172
.L176:
	.loc 1 834 0
	movh.a	%a3, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a4, hi:FaultFunctionTypeLockedArray
	ld.h	%d2, [%a4] lo:FaultFunctionTypeLockedArray
	ld.h	%d15, [%a3] lo:FaultFunctionTypeAuthorizedArray
	lea	%a15, [%a3] lo:FaultFunctionTypeAuthorizedArray
	lea	%a2, [%a4] lo:FaultFunctionTypeLockedArray
	orn	%d15, %d15, %d2
	st.h	[%a3] lo:FaultFunctionTypeAuthorizedArray, %d15
	.loc 1 835 0
	ld.h	%d2, [%a2] 2
	ld.h	%d15, [%a15] 2
	orn	%d15, %d15, %d2
	st.h	[%a15] 2, %d15
	.loc 1 836 0
	ld.h	%d2, [%a2] 4
	ld.h	%d15, [%a15] 4
	orn	%d15, %d15, %d2
	st.h	[%a15] 4, %d15
	.loc 1 837 0
	ld.h	%d2, [%a2] 6
	ld.h	%d15, [%a15] 6
	orn	%d15, %d15, %d2
	st.h	[%a15] 6, %d15
	.loc 1 838 0
	ld.h	%d2, [%a2] 8
	ld.h	%d15, [%a15] 8
	orn	%d15, %d15, %d2
	st.h	[%a15] 8, %d15
	.loc 1 839 0
	ld.h	%d2, [%a2] 10
	ld.h	%d15, [%a15] 10
	orn	%d15, %d15, %d2
	st.h	[%a15] 10, %d15
	.loc 1 840 0
	ld.h	%d2, [%a2] 12
	ld.h	%d15, [%a15] 12
	orn	%d15, %d15, %d2
	st.h	[%a15] 12, %d15
	.loc 1 841 0
	ld.h	%d2, [%a2] 14
	ld.h	%d15, [%a15] 14
	orn	%d15, %d15, %d2
	st.h	[%a15] 14, %d15
	.loc 1 842 0
	ld.h	%d2, [%a2] 16
	ld.h	%d15, [%a15] 16
	orn	%d15, %d15, %d2
	st.h	[%a15] 16, %d15
	.loc 1 843 0
	ld.h	%d2, [%a2] 18
	ld.h	%d15, [%a15] 18
	orn	%d15, %d15, %d2
	st.h	[%a15] 18, %d15
	.loc 1 844 0
	ld.h	%d2, [%a2] 20
	ld.h	%d15, [%a15] 20
	orn	%d15, %d15, %d2
	st.h	[%a15] 20, %d15
	.loc 1 845 0
	ld.h	%d2, [%a2] 22
	ld.h	%d15, [%a15] 22
	orn	%d15, %d15, %d2
	st.h	[%a15] 22, %d15
	.loc 1 846 0
	ld.h	%d2, [%a2] 24
	ld.h	%d15, [%a15] 24
	orn	%d15, %d15, %d2
	st.h	[%a15] 24, %d15
	.loc 1 847 0
	ld.h	%d2, [%a2] 26
	ld.h	%d15, [%a15] 26
	orn	%d15, %d15, %d2
	st.h	[%a15] 26, %d15
	.loc 1 848 0
	ld.h	%d2, [%a2] 28
	ld.h	%d15, [%a15] 28
	orn	%d15, %d15, %d2
	st.h	[%a15] 28, %d15
	.loc 1 849 0
	ld.h	%d2, [%a2] 30
	ld.h	%d15, [%a15] 30
	orn	%d15, %d15, %d2
	st.h	[%a15] 30, %d15
	.loc 1 850 0
	ld.h	%d2, [%a2] 32
	ld.h	%d15, [%a15] 32
	orn	%d15, %d15, %d2
	st.h	[%a15] 32, %d15
	.loc 1 851 0
	ld.h	%d2, [%a2] 34
	ld.h	%d15, [%a15] 34
	orn	%d15, %d15, %d2
	st.h	[%a15] 34, %d15
	j	.L171
.L175:
	.loc 1 808 0
	movh.a	%a15, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a2, hi:FaultFunctionTypeLockedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeAuthorizedArray
	lea	%a2, [%a2] lo:FaultFunctionTypeLockedArray
	.loc 1 811 0
	ld.h	%d4, [%a2] 76
	ld.h	%d3, [%a15] 76
	.loc 1 808 0
	ld.h	%d2, [%a2] 82
	.loc 1 811 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 76, %d3
	.loc 1 812 0
	ld.h	%d4, [%a2] 80
	ld.h	%d3, [%a15] 80
	.loc 1 808 0
	ld.h	%d15, [%a15] 82
	.loc 1 812 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 80, %d3
	.loc 1 813 0
	ld.h	%d4, [%a2] 78
	ld.h	%d3, [%a15] 78
	.loc 1 808 0
	orn	%d15, %d15, %d2
	.loc 1 813 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 78, %d3
	.loc 1 814 0
	ld.h	%d4, [%a2] 86
	ld.h	%d3, [%a15] 86
	.loc 1 809 0
	ld.h	%d2, [%a2] 84
	.loc 1 814 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 86, %d3
	.loc 1 815 0
	ld.h	%d4, [%a2] 88
	ld.h	%d3, [%a15] 88
	.loc 1 808 0
	st.h	[%a15] 82, %d15
	.loc 1 815 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 88, %d3
	.loc 1 816 0
	ld.h	%d4, [%a2] 90
	ld.h	%d3, [%a15] 90
	.loc 1 809 0
	ld.h	%d15, [%a15] 84
	.loc 1 816 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 90, %d3
	.loc 1 817 0
	ld.h	%d4, [%a2] 92
	ld.h	%d3, [%a15] 92
	.loc 1 809 0
	orn	%d15, %d15, %d2
	.loc 1 817 0
	orn	%d3, %d3, %d4
	.loc 1 810 0
	ld.h	%d2, [%a2] 100
	.loc 1 818 0
	ld.h	%d4, [%a2] 94
	.loc 1 809 0
	st.h	[%a15] 84, %d15
	.loc 1 817 0
	st.h	[%a15] 92, %d3
	.loc 1 810 0
	ld.hu	%d15, [%a15] 100
	.loc 1 818 0
	ld.h	%d3, [%a15] 94
	.loc 1 821 0
	orn	%d15, %d15, %d2
	.loc 1 818 0
	orn	%d3, %d3, %d4
	st.h	[%a15] 94, %d3
	.loc 1 819 0
	ld.h	%d4, [%a2] 96
	ld.h	%d3, [%a15] 96
	.loc 1 822 0
	ld.h	%d2, [%a2] 102
	.loc 1 821 0
	st.h	[%a15] 100, %d15
	.loc 1 822 0
	ld.h	%d15, [%a15] 102
	.loc 1 819 0
	orn	%d3, %d3, %d4
	.loc 1 822 0
	orn	%d15, %d15, %d2
	st.h	[%a15] 102, %d15
	.loc 1 823 0
	ld.h	%d2, [%a2] 104
	ld.h	%d15, [%a15] 104
	.loc 1 819 0
	st.h	[%a15] 96, %d3
	.loc 1 823 0
	orn	%d15, %d15, %d2
	st.h	[%a15] 104, %d15
	.loc 1 824 0
	ld.h	%d2, [%a2] 106
	ld.h	%d15, [%a15] 106
	.loc 1 820 0
	ld.h	%d3, [%a15] 98
	.loc 1 824 0
	orn	%d15, %d15, %d2
	st.h	[%a15] 106, %d15
	.loc 1 825 0
	ld.h	%d2, [%a2] 110
	ld.h	%d15, [%a15] 110
	.loc 1 820 0
	ld.h	%d4, [%a2] 98
	.loc 1 825 0
	orn	%d15, %d15, %d2
	st.h	[%a15] 110, %d15
	.loc 1 826 0
	ld.h	%d2, [%a2] 112
	ld.h	%d15, [%a15] 112
	.loc 1 820 0
	orn	%d3, %d3, %d4
	.loc 1 826 0
	orn	%d15, %d15, %d2
	st.h	[%a15] 112, %d15
	.loc 1 827 0
	ld.h	%d2, [%a2] 114
	ld.h	%d15, [%a15] 114
	.loc 1 820 0
	st.h	[%a15] 98, %d3
	.loc 1 827 0
	orn	%d15, %d15, %d2
	st.h	[%a15] 114, %d15
	.loc 1 828 0
	ld.h	%d2, [%a2] 116
	ld.h	%d15, [%a15] 116
	orn	%d15, %d15, %d2
	st.h	[%a15] 116, %d15
	.loc 1 829 0
	ld.h	%d2, [%a2] 108
	ld.h	%d15, [%a15] 108
	orn	%d15, %d15, %d2
	st.h	[%a15] 108, %d15
	j	.L170
.L174:
	.loc 1 783 0
	movh.a	%a15, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a2, hi:FaultFunctionTypeLockedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeAuthorizedArray
	lea	%a2, [%a2] lo:FaultFunctionTypeLockedArray
	ld.h	%d2, [%a2] 36
	ld.h	%d15, [%a15] 36
	orn	%d15, %d15, %d2
	st.h	[%a15] 36, %d15
	.loc 1 784 0
	ld.h	%d2, [%a2] 38
	ld.h	%d15, [%a15] 38
	orn	%d15, %d15, %d2
	st.h	[%a15] 38, %d15
	.loc 1 785 0
	ld.h	%d2, [%a2] 40
	ld.h	%d15, [%a15] 40
	orn	%d15, %d15, %d2
	st.h	[%a15] 40, %d15
	.loc 1 786 0
	ld.h	%d2, [%a2] 42
	ld.h	%d15, [%a15] 42
	orn	%d15, %d15, %d2
	st.h	[%a15] 42, %d15
	.loc 1 787 0
	ld.h	%d2, [%a2] 44
	ld.h	%d15, [%a15] 44
	orn	%d15, %d15, %d2
	st.h	[%a15] 44, %d15
	.loc 1 788 0
	ld.h	%d2, [%a2] 46
	ld.h	%d15, [%a15] 46
	orn	%d15, %d15, %d2
	st.h	[%a15] 46, %d15
	.loc 1 789 0
	ld.h	%d2, [%a2] 48
	ld.h	%d15, [%a15] 48
	orn	%d15, %d15, %d2
	st.h	[%a15] 48, %d15
	.loc 1 790 0
	ld.h	%d2, [%a2] 50
	ld.h	%d15, [%a15] 50
	orn	%d15, %d15, %d2
	st.h	[%a15] 50, %d15
	.loc 1 791 0
	ld.h	%d2, [%a2] 52
	ld.h	%d15, [%a15] 52
	orn	%d15, %d15, %d2
	st.h	[%a15] 52, %d15
	.loc 1 792 0
	ld.h	%d2, [%a2] 54
	ld.h	%d15, [%a15] 54
	orn	%d15, %d15, %d2
	st.h	[%a15] 54, %d15
	.loc 1 793 0
	ld.h	%d2, [%a2] 56
	ld.h	%d15, [%a15] 56
	orn	%d15, %d15, %d2
	st.h	[%a15] 56, %d15
	.loc 1 794 0
	ld.h	%d2, [%a2] 58
	ld.h	%d15, [%a15] 58
	orn	%d15, %d15, %d2
	st.h	[%a15] 58, %d15
	.loc 1 795 0
	ld.h	%d2, [%a2] 60
	ld.h	%d15, [%a15] 60
	orn	%d15, %d15, %d2
	st.h	[%a15] 60, %d15
	.loc 1 796 0
	ld.h	%d2, [%a2] 62
	ld.h	%d15, [%a15] 62
	orn	%d15, %d15, %d2
	st.h	[%a15] 62, %d15
	.loc 1 797 0
	ld.h	%d2, [%a2] 64
	ld.h	%d15, [%a15] 64
	orn	%d15, %d15, %d2
	st.h	[%a15] 64, %d15
	.loc 1 798 0
	ld.h	%d2, [%a2] 66
	ld.h	%d15, [%a15] 66
	orn	%d15, %d15, %d2
	st.h	[%a15] 66, %d15
	.loc 1 799 0
	ld.h	%d2, [%a2] 68
	ld.h	%d15, [%a15] 68
	orn	%d15, %d15, %d2
	st.h	[%a15] 68, %d15
	.loc 1 800 0
	ld.h	%d2, [%a2] 70
	ld.h	%d15, [%a15] 70
	orn	%d15, %d15, %d2
	st.h	[%a15] 70, %d15
	.loc 1 801 0
	ld.h	%d2, [%a2] 72
	ld.h	%d15, [%a15] 72
	orn	%d15, %d15, %d2
	st.h	[%a15] 72, %d15
	.loc 1 802 0
	ld.h	%d2, [%a2] 74
	ld.h	%d15, [%a15] 74
	orn	%d15, %d15, %d2
	st.h	[%a15] 74, %d15
	.loc 1 803 0
	ld.h	%d2, [%a2] 176
	ld.h	%d15, [%a15] 176
	orn	%d15, %d15, %d2
	st.h	[%a15] 176, %d15
	j	.L169
.LFE423:
	.size	FAIL_vidEnableEmbFltCheck, .-FAIL_vidEnableEmbFltCheck
	.align 1
	.global	FAIL_vidFailDetection_10ms
	.type	FAIL_vidFailDetection_10ms, @function
FAIL_vidFailDetection_10ms:
.LFB417:
	.loc 1 477 0
	.loc 1 480 0
	call	ASWNM_bGetFullComSts
.LVL100:
	mov	%d11, %d2
.LVL101:
.LBB24:
.LBB25:
	.loc 1 915 0
	call	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE
.LVL102:
	.loc 1 916 0
	movh	%d15, 15173
	utof	%d3, %d2
	movh	%d4, 15490
	addi	%d15, %d15, -25690
	addi	%d4, %d4, 16568
	madd.f	%d3, %d15, %d3, %d4
.LBE25:
.LBE24:
.LBB28:
.LBB29:
	.loc 1 611 0
	movh	%d15, 16736
.LBE29:
.LBE28:
.LBB37:
.LBB26:
	.loc 1 915 0
	movh.a	%a15, hi:FAIL_u16LvBatVoltRaw
	.loc 1 916 0
	movh.a	%a12, hi:FAIL_f32LvBatVoltage
.LBE26:
.LBE37:
.LBB38:
.LBB31:
	.loc 1 611 0
	cmp.f	%d15, %d3, %d15
.LBE31:
.LBE38:
.LBB39:
.LBB27:
	.loc 1 915 0
	st.h	[%a15] lo:FAIL_u16LvBatVoltRaw, %d2
	.loc 1 916 0
	st.w	[%a12] lo:FAIL_f32LvBatVoltage, %d3
.LBE27:
.LBE39:
.LBB40:
.LBB32:
	.loc 1 611 0
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L279
	.loc 1 617 0
	movh	%d4, 16912
	cmp.f	%d4, %d3, %d4
	or.t	%d4, %d4,2, %d4,1
	jnz	%d4, .L280
	.loc 1 626 0
	movh.a	%a2, hi:FAIL_bComLostDiagVLow
	ld.bu	%d15, [%a2] lo:FAIL_bComLostDiagVLow
	jz	%d15, .L185
	.loc 1 629 0
	movh	%d15, 16768
	cmp.f	%d3, %d3, %d15
	jz.t	%d3, 2, .L182
	.loc 1 631 0
	movh.a	%a15, hi:FAIL_u16ComLostDiagVRecCnt
	ld.h	%d15, [%a15] lo:FAIL_u16ComLostDiagVRecCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 632 0
	ge.u	%d2, %d15, 53
	jnz	%d2, .L187
	.loc 1 631 0
	st.h	[%a15] lo:FAIL_u16ComLostDiagVRecCnt, %d15
	j	.L182
.L280:
	.loc 1 620 0
	movh.a	%a15, hi:FAIL_bComLostDiagVHigh
	mov	%d2, 1
	st.b	[%a15] lo:FAIL_bComLostDiagVHigh, %d2
	.loc 1 621 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
.L182:
.LVL103:
.LBE32:
.LBE40:
.LBB41:
.LBB42:
	.loc 1 941 0
	call	CCU6_bGetPwmRuningFlg
.LVL104:
	mov	%d9, %d2
.LVL105:
	.loc 1 942 0
	call	CCU6_u8GetPwmState
.LVL106:
	mov	%d8, %d2
.LVL107:
	.loc 1 943 0
	call	GCCU6_bGetPwmRuningFlg
.LVL108:
	mov	%d10, %d2
.LVL109:
	.loc 1 944 0
	call	GCCU6_u8GetPwmState
.LVL110:
	.loc 1 946 0
	movh.a	%a15, hi:FAIL_u8FaultDetMngStt
	ld.bu	%d15, [%a15] lo:FAIL_u8FaultDetMngStt
	.loc 1 944 0
	mov	%d3, %d2
.LVL111:
	.loc 1 946 0
	jlt.u	%d15, 5, .L281
.L192:
	.loc 1 1056 0
	mov	%d15, 0
	movh.a	%a2, hi:FAIL_bDiagDisableFlg
	st.b	[%a2] lo:FAIL_bDiagDisableFlg, %d15
	.loc 1 1057 0
	mov	%d15, 1
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d15
.LVL112:
.L199:
.LBE42:
.LBE41:
	.loc 1 485 0
	mov	%d4, 1
	call	CANSM_GetBusoffCnt
.LVL113:
	.loc 1 486 0
	movh.a	%a15, hi:FAIL_bCanErrCheckonC
	.loc 1 485 0
	movh.a	%a12, hi:FAIL_u8Can01BusoffCnt
	.loc 1 486 0
	ld.bu	%d15, [%a15] lo:FAIL_bCanErrCheckonC
	.loc 1 485 0
	st.b	[%a12] lo:FAIL_u8Can01BusoffCnt, %d2
	.loc 1 486 0
	jz	%d15, .L211
	.loc 1 488 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL114:
	movh.a	%a13, hi:FAIL_u16KeyOnValue
	st.h	[%a13] lo:FAIL_u16KeyOnValue, %d2
	.loc 1 490 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	jz	%d2, .L212
	.loc 1 490 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] lo:FAIL_bComLostDiagVEna
	jz	%d15, .L212
	.loc 1 492 0 is_stmt 1
	ld.bu	%d15, [%a12] lo:FAIL_u8Can01BusoffCnt
	jlt.u	%d15, 5, .L282
	mov	%e4, 18
	call	FaultDetectionWithFail
.LVL115:
.L232:
	.loc 1 493 0
	ld.bu	%d15, [%a12] lo:FAIL_u8Can01BusoffCnt
	jlt.u	%d15, 5, .L283
	mov	%e4, 38
	call	FaultDetectionWithFail
.LVL116:
.L233:
	.loc 1 494 0
	ld.bu	%d15, [%a12] lo:FAIL_u8Can01BusoffCnt
	jlt.u	%d15, 5, .L284
	mov	%e4, 0
	call	FaultDetectionWithFail
.LVL117:
.L234:
	.loc 1 495 0
	ld.bu	%d15, [%a12] lo:FAIL_u8Can01BusoffCnt
	jlt.u	%d15, 5, .L273
	mov	%e4, 59
	call	FaultDetectionWithFail
.LVL118:
	j	.L235
.L212:
	.loc 1 499 0
	mov	%e4, 18
	call	FaultDetectionWithoutFail
.LVL119:
	.loc 1 500 0
	mov	%e4, 38
	call	FaultDetectionWithoutFail
.LVL120:
	.loc 1 501 0
	mov	%e4, 0
	call	FaultDetectionWithoutFail
.LVL121:
.L273:
	.loc 1 502 0
	mov	%e4, 59
	call	FaultDetectionWithoutFail
.LVL122:
.L235:
	.loc 1 505 0
	ld.hu	%d15, [%a13] lo:FAIL_u16KeyOnValue
	.loc 1 507 0
	movh.a	%a2, hi:FAIL_u16KeyOnDelay
	.loc 1 505 0
	jz	%d15, .L274
	.loc 1 511 0
	ld.hu	%d15, [%a2] lo:FAIL_u16KeyOnDelay
	ge.u	%d2, %d15, 350
	jnz	%d2, .L223
	.loc 1 513 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:FAIL_u16KeyOnDelay, %d15
	j	.L222
.L211:
	.loc 1 543 0
	mov	%d4, 18
	mov	%d5, 2
	call	FaultDetectionWithoutFail
.LVL123:
	.loc 1 544 0
	mov	%d4, 38
	mov	%d5, 2
	call	FaultDetectionWithoutFail
.LVL124:
	.loc 1 545 0
	mov	%d4, 0
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL125:
	.loc 1 546 0
	mov	%d4, 59
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL126:
	.loc 1 547 0
	mov	%e4, 18
	call	FaultDetectionWithoutFail
.LVL127:
	.loc 1 548 0
	mov	%e4, 38
	call	FaultDetectionWithoutFail
.LVL128:
	.loc 1 549 0
	mov	%e4, 0
	call	FaultDetectionWithoutFail
.LVL129:
	.loc 1 550 0
	mov	%e4, 59
.L275:
	j	FaultDetectionWithoutFail
.LVL130:
.L281:
.LBB47:
.LBB43:
	.loc 1 946 0
	movh.a	%a2, hi:.L194
	lea	%a2, [%a2] lo:.L194
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L194:
	.code32
	j	.L192
	.code32
	j	.L195
	.code32
	j	.L196
	.code32
	j	.L197
	.code32
	j	.L198
.LVL131:
.L279:
.LBE43:
.LBE47:
.LBB48:
.LBB33:
	.loc 1 614 0
	mov	%d15, 1
	movh.a	%a15, hi:FAIL_bComLostDiagVLow
	st.b	[%a15] lo:FAIL_bComLostDiagVLow, %d15
	.loc 1 615 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	mov	%d15, 0
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	j	.L182
.LVL132:
.L223:
.LBE33:
.LBE48:
	.loc 1 517 0
	mov	%d15, 350
.L274:
	st.h	[%a2] lo:FAIL_u16KeyOnDelay, %d15
.L222:
	.loc 1 521 0
	ld.bu	%d2, [%a15] lo:FAIL_bComLostDiagVEna
	jz	%d2, .L224
	.loc 1 522 0
	ld.bu	%d2, [%a12] lo:FAIL_u8Can01BusoffCnt
	jlt.u	%d2, 2, .L285
.L224:
	.loc 1 533 0
	mov	%d4, 18
	mov	%d5, 2
	call	FaultDetectionWithoutFail
.LVL133:
	.loc 1 534 0
	mov	%d4, 38
	mov	%d5, 2
	call	FaultDetectionWithoutFail
.LVL134:
	.loc 1 535 0
	mov	%d4, 0
	mov	%d5, 1
	call	FaultDetectionWithoutFail
.LVL135:
	.loc 1 536 0
	mov	%d4, 59
	mov	%d5, 1
	j	FaultDetectionWithoutFail
.LVL136:
.L185:
.LBB49:
.LBB34:
	.loc 1 640 0
	movh.a	%a2, hi:FAIL_bComLostDiagVHigh
	ld.bu	%d2, [%a2] lo:FAIL_bComLostDiagVHigh
	jz	%d2, .L189
	.loc 1 643 0
	movh	%d2, 16904
	cmp.f	%d3, %d3, %d2
	jz.t	%d3, 0, .L182
	.loc 1 645 0
	movh.a	%a15, hi:FAIL_u16ComLostDiagVRecCnt
	ld.h	%d2, [%a15] lo:FAIL_u16ComLostDiagVRecCnt
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
	.loc 1 646 0
	ge.u	%d3, %d2, 53
	jz	%d3, .L286
.LBB30:
	.loc 1 648 0
	st.h	[%a15] lo:FAIL_u16ComLostDiagVRecCnt, %d15
	.loc 1 649 0
	mov	%d15, 1
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	.loc 1 650 0
	mov	%d15, 0
	st.b	[%a2] lo:FAIL_bComLostDiagVHigh, %d15
	j	.L182
.LVL137:
.L197:
.LBE30:
.LBE34:
.LBE49:
.LBB50:
.LBB44:
	.loc 1 1013 0
	mov	%d15, 1
	movh.a	%a2, hi:FAIL_bDiagDisableFlg
	st.b	[%a2] lo:FAIL_bDiagDisableFlg, %d15
	.loc 1 1015 0
	movh.a	%a2, hi:FAIL_kf32DiagVoltOnLowC
	ld.w	%d2, [%a12] lo:FAIL_f32LvBatVoltage
.LVL138:
	ld.w	%d15, [%a2] lo:FAIL_kf32DiagVoltOnLowC
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L205
	.loc 1 1016 0
	movh.a	%a2, hi:FAIL_kf32DiagVoltOnHighC
	ld.w	%d15, [%a2] lo:FAIL_kf32DiagVoltOnHighC
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L205
	.loc 1 1018 0
	movh.a	%a2, hi:FAIL_u16FaultDetTimCnt
	ld.hu	%d2, [%a2] lo:FAIL_u16FaultDetTimCnt
	movh.a	%a3, hi:FAIL_ku16RcvVolFiltTimC
	itof	%d15, %d2
	ld.w	%d3, [%a3] lo:FAIL_ku16RcvVolFiltTimC
.LVL139:
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 0, 1
	jnz	%d15, .L272
	.loc 1 1024 0
	st.h	[%a2] lo:FAIL_u16FaultDetTimCnt, %d15
	.loc 1 1025 0
	mov	%d15, 4
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d15
	j	.L199
.LVL140:
.L196:
	.loc 1 995 0
	movh.a	%a2, hi:FAIL_bDiagDisableFlg
	mov	%d15, 1
	st.b	[%a2] lo:FAIL_bDiagDisableFlg, %d15
	.loc 1 997 0
	call	FAIL_vidDisableEmbFltCheck
.LVL141:
	.loc 1 1000 0
	mov	%d4, 0
	call	FaultClear
.LVL142:
	.loc 1 1001 0
	mov	%d4, 1
	call	FaultClear
.LVL143:
	.loc 1 1002 0
	mov	%d4, 2
	call	FaultClear
.LVL144:
	.loc 1 1003 0
	mov	%d4, 3
	call	FaultClear
.LVL145:
	.loc 1 1004 0
	mov	%d4, 4
	call	FaultClear
.LVL146:
	.loc 1 1006 0
	mov	%d15, 0
	movh.a	%a2, hi:FAIL_u16FaultDetTimCnt
	st.h	[%a2] lo:FAIL_u16FaultDetTimCnt, %d15
	.loc 1 1007 0
	mov	%d15, 3
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d15
	j	.L199
.LVL147:
.L198:
	.loc 1 1046 0
	call	FAIL_vidEnableEmbFltCheck
.LVL148:
	.loc 1 1048 0
	mov	%d15, 0
	movh.a	%a2, hi:FAIL_bDiagDisableFlg
	st.b	[%a2] lo:FAIL_bDiagDisableFlg, %d15
	.loc 1 1049 0
	mov	%d15, 0
	movh.a	%a2, hi:FAIL_u16FaultDetTimCnt
	st.h	[%a2] lo:FAIL_u16FaultDetTimCnt, %d15
	.loc 1 1050 0
	mov	%d15, 1
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d15
	j	.L199
.LVL149:
.L195:
	.loc 1 961 0
	mov	%d15, 0
	movh.a	%a2, hi:FAIL_bDiagDisableFlg
	st.b	[%a2] lo:FAIL_bDiagDisableFlg, %d15
	.loc 1 963 0
	ne	%d15, %d8, 1
	and.eq	%d15, %d9, 0
	jz	%d15, .L200
	.loc 1 966 0
	ne	%d15, %d2, 1
	and.eq	%d15, %d10, 0
	jz	%d15, .L200
	.loc 1 968 0
	movh.a	%a2, hi:FAIL_kf32DiagVoltOffLowC
	ld.w	%d2, [%a12] lo:FAIL_f32LvBatVoltage
.LVL150:
	ld.w	%d15, [%a2] lo:FAIL_kf32DiagVoltOffLowC
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L287
.L201:
	.loc 1 971 0
	movh.a	%a2, hi:FAIL_u16FaultDetTimCnt
	ld.hu	%d2, [%a2] lo:FAIL_u16FaultDetTimCnt
	movh.a	%a3, hi:FAIL_ku16UnderVolFiltTimC
	itof	%d15, %d2
	ld.w	%d3, [%a3] lo:FAIL_ku16UnderVolFiltTimC
.LVL151:
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 0, 1
	jz	%d15, .L288
.L272:
	.loc 1 1020 0
	add	%d2, 1
	st.h	[%a2] lo:FAIL_u16FaultDetTimCnt, %d2
	j	.L199
.LVL152:
.L205:
	.loc 1 1030 0
	mov	%d15, 0
	movh.a	%a2, hi:FAIL_u16FaultDetTimCnt
	st.h	[%a2] lo:FAIL_u16FaultDetTimCnt, %d15
	.loc 1 1033 0
	eq	%d15, %d9, 1
	or.eq	%d15, %d8, 1
	jnz	%d15, .L210
	.loc 1 1036 0
	eq	%d15, %d10, 1
	or.eq	%d15, %d3, 1
	jz	%d15, .L199
.L210:
	.loc 1 1038 0
	mov	%d15, 4
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d15
	j	.L199
.LVL153:
.L285:
.LBE44:
.LBE50:
	.loc 1 524 0
	ne	%d2, %d11, 0
	and.ge.u	%d2, %d15, 350
	jz	%d2, .L224
.LBB51:
	.loc 1 526 0
	call	ComToutDet_bMCU1_CANTimeout_DetFun
.LVL154:
	mov	%d4, 18
	mov	%d5, 2
	jeq	%d2, 1, .L289
	.loc 1 526 0 is_stmt 0 discriminator 2
	call	FaultDetectionWithoutFail
.LVL155:
.L226:
	.loc 1 527 0 is_stmt 1
	call	ComToutDet_bMCU2_CANTimeout_DetFun
.LVL156:
	mov	%d4, 38
	mov	%d5, 2
	jeq	%d2, 1, .L290
	.loc 1 527 0 is_stmt 0 discriminator 2
	call	FaultDetectionWithoutFail
.LVL157:
.L228:
	.loc 1 528 0 is_stmt 1
	call	ComToutDet_bACM_CANTimeout_DetFun
.LVL158:
	mov	%d4, 0
	mov	%d5, 1
	jeq	%d2, 1, .L291
	.loc 1 528 0 is_stmt 0 discriminator 2
	call	FaultDetectionWithoutFail
.LVL159:
.L230:
	.loc 1 529 0 is_stmt 1
	call	ComToutDet_bEPS_CANTimeout_DetFun
.LVL160:
	mov	%d4, 59
	mov	%d5, 1
	jne	%d2, 1, .L275
	.loc 1 529 0 is_stmt 0 discriminator 1
	j	FaultDetectionWithFail
.LVL161:
.L287:
.LBE51:
.LBB52:
.LBB45:
	.loc 1 969 0 is_stmt 1
	movh.a	%a2, hi:FAIL_kf32DiagVoltOffHighC
	ld.w	%d15, [%a2] lo:FAIL_kf32DiagVoltOffHighC
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L201
.L200:
	.loc 1 983 0
	mov	%d15, 0
	movh.a	%a15, hi:FAIL_u16FaultDetTimCnt
	st.h	[%a15] lo:FAIL_u16FaultDetTimCnt, %d15
	j	.L199
.LVL162:
.L189:
.LBE45:
.LBE52:
.LBB53:
.LBB35:
	.loc 1 656 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	mov	%d15, 1
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	j	.L182
.LVL163:
.L284:
.LBE35:
.LBE53:
	.loc 1 494 0
	mov	%e4, 0
	call	FaultDetectionWithoutFail
.LVL164:
	j	.L234
.L283:
	.loc 1 493 0
	mov	%e4, 38
	call	FaultDetectionWithoutFail
.LVL165:
	j	.L233
.L282:
	.loc 1 492 0
	mov	%e4, 18
	call	FaultDetectionWithoutFail
.LVL166:
	j	.L232
.LVL167:
.L187:
.LBB54:
.LBB36:
	.loc 1 635 0
	mov	%d15, 1
	.loc 1 634 0
	st.h	[%a15] lo:FAIL_u16ComLostDiagVRecCnt, %d4
	.loc 1 635 0
	movh.a	%a15, hi:FAIL_bComLostDiagVEna
	st.b	[%a15] lo:FAIL_bComLostDiagVEna, %d15
	.loc 1 636 0
	mov	%d15, 0
	st.b	[%a2] lo:FAIL_bComLostDiagVLow, %d15
	j	.L182
.L286:
	.loc 1 645 0
	st.h	[%a15] lo:FAIL_u16ComLostDiagVRecCnt, %d2
	j	.L182
.LVL168:
.L288:
.LBE36:
.LBE54:
.LBB55:
.LBB46:
	.loc 1 977 0
	st.h	[%a2] lo:FAIL_u16FaultDetTimCnt, %d15
	.loc 1 978 0
	mov	%d15, 2
	st.b	[%a15] lo:FAIL_u8FaultDetMngStt, %d15
	j	.L199
.L289:
.LBE46:
.LBE55:
.LBB56:
	.loc 1 526 0 discriminator 1
	call	FaultDetectionWithFail
.LVL169:
	j	.L226
.L291:
	.loc 1 528 0 discriminator 1
	call	FaultDetectionWithFail
.LVL170:
	j	.L230
.L290:
	.loc 1 527 0 discriminator 1
	call	FaultDetectionWithFail
.LVL171:
	j	.L228
.LBE56:
.LFE417:
	.size	FAIL_vidFailDetection_10ms, .-FAIL_vidFailDetection_10ms
	.align 1
	.global	FAIL_vidClearComLostFlg
	.type	FAIL_vidClearComLostFlg, @function
FAIL_vidClearComLostFlg:
.LFB424:
	.loc 1 901 0
	ret
.LFE424:
	.size	FAIL_vidClearComLostFlg, .-FAIL_vidClearComLostFlg
.section .bss.a2.FAIL_u16LvBatVoltRaw,"aw",@nobits
	.align 1
	.type	FAIL_u16LvBatVoltRaw, @object
	.size	FAIL_u16LvBatVoltRaw, 2
FAIL_u16LvBatVoltRaw:
	.zero	2
.section .bss.a2.FAIL_u16FaultDetTimCnt,"aw",@nobits
	.align 1
	.type	FAIL_u16FaultDetTimCnt, @object
	.size	FAIL_u16FaultDetTimCnt, 2
FAIL_u16FaultDetTimCnt:
	.zero	2
.section .bss.a1.FAIL_u8FaultDetMngStt,"aw",@nobits
	.type	FAIL_u8FaultDetMngStt, @object
	.size	FAIL_u8FaultDetMngStt, 1
FAIL_u8FaultDetMngStt:
	.zero	1
.section .bss.a1.FAIL_bDiagDisableFlg,"aw",@nobits
	.type	FAIL_bDiagDisableFlg, @object
	.size	FAIL_bDiagDisableFlg, 1
FAIL_bDiagDisableFlg:
	.zero	1
.section .bss.a4.FAIL_f32LvBatVoltage,"aw",@nobits
	.align 2
	.type	FAIL_f32LvBatVoltage, @object
	.size	FAIL_f32LvBatVoltage, 4
FAIL_f32LvBatVoltage:
	.zero	4
	.global	FAIL_u32VSICounterTimeoutTCalc
.section .bss.a4.FAIL_u32VSICounterTimeoutTCalc,"aw",@nobits
	.align 2
	.type	FAIL_u32VSICounterTimeoutTCalc, @object
	.size	FAIL_u32VSICounterTimeoutTCalc, 4
FAIL_u32VSICounterTimeoutTCalc:
	.zero	4
	.global	FAIL_u32VSICounterTimeoutSyncPos
.section .bss.a4.FAIL_u32VSICounterTimeoutSyncPos,"aw",@nobits
	.align 2
	.type	FAIL_u32VSICounterTimeoutSyncPos, @object
	.size	FAIL_u32VSICounterTimeoutSyncPos, 4
FAIL_u32VSICounterTimeoutSyncPos:
	.zero	4
	.global	FAIL_u32VSICounterTimeoutCs
.section .bss.a4.FAIL_u32VSICounterTimeoutCs,"aw",@nobits
	.align 2
	.type	FAIL_u32VSICounterTimeoutCs, @object
	.size	FAIL_u32VSICounterTimeoutCs, 4
FAIL_u32VSICounterTimeoutCs:
	.zero	4
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
	.uaword	.LFB411
	.uaword	.LFE411-.LFB411
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB413
	.uaword	.LFE413-.LFB413
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB414
	.uaword	.LFE414-.LFB414
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB415
	.uaword	.LFE415-.LFB415
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB416
	.uaword	.LFE416-.LFB416
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
	.uaword	.LFB410
	.uaword	.LFE410-.LFB410
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB423
	.uaword	.LFE423-.LFB423
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB417
	.uaword	.LFE417-.LFB417
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 "bswcdd\\Dsm\\fail\\FAIL.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_L.h"
	.file 13 "bswcdd\\Dsm\\fail\\FAIL_Nvm.h"
	.file 14 "bswcdd\\Dsm\\fail\\FAIL_L.h"
	.file 15 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
	.file 16 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 17 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h"
	.file 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
	.file 19 ".\\output\\inc/..\\..\\bswcdd\\CCU6\\CCU6.h"
	.file 20 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h"
	.file 21 ".\\output\\inc/..\\..\\bswcdd\\GCCU6\\GCCU6.h"
	.file 22 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
	.file 23 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 24 ".\\output\\inc/..\\..\\ASW\\ASW_NM\\api\\ASW_NM.h"
	.file 25 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x240c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\fail\\FAIL.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1bd
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
	.uaword	0x1e9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x20d
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
	.uaword	0x233
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
	.byte	0x2
	.byte	0x75
	.uaword	0x26c
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
	.uaword	0x1bd
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
	.byte	0x6
	.byte	0x31
	.uaword	0x339
	.uleb128 0x5
	.string	"FAIL_enuFLTDET_IDLE"
	.sleb128 0
	.uleb128 0x5
	.string	"FAIL_enuFLTDET_STANDBY"
	.sleb128 1
	.uleb128 0x5
	.string	"FAIL_enuFLTDET_STOP_DIAG"
	.sleb128 2
	.uleb128 0x5
	.string	"FAIL_enuFLTDET_WAIT_RECV"
	.sleb128 3
	.uleb128 0x5
	.string	"FAIL_enuFLTDET_START_DIAG"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"FaultBitFieldType"
	.byte	0x3
	.byte	0x27
	.uaword	0x1db
	.uleb128 0x6
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x4
	.byte	0x2b
	.uaword	0x3c6
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x48d
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
	.byte	0x5
	.byte	0x1f
	.uaword	0x505
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
	.uleb128 0x6
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x27
	.uaword	0x742
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
	.uleb128 0x7
	.uaword	0x1b0
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x7
	.byte	0xe0
	.uaword	0x1b0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.byte	0x4
	.uaword	0x76a
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x8c
	.uaword	0x795
	.uleb128 0xb
	.string	"module"
	.byte	0x8
	.byte	0x8e
	.uaword	0x764
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"index"
	.byte	0x8
	.byte	0x8f
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x8
	.byte	0x90
	.uaword	0x76b
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x88
	.uaword	0x810
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
	.uleb128 0xc
	.byte	0x1
	.byte	0xa
	.uahalf	0x160
	.uaword	0x919
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
	.byte	0xb
	.byte	0x24
	.uaword	0x9a0
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
	.string	"BSW_CanNode"
	.byte	0x1
	.byte	0xc
	.byte	0x2f
	.uaword	0x9f9
	.uleb128 0x5
	.string	"BSW_CANNODE0_e"
	.sleb128 0
	.uleb128 0x5
	.string	"BSW_CANNODE1_e"
	.sleb128 1
	.uleb128 0x5
	.string	"BSW_CANNODE2_e"
	.sleb128 2
	.uleb128 0x5
	.string	"BSW_CANNODE3_e"
	.sleb128 3
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"FAIL_vidCheckBatVolt"
	.byte	0x1
	.uahalf	0x261
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"FAIL_vidInitVSICounters"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0xa15
	.uaword	.LFB411
	.uaword	.LFE411
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"FAIL_vidPowerUp"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.uaword	.LFB412
	.uaword	.LFE412
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"FAIL_vidFailDetection_1ms"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	.LFB413
	.uaword	.LFE413
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc2c
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdc
	.uaword	0x27f
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdd
	.uaword	0x1b0
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	.LVL1
	.uaword	0x1f1e
	.uleb128 0x13
	.uaword	.LVL2
	.uaword	0x1f3c
	.uleb128 0x14
	.uaword	.LVL3
	.uaword	0x1f5c
	.uaword	0xadc
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x13
	.uaword	.LVL4
	.uaword	0x1f8b
	.uleb128 0x14
	.uaword	.LVL5
	.uaword	0x1f5c
	.uaword	0xafd
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x14
	.uaword	.LVL6
	.uaword	0x1fab
	.uaword	0xb10
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL7
	.uaword	0x1fd7
	.uleb128 0x14
	.uaword	.LVL8
	.uaword	0x1f5c
	.uaword	0xb31
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x13
	.uaword	.LVL9
	.uaword	0x1ff6
	.uleb128 0x14
	.uaword	.LVL10
	.uaword	0x1f5c
	.uaword	0xb52
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x13
	.uaword	.LVL11
	.uaword	0x2015
	.uleb128 0x14
	.uaword	.LVL12
	.uaword	0x1f5c
	.uaword	0xb73
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x13
	.uaword	.LVL13
	.uaword	0x2034
	.uleb128 0x16
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x1f5c
	.uaword	0xb95
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x43
	.byte	0
	.uleb128 0x14
	.uaword	.LVL15
	.uaword	0x2057
	.uaword	0xbad
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x14
	.uaword	.LVL16
	.uaword	0x2057
	.uaword	0xbc5
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x13
	.uaword	.LVL17
	.uaword	0x2034
	.uleb128 0x16
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x2057
	.uaword	0xbe7
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x43
	.byte	0
	.uleb128 0x14
	.uaword	.LVL19
	.uaword	0x2057
	.uaword	0xbff
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x14
	.uaword	.LVL21
	.uaword	0x2057
	.uaword	0xc17
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x17
	.uaword	.LVL22
	.uaword	0x2057
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"GFAIL_vidFailDetection_1ms"
	.byte	0x1
	.uahalf	0x11d
	.byte	0x1
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe03
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x27f
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1b0
	.uaword	.LLST3
	.uleb128 0x13
	.uaword	.LVL24
	.uaword	0x1f1e
	.uleb128 0x13
	.uaword	.LVL25
	.uaword	0x2083
	.uleb128 0x14
	.uaword	.LVL26
	.uaword	0x1f5c
	.uaword	0xca8
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
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.uaword	.LVL27
	.uaword	0x20a4
	.uleb128 0x14
	.uaword	.LVL28
	.uaword	0x1f5c
	.uaword	0xcca
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.uaword	.LVL29
	.uaword	0x1fab
	.uaword	0xcdd
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL30
	.uaword	0x20c5
	.uleb128 0x14
	.uaword	.LVL31
	.uaword	0x1f5c
	.uaword	0xcff
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.uaword	.LVL32
	.uaword	0x20e5
	.uleb128 0x14
	.uaword	.LVL33
	.uaword	0x1f5c
	.uaword	0xd21
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.uaword	.LVL34
	.uaword	0x2105
	.uleb128 0x14
	.uaword	.LVL35
	.uaword	0x1f5c
	.uaword	0xd43
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.uaword	.LVL36
	.uaword	0x2125
	.uleb128 0x16
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x1f5c
	.uaword	0xd66
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
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	.LVL38
	.uaword	0x2057
	.uaword	0xd7f
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.uaword	.LVL39
	.uaword	0x2057
	.uaword	0xd98
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.uaword	.LVL40
	.uaword	0x2125
	.uleb128 0x16
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x2057
	.uaword	0xdbb
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
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	.LVL42
	.uaword	0x2057
	.uaword	0xdd4
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.uaword	.LVL44
	.uaword	0x2057
	.uaword	0xded
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.uaword	.LVL45
	.uaword	0x2057
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
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"AFAIL_vidFailDetection_1ms"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1055
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x162
	.uaword	0x27f
	.uaword	.LLST4
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x163
	.uaword	0x1b0
	.uaword	.LLST5
	.uleb128 0x1a
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0x104b
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x169
	.uaword	0x20d
	.byte	0x1
	.uaword	0xe75
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x190
	.uaword	0x20d
	.byte	0x1
	.uaword	0xe89
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0
	.uaword	0xf4d
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x20d
	.byte	0x1
	.uaword	0xea6
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x178
	.uaword	0x20d
	.byte	0x1
	.uaword	0xeba
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x181
	.uaword	0x20d
	.byte	0x1
	.uaword	0xece
	.uleb128 0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LVL62
	.uaword	0x2149
	.uleb128 0x14
	.uaword	.LVL63
	.uaword	0x1f5c
	.uaword	0xeef
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL64
	.uaword	0x215d
	.uleb128 0x14
	.uaword	.LVL65
	.uaword	0x1f5c
	.uaword	0xf10
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL66
	.uaword	0x2171
	.uleb128 0x14
	.uaword	.LVL67
	.uaword	0x1f5c
	.uaword	0xf31
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL69
	.uaword	0x2057
	.uleb128 0x13
	.uaword	.LVL70
	.uaword	0x2057
	.uleb128 0x13
	.uaword	.LVL71
	.uaword	0x2057
	.byte	0
	.uleb128 0x14
	.uaword	.LVL48
	.uaword	0x2185
	.uaword	0xf60
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL49
	.uaword	0x21b2
	.uleb128 0x14
	.uaword	.LVL50
	.uaword	0x1f5c
	.uaword	0xf81
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.uaword	.LVL51
	.uaword	0x21c6
	.uaword	0xf94
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL52
	.uaword	0x2057
	.uaword	0xfac
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.uaword	.LVL53
	.uaword	0x1fab
	.uaword	0xfbf
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL55
	.uaword	0x21f3
	.uleb128 0x16
	.uaword	.LVL56
	.byte	0x1
	.uaword	0x1f5c
	.uaword	0xfe1
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.uaword	.LVL57
	.uaword	0x2057
	.uaword	0xff9
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.uaword	.LVL58
	.uaword	0x21c6
	.uaword	0x100c
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL59
	.uaword	0x21b2
	.uleb128 0x14
	.uaword	.LVL60
	.uaword	0x1f5c
	.uaword	0x102d
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.uaword	.LVL61
	.uaword	0x1fab
	.uaword	0x1040
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL68
	.byte	0x1
	.uaword	0x2057
	.byte	0
	.uleb128 0x13
	.uaword	.LVL47
	.uaword	0x1f1e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"OFAIL_vidFailDetection_1ms"
	.byte	0x1
	.uahalf	0x19e
	.byte	0x1
	.uaword	.LFB416
	.uaword	.LFE416
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12af
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x27f
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x1b0
	.uaword	.LLST7
	.uleb128 0x1a
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0x12a5
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x20d
	.byte	0x1
	.uaword	0x10c7
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ce
	.uaword	0x20d
	.byte	0x1
	.uaword	0x10db
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0x11a2
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x20d
	.byte	0x1
	.uaword	0x10f8
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x20d
	.byte	0x1
	.uaword	0x110c
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x20d
	.byte	0x1
	.uaword	0x1120
	.uleb128 0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LVL88
	.uaword	0x2207
	.uleb128 0x14
	.uaword	.LVL89
	.uaword	0x1f5c
	.uaword	0x1142
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.uleb128 0x13
	.uaword	.LVL90
	.uaword	0x221b
	.uleb128 0x14
	.uaword	.LVL91
	.uaword	0x1f5c
	.uaword	0x1164
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.uleb128 0x13
	.uaword	.LVL92
	.uaword	0x222f
	.uleb128 0x14
	.uaword	.LVL93
	.uaword	0x1f5c
	.uaword	0x1186
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.uleb128 0x13
	.uaword	.LVL95
	.uaword	0x2057
	.uleb128 0x13
	.uaword	.LVL96
	.uaword	0x2057
	.uleb128 0x13
	.uaword	.LVL97
	.uaword	0x2057
	.byte	0
	.uleb128 0x14
	.uaword	.LVL74
	.uaword	0x2185
	.uaword	0x11b5
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL75
	.uaword	0x2243
	.uleb128 0x14
	.uaword	.LVL76
	.uaword	0x1f5c
	.uaword	0x11d7
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
	.byte	0x3d
	.byte	0
	.uleb128 0x14
	.uaword	.LVL77
	.uaword	0x21c6
	.uaword	0x11ea
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.uaword	.LVL78
	.uaword	0x2057
	.uaword	0x1203
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.uleb128 0x14
	.uaword	.LVL79
	.uaword	0x1fab
	.uaword	0x1216
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.uaword	.LVL81
	.uaword	0x2257
	.uleb128 0x16
	.uaword	.LVL82
	.byte	0x1
	.uaword	0x1f5c
	.uaword	0x1239
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
	.byte	0x3c
	.byte	0
	.uleb128 0x14
	.uaword	.LVL83
	.uaword	0x2057
	.uaword	0x1252
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
	.byte	0x3d
	.byte	0
	.uleb128 0x14
	.uaword	.LVL84
	.uaword	0x21c6
	.uaword	0x1265
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL85
	.uaword	0x2243
	.uleb128 0x14
	.uaword	.LVL86
	.uaword	0x1f5c
	.uaword	0x1287
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.uleb128 0x14
	.uaword	.LVL87
	.uaword	0x1fab
	.uaword	0x129a
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL94
	.byte	0x1
	.uaword	0x2057
	.byte	0
	.uleb128 0x13
	.uaword	.LVL73
	.uaword	0x1f1e
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FAIL_vidFailDetection_100ms"
	.byte	0x1
	.uahalf	0x234
	.byte	0x1
	.uaword	.LFB418
	.uaword	.LFE418
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"FAIL_vidFailDetection_1000ms"
	.byte	0x1
	.uahalf	0x242
	.byte	0x1
	.uaword	.LFB419
	.uaword	.LFE419
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"FAIL_vidPowerDown"
	.byte	0x1
	.uahalf	0x252
	.byte	0x1
	.uaword	.LFB420
	.uaword	.LFE420
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.uaword	0x9f9
	.uaword	.LFB421
	.uaword	.LFE421
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"FAIL_vidDisableEmbFltCheck"
	.byte	0x1
	.uahalf	0x29f
	.byte	0x1
	.uaword	.LFB422
	.uaword	.LFE422
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"FAIL_vidInit"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	.LFB410
	.uaword	.LFE410
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13b3
	.uleb128 0x20
	.uaword	0xa15
	.uaword	.LBB13
	.uaword	.LBE13
	.byte	0x1
	.byte	0x91
	.uleb128 0x13
	.uaword	.LVL98
	.uaword	0x1341
	.uleb128 0x1e
	.uaword	.LVL99
	.byte	0x1
	.uaword	0x226b
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FAIL_vidEnableEmbFltCheck"
	.byte	0x1
	.uahalf	0x30b
	.byte	0x1
	.uaword	.LFB423
	.uaword	.LFE423
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x21
	.string	"FAIL_vidCalcBatVolt"
	.byte	0x1
	.uahalf	0x391
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"FAIL_vidFaultDetManagement"
	.byte	0x1
	.uahalf	0x3a4
	.byte	0x1
	.byte	0x1
	.uaword	0x1487
	.uleb128 0x23
	.string	"bLocPwmOngoingSts"
	.byte	0x1
	.uahalf	0x3a7
	.uaword	0x27f
	.uleb128 0x23
	.string	"u8LocCCU6State"
	.byte	0x1
	.uahalf	0x3a8
	.uaword	0x1b0
	.uleb128 0x23
	.string	"bLocGcuPwmOngoingSts"
	.byte	0x1
	.uahalf	0x3a9
	.uaword	0x27f
	.uleb128 0x23
	.string	"u8LocGcuCCU6State"
	.byte	0x1
	.uahalf	0x3aa
	.uaword	0x1b0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FAIL_vidFailDetection_10ms"
	.byte	0x1
	.uahalf	0x1dc
	.byte	0x1
	.uaword	.LFB417
	.uaword	.LFE417
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1919
	.uleb128 0x24
	.string	"Loc_bFullComSts"
	.byte	0x1
	.uahalf	0x1de
	.uaword	0x27f
	.uaword	.LLST8
	.uleb128 0x25
	.uaword	0x13df
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x14f2
	.uleb128 0x13
	.uaword	.LVL102
	.uaword	0x2287
	.byte	0
	.uleb128 0x26
	.uaword	0x9f9
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x1e2
	.uleb128 0x25
	.uaword	0x13f9
	.uaword	.LBB41
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x15d6
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x28
	.uaword	0x141e
	.uaword	.LLST9
	.uleb128 0x28
	.uaword	0x1438
	.uaword	.LLST10
	.uleb128 0x28
	.uaword	0x144f
	.uaword	.LLST11
	.uleb128 0x28
	.uaword	0x146c
	.uaword	.LLST12
	.uleb128 0x13
	.uaword	.LVL104
	.uaword	0x22b7
	.uleb128 0x13
	.uaword	.LVL106
	.uaword	0x22d7
	.uleb128 0x13
	.uaword	.LVL108
	.uaword	0x22f4
	.uleb128 0x13
	.uaword	.LVL110
	.uaword	0x2315
	.uleb128 0x13
	.uaword	.LVL141
	.uaword	0x1341
	.uleb128 0x14
	.uaword	.LVL142
	.uaword	0x2333
	.uaword	0x157f
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL143
	.uaword	0x2333
	.uaword	0x1592
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.uaword	.LVL144
	.uaword	0x2333
	.uaword	0x15a5
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.uaword	.LVL145
	.uaword	0x2333
	.uaword	0x15b8
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.uaword	.LVL146
	.uaword	0x2333
	.uaword	0x15cb
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.uaword	.LVL148
	.uaword	0x13b3
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0xc0
	.uaword	0x16d2
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x20d
	.byte	0x1
	.uaword	0x15f3
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x20d
	.byte	0x1
	.uaword	0x1607
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x210
	.uaword	0x20d
	.byte	0x1
	.uaword	0x161b
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x211
	.uaword	0x20d
	.byte	0x1
	.uaword	0x162f
	.uleb128 0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LVL154
	.uaword	0x234e
	.uleb128 0x14
	.uaword	.LVL155
	.uaword	0x1f5c
	.uaword	0x1650
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x13
	.uaword	.LVL156
	.uaword	0x2362
	.uleb128 0x14
	.uaword	.LVL157
	.uaword	0x1f5c
	.uaword	0x1672
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0x13
	.uaword	.LVL158
	.uaword	0x2376
	.uleb128 0x14
	.uaword	.LVL159
	.uaword	0x1f5c
	.uaword	0x1693
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.uaword	.LVL160
	.uaword	0x238a
	.uleb128 0x16
	.uaword	.LVL161
	.byte	0x1
	.uaword	0x2057
	.uaword	0x16b6
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.uleb128 0x13
	.uaword	.LVL169
	.uaword	0x2057
	.uleb128 0x13
	.uaword	.LVL170
	.uaword	0x2057
	.uleb128 0x13
	.uaword	.LVL171
	.uaword	0x2057
	.byte	0
	.uleb128 0x13
	.uaword	.LVL100
	.uaword	0x239e
	.uleb128 0x14
	.uaword	.LVL113
	.uaword	0x23bd
	.uaword	0x16ee
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL114
	.uaword	0x23e4
	.uleb128 0x14
	.uaword	.LVL115
	.uaword	0x2057
	.uaword	0x170f
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x14
	.uaword	.LVL116
	.uaword	0x2057
	.uaword	0x1728
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
	.byte	0x26
	.byte	0
	.uleb128 0x14
	.uaword	.LVL117
	.uaword	0x2057
	.uaword	0x1740
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL118
	.uaword	0x2057
	.uaword	0x1759
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
	.byte	0x3b
	.byte	0
	.uleb128 0x14
	.uaword	.LVL119
	.uaword	0x1f5c
	.uaword	0x1771
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x14
	.uaword	.LVL120
	.uaword	0x1f5c
	.uaword	0x178a
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
	.byte	0x26
	.byte	0
	.uleb128 0x14
	.uaword	.LVL121
	.uaword	0x1f5c
	.uaword	0x17a2
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL122
	.uaword	0x1f5c
	.uaword	0x17bb
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
	.byte	0x3b
	.byte	0
	.uleb128 0x14
	.uaword	.LVL123
	.uaword	0x1f5c
	.uaword	0x17d3
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x14
	.uaword	.LVL124
	.uaword	0x1f5c
	.uaword	0x17ec
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0x14
	.uaword	.LVL125
	.uaword	0x1f5c
	.uaword	0x1804
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL126
	.uaword	0x1f5c
	.uaword	0x181d
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.uleb128 0x14
	.uaword	.LVL127
	.uaword	0x1f5c
	.uaword	0x1835
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x14
	.uaword	.LVL128
	.uaword	0x1f5c
	.uaword	0x184e
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
	.byte	0x26
	.byte	0
	.uleb128 0x14
	.uaword	.LVL129
	.uaword	0x1f5c
	.uaword	0x1866
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL130
	.byte	0x1
	.uaword	0x1f5c
	.uleb128 0x14
	.uaword	.LVL133
	.uaword	0x1f5c
	.uaword	0x1888
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x14
	.uaword	.LVL134
	.uaword	0x1f5c
	.uaword	0x18a1
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0x14
	.uaword	.LVL135
	.uaword	0x1f5c
	.uaword	0x18b9
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL136
	.byte	0x1
	.uaword	0x1f5c
	.uaword	0x18d3
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.uleb128 0x14
	.uaword	.LVL164
	.uaword	0x1f5c
	.uaword	0x18eb
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL165
	.uaword	0x1f5c
	.uaword	0x1904
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
	.byte	0x26
	.byte	0
	.uleb128 0x17
	.uaword	.LVL166
	.uaword	0x1f5c
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FAIL_vidClearComLostFlg"
	.byte	0x1
	.uahalf	0x384
	.byte	0x1
	.uaword	.LFB424
	.uaword	.LFE424
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x29
	.string	"FAIL_f32LvBatVoltage"
	.byte	0x1
	.byte	0x6d
	.uaword	0x25d
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_f32LvBatVoltage
	.uleb128 0x29
	.string	"FAIL_bDiagDisableFlg"
	.byte	0x1
	.byte	0x6e
	.uaword	0x27f
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_bDiagDisableFlg
	.uleb128 0x29
	.string	"FAIL_u8FaultDetMngStt"
	.byte	0x1
	.byte	0x6f
	.uaword	0x1b0
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u8FaultDetMngStt
	.uleb128 0x29
	.string	"FAIL_u16FaultDetTimCnt"
	.byte	0x1
	.byte	0x70
	.uaword	0x1db
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u16FaultDetTimCnt
	.uleb128 0x29
	.string	"FAIL_u16LvBatVoltRaw"
	.byte	0x1
	.byte	0x71
	.uaword	0x1db
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u16LvBatVoltRaw
	.uleb128 0x2a
	.string	"FAIL_u16RstStartUpCntNvm"
	.byte	0xd
	.byte	0x2b
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u16RstHotCntNvm"
	.byte	0xd
	.byte	0x2c
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bRstHotFlagNvm"
	.byte	0xd
	.byte	0x2d
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u32TimestampLifeNvm"
	.byte	0xd
	.byte	0x32
	.uaword	0x225
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u16TimestampIgnNvm"
	.byte	0xd
	.byte	0x33
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u16KeyOnValue"
	.byte	0x6
	.byte	0x43
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bCanErrCheckonC"
	.byte	0xe
	.byte	0x37
	.uaword	0x1aca
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x27f
	.uleb128 0x2a
	.string	"FAIL_bErrCheckonC_ECU1"
	.byte	0xe
	.byte	0x38
	.uaword	0x1aca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bErrCheckonC_ECU2"
	.byte	0xe
	.byte	0x39
	.uaword	0x1aca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bErrCheckonC_ECU3"
	.byte	0xe
	.byte	0x3a
	.uaword	0x1aca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bErrCheckonC_ECU4"
	.byte	0xe
	.byte	0x3b
	.uaword	0x1aca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bErrCheckonC_ECU5"
	.byte	0xe
	.byte	0x3c
	.uaword	0x1aca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_kf32DiagVoltOffLowC"
	.byte	0xe
	.byte	0x3d
	.uaword	0x1b91
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x25d
	.uleb128 0x2a
	.string	"FAIL_kf32DiagVoltOffHighC"
	.byte	0xe
	.byte	0x3e
	.uaword	0x1b91
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_kf32DiagVoltOnLowC"
	.byte	0xe
	.byte	0x3f
	.uaword	0x1b91
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_kf32DiagVoltOnHighC"
	.byte	0xe
	.byte	0x40
	.uaword	0x1b91
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_ku16UnderVolFiltTimC"
	.byte	0xe
	.byte	0x41
	.uaword	0x1b91
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_ku16RcvVolFiltTimC"
	.byte	0xe
	.byte	0x42
	.uaword	0x1b91
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bCanErrChkDisabled"
	.byte	0xe
	.byte	0x4c
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bComLostDiagVEna"
	.byte	0xe
	.byte	0x4e
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bComLostDiagVHigh"
	.byte	0xe
	.byte	0x4f
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bComLostDiagVLow"
	.byte	0xe
	.byte	0x50
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_bRstHotFlag"
	.byte	0xe
	.byte	0x52
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u8Can01BusoffCnt"
	.byte	0xe
	.byte	0x53
	.uaword	0x1b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u16ComLostDiagVRecCnt"
	.byte	0xe
	.byte	0x56
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FAIL_u16KeyOnDelay"
	.byte	0xe
	.byte	0x57
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x339
	.uaword	0x1d48
	.uleb128 0x2c
	.uaword	0x3c6
	.byte	0x58
	.byte	0
	.uleb128 0x2a
	.string	"FaultFunctionTypeAuthorizedArray"
	.byte	0xf
	.byte	0x31
	.uaword	0x1d38
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"FaultFunctionTypeLockedArray"
	.byte	0xf
	.byte	0x42
	.uaword	0x1d98
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1d38
	.uleb128 0x2a
	.string	"MAIN_bSoftOvCurrPhsUFlg"
	.byte	0x10
	.byte	0x65
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"MAIN_bSoftOvCurrPhsVFlg"
	.byte	0x10
	.byte	0x66
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"MAIN_bSoftOvCurrPhsWFlg"
	.byte	0x10
	.byte	0x67
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"GMAIN_bSoftOvCurrPhsUFlg"
	.byte	0x11
	.byte	0x5c
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"GMAIN_bSoftOvCurrPhsVFlg"
	.byte	0x11
	.byte	0x5d
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"GMAIN_bSoftOvCurrPhsWFlg"
	.byte	0x11
	.byte	0x5e
	.uaword	0x27f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x795
	.uaword	0x1e76
	.uleb128 0x2c
	.uaword	0x3c6
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xaa
	.uaword	0x1e93
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1e66
	.uleb128 0x2d
	.string	"FAIL_u32VSICounterTimeoutCs"
	.byte	0x1
	.byte	0x66
	.uaword	0x225
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u32VSICounterTimeoutCs
	.uleb128 0x2d
	.string	"FAIL_u32VSICounterTimeoutSyncPos"
	.byte	0x1
	.byte	0x67
	.uaword	0x225
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u32VSICounterTimeoutSyncPos
	.uleb128 0x2d
	.string	"FAIL_u32VSICounterTimeoutTCalc"
	.byte	0x1
	.byte	0x68
	.uaword	0x225
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u32VSICounterTimeoutTCalc
	.uleb128 0x2e
	.byte	0x1
	.string	"BSW_bGetBswReadySts"
	.byte	0x12
	.byte	0x73
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetHwFaultIgbtH"
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"FaultDetectionWithoutFail"
	.byte	0x14
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0x1f8b
	.uleb128 0x30
	.uaword	0x1b0
	.uleb128 0x30
	.uaword	0x1b0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetHwFaultIgbtL"
	.byte	0x13
	.byte	0x53
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0x4
	.byte	0x5f
	.byte	0x1
	.uaword	0x1b0
	.byte	0x1
	.uaword	0x1fd7
	.uleb128 0x30
	.uaword	0x1b0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetHwFaultOvcU"
	.byte	0x13
	.byte	0x54
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetHwFaultOvcV"
	.byte	0x13
	.byte	0x55
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetHwFaultOvcW"
	.byte	0x13
	.byte	0x56
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetHwFaultDcOvVolt"
	.byte	0x13
	.byte	0x51
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"FaultDetectionWithFail"
	.byte	0x14
	.byte	0x3f
	.byte	0x1
	.byte	0x1
	.uaword	0x2083
	.uleb128 0x30
	.uaword	0x1b0
	.uleb128 0x30
	.uaword	0x1b0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetHwFaultIgbtH"
	.byte	0x15
	.byte	0x52
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetHwFaultIgbtL"
	.byte	0x15
	.byte	0x53
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetHwFaultOvcU"
	.byte	0x15
	.byte	0x54
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetHwFaultOvcV"
	.byte	0x15
	.byte	0x55
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetHwFaultOvcW"
	.byte	0x15
	.byte	0x56
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetHwFaultDcOvVolt"
	.byte	0x15
	.byte	0x51
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x20d
	.byte	0x1
	.uaword	0x215d
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x178
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2171
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x181
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2185
	.uleb128 0x1c
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"TPPCDev_bGetHwFaultIgbtH"
	.byte	0x16
	.byte	0x4b
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uaword	0x21b2
	.uleb128 0x30
	.uaword	0x742
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x169
	.uaword	0x20d
	.byte	0x1
	.uaword	0x21c6
	.uleb128 0x1c
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"TPPCDev_bGetHwFaultIgbtL"
	.byte	0x16
	.byte	0x4a
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uaword	0x21f3
	.uleb128 0x30
	.uaword	0x742
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x190
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2207
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x20d
	.byte	0x1
	.uaword	0x221b
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x20d
	.byte	0x1
	.uaword	0x222f
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2243
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2257
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ce
	.uaword	0x20d
	.byte	0x1
	.uaword	0x226b
	.uleb128 0x1c
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"UDS_vidFrazeFrameInit"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE"
	.byte	0x17
	.byte	0xc6
	.byte	0x1
	.uaword	0x1db
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_bGetPwmRuningFlg"
	.byte	0x13
	.byte	0x57
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"CCU6_u8GetPwmState"
	.byte	0x13
	.byte	0x5e
	.byte	0x1
	.uaword	0x1b0
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_bGetPwmRuningFlg"
	.byte	0x15
	.byte	0x57
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"GCCU6_u8GetPwmState"
	.byte	0x15
	.byte	0x5e
	.byte	0x1
	.uaword	0x1b0
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"FaultClear"
	.byte	0x4
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x234e
	.uleb128 0x30
	.uaword	0x1b0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2362
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x20d
	.byte	0x1
	.uaword	0x2376
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x210
	.uaword	0x20d
	.byte	0x1
	.uaword	0x238a
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x211
	.uaword	0x20d
	.byte	0x1
	.uaword	0x239e
	.uleb128 0x1c
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"ASWNM_bGetFullComSts"
	.byte	0x18
	.byte	0x37
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"CANSM_GetBusoffCnt"
	.byte	0x19
	.byte	0xf7
	.byte	0x1
	.uaword	0x1b0
	.byte	0x1
	.uaword	0x23e4
	.uleb128 0x30
	.uaword	0x1b0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0x17
	.byte	0x7d
	.byte	0x1
	.uaword	0x1db
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x22
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL0-.text
	.uaword	.LVL1-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1-.text
	.uaword	.LVL2-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.text
	.uaword	.LVL6-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL7-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20-.text
	.uaword	.LFE413-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL23-.text
	.uaword	.LVL24-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LVL25-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL23-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LVL30-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43-.text
	.uaword	.LFE414-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL46-.text
	.uaword	.LVL47-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47-.text
	.uaword	.LVL48-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL46-.text
	.uaword	.LVL53-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56-.text
	.uaword	.LVL61-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61-.text
	.uaword	.LVL62-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL72-.text
	.uaword	.LVL73-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73-.text
	.uaword	.LVL74-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL72-.text
	.uaword	.LVL79-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82-.text
	.uaword	.LVL87-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87-.text
	.uaword	.LVL88-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL101-.text
	.uaword	.LVL102-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102-1-.text
	.uaword	.LFE417-.text
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL103-.text
	.uaword	.LVL105-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105-.text
	.uaword	.LVL106-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106-1-.text
	.uaword	.LVL131-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL132-.text
	.uaword	.LVL136-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL137-.text
	.uaword	.LVL162-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL163-.text
	.uaword	.LVL167-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL168-.text
	.uaword	.LFE417-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL103-.text
	.uaword	.LVL107-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107-.text
	.uaword	.LVL108-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108-1-.text
	.uaword	.LVL131-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL132-.text
	.uaword	.LVL136-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL137-.text
	.uaword	.LVL162-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL163-.text
	.uaword	.LVL167-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL168-.text
	.uaword	.LFE417-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL103-.text
	.uaword	.LVL109-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109-.text
	.uaword	.LVL110-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110-1-.text
	.uaword	.LVL131-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL132-.text
	.uaword	.LVL136-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL137-.text
	.uaword	.LVL162-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL163-.text
	.uaword	.LVL167-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL168-.text
	.uaword	.LFE417-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL103-.text
	.uaword	.LVL111-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL130-.text
	.uaword	.LVL131-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL137-.text
	.uaword	.LVL138-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL138-.text
	.uaword	.LVL139-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL140-.text
	.uaword	.LVL141-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL147-.text
	.uaword	.LVL148-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL149-.text
	.uaword	.LVL150-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL150-.text
	.uaword	.LVL151-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL152-.text
	.uaword	.LVL153-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL161-.text
	.uaword	.LVL162-.text
	.uahalf	0x1
	.byte	0x53
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
	.uaword	.LBB5-.Ltext0
	.uaword	.LBE5-.Ltext0
	.uaword	.LBB6-.Ltext0
	.uaword	.LBE6-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB8-.Ltext0
	.uaword	.LBE8-.Ltext0
	.uaword	.LBB9-.Ltext0
	.uaword	.LBE9-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB24-.Ltext0
	.uaword	.LBE24-.Ltext0
	.uaword	.LBB37-.Ltext0
	.uaword	.LBE37-.Ltext0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB28-.Ltext0
	.uaword	.LBE28-.Ltext0
	.uaword	.LBB38-.Ltext0
	.uaword	.LBE38-.Ltext0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	.LBB48-.Ltext0
	.uaword	.LBE48-.Ltext0
	.uaword	.LBB49-.Ltext0
	.uaword	.LBE49-.Ltext0
	.uaword	.LBB53-.Ltext0
	.uaword	.LBE53-.Ltext0
	.uaword	.LBB54-.Ltext0
	.uaword	.LBE54-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB41-.Ltext0
	.uaword	.LBE41-.Ltext0
	.uaword	.LBB47-.Ltext0
	.uaword	.LBE47-.Ltext0
	.uaword	.LBB50-.Ltext0
	.uaword	.LBE50-.Ltext0
	.uaword	.LBB52-.Ltext0
	.uaword	.LBE52-.Ltext0
	.uaword	.LBB55-.Ltext0
	.uaword	.LBE55-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB51-.Ltext0
	.uaword	.LBE51-.Ltext0
	.uaword	.LBB56-.Ltext0
	.uaword	.LBE56-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF14:
	.string	"ComToutDet_bACM_CANTimeout_DetFun"
.LASF0:
	.string	"bBswReadySts"
.LASF11:
	.string	"MAIN_bGetOcuSoftOvcFlag_W"
.LASF9:
	.string	"MAIN_bGetOcuSoftOvcFlag_U"
.LASF10:
	.string	"MAIN_bGetOcuSoftOvcFlag_V"
.LASF4:
	.string	"MAIN_bGetAcuSoftOvcFlag_U"
.LASF5:
	.string	"MAIN_bGetAcuSoftOvcFlag_V"
.LASF6:
	.string	"MAIN_bGetAcuSoftOvcFlag_W"
.LASF7:
	.string	"MAIN_bGetEPSASCEnableState"
.LASF12:
	.string	"ComToutDet_bMCU1_CANTimeout_DetFun"
.LASF1:
	.string	"u8LocFaultLevel"
.LASF2:
	.string	"MAIN_bGetACMASCEnableState"
.LASF8:
	.string	"MAIN_bGetOcuSoftOvBhvFlag"
.LASF13:
	.string	"ComToutDet_bMCU2_CANTimeout_DetFun"
.LASF3:
	.string	"MAIN_bGetAcuSoftOvBhvFlag"
.LASF15:
	.string	"ComToutDet_bEPS_CANTimeout_DetFun"
	.extern	FAIL_kf32DiagVoltOffHighC,STT_OBJECT,4
	.extern	ComToutDet_bEPS_CANTimeout_DetFun,STT_FUNC,0
	.extern	ComToutDet_bACM_CANTimeout_DetFun,STT_FUNC,0
	.extern	ComToutDet_bMCU2_CANTimeout_DetFun,STT_FUNC,0
	.extern	ComToutDet_bMCU1_CANTimeout_DetFun,STT_FUNC,0
	.extern	FAIL_ku16UnderVolFiltTimC,STT_OBJECT,4
	.extern	FAIL_kf32DiagVoltOffLowC,STT_OBJECT,4
	.extern	FaultClear,STT_FUNC,0
	.extern	FAIL_ku16RcvVolFiltTimC,STT_OBJECT,4
	.extern	FAIL_kf32DiagVoltOnHighC,STT_OBJECT,4
	.extern	FAIL_kf32DiagVoltOnLowC,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON,STT_FUNC,0
	.extern	FAIL_bCanErrCheckonC,STT_OBJECT,1
	.extern	CANSM_GetBusoffCnt,STT_FUNC,0
	.extern	GCCU6_u8GetPwmState,STT_FUNC,0
	.extern	GCCU6_bGetPwmRuningFlg,STT_FUNC,0
	.extern	CCU6_u8GetPwmState,STT_FUNC,0
	.extern	CCU6_bGetPwmRuningFlg,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE,STT_FUNC,0
	.extern	ASWNM_bGetFullComSts,STT_FUNC,0
	.extern	FAIL_bErrCheckonC_ECU5,STT_OBJECT,1
	.extern	FAIL_bErrCheckonC_ECU4,STT_OBJECT,1
	.extern	FAIL_bErrCheckonC_ECU3,STT_OBJECT,1
	.extern	FAIL_bErrCheckonC_ECU2,STT_OBJECT,1
	.extern	FAIL_bErrCheckonC_ECU1,STT_OBJECT,1
	.extern	UDS_vidFrazeFrameInit,STT_FUNC,0
	.extern	FAIL_u16KeyOnDelay,STT_OBJECT,2
	.extern	FAIL_bCanErrChkDisabled,STT_OBJECT,1
	.extern	FAIL_u16KeyOnValue,STT_OBJECT,2
	.extern	FAIL_u8Can01BusoffCnt,STT_OBJECT,1
	.extern	FaultFunctionTypeLockedArray,STT_OBJECT,178
	.extern	FaultFunctionTypeAuthorizedArray,STT_OBJECT,178
	.extern	FAIL_bComLostDiagVEna,STT_OBJECT,1
	.extern	FAIL_bComLostDiagVHigh,STT_OBJECT,1
	.extern	FAIL_u16ComLostDiagVRecCnt,STT_OBJECT,2
	.extern	FAIL_bComLostDiagVLow,STT_OBJECT,1
	.extern	FAIL_u16TimestampIgnNvm,STT_OBJECT,2
	.extern	FAIL_u32TimestampLifeNvm,STT_OBJECT,4
	.extern	MAIN_bGetOcuSoftOvcFlag_W,STT_FUNC,0
	.extern	MAIN_bGetOcuSoftOvcFlag_V,STT_FUNC,0
	.extern	MAIN_bGetOcuSoftOvcFlag_U,STT_FUNC,0
	.extern	MAIN_bGetOcuSoftOvBhvFlag,STT_FUNC,0
	.extern	MAIN_bGetEPSASCEnableState,STT_FUNC,0
	.extern	MAIN_bGetAcuSoftOvcFlag_W,STT_FUNC,0
	.extern	MAIN_bGetAcuSoftOvcFlag_V,STT_FUNC,0
	.extern	MAIN_bGetAcuSoftOvcFlag_U,STT_FUNC,0
	.extern	MAIN_bGetAcuSoftOvBhvFlag,STT_FUNC,0
	.extern	TPPCDev_bGetHwFaultIgbtL,STT_FUNC,0
	.extern	MAIN_bGetACMASCEnableState,STT_FUNC,0
	.extern	TPPCDev_bGetHwFaultIgbtH,STT_FUNC,0
	.extern	GCCU6_bGetHwFaultDcOvVolt,STT_FUNC,0
	.extern	GCCU6_bGetHwFaultOvcW,STT_FUNC,0
	.extern	GMAIN_bSoftOvCurrPhsWFlg,STT_OBJECT,1
	.extern	GCCU6_bGetHwFaultOvcV,STT_FUNC,0
	.extern	GMAIN_bSoftOvCurrPhsVFlg,STT_OBJECT,1
	.extern	GCCU6_bGetHwFaultOvcU,STT_FUNC,0
	.extern	GMAIN_bSoftOvCurrPhsUFlg,STT_OBJECT,1
	.extern	GCCU6_bGetHwFaultIgbtL,STT_FUNC,0
	.extern	GCCU6_bGetHwFaultIgbtH,STT_FUNC,0
	.extern	FaultDetectionWithFail,STT_FUNC,0
	.extern	CCU6_bGetHwFaultDcOvVolt,STT_FUNC,0
	.extern	CCU6_bGetHwFaultOvcW,STT_FUNC,0
	.extern	MAIN_bSoftOvCurrPhsWFlg,STT_OBJECT,1
	.extern	CCU6_bGetHwFaultOvcV,STT_FUNC,0
	.extern	MAIN_bSoftOvCurrPhsVFlg,STT_OBJECT,1
	.extern	CCU6_bGetHwFaultOvcU,STT_FUNC,0
	.extern	MAIN_bSoftOvCurrPhsUFlg,STT_OBJECT,1
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	CCU6_bGetHwFaultIgbtL,STT_FUNC,0
	.extern	FaultDetectionWithoutFail,STT_FUNC,0
	.extern	CCU6_bGetHwFaultIgbtH,STT_FUNC,0
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.extern	FAIL_u16RstStartUpCntNvm,STT_OBJECT,2
	.extern	FAIL_u16RstHotCntNvm,STT_OBJECT,2
	.extern	FAIL_bRstHotFlag,STT_OBJECT,1
	.extern	FAIL_bRstHotFlagNvm,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
