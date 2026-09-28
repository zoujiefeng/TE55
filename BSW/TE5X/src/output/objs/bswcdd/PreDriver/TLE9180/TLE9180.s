	.file	"TLE9180.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	TLE9180_vidInit
	.type	TLE9180_vidInit, @function
TLE9180_vidInit:
.LFB4:
	.file 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
	.loc 1 151 0
	.loc 1 152 0
	mov	%d15, 0
	movh.a	%a15, hi:TLE9180_u8ReCfgCnt
	st.b	[%a15] lo:TLE9180_u8ReCfgCnt, %d15
	.loc 1 153 0
	movh.a	%a15, hi:TLE9180_u8RdRegTimCnt
	st.b	[%a15] lo:TLE9180_u8RdRegTimCnt, %d15
	.loc 1 154 0
	movh.a	%a15, hi:TLE9180_u8ReadRegAddr
	st.b	[%a15] lo:TLE9180_u8ReadRegAddr, %d15
	.loc 1 155 0
	movh.a	%a15, hi:TLE9180_u8WriteRegAddr
	st.b	[%a15] lo:TLE9180_u8WriteRegAddr, %d15
	.loc 1 156 0
	movh.a	%a15, hi:TLE9180_u8ErrRecoverCnt
	st.b	[%a15] lo:TLE9180_u8ErrRecoverCnt, %d15
	.loc 1 157 0
	movh.a	%a15, hi:TLE9180_u8InitFailedCnt
	st.b	[%a15] lo:TLE9180_u8InitFailedCnt, %d15
	.loc 1 158 0
	mov	%d15, 0
	movh.a	%a15, hi:TLE9180_u16ErrPinChkCnt
	st.h	[%a15] lo:TLE9180_u16ErrPinChkCnt, %d15
	.loc 1 159 0
	movh.a	%a15, hi:TLE9180_u16EnaResetTime
	st.h	[%a15] lo:TLE9180_u16EnaResetTime, %d15
	.loc 1 160 0
	movh.a	%a15, hi:TLE9180_bTestReadReg
	st.b	[%a15] lo:TLE9180_bTestReadReg, %d15
	.loc 1 161 0
	movh.a	%a15, hi:TLE9180_bTestWriteReg
	st.b	[%a15] lo:TLE9180_bTestWriteReg, %d15
	.loc 1 162 0
	movh.a	%a15, hi:TLE9180_bPhaseShortLow
	st.b	[%a15] lo:TLE9180_bPhaseShortLow, %d15
	.loc 1 163 0
	movh.a	%a15, hi:TLE9180_bPhaseShortHigh
	st.b	[%a15] lo:TLE9180_bPhaseShortHigh, %d15
	.loc 1 164 0
	movh.a	%a15, hi:TLE9180_bDrvOverCurrent
	st.b	[%a15] lo:TLE9180_bDrvOverCurrent, %d15
	.loc 1 165 0
	movh.a	%a15, hi:TLE9180_bDrvOverVoltage
	st.b	[%a15] lo:TLE9180_bDrvOverVoltage, %d15
	.loc 1 166 0
	movh.a	%a15, hi:TLE9180_bDrvUnderVoltage
	st.b	[%a15] lo:TLE9180_bDrvUnderVoltage, %d15
	.loc 1 167 0
	movh.a	%a15, hi:TLE9180_bDrvOverTemp
	st.b	[%a15] lo:TLE9180_bDrvOverTemp, %d15
	.loc 1 168 0
	movh.a	%a15, hi:TLE9180_bReadErrInfoFlg
	st.b	[%a15] lo:TLE9180_bReadErrInfoFlg, %d15
	.loc 1 169 0
	movh.a	%a15, hi:TLE9180_bInitFailFlg
	st.b	[%a15] lo:TLE9180_bInitFailFlg, %d15
	.loc 1 170 0
	movh.a	%a15, hi:TLE9180_bErrorPinLevel
	st.b	[%a15] lo:TLE9180_bErrorPinLevel, %d15
	.loc 1 171 0
	movh.a	%a15, hi:TLE9180_bPhsOverVolt
	st.b	[%a15] lo:TLE9180_bPhsOverVolt, %d15
	.loc 1 172 0
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	st.b	[%a15] lo:TLE9180_bIsInIdleMode, %d15
	.loc 1 173 0
	movh.a	%a15, hi:TLE9180_bIsInCfgLockMode
	.loc 1 151 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 173 0
	st.b	[%a15] lo:TLE9180_bIsInCfgLockMode, %d15
.LBB275:
.LBB276:
	.file 2 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
	.loc 2 89 0
	mov	%d4, 2
.LBE276:
.LBE275:
	.loc 1 175 0
	movh.a	%a15, hi:TLE9180_u8SelfTestStep
	.loc 1 174 0
	movh.a	%a12, hi:TLE9180_u8Mode
	.loc 1 175 0
	st.b	[%a15] lo:TLE9180_u8SelfTestStep, %d15
	.loc 1 174 0
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LBB278:
.LBB277:
	.loc 2 89 0
	call	Qspi_CddInit
.LVL0:
.LBE277:
.LBE278:
	.loc 1 179 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteEnaPin
.LVL1:
	.loc 1 180 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteInhPin
.LVL2:
	.loc 1 181 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteSoffPin
.LVL3:
.LBB279:
.LBB280:
	.loc 1 674 0
	movh.a	%a15, hi:TLE9180_au8CfgRegister
	mov	%d15, -70
	lea	%a2, [%a15] lo:TLE9180_au8CfgRegister
	st.b	[%a15] lo:TLE9180_au8CfgRegister, %d15
	.loc 1 677 0
	mov	%d15, 28
	st.b	[%a2] 3, %d15
	.loc 1 678 0
	mov	%d15, 86
	st.b	[%a2] 4, %d15
	.loc 1 686 0
	mov	%d15, 96
	st.b	[%a2] 12, %d15
	.loc 1 687 0
	mov	%d15, 14
	st.b	[%a2] 13, %d15
	.loc 1 688 0
	st.b	[%a2] 14, %d15
	.loc 1 691 0
	st.b	[%a2] 17, %d15
	.loc 1 692 0
	mov	%d15, 2
	st.b	[%a2] 18, %d15
	.loc 1 696 0
	mov	%d15, 65
	st.b	[%a2] 1, %d15
	.loc 1 697 0
	mov	%d15, 1
	st.b	[%a2] 2, %d15
	.loc 1 698 0
	mov	%d15, 56
	st.b	[%a2] 5, %d15
	.loc 1 699 0
	mov	%d15, 52
	st.b	[%a2] 6, %d15
	.loc 1 700 0
	mov	%d15, -102
	st.b	[%a2] 7, %d15
	.loc 1 701 0
	mov	%d15, -78
	st.b	[%a2] 8, %d15
	.loc 1 702 0
	mov	%d15, 114
	st.b	[%a2] 9, %d15
	.loc 1 703 0
	mov	%d15, 42
	st.b	[%a2] 10, %d15
	.loc 1 704 0
	mov	%d15, 74
	st.b	[%a2] 11, %d15
	.loc 1 705 0
	mov	%d15, -65
	st.b	[%a2] 15, %d15
	.loc 1 706 0
	mov	%d15, -1
	st.b	[%a2] 16, %d15
	.loc 1 707 0
	mov	%d15, 3
	st.b	[%a2] 19, %d15
.LVL4:
	lea	%a15, 18
.LBB281:
.LBB282:
	.loc 1 1086 0
	mov	%d15, 0
.LBE282:
.LBE281:
	.loc 1 707 0
	add.a	%a2, 1
.LVL5:
.L2:
.LBB285:
.LBB284:
.LBB283:
	.loc 1 1092 0
	ld.bu	%d2, [%a2+]1
	xor	%d15, %d2
	.loc 1 1098 0
	extr	%d4, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d3, %d15, 77
	ge	%d2, %d4, 0
	sel	%d2, %d2, %d15, %d3
	.loc 1 1098 0
	extr	%d5, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d4, %d2, 77
	ge	%d15, %d5, 0
	sel	%d15, %d15, %d2, %d4
	.loc 1 1098 0
	extr	%d5, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d4, %d15, 77
	ge	%d3, %d5, 0
	sel	%d3, %d3, %d15, %d4
	.loc 1 1098 0
	extr	%d5, %d3, 0, 8
	.loc 1 1101 0
	sh	%d3, 1
	and	%d3, %d3, 255
	.loc 1 1106 0
	xor	%d4, %d3, 77
	ge	%d2, %d5, 0
	sel	%d2, %d2, %d3, %d4
	.loc 1 1098 0
	extr	%d5, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d4, %d2, 77
	ge	%d15, %d5, 0
	sel	%d15, %d15, %d2, %d4
	.loc 1 1098 0
	extr	%d5, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d4, %d15, 77
	ge	%d3, %d5, 0
	sel	%d3, %d3, %d15, %d4
	.loc 1 1098 0
	extr	%d5, %d3, 0, 8
	.loc 1 1101 0
	sh	%d3, 1
	and	%d3, %d3, 255
	.loc 1 1106 0
	xor	%d4, %d3, 77
	ge	%d2, %d5, 0
	sel	%d2, %d2, %d3, %d4
	.loc 1 1098 0
	extr	%d4, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d3, %d2, 77
	ge	%d15, %d4, 0
	sel	%d15, %d15, %d2, %d3
.LVL6:
	.loc 1 1113 0
	loop	%a15, .L2
.LBE283:
.LBE284:
.LBE285:
.LBB286:
.LBB287:
	.loc 1 1052 0
	movh	%d2, 129
.LBE287:
.LBE286:
	.loc 1 712 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB289:
.LBB288:
	.loc 1 1052 0
	addi	%d2, %d2, 16647
.LBE288:
.LBE289:
	.loc 1 712 0
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d2
.LBB290:
.LBB291:
	.loc 1 1052 0
	movh	%d2, 130
.LBE291:
.LBE290:
	.loc 1 710 0
	st.b	[%a2] -20, %d15
.LVL7:
.LBB293:
.LBB292:
	.loc 1 1052 0
	addi	%d2, %d2, 257
.LBE292:
.LBE293:
	.loc 1 712 0
	lea	%a2, [%a15] lo:TLE9180_au32SpiWriteFrame
.LVL8:
	.loc 1 713 0
	st.w	[%a2] 4, %d2
.LVL9:
.LBB294:
.LBB295:
	.loc 1 1052 0
	movh	%d2, 133
	addi	%d2, %d2, 14342
.LBE295:
.LBE294:
	.loc 1 714 0
	st.w	[%a2] 8, %d2
.LVL10:
.LBB296:
.LBB297:
	.loc 1 1052 0
	movh	%d2, 134
	addi	%d2, %d2, 13316
.LBE297:
.LBE296:
	.loc 1 715 0
	st.w	[%a2] 12, %d2
.LVL11:
.LBB298:
.LBB299:
	.loc 1 1052 0
	movh	%d2, 136
	addi	%d2, %d2, -26106
.LBE299:
.LBE298:
	.loc 1 716 0
	st.w	[%a2] 16, %d2
.LVL12:
.LBB300:
.LBB301:
	.loc 1 1052 0
	movh	%d2, 137
	addi	%d2, %d2, -19965
.LBE301:
.LBE300:
	.loc 1 717 0
	st.w	[%a2] 20, %d2
.LVL13:
.LBB302:
.LBB303:
	.loc 1 1052 0
	movh	%d2, 137
	addi	%d2, %d2, 29188
.LBE303:
.LBE302:
	.loc 1 718 0
	st.w	[%a2] 24, %d2
.LVL14:
.LBB304:
.LBB305:
	.loc 1 1052 0
	movh	%d2, 138
	addi	%d2, %d2, 10755
.LBE305:
.LBE304:
	.loc 1 719 0
	st.w	[%a2] 28, %d2
.LVL15:
.LBB306:
.LBB307:
	.loc 1 1052 0
	insert	%d2, %d2, 10, 13, 4
.LBE307:
.LBE306:
.LBB308:
.LBB309:
	.loc 1 1047 0
	sh	%d15, %d15, 8
.LVL16:
.LBE309:
.LBE308:
	.loc 1 720 0
	st.w	[%a2] 32, %d2
.LVL17:
.LBB317:
.LBB318:
	.loc 1 1052 0
	movh	%d2, 144
	addi	%d2, %d2, -16635
.LBE318:
.LBE317:
	.loc 1 721 0
	st.w	[%a2] 36, %d2
.LVL18:
.LBB319:
.LBB320:
	.loc 1 1052 0
	movh	%d2, 145
	addi	%d2, %d2, -249
.LBE320:
.LBE319:
	.loc 1 722 0
	st.w	[%a2] 40, %d2
.LVL19:
.LBB321:
.LBB322:
	.loc 1 1052 0
	movh	%d2, 147
	addi	%d2, %d2, 772
.LBE322:
.LBE321:
	.loc 1 723 0
	st.w	[%a2] 44, %d2
.LVL20:
.LBB323:
.LBB324:
	.loc 1 1052 0
	movh	%d2, 160
	add	%d2, 1
.LBE324:
.LBE323:
	.loc 1 725 0
	st.w	[%a2] 48, %d2
.LVL21:
.LBB325:
.LBB326:
	.loc 1 1052 0
	movh	%d2, 161
	add	%d2, 5
.LBE326:
.LBE325:
	.loc 1 726 0
	st.w	[%a2] 52, %d2
.LVL22:
.LBB327:
.LBB328:
	.loc 1 1052 0
	movh	%d2, 165
	addi	%d2, %d2, 32257
.LBE328:
.LBE327:
	.loc 1 727 0
	st.w	[%a2] 56, %d2
.LVL23:
.LBB329:
.LBB330:
	.loc 1 1052 0
	movh	%d2, 166
	addi	%d2, %d2, 32262
.LBE330:
.LBE329:
	.loc 1 728 0
	st.w	[%a2] 60, %d2
.LVL24:
.LBB331:
.LBB332:
	.loc 1 1052 0
	movh	%d2, 167
	addi	%d2, %d2, 32258
.LBE332:
.LBE331:
	.loc 1 729 0
	st.w	[%a2] 64, %d2
.LVL25:
.LBB333:
.LBB334:
	.loc 1 1052 0
	movh	%d2, 168
	addi	%d2, %d2, 32260
.LBE334:
.LBE333:
	.loc 1 730 0
	st.w	[%a2] 68, %d2
.LVL26:
.LBB335:
.LBB336:
	.loc 1 1052 0
	movh	%d2, 169
	addi	%d2, %d2, 32256
.LBE336:
.LBE335:
	.loc 1 731 0
	st.w	[%a2] 72, %d2
.LVL27:
.LBB337:
.LBB338:
	.loc 1 1052 0
	movh	%d2, 170
	addi	%d2, %d2, 32263
.LBE338:
.LBE337:
.LBB339:
.LBB314:
	.loc 1 1047 0
	insert	%d15, %d15, 15, 23, 1
.LBE314:
.LBE339:
	.loc 1 732 0
	st.w	[%a2] 76, %d2
.LVL28:
.LBB340:
.LBB315:
.LBB310:
.LBB311:
	.loc 1 1064 0
	extr.u	%d2, %d15, 8, 8
.LVL29:
.LBE311:
.LBE310:
.LBE315:
.LBE340:
	.loc 1 735 0
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
.LBB341:
.LBB316:
.LBB313:
.LBB312:
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
.LVL30:
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d2, %d5, 96
	and	%d6, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d5, 255
	seln	%d2, %d3, %d2, %d6
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
.LVL31:
	.loc 1 1064 0
	seln	%d3, %d4, %d3, %d6
.LVL32:
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d2, %d5, 96
	and	%d6, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d5, 255
	seln	%d2, %d3, %d2, %d6
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d2, %d5, 96
	and	%d6, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d5, 255
	seln	%d2, %d3, %d2, %d6
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d4, %d3, 1
	xor	%d2, %d4, 96
	and	%d5, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d4, 255
	seln	%d2, %d3, %d2, %d5
	.loc 1 1076 0
	sh	%d3, %d2, 1
	xor	%d4, %d3, 96
	and	%d4, %d4, 254
	.loc 1 1078 0
	and	%d3, %d3, 255
.LVL33:
	sh	%d2, -7
	.loc 1 1081 0
	seln	%d2, %d2, %d3, %d4
.LBE312:
.LBE313:
	.loc 1 1052 0
	sh	%d2, -5
	or	%d15, %d2
.LVL34:
.LBE316:
.LBE341:
	.loc 1 733 0
	st.w	[%a2] 80, %d15
	movh	%d2, hi:TLE9180_au32ICInitSpiFrame
	.loc 1 735 0
	mov	%d15, 21
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL35:
	addi	%d2, %d2, lo:TLE9180_au32ICInitSpiFrame
	mov	%d15, 0
	lea	%a15, 20
.LVL36:
.L3:
	.loc 1 739 0
	sh	%d3, %d15, 2
	mov.a	%a3, %d3
	addsc.a	%a4, %a3, %d2, 0
	add.a	%a3, %a2
	ld.w	%d3, [%a3]0
	add	%d15, 1
.LVL37:
	st.w	[%a4]0, %d3
	.loc 1 737 0
	loop	%a15, .L3
.LVL38:
.LBE280:
.LBE279:
.LBB342:
.LBB343:
.LBB344:
.LBB345:
	.loc 1 1026 0
	movh	%d15, 64
.LVL39:
.LBE345:
.LBE344:
	.loc 1 745 0
	movh.a	%a3, hi:TLE9180_au32StateRegs
.LBB347:
.LBB346:
	.loc 1 1026 0
	add	%d15, 6
.LBE346:
.LBE347:
	.loc 1 745 0
	st.w	[%a3] lo:TLE9180_au32StateRegs, %d15
.LVL40:
.LBB348:
.LBB349:
	.loc 1 1026 0
	movh	%d15, 65
.LBE349:
.LBE348:
	.loc 1 745 0
	lea	%a15, [%a3] lo:TLE9180_au32StateRegs
.LBB351:
.LBB350:
	.loc 1 1026 0
	add	%d15, 2
.LBE350:
.LBE351:
	.loc 1 746 0
	st.w	[%a15] 4, %d15
.LVL41:
.LBB352:
.LBB353:
	.loc 1 1026 0
	movh	%d15, 66
	add	%d15, 5
.LBE353:
.LBE352:
	.loc 1 747 0
	st.w	[%a15] 8, %d15
.LVL42:
.LBB354:
.LBB355:
	.loc 1 1026 0
	movh	%d15, 67
	add	%d15, 1
.LBE355:
.LBE354:
	.loc 1 748 0
	st.w	[%a15] 12, %d15
.LVL43:
.LBB356:
.LBB357:
	.loc 1 1026 0
	movh	%d15, 68
.LBE357:
.LBE356:
	.loc 1 749 0
	st.w	[%a15] 16, %d15
.LVL44:
.LBB358:
.LBB359:
	.loc 1 1026 0
	movh	%d15, 69
	add	%d15, 4
.LBE359:
.LBE358:
	.loc 1 750 0
	st.w	[%a15] 20, %d15
.LVL45:
.LBB360:
.LBB361:
	.loc 1 1026 0
	movh	%d15, 70
	add	%d15, 3
.LBE361:
.LBE360:
	.loc 1 751 0
	st.w	[%a15] 24, %d15
.LVL46:
.LBB362:
.LBB363:
	.loc 1 1026 0
	movh	%d15, 71
	add	%d15, 7
.LBE363:
.LBE362:
	.loc 1 752 0
	st.w	[%a15] 28, %d15
.LVL47:
.LBB364:
.LBB365:
	.loc 1 1026 0
	movh	%d15, 72
	add	%d15, 1
.LBE365:
.LBE364:
	.loc 1 753 0
	st.w	[%a15] 32, %d15
.LVL48:
.LBB366:
.LBB367:
	.loc 1 1026 0
	movh	%d15, 73
	add	%d15, 5
.LBE367:
.LBE366:
	.loc 1 754 0
	st.w	[%a15] 36, %d15
.LVL49:
.LBB368:
.LBB369:
	.loc 1 1026 0
	movh	%d15, 74
	add	%d15, 2
.LBE369:
.LBE368:
	.loc 1 755 0
	st.w	[%a15] 40, %d15
.LVL50:
.LBB370:
.LBB371:
	.loc 1 1026 0
	movh	%d15, 75
	add	%d15, 6
.LBE371:
.LBE370:
	.loc 1 756 0
	st.w	[%a15] 44, %d15
.LVL51:
.LBB372:
.LBB373:
	.loc 1 1026 0
	movh	%d15, 76
	add	%d15, 7
.LBE373:
.LBE372:
	.loc 1 757 0
	st.w	[%a15] 48, %d15
.LVL52:
.LBB374:
.LBB375:
	.loc 1 1026 0
	movh	%d15, 77
	add	%d15, 3
.LBE375:
.LBE374:
	.loc 1 758 0
	st.w	[%a15] 52, %d15
