	.file	"DRV8340.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	DRV8340_bGetErrorPinLevel
	.type	DRV8340_bGetErrorPinLevel, @function
DRV8340_bGetErrorPinLevel:
.LFB0:
	.file 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340.c"
	.loc 1 123 0
	.loc 1 125 0
	movh.a	%a15, hi:DRV8340_bErrorPinLevel
	ld.bu	%d2, [%a15] lo:DRV8340_bErrorPinLevel
	ret
.LFE0:
	.size	DRV8340_bGetErrorPinLevel, .-DRV8340_bGetErrorPinLevel
	.align 1
	.global	DRV8340_bGetDrvUnderVolt
	.type	DRV8340_bGetDrvUnderVolt, @function
DRV8340_bGetDrvUnderVolt:
.LFB1:
	.loc 1 128 0
	.loc 1 130 0
	movh.a	%a15, hi:DRV8340_bDrvUnderVoltage
	ld.bu	%d2, [%a15] lo:DRV8340_bDrvUnderVoltage
	ret
.LFE1:
	.size	DRV8340_bGetDrvUnderVolt, .-DRV8340_bGetDrvUnderVolt
	.align 1
	.global	DRV8340_bGetDrvOverVolt
	.type	DRV8340_bGetDrvOverVolt, @function
DRV8340_bGetDrvOverVolt:
.LFB2:
	.loc 1 133 0
	.loc 1 135 0
	movh.a	%a15, hi:DRV8340_bDrvOverVoltage
	ld.bu	%d2, [%a15] lo:DRV8340_bDrvOverVoltage
	ret
.LFE2:
	.size	DRV8340_bGetDrvOverVolt, .-DRV8340_bGetDrvOverVolt
	.align 1
	.global	DRV8340_bGetDrvOverCurr
	.type	DRV8340_bGetDrvOverCurr, @function
DRV8340_bGetDrvOverCurr:
.LFB3:
	.loc 1 138 0
	.loc 1 139 0
	movh.a	%a15, hi:DRV8340_bDrvOverCurrent
	ld.bu	%d15, [%a15] lo:DRV8340_bDrvOverCurrent
	mov	%d2, 1
	jnz	%d15, .L5
	.loc 1 139 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:DRV8340_bDrvGateDrvFault
	ld.bu	%d2, [%a15] lo:DRV8340_bDrvGateDrvFault
	ne	%d2, %d2, 0
.L5:
	.loc 1 140 0 is_stmt 1 discriminator 6
	ret
.LFE3:
	.size	DRV8340_bGetDrvOverCurr, .-DRV8340_bGetDrvOverCurr
	.align 1
	.global	DRV8340_bGetDrvOverTemp
	.type	DRV8340_bGetDrvOverTemp, @function
DRV8340_bGetDrvOverTemp:
.LFB4:
	.loc 1 143 0
	.loc 1 145 0
	movh.a	%a15, hi:DRV8340_bDrvOverTemp
	ld.bu	%d2, [%a15] lo:DRV8340_bDrvOverTemp
	ret
.LFE4:
	.size	DRV8340_bGetDrvOverTemp, .-DRV8340_bGetDrvOverTemp
	.align 1
	.global	DRV8340_bGetPhsShortHigh
	.type	DRV8340_bGetPhsShortHigh, @function
DRV8340_bGetPhsShortHigh:
.LFB5:
	.loc 1 148 0
	.loc 1 150 0
	movh.a	%a15, hi:DRV8340_bPhaseShortBat
	ld.bu	%d2, [%a15] lo:DRV8340_bPhaseShortBat
	ret
.LFE5:
	.size	DRV8340_bGetPhsShortHigh, .-DRV8340_bGetPhsShortHigh
	.align 1
	.global	DRV8340_bGetPhsShortLow
	.type	DRV8340_bGetPhsShortLow, @function
DRV8340_bGetPhsShortLow:
.LFB6:
	.loc 1 153 0
	.loc 1 155 0
	movh.a	%a15, hi:DRV8340_bPhaseShortGnd
	ld.bu	%d2, [%a15] lo:DRV8340_bPhaseShortGnd
	ret
.LFE6:
	.size	DRV8340_bGetPhsShortLow, .-DRV8340_bGetPhsShortLow
	.align 1
	.global	DRV8340_vidModuleInit
	.type	DRV8340_vidModuleInit, @function
DRV8340_vidModuleInit:
.LFB7:
	.loc 1 158 0
	.loc 1 159 0
	mov	%d15, 0
	movh.a	%a15, hi:DRV8340_u8Mode
	st.b	[%a15] lo:DRV8340_u8Mode, %d15
	.loc 1 160 0
	mov	%d2, -1
	movh.a	%a15, hi:DRV8340_u8TgtMode
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d2
	.loc 1 161 0
	movh.a	%a15, hi:DRV8340_u8ErrRecoverCnt
	st.b	[%a15] lo:DRV8340_u8ErrRecoverCnt, %d15
	.loc 1 162 0
	movh.a	%a15, hi:DRV8340_u8AsyncComState
	st.b	[%a15] lo:DRV8340_u8AsyncComState, %d15
	.loc 1 163 0
	mov	%d15, 0
	movh.a	%a15, hi:DRV8340_u16EnaResetTime
	st.h	[%a15] lo:DRV8340_u16EnaResetTime, %d15
	.loc 1 164 0
	movh.a	%a15, hi:DRV8340_u16EnaResetThld
	st.h	[%a15] lo:DRV8340_u16EnaResetThld, %d15
	.loc 1 165 0
	movh.a	%a15, hi:DRV8340_u16ErrPinChkCnt
	st.h	[%a15] lo:DRV8340_u16ErrPinChkCnt, %d15
	.loc 1 166 0
	movh.a	%a15, hi:DRV8340_u16CfgChkTimer
	st.h	[%a15] lo:DRV8340_u16CfgChkTimer, %d15
	.loc 1 167 0
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	st.h	[%a15] lo:DRV8340_u16FaultTimer, %d15
	.loc 1 168 0
	movh.a	%a15, hi:DRV8340_u16ErrTotalCnt
	st.h	[%a15] lo:DRV8340_u16ErrTotalCnt, %d15
	.loc 1 170 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInRunPhase
	st.b	[%a15] lo:DRV8340_u8ShortCntInRunPhase, %d15
	.loc 1 171 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInInitPhase
	st.b	[%a15] lo:DRV8340_u8ShortCntInInitPhase, %d15
	.loc 1 173 0
	movh.a	%a15, hi:DRV8340_u8TestTimesInRunPhase
	st.b	[%a15] lo:DRV8340_u8TestTimesInRunPhase, %d15
	.loc 1 174 0
	movh.a	%a15, hi:DRV8340_u8TestTimesInInitPhase
	st.b	[%a15] lo:DRV8340_u8TestTimesInInitPhase, %d15
	.loc 1 176 0
	movh.a	%a15, hi:DRV8340_u8MaxShortCntInInitPhase
	st.b	[%a15] lo:DRV8340_u8MaxShortCntInInitPhase, %d15
	.loc 1 178 0
	movh.a	%a15, hi:DRV8340_bErrorPinLevel
	st.b	[%a15] lo:DRV8340_bErrorPinLevel, %d15
	.loc 1 179 0
	movh.a	%a15, hi:DRV8340_bDrvUnderVoltage
	st.b	[%a15] lo:DRV8340_bDrvUnderVoltage, %d15
	.loc 1 180 0
	movh.a	%a15, hi:DRV8340_bDrvOverVoltage
	st.b	[%a15] lo:DRV8340_bDrvOverVoltage, %d15
	.loc 1 181 0
	movh.a	%a15, hi:DRV8340_bDrvOverCurrent
	st.b	[%a15] lo:DRV8340_bDrvOverCurrent, %d15
	.loc 1 182 0
	movh.a	%a15, hi:DRV8340_bDrvGateDrvFault
	st.b	[%a15] lo:DRV8340_bDrvGateDrvFault, %d15
	.loc 1 183 0
	movh.a	%a15, hi:DRV8340_bDrvOverTemp
	st.b	[%a15] lo:DRV8340_bDrvOverTemp, %d15
	.loc 1 184 0
	movh.a	%a15, hi:DRV8340_bPhaseShort
	st.b	[%a15] lo:DRV8340_bPhaseShort, %d15
	.loc 1 185 0
	movh.a	%a15, hi:DRV8340_bUserReadReq
	st.b	[%a15] lo:DRV8340_bUserReadReq, %d15
	.loc 1 186 0
	movh.a	%a15, hi:DRV8340_bUserWriteReq
	st.b	[%a15] lo:DRV8340_bUserWriteReq, %d15
	.loc 1 187 0
	mov	%d2, 1
	movh.a	%a15, hi:DRV8340_bIsShutdown
	st.b	[%a15] lo:DRV8340_bIsShutdown, %d2
	.loc 1 188 0
	movh.a	%a15, hi:DRV8340_bIsLatched
	st.b	[%a15] lo:DRV8340_bIsLatched, %d15
	.loc 1 189 0
	movh.a	%a15, hi:DRV8340_bIsInitDone
	st.b	[%a15] lo:DRV8340_bIsInitDone, %d15
	.loc 1 190 0
	movh.a	%a15, hi:DRV8340_bFaultTIsStart
	st.b	[%a15] lo:DRV8340_bFaultTIsStart, %d15
	.loc 1 192 0
	mov	%d15, 0
	movh.a	%a15, hi:DRV8340_au8FaultRegsVal
	st.w	[%a15] lo:DRV8340_au8FaultRegsVal, %d15
	ret