.LVL53:
.LBB376:
.LBB377:
	.loc 1 1026 0
	insert	%d15, %d15, %d15, 1, 20
.LBE377:
.LBE376:
	.loc 1 759 0
	st.w	[%a15] 56, %d15
.LVL54:
.LBB378:
.LBB379:
	.loc 1 1026 0
	movh	%d15, 91
	add	%d15, 3
.LBE379:
.LBE378:
	.loc 1 760 0
	st.w	[%a15] 60, %d15
.LVL55:
.LBB380:
.LBB381:
	.loc 1 1026 0
	movh	%d15, 92
	add	%d15, 2
.LBE381:
.LBE380:
	.loc 1 761 0
	st.w	[%a15] 64, %d15
.LVL56:
.LBB382:
.LBB383:
	.loc 1 1026 0
	movh	%d15, 93
	add	%d15, 6
.LBE383:
.LBE382:
	.loc 1 762 0
	st.w	[%a15] 68, %d15
.LVL57:
.LBB384:
.LBB385:
	.loc 1 1026 0
	movh	%d15, 94
	add	%d15, 1
.LBE385:
.LBE384:
	.loc 1 763 0
	st.w	[%a15] 72, %d15
.LVL58:
.LBB386:
.LBB387:
	.loc 1 1026 0
	movh	%d15, 95
	add	%d15, 5
.LBE387:
.LBE386:
	.loc 1 764 0
	st.w	[%a15] 76, %d15
.LVL59:
.LBB388:
.LBB389:
	.loc 1 1026 0
	movh	%d15, 50
	add	%d15, 3
.LBE389:
.LBE388:
	.loc 1 766 0
	st.w	[%a15] 80, %d15
.LVL60:
.LBE343:
.LBE342:
.LBB390:
.LBB391:
	.loc 1 999 0
	movh.a	%a15, hi:TLE9180_xTsParam
	lea	%a15, [%a15] lo:TLE9180_xTsParam
	mov	%d15, 0
	st.w	[%a15] 4, %d15
	.loc 1 1000 0
	mov	%d15, 21
	st.w	[%a15] 8, %d15
	.loc 1 1002 0
	movh	%d15, hi:TLE9180_au32SpiReadFrame
	.loc 1 1001 0
	st.a	[%a15] 12, %a2
	.loc 1 1002 0
	addi	%d15, %d15, lo:TLE9180_au32SpiReadFrame
	st.w	[%a15] 16, %d15
.LVL61:
.LBE391:
.LBE390:
.LBB392:
.LBB393:
	.loc 1 992 0
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	movh.a	%a15, hi:TLE9180_u8TgtMode
	st.b	[%a15] lo:TLE9180_u8TgtMode, %d15
	.loc 1 993 0
	mov	%d15, 1
	movh.a	%a15, hi:TLE9180_u8ComState
	st.b	[%a15] lo:TLE9180_u8ComState, %d15
.LVL62:
.LBB394:
.LBB395:
	.loc 1 534 0
	mov	%d15, 13
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LVL63:
	ret
.LBE395:
.LBE394:
.LBE393:
.LBE392:
.LFE4:
	.size	TLE9180_vidInit, .-TLE9180_vidInit
	.align 1
	.global	TLE9180_vidMainFunction
	.type	TLE9180_vidMainFunction, @function
TLE9180_vidMainFunction:
.LFB5:
	.loc 1 191 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 196 0
	call	TLE9180_bHalSysIsReady
.LVL64:
	.loc 1 197 0
	call	TLE9180_bHalICIsNormal
.LVL65:
	.loc 1 199 0
	movh.a	%a12, hi:TLE9180_u8Mode
	.loc 1 197 0
	movh.a	%a15, hi:TLE9180_bErrorPinLevel
	.loc 1 199 0
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	.loc 1 197 0
	st.b	[%a15] lo:TLE9180_bErrorPinLevel, %d2
	.loc 1 199 0
	jlt.u	%d15, 13, .L104
.L8:
	.loc 1 426 0
	ne	%d2, %d15, 13
	jz	%d2, .L105
.L62:
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	.loc 1 441 0
	jeq	%d15, 2, .L7
.L70:
	.loc 1 454 0
	ld.bu	%d15, [%a15] lo:TLE9180_bIsInIdleMode
	jeq	%d15, 1, .L72
	.loc 1 455 0
	movh.a	%a15, hi:TLE9180_bIsInCfgLockMode
	ld.bu	%d15, [%a15] lo:TLE9180_bIsInCfgLockMode
	jeq	%d15, 1, .L72
.L7:
	ret
.L104:
	.loc 1 199 0
	movh.a	%a2, hi:.L10
	lea	%a2, [%a2] lo:.L10
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L10:
	.code32
	j	.L9
	.code32
	j	.L11
	.code32
	j	.L12
	.code32
	j	.L13
	.code32
	j	.L14
	.code32
	j	.L15
	.code32
	j	.L16
	.code32
	j	.L75
	.code32
	j	.L18
	.code32
	j	.L19
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L22
.L72:
	.loc 1 457 0
	movh.a	%a15, hi:TLE9180_u8ReCfgCnt
	movh.a	%a2, hi:TLE9180_ku8MaxReCfgTimeC
	ld.bu	%d2, [%a15] lo:TLE9180_u8ReCfgCnt
	ld.bu	%d15, [%a2] lo:TLE9180_ku8MaxReCfgTimeC
	jge.u	%d2, %d15, .L7
.LBB637:
	.loc 1 460 0
	call	TLE9180_bHalBatIsNormal
.LVL66:
	.loc 1 462 0
	jne	%d2, 1, .L7
	.loc 1 464 0
	ld.bu	%d15, [%a15] lo:TLE9180_u8ReCfgCnt
	.loc 1 466 0
	mov	%d4, 0
	.loc 1 464 0
	add	%d15, 1
	st.b	[%a15] lo:TLE9180_u8ReCfgCnt, %d15
.LVL67:
.LBB638:
.LBB639:
	.loc 1 534 0
	mov	%d15, 12
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LBE639:
.LBE638:
.LBE637:
	.loc 1 498 0
	lea	%SP, [%SP] 8
.LBB640:
	.loc 1 466 0
	j	TLE9180_vidHalWriteInhPin
.LVL68:
.L13:
.LBE640:
	.loc 1 291 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteSoffPin
.LVL69:
	.loc 1 292 0
	call	TLE9180_bHalPwmIsReady
.LVL70:
	.loc 1 294 0
	jne	%d2, 1, .L14
.LVL71:
.LBB641:
.LBB642:
	.loc 1 534 0
	mov	%d15, 4
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LVL72:
.L14:
.LBE642:
.LBE641:
	.loc 1 302 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteEnaPin
.LVL73:
	.loc 1 303 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteInhPin
.LVL74:
	.loc 1 304 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteSoffPin
.LVL75:
	.loc 1 306 0
	ld.bu	%d15, [%a15] lo:TLE9180_bErrorPinLevel
	jnz	%d15, .L47
	.loc 1 308 0
	movh.a	%a15, hi:TLE9180_u8RdRegTimCnt
	st.b	[%a15] lo:TLE9180_u8RdRegTimCnt, %d15
.LVL76:
.LBB643:
.LBB644:
	.loc 1 534 0
	mov	%d15, 6
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	j	.L70
.LVL77:
.L75:
	movh.a	%a5, hi:TLE9180_au32ErrRegsReadFrame
	movh.a	%a4, hi:TLE9180_au8ReadRegs
	lea	%a5, [%a5] lo:TLE9180_au32ErrRegsReadFrame
	lea	%a4, [%a4] lo:TLE9180_au8ReadRegs
.LBE644:
.LBE643:
	.loc 1 199 0
	mov	%d15, 0
.LBB645:
.LBB646:
	.loc 1 543 0
	mov.aa	%a6, %a4
	mov.aa	%a7, %a5
	lea	%a15, 19
.L17:
.LVL78:
	mov	%d2, %d15
	add	%d15, 1
.LVL79:
	addsc.a	%a2, %a5, %d15, 2
	addsc.a	%a3, %a4, %d2, 0
	ld.w	%d2, [%a2]0
.LVL80:
	sh	%d2, -4
	st.b	[%a3]0, %d2
.LVL81:
	.loc 1 541 0
	loop	%a15, .L17
	.loc 1 547 0
	ld.bu	%d2, [%a6]0
	and	%d15, %d2, 1
.LVL82:
	jnz	%d15, .L106
	.loc 1 553 0
	and	%d2, %d2, 4
	and	%d2, %d2, 255
	.loc 1 555 0
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	.loc 1 553 0
	jz	%d2, .L58
	.loc 1 556 0
	mov	%d2, 1
	movh.a	%a2, hi:TLE9180_bIsInCfgLockMode
	.loc 1 555 0
	st.b	[%a15] lo:TLE9180_bIsInIdleMode, %d15
	.loc 1 556 0
	st.b	[%a2] lo:TLE9180_bIsInCfgLockMode, %d2
	.loc 1 557 0
	st.w	[%a7] 4, %d15
.L57:
	.loc 1 566 0
	ld.bu	%d15, [%a4] 4
	movh.a	%a2, hi:TLE9180_bPhsOverVolt
	and	%d15, %d15, 224
	ne	%d15, %d15, 0
	st.b	[%a2] lo:TLE9180_bPhsOverVolt, %d15
	.loc 1 576 0
	ld.bu	%d15, [%a4] 6
	.loc 1 578 0
	mov	%d3, 1
	.loc 1 576 0
	and	%d2, %d15, 96
	jnz	%d2, .L59
	ld.bu	%d3, [%a4] 5
	and	%d3, %d3, 5
	.loc 1 578 0
	ne	%d3, %d3, 0
.L59:
	movh.a	%a2, hi:TLE9180_bDrvOverVoltage
	st.b	[%a2] lo:TLE9180_bDrvOverVoltage, %d3
	.loc 1 588 0
	mov	%d2, 1
	.loc 1 586 0
	jnz.t	%d15, 4, .L60
	ld.bu	%d2, [%a4] 5
	and	%d2, %d2, 26
	.loc 1 588 0
	ne	%d2, %d2, 0
.L60:
	movh.a	%a2, hi:TLE9180_bDrvUnderVoltage
	st.b	[%a2] lo:TLE9180_bDrvUnderVoltage, %d2
	.loc 1 596 0
	sh	%d15, -7
	movh.a	%a2, hi:TLE9180_bDrvOverTemp
	st.b	[%a2] lo:TLE9180_bDrvOverTemp, %d15
	.loc 1 606 0
	ld.bu	%d15, [%a4] 7
	movh.a	%a2, hi:TLE9180_bPhaseShortHigh
	and	%d2, %d15, 224
	ne	%d2, %d2, 0
	.loc 1 616 0
	and	%d15, %d15, 28
	ne	%d15, %d15, 0
	.loc 1 606 0
	st.b	[%a2] lo:TLE9180_bPhaseShortHigh, %d2
	.loc 1 616 0
	movh.a	%a2, hi:TLE9180_bPhaseShortLow
	st.b	[%a2] lo:TLE9180_bPhaseShortLow, %d15
	.loc 1 626 0
	ld.bu	%d15, [%a4] 11
	movh.a	%a2, hi:TLE9180_bDrvOverCurrent
	and	%d15, %d15, 17
	ne	%d15, %d15, 0
	st.b	[%a2] lo:TLE9180_bDrvOverCurrent, %d15
.LBE646:
.LBE645:
	.loc 1 373 0
	movh.a	%a2, hi:TLE9180_u8ErrRecoverCnt
	ld.bu	%d15, [%a2] lo:TLE9180_u8ErrRecoverCnt
	add	%d15, 1
	st.b	[%a2] lo:TLE9180_u8ErrRecoverCnt, %d15
.LVL83:
.LBB649:
.LBB650:
	.loc 1 534 0
	mov	%d15, 8
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	j	.L70
.LVL84:
.L9:
.LBE650:
.LBE649:
	.loc 1 204 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteEnaPin
.LVL85:
	.loc 1 205 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteInhPin
.LVL86:
	.loc 1 206 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteSoffPin
.LVL87:
.LBB651:
.LBB652:
	.loc 1 777 0
	mov	%d15, 21
	.loc 1 779 0
	movh.a	%a2, hi:TLE9180_au32SpiWriteFrame
	.loc 1 777 0
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL88:
.LBB653:
.LBB654:
	.loc 1 1026 0
	movh	%d3, 1
.LBE654:
.LBE653:
	.loc 1 779 0
	lea	%a15, [%a2] lo:TLE9180_au32SpiWriteFrame
	.loc 1 780 0
	st.w	[%a15] 4, %d3
.LBB656:
.LBB657:
	.loc 1 1026 0
	movh	%d3, 2
	add	%d3, 7
.LBE657:
.LBE656:
	.loc 1 781 0
	st.w	[%a15] 8, %d3
.LBB658:
.LBB659:
	.loc 1 1026 0
	movh	%d3, 3
	add	%d3, 3
.LBE659:
.LBE658:
	.loc 1 782 0
	st.w	[%a15] 12, %d3
.LBB660:
.LBB661:
	.loc 1 1026 0
	movh	%d3, 4
	add	%d3, 2
.LBE661:
.LBE660:
.LBB662:
.LBB663:
.LBB664:
.LBB665:
	.loc 1 1081 0
	mov	%d15, 4
.LBE665:
.LBE664:
.LBE663:
.LBE662:
	.loc 1 783 0
	st.w	[%a15] 16, %d3
.LBB668:
.LBB669:
	.loc 1 1026 0
	movh	%d3, 5
.LBE669:
.LBE668:
.LBB671:
.LBB666:
	st.w	[%a2] lo:TLE9180_au32SpiWriteFrame, %d15
.LBE666:
.LBE671:
.LBB672:
.LBB670:
	add	%d3, 6
.LBE670:
.LBE672:
.LBB673:
.LBB655:
	.loc 1 1024 0
	mov	%d15, 1
.LBE655:
.LBE673:
	.loc 1 784 0
	st.w	[%a15] 20, %d3
.LBB674:
.LBB675:
	.loc 1 1026 0
	addih	%d3, %d15, 6
.LBE675:
.LBE674:
	.loc 1 785 0
	st.w	[%a15] 24, %d3
.LBB676:
.LBB677:
	.loc 1 1026 0
	movh	%d3, 7
	add	%d3, 5
.LBE677:
.LBE676:
	.loc 1 786 0
	st.w	[%a15] 28, %d3
.LBB678:
.LBB679:
	.loc 1 1026 0
	movh	%d3, 8
	add	%d3, 3
.LBE679:
.LBE678:
	.loc 1 787 0
	st.w	[%a15] 32, %d3
.LBB680:
.LBB681:
	.loc 1 1026 0
	movh	%d3, 9
	add	%d3, 7
.LBE681:
.LBE680:
	.loc 1 788 0
	st.w	[%a15] 36, %d3
.LBB682:
.LBB683:
	.loc 1 1026 0
	movh	%d3, 10
.LBE683:
.LBE682:
	.loc 1 789 0
	st.w	[%a15] 40, %d3
.LBB684:
.LBB685:
	.loc 1 1026 0
	movh	%d3, 11
	add	%d3, 4
.LBE685:
.LBE684:
	.loc 1 790 0
	st.w	[%a15] 44, %d3
.LBB686:
.LBB687:
	.loc 1 1026 0
	movh	%d3, 12
	add	%d3, 5
.LBE687:
.LBE686:
	.loc 1 791 0
	st.w	[%a15] 48, %d3
.LBB688:
.LBB689:
	.loc 1 1026 0
	addih	%d3, %d15, 13
.LBE689:
.LBE688:
	.loc 1 792 0
	st.w	[%a15] 52, %d3
.LBB690:
.LBB691:
	.loc 1 1026 0
	movh	%d3, 14
	add	%d3, 6
.LBE691:
.LBE690:
	.loc 1 793 0
	st.w	[%a15] 56, %d3
.LBB692:
.LBB693:
	.loc 1 1026 0
	movh	%d3, 15
	add	%d3, 2
.LBE693:
.LBE692:
	.loc 1 794 0
	st.w	[%a15] 60, %d3
.LBB694:
.LBB695:
	.loc 1 1026 0
	addih	%d3, %d15, 16
.LBE695:
.LBE694:
	.loc 1 795 0
	st.w	[%a15] 64, %d3
.LBB696:
.LBB697:
	.loc 1 1026 0
	movh	%d3, 17
.LBE697:
.LBE696:
.LBB699:
.LBB667:
	.loc 1 1022 0
	mov	%d2, 0
.LVL89:
.LBE667:
.LBE699:
.LBB700:
.LBB698:
	.loc 1 1026 0
	add	%d3, 5
.LBE698:
.LBE700:
	.loc 1 796 0
	st.w	[%a15] 68, %d3
.LVL90:
.LBB701:
.LBB702:
	.loc 1 1022 0
	st.b	[%SP] 7, %d2
.LBE702:
.LBE701:
.LBB706:
.LBB707:
	.loc 1 1026 0
	movh	%d3, 18
.LBE707:
.LBE706:
.LBB709:
.LBB703:
	.loc 1 1023 0
	st.b	[%SP] 6, %d2
	.loc 1 1024 0
	mov	%d2, 50
.LBE703:
.LBE709:
.LBB710:
.LBB708:
	.loc 1 1026 0
	add	%d3, 2
.LBE708:
.LBE710:
.LBB711:
.LBB704:
	.loc 1 1024 0
	st.b	[%SP] 5, %d2
	.loc 1 1026 0
	movh	%d2, 50
.LBE704:
.LBE711:
	.loc 1 797 0
	st.w	[%a15] 72, %d3
.LVL91:
.LBB712:
.LBB705:
	.loc 1 1026 0
	add	%d2, 3
.LBE705:
.LBE712:
.LBB713:
.LBB714:
	movh	%d3, 19
.LBE714:
.LBE713:
.LBB716:
.LBB717:
	.loc 1 999 0
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
.LBE717:
.LBE716:
	.loc 1 800 0
	st.w	[%a15] 80, %d2
.LBB724:
.LBB715:
	.loc 1 1026 0
	add	%d3, 6
.LBE715:
.LBE724:
.LBB725:
.LBB718:
	.loc 1 999 0
	mov	%d2, 0
	.loc 1 1001 0
	st.a	[%a2] 12, %a15
.LBE718:
.LBE725:
	.loc 1 798 0
	st.w	[%a15] 76, %d3
.LVL92:
.LBB726:
.LBB719:
	.loc 1 999 0
	st.w	[%a2] 4, %d2
.LBE719:
.LBE726:
.LBB727:
.LBB728:
	.loc 1 992 0
	movh.a	%a15, hi:TLE9180_u8TgtMode
.LBE728:
.LBE727:
.LBB737:
.LBB720:
	.loc 1 1000 0
	mov	%d2, 21
.LBE720:
.LBE737:
.LBB738:
.LBB733:
	.loc 1 992 0
	st.b	[%a15] lo:TLE9180_u8TgtMode, %d15
.LBE733:
.LBE738:
.LBB739:
.LBB721:
	.loc 1 1000 0
	st.w	[%a2] 8, %d2
.LBE721:
.LBE739:
.LBB740:
.LBB734:
	.loc 1 993 0
	movh.a	%a15, hi:TLE9180_u8ComState
.LBE734:
.LBE740:
.LBB741:
.LBB722:
	.loc 1 1002 0
	movh	%d2, hi:TLE9180_au32SpiReadFrame
	addi	%d2, %d2, lo:TLE9180_au32SpiReadFrame
.LBE722:
.LBE741:
.LBB742:
.LBB735:
	.loc 1 993 0
	st.b	[%a15] lo:TLE9180_u8ComState, %d15
.LBB729:
.LBB730:
	.loc 1 534 0
	mov	%d15, 13
.LBE730:
.LBE729:
.LBE735:
.LBE742:
.LBB743:
.LBB723:
	.loc 1 1002 0
	st.w	[%a2] 16, %d2
.LVL93:
.LBE723:
.LBE743:
.LBB744:
.LBB736:
.LBB732:
.LBB731:
	.loc 1 534 0
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LVL94:
.L64:
.LBE731:
.LBE732:
.LBE736:
.LBE744:
.LBE652:
.LBE651:
.LBB745:
.LBB746:
.LBB747:
.LBB748:
.LBB749:
	.loc 2 110 0
	ld.a	%a4, [%a2] 12
	ld.a	%a5, [%a2] 16
	mov	%d4, 2
	ld.bu	%d5, [%a2] 8
	call	Qspi_CddTxRxShortMode
.LVL95:
.LBE749:
.LBE748:
.LBB750:
.LBB751:
	.loc 2 98 0
	mov	%d4, 2
	call	Qspi_CddRxDone
.LVL96:
.LBE751:
.LBE750:
	.loc 1 959 0
	jz	%d2, .L97
	.loc 1 965 0
	mov	%d15, 3
	st.b	[%a15] lo:TLE9180_u8ComState, %d15
.LVL97:
.L68:
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	j	.L62
.LVL98:
.L11:
.LBE747:
.LBE746:
.LBE745:
	.loc 1 216 0
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	.loc 1 214 0
	movh.a	%a5, hi:TLE9180_bInitFailFlg
	mov	%d15, 0
	.loc 1 216 0
	ld.bu	%d4, [%a15] lo:TLE9180_u8SpiTxFrameMaxNb
	.loc 1 214 0
	st.b	[%a5] lo:TLE9180_bInitFailFlg, %d15
.LVL99:
	.loc 1 216 0
	jlt	%d4, 2, .L27
	.loc 1 218 0
	movh.a	%a2, hi:TLE9180_au32SpiReadFrame
	lea	%a2, [%a2] lo:TLE9180_au32SpiReadFrame
	ld.w	%d15, [%a2] 4
	.loc 1 220 0
	movh.a	%a3, hi:TLE9180_au8CfgRegister
	.loc 1 218 0
	extr.u	%d15, %d15, 4, 8
	movh.a	%a4, hi:TLE9180_au8CfgRegReadBk
	.loc 1 220 0
	ld.bu	%d2, [%a3] lo:TLE9180_au8CfgRegister
	.loc 1 218 0
	st.b	[%a4] lo:TLE9180_au8CfgRegReadBk, %d15
	add	%d4, -1
	.loc 1 220 0
	mov	%d3, 0
	.loc 1 218 0
	lea	%a4, [%a4] lo:TLE9180_au8CfgRegReadBk
	.loc 1 220 0
	lea	%a3, [%a3] lo:TLE9180_au8CfgRegister
	jeq	%d2, %d15, .L94
	j	.L28
.LVL100:
.L30:
	.loc 1 218 0
	addsc.a	%a15, %a2, %d15, 2
	ld.w	%d2, [%a15] 4
	addsc.a	%a15, %a4, %d15, 0
	extr.u	%d2, %d2, 4, 8
	st.b	[%a15]0, %d2
	.loc 1 220 0
	addsc.a	%a15, %a3, %d15, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, %d2, .L28
.LVL101:
.L94:
	add	%d3, 1
.LVL102:
	.loc 1 216 0 discriminator 2
	and	%d15, %d3, 255
	jlt	%d15, %d4, .L30
.LVL103:
.L27:
.LBB758:
.LBB759:
	.loc 1 534 0
	mov	%d15, 3
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	j	.L70
.LVL104:
.L12:
.LBE759:
.LBE758:
	.loc 1 276 0
	movh.a	%a15, hi:TLE9180_u8SelfTestStep
	ld.bu	%d2, [%a15] lo:TLE9180_u8SelfTestStep
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] lo:TLE9180_u8SelfTestStep, %d2
	.loc 1 277 0
	jlt.u	%d2, 8, .L107
	.loc 1 283 0
	mov	%d15, 0
	st.b	[%a15] lo:TLE9180_u8SelfTestStep, %d15
.LVL105:
.LBB760:
.LBB761:
	.loc 1 534 0
	mov	%d15, 4
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	j	.L70
.LVL106:
.L15:
.LBE761:
.LBE760:
	.loc 1 340 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteEnaPin
.LVL107:
	.loc 1 341 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteSoffPin
.LVL108:
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	.loc 1 342 0
	j	.L8
.L22:
	.loc 1 253 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteInhPin
.LVL109:
.LBB762:
.LBB763:
	.loc 1 534 0
	mov	%d15, 11
.LBE763:
.LBE762:
	.loc 1 256 0
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
.LBB765:
.LBB764:
	.loc 1 534 0
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LBE764:
.LBE765:
	.loc 1 256 0
	ld.bu	%d15, [%a15] lo:TLE9180_bIsInIdleMode
	movh.a	%a2, hi:TLE9180_bIsInCfgLockMode
	jeq	%d15, 1, .L32
	.loc 1 257 0
	ld.bu	%d15, [%a2] lo:TLE9180_bIsInCfgLockMode
	jne	%d15, 1, .L70
.L32:
	.loc 1 259 0
	mov	%d15, 1
	movh.a	%a3, hi:TLE9180_bIsModeReq
	st.b	[%a3] lo:TLE9180_bIsModeReq, %d15
	.loc 1 260 0
	mov	%d15, 0
	st.b	[%a15] lo:TLE9180_bIsInIdleMode, %d15
	.loc 1 261 0
	st.b	[%a2] lo:TLE9180_bIsInCfgLockMode, %d15
	j	.L70
.LVL110:
.L18:
	.loc 1 385 0
	movh.a	%a2, hi:TLE9180_u16EnaResetTime
	movh.a	%a15, hi:TLE9180_ku16EnaResetTimeC
	ld.hu	%d15, [%a2] lo:TLE9180_u16EnaResetTime
	ld.hu	%d3, [%a15] lo:TLE9180_ku16EnaResetTimeC
	jlt.u	%d15, %d3, .L108
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	.loc 1 393 0
	jne	%d2, 1, .L70
	.loc 1 395 0
	mov	%d15, 0
	st.h	[%a2] lo:TLE9180_u16EnaResetTime, %d15
.LVL111:
.LBB766:
.LBB767:
	.loc 1 534 0
	mov	%d15, 9
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	j	.L70
.LVL112:
.L16:
.LBE767:
.LBE766:
	.loc 1 348 0
	jnz	%d2, .L53
	.loc 1 350 0
	movh.a	%a15, hi:TLE9180_u16ErrPinChkCnt
	movh.a	%a2, hi:TLE9180_ku16ErrPinChkTimC
	ld.hu	%d15, [%a15] lo:TLE9180_u16ErrPinChkCnt
	ld.hu	%d3, [%a2] lo:TLE9180_ku16ErrPinChkTimC
	jge.u	%d15, %d3, .L54
	.loc 1 352 0
	add	%d15, 1
	st.h	[%a15] lo:TLE9180_u16ErrPinChkCnt, %d15
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	j	.L70
.L21:
	.loc 1 268 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteInhPin
.LVL113:
.LBB768:
.LBB769:
	.loc 1 647 0
	mov	%d15, 21
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL114:
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	movh	%d2, hi:TLE9180_au32ICInitSpiFrame
	mov	%d15, 0
	addi	%d2, %d2, lo:TLE9180_au32ICInitSpiFrame
	.loc 1 651 0
	mov.aa	%a5, %a4
	lea	%a15, 20
.LVL115:
.L34:
	sh	%d3, %d15, 2
	mov.a	%a2, %d3
	add	%d15, 1
.LVL116:
	add.a	%a3, %a4, %a2
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d3, [%a2]0
	st.w	[%a3]0, %d3
	.loc 1 649 0
	loop	%a15, .L34
.LVL117:
.LBB770:
.LBB771:
	.loc 1 999 0
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
	.loc 1 1000 0
	st.w	[%a2] 8, %d15
	.loc 1 1002 0
	movh	%d15, hi:TLE9180_au32SpiReadFrame
.LVL118:
	addi	%d15, %d15, lo:TLE9180_au32SpiReadFrame
	.loc 1 1001 0
	st.a	[%a2] 12, %a5
.LBE771:
.LBE770:
	.loc 1 656 0
	movh.a	%a15, hi:TLE9180_bIsModeReq
.LBB774:
.LBB772:
	.loc 1 999 0
	mov	%d2, 0
	.loc 1 1002 0
	st.w	[%a2] 16, %d15
.LBE772:
.LBE774:
	.loc 1 656 0
	ld.bu	%d15, [%a15] lo:TLE9180_bIsModeReq
.LBB775:
.LBB773:
	.loc 1 999 0
	st.w	[%a2] 4, %d2
.LBE773:
.LBE775:
	.loc 1 656 0
	jeq	%d15, 1, .L109
.LVL119:
.LBB776:
.LBB777:
	.loc 1 992 0
	movh.a	%a15, hi:TLE9180_u8TgtMode
	st.b	[%a15] lo:TLE9180_u8TgtMode, %d2
.LVL120:
.L100:
.LBE777:
.LBE776:
.LBE769:
.LBE768:
.LBB783:
.LBB784:
.LBB785:
.LBB786:
	.loc 1 993 0
	mov	%d15, 1
	movh.a	%a15, hi:TLE9180_u8ComState
	st.b	[%a15] lo:TLE9180_u8ComState, %d15
.LVL121:
.LBB787:
.LBB788:
	.loc 1 534 0
	mov	%d15, 13
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	j	.L64
.LVL122:
.L19:
.LBE788:
.LBE787:
.LBE786:
.LBE785:
.LBE784:
.LBE783:
	.loc 1 405 0
	mov	%d4, 1
	call	TLE9180_vidHalWriteEnaPin
.LVL123:
	.loc 1 408 0
	mov	%d15, 0
	.loc 1 406 0
	mov	%d4, 1
	.loc 1 408 0
	movh.a	%a15, hi:TLE9180_u16EnaResetTime
	.loc 1 406 0
	call	TLE9180_vidHalWriteSoffPin
.LVL124:
	.loc 1 408 0
	st.h	[%a15] lo:TLE9180_u16EnaResetTime, %d15
.L101:
	.loc 1 409 0
	movh.a	%a15, hi:TLE9180_u16ErrPinChkCnt
	st.h	[%a15] lo:TLE9180_u16ErrPinChkCnt, %d15
.LVL125:
.LBB837:
.LBB838:
	.loc 1 534 0
	mov	%d15, 4
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	j	.L70
.LVL126:
.L20:
.LBE838:
.LBE837:
	.loc 1 417 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteEnaPin
.LVL127:
	.loc 1 418 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteSoffPin
.LVL128:
.L98:
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	.loc 1 419 0
	j	.L8
.L105:
.LVL129:
	movh.a	%a15, hi:TLE9180_u8ComState
.LBB839:
.LBB755:
.LBB754:
	.loc 1 952 0
	ld.bu	%d15, [%a15] lo:TLE9180_u8ComState
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
	jeq	%d15, 1, .L64
	jne	%d15, 3, .L97
.LVL130:
.LBB752:
.LBB753:
	.loc 2 98 0
	mov	%d4, 2
	call	Qspi_CddRxDone
.LVL131:
.LBE753:
.LBE752:
	.loc 1 972 0
	jnz	%d2, .L68
.LVL132:
.L97:
	.loc 1 982 0
	mov	%d15, 0
	st.b	[%a15] lo:TLE9180_u8ComState, %d15
.LBE754:
.LBE755:
	.loc 1 434 0
	mov	%d2, -1
	.loc 1 433 0
	movh.a	%a15, hi:TLE9180_u8TgtMode
	ld.bu	%d15, [%a15] lo:TLE9180_u8TgtMode
.LVL133:
	.loc 1 434 0
	st.b	[%a15] lo:TLE9180_u8TgtMode, %d2
.LVL134:
	.loc 1 436 0
	mov	%d2, 0
	movh.a	%a15, hi:TLE9180_bTestReadReg
	st.b	[%a15] lo:TLE9180_bTestReadReg, %d2
	.loc 1 437 0
	movh.a	%a15, hi:TLE9180_bTestWriteReg
.LBB756:
.LBB757:
	.loc 1 534 0
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LBE757:
.LBE756:
	.loc 1 437 0
	st.b	[%a15] lo:TLE9180_bTestWriteReg, %d2
	j	.L62
.LVL135:
.L47:
.LBE839:
	.loc 1 313 0
	mov	%d15, 0
	movh.a	%a15, hi:TLE9180_bDrvOverCurrent
	st.b	[%a15] lo:TLE9180_bDrvOverCurrent, %d15
	.loc 1 314 0
	movh.a	%a15, hi:TLE9180_bDrvOverTemp
	st.b	[%a15] lo:TLE9180_bDrvOverTemp, %d15
	.loc 1 315 0
	movh.a	%a15, hi:TLE9180_bDrvOverVoltage
	st.b	[%a15] lo:TLE9180_bDrvOverVoltage, %d15
	.loc 1 316 0
	movh.a	%a15, hi:TLE9180_bDrvUnderVoltage
	st.b	[%a15] lo:TLE9180_bDrvUnderVoltage, %d15
	.loc 1 317 0
	movh.a	%a15, hi:TLE9180_bPhaseShortHigh
	st.b	[%a15] lo:TLE9180_bPhaseShortHigh, %d15
	.loc 1 318 0
	movh.a	%a15, hi:TLE9180_bPhaseShortLow
	st.b	[%a15] lo:TLE9180_bPhaseShortLow, %d15
	.loc 1 319 0
	movh.a	%a15, hi:TLE9180_bPhsOverVolt
	st.b	[%a15] lo:TLE9180_bPhsOverVolt, %d15
	.loc 1 321 0
	movh.a	%a15, hi:TLE9180_bTestWriteReg
	ld.bu	%d2, [%a15] lo:TLE9180_bTestWriteReg
	jnz	%d2, .L110
	.loc 1 325 0
	movh.a	%a15, hi:TLE9180_bTestReadReg
	ld.bu	%d3, [%a15] lo:TLE9180_bTestReadReg
	jz	%d3, .L98
.LBB840:
.LBB841:
	.loc 1 902 0
	mov	%d3, 2
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d3
.LVL136:
	.loc 1 903 0
	movh.a	%a15, hi:TLE9180_u8ReadRegAddr
.LBB842:
.LBB843:
	.loc 1 1020 0
	ld.bu	%d5, [%a15] lo:TLE9180_u8ReadRegAddr
.LBE843:
.LBE842:
.LBB849:
.LBB850:
	.loc 1 1022 0
	st.b	[%SP] 7, %d15
.LBE850:
.LBE849:
.LBB856:
.LBB846:
	.loc 1 1020 0
	and	%d5, %d5, 127
.LVL137:
	.loc 1 1024 0
	sh	%d7, %d5, 16
.LVL138:
.LBB844:
.LBB845:
	.loc 1 1064 0
	xor	%d5, %d5, 255
.LVL139:
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d0
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d0, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d0
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d0, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d0
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d0
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d0, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d0
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d0, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d0
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d0
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d0, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
.LVL140:
	.loc 1 1064 0
	seln	%d3, %d4, %d3, %d0
.LVL141:
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d0, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d0
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d0
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d0, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d0
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d0, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d0
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
.LVL142:
	.loc 1 1064 0
	seln	%d4, %d5, %d4, %d0
.LVL143:
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d0, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d0
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d0, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d0
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d0
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d0, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d0
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d0, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d0
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d0, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d0
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d4, %d3, 1
	xor	%d5, %d4, 96
	and	%d5, %d5, 254
	.loc 1 1078 0
	and	%d4, %d4, 255
.LVL144:
	sh	%d3, -7
	.loc 1 1081 0
	seln	%d3, %d3, %d4, %d5
.LBE845:
.LBE844:
.LBE846:
.LBE856:
.LBB857:
.LBB851:
	.loc 1 1023 0
	st.b	[%SP] 6, %d15
.LBE851:
.LBE857:
.LBB858:
.LBB847:
	.loc 1 1026 0
	sh	%d3, -5
.LBE847:
.LBE858:
.LBB859:
.LBB852:
	.loc 1 1024 0
	mov	%d15, 50
.LBE852:
.LBE859:
	.loc 1 903 0
	movh.a	%a2, hi:TLE9180_au32SpiWriteFrame
.LBB860:
.LBB853:
	.loc 1 1024 0
	st.b	[%SP] 5, %d15
.LBE853:
.LBE860:
.LBB861:
.LBB848:
	.loc 1 1026 0
	or	%d3, %d7
.LBE848:
.LBE861:
.LBB862:
.LBB854:
	movh	%d15, 50
.LBE854:
.LBE862:
	.loc 1 903 0
	lea	%a15, [%a2] lo:TLE9180_au32SpiWriteFrame
	st.w	[%a2] lo:TLE9180_au32SpiWriteFrame, %d3
.LVL145:
.LBB863:
.LBB855:
	.loc 1 1026 0
	add	%d15, 3
.LBE855:
.LBE863:
.LBB864:
.LBB865:
	.loc 1 999 0
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
.LBE865:
.LBE864:
	.loc 1 904 0
	st.w	[%a15] 4, %d15
.LVL146:
.LBB868:
.LBB866:
	.loc 1 1000 0
	mov	%d15, 2
	st.w	[%a2] 8, %d15
	.loc 1 1002 0
	movh	%d15, hi:TLE9180_au32SpiTstReadFrame
	addi	%d15, %d15, lo:TLE9180_au32SpiTstReadFrame
	.loc 1 1001 0
	st.a	[%a2] 12, %a15
	.loc 1 1002 0
	st.w	[%a2] 16, %d15
.LVL147:
.LBE866:
.LBE868:
.LBB869:
.LBB870:
	.loc 1 992 0
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
.LBE870:
.LBE869:
.LBB871:
.LBB867:
	.loc 1 999 0
	st.w	[%a2] 4, %d2
.LVL148:
.L99:
.LBE867:
.LBE871:
.LBE841:
.LBE840:
.LBB872:
.LBB835:
.LBB791:
.LBB789:
	.loc 1 992 0
	movh.a	%a15, hi:TLE9180_u8TgtMode
	st.b	[%a15] lo:TLE9180_u8TgtMode, %d15
	j	.L100
.L53:
.LBE789:
.LBE791:
.LBE835:
.LBE872:
	.loc 1 362 0
	mov	%d15, 0
	j	.L101
.L106:
.LBB873:
.LBB647:
	.loc 1 549 0
	mov	%d15, 1
	movh.a	%a15, hi:TLE9180_bIsInIdleMode
	st.b	[%a15] lo:TLE9180_bIsInIdleMode, %d15
	.loc 1 550 0
	movh.a	%a2, hi:TLE9180_bIsInCfgLockMode
	mov	%d15, 0
	st.b	[%a2] lo:TLE9180_bIsInCfgLockMode, %d15
	.loc 1 551 0
	mov	%d15, 0
	st.w	[%a7] 4, %d15
	j	.L57
.L28:
.LBE647:
.LBE873:
	.loc 1 222 0
	mov	%d15, 1
	.loc 1 230 0
	movh.a	%a15, hi:TLE9180_u8InitFailedCnt
	movh.a	%a2, hi:TLE9180_ku8MaxInitTimeC
	.loc 1 222 0
	st.b	[%a5] lo:TLE9180_bInitFailFlg, %d15
	.loc 1 230 0
	ld.bu	%d2, [%a2] lo:TLE9180_ku8MaxInitTimeC
	ld.bu	%d15, [%a15] lo:TLE9180_u8InitFailedCnt
	jge.u	%d15, %d2, .L27
	.loc 1 232 0
	add	%d15, 1
	st.b	[%a15] lo:TLE9180_u8InitFailedCnt, %d15
.LVL149:
	.loc 1 235 0
	mov	%d4, 0
.LBB874:
.LBB875:
	.loc 1 534 0
	mov	%d15, 11
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
.LBE875:
.LBE874:
	.loc 1 235 0
	call	TLE9180_vidHalWriteEnaPin
.LVL150:
	.loc 1 236 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteInhPin
.LVL151:
	.loc 1 237 0
	mov	%d4, 0
	call	TLE9180_vidHalWriteSoffPin
.LVL152:
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	j	.L8
.LVL153:
.L107:
.LBB876:
.LBB836:
	.loc 1 817 0
	add	%d2, -1
.LVL154:
	jge.u	%d2, 7, .L62
	movh.a	%a15, hi:.L39
	lea	%a15, [%a15] lo:.L39
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L39:
	.code32
	j	.L38
	.code32
	j	.L45
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
.L45:
.LVL155:
.LBB792:
.LBB793:
	.loc 1 1022 0
	mov	%d15, 0
.LVL156:
.LBE793:
.LBE792:
.LBB796:
.LBB797:
	st.b	[%SP] 7, %d15
	.loc 1 1023 0
	st.b	[%SP] 6, %d15
	.loc 1 1024 0
	mov	%d15, 50
.LBE797:
.LBE796:
	.loc 1 879 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB801:
.LBB798:
	.loc 1 1024 0
	st.b	[%SP] 5, %d15
.LBE798:
.LBE801:
.LBB802:
.LBB794:
	.loc 1 1026 0
	movh	%d2, 64
.LVL157:
.LBE794:
.LBE802:
.LBB803:
.LBB799:
	movh	%d15, 50
.LBE799:
.LBE803:
	.loc 1 879 0
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
.LBB804:
.LBB800:
	.loc 1 1026 0
	add	%d15, 3
.LBE800:
.LBE804:
.LBB805:
.LBB795:
	add	%d2, 6
.LBE795:
.LBE805:
	.loc 1 879 0
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d2
.LVL158:
	.loc 1 880 0
	st.w	[%a4] 4, %d15
	.loc 1 881 0
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	mov	%d15, 2
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL159:
	mov	%d15, 2
.LVL160:
.L46:
.LBB806:
.LBB807:
	.loc 1 999 0
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
	.loc 1 1000 0
	st.w	[%a2] 8, %d15
	.loc 1 1002 0
	movh	%d15, hi:TLE9180_au32SpiReadFrame