.LFE7:
	.size	DRV8340_vidModuleInit, .-DRV8340_vidModuleInit
	.align 1
	.global	DRV8340_vidMainFunction
	.type	DRV8340_vidMainFunction, @function
DRV8340_vidMainFunction:
.LFB8:
	.loc 1 202 0
.LVL0:
	.loc 1 210 0
	movh.a	%a12, hi:DRV8340_u8Mode
	.loc 1 208 0
	mov	%d15, 0
	movh.a	%a15, hi:DRV8340_bErrorPinLevel
	.loc 1 210 0
	ld.bu	%d2, [%a12] lo:DRV8340_u8Mode
	.loc 1 208 0
	st.b	[%a15] lo:DRV8340_bErrorPinLevel, %d15
	.loc 1 210 0
	jlt.u	%d2, 13, .L113
.L13:
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	.loc 1 486 0
	jnz	%d15, .L77
.L51:
	.loc 1 495 0
	eq	%d2, %d2, 10
	jnz	%d2, .L114
.L53:
	.loc 1 510 0
	movh.a	%a15, hi:DRV8340_u16CfgChkTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16CfgChkTimer
	mov	%d2, 1001
	jge.u	%d15, %d2, .L70
	.loc 1 512 0
	add	%d15, 1
	st.h	[%a15] lo:DRV8340_u16CfgChkTimer, %d15
.L70:
	.loc 1 515 0
	j	BSW_bGetBswReadySts
.LVL1:
.L113:
	.loc 1 210 0
	movh.a	%a15, hi:.L15
	lea	%a15, [%a15] lo:.L15
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L15:
	.code32
	j	.L14
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L44
	.code32
	j	.L19
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L23
	.code32
	j	.L13
	.code32
	j	.L24
	.code32
	j	.L25
.L81:
	.loc 1 486 0
	mov	%d2, 10
.L77:
	.loc 1 488 0
	add	%d15, -1
	st.h	[%a15] lo:DRV8340_u16FaultTimer, %d15
.L115:
	.loc 1 495 0
	eq	%d2, %d2, 10
	jz	%d2, .L53
.L114:
	movh.a	%a13, hi:DRV8340_u8AsyncComState
	j	.L52
.L22:
	.loc 1 351 0
	mov	%d15, 0
	movh.a	%a15, hi:DRV8340_bIsShutdown
	st.b	[%a15] lo:DRV8340_bIsShutdown, %d15
	.loc 1 352 0
	movh.a	%a15, hi:DRV8340_ku16EnaResetTimeC
	ld.h	%d15, [%a15] lo:DRV8340_ku16EnaResetTimeC
	movh.a	%a15, hi:DRV8340_u16EnaResetThld
	st.h	[%a15] lo:DRV8340_u16EnaResetThld, %d15
.LVL2:
.LBB154:
.LBB155:
	.loc 1 582 0
	mov	%d15, 9
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
	mov	%d2, %d15
.LVL3:
.L27:
.LBE155:
.LBE154:
	.loc 1 486 0
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	jz	%d15, .L53
	.loc 1 488 0
	add	%d15, -1
	st.h	[%a15] lo:DRV8340_u16FaultTimer, %d15
	j	.L115
.LVL4:
.L35:
	.loc 1 254 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInInitPhase
	ld.bu	%d2, [%a15] lo:DRV8340_u8ShortCntInInitPhase
	jlt.u	%d2, %d15, .L80
.LVL5:
.L44:
.LBB156:
.LBB157:
	.loc 1 656 0
	call	DRV83xx_vidStartShortTest
.LVL6:
	.loc 1 657 0
	call	DRV83xx_vidClearFaultStatus
.LVL7:
.LBB158:
.LBB159:
	.loc 1 594 0
	mov	%d15, 4
.LVL8:
.L107:
.LBE159:
.LBE158:
.LBE157:
.LBE156:
.LBB160:
.LBB161:
	movh.a	%a15, hi:DRV8340_u8TgtMode
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d15
.LVL9:
.LBB162:
.LBB163:
	.loc 1 582 0
	mov	%d15, 10
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
.LBE163:
.LBE162:
	.loc 1 596 0
	movh.a	%a13, hi:DRV8340_u8AsyncComState
	mov	%d15, 2
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
.LVL10:
.L108:
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
.L28:
.LBE161:
.LBE160:
	.loc 1 486 0
	jnz	%d15, .L81
.L52:
.LVL11:
.LBB166:
.LBB167:
.LBB168:
	.loc 1 603 0
	ld.bu	%d15, [%a13] lo:DRV8340_u8AsyncComState
	add	%d15, -1
	jlt.u	%d15, 4, .L116
.LVL12:
	.loc 1 645 0
	mov	%d15, 0
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
.LVL13:
.L73:
.LBE168:
.LBE167:
	.loc 1 502 0
	movh.a	%a15, hi:DRV8340_u8TgtMode
.LBB177:
.LBB178:
	.loc 1 582 0
	ld.bu	%d15, [%a15] lo:DRV8340_u8TgtMode
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
.LBE178:
.LBE177:
	.loc 1 503 0
	mov	%d15, -1
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d15
.LVL14:
	.loc 1 505 0
	mov	%d15, 0
	movh.a	%a15, hi:DRV8340_bUserReadReq
	st.b	[%a15] lo:DRV8340_bUserReadReq, %d15
	.loc 1 506 0
	movh.a	%a15, hi:DRV8340_bUserWriteReq
	st.b	[%a15] lo:DRV8340_bUserWriteReq, %d15
	j	.L53
.L16:
.LBE166:
.LBB183:
.LBB184:
	.loc 1 717 0
	movh.a	%a2, hi:DRV83xx_FaultFuncSet
	lea	%a15, [%a2] lo:DRV83xx_FaultFuncSet
	ld.a	%a2, [%a15] 36
	calli	%a2
.LVL15:
	.loc 1 718 0
	ld.a	%a2, [%a15] 64
	.loc 1 717 0
	mov	%d15, %d2
.LVL16:
	.loc 1 718 0
	calli	%a2
.LVL17:
	.loc 1 719 0
	ld.a	%a2, [%a15] 92
	.loc 1 718 0
	mov	%d8, %d2
.LVL18:
	.loc 1 719 0
	calli	%a2
.LVL19:
	.loc 1 721 0
	eq	%d3, %d8, 1
	or.eq	%d3, %d15, 1
	.loc 1 722 0
	mov	%d15, %d3
.LVL20:
	or.eq	%d15, %d2, 1
	jz	%d15, .L30
	.loc 1 724 0
	mov	%d15, 1
	movh.a	%a2, hi:DRV8340_bPhaseShortBat
	st.b	[%a2] lo:DRV8340_bPhaseShortBat, %d15
.L30:
	.loc 1 726 0
	ld.a	%a2, [%a15] 32
	calli	%a2
.LVL21:
	.loc 1 727 0
	ld.a	%a2, [%a15] 60
	.loc 1 726 0
	mov	%d15, %d2
.LVL22:
	.loc 1 727 0
	calli	%a2
.LVL23:
	.loc 1 728 0
	ld.a	%a2, [%a15] 88
	.loc 1 727 0
	mov	%d8, %d2
.LVL24:
	.loc 1 728 0
	calli	%a2
.LVL25:
	.loc 1 730 0
	eq	%d3, %d8, 1
	or.eq	%d3, %d15, 1
	.loc 1 731 0
	mov	%d15, %d3
.LVL26:
	or.eq	%d15, %d2, 1
	jz	%d15, .L31
	.loc 1 733 0
	mov	%d15, 1
	movh.a	%a2, hi:DRV8340_bPhaseShortGnd
	st.b	[%a2] lo:DRV8340_bPhaseShortGnd, %d15
.L31:
	.loc 1 735 0
	ld.a	%a15, [%a15] 28
	calli	%a15
.LVL27:
	.loc 1 736 0
	jeq	%d2, 1, .L117
.LBE184:
.LBE183:
	.loc 1 242 0
	movh.a	%a15, hi:DRV8340_u8TestTimesInInitPhase
	movh.a	%a2, hi:DRV8340_u8MaxTestTimesInInitPhaseC
	ld.bu	%d2, [%a15] lo:DRV8340_u8TestTimesInInitPhase
.LVL28:
	ld.bu	%d15, [%a2] lo:DRV8340_u8MaxTestTimesInInitPhaseC
	jge.u	%d2, %d15, .L118
	.loc 1 244 0
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] lo:DRV8340_u8TestTimesInInitPhase, %d2
.L74:
	.loc 1 252 0
	jeq	%d15, %d2, .L35
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	ld.bu	%d2, [%a12] lo:DRV8340_u8Mode
	.loc 1 486 0
	jz	%d15, .L51
	j	.L77
.LVL29:
.L24:
	.loc 1 445 0
	movh.a	%a15, hi:DRV8340_u8ErrRecoverCnt
	ld.bu	%d15, [%a15] lo:DRV8340_u8ErrRecoverCnt
	add	%d15, 1
	st.b	[%a15] lo:DRV8340_u8ErrRecoverCnt, %d15
	.loc 1 446 0
	movh.a	%a15, hi:DRV8340_bIsLatched
	ld.bu	%d15, [%a15] lo:DRV8340_bIsLatched
	jnz	%d15, .L119
.LVL30:
.LBB186:
.LBB187:
	.loc 1 594 0
	mov	%d15, 3
	j	.L107
.LVL31:
.L25:
.LBE187:
.LBE186:
	.loc 1 462 0
	movh.a	%a15, hi:DRV8340_u16EnaResetTime
	movh.a	%a2, hi:DRV8340_u16EnaResetThld
	ld.hu	%d15, [%a15] lo:DRV8340_u16EnaResetTime
	ld.hu	%d3, [%a2] lo:DRV8340_u16EnaResetThld
	jge.u	%d15, %d3, .L50
	.loc 1 464 0
	add	%d15, 1
	st.h	[%a15] lo:DRV8340_u16EnaResetTime, %d15
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	.loc 1 486 0
	jnz	%d15, .L77
	j	.L53
.L23:
	.loc 1 416 0
	movh.a	%a15, hi:DRV8340_u16ErrPinChkCnt
	movh.a	%a2, hi:DRV8340_ku16ErrPinChkTimC
	ld.hu	%d15, [%a15] lo:DRV8340_u16ErrPinChkCnt
	ld.hu	%d3, [%a2] lo:DRV8340_ku16ErrPinChkTimC
	jlt.u	%d15, %d3, .L120
	.loc 1 422 0
	mov	%d15, 0
	st.h	[%a15] lo:DRV8340_u16ErrPinChkCnt, %d15
	.loc 1 423 0
	movh.a	%a15, hi:DRV8340_u16ErrTotalCnt
	ld.h	%d15, [%a15] lo:DRV8340_u16ErrTotalCnt
.LBB189:
.LBB190:
	.loc 1 589 0
	movh.a	%a13, hi:DRV8340_u8AsyncComState
.LBE190:
.LBE189:
	.loc 1 423 0
	add	%d15, 1
	st.h	[%a15] lo:DRV8340_u16ErrTotalCnt, %d15
.LVL32:
.LBB195:
.LBB193:
	.loc 1 587 0
	mov	%d15, 11
	movh.a	%a15, hi:DRV8340_u8TgtMode
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d15
.LVL33:
.LBB191:
.LBB192:
	.loc 1 582 0
	mov	%d15, 10
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
.LBE192:
.LBE191:
.LBE193:
.LBE195:
	.loc 1 426 0
	movh.a	%a15, hi:DRV8340_bFaultTIsStart
.LBB196:
.LBB194:
	.loc 1 589 0
	mov	%d15, 1
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
.LBE194:
.LBE196:
	.loc 1 426 0
	ld.bu	%d15, [%a15] lo:DRV8340_bFaultTIsStart
	jnz	%d15, .L108
	.loc 1 428 0
	movh.a	%a15, hi:DRV8340_ku16FaultTimerWindowC
	ld.hu	%d15, [%a15] lo:DRV8340_ku16FaultTimerWindowC
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	st.h	[%a15] lo:DRV8340_u16FaultTimer, %d15
	j	.L28
.LVL34:
.L17:
.LBB197:
.LBB198:
	.loc 1 717 0
	movh.a	%a2, hi:DRV83xx_FaultFuncSet
	lea	%a15, [%a2] lo:DRV83xx_FaultFuncSet
	ld.a	%a2, [%a15] 36
	calli	%a2
.LVL35:
	.loc 1 718 0
	ld.a	%a2, [%a15] 64
	.loc 1 717 0
	mov	%d15, %d2
.LVL36:
	.loc 1 718 0
	calli	%a2
.LVL37:
	.loc 1 719 0
	ld.a	%a2, [%a15] 92
	.loc 1 718 0
	mov	%d8, %d2
.LVL38:
	.loc 1 719 0
	calli	%a2
.LVL39:
	.loc 1 721 0
	eq	%d3, %d8, 1
	or.eq	%d3, %d15, 1
	.loc 1 722 0
	mov	%d15, %d3
.LVL40:
	or.eq	%d15, %d2, 1
	jz	%d15, .L40
	.loc 1 724 0
	mov	%d15, 1
	movh.a	%a2, hi:DRV8340_bPhaseShortBat
	st.b	[%a2] lo:DRV8340_bPhaseShortBat, %d15
.L40:
	.loc 1 726 0
	ld.a	%a2, [%a15] 32
	calli	%a2
.LVL41:
	.loc 1 727 0
	ld.a	%a2, [%a15] 60
	.loc 1 726 0
	mov	%d15, %d2
.LVL42:
	.loc 1 727 0
	calli	%a2
.LVL43:
	.loc 1 728 0
	ld.a	%a2, [%a15] 88
	.loc 1 727 0
	mov	%d8, %d2
.LVL44:
	.loc 1 728 0
	calli	%a2
.LVL45:
	.loc 1 730 0
	eq	%d3, %d8, 1
	or.eq	%d3, %d15, 1
	.loc 1 731 0
	mov	%d15, %d3
.LVL46:
	or.eq	%d15, %d2, 1
	jz	%d15, .L41
	.loc 1 733 0
	mov	%d15, 1
	movh.a	%a2, hi:DRV8340_bPhaseShortGnd
	st.b	[%a2] lo:DRV8340_bPhaseShortGnd, %d15
.L41:
	.loc 1 735 0
	ld.a	%a15, [%a15] 28
	calli	%a15
.LVL47:
	.loc 1 736 0
	jeq	%d2, 1, .L121
.LBE198:
.LBE197:
	.loc 1 320 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInRunPhase
	ld.bu	%d15, [%a15] lo:DRV8340_u8ShortCntInRunPhase
	jz	%d15, .L72
	.loc 1 323 0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] lo:DRV8340_u8ShortCntInRunPhase, %d15
.LVL48:
.L43:
	.loc 1 327 0
	jnz	%d15, .L44
.L72:
.LVL49:
.LBB200:
.LBB201:
	.loc 1 582 0
	mov	%d15, 12
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
	mov	%d2, %d15
	j	.L27
.LVL50:
.L20:
.LBE201:
.LBE200:
	.loc 1 392 0
	call	DRV83xx_bCfgIsNormal
.LVL51:
	.loc 1 393 0
	jz	%d2, .L45
.LVL52:
.LBB202:
.LBB203:
	.loc 1 582 0
	mov	%d15, 8
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
	mov	%d2, %d15
.LVL53:
	j	.L27
.LVL54:
.L21:
.LBE203:
.LBE202:
	.loc 1 406 0
	call	DRV83xx_vidRestoreCfgRegs
.LVL55:
.LBB204:
.LBB164:
	.loc 1 594 0
	mov	%d15, 8
	j	.L107
.LVL56:
.L19:
.LBE164:
.LBE204:
	.loc 1 227 0
	movh.a	%a15, hi:DRV8340_bIsInitDone
	ld.bu	%d15, [%a15] lo:DRV8340_bIsInitDone
	jz	%d15, .L29
.LVL57:
.LBB205:
.LBB206:
	.loc 1 587 0
	mov	%d15, 2
	movh.a	%a15, hi:DRV8340_u8TgtMode
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d15
.LVL58:
.LBB207:
.LBB208:
	.loc 1 582 0
	mov	%d15, 10
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
.LBE208:
.LBE207:
	.loc 1 589 0
	movh.a	%a13, hi:DRV8340_u8AsyncComState
	mov	%d15, 1
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	j	.L28
.LVL59:
.L116:
.LBE206:
.LBE205:
.LBB209:
.LBB179:
.LBB173:
	.loc 1 603 0
	movh.a	%a15, hi:.L56
	lea	%a15, [%a15] lo:.L56
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L56:
	.code32
	j	.L55
	.code32
	j	.L57
	.code32
	j	.L58
	.code32
	j	.L59
.LVL60:
.L14:
.LBE173:
.LBE179:
.LBE209:
.LBB210:
.LBB211:
	.loc 1 571 0
	call	DRV83xxHAL_u8SpiInit
.LVL61:
	.loc 1 574 0
	call	DRV83xx_vidControlInit
.LVL62:
	.loc 1 575 0
	call	DRV83xx_vidRegisterInit
.LVL63:
	.loc 1 576 0
	call	DRV83xx_vidDisableGateDrv
.LVL64:
	.loc 1 577 0
	call	DRV83xx_vidWriteRegs
.LVL65:
.LBE211:
.LBE210:
.LBB212:
.LBB213:
	.loc 1 582 0
	mov	%d15, 3
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
	mov	%d2, 3
	j	.L27
.LVL66:
.L120:
.LBE213:
.LBE212:
	.loc 1 418 0
	add	%d15, 1
	st.h	[%a15] lo:DRV8340_u16ErrPinChkCnt, %d15
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	.loc 1 486 0
	jnz	%d15, .L77
	j	.L53
.L29:
.LVL67:
.LBB214:
.LBB215:
	.loc 1 587 0
	mov	%d15, 1
	movh.a	%a15, hi:DRV8340_u8TgtMode
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d15
.LVL68:
.LBB216:
.LBB217:
	.loc 1 582 0
	mov	%d2, 10
.LBE217:
.LBE216:
	.loc 1 589 0
	movh.a	%a13, hi:DRV8340_u8AsyncComState
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
.LBB219:
.LBB218:
	.loc 1 582 0
	st.b	[%a12] lo:DRV8340_u8Mode, %d2
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	j	.L28
.LVL69:
.L45:
.LBE218:
.LBE219:
.LBE215:
.LBE214:
.LBB220:
.LBB221:
	mov	%d15, 6
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
	mov	%d2, 6
.LVL70:
	j	.L27
.LVL71:
.L117:
.LBE221:
.LBE220:
.LBB222:
.LBB185:
	.loc 1 738 0
	movh.a	%a15, hi:DRV8340_bPhaseShort
	st.b	[%a15] lo:DRV8340_bPhaseShort, %d2