.LVL161:
	addi	%d15, %d15, lo:TLE9180_au32SpiReadFrame
	.loc 1 999 0
	mov	%d2, 0
	.loc 1 1001 0
	st.a	[%a2] 12, %a4
	.loc 1 1002 0
	st.w	[%a2] 16, %d15
.LVL162:
	.loc 1 999 0
	st.w	[%a2] 4, %d2
.LBE807:
.LBE806:
.LBB808:
.LBB790:
	.loc 1 992 0
	mov	%d15, 2
	j	.L99
.LVL163:
.L42:
.LBE790:
.LBE808:
.LBB809:
.LBB810:
	.loc 1 1048 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
	.loc 1 1049 0
	mov	%d15, 32
	st.b	[%SP] 6, %d15
	.loc 1 1050 0
	mov	%d15, -75
	st.b	[%SP] 5, %d15
.LVL164:
	.loc 1 1052 0
	movh	%d15, 181
.LBE810:
.LBE809:
	.loc 1 854 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB812:
.LBB811:
	.loc 1 1052 0
	addi	%d15, %d15, 8195
.LVL165:
.L102:
.LBE811:
.LBE812:
	.loc 1 871 0
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d15
	.loc 1 872 0
	movh.a	%a2, hi:TLE9180_u8SpiTxFrameMaxNb
	mov	%d15, 1
	st.b	[%a2] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL166:
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	mov	%d15, 1
	j	.L46
.LVL167:
.L41:
.LBB813:
.LBB814:
	.loc 1 1048 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
	.loc 1 1049 0
	mov	%d15, 64
	st.b	[%SP] 6, %d15
	.loc 1 1050 0
	mov	%d15, -75
	st.b	[%SP] 5, %d15
.LVL168:
	.loc 1 1052 0
	movh	%d15, 181
.LBE814:
.LBE813:
	.loc 1 846 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB816:
.LBB815:
	.loc 1 1052 0
	addi	%d15, %d15, 16391
	j	.L102
.LVL169:
.L43:
.LBE815:
.LBE816:
.LBB817:
.LBB818:
	.loc 1 1050 0
	mov	%d2, -74
.LVL170:
	.loc 1 1048 0
	mov	%d15, 0
	.loc 1 1050 0
	st.b	[%SP] 5, %d2
.LVL171:
	.loc 1 1052 0
	movh	%d2, 182
.LBE818:
.LBE817:
	.loc 1 863 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB821:
.LBB819:
	.loc 1 1048 0
	st.b	[%SP] 7, %d15
	.loc 1 1052 0
	addi	%d2, %d2, 259
	.loc 1 1049 0
	mov	%d15, 1
.LBE819:
.LBE821:
	.loc 1 864 0
	movh.a	%a2, hi:TLE9180_u8SpiTxFrameMaxNb
.LBB822:
.LBB820:
	.loc 1 1049 0
	st.b	[%SP] 6, %d15
.LBE820:
.LBE822:
	.loc 1 864 0
	st.b	[%a2] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL172:
	.loc 1 863 0
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d2
	.loc 1 864 0
	mov	%d15, 1
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	j	.L46
.LVL173:
.L38:
.LBB823:
.LBB824:
	.loc 1 1052 0
	movh	%d15, 183
.LBE824:
.LBE823:
	.loc 1 827 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB826:
.LBB825:
	.loc 1 1052 0
	addi	%d15, %d15, 4614
.LBE825:
.LBE826:
	.loc 1 827 0
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d15
.LVL174:
.LBB827:
.LBB828:
	.loc 1 1052 0
	addi	%d15, %d15, -3584
.LBE828:
.LBE827:
	.loc 1 828 0
	st.w	[%a4] 4, %d15
.LVL175:
.LBB829:
.LBB830:
	.loc 1 1048 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
	.loc 1 1049 0
	mov	%d15, 1
	st.b	[%SP] 6, %d15
	.loc 1 1050 0
	mov	%d15, -73
	st.b	[%SP] 5, %d15
.LVL176:
	.loc 1 1052 0
	movh	%d15, 183
	addi	%d15, %d15, 263
.LBE830:
.LBE829:
	.loc 1 829 0
	st.w	[%a4] 8, %d15
	.loc 1 830 0
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	mov	%d15, 3
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL177:
	mov	%d15, 3
	j	.L46
.LVL178:
.L44:
.LBB831:
.LBB832:
	.loc 1 1048 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
	.loc 1 1049 0
	mov	%d15, -128
	st.b	[%SP] 6, %d15
	.loc 1 1050 0
	mov	%d15, -73
	st.b	[%SP] 5, %d15
.LVL179:
	.loc 1 1052 0
	movh	%d15, 184
.LBE832:
.LBE831:
	.loc 1 871 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB834:
.LBB833:
	.loc 1 1052 0
	addi	%d15, %d15, -32761
	j	.L102
.LVL180:
.L108:
.LBE833:
.LBE834:
.LBE836:
.LBE876:
	.loc 1 387 0
	add	%d15, 1
	.loc 1 388 0
	mov	%d4, 0
	.loc 1 387 0
	st.h	[%a2] lo:TLE9180_u16EnaResetTime, %d15
	.loc 1 388 0
	call	TLE9180_vidHalWriteEnaPin
.LVL181:
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	j	.L8
.L110:
.LBB877:
.LBB878:
	.loc 1 914 0
	movh.a	%a15, hi:TLE9180_u8WriteRegAddr
	ld.bu	%d5, [%a15] lo:TLE9180_u8WriteRegAddr
	addi	%d2, %d5, -1
	ge.u	%d2, %d2, 19
	jnz	%d2, .L49
	.loc 1 916 0
	movh.a	%a2, hi:TLE9180_au8CfgRegister
	movh.a	%a15, hi:TLE9180_u8WriteData
	lea	%a2, [%a2] lo:TLE9180_au8CfgRegister
	ld.bu	%d6, [%a15] lo:TLE9180_u8WriteData
	addsc.a	%a15, %a2, %d5, 0
.LBB879:
.LBB880:
	.loc 1 1086 0
	mov	%d15, 0
.LBE880:
.LBE879:
	.loc 1 916 0
	st.b	[%a15]0, %d6
.LVL182:
	add.a	%a2, 1
	lea	%a15, 18
.LVL183:
.L50:
.LBB883:
.LBB882:
.LBB881:
	.loc 1 1092 0
	ld.bu	%d2, [%a2+]1
	xor	%d15, %d2
	.loc 1 1098 0
	extr	%d4, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d3, %d15, 77
	ge	%d2, %d4, 0
	sel	%d2, %d2, %d15, %d3
	.loc 1 1098 0
	extr	%d4, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d3, %d2, 77
	ge	%d15, %d4, 0
	sel	%d15, %d15, %d2, %d3
	.loc 1 1098 0
	extr	%d4, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d3, %d15, 77
	ge	%d2, %d4, 0
	sel	%d2, %d2, %d15, %d3
	.loc 1 1098 0
	extr	%d4, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d3, %d2, 77
	ge	%d15, %d4, 0
	sel	%d15, %d15, %d2, %d3
	.loc 1 1098 0
	extr	%d4, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d3, %d15, 77
	ge	%d2, %d4, 0
	sel	%d2, %d2, %d15, %d3
	.loc 1 1098 0
	extr	%d4, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d3, %d2, 77
	ge	%d15, %d4, 0
	sel	%d15, %d15, %d2, %d3
	.loc 1 1098 0
	extr	%d4, %d15, 0, 8
	.loc 1 1101 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 1106 0
	xor	%d3, %d15, 77
	ge	%d2, %d4, 0
	sel	%d2, %d2, %d15, %d3
	.loc 1 1098 0
	extr	%d4, %d2, 0, 8
	.loc 1 1101 0
	sh	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1106 0
	xor	%d3, %d2, 77
	ge	%d15, %d4, 0
	sel	%d15, %d15, %d2, %d3
.LVL184:
	.loc 1 1113 0
	loop	%a15, .L50
.LBE881:
.LBE882:
.LBE883:
	.loc 1 919 0
	mov	%d2, 2
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d2
.LVL185:
.LBB884:
.LBB885:
	.loc 1 1047 0
	sh	%d6, %d6, 8
.LVL186:
	.loc 1 1046 0
	sh	%d2, %d5, 16
	or	%d2, %d6
	.loc 1 1047 0
	insert	%d2, %d2, 15, 23, 1
.LVL187:
.LBE885:
.LBE884:
.LBB892:
.LBB893:
	sh	%d15, %d15, 8
.LVL188:
.LBE893:
.LBE892:
.LBB900:
.LBB890:
	.loc 1 1050 0
	sh	%d3, %d2, -16
.LVL189:
.LBB886:
.LBB887:
	.loc 1 1064 0
	not	%d3
	and	%d3, %d3, 255
.LVL190:
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d3, %d4, %d7
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d5, %d6, 96
.LVL191:
	and	%d7, %d5, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d4, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d5, %d3, %d7
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d3, %d4, %d7
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d5, %d6, 96
	and	%d7, %d5, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d4, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d5, %d3, %d7
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d3, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d6, %d5, 96
	.loc 1 1078 0
	and	%d3, %d5, 255
	.loc 1 1076 0
	and	%d6, %d6, 254
	sh	%d4, -7
	seln	%d4, %d4, %d3, %d6
.LVL192:
	.loc 1 1064 0
	extr.u	%d3, %d2, 8, 8
.LBE887:
.LBE886:
.LBE890:
.LBE900:
	.loc 1 920 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB901:
.LBB891:
.LBB889:
.LBB888:
	.loc 1 1064 0
	xor	%d3, %d4
.LVL193:
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	extr.u	%d3, %d3, 7, 1
	and	%d7, %d5, 254
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d7
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d7
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d7, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
.LVL194:
	.loc 1 1064 0
	seln	%d4, %d5, %d4, %d7
.LVL195:
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d7
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d7, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d7
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d7
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d7, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d7
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d4, %d3, 1
	xor	%d5, %d4, 96
	and	%d5, %d5, 254
	.loc 1 1078 0
	and	%d4, %d4, 255
.LVL196:
	sh	%d3, -7
	.loc 1 1081 0
	seln	%d3, %d3, %d4, %d5
.LBE888:
.LBE889:
	.loc 1 1052 0
	sh	%d3, -5
	or	%d2, %d3
.LVL197:
.LBE891:
.LBE901:
.LBB902:
.LBB898:
	.loc 1 1047 0
	insert	%d15, %d15, 15, 23, 1
.LBE898:
.LBE902:
	.loc 1 920 0
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d2
.LVL198:
.LBB903:
.LBB899:
	.loc 1 1048 0
	mov	%d2, 0
	st.b	[%SP] 7, %d2
	.loc 1 1049 0
	sh	%d2, %d15, -8
	st.b	[%SP] 6, %d2
.LBB894:
.LBB895:
	.loc 1 1064 0
	and	%d2, %d2, 255
	.loc 1 1076 0
	sh	%d5, %d2, 1
.LVL199:
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
.LBE895:
.LBE894:
	.loc 1 1050 0
	mov	%d3, -128
	st.b	[%SP] 5, %d3
.LVL200:
.LBB897:
.LBB896:
	.loc 1 1076 0
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d2, %d5, 96
	and	%d6, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d5, 255
	seln	%d2, %d3, %d2, %d6
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
.LVL201:
	.loc 1 1064 0
	seln	%d3, %d4, %d3, %d6
.LVL202:
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d2, %d5, 96
	and	%d6, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d5, 255
	seln	%d2, %d3, %d2, %d6
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d2, %d5, 96
	and	%d6, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d5, 255
	seln	%d2, %d3, %d2, %d6
	.loc 1 1076 0
	sh	%d5, %d2, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d2, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d2, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d4, %d3, 1
	xor	%d2, %d4, 96
	and	%d5, %d2, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d2, %d4, 255
	seln	%d2, %d3, %d2, %d5
	.loc 1 1076 0
	sh	%d3, %d2, 1
	xor	%d4, %d3, 96
	and	%d4, %d4, 254
	.loc 1 1078 0
	and	%d3, %d3, 255
.LVL203:
	sh	%d2, -7
	.loc 1 1081 0
	seln	%d2, %d2, %d3, %d4
.LBE896:
.LBE897:
	.loc 1 1052 0
	sh	%d2, -5
	or	%d15, %d2
.LVL204:
.LBE899:
.LBE903:
	.loc 1 920 0
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	.loc 1 921 0
	st.w	[%a4] 4, %d15
	mov	%d15, 2
.LVL205:
.L51:
.LBB904:
.LBB905:
	.loc 1 999 0
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
	.loc 1 1000 0
	st.w	[%a2] 8, %d15
	.loc 1 1002 0
	movh	%d15, hi:TLE9180_au32SpiTstWriteFrame
.LVL206:
	addi	%d15, %d15, lo:TLE9180_au32SpiTstWriteFrame
	.loc 1 1001 0
	st.a	[%a2] 12, %a4
	.loc 1 999 0
	mov	%d2, 0
	.loc 1 1002 0
	st.w	[%a2] 16, %d15
.LVL207:
	.loc 1 999 0
	st.w	[%a2] 4, %d2
.LBE905:
.LBE904:
.LBB906:
.LBB907:
	.loc 1 992 0
	ld.bu	%d15, [%a12] lo:TLE9180_u8Mode
	j	.L99
.LVL208:
.L58:
.LBE907:
.LBE906:
.LBE878:
.LBE877:
.LBB917:
.LBB648:
	.loc 1 562 0
	movh.a	%a2, hi:TLE9180_bIsInCfgLockMode
	.loc 1 561 0
	st.b	[%a15] lo:TLE9180_bIsInIdleMode, %d2
	.loc 1 562 0
	st.b	[%a2] lo:TLE9180_bIsInCfgLockMode, %d2
	j	.L57
.LVL209:
.L109:
.LBE648:
.LBE917:
.LBB918:
.LBB782:
	.loc 1 658 0
	st.b	[%a15] lo:TLE9180_bIsModeReq, %d2
.LVL210:
.LBB778:
.LBB779:
	.loc 1 992 0
	movh.a	%a15, hi:TLE9180_u8TgtMode
	mov	%d2, 4
	st.b	[%a15] lo:TLE9180_u8TgtMode, %d2
	.loc 1 993 0
	movh.a	%a15, hi:TLE9180_u8ComState
	st.b	[%a15] lo:TLE9180_u8ComState, %d15
.LVL211:
.LBB780:
.LBB781:
	.loc 1 534 0
	mov	%d15, 13
	st.b	[%a12] lo:TLE9180_u8Mode, %d15
	j	.L64
.LVL212:
.L54:
.LBE781:
.LBE780:
.LBE779:
.LBE778:
.LBE782:
.LBE918:
	.loc 1 356 0
	st.h	[%a15] lo:TLE9180_u16ErrPinChkCnt, %d2
.LBB919:
.LBB920:
	.loc 1 937 0
	mov	%d15, 21
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d15
.LVL213:
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	movh	%d2, hi:TLE9180_au32StateRegs
	mov	%d15, 0
	addi	%d2, %d2, lo:TLE9180_au32StateRegs
	.loc 1 941 0
	mov.aa	%a5, %a4
	lea	%a15, 20
.LVL214:
.L55:
	sh	%d3, %d15, 2
	mov.a	%a2, %d3
	add	%d15, 1
.LVL215:
	add.a	%a3, %a4, %a2
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d3, [%a2]0
	st.w	[%a3]0, %d3
	.loc 1 939 0
	loop	%a15, .L55
.LVL216:
.LBB921:
.LBB922:
	.loc 1 999 0
	movh.a	%a2, hi:TLE9180_xTsParam
	lea	%a2, [%a2] lo:TLE9180_xTsParam
	.loc 1 1000 0
	st.w	[%a2] 8, %d15
	.loc 1 1002 0
	movh	%d15, hi:TLE9180_au32ErrRegsReadFrame
.LVL217:
	addi	%d15, %d15, lo:TLE9180_au32ErrRegsReadFrame
	.loc 1 999 0
	mov	%d2, 0
	.loc 1 1001 0
	st.a	[%a2] 12, %a5
	.loc 1 1002 0
	st.w	[%a2] 16, %d15
.LVL218:
	.loc 1 999 0
	st.w	[%a2] 4, %d2
.LBE922:
.LBE921:
.LBB923:
.LBB924:
	.loc 1 992 0
	mov	%d15, 7
	j	.L99
.LVL219:
.L49:
.LBE924:
.LBE923:
.LBE920:
.LBE919:
.LBB925:
.LBB916:
	.loc 1 925 0
	mov	%d2, 1
	movh.a	%a15, hi:TLE9180_u8SpiTxFrameMaxNb
	st.b	[%a15] lo:TLE9180_u8SpiTxFrameMaxNb, %d2
.LVL220:
	.loc 1 926 0
	movh.a	%a15, hi:TLE9180_u8WriteData
.LBB908:
.LBB909:
	.loc 1 1047 0
	ld.bu	%d2, [%a15] lo:TLE9180_u8WriteData
	.loc 1 1046 0
	and	%d5, %d5, 127
.LVL221:
	.loc 1 1047 0
	sh	%d2, %d2, 8
	insert	%d3, %d2, 15, 23, 1
	.loc 1 1046 0
	sh	%d5, %d5, 16
	.loc 1 1047 0
	or	%d2, %d3, %d5
.LVL222:
	.loc 1 1050 0
	sh	%d3, %d2, -16
	st.b	[%SP] 5, %d3
.LVL223:
.LBB910:
.LBB911:
	.loc 1 1064 0
	not	%d3
	and	%d4, %d3, 255
.LVL224:
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d7
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d7, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d7
	.loc 1 1076 0
	sh	%d6, %d4, 1
	xor	%d3, %d6, 96
	and	%d7, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d6, 255
	seln	%d3, %d4, %d3, %d7
	.loc 1 1076 0
	sh	%d6, %d3, 1
	xor	%d5, %d6, 96
	and	%d7, %d5, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d5, %d6, 255
	seln	%d5, %d3, %d5, %d7
	.loc 1 1076 0
	sh	%d6, %d5, 1
	xor	%d4, %d6, 96
	and	%d7, %d4, 254
	sh	%d5, -7
	.loc 1 1078 0
	and	%d4, %d6, 255
	seln	%d4, %d5, %d4, %d7
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d4, %d3, 1
	xor	%d5, %d4, 96
	and	%d5, %d5, 254
	.loc 1 1078 0
	and	%d4, %d4, 255
	sh	%d3, -7
	seln	%d3, %d3, %d4, %d5
.LVL225:
.LBE911:
.LBE910:
	.loc 1 1048 0
	st.b	[%SP] 7, %d15
	.loc 1 1049 0
	sh	%d15, %d2, -8
	st.b	[%SP] 6, %d15
.LBB913:
.LBB912:
	.loc 1 1064 0
	xor	%d15, %d3
	and	%d15, 255
.LVL226:
	.loc 1 1076 0
	sh	%d5, %d15, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d15, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d15, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d15, %d5, 96
	and	%d6, %d15, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d15, %d5, 255
	seln	%d15, %d3, %d15, %d6
	.loc 1 1076 0
	sh	%d5, %d15, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d15, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d15, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
.LVL227:
	.loc 1 1064 0
	seln	%d3, %d4, %d3, %d6
.LVL228:
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d15, %d5, 96
	and	%d6, %d15, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d15, %d5, 255
	seln	%d15, %d3, %d15, %d6
	.loc 1 1076 0
	sh	%d5, %d15, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d15, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d15, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d5, %d3, 1
	xor	%d15, %d5, 96
	and	%d6, %d15, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d15, %d5, 255
	seln	%d15, %d3, %d15, %d6
	.loc 1 1076 0
	sh	%d5, %d15, 1
	xor	%d4, %d5, 96
	and	%d6, %d4, 254
	sh	%d15, -7
	.loc 1 1078 0
	and	%d4, %d5, 255
	seln	%d4, %d15, %d4, %d6
	.loc 1 1076 0
	sh	%d5, %d4, 1
	xor	%d3, %d5, 96
	and	%d6, %d3, 254
	sh	%d4, -7
	.loc 1 1078 0
	and	%d3, %d5, 255
	seln	%d3, %d4, %d3, %d6
	.loc 1 1076 0
	sh	%d4, %d3, 1
	xor	%d15, %d4, 96
	and	%d5, %d15, 254
	sh	%d3, -7
	.loc 1 1078 0
	and	%d15, %d4, 255
	seln	%d15, %d3, %d15, %d5
	.loc 1 1076 0
	sh	%d3, %d15, 1
	xor	%d4, %d3, 96
	and	%d4, %d4, 254
	.loc 1 1078 0
	and	%d3, %d3, 255
.LVL229:
	sh	%d15, -7
	.loc 1 1081 0
	seln	%d15, %d15, %d3, %d4