.LBE185:
.LBE222:
	.loc 1 242 0
	movh.a	%a2, hi:DRV8340_u8MaxTestTimesInInitPhaseC
	movh.a	%a15, hi:DRV8340_u8TestTimesInInitPhase
	ld.bu	%d2, [%a15] lo:DRV8340_u8TestTimesInInitPhase
.LVL72:
	ld.bu	%d15, [%a2] lo:DRV8340_u8MaxTestTimesInInitPhaseC
	jge.u	%d2, %d15, .L122
	.loc 1 244 0
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] lo:DRV8340_u8TestTimesInInitPhase, %d2
	.loc 1 249 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInInitPhase
	ld.bu	%d3, [%a15] lo:DRV8340_u8ShortCntInInitPhase
	add	%d3, 1
	st.b	[%a15] lo:DRV8340_u8ShortCntInInitPhase, %d3
	j	.L74
.LVL73:
.L121:
.LBB223:
.LBB199:
	.loc 1 738 0
	movh.a	%a15, hi:DRV8340_bPhaseShort
	st.b	[%a15] lo:DRV8340_bPhaseShort, %d2
.LBE199:
.LBE223:
	.loc 1 312 0
	movh.a	%a2, hi:DRV8340_u8MaxTestTimesInRunPhaseC
	movh.a	%a15, hi:DRV8340_u8ShortCntInRunPhase
	ld.bu	%d15, [%a15] lo:DRV8340_u8ShortCntInRunPhase
	ld.bu	%d2, [%a2] lo:DRV8340_u8MaxTestTimesInRunPhaseC
.LVL74:
	jge.u	%d15, %d2, .L43
	.loc 1 315 0
	add	%d15, 1
	and	%d15, 255
	st.b	[%a15] lo:DRV8340_u8ShortCntInRunPhase, %d15
	j	.L43
.LVL75:
.L119:
	.loc 1 448 0
	mov	%d15, 1
	movh.a	%a15, hi:DRV8340_bIsShutdown
	st.b	[%a15] lo:DRV8340_bIsShutdown, %d15
	.loc 1 449 0
	call	DRV83xx_vidDisableGateDrv
.LVL76:
.LBB224:
.LBB188:
	.loc 1 594 0
	mov	%d15, 3
	j	.L107
.LVL77:
.L58:
.LBE188:
.LBE224:
.LBB225:
.LBB180:
.LBB174:
	.loc 1 619 0
	call	DRV83xxHAL_bIsComEnd
.LVL78:
	.loc 1 620 0
	jeq	%d2, 1, .L123
.LVL79:
.L61:
.LBE174:
.LBE180:
	.loc 1 500 0
	jnz	%d2, .L73
	j	.L53
.LVL80:
.L59:
.LBB181:
.LBB175:
	.loc 1 632 0
	call	DRV83xxHAL_bIsComEnd
.LVL81:
	.loc 1 633 0
	jne	%d2, 1, .L61
	.loc 1 635 0
	mov	%d15, 6
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
	j	.L73
.LVL82:
.L57:
	.loc 1 614 0
	mov	%d15, 4
	.loc 1 613 0
	call	DRV83xx_vidWriteRegs
.LVL83:
	.loc 1 614 0
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
	j	.L53
.L55:
	.loc 1 608 0
	mov	%d15, 3
	.loc 1 607 0
	call	DRV83xx_vidReadRegs
.LVL84:
	.loc 1 608 0
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
	j	.L53
.LVL85:
.L123:
	.loc 1 622 0
	call	DRV83xx_vidCacheRestoreFromReg
.LVL86:
	.loc 1 623 0
	movh.a	%a4, hi:DRV8340_au8FaultRegsVal
	lea	%a4, [%a4] lo:DRV8340_au8FaultRegsVal
	call	DVR83xx_vidGetFaultRegsVal
.LVL87:
.LBB169:
.LBB170:
	.loc 1 677 0
	movh.a	%a2, hi:DRV83xx_FaultFuncSet
	lea	%a15, [%a2] lo:DRV83xx_FaultFuncSet
	ld.a	%a2, [%a2] lo:DRV83xx_FaultFuncSet
	calli	%a2
.LVL88:
	.loc 1 678 0
	jeq	%d2, 1, .L124
.LVL89:
.L63:
.LBE170:
.LBE169:
	.loc 1 626 0
	mov	%d15, 5
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
	j	.L73
.LVL90:
.L118:
.LBE175:
.LBE181:
.LBE225:
	.loc 1 279 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInInitPhase
	ld.bu	%d2, [%a15] lo:DRV8340_u8ShortCntInInitPhase
	jz	%d2, .L80
	.loc 1 282 0
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] lo:DRV8340_u8ShortCntInInitPhase, %d2
.L37:
	.loc 1 286 0
	movh.a	%a15, hi:DRV8340_u8MaxShortCntInInitPhase
	ld.bu	%d15, [%a15] lo:DRV8340_u8MaxShortCntInInitPhase
	jge.u	%d15, %d2, .L38
	.loc 1 288 0
	st.b	[%a15] lo:DRV8340_u8MaxShortCntInInitPhase, %d2
.L38:
	.loc 1 291 0
	jnz	%d2, .L44
.L80:
.LBB226:
.LBB227:
	.loc 1 594 0
	mov	%d15, 8
	movh.a	%a15, hi:DRV8340_u8TgtMode
.LBE227:
.LBE226:
	.loc 1 293 0
	call	DRV83xx_vidRestoreCfgRegs
.LVL91:
	.loc 1 294 0
	call	DRV83xx_vidClearFaultStatus
.LVL92:
.LBB232:
.LBB230:
	.loc 1 594 0
	st.b	[%a15] lo:DRV8340_u8TgtMode, %d15
.LVL93:
.LBB228:
.LBB229:
	.loc 1 582 0
	mov	%d15, 10
	st.b	[%a12] lo:DRV8340_u8Mode, %d15
.LBE229:
.LBE228:
	.loc 1 596 0
	movh.a	%a13, hi:DRV8340_u8AsyncComState
	mov	%d15, 2
.LBE230:
.LBE232:
	.loc 1 296 0
	movh.a	%a15, hi:DRV8340_bIsInitDone
.LBB233:
.LBB231:
	.loc 1 596 0
	st.b	[%a13] lo:DRV8340_u8AsyncComState, %d15
.LBE231:
.LBE233:
	.loc 1 296 0
	mov	%d15, 1
	st.b	[%a15] lo:DRV8340_bIsInitDone, %d15
	movh.a	%a15, hi:DRV8340_u16FaultTimer
	ld.hu	%d15, [%a15] lo:DRV8340_u16FaultTimer
	j	.L28
.LVL94:
.L50:
	.loc 1 470 0
	mov	%d15, 0
	st.h	[%a15] lo:DRV8340_u16EnaResetTime, %d15
	.loc 1 471 0
	call	DRV83xx_vidRestoreCfgRegs
.LVL95:
.LBB234:
.LBB165:
	.loc 1 594 0
	mov	%d15, 8
.LBE165:
.LBE234:
	.loc 1 472 0
	call	DRV83xx_vidClearFaultStatus
.LVL96:
	j	.L107
.LVL97:
.L122:
	.loc 1 271 0
	movh.a	%a15, hi:DRV8340_u8ShortCntInInitPhase
	ld.bu	%d2, [%a15] lo:DRV8340_u8ShortCntInInitPhase
	jge.u	%d2, %d15, .L37
	.loc 1 274 0
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] lo:DRV8340_u8ShortCntInInitPhase, %d2
	j	.L37
.LVL98:
.L124:
.LBB235:
.LBB182:
.LBB176:
.LBB172:
.LBB171:
	.loc 1 680 0
	ld.a	%a2, [%a15] 16
	calli	%a2
.LVL99:
	.loc 1 681 0
	jeq	%d2, 1, .L125
.L64:
	.loc 1 686 0
	ld.a	%a2, [%a15] 24
	calli	%a2
.LVL100:
	.loc 1 687 0
	jeq	%d2, 1, .L126
.L65:
	.loc 1 692 0
	ld.a	%a2, [%a15] 4
	calli	%a2
.LVL101:
	.loc 1 693 0
	jeq	%d2, 1, .L127
.L66:
	.loc 1 698 0
	ld.a	%a2, [%a15] 12
	calli	%a2
.LVL102:
	.loc 1 699 0
	jne	%d2, 1, .L63
	.loc 1 701 0
	ld.a	%a15, [%a15] 8
	calli	%a15
.LVL103:
	.loc 1 702 0
	jne	%d2, 1, .L63
	.loc 1 704 0
	movh.a	%a15, hi:DRV8340_bDrvUnderVoltage
	st.b	[%a15] lo:DRV8340_bDrvUnderVoltage, %d2
	j	.L63
.L125:
	.loc 1 683 0
	movh.a	%a2, hi:DRV8340_bIsLatched
	st.b	[%a2] lo:DRV8340_bIsLatched, %d2
	.loc 1 684 0
	movh.a	%a2, hi:DRV8340_bDrvOverCurrent
	st.b	[%a2] lo:DRV8340_bDrvOverCurrent, %d2
	j	.L64
.L127:
	.loc 1 695 0
	movh.a	%a2, hi:DRV8340_bIsLatched
	st.b	[%a2] lo:DRV8340_bIsLatched, %d2
	.loc 1 696 0
	movh.a	%a2, hi:DRV8340_bDrvGateDrvFault
	st.b	[%a2] lo:DRV8340_bDrvGateDrvFault, %d2
	j	.L66
.L126:
	.loc 1 689 0
	movh.a	%a2, hi:DRV8340_bIsLatched
	st.b	[%a2] lo:DRV8340_bIsLatched, %d2
	.loc 1 690 0
	movh.a	%a2, hi:DRV8340_bDrvOverTemp
	st.b	[%a2] lo:DRV8340_bDrvOverTemp, %d2
	j	.L65
.LBE171:
.LBE172:
.LBE176:
.LBE182:
.LBE235:
.LFE8:
	.size	DRV8340_vidMainFunction, .-DRV8340_vidMainFunction
	.align 1
	.global	DRV8340_bIsWorkModeNormal
	.type	DRV8340_bIsWorkModeNormal, @function
DRV8340_bIsWorkModeNormal:
.LFB9:
	.loc 1 542 0
.LVL104:
	.loc 1 545 0
	movh.a	%a15, hi:DRV8340_bIsShutdown
	ld.bu	%d2, [%a15] lo:DRV8340_bIsShutdown
	.loc 1 555 0
	eq	%d2, %d2, 0
	ret
.LFE9:
	.size	DRV8340_bIsWorkModeNormal, .-DRV8340_bIsWorkModeNormal
.section .bss.a4.DRV8340_au8FaultRegsVal,"aw",@nobits
	.align 2
	.type	DRV8340_au8FaultRegsVal, @object
	.size	DRV8340_au8FaultRegsVal, 4
DRV8340_au8FaultRegsVal:
	.zero	4
.section .bss.a1.DRV8340_bUserWriteReq,"aw",@nobits
	.type	DRV8340_bUserWriteReq, @object
	.size	DRV8340_bUserWriteReq, 1
DRV8340_bUserWriteReq:
	.zero	1
.section .bss.a1.DRV8340_bUserReadReq,"aw",@nobits
	.type	DRV8340_bUserReadReq, @object
	.size	DRV8340_bUserReadReq, 1
DRV8340_bUserReadReq:
	.zero	1
.section .bss.a1.DRV8340_bIsInitDone,"aw",@nobits
	.type	DRV8340_bIsInitDone, @object
	.size	DRV8340_bIsInitDone, 1
DRV8340_bIsInitDone:
	.zero	1
.section .bss.a1.DRV8340_bIsLatched,"aw",@nobits
	.type	DRV8340_bIsLatched, @object
	.size	DRV8340_bIsLatched, 1
DRV8340_bIsLatched:
	.zero	1
.section .bss.a1.DRV8340_bIsShutdown,"aw",@nobits
	.type	DRV8340_bIsShutdown, @object
	.size	DRV8340_bIsShutdown, 1
DRV8340_bIsShutdown:
	.zero	1
.section .bss.a1.DRV8340_bPhaseShortGnd,"aw",@nobits
	.type	DRV8340_bPhaseShortGnd, @object
	.size	DRV8340_bPhaseShortGnd, 1
DRV8340_bPhaseShortGnd:
	.zero	1
.section .bss.a1.DRV8340_bPhaseShortBat,"aw",@nobits
	.type	DRV8340_bPhaseShortBat, @object
	.size	DRV8340_bPhaseShortBat, 1
DRV8340_bPhaseShortBat:
	.zero	1
.section .bss.a1.DRV8340_bPhaseShort,"aw",@nobits
	.type	DRV8340_bPhaseShort, @object
	.size	DRV8340_bPhaseShort, 1
DRV8340_bPhaseShort:
	.zero	1
.section .bss.a1.DRV8340_bDrvOverTemp,"aw",@nobits
	.type	DRV8340_bDrvOverTemp, @object
	.size	DRV8340_bDrvOverTemp, 1
DRV8340_bDrvOverTemp:
	.zero	1
.section .bss.a1.DRV8340_bDrvGateDrvFault,"aw",@nobits
	.type	DRV8340_bDrvGateDrvFault, @object
	.size	DRV8340_bDrvGateDrvFault, 1
DRV8340_bDrvGateDrvFault:
	.zero	1
.section .bss.a1.DRV8340_bDrvOverCurrent,"aw",@nobits
	.type	DRV8340_bDrvOverCurrent, @object
	.size	DRV8340_bDrvOverCurrent, 1
DRV8340_bDrvOverCurrent:
	.zero	1
.section .bss.a1.DRV8340_bDrvOverVoltage,"aw",@nobits
	.type	DRV8340_bDrvOverVoltage, @object
	.size	DRV8340_bDrvOverVoltage, 1
DRV8340_bDrvOverVoltage:
	.zero	1
.section .bss.a1.DRV8340_bDrvUnderVoltage,"aw",@nobits
	.type	DRV8340_bDrvUnderVoltage, @object
	.size	DRV8340_bDrvUnderVoltage, 1
DRV8340_bDrvUnderVoltage:
	.zero	1
.section .bss.a1.DRV8340_bFaultTIsStart,"aw",@nobits
	.type	DRV8340_bFaultTIsStart, @object
	.size	DRV8340_bFaultTIsStart, 1
DRV8340_bFaultTIsStart:
	.zero	1
.section .bss.a2.DRV8340_u16FaultTimer,"aw",@nobits
	.align 1
	.type	DRV8340_u16FaultTimer, @object
	.size	DRV8340_u16FaultTimer, 2
DRV8340_u16FaultTimer:
	.zero	2
.section .bss.a2.DRV8340_u16CfgChkTimer,"aw",@nobits
	.align 1
	.type	DRV8340_u16CfgChkTimer, @object
	.size	DRV8340_u16CfgChkTimer, 2
DRV8340_u16CfgChkTimer:
	.zero	2
.section .bss.a2.DRV8340_u16ErrPinChkCnt,"aw",@nobits
	.align 1
	.type	DRV8340_u16ErrPinChkCnt, @object
	.size	DRV8340_u16ErrPinChkCnt, 2
DRV8340_u16ErrPinChkCnt:
	.zero	2
.section .bss.a2.DRV8340_u16EnaResetThld,"aw",@nobits
	.align 1
	.type	DRV8340_u16EnaResetThld, @object
	.size	DRV8340_u16EnaResetThld, 2
DRV8340_u16EnaResetThld:
	.zero	2
.section .bss.a2.DRV8340_u16EnaResetTime,"aw",@nobits
	.align 1
	.type	DRV8340_u16EnaResetTime, @object
	.size	DRV8340_u16EnaResetTime, 2
DRV8340_u16EnaResetTime:
	.zero	2
.section .bss.a2.DRV8340_u16ErrTotalCnt,"aw",@nobits
	.align 1
	.type	DRV8340_u16ErrTotalCnt, @object
	.size	DRV8340_u16ErrTotalCnt, 2
DRV8340_u16ErrTotalCnt:
	.zero	2
.section .bss.a1.DRV8340_u8AsyncComState,"aw",@nobits
	.type	DRV8340_u8AsyncComState, @object
	.size	DRV8340_u8AsyncComState, 1
DRV8340_u8AsyncComState:
	.zero	1
.section .bss.a1.DRV8340_u8MaxShortCntInInitPhase,"aw",@nobits
	.type	DRV8340_u8MaxShortCntInInitPhase, @object
	.size	DRV8340_u8MaxShortCntInInitPhase, 1
DRV8340_u8MaxShortCntInInitPhase:
	.zero	1
.section .bss.a1.DRV8340_u8TestTimesInInitPhase,"aw",@nobits
	.type	DRV8340_u8TestTimesInInitPhase, @object
	.size	DRV8340_u8TestTimesInInitPhase, 1
DRV8340_u8TestTimesInInitPhase:
	.zero	1
.section .bss.a1.DRV8340_u8TestTimesInRunPhase,"aw",@nobits
	.type	DRV8340_u8TestTimesInRunPhase, @object
	.size	DRV8340_u8TestTimesInRunPhase, 1
DRV8340_u8TestTimesInRunPhase:
	.zero	1
.section .bss.a1.DRV8340_u8ShortCntInInitPhase,"aw",@nobits
	.type	DRV8340_u8ShortCntInInitPhase, @object
	.size	DRV8340_u8ShortCntInInitPhase, 1
DRV8340_u8ShortCntInInitPhase:
	.zero	1
.section .bss.a1.DRV8340_u8ShortCntInRunPhase,"aw",@nobits
	.type	DRV8340_u8ShortCntInRunPhase, @object
	.size	DRV8340_u8ShortCntInRunPhase, 1
DRV8340_u8ShortCntInRunPhase:
	.zero	1
.section .bss.a1.DRV8340_u8ErrRecoverCnt,"aw",@nobits
	.type	DRV8340_u8ErrRecoverCnt, @object
	.size	DRV8340_u8ErrRecoverCnt, 1
DRV8340_u8ErrRecoverCnt:
	.zero	1
.section .bss.a1.DRV8340_u8TgtMode,"aw",@nobits
	.type	DRV8340_u8TgtMode, @object
	.size	DRV8340_u8TgtMode, 1
DRV8340_u8TgtMode:
	.zero	1
.section .bss.a1.DRV8340_u8Mode,"aw",@nobits
	.type	DRV8340_u8Mode, @object
	.size	DRV8340_u8Mode, 1
DRV8340_u8Mode:
	.zero	1
.section .bss.a1.DRV8340_bErrorPinLevel,"aw",@nobits
	.type	DRV8340_bErrorPinLevel, @object
	.size	DRV8340_bErrorPinLevel, 1