.LBE912:
.LBE913:
	.loc 1 1052 0
	sh	%d15, -5
.LBE909:
.LBE908:
	.loc 1 926 0
	movh.a	%a15, hi:TLE9180_au32SpiWriteFrame
.LBB915:
.LBB914:
	.loc 1 1052 0
	or	%d2, %d15
.LVL230:
.LBE914:
.LBE915:
	.loc 1 926 0
	st.w	[%a15] lo:TLE9180_au32SpiWriteFrame, %d2
	mov	%d15, 1
	lea	%a4, [%a15] lo:TLE9180_au32SpiWriteFrame
	j	.L51
.LBE916:
.LBE925:
.LFE5:
	.size	TLE9180_vidMainFunction, .-TLE9180_vidMainFunction
	.align 1
	.global	TLE9180_bIsWorkModeNormal
	.type	TLE9180_bIsWorkModeNormal, @function
TLE9180_bIsWorkModeNormal:
.LFB6:
	.loc 1 510 0
.LVL231:
	.loc 1 513 0
	movh.a	%a15, hi:TLE9180_u8Mode
	ld.bu	%d2, [%a15] lo:TLE9180_u8Mode
	.loc 1 523 0
	eq	%d2, %d2, 4
	ret
.LFE6:
	.size	TLE9180_bIsWorkModeNormal, .-TLE9180_bIsWorkModeNormal
.section .bss.a4.TLE9180_xTsParam,"aw",@nobits
	.align 2
	.type	TLE9180_xTsParam, @object
	.size	TLE9180_xTsParam, 20
TLE9180_xTsParam:
	.zero	20
.section .bss.a1.TLE9180_u8ComState,"aw",@nobits
	.type	TLE9180_u8ComState, @object
	.size	TLE9180_u8ComState, 1
TLE9180_u8ComState:
	.zero	1
.section .bss.a1.TLE9180_u8TgtMode,"aw",@nobits
	.type	TLE9180_u8TgtMode, @object
	.size	TLE9180_u8TgtMode, 1