DRV8340_bErrorPinLevel:
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h"
	.file 4 "bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.h"
	.file 5 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x19dd
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PreDriver\\Drv8340\\DRV8340.c"
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
	.uaword	0x1c9
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
	.uaword	0x1f5
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
	.uaword	0x1c9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"FaultIndicateFuncPtr"
	.byte	0x3
	.uahalf	0x151
	.uaword	0x2ad
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b3
	.uleb128 0x6
	.byte	0x1
	.uaword	0x260
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x70
	.byte	0x3
	.uahalf	0x153
	.uaword	0x70b
	.uleb128 0x8
	.string	"bGetAllFaultStatus"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"bGetGateDriverStatus"
	.byte	0x3
	.uahalf	0x155
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"bGetChargePumpUVStatus"
	.byte	0x3
	.uahalf	0x156
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"bGetUVLockoutStatus"
	.byte	0x3
	.uahalf	0x157
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"bGetOverCurStatus"
	.byte	0x3
	.uahalf	0x158
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"bGetOverTempWarningStatus"
	.byte	0x3
	.uahalf	0x159
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"bGetOverTempShutdownStatus"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"bGetOpenLoadOrShortStatus"
	.byte	0x3
	.uahalf	0x15b
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"bGetPhaseAShortGndStatus"
	.byte	0x3
	.uahalf	0x15c
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"bGetPhaseAShortBatStatus"
	.byte	0x3
	.uahalf	0x15d
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"bGetPhaseAOpenLoadStatus"
	.byte	0x3
	.uahalf	0x15e
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"bGetPhaseAGateDriverLowSideStatus"
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"bGetPhaseAGateDriverHighSideStatus"
	.byte	0x3
	.uahalf	0x160
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"bGetPhaseAVdsOverCurLowSideStatus"
	.byte	0x3
	.uahalf	0x161
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"bGetPhaseAVdsOverCurHighSideStatus"
	.byte	0x3
	.uahalf	0x162
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"bGetPhaseBShortGndStatus"
	.byte	0x3
	.uahalf	0x163
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"bGetPhaseBShortBatStatus"
	.byte	0x3
	.uahalf	0x164
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"bGetPhaseBOpenLoadStatus"
	.byte	0x3
	.uahalf	0x165
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"bGetPhaseBGateDriverLowSideStatus"
	.byte	0x3
	.uahalf	0x166
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"bGetPhaseBGateDriverHighSideStatus"
	.byte	0x3
	.uahalf	0x167
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"bGetPhaseBVdsOverCurLowSideStatus"
	.byte	0x3
	.uahalf	0x168
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.string	"bGetPhaseBVdsOverCurHighSideStatus"
	.byte	0x3
	.uahalf	0x169
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"bGetPhaseCShortGndStatus"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"bGetPhaseCShortBatStatus"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"bGetPhaseCOpenLoadStatus"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"bGetPhaseCGateDriverLowSideStatus"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"bGetPhaseCGateDriverHighSideStatus"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"bGetPhaseCVdsOverCurLowSideStatus"
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x290
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x170
	.uaword	0x2b9
	.uleb128 0xa
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x6
	.byte	0x2b
	.uaword	0x78b
	.uleb128 0xb
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0xb
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0xb
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0xb
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0xb
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0xb
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x1
	.byte	0x1e
	.uaword	0x948
	.uleb128 0xb
	.string	"DRV8340_MODE_INIT"
	.sleb128 0
	.uleb128 0xb
	.string	"DRV8340_MODE_SHORT_DET_IN_INIT_PHASE"
	.sleb128 1
	.uleb128 0xb
	.string	"DRV8340_MODE_SHORT_DET_IN_RUN_PHASE"
	.sleb128 2
	.uleb128 0xb
	.string	"DRV8340_MODE_START_SHORT_TEST"
	.sleb128 3
	.uleb128 0xb
	.string	"DRV8340_MODE_READ_TEST_RESULT"
	.sleb128 4
	.uleb128 0xb
	.string	"DRV8340_MODE_CFG_CHECK"
	.sleb128 5
	.uleb128 0xb
	.string	"DRV8340_MODE_RECFG"
	.sleb128 6
	.uleb128 0xb
	.string	"DRV8340_WAIT_PWM_READY"
	.sleb128 7
	.uleb128 0xb
	.string	"DRV8340_MODE_NORMAL"
	.sleb128 8
	.uleb128 0xb
	.string	"DRV8340_MODE_ERR_FOUND"
	.sleb128 9
	.uleb128 0xb
	.string	"DRV8340_MODE_COM_ONGOING"
	.sleb128 10
	.uleb128 0xb
	.string	"DRV8340_MODE_ERR_COUNT"
	.sleb128 11
	.uleb128 0xb
	.string	"DRV8340_MODE_ERR_TRY_CLEAR"
	.sleb128 12
	.uleb128 0xb
	.string	"DRV8340_MODE_ERR_RECOVER"
	.sleb128 13
	.uleb128 0xb
	.string	"DRV8340_MODE_FAULT_STT"
	.sleb128 14
	.uleb128 0xb
	.string	"DRV8340_MODE_INVALID"
	.sleb128 255
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.uaword	0xa07
	.uleb128 0xb
	.string	"DRV8340_COM_IDLE"
	.sleb128 0
	.uleb128 0xb
	.string	"DRV8340_COM_READ_START"
	.sleb128 1
	.uleb128 0xb
	.string	"DRV8340_COM_WRITE_START"
	.sleb128 2
	.uleb128 0xb
	.string	"DRV8340_COM_EXTRACT_READ_DATA"
	.sleb128 3
	.uleb128 0xb
	.string	"DRV8340_COM_EXTRACT_WRITE_DATA"
	.sleb128 4
	.uleb128 0xb
	.string	"DRV8340_COM_READ_END"
	.sleb128 5
	.uleb128 0xb
	.string	"DRV8340_COM_WRITE_END"
	.sleb128 6
	.byte	0
	.uleb128 0xd
	.string	"DRV8340_vidJumpToState"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.byte	0x3
	.uaword	0xa39
	.uleb128 0xe
	.string	"u8State"
	.byte	0x1
	.uahalf	0x244
	.uaword	0x1bc
	.byte	0
	.uleb128 0xd
	.string	"DRV8340_vidTrigWriteReq"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.byte	0x3
	.uaword	0xa68
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x250
	.uaword	0x1bc
	.byte	0
	.uleb128 0x10
	.string	"DRV8340_vidEnableGateDrivers"
	.byte	0x1
	.uahalf	0x295
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"DRV8340_vidTrigReadReq"
	.byte	0x1
	.uahalf	0x249
	.byte	0x1
	.byte	0x3
	.uaword	0xab9
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x249
	.uaword	0x1bc
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetErrorPinLevel"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetDrvUnderVolt"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetDrvOverVolt"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetDrvOverCurr"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetDrvOverTemp"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetPhsShortHigh"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"DRV8340_bGetPhsShortLow"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"DRV8340_vidModuleInit"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.string	"DRV8340_vidInit"
	.byte	0x1
	.uahalf	0x236
	.byte	0x1
	.byte	0x1
	.uaword	0xc52
	.uleb128 0x13
	.string	"bQspiIsRunning"
	.byte	0x1
	.uahalf	0x238
	.uaword	0xc52
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x260
	.uleb128 0x10
	.string	"DRV8340_vidTrigShortTest"
	.byte	0x1
	.uahalf	0x28d
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.string	"DRV8340_bGetShortState"
	.byte	0x1
	.uahalf	0x2c6
	.byte	0x1
	.uaword	0x260
	.byte	0x3
	.uaword	0xcd8
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0x260
	.uleb128 0x17
	.string	"bShortA"
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0x260
	.uleb128 0x17
	.string	"bShortB"
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x260
	.uleb128 0x17
	.string	"bShortC"
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x260
	.byte	0
	.uleb128 0x15
	.string	"DRV8340_bAsyncComMainfunction"
	.byte	0x1
	.uahalf	0x257
	.byte	0x1
	.uaword	0x260
	.byte	0x3
	.uaword	0xd11
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x259
	.uaword	0x260
	.byte	0
	.uleb128 0xd
	.string	"DRV8340_vidReadFault"
	.byte	0x1
	.uahalf	0x2a1
	.byte	0x1
	.byte	0x1
	.uaword	0xd3d
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x260
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"DRV8340_vidMainFunction"
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1255
	.uleb128 0x19
	.string	"u16LocDRV8340ErrPin"
	.byte	0x1
	.byte	0xcb
	.uaword	0x1e7
	.byte	0
	.uleb128 0x19
	.string	"bBswReadySts"
	.byte	0x1
	.byte	0xcc
	.uaword	0x260
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.byte	0xcd
	.uaword	0x260
	.uaword	.LLST0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x203
	.uaword	0x20b
	.byte	0x1
	.uaword	0xdbe
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.uaword	0xa07
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.uahalf	0x164
	.uaword	0xddc
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1d
	.uaword	0xc57
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.uahalf	0x14d
	.uaword	0xe21
	.uleb128 0x1d
	.uaword	0xa39
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x292
	.uaword	0xe0e
	.uleb128 0x1e
	.uaword	0xa5b
	.uaword	.LLST2
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL6
	.uaword	0x1826
	.uleb128 0x1f
	.uaword	.LVL7
	.uaword	0x1846
	.byte	0
	.uleb128 0x20
	.uaword	0xa39
	.uaword	.LBB160
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0xe59
	.uleb128 0x1e
	.uaword	0xa5b
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0xa07
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.uahalf	0x253
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0xf48
	.uleb128 0x23
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x260
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.uaword	0xcd8
	.uaword	.LBB167
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0xf2d
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x25
	.uaword	0xd04
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	0xd11
	.uaword	.LBB169
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x270
	.uaword	0xeeb
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x25
	.uaword	0xd30
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	.LVL88
	.byte	0x3
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL99
	.byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL100
	.byte	0x3
	.byte	0x8f
	.sleb128 24
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL101
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL102
	.byte	0x3
	.byte	0x8f
	.sleb128 12
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL103
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL78
	.uaword	0x1868
	.uleb128 0x1f
	.uaword	.LVL81
	.uaword	0x1868
	.uleb128 0x1f
	.uaword	.LVL83
	.uaword	0x1887
	.uleb128 0x1f
	.uaword	.LVL84
	.uaword	0x18a2
	.uleb128 0x1f
	.uaword	.LVL86
	.uaword	0x18bc
	.uleb128 0x27
	.uaword	.LVL87
	.uaword	0x18e1
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_au8FaultRegsVal
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0xa07
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x1
	.uahalf	0x1f6
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0xc76
	.uaword	.LBB183
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xf0
	.uaword	0xfc7
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x25
	.uaword	0xc9b
	.uaword	.LLST8
	.uleb128 0x25
	.uaword	0xca7
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0xcb7
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	0xcc7
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	.LVL15
	.byte	0x3
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL17
	.byte	0x4
	.byte	0x8f
	.sleb128 64
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL19
	.byte	0x4
	.byte	0x8f
	.sleb128 92
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL21
	.byte	0x3
	.byte	0x8f
	.sleb128 32
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL23
	.byte	0x3
	.byte	0x8f
	.sleb128 60
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL25
	.byte	0x4
	.byte	0x8f
	.sleb128 88
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL27
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xa39
	.uaword	.LBB186
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0xfe5
	.uleb128 0x1e
	.uaword	0xa5b
	.uaword	.LLST12
	.byte	0
	.uleb128 0x20
	.uaword	0xa8b
	.uaword	.LBB189
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0x101d
	.uleb128 0x1e
	.uaword	0xaac
	.uaword	.LLST13
	.uleb128 0x21
	.uaword	0xa07
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.uahalf	0x24c
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xc76
	.uaword	.LBB197
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x134
	.uaword	0x109d
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x25
	.uaword	0xc9b
	.uaword	.LLST15
	.uleb128 0x25
	.uaword	0xca7
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0xcb7
	.uaword	.LLST17
	.uleb128 0x25
	.uaword	0xcc7
	.uaword	.LLST18
	.uleb128 0x26
	.uaword	.LVL35
	.byte	0x3
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL37
	.byte	0x4
	.byte	0x8f
	.sleb128 64
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL39
	.byte	0x4
	.byte	0x8f
	.sleb128 92
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL41
	.byte	0x3
	.byte	0x8f
	.sleb128 32
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL43
	.byte	0x3
	.byte	0x8f
	.sleb128 60
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL45
	.byte	0x4
	.byte	0x8f
	.sleb128 88
	.byte	0x6
	.uleb128 0x26
	.uaword	.LVL47
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xa07
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.uahalf	0x149
	.uaword	0x10bb
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST19
	.byte	0
	.uleb128 0x1d
	.uaword	0xa07
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x10d9
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST20
	.byte	0
	.uleb128 0x2a
	.uaword	0xa8b
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.byte	0xe5
	.uaword	0x1110
	.uleb128 0x1e
	.uaword	0xaac
	.uaword	.LLST21
	.uleb128 0x21
	.uaword	0xa07
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.uahalf	0x24c
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xc1f
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.byte	0xd6
	.uaword	0x1161
	.uleb128 0x2b
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x2c
	.uaword	0xc39
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL61
	.uaword	0x1917
	.uleb128 0x1f
	.uaword	.LVL62
	.uaword	0x1932
	.uleb128 0x1f
	.uaword	.LVL63
	.uaword	0x194f
	.uleb128 0x1f
	.uaword	.LVL64
	.uaword	0x196d
	.uleb128 0x1f
	.uaword	.LVL65
	.uaword	0x1887
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xa07
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x1
	.byte	0xd7
	.uaword	0x117e
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST23
	.byte	0
	.uleb128 0x2a
	.uaword	0xa8b
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.byte	0xe9
	.uaword	0x11b5
	.uleb128 0x1e
	.uaword	0xaac
	.uaword	.LLST24
	.uleb128 0x2d
	.uaword	0xa07
	.uaword	.LBB216
	.uaword	.Ldebug_ranges0+0xf8
	.byte	0x1
	.uahalf	0x24c
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xa07
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x11d3
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST26
	.byte	0
	.uleb128 0x20
	.uaword	0xa39
	.uaword	.LBB226
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.uahalf	0x127
	.uaword	0x120b
	.uleb128 0x1e
	.uaword	0xa5b
	.uaword	.LLST27
	.uleb128 0x21
	.uaword	0xa07
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x1
	.uahalf	0x253
	.uleb128 0x1e
	.uaword	0xa28
	.uaword	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x198d
	.uleb128 0x1f
	.uaword	.LVL51
	.uaword	0x19a1
	.uleb128 0x1f
	.uaword	.LVL55
	.uaword	0x19c0
	.uleb128 0x1f
	.uaword	.LVL76
	.uaword	0x196d
	.uleb128 0x1f
	.uaword	.LVL91
	.uaword	0x19c0
	.uleb128 0x1f
	.uaword	.LVL92
	.uaword	0x1846
	.uleb128 0x1f
	.uaword	.LVL95
	.uaword	0x19c0
	.uleb128 0x1f
	.uaword	.LVL96
	.uaword	0x1846
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"DRV8340_bIsWorkModeNormal"
	.byte	0x1
	.uahalf	0x21d
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12ab
	.uleb128 0x30
	.string	"bLocWorkNomal"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x260
	.byte	0xa
	.byte	0x3
	.uaword	DRV8340_bIsShutdown
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.byte	0
	.uleb128 0x31
	.string	"DRV8340_bErrorPinLevel"
	.byte	0x1
	.byte	0x4d
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bErrorPinLevel
	.uleb128 0x31
	.string	"DRV8340_u8Mode"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8Mode
	.uleb128 0x31
	.string	"DRV8340_u8TgtMode"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8TgtMode
	.uleb128 0x31
	.string	"DRV8340_u8ErrRecoverCnt"
	.byte	0x1
	.byte	0x50
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8ErrRecoverCnt
	.uleb128 0x31
	.string	"DRV8340_u8ShortCntInRunPhase"
	.byte	0x1
	.byte	0x51
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8ShortCntInRunPhase
	.uleb128 0x31
	.string	"DRV8340_u8ShortCntInInitPhase"
	.byte	0x1
	.byte	0x52
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8ShortCntInInitPhase
	.uleb128 0x31
	.string	"DRV8340_u8TestTimesInRunPhase"
	.byte	0x1
	.byte	0x53
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8TestTimesInRunPhase
	.uleb128 0x31
	.string	"DRV8340_u8TestTimesInInitPhase"
	.byte	0x1
	.byte	0x54
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8TestTimesInInitPhase
	.uleb128 0x31
	.string	"DRV8340_u8MaxShortCntInInitPhase"
	.byte	0x1
	.byte	0x55
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8MaxShortCntInInitPhase
	.uleb128 0x31
	.string	"DRV8340_u8AsyncComState"
	.byte	0x1
	.byte	0x56
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u8AsyncComState
	.uleb128 0x31
	.string	"DRV8340_u16ErrTotalCnt"
	.byte	0x1
	.byte	0x57
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u16ErrTotalCnt
	.uleb128 0x31
	.string	"DRV8340_u16EnaResetTime"
	.byte	0x1
	.byte	0x58
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u16EnaResetTime
	.uleb128 0x31
	.string	"DRV8340_u16EnaResetThld"
	.byte	0x1
	.byte	0x59
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u16EnaResetThld
	.uleb128 0x31
	.string	"DRV8340_u16ErrPinChkCnt"
	.byte	0x1
	.byte	0x5a
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u16ErrPinChkCnt
	.uleb128 0x31
	.string	"DRV8340_u16CfgChkTimer"
	.byte	0x1
	.byte	0x5b
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u16CfgChkTimer
	.uleb128 0x31
	.string	"DRV8340_u16FaultTimer"
	.byte	0x1
	.byte	0x5c
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_u16FaultTimer
	.uleb128 0x31
	.string	"DRV8340_bFaultTIsStart"
	.byte	0x1
	.byte	0x5e
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bFaultTIsStart
	.uleb128 0x31
	.string	"DRV8340_bDrvUnderVoltage"
	.byte	0x1
	.byte	0x5f
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bDrvUnderVoltage
	.uleb128 0x31
	.string	"DRV8340_bDrvOverVoltage"
	.byte	0x1
	.byte	0x60
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bDrvOverVoltage
	.uleb128 0x31
	.string	"DRV8340_bDrvOverCurrent"
	.byte	0x1
	.byte	0x61
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bDrvOverCurrent
	.uleb128 0x31
	.string	"DRV8340_bDrvGateDrvFault"
	.byte	0x1
	.byte	0x62
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bDrvGateDrvFault
	.uleb128 0x31
	.string	"DRV8340_bDrvOverTemp"
	.byte	0x1
	.byte	0x63
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bDrvOverTemp
	.uleb128 0x31
	.string	"DRV8340_bPhaseShort"
	.byte	0x1
	.byte	0x64
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bPhaseShort
	.uleb128 0x31
	.string	"DRV8340_bPhaseShortBat"
	.byte	0x1
	.byte	0x65
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bPhaseShortBat
	.uleb128 0x31
	.string	"DRV8340_bPhaseShortGnd"
	.byte	0x1
	.byte	0x66
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bPhaseShortGnd
	.uleb128 0x31
	.string	"DRV8340_bIsShutdown"
	.byte	0x1
	.byte	0x67
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bIsShutdown
	.uleb128 0x31
	.string	"DRV8340_bIsLatched"
	.byte	0x1
	.byte	0x68
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bIsLatched
	.uleb128 0x31
	.string	"DRV8340_bIsInitDone"
	.byte	0x1
	.byte	0x69
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bIsInitDone
	.uleb128 0x31
	.string	"DRV8340_bUserReadReq"
	.byte	0x1
	.byte	0x6c
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bUserReadReq
	.uleb128 0x31
	.string	"DRV8340_bUserWriteReq"
	.byte	0x1
	.byte	0x6d
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_bUserWriteReq
	.uleb128 0x32
	.uaword	0x1bc
	.uaword	0x1704
	.uleb128 0x33
	.uaword	0x1704
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x31
	.string	"DRV8340_au8FaultRegsVal"
	.byte	0x1
	.byte	0x6f
	.uaword	0x16f4
	.byte	0x5
	.byte	0x3
	.uaword	DRV8340_au8FaultRegsVal
	.uleb128 0x34
	.string	"DRV83xx_FaultFuncSet"
	.byte	0x4
	.byte	0x32
	.uaword	0x1753
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x70b
	.uleb128 0x34
	.string	"DRV8340_ku16EnaResetTimeC"
	.byte	0x5
	.byte	0x1b
	.uaword	0x177b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x1e7
	.uleb128 0x34
	.string	"DRV8340_ku16ErrPinChkTimC"
	.byte	0x5
	.byte	0x1c
	.uaword	0x177b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"DRV8340_ku16FaultTimerWindowC"
	.byte	0x5
	.byte	0x1d
	.uaword	0x177b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"DRV8340_u8MaxTestTimesInRunPhaseC"
	.byte	0x5
	.byte	0x1e
	.uaword	0x17f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x1bc
	.uleb128 0x34
	.string	"DRV8340_u8MaxTestTimesInInitPhaseC"
	.byte	0x5
	.byte	0x1f
	.uaword	0x17f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidStartShortTest"
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidClearFaultStatus"
	.byte	0x4
	.byte	0x1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"DRV83xxHAL_bIsComEnd"
	.byte	0x4
	.byte	0x29
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidWriteRegs"
	.byte	0x4
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidReadRegs"
	.byte	0x4
	.byte	0x19
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidCacheRestoreFromReg"
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"DVR83xx_vidGetFaultRegsVal"
	.byte	0x4
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.uaword	0x190c
	.uleb128 0x38
	.uaword	0x190c
	.byte	0
	.uleb128 0x14
	.uaword	0x1911
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1bc
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xxHAL_u8SpiInit"
	.byte	0x4
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidControlInit"
	.byte	0x4
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidRegisterInit"
	.byte	0x4
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidDisableGateDrv"
	.byte	0x4
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x203
	.uaword	0x20b
	.byte	0x1
	.uaword	0x19a1
	.uleb128 0x1c
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"DRV83xx_bCfgIsNormal"
	.byte	0x4
	.byte	0x18
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"DRV83xx_vidRestoreCfgRegs"
	.byte	0x4
	.byte	0x17
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL51-.text
	.uaword	.LVL53-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69-.text
	.uaword	.LVL70-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL96-.text
	.uaword	.LVL97-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9-.text
	.uaword	.LVL10-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11-.text
	.uaword	.LVL12-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL78-.text
	.uaword	.LVL80-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82-.text
	.uaword	.LVL85-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85-.text
	.uaword	.LVL86-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL98-.text
	.uaword	.LVL99-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL99-.text
	.uaword	.LVL100-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL100-.text
	.uaword	.LVL101-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101-.text
	.uaword	.LVL102-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102-.text
	.uaword	.LVL103-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL103-.text
	.uaword	.LFE8-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13-.text
	.uaword	.LVL14-.text
	.uahalf	0x5
	.byte	0x3
	.uaword	DRV8340_u8TgtMode
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL16-.text
	.uaword	.LVL17-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17-1-.text
	.uaword	.LVL20-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.text
	.uaword	.LVL23-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23-1-.text
	.uaword	.LVL26-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL18-.text
	.uaword	.LVL19-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19-1-.text
	.uaword	.LVL24-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL24-.text
	.uaword	.LVL25-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25-1-.text
	.uaword	.LVL29-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL71-.text
	.uaword	.LVL73-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL90-.text
	.uaword	.LVL94-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL97-.text
	.uaword	.LVL98-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19-.text
	.uaword	.LVL21-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25-.text
	.uaword	.LVL27-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL32-.text
	.uaword	.LVL34-.text
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL47-.text
	.uaword	.LVL48-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73-.text
	.uaword	.LVL74-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL36-.text
	.uaword	.LVL37-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37-1-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42-.text
	.uaword	.LVL43-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43-1-.text
	.uaword	.LVL46-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL38-.text
	.uaword	.LVL39-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39-1-.text
	.uaword	.LVL44-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL44-.text
	.uaword	.LVL45-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45-1-.text
	.uaword	.LVL50-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL73-.text
	.uaword	.LVL75-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL39-.text
	.uaword	.LVL41-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45-.text
	.uaword	.LVL47-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL52-.text
	.uaword	.LVL54-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL57-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL65-.text
	.uaword	.LVL66-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL67-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL69-.text
	.uaword	.LVL71-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL92-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3a
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
	.uaword	.LBB160-.Ltext0
	.uaword	.LBE160-.Ltext0
	.uaword	.LBB204-.Ltext0
	.uaword	.LBE204-.Ltext0
	.uaword	.LBB234-.Ltext0
	.uaword	.LBE234-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB166-.Ltext0
	.uaword	.LBE166-.Ltext0
	.uaword	.LBB209-.Ltext0
	.uaword	.LBE209-.Ltext0
	.uaword	.LBB225-.Ltext0
	.uaword	.LBE225-.Ltext0
	.uaword	.LBB235-.Ltext0
	.uaword	.LBE235-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB167-.Ltext0
	.uaword	.LBE167-.Ltext0
	.uaword	.LBB179-.Ltext0
	.uaword	.LBE179-.Ltext0
	.uaword	.LBB180-.Ltext0
	.uaword	.LBE180-.Ltext0
	.uaword	.LBB181-.Ltext0
	.uaword	.LBE181-.Ltext0
	.uaword	.LBB182-.Ltext0
	.uaword	.LBE182-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB169-.Ltext0
	.uaword	.LBE169-.Ltext0
	.uaword	.LBB172-.Ltext0
	.uaword	.LBE172-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB183-.Ltext0
	.uaword	.LBE183-.Ltext0
	.uaword	.LBB222-.Ltext0
	.uaword	.LBE222-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB186-.Ltext0
	.uaword	.LBE186-.Ltext0
	.uaword	.LBB224-.Ltext0
	.uaword	.LBE224-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB189-.Ltext0
	.uaword	.LBE189-.Ltext0
	.uaword	.LBB195-.Ltext0
	.uaword	.LBE195-.Ltext0
	.uaword	.LBB196-.Ltext0
	.uaword	.LBE196-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB197-.Ltext0
	.uaword	.LBE197-.Ltext0
	.uaword	.LBB223-.Ltext0
	.uaword	.LBE223-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB216-.Ltext0
	.uaword	.LBE216-.Ltext0
	.uaword	.LBB219-.Ltext0
	.uaword	.LBE219-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB226-.Ltext0
	.uaword	.LBE226-.Ltext0
	.uaword	.LBB232-.Ltext0
	.uaword	.LBE232-.Ltext0
	.uaword	.LBB233-.Ltext0
	.uaword	.LBE233-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"bComIsEnd"