TLE9180_u8TgtMode:
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
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.byte	0x4
	.uaword	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.byte	0x4
	.uaword	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h"
	.file 6 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
	.file 7 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x33f0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1ba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1d6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"sint16"
	.byte	0x3
	.byte	0x56
	.uaword	0x1f5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x210
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x234
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.string	"sint64"
	.byte	0x3
	.byte	0x65
	.uaword	0x249
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x268
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"uint64"
	.byte	0x3
	.byte	0x6f
	.uaword	0x286
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x2af
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1d6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1c9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25a
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x14
	.uaword	0x34b
	.uleb128 0x6
	.string	"eCDD_WRITE_DONE"
	.sleb128 0
	.uleb128 0x6
	.string	"eCDD_WRTIE_CONTINUE"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"CDD_eTransState"
	.byte	0x5
	.byte	0x17
	.uaword	0x31a
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x19
	.uaword	0x38a
	.uleb128 0x6
	.string	"eCDD_PIN_LOW"
	.sleb128 0
	.uleb128 0x6
	.string	"eCDD_PIN_HIGH"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"CDD_ePinLevel"
	.byte	0x5
	.byte	0x1c
	.uaword	0x362
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.uaword	0x433
	.uleb128 0x8
	.string	"u8Ptr"
	.byte	0x5
	.byte	0x1f
	.uaword	0x433
	.uleb128 0x8
	.string	"u16Ptr"
	.byte	0x5
	.byte	0x20
	.uaword	0x439
	.uleb128 0x8
	.string	"u32Ptr"
	.byte	0x5
	.byte	0x21
	.uaword	0x314
	.uleb128 0x8
	.string	"u64Ptr"
	.byte	0x5
	.byte	0x22
	.uaword	0x43f
	.uleb128 0x8
	.string	"s8Ptr"
	.byte	0x5
	.byte	0x23
	.uaword	0x445
	.uleb128 0x8
	.string	"s16Ptr"
	.byte	0x5
	.byte	0x24
	.uaword	0x44b
	.uleb128 0x8
	.string	"s32Ptr"
	.byte	0x5
	.byte	0x25
	.uaword	0x451
	.uleb128 0x8
	.string	"s64Ptr"
	.byte	0x5
	.byte	0x26
	.uaword	0x457
	.uleb128 0x8
	.string	"f32Ptr"
	.byte	0x5
	.byte	0x27
	.uaword	0x45d
	.uleb128 0x8
	.string	"kf32Ptr"
	.byte	0x5
	.byte	0x28
	.uaword	0x463
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x202
	.uleb128 0x4
	.byte	0x4
	.uaword	0x278
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1ad
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1e7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x226
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x469
	.uleb128 0x9
	.uaword	0x2a0
	.uleb128 0x2
	.string	"CDD_uCTablePtr"
	.byte	0x5
	.byte	0x29
	.uaword	0x484
	.uleb128 0xa
	.uaword	0x39f
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x14
	.byte	0x5
	.byte	0x2b
	.uaword	0x4f8
	.uleb128 0xc
	.string	"eState"
	.byte	0x5
	.byte	0x2c
	.uaword	0x34b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u32TransLen"
	.byte	0x5
	.byte	0x2d
	.uaword	0x25a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"u32TotalLen"
	.byte	0x5
	.byte	0x2e
	.uaword	0x25a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"uSrcPtr"
	.byte	0x5
	.byte	0x2f
	.uaword	0x46e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"uDestPtr"
	.byte	0x5
	.byte	0x30
	.uaword	0x46e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x5
	.byte	0x31
	.uaword	0x489
	.uleb128 0x5
	.byte	0x1
	.byte	0x1
	.byte	0x27
	.uaword	0x67a
	.uleb128 0x6
	.string	"TLE9180_MODE_INIT"
	.sleb128 0
	.uleb128 0x6
	.string	"TLE9180_MODE_INIT_CHECK"
	.sleb128 1
	.uleb128 0x6
	.string	"TLE9180_SELF_TEST"
	.sleb128 2
	.uleb128 0x6
	.string	"TLE9180_WAIT_PWM_READY"
	.sleb128 3
	.uleb128 0x6
	.string	"TLE9180_MODE_NORMAL"
	.sleb128 4
	.uleb128 0x6
	.string	"TLE9180_MODE_SAFEOFF"
	.sleb128 5
	.uleb128 0x6
	.string	"TLE9180_MODE_ERR_FOUND"
	.sleb128 6
	.uleb128 0x6
	.string	"TLE9180_MODE_ERR_COUNT"
	.sleb128 7
	.uleb128 0x6
	.string	"TLE9180_MODE_ERR_TRY_CLEAR"
	.sleb128 8
	.uleb128 0x6
	.string	"TLE9180_MODE_ERR_RECOVER"
	.sleb128 9
	.uleb128 0x6
	.string	"TLE9180_MODE_FAULT_STT"
	.sleb128 10
	.uleb128 0x6
	.string	"TLE9180_MODE_REINIT"
	.sleb128 11
	.uleb128 0x6
	.string	"TLE9180_MODE_PRE_REINIT"
	.sleb128 12
	.uleb128 0x6
	.string	"TLE9180_MODE_COM_ONGOING"
	.sleb128 13
	.uleb128 0x6
	.string	"TLE9180_MODE_INVALID"
	.sleb128 255
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x1
	.byte	0x3a
	.uaword	0x748
	.uleb128 0x6
	.string	"TLE9180_SELFTST_IDLE"
	.sleb128 0
	.uleb128 0x6
	.string	"TLE9180_SELFTST_START"
	.sleb128 1
	.uleb128 0x6
	.string	"TLE9180_SELFTST_CHKMOD"
	.sleb128 2
	.uleb128 0x6
	.string	"TLE9180_SELFTST_SCD_HS"
	.sleb128 3
	.uleb128 0x6
	.string	"TLE9180_SELFTST_SCD_LS"
	.sleb128 4
	.uleb128 0x6
	.string	"TLE9180_SELFTST_VREG_OP"
	.sleb128 5
	.uleb128 0x6
	.string	"TLE9180_SELFTST_FINISH"
	.sleb128 6
	.uleb128 0x6
	.string	"TLE9180_SELFTST_RDMOD"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x1
	.byte	0x45
	.uaword	0x7a5
	.uleb128 0x6
	.string	"TLE9180_COM_IDLE"
	.sleb128 0
	.uleb128 0x6
	.string	"TLE9180_COM_START"
	.sleb128 1
	.uleb128 0x6
	.string	"TLE9180_COM_EXTRACT_DATA"
	.sleb128 2
	.uleb128 0x6
	.string	"TLE9180_COM_END"
	.sleb128 3
	.byte	0
	.uleb128 0xe
	.string	"TLE9180_vidJumpToState"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.byte	0x3
	.uaword	0x7d8
	.uleb128 0xf
	.string	"ku8State"
	.byte	0x1
	.uahalf	0x214
	.uaword	0x7d8
	.byte	0
	.uleb128 0x9
	.uaword	0x1c9
	.uleb128 0xe
	.string	"TLE9180_vidGenTransParam"
	.byte	0x1
	.uahalf	0x3e5
	.byte	0x1
	.byte	0x1
	.uaword	0x83b
	.uleb128 0xf
	.string	"kpku32SrcBuf"
	.byte	0x1
	.uahalf	0x3e5
	.uaword	0x83b
	.uleb128 0xf
	.string	"kpu32DestBuf"
	.byte	0x1
	.uahalf	0x3e5
	.uaword	0x84b
	.uleb128 0xf
	.string	"ku32Num"
	.byte	0x1
	.uahalf	0x3e5
	.uaword	0x846
	.byte	0
	.uleb128 0x9
	.uaword	0x840
	.uleb128 0x4
	.byte	0x4
	.uaword	0x846
	.uleb128 0x9
	.uaword	0x25a
	.uleb128 0x9
	.uaword	0x314
	.uleb128 0xe
	.string	"TLE9180_vidTrigCom"
	.byte	0x1
	.uahalf	0x3de
	.byte	0x1
	.byte	0x3
	.uaword	0x882
	.uleb128 0xf
	.string	"ku8TgtState"
	.byte	0x1
	.uahalf	0x3de
	.uaword	0x7d8
	.byte	0
	.uleb128 0x10
	.string	"TLE9180_CalculateCRC8"
	.byte	0x1
	.uahalf	0x43c
	.byte	0x1
	.uaword	0x1c9
	.byte	0x1
	.uaword	0x8f2
	.uleb128 0xf
	.string	"Crc_DataPtr"
	.byte	0x1
	.uahalf	0x43c
	.uaword	0x8f2
	.uleb128 0xf
	.string	"Crc_Length"
	.byte	0x1
	.uahalf	0x43c
	.uaword	0x25a
	.uleb128 0x11
	.string	"Crc_StartValue8"
	.byte	0x1
	.uahalf	0x43e
	.uaword	0x1c9
	.uleb128 0x12
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.uahalf	0x442
	.uaword	0x1c9
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7d8
	.uleb128 0x13
	.string	"TLE9180_bHalIsComEnd"
	.byte	0x2
	.byte	0x5c
	.byte	0x1
	.uaword	0x2c2
	.byte	0x3
	.uaword	0x939
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x2
	.byte	0x5c
	.uaword	0x939
	.uleb128 0x15
	.string	"bReadResult"
	.byte	0x2
	.byte	0x5e
	.uaword	0x2c2
	.byte	0
	.uleb128 0x9
	.uaword	0x93e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4f8
	.uleb128 0x13
	.string	"TLE9180_bHalSpiWrite"
	.byte	0x2
	.byte	0x6a
	.byte	0x1
	.uaword	0x2c2
	.byte	0x3
	.uaword	0x981
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x2
	.byte	0x6a
	.uaword	0x939
	.uleb128 0x15
	.string	"bRetVal"
	.byte	0x2
	.byte	0x6c
	.uaword	0x2c2
	.byte	0
	.uleb128 0x16
	.string	"TLE9180_vidHalSpiInit"
	.byte	0x2
	.byte	0x57
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"TLE9180_CalculateCRC3"
	.byte	0x1
	.uahalf	0x421
	.byte	0x1
	.uaword	0x1c9
	.byte	0x1
	.uaword	0x9fd
	.uleb128 0xf
	.string	"message"
	.byte	0x1
	.uahalf	0x421
	.uaword	0x433
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.uahalf	0x421
	.uaword	0x1c9
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.uahalf	0x423
	.uaword	0x1c9
	.uleb128 0x11
	.string	"N"
	.byte	0x1
	.uahalf	0x424
	.uaword	0x1c9
	.uleb128 0x11
	.string	"crc"
	.byte	0x1
	.uahalf	0x425
	.uaword	0x1c9
	.byte	0
	.uleb128 0x10
	.string	"TLE9180_u32CalcReadReg"
	.byte	0x1
	.uahalf	0x3f5
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0xa62
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x3f5
	.uaword	0x1c9
	.uleb128 0xf
	.string	"u8Data"
	.byte	0x1
	.uahalf	0x3f5
	.uaword	0x1c9
	.uleb128 0x11
	.string	"crc"
	.byte	0x1
	.uahalf	0x3f7
	.uaword	0x1c9
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0xa62
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x25a
	.byte	0
	.uleb128 0x19
	.uaword	0x1c9
	.uaword	0xa72
	.uleb128 0x1a
	.uaword	0x308
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"TLE9180_vidLoadCfgToRegs"
	.byte	0x1
	.uahalf	0x29c
	.byte	0x1
	.byte	0x3
	.uaword	0xaae
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x29e
	.uaword	0x1c9
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x1c9
	.byte	0
	.uleb128 0x10
	.string	"TLE9180_u32CalcWriteReg"
	.byte	0x1
	.uahalf	0x40f
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0xb14
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x1c9
	.uleb128 0xf
	.string	"u8Data"
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x1c9
	.uleb128 0x11
	.string	"crc"
	.byte	0x1
	.uahalf	0x411
	.uaword	0x1c9
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x412
	.uaword	0xa62
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x413
	.uaword	0x25a
	.byte	0
	.uleb128 0x1b
	.string	"TLE9180_vidCalcStateRegs"
	.byte	0x1
	.uahalf	0x2e7
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.byte	0x1
	.string	"TLE9180_vidInit"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x178d
	.uleb128 0x1d
	.uaword	0x981
	.uaword	.LBB275
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb1
	.uaword	0xb7c
	.uleb128 0x1e
	.uaword	.LVL0
	.uaword	0x3271
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xa72
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.byte	0xb7
	.uaword	0x1191
	.uleb128 0x21
	.uaword	.LBB280
	.uaword	.LBE280
	.uleb128 0x22
	.uaword	0xa95
	.uleb128 0x23
	.uaword	0xaa1
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	0x882
	.uaword	.LBB281
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0xbec
	.uleb128 0x25
	.uaword	0x8ba
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	0x8a6
	.uaword	.LLST3
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.uaword	0x8cd
	.uaword	.LLST4
	.uleb128 0x21
	.uaword	.LBB283
	.uaword	.LBE283
	.uleb128 0x27
	.uaword	0x8e6
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB286
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0xc2a
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x41
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x1
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x814104
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB290
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0xc68
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x1
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x2
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x2
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x820102
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB294
	.uaword	.LBE294
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0xcaa
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x38
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x5
	.uleb128 0x21
	.uaword	.LBB295
	.uaword	.LBE295
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x6
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x853806
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB296
	.uaword	.LBE296
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0xcec
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x34
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x6
	.uleb128 0x21
	.uaword	.LBB297
	.uaword	.LBE297
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x863404
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB298
	.uaword	.LBE298
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0xd2f
	.uleb128 0x2c
	.uaword	0xae0
	.sleb128 -102
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x7
	.uleb128 0x21
	.uaword	.LBB299
	.uaword	.LBE299
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x6
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x879a06
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0xd72
	.uleb128 0x2c
	.uaword	0xae0
	.sleb128 -78
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x8
	.uleb128 0x21
	.uaword	.LBB301
	.uaword	.LBE301
	.uleb128 0x27
	.uaword	0xaef
	.byte	0
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x88b200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB302
	.uaword	.LBE302
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0xdb4
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x72
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x9
	.uleb128 0x21
	.uaword	.LBB303
	.uaword	.LBE303
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x897204
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB304
	.uaword	.LBE304
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0xdf6
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x2a
	.uleb128 0x28
	.uaword	0xad4
	.byte	0xa
	.uleb128 0x21
	.uaword	.LBB305
	.uaword	.LBE305
	.uleb128 0x27
	.uaword	0xaef
	.byte	0
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x8a2a00
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB306
	.uaword	.LBE306
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0xe38
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x4a
	.uleb128 0x28
	.uaword	0xad4
	.byte	0xb
	.uleb128 0x21
	.uaword	.LBB307
	.uaword	.LBE307
	.uleb128 0x27
	.uaword	0xaef
	.byte	0
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x8b4a00
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB308
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0xebc
	.uleb128 0x2d
	.uaword	0xae0
	.uleb128 0x28
	.uaword	0xad4
	.byte	0
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST5
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST6
	.uleb128 0x2e
	.uaword	0x99c
	.uaword	.LBB310
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x41b
	.uleb128 0x25
	.uaword	0x9d0
	.uaword	.LLST7
	.uleb128 0x25
	.uaword	0x9c0
	.uaword	.LLST8
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x23
	.uaword	0x9dc
	.uaword	.LLST9
	.uleb128 0x23
	.uaword	0x9e6
	.uaword	.LLST10
	.uleb128 0x23
	.uaword	0x9f0
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB317
	.uaword	.LBE317
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0xeff
	.uleb128 0x2c
	.uaword	0xae0
	.sleb128 -65
	.uleb128 0x28
	.uaword	0xad4
	.byte	0xf
	.uleb128 0x21
	.uaword	.LBB318
	.uaword	.LBE318
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x6
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x8fbf06
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x1
	.uahalf	0x2d2
	.uaword	0xf41
	.uleb128 0x2c
	.uaword	0xae0
	.sleb128 -1
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x10
	.uleb128 0x21
	.uaword	.LBB320
	.uaword	.LBE320
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x90ff04
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x1
	.uahalf	0x2d3
	.uaword	0xf83
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x3
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x13
	.uleb128 0x21
	.uaword	.LBB322
	.uaword	.LBE322
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0x930304
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0xfc5
	.uleb128 0x28
	.uaword	0xae0
	.byte	0
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x20
	.uleb128 0x21
	.uaword	.LBB324
	.uaword	.LBE324
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x2
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa00002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB325
	.uaword	.LBE325
	.byte	0x1
	.uahalf	0x2d6
	.uaword	0x1007
	.uleb128 0x28
	.uaword	0xae0
	.byte	0
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x21
	.uleb128 0x21
	.uaword	.LBB326
	.uaword	.LBE326
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x6
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa10006
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x1
	.uahalf	0x2d7
	.uaword	0x1049
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x7e
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x25
	.uleb128 0x21
	.uaword	.LBB328
	.uaword	.LBE328
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x2
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa57e02
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB329
	.uaword	.LBE329
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x108b
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x7e
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x26
	.uleb128 0x21
	.uaword	.LBB330
	.uaword	.LBE330
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x6
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa67e06
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x1
	.uahalf	0x2d9
	.uaword	0x10cd
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x7e
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x27
	.uleb128 0x21
	.uaword	.LBB332
	.uaword	.LBE332
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x2
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa77e02
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB333
	.uaword	.LBE333
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x110f
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x7e
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x28
	.uleb128 0x21
	.uaword	.LBB334
	.uaword	.LBE334
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa87e04
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB335
	.uaword	.LBE335
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x1151
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x7e
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x29
	.uleb128 0x21
	.uaword	.LBB336
	.uaword	.LBE336
	.uleb128 0x27
	.uaword	0xaef
	.byte	0
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xa97e00
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xaae
	.uaword	.LBB337
	.uaword	.LBE337
	.byte	0x1
	.uahalf	0x2dc
	.uleb128 0x28
	.uaword	0xae0
	.byte	0x7e
	.uleb128 0x28
	.uaword	0xad4
	.byte	0x2a
	.uleb128 0x21
	.uaword	.LBB338
	.uaword	.LBE338
	.uleb128 0x27
	.uaword	0xaef
	.byte	0x4
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xb07
	.uaword	0xaa7e04
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xb14
	.uaword	.LBB342
	.uaword	.LBE342
	.byte	0x1
	.byte	0xb8
	.uaword	0x1703
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB344
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0x11e2
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x40
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x6
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x400006
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB348
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x1220
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x41
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xb8
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x2
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x410002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB352
	.uaword	.LBE352
	.byte	0x1
	.uahalf	0x2eb
	.uaword	0x1262
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x42
	.uleb128 0x21
	.uaword	.LBB353
	.uaword	.LBE353
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x6
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x420006
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB354
	.uaword	.LBE354
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0x12a4
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x43
	.uleb128 0x21
	.uaword	.LBB355
	.uaword	.LBE355
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x2
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x430002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB356
	.uaword	.LBE356
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x12e6
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x44
	.uleb128 0x21
	.uaword	.LBB357
	.uaword	.LBE357
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x440000
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB358
	.uaword	.LBE358
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0x1328
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x45
	.uleb128 0x21
	.uaword	.LBB359
	.uaword	.LBE359
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x4
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x450004
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB360
	.uaword	.LBE360
	.byte	0x1
	.uahalf	0x2ef
	.uaword	0x136a
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x46
	.uleb128 0x21
	.uaword	.LBB361
	.uaword	.LBE361
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x460000
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB362
	.uaword	.LBE362
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0x13ac
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x47
	.uleb128 0x21
	.uaword	.LBB363
	.uaword	.LBE363
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x4
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x470004
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB364
	.uaword	.LBE364
	.byte	0x1
	.uahalf	0x2f1
	.uaword	0x13ee
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x48
	.uleb128 0x21
	.uaword	.LBB365
	.uaword	.LBE365
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x2
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x480002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB366
	.uaword	.LBE366
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x1430
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x49
	.uleb128 0x21
	.uaword	.LBB367
	.uaword	.LBE367
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x6
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x490006
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB368
	.uaword	.LBE368
	.byte	0x1
	.uahalf	0x2f3
	.uaword	0x1472
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x4a
	.uleb128 0x21
	.uaword	.LBB369
	.uaword	.LBE369
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x2
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x4a0002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB370
	.uaword	.LBE370
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0x14b4
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x4b
	.uleb128 0x21
	.uaword	.LBB371
	.uaword	.LBE371
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x6
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x4b0006
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB372
	.uaword	.LBE372
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x14f6
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x4c
	.uleb128 0x21
	.uaword	.LBB373
	.uaword	.LBE373
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x4
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x4c0004
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB374
	.uaword	.LBE374
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x1538
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x4d
	.uleb128 0x21
	.uaword	.LBB375
	.uaword	.LBE375
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x4d0000
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB376
	.uaword	.LBE376
	.byte	0x1
	.uahalf	0x2f7
	.uaword	0x157a
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x5a
	.uleb128 0x21
	.uaword	.LBB377
	.uaword	.LBE377
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x4
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x5a0004
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB378
	.uaword	.LBE378
	.byte	0x1
	.uahalf	0x2f8
	.uaword	0x15bc
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x5b
	.uleb128 0x21
	.uaword	.LBB379
	.uaword	.LBE379
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x5b0000
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB380
	.uaword	.LBE380
	.byte	0x1
	.uahalf	0x2f9
	.uaword	0x15fe
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x5c
	.uleb128 0x21
	.uaword	.LBB381
	.uaword	.LBE381
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x2
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x5c0002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB382
	.uaword	.LBE382
	.byte	0x1
	.uahalf	0x2fa
	.uaword	0x1640
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x5d
	.uleb128 0x21
	.uaword	.LBB383
	.uaword	.LBE383
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x6
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x5d0006
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0x1
	.uahalf	0x2fb
	.uaword	0x1682
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x5e
	.uleb128 0x21
	.uaword	.LBB385
	.uaword	.LBE385
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x2
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x5e0002
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB386
	.uaword	.LBE386
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x16c4
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x5f
	.uleb128 0x21
	.uaword	.LBB387
	.uaword	.LBE387
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0x6
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x5f0006
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x9fd
	.uaword	.LBB388
	.uaword	.LBE388
	.byte	0x1
	.uahalf	0x2fe
	.uleb128 0x28
	.uaword	0xa2e
	.byte	0
	.uleb128 0x28
	.uaword	0xa22
	.byte	0x32
	.uleb128 0x21
	.uaword	.LBB389
	.uaword	.LBE389
	.uleb128 0x27
	.uaword	0xa3d
	.byte	0
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0xa55
	.uaword	0x320000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x7dd
	.uaword	.LBB390
	.uaword	.LBE390
	.byte	0x1
	.byte	0xba
	.uaword	0x1727
	.uleb128 0x28
	.uaword	0x82a
	.byte	0x15
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x20
	.uaword	0x850
	.uaword	.LBB392
	.uaword	.LBE392
	.byte	0x1
	.byte	0xbb
	.uaword	0x1757
	.uleb128 0x2d
	.uaword	0x86d
	.uleb128 0x2f
	.uaword	0x7a5
	.uaword	.LBB394
	.uaword	.LBE394
	.byte	0x1
	.uahalf	0x3e2
	.uleb128 0x28
	.uaword	0x7c6
	.byte	0xd
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL1
	.uaword	0x3292
	.uaword	0x176a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL2
	.uaword	0x32c1
	.uaword	0x177d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL3
	.uaword	0x32eb
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"TLE9180_vidReadCfgRegs"
	.byte	0x1
	.uahalf	0x307
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"TLE9180_vidReinit"
	.byte	0x1
	.uahalf	0x282
	.byte	0x1
	.byte	0x1
	.uaword	0x17df
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x284
	.uaword	0x1c9
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x285
	.uaword	0x1c9
	.byte	0
	.uleb128 0xe
	.string	"TLE9180_vidSelfTestMng"
	.byte	0x1
	.uahalf	0x32d
	.byte	0x1
	.byte	0x1
	.uaword	0x182c
	.uleb128 0xf
	.string	"u8SelfTestStep"
	.byte	0x1
	.uahalf	0x32d
	.uaword	0x7d8
	.uleb128 0x11
	.string	"bLocSendFlg"
	.byte	0x1
	.uahalf	0x32f
	.uaword	0x2c2
	.byte	0
	.uleb128 0xe
	.string	"TLE9180_vidTstWriteReg"
	.byte	0x1
	.uahalf	0x38e
	.byte	0x1
	.byte	0x1
	.uaword	0x185a
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x390
	.uaword	0x1c9
	.byte	0
	.uleb128 0x1b
	.string	"TLE9180_vidTstReadReg"
	.byte	0x1
	.uahalf	0x384
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"TLE9180_vidReadErrRegs"
	.byte	0x1
	.uahalf	0x3a5
	.byte	0x1
	.byte	0x1
	.uaword	0x18a2
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.uahalf	0x3a7
	.uaword	0x1c9
	.byte	0
	.uleb128 0xe
	.string	"TLE9180_vidGetErrFlagFromSpiBuf"
	.byte	0x1
	.uahalf	0x219
	.byte	0x1
	.byte	0x1
	.uaword	0x18e1
	.uleb128 0x11
	.string	"LoccalIndex"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x1c9
	.byte	0
	.uleb128 0x10
	.string	"TLE9180_bComMainfunction"
	.byte	0x1
	.uahalf	0x3b4
	.byte	0x1
	.uaword	0x2c2
	.byte	0x1
	.uaword	0x1915
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3b6
	.uaword	0x2c2
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"TLE9180_vidMainFunction"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LLST12
	.byte	0x1
	.uaword	0x2be6
	.uleb128 0x31
	.string	"u8LocIdx"
	.byte	0x1
	.byte	0xc0
	.uaword	0x1c9
	.uaword	.LLST13
	.uleb128 0x15
	.string	"bTcuReadySts"
	.byte	0x1
	.byte	0xc1
	.uaword	0x2c2
	.uleb128 0x31
	.string	"bPwmReadySts"
	.byte	0x1
	.byte	0xc2
	.uaword	0x2c2
	.uaword	.LLST14
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0xd0
	.uaword	0x19dd
	.uleb128 0x33
	.string	"bBatIsNormal"
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x2c2
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB638
	.uaword	.LBE638
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x19c3
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST16
	.byte	0
	.uleb128 0x34
	.uaword	.LVL66
	.uaword	0x3316
	.uleb128 0x35
	.uaword	.LVL68
	.byte	0x1
	.uaword	0x32c1
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB641
	.uaword	.LBE641
	.byte	0x1
	.uahalf	0x128
	.uaword	0x19fb
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST17
	.byte	0
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB643
	.uaword	.LBE643
	.byte	0x1
	.uahalf	0x135
	.uaword	0x1a19
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST18
	.byte	0
	.uleb128 0x24
	.uaword	0x18a2
	.uaword	.LBB645
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1a3d
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x23
	.uaword	0x18cc
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB649
	.uaword	.LBE649
	.byte	0x1
	.uahalf	0x176
	.uaword	0x1a5b
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST20
	.byte	0
	.uleb128 0x20
	.uaword	0x178d
	.uaword	.LBB651
	.uaword	.LBE651
	.byte	0x1
	.byte	0xd0
	.uaword	0x211e
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB653
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x30c
	.uaword	0x1ab5
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST22
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB656
	.uaword	.LBE656
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x1b00
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST26
	.uleb128 0x21
	.uaword	.LBB657
	.uaword	.LBE657
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB658
	.uaword	.LBE658
	.byte	0x1
	.uahalf	0x30e
	.uaword	0x1b4b
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST30
	.uleb128 0x21
	.uaword	.LBB659
	.uaword	.LBE659
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB660
	.uaword	.LBE660
	.byte	0x1
	.uahalf	0x30f
	.uaword	0x1b96
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST27
	.uleb128 0x21
	.uaword	.LBB661
	.uaword	.LBE661
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB662
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x30b
	.uaword	0x1c25
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST37
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST37
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST39
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST39
	.uleb128 0x2f
	.uaword	0x99c
	.uaword	.LBB664
	.uaword	.LBE664
	.byte	0x1
	.uahalf	0x401
	.uleb128 0x25
	.uaword	0x9d0
	.uaword	.LLST41
	.uleb128 0x25
	.uaword	0x9c0
	.uaword	.LLST42
	.uleb128 0x21
	.uaword	.LBB665
	.uaword	.LBE665
	.uleb128 0x23
	.uaword	0x9dc
	.uaword	.LLST43
	.uleb128 0x23
	.uaword	0x9e6
	.uaword	.LLST43
	.uleb128 0x23
	.uaword	0x9f0
	.uaword	.LLST45
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB668
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x310
	.uaword	0x1c6c
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST47
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x140
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB674
	.uaword	.LBE674
	.byte	0x1
	.uahalf	0x311
	.uaword	0x1cb7
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST48
	.uleb128 0x21
	.uaword	.LBB675
	.uaword	.LBE675
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB676
	.uaword	.LBE676
	.byte	0x1
	.uahalf	0x312
	.uaword	0x1d02
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST55
	.uleb128 0x21
	.uaword	.LBB677
	.uaword	.LBE677
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB678
	.uaword	.LBE678
	.byte	0x1
	.uahalf	0x313
	.uaword	0x1d4d
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST43
	.uleb128 0x21
	.uaword	.LBB679
	.uaword	.LBE679
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB680
	.uaword	.LBE680
	.byte	0x1
	.uahalf	0x314
	.uaword	0x1d98
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST63
	.uleb128 0x21
	.uaword	.LBB681
	.uaword	.LBE681
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST65
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB682
	.uaword	.LBE682
	.byte	0x1
	.uahalf	0x315
	.uaword	0x1de3
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST67
	.uleb128 0x21
	.uaword	.LBB683
	.uaword	.LBE683
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST69
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB684
	.uaword	.LBE684
	.byte	0x1
	.uahalf	0x316
	.uaword	0x1e2e
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST71
	.uleb128 0x21
	.uaword	.LBB685
	.uaword	.LBE685
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST73
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB686
	.uaword	.LBE686
	.byte	0x1
	.uahalf	0x317
	.uaword	0x1e79
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST75
	.uleb128 0x21
	.uaword	.LBB687
	.uaword	.LBE687
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST77
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB688
	.uaword	.LBE688
	.byte	0x1
	.uahalf	0x318
	.uaword	0x1ec4
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST79
	.uleb128 0x21
	.uaword	.LBB689
	.uaword	.LBE689
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST81
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB690
	.uaword	.LBE690
	.byte	0x1
	.uahalf	0x319
	.uaword	0x1f0f
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST83
	.uleb128 0x21
	.uaword	.LBB691
	.uaword	.LBE691
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB692
	.uaword	.LBE692
	.byte	0x1
	.uahalf	0x31a
	.uaword	0x1f5a
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST87
	.uleb128 0x21
	.uaword	.LBB693
	.uaword	.LBE693
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST89
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9fd
	.uaword	.LBB694
	.uaword	.LBE694
	.byte	0x1
	.uahalf	0x31b
	.uaword	0x1fa5
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST91
	.uleb128 0x21
	.uaword	.LBB695
	.uaword	.LBE695
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB696
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x1
	.uahalf	0x31c
	.uaword	0x1fec
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST95
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST97
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB701
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x320
	.uaword	0x2033
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST98
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST99
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x170
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST98
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST101
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB706
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x207a
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST102
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST103
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x198
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST104
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST105
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB713
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x31e
	.uaword	0x20c1
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST106
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST107
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST108
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST109
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x7dd
	.uaword	.LBB716
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x322
	.uaword	0x20e9
	.uleb128 0x25
	.uaword	0x82a
	.uaword	.LLST110
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x2e
	.uaword	0x850
	.uaword	.LBB727
	.uaword	.Ldebug_ranges0+0x208
	.byte	0x1
	.uahalf	0x323
	.uleb128 0x25
	.uaword	0x86d
	.uaword	.LLST111
	.uleb128 0x2e
	.uaword	0x7a5
	.uaword	.LBB729
	.uaword	.Ldebug_ranges0+0x238
	.byte	0x1
	.uahalf	0x3e2
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x250
	.uaword	0x222e
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x2c2
	.uleb128 0x24
	.uaword	0x18e1
	.uaword	.LBB746
	.uaword	.Ldebug_ranges0+0x268
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x2213
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x268
	.uleb128 0x23
	.uaword	0x1908
	.uaword	.LLST113
	.uleb128 0x2b
	.uaword	0x944
	.uaword	.LBB748
	.uaword	.LBE748
	.byte	0x1
	.uahalf	0x3bc
	.uaword	0x2195
	.uleb128 0x25
	.uaword	0x966
	.uaword	.LLST114
	.uleb128 0x21
	.uaword	.LBB749
	.uaword	.LBE749
	.uleb128 0x23
	.uaword	0x971
	.uaword	.LLST115
	.uleb128 0x1e
	.uaword	.LVL95
	.uaword	0x3338
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x8f8
	.uaword	.LBB750
	.uaword	.LBE750
	.byte	0x1
	.uahalf	0x3be
	.uaword	0x21d5
	.uleb128 0x25
	.uaword	0x91a
	.uaword	.LLST116
	.uleb128 0x21
	.uaword	.LBB751
	.uaword	.LBE751
	.uleb128 0x23
	.uaword	0x925
	.uaword	.LLST117
	.uleb128 0x1e
	.uaword	.LVL96
	.uaword	0x336d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x8f8
	.uaword	.LBB752
	.uaword	.LBE752
	.byte	0x1
	.uahalf	0x3cb
	.uleb128 0x25
	.uaword	0x91a
	.uaword	.LLST118
	.uleb128 0x21
	.uaword	.LBB753
	.uaword	.LBE753
	.uleb128 0x23
	.uaword	0x925
	.uaword	.LLST119
	.uleb128 0x1e
	.uaword	.LVL131
	.uaword	0x336d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x7a5
	.uaword	.LBB756
	.uaword	.LBE756
	.byte	0x1
	.uahalf	0x1b1
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST120
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x7a5
	.uaword	.LBB758
	.uaword	.LBE758
	.byte	0x1
	.byte	0xf1
	.uaword	0x224b
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST121
	.byte	0
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB760
	.uaword	.LBE760
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x2269
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST122
	.byte	0
	.uleb128 0x1d
	.uaword	0x7a5
	.uaword	.LBB762
	.uaword	.Ldebug_ranges0+0x280
	.byte	0x1
	.byte	0xfe
	.uaword	0x2286
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST123
	.byte	0
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB766
	.uaword	.LBE766
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x22a4
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST124
	.byte	0
	.uleb128 0x24
	.uaword	0x17aa
	.uaword	.LBB768
	.uaword	.Ldebug_ranges0+0x298
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x234b
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x298
	.uleb128 0x23
	.uaword	0x17c6
	.uaword	.LLST125
	.uleb128 0x23
	.uaword	0x17d2
	.uaword	.LLST126
	.uleb128 0x24
	.uaword	0x7dd
	.uaword	.LBB770
	.uaword	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x22f7
	.uleb128 0x25
	.uaword	0x82a
	.uaword	.LLST127
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x2b
	.uaword	0x850
	.uaword	.LBB776
	.uaword	.LBE776
	.byte	0x1
	.uahalf	0x298
	.uaword	0x2315
	.uleb128 0x25
	.uaword	0x86d
	.uaword	.LLST128
	.byte	0
	.uleb128 0x2f
	.uaword	0x850
	.uaword	.LBB778
	.uaword	.LBE778
	.byte	0x1
	.uahalf	0x293
	.uleb128 0x25
	.uaword	0x86d
	.uaword	.LLST129
	.uleb128 0x2f
	.uaword	0x7a5
	.uaword	.LBB780
	.uaword	.LBE780
	.byte	0x1
	.uahalf	0x3e2
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST130
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x17df
	.uaword	.LBB783
	.uaword	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.uahalf	0x117
	.uaword	0x265b
	.uleb128 0x25
	.uaword	0x1800
	.uaword	.LLST131
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x2d0
	.uleb128 0x23
	.uaword	0x1817
	.uaword	.LLST132
	.uleb128 0x24
	.uaword	0x850
	.uaword	.LBB785
	.uaword	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.uahalf	0x380
	.uaword	0x23ae
	.uleb128 0x25
	.uaword	0x86d
	.uaword	.LLST133
	.uleb128 0x2f
	.uaword	0x7a5
	.uaword	.LBB787
	.uaword	.LBE787
	.byte	0x1
	.uahalf	0x3e2
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST134
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB792
	.uaword	.Ldebug_ranges0+0x310
	.byte	0x1
	.uahalf	0x36f
	.uaword	0x23f5
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST135
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST136
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x310
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST137
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST138
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB796
	.uaword	.Ldebug_ranges0+0x330
	.byte	0x1
	.uahalf	0x370
	.uaword	0x243c
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST139
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST140
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x330
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST139
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x7dd
	.uaword	.LBB806
	.uaword	.LBE806
	.byte	0x1
	.uahalf	0x37f
	.uaword	0x2464
	.uleb128 0x25
	.uaword	0x82a
	.uaword	.LLST143
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB809
	.uaword	.Ldebug_ranges0+0x358
	.byte	0x1
	.uahalf	0x356
	.uaword	0x24ab
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST144
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST145
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x358
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST146
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST147
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB813
	.uaword	.Ldebug_ranges0+0x370
	.byte	0x1
	.uahalf	0x34e
	.uaword	0x24f2
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST148
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST149
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x370
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST150
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST151
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB817
	.uaword	.Ldebug_ranges0+0x388
	.byte	0x1
	.uahalf	0x35f
	.uaword	0x2539
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST152
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST153
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x388
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST154
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST155
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB823
	.uaword	.Ldebug_ranges0+0x3a8
	.byte	0x1
	.uahalf	0x33b
	.uaword	0x2580
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST156
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST157
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x3a8
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST158
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST159
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB827
	.uaword	.LBE827
	.byte	0x1
	.uahalf	0x33c
	.uaword	0x25cb
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST160
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST161
	.uleb128 0x21
	.uaword	.LBB828
	.uaword	.LBE828
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST162
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST163
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xaae
	.uaword	.LBB829
	.uaword	.LBE829
	.byte	0x1
	.uahalf	0x33d
	.uaword	0x2616
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST164
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST165
	.uleb128 0x21
	.uaword	.LBB830
	.uaword	.LBE830
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST166
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST167
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0xaae
	.uaword	.LBB831
	.uaword	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.uahalf	0x367
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST168
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST169
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x3c0
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST170
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST171
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x7a5
	.uaword	.LBB837
	.uaword	.LBE837
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x2679
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST172
	.byte	0
	.uleb128 0x2b
	.uaword	0x185a
	.uaword	.LBB840
	.uaword	.LBE840
	.byte	0x1
	.uahalf	0x147
	.uaword	0x279e
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB842
	.uaword	.Ldebug_ranges0+0x3d8
	.byte	0x1
	.uahalf	0x387
	.uaword	0x2718
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST173
	.uleb128 0x2d
	.uaword	0xa22
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x3d8
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST174
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST175
	.uleb128 0x2f
	.uaword	0x99c
	.uaword	.LBB844
	.uaword	.LBE844
	.byte	0x1
	.uahalf	0x401
	.uleb128 0x25
	.uaword	0x9d0
	.uaword	.LLST176
	.uleb128 0x25
	.uaword	0x9c0
	.uaword	.LLST177
	.uleb128 0x21
	.uaword	.LBB845
	.uaword	.LBE845
	.uleb128 0x23
	.uaword	0x9dc
	.uaword	.LLST178
	.uleb128 0x23
	.uaword	0x9e6
	.uaword	.LLST179
	.uleb128 0x23
	.uaword	0x9f0
	.uaword	.LLST180
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x9fd
	.uaword	.LBB849
	.uaword	.Ldebug_ranges0+0x400
	.byte	0x1
	.uahalf	0x388
	.uaword	0x275f
	.uleb128 0x25
	.uaword	0xa2e
	.uaword	.LLST181
	.uleb128 0x25
	.uaword	0xa22
	.uaword	.LLST182
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x400
	.uleb128 0x23
	.uaword	0xa3d
	.uaword	.LLST181
	.uleb128 0x29
	.uaword	0xa49
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LLST184
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x7dd
	.uaword	.LBB864
	.uaword	.Ldebug_ranges0+0x438
	.byte	0x1
	.uahalf	0x38a
	.uaword	0x2787
	.uleb128 0x25
	.uaword	0x82a
	.uaword	.LLST185
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x2f
	.uaword	0x850
	.uaword	.LBB869
	.uaword	.LBE869
	.byte	0x1
	.uahalf	0x38b
	.uleb128 0x2d
	.uaword	0x86d
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x7a5
	.uaword	.LBB874
	.uaword	.LBE874
	.byte	0x1
	.byte	0xe9
	.uaword	0x27bb
	.uleb128 0x25
	.uaword	0x7c6
	.uaword	.LLST186
	.byte	0
	.uleb128 0x24
	.uaword	0x182c
	.uaword	.LBB877
	.uaword	.Ldebug_ranges0+0x458
	.byte	0x1
	.uahalf	0x143
	.uaword	0x29fb
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x458
	.uleb128 0x22
	.uaword	0x184d
	.uleb128 0x24
	.uaword	0x882
	.uaword	.LBB879
	.uaword	.Ldebug_ranges0+0x470
	.byte	0x1
	.uahalf	0x395
	.uaword	0x2822
	.uleb128 0x25
	.uaword	0x8ba
	.uaword	.LLST187
	.uleb128 0x25
	.uaword	0x8a6
	.uaword	.LLST188
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x470
	.uleb128 0x23
	.uaword	0x8cd
	.uaword	.LLST189
	.uleb128 0x21
	.uaword	.LBB881
	.uaword	.LBE881
	.uleb128 0x23
	.uaword	0x8e6
	.uaword	.LLST190
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB884
	.uaword	.Ldebug_ranges0+0x488
	.byte	0x1
	.uahalf	0x398
	.uaword	0x28ad
	.uleb128 0x25
	.uaword	0xae0
	.uaword	.LLST191
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST192
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x488
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST193
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST194
	.uleb128 0x2e
	.uaword	0x99c
	.uaword	.LBB886
	.uaword	.Ldebug_ranges0+0x4a8
	.byte	0x1
	.uahalf	0x41b
	.uleb128 0x25
	.uaword	0x9d0
	.uaword	.LLST195
	.uleb128 0x25
	.uaword	0x9c0
	.uaword	.LLST196
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x4a8
	.uleb128 0x23
	.uaword	0x9dc
	.uaword	.LLST197
	.uleb128 0x23
	.uaword	0x9e6
	.uaword	.LLST198
	.uleb128 0x23
	.uaword	0x9f0
	.uaword	.LLST199
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xaae
	.uaword	.LBB892
	.uaword	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.uahalf	0x399
	.uaword	0x2934
	.uleb128 0x2d
	.uaword	0xae0
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST200
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x4c0
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST201
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST202
	.uleb128 0x2e
	.uaword	0x99c
	.uaword	.LBB894
	.uaword	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.uahalf	0x41b
	.uleb128 0x25
	.uaword	0x9d0
	.uaword	.LLST203
	.uleb128 0x25
	.uaword	0x9c0
	.uaword	.LLST204
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x4e0
	.uleb128 0x23
	.uaword	0x9dc
	.uaword	.LLST205
	.uleb128 0x23
	.uaword	0x9e6
	.uaword	.LLST206
	.uleb128 0x23
	.uaword	0x9f0
	.uaword	.LLST207
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x7dd
	.uaword	.LBB904
	.uaword	.LBE904
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x295c
	.uleb128 0x25
	.uaword	0x82a
	.uaword	.LLST208
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x2b
	.uaword	0x850
	.uaword	.LBB906
	.uaword	.LBE906
	.byte	0x1
	.uahalf	0x3a2
	.uaword	0x2976
	.uleb128 0x2d
	.uaword	0x86d
	.byte	0
	.uleb128 0x2e
	.uaword	0xaae
	.uaword	.LBB908
	.uaword	.Ldebug_ranges0+0x4f8
	.byte	0x1
	.uahalf	0x39e
	.uleb128 0x2d
	.uaword	0xae0
	.uleb128 0x25
	.uaword	0xad4
	.uaword	.LLST209
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x4f8
	.uleb128 0x23
	.uaword	0xaef
	.uaword	.LLST210
	.uleb128 0x29
	.uaword	0xafb
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x23
	.uaword	0xb07
	.uaword	.LLST211
	.uleb128 0x2e
	.uaword	0x99c
	.uaword	.LBB910
	.uaword	.Ldebug_ranges0+0x510
	.byte	0x1
	.uahalf	0x41b
	.uleb128 0x25
	.uaword	0x9d0
	.uaword	.LLST212
	.uleb128 0x25
	.uaword	0x9c0
	.uaword	.LLST213
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x510
	.uleb128 0x23
	.uaword	0x9dc
	.uaword	.LLST214
	.uleb128 0x23
	.uaword	0x9e6
	.uaword	.LLST215
	.uleb128 0x23
	.uaword	0x9f0
	.uaword	.LLST216
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1876
	.uaword	.LBB919
	.uaword	.LBE919
	.byte	0x1
	.uahalf	0x165
	.uaword	0x2a65
	.uleb128 0x21
	.uaword	.LBB920
	.uaword	.LBE920
	.uleb128 0x23
	.uaword	0x1897
	.uaword	.LLST217
	.uleb128 0x2b
	.uaword	0x7dd
	.uaword	.LBB921
	.uaword	.LBE921
	.byte	0x1
	.uahalf	0x3b0
	.uaword	0x2a49
	.uleb128 0x25
	.uaword	0x82a
	.uaword	.LLST218
	.uleb128 0x2d
	.uaword	0x815
	.uleb128 0x2d
	.uaword	0x800
	.byte	0
	.uleb128 0x2f
	.uaword	0x850
	.uaword	.LBB923
	.uaword	.LBE923
	.byte	0x1
	.uahalf	0x3b1
	.uleb128 0x25
	.uaword	0x86d
	.uaword	.LLST219
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL64
	.uaword	0x3390
	.uleb128 0x34
	.uaword	.LVL65
	.uaword	0x33b1
	.uleb128 0x30
	.uaword	.LVL69
	.uaword	0x32eb
	.uaword	0x2a8a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.uaword	.LVL70
	.uaword	0x33d2
	.uleb128 0x30
	.uaword	.LVL73
	.uaword	0x3292
	.uaword	0x2aa6
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL74
	.uaword	0x32c1
	.uaword	0x2ab9
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL75
	.uaword	0x32eb
	.uaword	0x2acc
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL85
	.uaword	0x3292
	.uaword	0x2adf
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL86
	.uaword	0x32c1
	.uaword	0x2af2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL87
	.uaword	0x32eb
	.uaword	0x2b05
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.uaword	.LVL107
	.uaword	0x3292
	.uaword	0x2b18
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL108
	.uaword	0x32eb
	.uaword	0x2b2b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.uaword	.LVL109
	.uaword	0x32c1
	.uaword	0x2b3e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL113
	.uaword	0x32c1
	.uaword	0x2b51
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL123
	.uaword	0x3292
	.uaword	0x2b64
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL124
	.uaword	0x32eb
	.uaword	0x2b77
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL127
	.uaword	0x3292
	.uaword	0x2b8a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.uaword	.LVL128
	.uaword	0x32eb
	.uaword	0x2b9d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.uaword	.LVL150
	.uaword	0x3292
	.uaword	0x2bb0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.uaword	.LVL151
	.uaword	0x32c1
	.uaword	0x2bc3
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.uaword	.LVL152
	.uaword	0x32eb
	.uaword	0x2bd6
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL181
	.uaword	0x3292
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"TLE9180_bIsWorkModeNormal"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x2c2
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2c31
	.uleb128 0x11
	.string	"bLocWorkNomal"
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x2c2
	.byte	0
	.uleb128 0x19
	.uaword	0x202
	.uaword	0x2c41
	.uleb128 0x1a
	.uaword	0x308
	.byte	0x1d
	.byte	0
	.uleb128 0x15
	.string	"TLE9180_au16SpiTxFrame"
	.byte	0x1
	.byte	0x5f
	.uaword	0x2c31
	.uleb128 0x15
	.string	"TLE9180_au16SpiTxCfgAddr"
	.byte	0x1
	.byte	0x60
	.uaword	0x2c31
	.uleb128 0x15
	.string	"TLE9180_au16SpiTxCfgData"
	.byte	0x1
	.byte	0x61
	.uaword	0x2c31
	.uleb128 0x15
	.string	"TLE9180_au16SpiRxCfgData"
	.byte	0x1
	.byte	0x62
	.uaword	0x2c31
	.uleb128 0x37
	.string	"TLE9180_u8TgtMode"
	.byte	0x1
	.byte	0x64
	.uaword	0x1c9
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8TgtMode
	.uleb128 0x37
	.string	"TLE9180_u8ComState"
	.byte	0x1
	.byte	0x65
	.uaword	0x1c9
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_u8ComState
	.uleb128 0x37
	.string	"TLE9180_xTsParam"
	.byte	0x1
	.byte	0x67
	.uaword	0x4f8
	.byte	0x5
	.byte	0x3
	.uaword	TLE9180_xTsParam
	.uleb128 0x38
	.string	"TLE9180_bIsModeReq"
	.byte	0x6
	.byte	0x44
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bIsInIdleMode"
	.byte	0x6
	.byte	0x45
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bIsInCfgLockMode"
	.byte	0x6
	.byte	0x46
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bDrvOverCurrent"
	.byte	0x6
	.byte	0x47
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bDrvOverTemp"
	.byte	0x6
	.byte	0x48
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bDrvOverVoltage"
	.byte	0x6
	.byte	0x49
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bDrvUnderVoltage"
	.byte	0x6
	.byte	0x4a
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bErrorPinLevel"
	.byte	0x6
	.byte	0x4b
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bInitFailFlg"
	.byte	0x6
	.byte	0x4c
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bPhaseShortHigh"
	.byte	0x6
	.byte	0x4d
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bPhaseShortLow"
	.byte	0x6
	.byte	0x4e
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bPhsOverVolt"
	.byte	0x6
	.byte	0x4f
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bReadErrInfoFlg"
	.byte	0x6
	.byte	0x50
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bTestReadReg"
	.byte	0x6
	.byte	0x51
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_bTestWriteReg"
	.byte	0x6
	.byte	0x52
	.uaword	0x2c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x25a
	.uaword	0x2f06
	.uleb128 0x1a
	.uaword	0x308
	.byte	0x1d
	.byte	0
	.uleb128 0x38
	.string	"TLE9180_au32SpiReadFrame"
	.byte	0x6
	.byte	0x59
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au32SpiTstReadFrame"
	.byte	0x6
	.byte	0x5a
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au32SpiTstWriteFrame"
	.byte	0x6
	.byte	0x5b
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au32ErrRegsReadFrame"
	.byte	0x6
	.byte	0x5c
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au32SpiWriteFrame"
	.byte	0x6
	.byte	0x5d
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au32ICInitSpiFrame"
	.byte	0x6
	.byte	0x5e
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au32StateRegs"
	.byte	0x6
	.byte	0x5f
	.uaword	0x2ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x1c9
	.uaword	0x300f
	.uleb128 0x1a
	.uaword	0x308
	.byte	0x1d
	.byte	0
	.uleb128 0x38
	.string	"TLE9180_au8CfgRegister"
	.byte	0x6
	.byte	0x60
	.uaword	0x2fff
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au8CfgRegReadBk"
	.byte	0x6
	.byte	0x61
	.uaword	0x2fff
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_au8ReadRegs"
	.byte	0x6
	.byte	0x63
	.uaword	0x2fff
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8ReCfgCnt"
	.byte	0x6
	.byte	0x64
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8InitFailedCnt"
	.byte	0x6
	.byte	0x65
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8ErrRecoverCnt"
	.byte	0x6
	.byte	0x66
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8Mode"
	.byte	0x6
	.byte	0x67
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8RdRegTimCnt"
	.byte	0x6
	.byte	0x68
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8ReadRegAddr"
	.byte	0x6
	.byte	0x69
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8SelfTestStep"
	.byte	0x6
	.byte	0x6a
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8SpiTxFrameMaxNb"
	.byte	0x6
	.byte	0x6b
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8WriteData"
	.byte	0x6
	.byte	0x6c
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u8WriteRegAddr"
	.byte	0x6
	.byte	0x6d
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u16EnaResetTime"
	.byte	0x6
	.byte	0x6e
	.uaword	0x202
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_u16ErrPinChkCnt"
	.byte	0x6
	.byte	0x6f
	.uaword	0x202
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_ku8MaxInitTimeC"
	.byte	0x7
	.byte	0x43
	.uaword	0x7d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_ku8MaxReCfgTimeC"
	.byte	0x7
	.byte	0x44
	.uaword	0x7d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"TLE9180_ku16EnaResetTimeC"
	.byte	0x7
	.byte	0x4c
	.uaword	0x3249
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x202
	.uleb128 0x38
	.string	"TLE9180_ku16ErrPinChkTimC"
	.byte	0x7
	.byte	0x4d
	.uaword	0x3249
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.string	"Qspi_CddInit"
	.byte	0x8
	.byte	0x60
	.byte	0x1
	.uaword	0x2f2
	.byte	0x1
	.uaword	0x3292
	.uleb128 0x3a
	.uaword	0x1c9
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"TLE9180_vidHalWriteEnaPin"
	.byte	0x2
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uaword	0x32bc
	.uleb128 0x3a
	.uaword	0x32bc
	.byte	0
	.uleb128 0x9
	.uaword	0x38a
	.uleb128 0x3b
	.byte	0x1
	.string	"TLE9180_vidHalWriteInhPin"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uaword	0x32eb
	.uleb128 0x3a
	.uaword	0x32bc
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"TLE9180_vidHalWriteSoffPin"
	.byte	0x2
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.uaword	0x3316
	.uleb128 0x3a
	.uaword	0x32bc
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"TLE9180_bHalBatIsNormal"
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.uaword	0x2c2
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Qspi_CddTxRxShortMode"
	.byte	0x8
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uaword	0x336d
	.uleb128 0x3a
	.uaword	0x1c9
	.uleb128 0x3a
	.uaword	0x314
	.uleb128 0x3a
	.uaword	0x314
	.uleb128 0x3a
	.uaword	0x1c9
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"Qspi_CddRxDone"
	.byte	0x8
	.byte	0x63
	.byte	0x1
	.uaword	0x2f2
	.byte	0x1
	.uaword	0x3390
	.uleb128 0x3a
	.uaword	0x1c9
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"TLE9180_bHalSysIsReady"
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.uaword	0x2c2
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"TLE9180_bHalICIsNormal"
	.byte	0x2
	.byte	0x45
	.byte	0x1
	.uaword	0x2c2
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"TLE9180_bHalPwmIsReady"
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.uaword	0x2c2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB4-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL35-.text
	.uaword	.LVL36-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36-.text
	.uaword	.LVL37-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL37-.text
	.uaword	.LVL39-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x43
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6-.text
	.uaword	.LVL8-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL16-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16-.text
	.uaword	.LVL30-.text
	.uahalf	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x4d
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL28-.text
	.uaword	.LVL33-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LVL36-.text
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL28-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL28-.text
	.uaword	.LVL31-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LVL33-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LFE4-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL28-.text
	.uaword	.LVL31-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LFE4-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LVL32-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LVL32-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL32-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LVL32-.text
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LVL36-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LFB5-.text
	.uaword	.LCFI1-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL99-.text
	.uaword	.LVL100-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL100-.text
	.uaword	.LVL101-.text
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL101-.text
	.uaword	.LVL102-.text
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL102-.text
	.uaword	.LVL103-.text
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL70-.text
	.uaword	.LVL72-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL66-.text
	.uaword	.LVL68-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL83-.text
	.uaword	.LVL84-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x20004
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x4
	.byte	0x48
	.byte	0x3d
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x40002
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL88-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x50006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x60002
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x70006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x4
	.byte	0x40
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x90004
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x4
	.byte	0x44
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb0004
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xc0006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd0002
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xe0006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xf0002
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x100002
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL89-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x110006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL92-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL92-.text
	.uaword	.LVL94-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL92-.text
	.uaword	.LVL94-.text
	.uahalf	0x4
	.byte	0x49
	.byte	0x41
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL90-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL90-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL90-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL90-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x120002
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL91-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL91-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x43
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL91-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL91-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x130006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL92-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x45
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL94-.text
	.uaword	.LVL96-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL97-.text
	.uaword	.LVL98-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL129-.text
	.uaword	.LVL131-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL132-.text
	.uaword	.LVL135-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL94-.text
	.uaword	.LVL97-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	TLE9180_xTsParam
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL95-.text
	.uaword	.LVL97-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL95-.text
	.uaword	.LVL97-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	TLE9180_xTsParam
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL96-.text
	.uaword	.LVL97-.text
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL130-.text
	.uaword	.LVL132-.text
	.uahalf	0x6
	.byte	0x3
	.uaword	TLE9180_xTsParam
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL131-.text
	.uaword	.LVL132-.text
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL133-.text
	.uaword	.LVL134-.text
	.uahalf	0x5
	.byte	0x3
	.uaword	TLE9180_u8TgtMode
	.uaword	.LVL134-.text
	.uaword	.LVL135-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL103-.text
	.uaword	.LVL104-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL105-.text
	.uaword	.LVL106-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL109-.text
	.uaword	.LVL110-.text
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL111-.text
	.uaword	.LVL112-.text
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL113-.text
	.uaword	.LVL120-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL209-.text
	.uaword	.LVL212-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL114-.text
	.uaword	.LVL115-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL115-.text
	.uaword	.LVL116-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL116-.text
	.uaword	.LVL118-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL118-.text
	.uaword	.LVL120-.text
	.uahalf	0xb
	.byte	0x3
	.uaword	TLE9180_xTsParam+8
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL209-.text
	.uaword	.LVL212-.text
	.uahalf	0xb
	.byte	0x3
	.uaword	TLE9180_xTsParam+8
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL117-.text
	.uaword	.LVL120-.text
	.uahalf	0x2
	.byte	0x45
	.byte	0x9f
	.uaword	.LVL209-.text
	.uaword	.LVL212-.text
	.uahalf	0x2
	.byte	0x45
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL119-.text
	.uaword	.LVL120-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL210-.text
	.uaword	.LVL212-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL211-.text
	.uaword	.LVL212-.text
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL153-.text
	.uaword	.LVL154-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL154-.text
	.uaword	.LVL157-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL163-.text
	.uaword	.LVL170-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL173-.text
	.uaword	.LVL180-.text
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL153-.text
	.uaword	.LVL159-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL159-.text
	.uaword	.LVL163-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL163-.text
	.uaword	.LVL166-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL166-.text
	.uaword	.LVL167-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL167-.text
	.uaword	.LVL172-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL172-.text
	.uaword	.LVL173-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL173-.text
	.uaword	.LVL177-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL177-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL178-.text
	.uaword	.LVL180-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL162-.text
	.uaword	.LVL163-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL121-.text
	.uaword	.LVL122-.text
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL155-.text
	.uaword	.LVL160-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL155-.text
	.uaword	.LVL160-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL155-.text
	.uaword	.LVL156-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL156-.text
	.uaword	.LVL160-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL155-.text
	.uaword	.LVL156-.text
	.uahalf	0x4
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL156-.text
	.uaword	.LVL160-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0x400006
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL158-.text
	.uaword	.LVL160-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL158-.text
	.uaword	.LVL160-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL158-.text
	.uaword	.LVL160-.text
	.uahalf	0x4
	.byte	0x49
	.byte	0x41
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL160-.text
	.uaword	.LVL161-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL161-.text
	.uaword	.LVL163-.text
	.uahalf	0x5
	.byte	0x3
	.uaword	TLE9180_xTsParam+8
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL163-.text
	.uaword	.LVL165-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL163-.text
	.uaword	.LVL165-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL163-.text
	.uaword	.LVL165-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL163-.text
	.uaword	.LVL165-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb52000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL167-.text
	.uaword	.LVL169-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL167-.text
	.uaword	.LVL169-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL167-.text
	.uaword	.LVL168-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168-.text
	.uaword	.LVL169-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL167-.text
	.uaword	.LVL168-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb54000
	.byte	0x9f
	.uaword	.LVL168-.text
	.uaword	.LVL169-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb54004
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL169-.text
	.uaword	.LVL173-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL169-.text
	.uaword	.LVL173-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL169-.text
	.uaword	.LVL173-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL169-.text
	.uaword	.LVL173-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb60100
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL173-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL173-.text
	.uaword	.LVL178-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL173-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL173-.text
	.uaword	.LVL178-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb71206
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL174-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL174-.text
	.uaword	.LVL178-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL174-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL174-.text
	.uaword	.LVL178-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb70406
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL175-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL175-.text
	.uaword	.LVL178-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL175-.text
	.uaword	.LVL176-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL176-.text
	.uaword	.LVL178-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL175-.text
	.uaword	.LVL176-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb70100
	.byte	0x9f
	.uaword	.LVL176-.text
	.uaword	.LVL178-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb70104
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL178-.text
	.uaword	.LVL180-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL178-.text
	.uaword	.LVL180-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL178-.text
	.uaword	.LVL179-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL179-.text
	.uaword	.LVL180-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL178-.text
	.uaword	.LVL179-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb78000
	.byte	0x9f
	.uaword	.LVL179-.text
	.uaword	.LVL180-.text
	.uahalf	0x6
	.byte	0xc
	.uaword	0xb78004
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL125-.text
	.uaword	.LVL126-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL136-.text
	.uaword	.LVL148-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL136-.text
	.uaword	.LVL144-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL144-.text
	.uaword	.LVL148-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL136-.text
	.uaword	.LVL137-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137-.text
	.uaword	.LVL138-.text
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL138-.text
	.uaword	.LVL144-.text
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL144-.text
	.uaword	.LVL148-.text
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL138-.text
	.uaword	.LVL140-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL140-.text
	.uaword	.LVL142-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL142-.text
	.uaword	.LVL144-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL144-.text
	.uaword	.LVL148-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL138-.text
	.uaword	.LVL140-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL140-.text
	.uaword	.LVL142-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL142-.text
	.uaword	.LVL148-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL140-.text
	.uaword	.LVL141-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL142-.text
	.uaword	.LVL143-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL144-.text
	.uaword	.LVL148-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL139-.text
	.uaword	.LVL141-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL141-.text
	.uaword	.LVL143-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL143-.text
	.uaword	.LVL148-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL138-.text
	.uaword	.LVL139-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL140-.text
	.uaword	.LVL141-.text
	.uahalf	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL142-.text
	.uaword	.LVL143-.text
	.uahalf	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL144-.text
	.uaword	.LVL148-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL145-.text
	.uaword	.LVL148-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL145-.text
	.uaword	.LVL148-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL145-.text
	.uaword	.LVL148-.text
	.uahalf	0x4
	.byte	0x49
	.byte	0x41
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL146-.text
	.uaword	.LVL148-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL149-.text
	.uaword	.LVL153-.text
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL182-.text
	.uaword	.LVL183-.text
	.uahalf	0x2
	.byte	0x43
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL184-.text
	.uaword	.LVL205-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL182-.text
	.uaword	.LVL183-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL184-.text
	.uaword	.LVL188-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL188-.text
	.uaword	.LVL189-.text
	.uahalf	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x4d
	.byte	0x27
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL184-.text
	.uaword	.LVL205-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL185-.text
	.uaword	.LVL186-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL185-.text
	.uaword	.LVL191-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL185-.text
	.uaword	.LVL196-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL196-.text
	.uaword	.LVL199-.text
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL185-.text
	.uaword	.LVL187-.text
	.uahalf	0xc
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x43
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL187-.text
	.uaword	.LVL196-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL196-.text
	.uaword	.LVL197-.text
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL189-.text
	.uaword	.LVL192-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL192-.text
	.uaword	.LVL194-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL194-.text
	.uaword	.LVL196-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL196-.text
	.uaword	.LVL205-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL189-.text
	.uaword	.LVL192-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL192-.text
	.uaword	.LVL194-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL194-.text
	.uaword	.LVL205-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL192-.text
	.uaword	.LVL193-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL194-.text
	.uaword	.LVL195-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL196-.text
	.uaword	.LVL205-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL190-.text
	.uaword	.LVL193-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL193-.text
	.uaword	.LVL195-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL195-.text
	.uaword	.LVL205-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL189-.text
	.uaword	.LVL190-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL192-.text
	.uaword	.LVL193-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL194-.text
	.uaword	.LVL195-.text
	.uahalf	0xc
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL196-.text
	.uaword	.LVL199-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL198-.text
	.uaword	.LVL205-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL198-.text
	.uaword	.LVL203-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL203-.text
	.uaword	.LVL205-.text
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL198-.text
	.uaword	.LVL203-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL203-.text
	.uaword	.LVL204-.text
	.uahalf	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL200-.text
	.uaword	.LVL201-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL201-.text
	.uaword	.LVL203-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL203-.text
	.uaword	.LVL205-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL200-.text
	.uaword	.LVL201-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL201-.text
	.uaword	.LVL205-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL201-.text
	.uaword	.LVL202-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL203-.text
	.uaword	.LVL205-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL200-.text
	.uaword	.LVL202-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL202-.text
	.uaword	.LVL205-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL201-.text
	.uaword	.LVL202-.text
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL203-.text
	.uaword	.LVL205-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL205-.text
	.uaword	.LVL206-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL206-.text
	.uaword	.LVL208-.text
	.uahalf	0x5
	.byte	0x3
	.uaword	TLE9180_xTsParam+8
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL220-.text
	.uaword	.LVL221-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL220-.text
	.uaword	.LVL229-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229-.text
	.uaword	.LFE5-.text
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL220-.text
	.uaword	.LVL221-.text
	.uahalf	0xf
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x43
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL222-.text
	.uaword	.LVL229-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL229-.text
	.uaword	.LVL230-.text
	.uahalf	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL223-.text
	.uaword	.LVL225-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL225-.text
	.uaword	.LVL227-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL227-.text
	.uaword	.LVL229-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229-.text
	.uaword	.LFE5-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL223-.text
	.uaword	.LVL225-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL225-.text
	.uaword	.LVL227-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL227-.text
	.uaword	.LFE5-.text
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL225-.text
	.uaword	.LVL226-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL227-.text
	.uaword	.LVL228-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL229-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL224-.text
	.uaword	.LVL226-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL226-.text
	.uaword	.LVL228-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL228-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL223-.text
	.uaword	.LVL224-.text
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL225-.text
	.uaword	.LVL226-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL227-.text
	.uaword	.LVL228-.text
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL229-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL213-.text
	.uaword	.LVL214-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL214-.text
	.uaword	.LVL215-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL215-.text
	.uaword	.LVL217-.text
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL217-.text
	.uaword	.LVL219-.text
	.uahalf	0xb
	.byte	0x3
	.uaword	TLE9180_xTsParam+8
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL216-.text
	.uaword	.LVL219-.text
	.uahalf	0x2
	.byte	0x45
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL218-.text
	.uaword	.LVL219-.text
	.uahalf	0x2
	.byte	0x37
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
	.uaword	.LBB275-.Ltext0
	.uaword	.LBE275-.Ltext0
	.uaword	.LBB278-.Ltext0
	.uaword	.LBE278-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB281-.Ltext0
	.uaword	.LBE281-.Ltext0
	.uaword	.LBB285-.Ltext0
	.uaword	.LBE285-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB286-.Ltext0
	.uaword	.LBE286-.Ltext0
	.uaword	.LBB289-.Ltext0
	.uaword	.LBE289-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB290-.Ltext0
	.uaword	.LBE290-.Ltext0
	.uaword	.LBB293-.Ltext0
	.uaword	.LBE293-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB308-.Ltext0
	.uaword	.LBE308-.Ltext0
	.uaword	.LBB339-.Ltext0
	.uaword	.LBE339-.Ltext0
	.uaword	.LBB340-.Ltext0
	.uaword	.LBE340-.Ltext0
	.uaword	.LBB341-.Ltext0
	.uaword	.LBE341-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB310-.Ltext0
	.uaword	.LBE310-.Ltext0
	.uaword	.LBB313-.Ltext0
	.uaword	.LBE313-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB344-.Ltext0
	.uaword	.LBE344-.Ltext0
	.uaword	.LBB347-.Ltext0
	.uaword	.LBE347-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB348-.Ltext0
	.uaword	.LBE348-.Ltext0
	.uaword	.LBB351-.Ltext0
	.uaword	.LBE351-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB637-.Ltext0
	.uaword	.LBE637-.Ltext0
	.uaword	.LBB640-.Ltext0
	.uaword	.LBE640-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB645-.Ltext0
	.uaword	.LBE645-.Ltext0
	.uaword	.LBB873-.Ltext0
	.uaword	.LBE873-.Ltext0
	.uaword	.LBB917-.Ltext0
	.uaword	.LBE917-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB653-.Ltext0
	.uaword	.LBE653-.Ltext0
	.uaword	.LBB673-.Ltext0
	.uaword	.LBE673-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB662-.Ltext0
	.uaword	.LBE662-.Ltext0
	.uaword	.LBB671-.Ltext0
	.uaword	.LBE671-.Ltext0
	.uaword	.LBB699-.Ltext0
	.uaword	.LBE699-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB668-.Ltext0
	.uaword	.LBE668-.Ltext0
	.uaword	.LBB672-.Ltext0
	.uaword	.LBE672-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB696-.Ltext0
	.uaword	.LBE696-.Ltext0
	.uaword	.LBB700-.Ltext0
	.uaword	.LBE700-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB701-.Ltext0
	.uaword	.LBE701-.Ltext0
	.uaword	.LBB709-.Ltext0
	.uaword	.LBE709-.Ltext0
	.uaword	.LBB711-.Ltext0
	.uaword	.LBE711-.Ltext0
	.uaword	.LBB712-.Ltext0
	.uaword	.LBE712-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB706-.Ltext0
	.uaword	.LBE706-.Ltext0
	.uaword	.LBB710-.Ltext0
	.uaword	.LBE710-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB713-.Ltext0
	.uaword	.LBE713-.Ltext0
	.uaword	.LBB724-.Ltext0
	.uaword	.LBE724-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB716-.Ltext0
	.uaword	.LBE716-.Ltext0
	.uaword	.LBB725-.Ltext0
	.uaword	.LBE725-.Ltext0
	.uaword	.LBB726-.Ltext0
	.uaword	.LBE726-.Ltext0
	.uaword	.LBB737-.Ltext0
	.uaword	.LBE737-.Ltext0
	.uaword	.LBB739-.Ltext0
	.uaword	.LBE739-.Ltext0
	.uaword	.LBB741-.Ltext0
	.uaword	.LBE741-.Ltext0
	.uaword	.LBB743-.Ltext0
	.uaword	.LBE743-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB727-.Ltext0
	.uaword	.LBE727-.Ltext0
	.uaword	.LBB738-.Ltext0
	.uaword	.LBE738-.Ltext0
	.uaword	.LBB740-.Ltext0
	.uaword	.LBE740-.Ltext0
	.uaword	.LBB742-.Ltext0
	.uaword	.LBE742-.Ltext0
	.uaword	.LBB744-.Ltext0
	.uaword	.LBE744-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB729-.Ltext0
	.uaword	.LBE729-.Ltext0
	.uaword	.LBB732-.Ltext0
	.uaword	.LBE732-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB745-.Ltext0
	.uaword	.LBE745-.Ltext0
	.uaword	.LBB839-.Ltext0
	.uaword	.LBE839-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB746-.Ltext0
	.uaword	.LBE746-.Ltext0
	.uaword	.LBB755-.Ltext0
	.uaword	.LBE755-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB762-.Ltext0
	.uaword	.LBE762-.Ltext0
	.uaword	.LBB765-.Ltext0
	.uaword	.LBE765-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB768-.Ltext0
	.uaword	.LBE768-.Ltext0
	.uaword	.LBB918-.Ltext0
	.uaword	.LBE918-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB770-.Ltext0
	.uaword	.LBE770-.Ltext0
	.uaword	.LBB774-.Ltext0
	.uaword	.LBE774-.Ltext0
	.uaword	.LBB775-.Ltext0
	.uaword	.LBE775-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB783-.Ltext0
	.uaword	.LBE783-.Ltext0
	.uaword	.LBB872-.Ltext0
	.uaword	.LBE872-.Ltext0
	.uaword	.LBB876-.Ltext0
	.uaword	.LBE876-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB785-.Ltext0
	.uaword	.LBE785-.Ltext0
	.uaword	.LBB791-.Ltext0
	.uaword	.LBE791-.Ltext0
	.uaword	.LBB808-.Ltext0
	.uaword	.LBE808-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB792-.Ltext0
	.uaword	.LBE792-.Ltext0
	.uaword	.LBB802-.Ltext0
	.uaword	.LBE802-.Ltext0
	.uaword	.LBB805-.Ltext0
	.uaword	.LBE805-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB796-.Ltext0
	.uaword	.LBE796-.Ltext0
	.uaword	.LBB801-.Ltext0
	.uaword	.LBE801-.Ltext0
	.uaword	.LBB803-.Ltext0
	.uaword	.LBE803-.Ltext0
	.uaword	.LBB804-.Ltext0
	.uaword	.LBE804-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB809-.Ltext0
	.uaword	.LBE809-.Ltext0
	.uaword	.LBB812-.Ltext0
	.uaword	.LBE812-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB813-.Ltext0
	.uaword	.LBE813-.Ltext0
	.uaword	.LBB816-.Ltext0
	.uaword	.LBE816-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB817-.Ltext0
	.uaword	.LBE817-.Ltext0
	.uaword	.LBB821-.Ltext0
	.uaword	.LBE821-.Ltext0
	.uaword	.LBB822-.Ltext0
	.uaword	.LBE822-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB823-.Ltext0
	.uaword	.LBE823-.Ltext0
	.uaword	.LBB826-.Ltext0
	.uaword	.LBE826-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB831-.Ltext0
	.uaword	.LBE831-.Ltext0
	.uaword	.LBB834-.Ltext0
	.uaword	.LBE834-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB842-.Ltext0
	.uaword	.LBE842-.Ltext0
	.uaword	.LBB856-.Ltext0
	.uaword	.LBE856-.Ltext0
	.uaword	.LBB858-.Ltext0
	.uaword	.LBE858-.Ltext0
	.uaword	.LBB861-.Ltext0
	.uaword	.LBE861-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB849-.Ltext0
	.uaword	.LBE849-.Ltext0
	.uaword	.LBB857-.Ltext0
	.uaword	.LBE857-.Ltext0
	.uaword	.LBB859-.Ltext0
	.uaword	.LBE859-.Ltext0
	.uaword	.LBB860-.Ltext0
	.uaword	.LBE860-.Ltext0
	.uaword	.LBB862-.Ltext0
	.uaword	.LBE862-.Ltext0
	.uaword	.LBB863-.Ltext0
	.uaword	.LBE863-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB864-.Ltext0
	.uaword	.LBE864-.Ltext0
	.uaword	.LBB868-.Ltext0
	.uaword	.LBE868-.Ltext0
	.uaword	.LBB871-.Ltext0
	.uaword	.LBE871-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB877-.Ltext0
	.uaword	.LBE877-.Ltext0
	.uaword	.LBB925-.Ltext0
	.uaword	.LBE925-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB879-.Ltext0
	.uaword	.LBE879-.Ltext0
	.uaword	.LBB883-.Ltext0
	.uaword	.LBE883-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB884-.Ltext0
	.uaword	.LBE884-.Ltext0
	.uaword	.LBB900-.Ltext0
	.uaword	.LBE900-.Ltext0
	.uaword	.LBB901-.Ltext0
	.uaword	.LBE901-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB886-.Ltext0
	.uaword	.LBE886-.Ltext0
	.uaword	.LBB889-.Ltext0
	.uaword	.LBE889-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB892-.Ltext0
	.uaword	.LBE892-.Ltext0
	.uaword	.LBB902-.Ltext0
	.uaword	.LBE902-.Ltext0
	.uaword	.LBB903-.Ltext0
	.uaword	.LBE903-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB894-.Ltext0
	.uaword	.LBE894-.Ltext0
	.uaword	.LBB897-.Ltext0
	.uaword	.LBE897-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB908-.Ltext0
	.uaword	.LBE908-.Ltext0
	.uaword	.LBB915-.Ltext0
	.uaword	.LBE915-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB910-.Ltext0
	.uaword	.LBE910-.Ltext0
	.uaword	.LBB913-.Ltext0
	.uaword	.LBE913-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"kpkxParam"