.LASF2:
	.string	"bTempRet"
.LASF1:
	.string	"u8TgtState"
.LASF4:
	.string	"BSW_bGetBswReadySts"
.LASF0:
	.string	"DRV83xx_FaultIndicateSet"
	.extern	DVR83xx_vidGetFaultRegsVal,STT_FUNC,0
	.extern	DRV83xx_vidCacheRestoreFromReg,STT_FUNC,0
	.extern	DRV83xx_vidReadRegs,STT_FUNC,0
	.extern	DRV83xxHAL_bIsComEnd,STT_FUNC,0
	.extern	DRV8340_u8MaxTestTimesInRunPhaseC,STT_OBJECT,1
	.extern	DRV83xx_vidWriteRegs,STT_FUNC,0
	.extern	DRV83xx_vidDisableGateDrv,STT_FUNC,0
	.extern	DRV83xx_vidRegisterInit,STT_FUNC,0
	.extern	DRV83xx_vidControlInit,STT_FUNC,0
	.extern	DRV83xxHAL_u8SpiInit,STT_FUNC,0
	.extern	DRV83xx_vidRestoreCfgRegs,STT_FUNC,0
	.extern	DRV83xx_bCfgIsNormal,STT_FUNC,0
	.extern	DRV8340_ku16FaultTimerWindowC,STT_OBJECT,2
	.extern	DRV8340_ku16ErrPinChkTimC,STT_OBJECT,2
	.extern	DRV8340_u8MaxTestTimesInInitPhaseC,STT_OBJECT,1
	.extern	DRV83xx_FaultFuncSet,STT_OBJECT,112
	.extern	DRV83xx_vidClearFaultStatus,STT_FUNC,0
	.extern	DRV83xx_vidStartShortTest,STT_FUNC,0
	.extern	DRV8340_ku16EnaResetTimeC,STT_OBJECT,2
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