.LASF7:
	.string	"bComIsEnd"
.LASF3:
	.string	"crcinput"
.LASF4:
	.string	"u32LocData"
.LASF2:
	.string	"u8RegAddr"
.LASF5:
	.string	"u8Signature"
.LASF6:
	.string	"u8CopyIndex"
.LASF0:
	.string	"CDD_tTransParam"
	.extern	TLE9180_au32SpiTstWriteFrame,STT_OBJECT,120
	.extern	TLE9180_u8WriteData,STT_OBJECT,1
	.extern	TLE9180_ku8MaxInitTimeC,STT_OBJECT,1
	.extern	TLE9180_au32SpiTstReadFrame,STT_OBJECT,120
	.extern	TLE9180_ku16ErrPinChkTimC,STT_OBJECT,2
	.extern	TLE9180_ku16EnaResetTimeC,STT_OBJECT,2
	.extern	TLE9180_bIsModeReq,STT_OBJECT,1
	.extern	TLE9180_au8CfgRegReadBk,STT_OBJECT,30
	.extern	Qspi_CddRxDone,STT_FUNC,0
	.extern	Qspi_CddTxRxShortMode,STT_FUNC,0
	.extern	TLE9180_au8ReadRegs,STT_OBJECT,30
	.extern	TLE9180_au32ErrRegsReadFrame,STT_OBJECT,120
	.extern	TLE9180_bHalPwmIsReady,STT_FUNC,0
	.extern	TLE9180_bHalBatIsNormal,STT_FUNC,0
	.extern	TLE9180_ku8MaxReCfgTimeC,STT_OBJECT,1
	.extern	TLE9180_bHalICIsNormal,STT_FUNC,0
	.extern	TLE9180_bHalSysIsReady,STT_FUNC,0
	.extern	TLE9180_au32SpiReadFrame,STT_OBJECT,120
	.extern	TLE9180_au32StateRegs,STT_OBJECT,120
	.extern	TLE9180_au32ICInitSpiFrame,STT_OBJECT,120
	.extern	TLE9180_u8SpiTxFrameMaxNb,STT_OBJECT,1
	.extern	TLE9180_au32SpiWriteFrame,STT_OBJECT,120
	.extern	TLE9180_au8CfgRegister,STT_OBJECT,30
	.extern	TLE9180_vidHalWriteSoffPin,STT_FUNC,0
	.extern	TLE9180_vidHalWriteInhPin,STT_FUNC,0
	.extern	TLE9180_vidHalWriteEnaPin,STT_FUNC,0
	.extern	Qspi_CddInit,STT_FUNC,0
	.extern	TLE9180_u8Mode,STT_OBJECT,1
	.extern	TLE9180_u8SelfTestStep,STT_OBJECT,1
	.extern	TLE9180_bIsInCfgLockMode,STT_OBJECT,1
	.extern	TLE9180_bIsInIdleMode,STT_OBJECT,1
	.extern	TLE9180_bPhsOverVolt,STT_OBJECT,1
	.extern	TLE9180_bErrorPinLevel,STT_OBJECT,1
	.extern	TLE9180_bInitFailFlg,STT_OBJECT,1
	.extern	TLE9180_bReadErrInfoFlg,STT_OBJECT,1
	.extern	TLE9180_bDrvOverTemp,STT_OBJECT,1
	.extern	TLE9180_bDrvUnderVoltage,STT_OBJECT,1
	.extern	TLE9180_bDrvOverVoltage,STT_OBJECT,1
	.extern	TLE9180_bDrvOverCurrent,STT_OBJECT,1
	.extern	TLE9180_bPhaseShortHigh,STT_OBJECT,1
	.extern	TLE9180_bPhaseShortLow,STT_OBJECT,1
	.extern	TLE9180_bTestWriteReg,STT_OBJECT,1
	.extern	TLE9180_bTestReadReg,STT_OBJECT,1
	.extern	TLE9180_u16EnaResetTime,STT_OBJECT,2
	.extern	TLE9180_u16ErrPinChkCnt,STT_OBJECT,2
	.extern	TLE9180_u8InitFailedCnt,STT_OBJECT,1
	.extern	TLE9180_u8ErrRecoverCnt,STT_OBJECT,1
	.extern	TLE9180_u8WriteRegAddr,STT_OBJECT,1
	.extern	TLE9180_u8ReadRegAddr,STT_OBJECT,1
	.extern	TLE9180_u8RdRegTimCnt,STT_OBJECT,1
	.extern	TLE9180_u8ReCfgCnt,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
