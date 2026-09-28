	.file	"CCU6.c"
.section .text,"ax",@progbits
.Ltext0:
.section .FTramCode.fast,"awxc0",@progbits
	.align 1
	.global	CCU6_Init
	.type	CCU6_Init, @function
CCU6_Init:
.LFB395:
	.file 1 "bswcdd\\CCU6\\CCU6.c"
	.loc 1 172 0
	.loc 1 177 0
	movh	%d15, 61440
	movh.a	%a14, hi:CCU6_pstrModule
	addi	%d15, %d15, 10752
	st.w	[%a14] lo:CCU6_pstrModule, %d15
	.loc 1 178 0
	movh.a	%a15, hi:CCU6_u16PwmModReq
	mov	%d15, 0
	st.h	[%a15] lo:CCU6_u16PwmModReq, %d15
	.loc 1 179 0
	movh.a	%a15, hi:CCU6_u8PwmState
	.loc 1 181 0
	mov	%d8, 0
	.loc 1 179 0
	st.b	[%a15] lo:CCU6_u8PwmState, %d15
	.loc 1 180 0
	movh	%d10, hi:CCU6_u16T12PeriodVal
	.loc 1 184 0
	movh.a	%a15, hi:CCU6_u16PowerOnDelay
	.loc 1 180 0
	mov.a	%a2, %d10
	.loc 1 184 0
	st.h	[%a15] lo:CCU6_u16PowerOnDelay, %d8
	.loc 1 185 0
	movh.a	%a15, hi:CCU6_u16AlimPowerOnDelay
	.loc 1 180 0
	mov	%d9, 2499
	.loc 1 185 0
	st.h	[%a15] lo:CCU6_u16AlimPowerOnDelay, %d8
	.loc 1 186 0
	movh.a	%a15, hi:CCU6_u16McuAscSttDelay
	.loc 1 180 0
	st.h	[%a2] lo:CCU6_u16T12PeriodVal, %d9
	.loc 1 186 0
	st.h	[%a15] lo:CCU6_u16McuAscSttDelay, %d8
	.loc 1 187 0
	movh.a	%a15, hi:CCU6_u32TrapCreq
	st.w	[%a15] lo:CCU6_u32TrapCreq, %d8
	.loc 1 188 0
	movh.a	%a15, hi:CCU6_u8McuAscSttStep
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
	.loc 1 189 0
	movh.a	%a15, hi:CCU6_bMotorSpdRdy
	st.b	[%a15] lo:CCU6_bMotorSpdRdy, %d15
	.loc 1 190 0
	movh.a	%a15, hi:CCU6_bIsCCU6Start
	st.b	[%a15] lo:CCU6_bIsCCU6Start, %d15
	.loc 1 191 0
	movh.a	%a15, hi:CCU6_bTrapTrigger
	st.b	[%a15] lo:CCU6_bTrapTrigger, %d15
	.loc 1 192 0
	movh.a	%a15, hi:CCU6_bClrTrapReq
	st.b	[%a15] lo:CCU6_bClrTrapReq, %d15
	.loc 1 193 0
	movh.a	%a15, hi:CCU6_bAkdAfterAscReq
	st.b	[%a15] lo:CCU6_bAkdAfterAscReq, %d15
	.loc 1 194 0
	movh.a	%a15, hi:CCU6_bIuvwCompReq
	st.b	[%a15] lo:CCU6_bIuvwCompReq, %d15
	.loc 1 195 0
	movh.a	%a15, hi:CCU6_bHwFaultIgbtH
	st.b	[%a15] lo:CCU6_bHwFaultIgbtH, %d15
	.loc 1 196 0
	movh.a	%a15, hi:CCU6_bHwFaultIgbtL
	st.b	[%a15] lo:CCU6_bHwFaultIgbtL, %d15
	.loc 1 197 0
	movh.a	%a15, hi:CCU6_bHwFaultOvcU
	st.b	[%a15] lo:CCU6_bHwFaultOvcU, %d15
	.loc 1 198 0
	movh.a	%a15, hi:CCU6_bHwFaultOvcV
	st.b	[%a15] lo:CCU6_bHwFaultOvcV, %d15
	.loc 1 199 0
	movh.a	%a15, hi:CCU6_bHwFaultOvcW
	st.b	[%a15] lo:CCU6_bHwFaultOvcW, %d15
	.loc 1 200 0
	movh.a	%a15, hi:CCU6_bHwFaultDcOvVolt
	st.b	[%a15] lo:CCU6_bHwFaultDcOvVolt, %d15
	.loc 1 201 0
	movh.a	%a15, hi:CCU6_u8McuAscType
	st.b	[%a15] lo:CCU6_u8McuAscType, %d15
	.loc 1 202 0
	movh.a	%a15, hi:CCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:CCU6_bT12ZeroMatchFlg, %d15
	.loc 1 203 0
	movh.a	%a15, hi:CCU6_bPwmOnGoingFlg
	st.b	[%a15] lo:CCU6_bPwmOnGoingFlg, %d15
	.loc 1 206 0
	movh	%d13, hi:CCU6_f32PwmDutyPhysUZ
	.loc 1 204 0
	movh.a	%a15, hi:CCU6_u8AscRecoverCnt
	st.b	[%a15] lo:CCU6_u8AscRecoverCnt, %d15
	.loc 1 206 0
	mov.a	%a2, %d13
	.loc 1 205 0
	movh.a	%a15, hi:CCU6_u8OvcRcvCnt
	st.b	[%a15] lo:CCU6_u8OvcRcvCnt, %d15
	.loc 1 206 0
	mov	%e2, 0
	.loc 1 207 0
	movh	%d12, hi:CCU6_f32PwmDutyPhysVZ
	.loc 1 206 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysUZ, %d3
	.loc 1 207 0
	mov.a	%a2, %d12
	.loc 1 208 0
	movh	%d11, hi:CCU6_f32PwmDutyPhysWZ
	.loc 1 207 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysVZ, %d3
	.loc 1 208 0
	mov.a	%a2, %d11
	.loc 1 181 0
	movh.a	%a13, hi:CCU6_au32PWMOnTime
	.loc 1 208 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysWZ, %d3
	.loc 1 181 0
	lea	%a12, [%a13] lo:CCU6_au32PWMOnTime
	.loc 1 209 0
	movh.a	%a15, hi:CCU6_bPwmMidPointU
	st.b	[%a15] lo:CCU6_bPwmMidPointU, %d15
	.loc 1 181 0
	st.w	[%a13] lo:CCU6_au32PWMOnTime, %d8
	.loc 1 210 0
	movh.a	%a15, hi:CCU6_bPwmMidPointV
	.loc 1 182 0
	st.w	[%a12] 4, %d8
	.loc 1 183 0
	st.w	[%a12] 8, %d8
	.loc 1 210 0
	st.b	[%a15] lo:CCU6_bPwmMidPointV, %d15
	.loc 1 211 0
	movh.a	%a15, hi:CCU6_bPwmMidPointW
	st.b	[%a15] lo:CCU6_bPwmMidPointW, %d15
	.loc 1 212 0
	movh.a	%a15, hi:CCU6_u16PwmMidPointErrCnt
	st.h	[%a15] lo:CCU6_u16PwmMidPointErrCnt, %d8
	.loc 1 213 0
	movh.a	%a15, hi:CCU6_bIgbtHighSideShort
	st.b	[%a15] lo:CCU6_bIgbtHighSideShort, %d15
	.loc 1 214 0
	movh.a	%a15, hi:CCU6_bIgbtLowSideShort
	st.b	[%a15] lo:CCU6_bIgbtLowSideShort, %d15
	.loc 1 215 0
	movh.a	%a15, hi:CCU6_u8PreTestStep
	st.b	[%a15] lo:CCU6_u8PreTestStep, %d15
	.loc 1 216 0
	movh.a	%a15, hi:CCU6_u16HighVolAdc
	st.h	[%a15] lo:CCU6_u16HighVolAdc, %d8
	.loc 1 217 0
	movh.a	%a15, hi:CCU6_f32HighVolPhys
	st.w	[%a15] lo:CCU6_f32HighVolPhys, %d2
	.loc 1 218 0
	movh.a	%a15, hi:CCU6_u16P5VHSAdc
	st.h	[%a15] lo:CCU6_u16P5VHSAdc, %d8
	.loc 1 219 0
	movh.a	%a15, hi:CCU6_u8P5VHSFltCnt
	st.b	[%a15] lo:CCU6_u8P5VHSFltCnt, %d15
	.loc 1 220 0
	movh.a	%a15, hi:CCU6_u8P5VLSFltCnt
	st.b	[%a15] lo:CCU6_u8P5VLSFltCnt, %d15
	.loc 1 221 0
	movh.a	%a15, hi:CCU6_bP5VHSFltFlg
	st.b	[%a15] lo:CCU6_bP5VHSFltFlg, %d15
	.loc 1 222 0
	movh.a	%a15, hi:CCU6_bP5VLSFltFlg
	st.b	[%a15] lo:CCU6_bP5VLSFltFlg, %d15
	.loc 1 223 0
	mov	%d2, 1
	movh.a	%a15, hi:CCU6_u8P5VPowerMngStt
	st.b	[%a15] lo:CCU6_u8P5VPowerMngStt, %d2
	.loc 1 224 0
	movh.a	%a15, hi:CCU6_bP5VDiagReinitCmd
	st.b	[%a15] lo:CCU6_bP5VDiagReinitCmd, %d15
	.loc 1 225 0
	movh.a	%a15, hi:CCU6_u8P5VSelfTstTimCnt
	st.b	[%a15] lo:CCU6_u8P5VSelfTstTimCnt, %d15
	.loc 1 226 0
	movh.a	%a15, hi:CCU6_u32DrvClkHsPerdRaw
	st.w	[%a15] lo:CCU6_u32DrvClkHsPerdRaw, %d8
	.loc 1 227 0
	movh.a	%a15, hi:CCU6_u32DrvClkHsDutyRaw
	st.w	[%a15] lo:CCU6_u32DrvClkHsDutyRaw, %d8
	.loc 1 228 0
	movh.a	%a15, hi:CCU6_u32DrvClkLsPerdRaw
	st.w	[%a15] lo:CCU6_u32DrvClkLsPerdRaw, %d8
	.loc 1 229 0
	movh.a	%a15, hi:CCU6_u32DrvClkLsDutyRaw
	st.w	[%a15] lo:CCU6_u32DrvClkLsDutyRaw, %d8
	.loc 1 230 0
	movh.a	%a15, hi:CCU6_u8StartMidPotDetCnt
	st.b	[%a15] lo:CCU6_u8StartMidPotDetCnt, %d15
.LVL0:
	.loc 1 233 0
	movh.a	%a15, hi:CCU6_kudtIfxCcu6TimerWithTriggerCfg
	.loc 1 172 0
	sub.a	%SP, 48
.LCFI0:
	.loc 1 233 0
	lea	%a15, [%a15] lo:CCU6_kudtIfxCcu6TimerWithTriggerCfg
	st.a	[%SP] 20, %a15
	.loc 1 234 0
	ld.a	%a15, [%a15] 16
.LVL1:
.LBB96:
.LBB97:
	.file 2 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Ccu6\\Std\\IfxCcu6.h"
	.loc 2 2157 0
	mov	%d15, 257
.LVL2:
.LBE97:
.LBE96:
	.loc 1 236 0
	mov.aa	%a4, %a15
	call	IfxCcu6_enableModule
.LVL3:
.LBB99:
.LBB98:
	.loc 2 2158 0
	st.w	[%a15] 120, %d15
.LVL4:
.LBE98:
.LBE99:
.LBB100:
.LBB101:
	.loc 2 2095 0
	st.h	[%a15] 36, %d9
.LVL5:
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	.loc 2 1610 0
	mov	%d15, 64
.LVL6:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LVL7:
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	.loc 2 2006 0
	ld.w	%d15, [%a15] 112
.LVL8:
.LBE105:
.LBE104:
	.loc 1 248 0
	movh.a	%a2, hi:CCU6_bDualSmpEnaC
.LBB107:
.LBB106:
	.loc 2 2006 0
	insert	%d15, %d15, 1, 0, 3
	st.w	[%a15] 112, %d15
.LVL9:
.LBE106:
.LBE107:
.LBB108:
.LBB109:
	.loc 2 2083 0
	ld.w	%d15, [%a15] 112
	insert	%d15, %d15, 1, 7, 1
	st.w	[%a15] 112, %d15
.LVL10:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	.loc 2 2089 0
	st.h	[%a15] 32, %d8
.LVL11:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 2 1565 0
	ld.w	%d15, [%a15] 176
	or	%d15, %d15, 64
	st.w	[%a15] 176, %d15
.LBE113:
.LBE112:
	.loc 1 248 0
	ld.bu	%d15, [%a2] lo:CCU6_bDualSmpEnaC
	jz	%d15, .L2
.LVL12:
.LBB114:
.LBB115:
	.loc 2 1565 0
	ld.w	%d15, [%a15] 176
	or	%d15, %d15, 128
	st.w	[%a15] 176, %d15
.LVL13:
.L2:
.LBE115:
.LBE114:
	.loc 1 252 0
	mov.aa	%a4, %a15
	mov	%d4, 6
	mov	%d5, 3
	call	IfxCcu6_routeInterruptNode
.LVL14:
	.loc 1 254 0
	call	CCU6_vidDisableTrap
.LVL15:
	.loc 1 257 0
	mov.aa	%a4, %a15
	mov	%d4, 6
	mov	%d5, 3
	call	IfxCcu6_connectTrigger
.LVL16:
	.loc 1 280 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
.LVL17:
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	call	IfxCcu6_PwmHl_init
.LVL18:
	.loc 1 282 0
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL19:
.LBB116:
.LBB117:
	.loc 1 132 0
	ld.hu	%d15, [%a15] 36
.LBE117:
.LBE116:
	.loc 1 282 0
	mov.a	%a15, %d10
.LVL20:
	st.h	[%a15] lo:CCU6_u16T12PeriodVal, %d15
.LVL21:
.LBB118:
.LBB119:
	.loc 1 566 0
	ld.a	%a15, [%a14] lo:CCU6_pstrModule
	ld.hu	%d15, [%a15] 36
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL22:
	.loc 1 567 0
	jz	%d15, .L1
	.loc 1 609 0
	mov.a	%a2, %d13
	mov	%e2, 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysUZ, %d3
	.loc 1 610 0
	mov.a	%a2, %d12
	.loc 1 617 0
	st.w	[%a13] lo:CCU6_au32PWMOnTime, %d15
	.loc 1 610 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysVZ, %d3
	.loc 1 611 0
	mov.a	%a2, %d11
	.loc 1 618 0
	st.w	[%a12] 4, %d15
	.loc 1 611 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysWZ, %d3
.LVL23:
	.loc 1 621 0
	st.h	[%a15] 64, %d15
.LVL24:
	.loc 1 622 0
	st.h	[%a15] 68, %d15
	.loc 1 619 0
	st.w	[%a12] 8, %d15
	.loc 1 623 0
	st.h	[%a15] 72, %d15
.LVL25:
.L1:
	ret
.LBE119:
.LBE118:
.LFE395:
	.size	CCU6_Init, .-CCU6_Init
	.align 1
	.global	CCU6_vidAlimPowerDelay
	.type	CCU6_vidAlimPowerDelay, @function
CCU6_vidAlimPowerDelay:
.LFB396:
	.loc 1 297 0
	.loc 1 301 0
	movh.a	%a15, hi:CCU6_u16AlimPowerOnDelay
	ld.hu	%d15, [%a15] lo:CCU6_u16AlimPowerOnDelay
	ge.u	%d2, %d15, 50
	jz	%d2, .L13
	ret
.L13:
	.loc 1 303 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 305 0
	movh	%d2, 16968
	utof	%d5, %d15
	.loc 1 308 0
	mov	%d4, 0
	.loc 1 305 0
	div.f	%d5, %d5, %d2
.LVL26:
	.loc 1 303 0
	st.h	[%a15] lo:CCU6_u16AlimPowerOnDelay, %d15
	.loc 1 306 0
	movh	%d2, 18083
	addi	%d2, %d2, -29184
	mul.f	%d5, %d5, %d2
.LVL27:
	.loc 1 307 0
	ftouz	%d5, %d5
	.loc 1 308 0
	extr.u	%d5, %d5, 0, 16
	j	Pwm_17_GtmCcu6_SetDutyCycle
.LVL28:
.LFE396:
	.size	CCU6_vidAlimPowerDelay, .-CCU6_vidAlimPowerDelay
	.align 1
	.global	CCU6_vidExcitationPwmState
	.type	CCU6_vidExcitationPwmState, @function
CCU6_vidExcitationPwmState:
.LFB397:
	.loc 1 323 0
.LVL29:
	.loc 1 325 0
	jz	%d4, .L17
	.loc 1 331 0
	jeq	%d4, 1, .L18
	ret
.L17:
	.loc 1 327 0
	mov	%e4, 1
.LVL30:
	call	Port_SetPinDirection
.LVL31:
	.loc 1 328 0
	mov	%e4, 233
	j	Port_SetPinDirection
.LVL32:
.L18:
	.loc 1 333 0
	mov	%d5, 128
	call	Port_SetPinDirection
.LVL33:
	.loc 1 334 0
	mov	%d4, 233
	mov	%d5, 128
	j	Port_SetPinDirection
.LVL34:
.LFE397:
	.size	CCU6_vidExcitationPwmState, .-CCU6_vidExcitationPwmState
	.align 1
	.global	CCU6_vidMotorStateMng
	.type	CCU6_vidMotorStateMng, @function
CCU6_vidMotorStateMng:
.LFB398:
	.loc 1 353 0
.LVL35:
	.loc 1 356 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV
.LVL36:
	movh.a	%a15, hi:CCU6_u16HighVolAdc
	st.h	[%a15] lo:CCU6_u16HighVolAdc, %d2
	.loc 1 357 0
	ld.hu	%d15, [%a15] lo:CCU6_u16HighVolAdc
	movh	%d2, 15948
	utof	%d15, %d15
	addi	%d2, %d2, -14680
	mul.f	%d15, %d15, %d2
	movh.a	%a15, hi:CCU6_f32HighVolPhys
	st.w	[%a15] lo:CCU6_f32HighVolPhys, %d15
	.loc 1 360 0
	movh.a	%a15, hi:CCU6_u8McuAscSttStep
	ld.bu	%d15, [%a15] lo:CCU6_u8McuAscSttStep
	jge.u	%d15, 6, .L20
	movh.a	%a2, hi:.L22
	lea	%a2, [%a2] lo:.L22
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L22:
	.code32
	j	.L21
	.code32
	j	.L23
	.code32
	j	.L24
	.code32
	j	.L25
	.code32
	j	.L26
	.code32
	j	.L27
.L64:
.LVL37:
.LBB146:
.LBB147:
	.loc 1 1305 0
	mov	%d4, 0
	call	DSM_u8GetUnitFaultLevel
.LVL38:
	mov	%d11, %d2
.LVL39:
	.loc 1 1306 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
.LVL40:
	mov	%d8, %d2
.LVL41:
	.loc 1 1307 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
.LVL42:
	mov	%d15, %d2
.LVL43:
	.loc 1 1308 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1
.LVL44:
	mov	%d10, %d2
.LVL45:
	.loc 1 1309 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1
.LVL46:
	mov	%d9, %d2
.LVL47:
	.loc 1 1310 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1
.LVL48:
	.loc 1 1321 0
	and	%d8, %d8, 255
.LVL49:
	.loc 1 1310 0
	mov	%d3, %d2
.LVL50:
	.loc 1 1322 0
	and	%d2, %d15, 255
.LVL51:
	.loc 1 1321 0
	eq	%d15, %d8, 0
.LVL52:
	.loc 1 1312 0
	movh.a	%a2, hi:CCU6_u8PwmState
	.loc 1 1321 0
	or.eq	%d15, %d2, 0
	.loc 1 1312 0
	ld.bu	%d4, [%a2] lo:CCU6_u8PwmState
.LVL53:
	.loc 1 1321 0
	jnz	%d15, .L20
	.loc 1 1323 0
	and	%d10, %d10, 255
.LVL54:
	.loc 1 1324 0
	and	%d9, %d9, 255
.LVL55:
	eq	%d15, %d10, 0
	or.eq	%d15, %d9, 0
	.loc 1 1325 0
	and	%d3, %d3, 255
.LVL56:
	or.eq	%d15, %d3, 0
	jnz	%d15, .L20
	.loc 1 1334 0
	lt.u	%d15, %d11, 5
	and.eq	%d15, %d4, 0
	jz	%d15, .L20
	.loc 1 1337 0
	movh.a	%a2, hi:CCU6_bClrTrapReq
	ld.bu	%d15, [%a2] lo:CCU6_bClrTrapReq
	jne	%d15, 1, .L20
.LVL57:
.LBE147:
.LBE146:
	.loc 1 429 0
	ld.bu	%d15, [%a12] lo:CCU6_u8AscRecoverCnt
	add	%d15, 1
	and	%d15, 255
	st.b	[%a12] lo:CCU6_u8AscRecoverCnt, %d15
	.loc 1 431 0
	call	FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HLogged
.LVL58:
	jz	%d2, .L63
.L37:
	.loc 1 437 0
	ld.bu	%d15, [%a13] lo:CCU6_u8OvcRcvCnt
	add	%d15, 1
	and	%d15, 255
	st.b	[%a13] lo:CCU6_u8OvcRcvCnt, %d15
.L36:
	.loc 1 441 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_bHwFaultDcOvVolt
	st.b	[%a2] lo:CCU6_bHwFaultDcOvVolt, %d15
	.loc 1 442 0
	movh.a	%a2, hi:CCU6_bHwFaultIgbtH
	st.b	[%a2] lo:CCU6_bHwFaultIgbtH, %d15
	.loc 1 443 0
	movh.a	%a2, hi:CCU6_bHwFaultIgbtL
	st.b	[%a2] lo:CCU6_bHwFaultIgbtL, %d15
	.loc 1 444 0
	movh.a	%a2, hi:CCU6_bHwFaultOvcU
	st.b	[%a2] lo:CCU6_bHwFaultOvcU, %d15
	.loc 1 445 0
	movh.a	%a2, hi:CCU6_bHwFaultOvcV
	st.b	[%a2] lo:CCU6_bHwFaultOvcV, %d15
	.loc 1 446 0
	movh.a	%a2, hi:CCU6_bHwFaultOvcW
	st.b	[%a2] lo:CCU6_bHwFaultOvcW, %d15
	.loc 1 449 0
	movh.a	%a2, hi:MAIN_bSoftOvCurrPhsUFlg
	st.b	[%a2] lo:MAIN_bSoftOvCurrPhsUFlg, %d15
	.loc 1 450 0
	movh.a	%a2, hi:MAIN_bSoftOvCurrPhsVFlg
	st.b	[%a2] lo:MAIN_bSoftOvCurrPhsVFlg, %d15
	.loc 1 451 0
	movh.a	%a2, hi:MAIN_bSoftOvCurrPhsWFlg
	st.b	[%a2] lo:MAIN_bSoftOvCurrPhsWFlg, %d15
	.loc 1 452 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_u16PwmMidPointErrCnt
	st.h	[%a2] lo:CCU6_u16PwmMidPointErrCnt, %d15
	.loc 1 453 0
	movh.a	%a2, hi:CCU6_u8StartMidPotDetCnt
	st.b	[%a2] lo:CCU6_u8StartMidPotDetCnt, %d15
	.loc 1 454 0
	movh.a	%a2, hi:MAIN_u8IgbtLowFltCnt
	st.b	[%a2] lo:MAIN_u8IgbtLowFltCnt, %d15
	.loc 1 458 0
	mov	%d4, 0
	.loc 1 455 0
	movh.a	%a2, hi:MAIN_u8IgbtHighFltCnt
	st.b	[%a2] lo:MAIN_u8IgbtHighFltCnt, %d15
	.loc 1 458 0
	call	FaultClear
.LVL59:
.LBB148:
.LBB149:
	.loc 1 1021 0
	movh.a	%a2, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a2, [%a2] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a2, [%a2] 20
	ld.a	%a2, [%a2] 16
.LVL60:
.LBB150:
.LBB151:
	.loc 1 142 0
	ld.w	%d15, [%a2] 168
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a2] 168, %d15
.LVL61:
.LBE151:
.LBE150:
.LBB152:
.LBB153:
	.loc 2 1610 0
	mov	%d15, 64
.LVL62:
	.loc 2 1611 0
	st.w	[%a2] 120, %d15
.LBE153:
.LBE152:
.LBE149:
.LBE148:
	.loc 1 461 0
	mov	%d15, 5
.LVL63:
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
.LVL64:
.L20:
	.loc 1 490 0
	movh.a	%a15, hi:CCU6_u16PwmModReq
	ld.hu	%d15, [%a15] lo:CCU6_u16PwmModReq
	jge.u	%d15, 8, .L19
	movh.a	%a15, hi:.L40
	lea	%a15, [%a15] lo:.L40
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L40:
	.code32
	j	.L39
	.code32
	j	.L41
	.code32
	j	.L19
	.code32
	j	.L19
	.code32
	j	.L19
	.code32
	j	.L42
	.code32
	j	.L42
	.code32
	j	.L42
.L19:
	ret
.L42:
.LVL65:
.LBB154:
.LBB155:
	.loc 1 1062 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL66:
	.loc 1 1064 0
	ld.w	%d2, [%a15] 140
	.loc 1 1065 0
	and	%d15, %d2, 63
	jz	%d15, .L47
	.loc 1 1067 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_u8StartMidPotDetCnt
	st.b	[%a2] lo:CCU6_u8StartMidPotDetCnt, %d15
	.loc 1 1069 0
	movh.a	%a2, hi:CCU6_bPwmOnGoingFlg
	st.b	[%a2] lo:CCU6_bPwmOnGoingFlg, %d15
	.loc 1 1072 0
	andn	%d2, %d2, ~(-192)
.LVL67:
	.loc 1 1073 0
	st.w	[%a15] 140, %d2
.L47:
.LBE155:
.LBE154:
	.loc 1 533 0
	mov	%d15, 2
	movh.a	%a15, hi:CCU6_u8PwmState
.LVL68:
	st.b	[%a15] lo:CCU6_u8PwmState, %d15
	.loc 1 535 0
	ret
.LVL69:
.L41:
.LBB156:
.LBB157:
	.loc 1 1092 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL70:
	.loc 1 1094 0
	ld.w	%d15, [%a15] 140
.LVL71:
	.loc 1 1095 0
	and	%d2, %d15, 63
	jnz	%d2, .L48
	.loc 1 1097 0
	mov	%d3, 63
	insert	%d15, %d15, %d3, 0, 6
	.loc 1 1098 0
	andn	%d15, %d15, ~(-129)
.LVL72:
	.loc 1 1099 0
	st.w	[%a15] 140, %d15
	.loc 1 1102 0
	movh.a	%a15, hi:CCU6_u8StartMidPotDetCnt
.LVL73:
	st.b	[%a15] lo:CCU6_u8StartMidPotDetCnt, %d2
	.loc 1 1104 0
	mov	%d15, 1
.LVL74:
	movh.a	%a15, hi:CCU6_bPwmOnGoingFlg
	st.b	[%a15] lo:CCU6_bPwmOnGoingFlg, %d15
.LVL75:
.L48:
.LBE157:
.LBE156:
	.loc 1 540 0
	mov	%d15, 1
.LVL76:
	movh.a	%a15, hi:CCU6_u8PwmState
	st.b	[%a15] lo:CCU6_u8PwmState, %d15
	.loc 1 542 0
	ret
.LVL77:
.L39:
	.loc 1 495 0
	movh.a	%a15, hi:CCU6_bIsCCU6Start
	ld.bu	%d15, [%a15] lo:CCU6_bIsCCU6Start
	jnz	%d15, .L43
	.loc 1 498 0
	movh.a	%a2, hi:CCU6_u8PwmState
	st.b	[%a2] lo:CCU6_u8PwmState, %d15
.LBB158:
.LBB159:
	.loc 1 301 0
	movh.a	%a2, hi:CCU6_u16AlimPowerOnDelay
	ld.hu	%d15, [%a2] lo:CCU6_u16AlimPowerOnDelay
	ge.u	%d2, %d15, 50
	jnz	%d2, .L44
	.loc 1 303 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 305 0
	movh	%d2, 16968
	utof	%d5, %d15
	.loc 1 308 0
	mov	%d4, 0
	.loc 1 305 0
	div.f	%d5, %d5, %d2
.LVL78:
	.loc 1 303 0
	st.h	[%a2] lo:CCU6_u16AlimPowerOnDelay, %d15
	.loc 1 306 0
	movh	%d2, 18083
	addi	%d2, %d2, -29184
	mul.f	%d5, %d5, %d2
.LVL79:
	.loc 1 307 0
	ftouz	%d5, %d5
	.loc 1 308 0
	extr.u	%d5, %d5, 0, 16
	call	Pwm_17_GtmCcu6_SetDutyCycle
.LVL80:
.L44:
.LBE159:
.LBE158:
	.loc 1 503 0
	movh.a	%a2, hi:CCU6_u16PowerOnDelay
	ld.hu	%d15, [%a2] lo:CCU6_u16PowerOnDelay
	ge.u	%d2, %d15, 100
	jnz	%d2, .L45
	.loc 1 505 0
	add	%d15, 1
	st.h	[%a2] lo:CCU6_u16PowerOnDelay, %d15
	ret
.L43:
.LVL81:
.LBB160:
.LBB161:
	.loc 1 1062 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL82:
	.loc 1 1064 0
	ld.w	%d2, [%a15] 140
	.loc 1 1065 0
	and	%d15, %d2, 63
	jz	%d15, .L46
	.loc 1 1067 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_u8StartMidPotDetCnt
	st.b	[%a2] lo:CCU6_u8StartMidPotDetCnt, %d15
	.loc 1 1069 0
	movh.a	%a2, hi:CCU6_bPwmOnGoingFlg
	st.b	[%a2] lo:CCU6_bPwmOnGoingFlg, %d15
	.loc 1 1072 0
	andn	%d2, %d2, ~(-192)
.LVL83:
	.loc 1 1073 0
	st.w	[%a15] 140, %d2
.L46:
.LBE161:
.LBE160:
	.loc 1 522 0
	mov	%d15, 0
	movh.a	%a15, hi:CCU6_u8PwmState
.LVL84:
	st.b	[%a15] lo:CCU6_u8PwmState, %d15
	ret
.LVL85:
.L26:
	.loc 1 422 0
	movh.a	%a12, hi:CCU6_u8AscRecoverCnt
	movh.a	%a2, hi:CCU6_ku8AscRecoverCntMaxC
	ld.bu	%d2, [%a12] lo:CCU6_u8AscRecoverCnt
	ld.bu	%d15, [%a2] lo:CCU6_ku8AscRecoverCntMaxC
	jge.u	%d2, %d15, .L32
	.loc 1 423 0 discriminator 1
	movh.a	%a13, hi:CCU6_u8OvcRcvCnt
	movh.a	%a2, hi:CCU6_ku8OvcRcvCntMaxC
	ld.bu	%d2, [%a13] lo:CCU6_u8OvcRcvCnt
	.loc 1 422 0 discriminator 1
	ld.bu	%d15, [%a2] lo:CCU6_ku8OvcRcvCntMaxC
	jlt.u	%d2, %d15, .L64
.L32:
	.loc 1 466 0
	mov	%d15, 6
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
	j	.L20
.L24:
.LVL86:
.LBB162:
.LBB163:
	.loc 1 981 0
	movh.a	%a2, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a2, [%a2] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a2, [%a2] 20
	ld.a	%a2, [%a2] 16
.LVL87:
	.loc 1 998 0
	ld.w	%d15, [%a2] 136
	andn	%d15, %d15, ~(-64)
	st.w	[%a2] 136, %d15
.LVL88:
.LBB164:
.LBB165:
	.loc 1 137 0
	ld.w	%d15, [%a2] 164
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a2] 164, %d15
.LVL89:
.LBE165:
.LBE164:
.LBB166:
.LBB167:
	.loc 2 1610 0
	mov	%d15, 64
.LVL90:
	.loc 2 1611 0
	st.w	[%a2] 120, %d15
.LBE167:
.LBE166:
	.loc 1 1002 0
	mov	%d15, 0
.LVL91:
	movh.a	%a2, hi:CCU6_u8McuAscType
.LVL92:
	st.b	[%a2] lo:CCU6_u8McuAscType, %d15
.LBE163:
.LBE162:
	.loc 1 401 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_u16McuAscSttDelay
	st.h	[%a2] lo:CCU6_u16McuAscSttDelay, %d15
	.loc 1 402 0
	mov	%d15, 3
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
	.loc 1 404 0
	j	.L20
.LVL93:
.L25:
	.loc 1 408 0
	movh.a	%a2, hi:CCU6_u16McuAscSttDelay
	ld.hu	%d15, [%a2] lo:CCU6_u16McuAscSttDelay
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L59
	.loc 1 414 0
	mov	%d15, 0
	st.h	[%a2] lo:CCU6_u16McuAscSttDelay, %d15
	.loc 1 415 0
	mov	%d15, 4
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
	j	.L20
.L27:
	.loc 1 474 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_u16McuAscSttDelay
	st.h	[%a2] lo:CCU6_u16McuAscSttDelay, %d15
	.loc 1 476 0
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
	.loc 1 478 0
	j	.L20
.L21:
	.loc 1 364 0
	movh.a	%a15, hi:CCU6_u16PwmMidPointErrCnt
	movh.a	%a2, hi:CCU6_ku8PwmMidPointFaultC
	ld.hu	%d15, [%a15] lo:CCU6_u16PwmMidPointErrCnt
	ld.bu	%d2, [%a2] lo:CCU6_ku8PwmMidPointFaultC
	jlt.u	%d2, %d15, .L20
	.loc 1 371 0
	movh.a	%a2, hi:CCU6_bPwmOnGoingFlg
	ld.bu	%d15, [%a2] lo:CCU6_bPwmOnGoingFlg
	jnz	%d15, .L20
	.loc 1 373 0
	st.h	[%a15] lo:CCU6_u16PwmMidPointErrCnt, %d15
	j	.L20
.L23:
	.loc 1 383 0
	movh.a	%a2, hi:CCU6_u16McuAscSttDelay
	ld.hu	%d15, [%a2] lo:CCU6_u16McuAscSttDelay
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L59
	.loc 1 389 0
	movh.a	%a3, hi:CCU6_bMotorSpdRdy
	ld.bu	%d15, [%a3] lo:CCU6_bMotorSpdRdy
	jnz	%d15, .L20
	.loc 1 391 0
	st.h	[%a2] lo:CCU6_u16McuAscSttDelay, %d15
	.loc 1 392 0
	mov	%d15, 2
	st.b	[%a15] lo:CCU6_u8McuAscSttStep, %d15
	j	.L20
.L59:
	.loc 1 410 0
	add	%d15, 1
	st.h	[%a2] lo:CCU6_u16McuAscSttDelay, %d15
	j	.L20
.LVL94:
.L45:
.LBB168:
.LBB169:
	.loc 1 158 0
	movh.a	%a2, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a2, [%a2] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a2, [%a2] 20
	ld.a	%a2, [%a2] 16
.LVL95:
.LBB170:
.LBB171:
	.loc 2 2147 0
	mov	%d15, 514
.LVL96:
	.loc 2 2148 0
	st.w	[%a2] 120, %d15
.LBE171:
.LBE170:
.LBE169:
.LBE168:
	.loc 1 516 0
	mov	%d15, 1
.LVL97:
	st.b	[%a15] lo:CCU6_bIsCCU6Start, %d15
	ret
.LVL98:
.L63:
	.loc 1 432 0 discriminator 1
	call	FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LLogged
.LVL99:
	.loc 1 431 0 discriminator 1
	jnz	%d2, .L37
	.loc 1 433 0
	call	FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUILogged
.LVL100:
	.loc 1 432 0
	jnz	%d2, .L37
	.loc 1 434 0
	call	FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVILogged
.LVL101:
	.loc 1 433 0
	jnz	%d2, .L37
	.loc 1 435 0
	call	FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWILogged
.LVL102:
	.loc 1 434 0
	jnz	%d2, .L37
	j	.L36
.LFE398:
	.size	CCU6_vidMotorStateMng, .-CCU6_vidMotorStateMng
	.align 1
	.global	CCU6_vidSetPwmHlDuty
	.type	CCU6_vidSetPwmHlDuty, @function
CCU6_vidSetPwmHlDuty:
.LFB399:
	.loc 1 563 0
.LVL103:
	.loc 1 566 0
	movh.a	%a15, hi:CCU6_pstrModule
	ld.a	%a15, [%a15] lo:CCU6_pstrModule
	ld.hu	%d15, [%a15] 36
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL104:
	.loc 1 567 0
	jz	%d15, .L65
	.loc 1 569 0
	mov	%d2, 0
	cmp.f	%d3, %d4, %d2
	jnz.t	%d3, 0, .L70
	.loc 1 573 0
	movh	%d3, 16256
	cmp.f	%d7, %d4, %d3
	jz.t	%d7, 2, .L79
	mov	%d1, 0
	.loc 1 575 0
	movh	%d4, 16256
.LVL105:
.L67:
	.loc 1 582 0
	mov	%d2, 0
	cmp.f	%d3, %d5, %d2
	jnz.t	%d3, 0, .L72
.L82:
	.loc 1 586 0
	movh	%d3, 16256
	cmp.f	%d7, %d5, %d3
	jz.t	%d7, 2, .L80
	mov	%d0, 0
	.loc 1 588 0
	movh	%d5, 16256
.LVL106:
.L68:
	.loc 1 595 0
	mov	%d2, 0
	cmp.f	%d3, %d6, %d2
	jnz.t	%d3, 0, .L74
.L83:
	.loc 1 599 0
	movh	%d3, 16256
	cmp.f	%d7, %d6, %d3
	jz.t	%d7, 2, .L81
	mov	%d7, 0
	.loc 1 601 0
	movh	%d6, 16256
.LVL107:
.L69:
	.loc 1 617 0
	utof	%d15, %d15
.LVL108:
	.loc 1 609 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysUZ
	.loc 1 617 0
	mul.f	%d3, %d15, %d1
	.loc 1 618 0
	mul.f	%d2, %d15, %d0
	.loc 1 609 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysUZ, %d4
	.loc 1 617 0
	ftouz	%d3, %d3
	.loc 1 610 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysVZ
	.loc 1 619 0
	mul.f	%d15, %d15, %d7
	.loc 1 610 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysVZ, %d5
	.loc 1 617 0
	movh.a	%a3, hi:CCU6_au32PWMOnTime
	.loc 1 611 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysWZ
	.loc 1 618 0
	ftouz	%d2, %d2
	.loc 1 611 0
	st.w	[%a2] lo:CCU6_f32PwmDutyPhysWZ, %d6
.LVL109:
	.loc 1 619 0
	ftouz	%d15, %d15
	.loc 1 617 0
	lea	%a2, [%a3] lo:CCU6_au32PWMOnTime
	st.w	[%a3] lo:CCU6_au32PWMOnTime, %d3
	.loc 1 621 0
	extr.u	%d3, %d3, 0, 16
	.loc 1 618 0
	st.w	[%a2] 4, %d2
	.loc 1 622 0
	extr.u	%d2, %d2, 0, 16
	.loc 1 621 0
	st.h	[%a15] 64, %d3
	.loc 1 619 0
	st.w	[%a2] 8, %d15
	.loc 1 623 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 622 0
	st.h	[%a15] 68, %d2
	.loc 1 623 0
	st.h	[%a15] 72, %d15
.LVL110:
.L65:
	ret
.LVL111:
.L70:
	.loc 1 582 0
	mov	%d2, 0
	cmp.f	%d3, %d5, %d2
	movh	%d1, 16256
	.loc 1 571 0
	mov	%d4, 0
.LVL112:
	.loc 1 582 0
	jz.t	%d3, 0, .L82
.LVL113:
.L72:
	.loc 1 595 0
	mov	%d2, 0
	cmp.f	%d3, %d6, %d2
	movh	%d0, 16256
	.loc 1 584 0
	mov	%d5, 0
.LVL114:
	.loc 1 595 0
	jz.t	%d3, 0, .L83
.LVL115:
.L74:
	movh	%d7, 16256
	.loc 1 597 0
	mov	%d6, 0
.LVL116:
	j	.L69
.LVL117:
.L79:
	sub.f	%d1, %d3, %d4
	j	.L67
.L81:
	sub.f	%d7, %d3, %d6
	j	.L69
.L80:
	sub.f	%d0, %d3, %d5
	j	.L68
.LFE399:
	.size	CCU6_vidSetPwmHlDuty, .-CCU6_vidSetPwmHlDuty
	.align 1
	.global	CCU6_vidSetPwmMinDutyCycle
	.type	CCU6_vidSetPwmMinDutyCycle, @function
CCU6_vidSetPwmMinDutyCycle:
.LFB400:
	.loc 1 637 0
.LVL118:
	ret
.LFE400:
	.size	CCU6_vidSetPwmMinDutyCycle, .-CCU6_vidSetPwmMinDutyCycle
	.align 1
	.global	CCU6_vidSetPwmMaxDutyCycle
	.type	CCU6_vidSetPwmMaxDutyCycle, @function
CCU6_vidSetPwmMaxDutyCycle:
.LFB401:
	.loc 1 650 0
.LVL119:
	ret
.LFE401:
	.size	CCU6_vidSetPwmMaxDutyCycle, .-CCU6_vidSetPwmMaxDutyCycle
	.align 1
	.global	CCU6_vidSetPwmModReq
	.type	CCU6_vidSetPwmModReq, @function
CCU6_vidSetPwmModReq:
.LFB402:
	.loc 1 663 0
.LVL120:
	.loc 1 664 0
	movh.a	%a15, hi:CCU6_u16PwmModReq
	st.h	[%a15] lo:CCU6_u16PwmModReq, %d4
	ret
.LFE402:
	.size	CCU6_vidSetPwmModReq, .-CCU6_vidSetPwmModReq
	.align 1
	.global	CCU6_u16GetPwmModReq
	.type	CCU6_u16GetPwmModReq, @function
CCU6_u16GetPwmModReq:
.LFB403:
	.loc 1 677 0
	.loc 1 679 0
	movh.a	%a15, hi:CCU6_u16PwmModReq
	ld.hu	%d2, [%a15] lo:CCU6_u16PwmModReq
	ret
.LFE403:
	.size	CCU6_u16GetPwmModReq, .-CCU6_u16GetPwmModReq
	.align 1
	.global	CCU6_u8GetPwmState
	.type	CCU6_u8GetPwmState, @function
CCU6_u8GetPwmState:
.LFB404:
	.loc 1 691 0
	.loc 1 693 0
	movh.a	%a15, hi:CCU6_u8PwmState
	ld.bu	%d2, [%a15] lo:CCU6_u8PwmState
	ret
.LFE404:
	.size	CCU6_u8GetPwmState, .-CCU6_u8GetPwmState
	.align 1
	.global	CCU6_u16GetPwmDutyUI
	.type	CCU6_u16GetPwmDutyUI, @function
CCU6_u16GetPwmDutyUI:
.LFB405:
	.loc 1 705 0
	.loc 1 707 0
	movh.a	%a15, hi:CCU6_au32PWMOnTime
	ld.hu	%d2, [%a15] lo:CCU6_au32PWMOnTime
	ret
.LFE405:
	.size	CCU6_u16GetPwmDutyUI, .-CCU6_u16GetPwmDutyUI
	.align 1
	.global	CCU6_u16GetPwmDutyVI
	.type	CCU6_u16GetPwmDutyVI, @function
CCU6_u16GetPwmDutyVI:
.LFB406:
	.loc 1 719 0
	.loc 1 721 0
	movh.a	%a15, hi:CCU6_au32PWMOnTime
	lea	%a15, [%a15] lo:CCU6_au32PWMOnTime
	ld.hu	%d2, [%a15] 4
	ret
.LFE406:
	.size	CCU6_u16GetPwmDutyVI, .-CCU6_u16GetPwmDutyVI
	.align 1
	.global	CCU6_u16GetPwmDutyWI
	.type	CCU6_u16GetPwmDutyWI, @function
CCU6_u16GetPwmDutyWI:
.LFB407:
	.loc 1 733 0
	.loc 1 735 0
	movh.a	%a15, hi:CCU6_au32PWMOnTime
	lea	%a15, [%a15] lo:CCU6_au32PWMOnTime
	ld.hu	%d2, [%a15] 8
	ret
.LFE407:
	.size	CCU6_u16GetPwmDutyWI, .-CCU6_u16GetPwmDutyWI
	.align 1
	.global	CCU6_u16GetPwmDeadTime
	.type	CCU6_u16GetPwmDeadTime, @function
CCU6_u16GetPwmDeadTime:
.LFB408:
	.loc 1 747 0
.LVL121:
	.loc 1 754 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	ld.hu	%d2, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	ret
.LFE408:
	.size	CCU6_u16GetPwmDeadTime, .-CCU6_u16GetPwmDeadTime
	.align 1
	.global	CCU6_vidSetPwmHlPeriod
	.type	CCU6_vidSetPwmHlPeriod, @function
CCU6_vidSetPwmHlPeriod:
.LFB409:
	.loc 1 766 0
.LVL122:
	.loc 1 767 0
	addi	%d15, %d4, -2080
	extr.u	%d15, %d15, 0, 16
	mov	%d2, 22921
	jge.u	%d15, %d2, .L93
	.loc 1 769 0
	movh.a	%a15, hi:CCU6_u16T12PeriodVal
	st.h	[%a15] lo:CCU6_u16T12PeriodVal, %d4
	.loc 1 771 0
	movh.a	%a15, hi:CCU6_pstrModule
	ld.a	%a15, [%a15] lo:CCU6_pstrModule
	st.h	[%a15] 36, %d4
.L93:
	ret
.LFE409:
	.size	CCU6_vidSetPwmHlPeriod, .-CCU6_vidSetPwmHlPeriod
	.align 1
	.global	CCU6_vidSetMotorSpdRdyFlg
	.type	CCU6_vidSetMotorSpdRdyFlg, @function
CCU6_vidSetMotorSpdRdyFlg:
.LFB410:
	.loc 1 785 0
.LVL123:
	.loc 1 787 0
	movh.a	%a15, hi:CCU6_bMotorSpdRdy
	st.b	[%a15] lo:CCU6_bMotorSpdRdy, %d4
	ret
.LFE410:
	.size	CCU6_vidSetMotorSpdRdyFlg, .-CCU6_vidSetMotorSpdRdyFlg
	.align 1
	.global	CCU6_vidSetClrTrapReq
	.type	CCU6_vidSetClrTrapReq, @function
CCU6_vidSetClrTrapReq:
.LFB411:
	.loc 1 800 0
.LVL124:
	.loc 1 802 0
	movh.a	%a15, hi:CCU6_bClrTrapReq
	st.b	[%a15] lo:CCU6_bClrTrapReq, %d4
	ret
.LFE411:
	.size	CCU6_vidSetClrTrapReq, .-CCU6_vidSetClrTrapReq
	.align 1
	.global	CCU6_vidWait
	.type	CCU6_vidWait, @function
CCU6_vidWait:
.LFB412:
	.loc 1 815 0
.LVL125:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 818 0
	st.w	[%SP] 4, %d4
	.loc 1 819 0
	ld.w	%d15, [%SP] 4
	jz	%d15, .L97
.L100:
	.loc 1 821 0
	ld.w	%d15, [%SP] 4
	add	%d15, -1
	st.w	[%SP] 4, %d15
	.loc 1 819 0
	ld.w	%d15, [%SP] 4
	jnz	%d15, .L100
.L97:
	ret
.LFE412:
	.size	CCU6_vidWait, .-CCU6_vidWait
	.align 1
	.global	CCU6_vidMcuAscEnter
	.type	CCU6_vidMcuAscEnter, @function
CCU6_vidMcuAscEnter:
.LFB413:
	.loc 1 835 0
.LVL126:
	.loc 1 843 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	.loc 1 845 0
	movh.a	%a2, hi:CCU6_bIsCCU6Start
	.loc 1 843 0
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	.loc 1 845 0
	ld.bu	%d15, [%a2] lo:CCU6_bIsCCU6Start
	.loc 1 843 0
	ld.a	%a15, [%a15] 20
	.loc 1 835 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 843 0
	ld.a	%a15, [%a15] 16
.LVL127:
	.loc 1 845 0
	jz	%d15, .L102
	.loc 1 850 0
	mov	%d15, 0
	movh.a	%a2, hi:CCU6_bPwmOnGoingFlg
	st.b	[%a2] lo:CCU6_bPwmOnGoingFlg, %d15
	.loc 1 852 0
	movh.a	%a2, hi:CCU6_u8McuAscSttStep
	ld.bu	%d15, [%a2] lo:CCU6_u8McuAscSttStep
	jz	%d15, .L144
.L102:
	ret
.L144:
	.loc 1 854 0
	mov	%d15, 1
	st.b	[%a2] lo:CCU6_u8McuAscSttStep, %d15
	.loc 1 857 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
.LVL128:
	.loc 1 858 0
	and	%d2, %d2, 255
	jnz	%d2, .L106
	.loc 1 860 0
	movh.a	%a2, hi:CCU6_bHwFaultIgbtH
	st.b	[%a2] lo:CCU6_bHwFaultIgbtH, %d15
.L106:
.LVL129:
	.loc 1 864 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
.LVL130:
	.loc 1 865 0
	and	%d2, %d2, 255
	jnz	%d2, .L107
	.loc 1 867 0
	mov	%d15, 1
	movh.a	%a2, hi:CCU6_bHwFaultIgbtL
	st.b	[%a2] lo:CCU6_bHwFaultIgbtL, %d15
.L107:
.LVL131:
	.loc 1 871 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1
.LVL132:
	.loc 1 872 0
	and	%d2, %d2, 255
	jnz	%d2, .L108
	.loc 1 874 0
	mov	%d15, 1
	movh.a	%a2, hi:CCU6_bHwFaultOvcU
	st.b	[%a2] lo:CCU6_bHwFaultOvcU, %d15
.L108:
.LVL133:
	.loc 1 878 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1
.LVL134:
	.loc 1 879 0
	and	%d2, %d2, 255
	jnz	%d2, .L109
	.loc 1 881 0
	mov	%d15, 1
	movh.a	%a2, hi:CCU6_bHwFaultOvcV
	st.b	[%a2] lo:CCU6_bHwFaultOvcV, %d15
.L109:
.LVL135:
	.loc 1 885 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1
.LVL136:
	.loc 1 886 0
	and	%d2, %d2, 255
	jz	%d2, .L145
.L110:
.LVL137:
.LBB172:
.LBB173:
	.loc 1 818 0
	mov	%d15, 138
	st.w	[%SP] 4, %d15
	.loc 1 819 0
	ld.w	%d15, [%SP] 4
	jz	%d15, .L114
.L135:
	.loc 1 821 0
	ld.w	%d15, [%SP] 4
	add	%d15, -1
	st.w	[%SP] 4, %d15
	.loc 1 819 0
	ld.w	%d15, [%SP] 4
	jnz	%d15, .L135
.L114:
.LBE173:
.LBE172:
	.loc 1 894 0
	movh.a	%a2, hi:CCU6_u8McuAscType
	ld.bu	%d15, [%a2] lo:CCU6_u8McuAscType
	jnz	%d15, .L146
	.loc 1 896 0
	movh.a	%a3, hi:CCU6_bHwFaultIgbtH
	ld.bu	%d15, [%a3] lo:CCU6_bHwFaultIgbtH
	jeq	%d15, 1, .L147
	.loc 1 897 0 discriminator 3
	movh.a	%a3, hi:CCU6_bP5VHSFltFlg
	ld.bu	%d15, [%a3] lo:CCU6_bP5VHSFltFlg
	.loc 1 896 0 discriminator 3
	jeq	%d15, 1, .L148
.L118:
	.loc 1 901 0
	movh.a	%a3, hi:CCU6_bHwFaultIgbtL
	ld.bu	%d15, [%a3] lo:CCU6_bHwFaultIgbtL
	jeq	%d15, 1, .L120
.L126:
	.loc 1 902 0 discriminator 1
	movh.a	%a3, hi:CCU6_bIgbtHighSideShort
	ld.bu	%d15, [%a3] lo:CCU6_bIgbtHighSideShort
	.loc 1 901 0 discriminator 1
	jeq	%d15, 1, .L120
	.loc 1 903 0
	movh.a	%a3, hi:CCU6_bP5VLSFltFlg
	ld.bu	%d15, [%a3] lo:CCU6_bP5VLSFltFlg
	.loc 1 902 0
	jeq	%d15, 1, .L120
	.loc 1 909 0
	mov	%d15, 1
	st.b	[%a2] lo:CCU6_u8McuAscType, %d15
.L123:
.LVL138:
	.loc 1 937 0
	ld.w	%d15, [%a15] 136
	mov	%d2, 42
.LVL139:
	insert	%d15, %d15, %d2, 0, 6
	st.w	[%a15] 136, %d15
	j	.L125
.LVL140:
.L146:
	.loc 1 913 0
	jeq	%d15, 2, .L122
	.loc 1 926 0
	jeq	%d15, 1, .L123
.L119:
.LVL141:
	.loc 1 950 0
	ld.w	%d15, [%a15] 136
	andn	%d15, %d15, ~(-64)
	st.w	[%a15] 136, %d15
.LVL142:
.L125:
.LBB174:
.LBB175:
	.loc 2 2157 0
	mov	%d15, 257
.LVL143:
	.loc 2 2158 0
	st.w	[%a15] 120, %d15
.LVL144:
.LBE175:
.LBE174:
.LBB176:
.LBB177:
	.loc 2 1610 0
	mov	%d15, 64
.LVL145:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LVL146:
.LBE177:
.LBE176:
.LBB178:
.LBB179:
	.loc 2 2147 0
	mov	%d15, 514
.LVL147:
	.loc 2 2148 0
	st.w	[%a15] 120, %d15
	ret
.LVL148:
.L145:
.LBE179:
.LBE178:
	.loc 1 888 0
	mov	%d15, 1
	movh.a	%a2, hi:CCU6_bHwFaultOvcW
	st.b	[%a2] lo:CCU6_bHwFaultOvcW, %d15
	j	.L110
.LVL149:
.L120:
	.loc 1 905 0
	mov	%d15, 2
	st.b	[%a2] lo:CCU6_u8McuAscType, %d15
.L122:
.LVL150:
	.loc 1 924 0
	ld.w	%d15, [%a15] 136
	mov	%d2, 21
.LVL151:
	insert	%d15, %d15, %d2, 0, 6
	st.w	[%a15] 136, %d15
	j	.L125
.LVL152:
.L147:
	.loc 1 896 0 discriminator 1
	movh.a	%a3, hi:CCU6_bHwFaultIgbtL
	ld.bu	%d15, [%a3] lo:CCU6_bHwFaultIgbtL
	jeq	%d15, 1, .L116
	.loc 1 897 0
	movh.a	%a3, hi:CCU6_bP5VHSFltFlg
	ld.bu	%d15, [%a3] lo:CCU6_bP5VHSFltFlg
	.loc 1 896 0
	jne	%d15, 1, .L126
	.loc 1 897 0
	movh.a	%a3, hi:CCU6_bP5VLSFltFlg
	ld.bu	%d15, [%a3] lo:CCU6_bP5VLSFltFlg
	jne	%d15, 1, .L126
.L116:
	.loc 1 899 0
	mov	%d15, 3
	st.b	[%a2] lo:CCU6_u8McuAscType, %d15
	j	.L119
.L148:
	.loc 1 897 0
	movh.a	%a3, hi:CCU6_bP5VLSFltFlg
	ld.bu	%d15, [%a3] lo:CCU6_bP5VLSFltFlg
	jne	%d15, 1, .L118
	j	.L116
.LFE413:
	.size	CCU6_vidMcuAscEnter, .-CCU6_vidMcuAscEnter
	.align 1
	.global	CCU6_vidMcuAscExit
	.type	CCU6_vidMcuAscExit, @function
CCU6_vidMcuAscExit:
.LFB414:
	.loc 1 975 0
.LVL153:
	.loc 1 981 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	.loc 1 983 0
	movh.a	%a2, hi:CCU6_u8McuAscSttStep
	.loc 1 981 0
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	.loc 1 983 0
	ld.bu	%d15, [%a2] lo:CCU6_u8McuAscSttStep
	.loc 1 981 0
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL154:
	.loc 1 983 0
	jeq	%d15, 2, .L151
	ret
.L151:
.LVL155:
	.loc 1 998 0
	ld.w	%d15, [%a15] 136
	andn	%d15, %d15, ~(-64)
	st.w	[%a15] 136, %d15
.LVL156:
.LBB180:
.LBB181:
	.loc 1 137 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 164, %d15
.LVL157:
.LBE181:
.LBE180:
.LBB182:
.LBB183:
	.loc 2 1610 0
	mov	%d15, 64
.LVL158:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LBE183:
.LBE182:
	.loc 1 1002 0
	mov	%d15, 0
.LVL159:
	movh.a	%a15, hi:CCU6_u8McuAscType
.LVL160:
	st.b	[%a15] lo:CCU6_u8McuAscType, %d15
	ret
.LFE414:
	.size	CCU6_vidMcuAscExit, .-CCU6_vidMcuAscExit
	.align 1
	.global	CCU6_vidTryClearTrap
	.type	CCU6_vidTryClearTrap, @function
CCU6_vidTryClearTrap:
.LFB415:
	.loc 1 1016 0
.LVL161:
	.loc 1 1021 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL162:
.LBB184:
.LBB185:
	.loc 1 142 0
	ld.w	%d15, [%a15] 168
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 168, %d15
.LVL163:
.LBE185:
.LBE184:
.LBB186:
.LBB187:
	.loc 2 1610 0
	mov	%d15, 64
.LVL164:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
	ret
.LBE187:
.LBE186:
.LFE415:
	.size	CCU6_vidTryClearTrap, .-CCU6_vidTryClearTrap
	.align 1
	.global	CCU6_vidSoftTrapTrigger
	.type	CCU6_vidSoftTrapTrigger, @function
CCU6_vidSoftTrapTrigger:
.LFB416:
	.loc 1 1037 0
.LVL165:
	.loc 1 1038 0
	jnz	%d4, .L153
	.loc 1 1040 0
	movh.a	%a15, hi:CCU6_u8McuAscSttStep
	ld.bu	%d15, [%a15] lo:CCU6_u8McuAscSttStep
	jnz	%d15, .L153
	.loc 1 1042 0
	movh.a	%a15, hi:CCU6_pstrModule
	ld.a	%a15, [%a15] lo:CCU6_pstrModule
.LVL166:
.LBB188:
.LBB189:
	.loc 1 137 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 164, %d15
.LVL167:
.L153:
	ret
.LBE189:
.LBE188:
.LFE416:
	.size	CCU6_vidSoftTrapTrigger, .-CCU6_vidSoftTrapTrigger
	.align 1
	.global	CCU6_vidEnaTrapPinFunc
	.type	CCU6_vidEnaTrapPinFunc, @function
CCU6_vidEnaTrapPinFunc:
.LFB419:
	.loc 1 1118 0
	.loc 1 1121 0
	movh.a	%a15, hi:CCU6_kudtIfxCcu6TimerWithTriggerCfg
	lea	%a15, [%a15] lo:CCU6_kudtIfxCcu6TimerWithTriggerCfg
	ld.a	%a4, [%a15] 16
.LVL168:
	.loc 1 1131 0
	movh.a	%a15, hi:CCU6_bHwPinAscEnaC
.LBB190:
.LBB191:
	.loc 2 1639 0
	ld.w	%d15, [%a4] 132
	or	%d15, %d15, 256
	st.w	[%a4] 132, %d15
.LVL169:
.LBE191:
.LBE190:
.LBB192:
.LBB193:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a4] 132, %d15
.LVL170:
.LBE193:
.LBE192:
.LBB194:
.LBB195:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 12, 1
	st.w	[%a4] 132, %d15
.LVL171:
.LBE195:
.LBE194:
.LBB196:
.LBB197:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 9, 1
	st.w	[%a4] 132, %d15
.LVL172:
.LBE197:
.LBE196:
.LBB198:
.LBB199:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 11, 1
	st.w	[%a4] 132, %d15
.LVL173:
.LBE199:
.LBE198:
.LBB200:
.LBB201:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 13, 1
	st.w	[%a4] 132, %d15
.LVL174:
.LBE201:
.LBE200:
.LBB202:
.LBB203:
	.loc 2 2131 0
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a4] 132, %d15
.LBE203:
.LBE202:
	.loc 1 1131 0
	ld.bu	%d15, [%a15] lo:CCU6_bHwPinAscEnaC
	jnz	%d15, .L158
.LVL175:
.LBB204:
.LBB205:
	.loc 2 1520 0
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 0, 15, 1
	st.w	[%a4] 132, %d15
.LVL176:
.L157:
.LBE205:
.LBE204:
.LBB206:
.LBB207:
	.loc 1 1021 0
	movh.a	%a15, hi:CCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:CCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL177:
.LBE207:
.LBE206:
	.loc 1 1143 0
	mov	%d4, 10
	mov	%d5, 2
.LBB213:
.LBB212:
.LBB208:
.LBB209:
	.loc 1 142 0
	ld.w	%d15, [%a15] 168
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 168, %d15
.LVL178:
.LBE209:
.LBE208:
.LBB210:
.LBB211:
	.loc 2 1610 0
	mov	%d15, 64
.LVL179:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LVL180:
.LBE211:
.LBE210:
.LBE212:
.LBE213:
.LBB214:
.LBB215:
	.loc 2 1565 0
	ld.w	%d15, [%a4] 176
.LVL181:
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a4] 176, %d15
.LBE215:
.LBE214:
	.loc 1 1143 0
	call	IfxCcu6_routeInterruptNode
.LVL182:
	.loc 1 1144 0
	j	CCU6_vidEnableTrap
.LVL183:
.L158:
.LBB216:
.LBB217:
	.loc 2 1645 0
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 1, 15, 1
	st.w	[%a4] 132, %d15
	j	.L157
.LBE217:
.LBE216:
.LFE419:
	.size	CCU6_vidEnaTrapPinFunc, .-CCU6_vidEnaTrapPinFunc
	.align 1
	.global	CCU6_vidSwitchPwmUpdEvent
	.type	CCU6_vidSwitchPwmUpdEvent, @function
CCU6_vidSwitchPwmUpdEvent:
.LFB420:
	.loc 1 1159 0
.LVL184:
	.loc 1 1163 0
	movh.a	%a15, hi:CCU6_bDualSmpEnaC
	ld.bu	%d15, [%a15] lo:CCU6_bDualSmpEnaC
	jz	%d15, .L160
	.loc 1 1165 0
	movh.a	%a15, hi:CCU6_pstrModule
	ld.a	%a15, [%a15] lo:CCU6_pstrModule
	.loc 1 1166 0
	movh.a	%a2, hi:CCU6_u16T12CntVal
	.loc 1 1165 0
	ld.hu	%d15, [%a15] 32
.LVL185:
	.loc 1 1166 0
	st.h	[%a2] lo:CCU6_u16T12CntVal, %d15
	.loc 1 1169 0
	ge.u	%d15, %d15, 500
.LVL186:
	jnz	%d15, .L161
	.loc 1 1171 0
	ld.w	%d15, [%a15] 148
	mov	%d2, 1
	insert	%d15, %d15, 5, 0, 3
	st.w	[%a15] 148, %d15
	.loc 1 1172 0
	ld.w	%d15, [%a15] 148
	andn	%d15, %d15, ~(-49)
	st.w	[%a15] 148, %d15
	.loc 1 1173 0
	mov	%d15, 1
	movh.a	%a15, hi:CCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:CCU6_bT12ZeroMatchFlg, %d15
	.loc 1 1189 0
	movh.a	%a15, hi:CCU6_bPwmOnGoingFlg
	ld.bu	%d15, [%a15] lo:CCU6_bPwmOnGoingFlg
	jz	%d15, .L207
.L163:
	.loc 1 1191 0
	movh.a	%a15, hi:CCU6_u8StartMidPotDetCnt
	movh.a	%a2, hi:CCU6_ku8PwmMidPotStartDelayC
	ld.bu	%d3, [%a15] lo:CCU6_u8StartMidPotDetCnt
	ld.bu	%d15, [%a2] lo:CCU6_ku8PwmMidPotStartDelayC
	jge.u	%d3, %d15, .L165
	.loc 1 1193 0
	ld.bu	%d3, [%a15] lo:CCU6_u8StartMidPotDetCnt
	add	%d3, 1
	and	%d3, %d3, 255
	st.b	[%a15] lo:CCU6_u8StartMidPotDetCnt, %d3
.L165:
	.loc 1 1202 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysUZ
	ld.w	%d3, [%a2] lo:CCU6_f32PwmDutyPhysUZ
	.loc 1 1200 0
	jz	%d2, .L166
	.loc 1 1202 0
	movh.a	%a2, hi:CCU6_kf32MidPointDutyLC
	ld.w	%d2, [%a2] lo:CCU6_kf32MidPointDutyLC
	.loc 1 1188 0
	mov	%d4, 0
	.loc 1 1202 0
	cmp.f	%d3, %d3, %d2
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L167
	.loc 1 1204 0
	movh.a	%a2, hi:CCU6_bPwmMidPointU
	ld.bu	%d3, [%a2] lo:CCU6_bPwmMidPointU
	.loc 1 1188 0
	mov	%d4, 0
	.loc 1 1204 0
	jz	%d3, .L167
.LVL187:
	.loc 1 1207 0
	mov	%d3, 1
	movh.a	%a2, hi:CCU6_bIgbtHighSideShort
	st.b	[%a2] lo:CCU6_bIgbtHighSideShort, %d3
	.loc 1 1206 0
	mov	%d4, 1
.LVL188:
.L167:
	.loc 1 1211 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysVZ
	ld.w	%d3, [%a2] lo:CCU6_f32PwmDutyPhysVZ
	cmp.f	%d3, %d2, %d3
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L169
	.loc 1 1213 0
	movh.a	%a2, hi:CCU6_bPwmMidPointV
	ld.bu	%d3, [%a2] lo:CCU6_bPwmMidPointV
	jz	%d3, .L169
.LVL189:
	.loc 1 1216 0
	mov	%d3, 1
	movh.a	%a2, hi:CCU6_bIgbtHighSideShort
	st.b	[%a2] lo:CCU6_bIgbtHighSideShort, %d3
	.loc 1 1215 0
	mov	%d4, 1
.LVL190:
.L169:
	.loc 1 1220 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysWZ
	ld.w	%d3, [%a2] lo:CCU6_f32PwmDutyPhysWZ
	cmp.f	%d2, %d2, %d3
	or.t	%d2, %d2,2, %d2,1
	jz	%d2, .L164
	.loc 1 1222 0
	movh.a	%a2, hi:CCU6_bPwmMidPointW
	ld.bu	%d2, [%a2] lo:CCU6_bPwmMidPointW
	jz	%d2, .L164
.LVL191:
	.loc 1 1225 0
	mov	%d2, 1
	movh.a	%a2, hi:CCU6_bIgbtHighSideShort
	st.b	[%a2] lo:CCU6_bIgbtHighSideShort, %d2
	.loc 1 1224 0
	mov	%d4, 1
	j	.L164
.LVL192:
.L160:
	.loc 1 1184 0
	mov	%d15, 1
	movh.a	%a15, hi:CCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:CCU6_bT12ZeroMatchFlg, %d15
	mov	%d2, 1
.L162:
	.loc 1 1189 0
	movh.a	%a15, hi:CCU6_bPwmOnGoingFlg
	ld.bu	%d15, [%a15] lo:CCU6_bPwmOnGoingFlg
	jnz	%d15, .L163
.L207:
	movh.a	%a15, hi:CCU6_ku8PwmMidPotStartDelayC
	ld.bu	%d15, [%a15] lo:CCU6_ku8PwmMidPotStartDelayC
	.loc 1 1188 0
	mov	%d4, 0
	movh.a	%a15, hi:CCU6_u8StartMidPotDetCnt
.LVL193:
.L164:
	.loc 1 1260 0
	ld.bu	%d2, [%a15] lo:CCU6_u8StartMidPotDetCnt
	jlt.u	%d2, %d15, .L159
	.loc 1 1262 0
	movh.a	%a15, hi:CCU6_f32HighVolPhys
	ld.w	%d15, [%a15] lo:CCU6_f32HighVolPhys
	movh	%d2, 17274
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L159
	.loc 1 1266 0
	movh.a	%a15, hi:CCU6_u16PwmMidPointErrCnt
	ld.hu	%d15, [%a15] lo:CCU6_u16PwmMidPointErrCnt
	.loc 1 1264 0
	jz	%d4, .L179
	.loc 1 1266 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L159
	.loc 1 1268 0
	ld.hu	%d15, [%a15] lo:CCU6_u16PwmMidPointErrCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:CCU6_u16PwmMidPointErrCnt, %d15
	ret
.L179:
	.loc 1 1273 0
	jz	%d15, .L159
	.loc 1 1275 0
	ld.hu	%d15, [%a15] lo:CCU6_u16PwmMidPointErrCnt
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:CCU6_u16PwmMidPointErrCnt, %d15
.L159:
	ret
.LVL194:
.L161:
	.loc 1 1177 0
	ld.w	%d15, [%a15] 148
	.loc 1 1179 0
	mov	%d2, 0
	.loc 1 1177 0
	insert	%d15, %d15, 3, 0, 3
	st.w	[%a15] 148, %d15
	.loc 1 1178 0
	ld.w	%d15, [%a15] 148
	insert	%d15, %d15, 2, 4, 2
	st.w	[%a15] 148, %d15
	.loc 1 1179 0
	mov	%d15, 0
	movh.a	%a15, hi:CCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:CCU6_bT12ZeroMatchFlg, %d15
	j	.L162
.L166:
	.loc 1 1231 0
	movh.a	%a2, hi:CCU6_kf32MidPointDutyHC
	ld.w	%d2, [%a2] lo:CCU6_kf32MidPointDutyHC
	.loc 1 1188 0
	mov	%d4, 0
	.loc 1 1231 0
	cmp.f	%d3, %d3, %d2
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L172
	.loc 1 1233 0
	movh.a	%a2, hi:CCU6_bPwmMidPointU
	ld.bu	%d3, [%a2] lo:CCU6_bPwmMidPointU
	.loc 1 1188 0
	mov	%d4, 0
	.loc 1 1233 0
	jnz	%d3, .L172
.LVL195:
	.loc 1 1236 0
	mov	%d3, 1
	movh.a	%a2, hi:CCU6_bIgbtLowSideShort
	st.b	[%a2] lo:CCU6_bIgbtLowSideShort, %d3
	.loc 1 1235 0
	mov	%d4, 1
.LVL196:
.L172:
	.loc 1 1240 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysVZ
	ld.w	%d3, [%a2] lo:CCU6_f32PwmDutyPhysVZ
	cmp.f	%d3, %d2, %d3
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L174
	.loc 1 1242 0
	movh.a	%a2, hi:CCU6_bPwmMidPointV
	ld.bu	%d3, [%a2] lo:CCU6_bPwmMidPointV
	jnz	%d3, .L174
.LVL197:
	.loc 1 1245 0
	mov	%d3, 1
	movh.a	%a2, hi:CCU6_bIgbtLowSideShort
	st.b	[%a2] lo:CCU6_bIgbtLowSideShort, %d3
	.loc 1 1244 0
	mov	%d4, 1
.LVL198:
.L174:
	.loc 1 1249 0
	movh.a	%a2, hi:CCU6_f32PwmDutyPhysWZ
	ld.w	%d3, [%a2] lo:CCU6_f32PwmDutyPhysWZ
	cmp.f	%d2, %d2, %d3
	or.t	%d2, %d2,0, %d2,1
	jz	%d2, .L164
	.loc 1 1251 0
	movh.a	%a2, hi:CCU6_bPwmMidPointW
	ld.bu	%d2, [%a2] lo:CCU6_bPwmMidPointW
	jnz	%d2, .L164
.LVL199:
	.loc 1 1254 0
	mov	%d2, 1
	movh.a	%a2, hi:CCU6_bIgbtLowSideShort
	st.b	[%a2] lo:CCU6_bIgbtLowSideShort, %d2
	.loc 1 1253 0
	mov	%d4, 1
	j	.L164
.LFE420:
	.size	CCU6_vidSwitchPwmUpdEvent, .-CCU6_vidSwitchPwmUpdEvent
	.align 1
	.global	CCU6_bGetAscRecoverCondition
	.type	CCU6_bGetAscRecoverCondition, @function
CCU6_bGetAscRecoverCondition:
.LFB421:
	.loc 1 1292 0
.LVL200:
	.loc 1 1305 0
	mov	%d4, 0
	call	DSM_u8GetUnitFaultLevel
.LVL201:
	mov	%d8, %d2
.LVL202:
	.loc 1 1306 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
.LVL203:
	and	%d10, %d2, 255
.LVL204:
	.loc 1 1307 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
.LVL205:
	and	%d9, %d2, 255
.LVL206:
	.loc 1 1308 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1
.LVL207:
	and	%d12, %d2, 255
.LVL208:
	.loc 1 1309 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1
.LVL209:
	and	%d11, %d2, 255
.LVL210:
	.loc 1 1310 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1
.LVL211:
	.loc 1 1312 0
	movh.a	%a15, hi:CCU6_u8PwmState
	ld.bu	%d3, [%a15] lo:CCU6_u8PwmState
	.loc 1 1310 0
	and	%d4, %d2, 255
.LVL212:
	.loc 1 1343 0
	mov	%d15, 0
	.loc 1 1312 0
	jnz	%d3, .L215
.LVL213:
	.loc 1 1321 0
	eq	%d3, %d10, 0
	or.eq	%d3, %d9, 0
	jnz	%d3, .L215
	.loc 1 1324 0
	eq	%d2, %d12, 0
.LVL214:
	or.eq	%d2, %d11, 0
	.loc 1 1325 0
	or.eq	%d2, %d4, 0
	jz	%d2, .L216
.LVL215:
.L215:
	.loc 1 1347 0
	mov	%d2, %d15
	ret
.LVL216:
.L216:
	.loc 1 1337 0
	movh.a	%a15, hi:CCU6_bClrTrapReq
	ld.bu	%d15, [%a15] lo:CCU6_bClrTrapReq
	.loc 1 1343 0
	lt.u	%d8, %d8, 5
.LVL217:
	.loc 1 1339 0
	eq	%d15, %d15, 1
	.loc 1 1343 0
	sel	%d15, %d8, %d15, 0
	.loc 1 1347 0
	mov	%d2, %d15
	ret
.LFE421:
	.size	CCU6_bGetAscRecoverCondition, .-CCU6_bGetAscRecoverCondition
	.align 1
	.global	CCU6_bGetAscStatus
	.type	CCU6_bGetAscStatus, @function
CCU6_bGetAscStatus:
.LFB422:
	.loc 1 1359 0
.LVL218:
	.loc 1 1362 0
	movh.a	%a15, hi:CCU6_u8McuAscSttStep
	ld.bu	%d2, [%a15] lo:CCU6_u8McuAscSttStep
	.loc 1 1372 0
	eq	%d2, %d2, 1
	ret
.LFE422:
	.size	CCU6_bGetAscStatus, .-CCU6_bGetAscStatus
	.align 1
	.global	CCU6_vidSetIuvwZeroCompReq
	.type	CCU6_vidSetIuvwZeroCompReq, @function
CCU6_vidSetIuvwZeroCompReq:
.LFB423:
	.loc 1 1384 0
.LVL219:
	.loc 1 1386 0
	movh.a	%a15, hi:CCU6_bIuvwCompReq
	st.b	[%a15] lo:CCU6_bIuvwCompReq, %d4
	ret
.LFE423:
	.size	CCU6_vidSetIuvwZeroCompReq, .-CCU6_vidSetIuvwZeroCompReq
	.align 1
	.global	CCU6_bGetHwFaultIgbtH
	.type	CCU6_bGetHwFaultIgbtH, @function
CCU6_bGetHwFaultIgbtH:
.LFB424:
	.loc 1 1399 0
.LVL220:
	.loc 1 1404 0
	movh.a	%a15, hi:MAIN_u8IgbtHighFltCnt
	ld.bu	%d8, [%a15] lo:MAIN_u8IgbtHighFltCnt
.LVL221:
	.loc 1 1413 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
.LVL222:
	.loc 1 1415 0
	and	%d15, %d2, 255
	.loc 1 1419 0
	mov	%d2, 1
.LVL223:
	.loc 1 1415 0
	jz	%d15, .L220
	.loc 1 1416 0
	movh.a	%a15, hi:CCU6_bHwFaultIgbtH
	ld.bu	%d3, [%a15] lo:CCU6_bHwFaultIgbtH
	.loc 1 1419 0
	movh.a	%a15, hi:MAIN_u8IgbtFltConfirmCntC
	ld.bu	%d15, [%a15] lo:MAIN_u8IgbtFltConfirmCntC
.LVL224:
	eq	%d2, %d3, 1
	or.ge.u	%d2, %d8, %d15
.LVL225:
.L220:
	.loc 1 1427 0
	ret
.LFE424:
	.size	CCU6_bGetHwFaultIgbtH, .-CCU6_bGetHwFaultIgbtH
	.align 1
	.global	CCU6_bGetHwFaultIgbtL
	.type	CCU6_bGetHwFaultIgbtL, @function
CCU6_bGetHwFaultIgbtL:
.LFB425:
	.loc 1 1439 0
.LVL226:
	.loc 1 1444 0
	movh.a	%a15, hi:MAIN_u8IgbtLowFltCnt
	ld.bu	%d8, [%a15] lo:MAIN_u8IgbtLowFltCnt
.LVL227:
	.loc 1 1453 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
.LVL228:
	.loc 1 1455 0
	and	%d15, %d2, 255
	.loc 1 1459 0
	mov	%d2, 1
.LVL229:
	.loc 1 1455 0
	jz	%d15, .L224
	.loc 1 1456 0
	movh.a	%a15, hi:CCU6_bHwFaultIgbtL
	ld.bu	%d3, [%a15] lo:CCU6_bHwFaultIgbtL
	.loc 1 1459 0
	movh.a	%a15, hi:MAIN_u8IgbtFltConfirmCntC
	ld.bu	%d15, [%a15] lo:MAIN_u8IgbtFltConfirmCntC
.LVL230:
	eq	%d2, %d3, 1
	or.ge.u	%d2, %d8, %d15
.LVL231:
.L224:
	.loc 1 1467 0
	ret
.LFE425:
	.size	CCU6_bGetHwFaultIgbtL, .-CCU6_bGetHwFaultIgbtL
	.align 1
	.global	CCU6_bGetHwFaultOvcU
	.type	CCU6_bGetHwFaultOvcU, @function
CCU6_bGetHwFaultOvcU:
.LFB426:
	.loc 1 1479 0
.LVL232:
	.loc 1 1483 0
	movh.a	%a15, hi:CCU6_bHwOvcFltDetEnaC
	ld.bu	%d15, [%a15] lo:CCU6_bHwOvcFltDetEnaC
	.loc 1 1499 0
	mov	%d2, 0
	.loc 1 1483 0
	jnz	%d15, .L233
.LVL233:
.L228:
	.loc 1 1503 0
	ret
.LVL234:
.L233:
	.loc 1 1485 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1
.LVL235:
	.loc 1 1487 0
	and	%d15, %d2, 255
	.loc 1 1490 0
	mov	%d2, 1
.LVL236:
	.loc 1 1487 0
	jz	%d15, .L228
	.loc 1 1488 0
	movh.a	%a15, hi:CCU6_bHwFaultOvcU
	ld.bu	%d2, [%a15] lo:CCU6_bHwFaultOvcU
	.loc 1 1494 0
	eq	%d2, %d2, 1
.LVL237:
	.loc 1 1503 0
	ret
.LFE426:
	.size	CCU6_bGetHwFaultOvcU, .-CCU6_bGetHwFaultOvcU
	.align 1
	.global	CCU6_bGetHwFaultOvcV
	.type	CCU6_bGetHwFaultOvcV, @function
CCU6_bGetHwFaultOvcV:
.LFB427:
	.loc 1 1515 0
.LVL238:
	.loc 1 1519 0
	movh.a	%a15, hi:CCU6_bHwOvcFltDetEnaC
	ld.bu	%d15, [%a15] lo:CCU6_bHwOvcFltDetEnaC
	.loc 1 1535 0
	mov	%d2, 0
	.loc 1 1519 0
	jnz	%d15, .L240
.LVL239:
.L235:
	.loc 1 1539 0
	ret
.LVL240:
.L240:
	.loc 1 1521 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1
.LVL241:
	.loc 1 1523 0
	and	%d15, %d2, 255
	.loc 1 1526 0
	mov	%d2, 1
.LVL242:
	.loc 1 1523 0
	jz	%d15, .L235
	.loc 1 1524 0
	movh.a	%a15, hi:CCU6_bHwFaultOvcV
	ld.bu	%d2, [%a15] lo:CCU6_bHwFaultOvcV
	.loc 1 1530 0
	eq	%d2, %d2, 1
.LVL243:
	.loc 1 1539 0
	ret
.LFE427:
	.size	CCU6_bGetHwFaultOvcV, .-CCU6_bGetHwFaultOvcV
	.align 1
	.global	CCU6_bGetHwFaultOvcW
	.type	CCU6_bGetHwFaultOvcW, @function
CCU6_bGetHwFaultOvcW:
.LFB428:
	.loc 1 1551 0
.LVL244:
	.loc 1 1555 0
	movh.a	%a15, hi:CCU6_bHwOvcFltDetEnaC
	ld.bu	%d15, [%a15] lo:CCU6_bHwOvcFltDetEnaC
	.loc 1 1571 0
	mov	%d2, 0
	.loc 1 1555 0
	jnz	%d15, .L247
.LVL245:
.L242:
	.loc 1 1575 0
	ret
.LVL246:
.L247:
	.loc 1 1557 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1
.LVL247:
	.loc 1 1559 0
	and	%d15, %d2, 255
	.loc 1 1562 0
	mov	%d2, 1
.LVL248:
	.loc 1 1559 0
	jz	%d15, .L242
	.loc 1 1560 0
	movh.a	%a15, hi:CCU6_bHwFaultOvcW
	ld.bu	%d2, [%a15] lo:CCU6_bHwFaultOvcW
	.loc 1 1566 0
	eq	%d2, %d2, 1
.LVL249:
	.loc 1 1575 0
	ret
.LFE428:
	.size	CCU6_bGetHwFaultOvcW, .-CCU6_bGetHwFaultOvcW
	.align 1
	.global	CCU6_bGetHwFaultDcOvVolt
	.type	CCU6_bGetHwFaultDcOvVolt, @function
CCU6_bGetHwFaultDcOvVolt:
.LFB429:
	.loc 1 1587 0
.LVL250:
	.loc 1 1598 0
	movh.a	%a15, hi:CCU6_bHwFaultDcOvVolt
	ld.bu	%d2, [%a15] lo:CCU6_bHwFaultDcOvVolt
	.loc 1 1609 0
	eq	%d2, %d2, 1
	ret
.LFE429:
	.size	CCU6_bGetHwFaultDcOvVolt, .-CCU6_bGetHwFaultDcOvVolt
	.align 1
	.global	CCU6_bGetZeroMatchFlg
	.type	CCU6_bGetZeroMatchFlg, @function
CCU6_bGetZeroMatchFlg:
.LFB430:
	.loc 1 1621 0
	.loc 1 1623 0
	movh.a	%a15, hi:CCU6_bT12ZeroMatchFlg
	ld.bu	%d2, [%a15] lo:CCU6_bT12ZeroMatchFlg
	ret
.LFE430:
	.size	CCU6_bGetZeroMatchFlg, .-CCU6_bGetZeroMatchFlg
	.align 1
	.global	CCU6_vidSetHvOverFlg
	.type	CCU6_vidSetHvOverFlg, @function
CCU6_vidSetHvOverFlg:
.LFB431:
	.loc 1 1635 0
.LVL251:
	.loc 1 1636 0
	movh.a	%a15, hi:CCU6_bHwFaultDcOvVolt
	st.b	[%a15] lo:CCU6_bHwFaultDcOvVolt, %d4
	ret
.LFE431:
	.size	CCU6_vidSetHvOverFlg, .-CCU6_vidSetHvOverFlg
	.align 1
	.global	CCU6_bGetPwmRuningFlg
	.type	CCU6_bGetPwmRuningFlg, @function
CCU6_bGetPwmRuningFlg:
.LFB432:
	.loc 1 1649 0
	.loc 1 1651 0
	movh.a	%a15, hi:CCU6_bPwmOnGoingFlg
	ld.bu	%d2, [%a15] lo:CCU6_bPwmOnGoingFlg
	ret
.LFE432:
	.size	CCU6_bGetPwmRuningFlg, .-CCU6_bGetPwmRuningFlg
	.align 1
	.global	CCU6_vidPwmDrvClkDiag
	.type	CCU6_vidPwmDrvClkDiag, @function
CCU6_vidPwmDrvClkDiag:
.LFB433:
	.loc 1 1663 0
	ret
.LFE433:
	.size	CCU6_vidPwmDrvClkDiag, .-CCU6_vidPwmDrvClkDiag
	.align 1
	.global	CCU6_u8GetIGBTStatus
	.type	CCU6_u8GetIGBTStatus, @function
CCU6_u8GetIGBTStatus:
.LFB434:
	.loc 1 1749 0
.LVL252:
	.loc 1 1751 0
	movh.a	%a15, hi:CCU6_u8McuAscSttStep
	ld.bu	%d15, [%a15] lo:CCU6_u8McuAscSttStep
	.loc 1 1761 0
	mov	%d2, 0
	.loc 1 1751 0
	jeq	%d15, 1, .L254
	jz	%d15, .L257
	jge.u	%d15, 7, .L257
.LVL253:
	.loc 1 1771 0
	mov	%d2, 3
	.loc 1 1773 0
	ret
.LVL254:
.L257:
	.loc 1 1755 0
	mov	%d2, 2
.L254:
.LVL255:
	.loc 1 1782 0
	ret
.LFE434:
	.size	CCU6_u8GetIGBTStatus, .-CCU6_u8GetIGBTStatus
	.global	CCU6_pstrModule
.section .data.a4.CCU6_pstrModule,"aw",@progbits
	.align 2
	.type	CCU6_pstrModule, @object
	.size	CCU6_pstrModule, 4
CCU6_pstrModule:
	.word	-268424704
.section .bss.a4.CCU6_udtIfxCcu6PwmHlCfg,"aw",@nobits
	.align 2
	.type	CCU6_udtIfxCcu6PwmHlCfg, @object
	.size	CCU6_udtIfxCcu6PwmHlCfg, 28
CCU6_udtIfxCcu6PwmHlCfg:
	.zero	28
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
	.uaword	.LFB395
	.uaword	.LFE395-.LFB395
	.byte	0x4
	.uaword	.LCFI0-.LFB395
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB396
	.uaword	.LFE396-.LFB396
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB397
	.uaword	.LFE397-.LFB397
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB398
	.uaword	.LFE398-.LFB398
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB399
	.uaword	.LFE399-.LFB399
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB400
	.uaword	.LFE400-.LFB400
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB404
	.uaword	.LFE404-.LFB404
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB405
	.uaword	.LFE405-.LFB405
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB406
	.uaword	.LFE406-.LFB406
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB407
	.uaword	.LFE407-.LFB407
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB408
	.uaword	.LFE408-.LFB408
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB409
	.uaword	.LFE409-.LFB409
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB410
	.uaword	.LFE410-.LFB410
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB411
	.uaword	.LFE411-.LFB411
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.byte	0x4
	.uaword	.LCFI1-.LFB412
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB413
	.uaword	.LFE413-.LFB413
	.byte	0x4
	.uaword	.LCFI2-.LFB413
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB414
	.uaword	.LFE414-.LFB414
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB415
	.uaword	.LFE415-.LFB415
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB416
	.uaword	.LFE416-.LFB416
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB419
	.uaword	.LFE419-.LFB419
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB420
	.uaword	.LFE420-.LFB420
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB421
	.uaword	.LFE421-.LFB421
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB422
	.uaword	.LFE422-.LFB422
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB423
	.uaword	.LFE423-.LFB423
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB424
	.uaword	.LFE424-.LFB424
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB425
	.uaword	.LFE425-.LFB425
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB426
	.uaword	.LFE426-.LFB426
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB427
	.uaword	.LFE427-.LFB427
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB428
	.uaword	.LFE428-.LFB428
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB429
	.uaword	.LFE429-.LFB429
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB430
	.uaword	.LFE430-.LFB430
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB431
	.uaword	.LFE431-.LFB431
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB432
	.uaword	.LFE432-.LFB432
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB433
	.uaword	.LFE433-.LFB433
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB434
	.uaword	.LFE434-.LFB434
	.align 2
.LEFDE74:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 5 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Pwm_17_GtmCcu6\\inc\\Pwm_17_GtmCcu6.h"
	.file 6 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_regdef.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCcu6_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 11 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
	.file 12 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Port\\Std\\IfxPort.h"
	.file 13 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 14 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_PinMap\\IfxCcu6_PinMap.h"
	.file 15 ".\\output\\inc/..\\..\\Integration\\Infineon\\Service\\CpuGeneric\\StdIf\\IfxStdIf_Timer.h"
	.file 16 ".\\output\\inc/..\\..\\Integration\\Infineon\\Service\\CpuGeneric\\StdIf\\IfxStdIf_PwmHl.h"
	.file 17 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Ccu6\\TimerWithTrigger\\IfxCcu6_TimerWithTrigger.h"
	.file 18 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Ccu6\\PwmHl\\IfxCcu6_PwmHl.h"
	.file 19 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 20 "bswcdd\\CCU6\\CCU6_L.h"
	.file 21 "bswcdd\\CCU6\\CCU6_Cfg.h"
	.file 22 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 23 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 24 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
	.file 25 "bswcdd\\CCU6\\CCU6_Hal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9887
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCU6\\CCU6.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1dd
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1f9
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
	.uaword	0x1ba
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x233
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
	.uaword	0x1aa
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x1a1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1f9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x16
	.byte	0x2b
	.uaword	0x330
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
	.uleb128 0x3
	.string	"Ifx_UReg_8Bit"
	.byte	0x4
	.byte	0x60
	.uaword	0x1f9
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x4
	.byte	0x62
	.uaword	0x1aa
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x4
	.byte	0x65
	.uaword	0x233
	.uleb128 0x6
	.uaword	0x33c
	.uaword	0x38d
	.uleb128 0x7
	.uaword	0x330
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x33c
	.uaword	0x39d
	.uleb128 0x7
	.uaword	0x330
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.uaword	0x33c
	.uaword	0x3ad
	.uleb128 0x7
	.uaword	0x330
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.uaword	0x33c
	.uaword	0x3bd
	.uleb128 0x7
	.uaword	0x330
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.uaword	0x33c
	.uaword	0x3cd
	.uleb128 0x7
	.uaword	0x330
	.byte	0x37
	.byte	0
	.uleb128 0x6
	.uaword	0x33c
	.uaword	0x3dd
	.uleb128 0x7
	.uaword	0x330
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"Pwm_17_GtmCcu6_ChannelType"
	.byte	0x5
	.byte	0xf7
	.uaword	0x1ec
	.uleb128 0x3
	.string	"Port_PinType"
	.byte	0x6
	.byte	0xa4
	.uaword	0x217
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xaa
	.uaword	0x43a
	.uleb128 0x5
	.string	"PORT_PIN_IN"
	.sleb128 0
	.uleb128 0x5
	.string	"PORT_PIN_OUT"
	.sleb128 128
	.byte	0
	.uleb128 0x3
	.string	"Port_PinDirectionType"
	.byte	0x6
	.byte	0xad
	.uaword	0x413
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x4
	.uaword	0x465
	.uleb128 0xa
	.uleb128 0x3
	.string	"Ifx_TimerValue"
	.byte	0x7
	.byte	0x65
	.uaword	0x24b
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0x72
	.uaword	0x4b2
	.uleb128 0x5
	.string	"Ifx_ActiveState_low"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_ActiveState_high"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ActiveState"
	.byte	0x7
	.byte	0x75
	.uaword	0x47c
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0x4f0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.byte	0x8e
	.uaword	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"index"
	.byte	0x7
	.byte	0x8f
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0x4c9
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0xb0
	.uaword	0x5c8
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_centerAligned"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_centerAlignedInverted"
	.sleb128 1
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_leftAligned"
	.sleb128 2
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_rightAligned"
	.sleb128 3
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_off"
	.sleb128 4
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_init"
	.sleb128 5
	.uleb128 0x5
	.string	"Ifx_Pwm_Mode_count"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"Ifx_Pwm_Mode"
	.byte	0x7
	.byte	0xb8
	.uaword	0x50a
	.uleb128 0xe
	.string	"_Ifx_CCU6_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x44
	.uaword	0x831
	.uleb128 0xf
	.string	"EN0"
	.byte	0x8
	.byte	0x46
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0x8
	.byte	0x47
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0x8
	.byte	0x48
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0x8
	.byte	0x49
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0x8
	.byte	0x4a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0x8
	.byte	0x4b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0x8
	.byte	0x4c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0x8
	.byte	0x4d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0x8
	.byte	0x4e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0x8
	.byte	0x4f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0x8
	.byte	0x50
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0x8
	.byte	0x51
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0x8
	.byte	0x52
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0x8
	.byte	0x53
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0x8
	.byte	0x54
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0x8
	.byte	0x55
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN16"
	.byte	0x8
	.byte	0x56
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN17"
	.byte	0x8
	.byte	0x57
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN18"
	.byte	0x8
	.byte	0x58
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN19"
	.byte	0x8
	.byte	0x59
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN20"
	.byte	0x8
	.byte	0x5a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN21"
	.byte	0x8
	.byte	0x5b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN22"
	.byte	0x8
	.byte	0x5c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN23"
	.byte	0x8
	.byte	0x5d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN24"
	.byte	0x8
	.byte	0x5e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN25"
	.byte	0x8
	.byte	0x5f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN26"
	.byte	0x8
	.byte	0x60
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN27"
	.byte	0x8
	.byte	0x61
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN28"
	.byte	0x8
	.byte	0x62
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN29"
	.byte	0x8
	.byte	0x63
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN30"
	.byte	0x8
	.byte	0x64
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN31"
	.byte	0x8
	.byte	0x65
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_ACCEN0_Bits"
	.byte	0x8
	.byte	0x66
	.uaword	0x5dc
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC63R_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x69
	.uaword	0x88d
	.uleb128 0xf
	.string	"CCV"
	.byte	0x8
	.byte	0x6b
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0x6c
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC63R_Bits"
	.byte	0x8
	.byte	0x6d
	.uaword	0x84d
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC63SR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x70
	.uaword	0x8e9
	.uleb128 0xf
	.string	"CCS"
	.byte	0x8
	.byte	0x72
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0x73
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC63SR_Bits"
	.byte	0x8
	.byte	0x74
	.uaword	0x8a8
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC6R_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x77
	.uaword	0x944
	.uleb128 0xf
	.string	"CCV"
	.byte	0x8
	.byte	0x79
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0x7a
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC6R_Bits"
	.byte	0x8
	.byte	0x7b
	.uaword	0x905
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC6SR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x7e
	.uaword	0x99e
	.uleb128 0xf
	.string	"CCS"
	.byte	0x8
	.byte	0x80
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0x81
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC6SR_Bits"
	.byte	0x8
	.byte	0x82
	.uaword	0x95e
	.uleb128 0xe
	.string	"_Ifx_CCU6_CLC_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x85
	.uaword	0xa3e
	.uleb128 0xf
	.string	"DISR"
	.byte	0x8
	.byte	0x87
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DISS"
	.byte	0x8
	.byte	0x88
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.byte	0x89
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EDIS"
	.byte	0x8
	.byte	0x8a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.byte	0x8b
	.uaword	0x351
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0x8c
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CLC_Bits"
	.byte	0x8
	.byte	0x8d
	.uaword	0x9b9
	.uleb128 0xe
	.string	"_Ifx_CCU6_CMPMODIF_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x90
	.uaword	0xb5c
	.uleb128 0xf
	.string	"MCC60S"
	.byte	0x8
	.byte	0x92
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC61S"
	.byte	0x8
	.byte	0x93
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC62S"
	.byte	0x8
	.byte	0x94
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.byte	0x95
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC63S"
	.byte	0x8
	.byte	0x96
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.byte	0x97
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC60R"
	.byte	0x8
	.byte	0x98
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC61R"
	.byte	0x8
	.byte	0x99
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC62R"
	.byte	0x8
	.byte	0x9a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.byte	0x9b
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC63R"
	.byte	0x8
	.byte	0x9c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.byte	0x9d
	.uaword	0x351
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CMPMODIF_Bits"
	.byte	0x8
	.byte	0x9e
	.uaword	0xa57
	.uleb128 0xe
	.string	"_Ifx_CCU6_CMPSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa1
	.uaword	0xcf2
	.uleb128 0xf
	.string	"CC60ST"
	.byte	0x8
	.byte	0xa3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC61ST"
	.byte	0x8
	.byte	0xa4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC62ST"
	.byte	0x8
	.byte	0xa5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS60"
	.byte	0x8
	.byte	0xa6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS61"
	.byte	0x8
	.byte	0xa7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS62"
	.byte	0x8
	.byte	0xa8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC63ST"
	.byte	0x8
	.byte	0xa9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.byte	0xaa
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC60PS"
	.byte	0x8
	.byte	0xab
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT60PS"
	.byte	0x8
	.byte	0xac
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC61PS"
	.byte	0x8
	.byte	0xad
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT61PS"
	.byte	0x8
	.byte	0xae
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC62PS"
	.byte	0x8
	.byte	0xaf
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT62PS"
	.byte	0x8
	.byte	0xb0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT63PS"
	.byte	0x8
	.byte	0xb1
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13IM"
	.byte	0x8
	.byte	0xb2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0xb3
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CMPSTAT_Bits"
	.byte	0x8
	.byte	0xb4
	.uaword	0xb7a
	.uleb128 0xe
	.string	"_Ifx_CCU6_ID_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb7
	.uaword	0xd63
	.uleb128 0xf
	.string	"MODREV"
	.byte	0x8
	.byte	0xb9
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODNUM"
	.byte	0x8
	.byte	0xba
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0xbb
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_ID_Bits"
	.byte	0x8
	.byte	0xbc
	.uaword	0xd0f
	.uleb128 0xe
	.string	"_Ifx_CCU6_IEN_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.uaword	0xeec
	.uleb128 0xf
	.string	"ENCC60R"
	.byte	0x8
	.byte	0xc1
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC60F"
	.byte	0x8
	.byte	0xc2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC61R"
	.byte	0x8
	.byte	0xc3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC61F"
	.byte	0x8
	.byte	0xc4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC62R"
	.byte	0x8
	.byte	0xc5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC62F"
	.byte	0x8
	.byte	0xc6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT12OM"
	.byte	0x8
	.byte	0xc7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT12PM"
	.byte	0x8
	.byte	0xc8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT13CM"
	.byte	0x8
	.byte	0xc9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT13PM"
	.byte	0x8
	.byte	0xca
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENTRPF"
	.byte	0x8
	.byte	0xcb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.byte	0xcc
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCHE"
	.byte	0x8
	.byte	0xcd
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENWHE"
	.byte	0x8
	.byte	0xce
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENIDLE"
	.byte	0x8
	.byte	0xcf
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENSTR"
	.byte	0x8
	.byte	0xd0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.byte	0xd1
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_IEN_Bits"
	.byte	0x8
	.byte	0xd2
	.uaword	0xd7b
	.uleb128 0xe
	.string	"_Ifx_CCU6_IMON_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd5
	.uaword	0xffe
	.uleb128 0xf
	.string	"LBE"
	.byte	0x8
	.byte	0xd7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS0I"
	.byte	0x8
	.byte	0xd8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS1I"
	.byte	0x8
	.byte	0xd9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS2I"
	.byte	0x8
	.byte	0xda
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC60INI"
	.byte	0x8
	.byte	0xdb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC61INI"
	.byte	0x8
	.byte	0xdc
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC62INI"
	.byte	0x8
	.byte	0xdd
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CTRAPI"
	.byte	0x8
	.byte	0xde
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T12HRI"
	.byte	0x8
	.byte	0xdf
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13HRI"
	.byte	0x8
	.byte	0xe0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.byte	0xe1
	.uaword	0x351
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_IMON_Bits"
	.byte	0x8
	.byte	0xe2
	.uaword	0xf05
	.uleb128 0xe
	.string	"_Ifx_CCU6_INP_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe5
	.uaword	0x10d4
	.uleb128 0xf
	.string	"INPCC60"
	.byte	0x8
	.byte	0xe7
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPCC61"
	.byte	0x8
	.byte	0xe8
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPCC62"
	.byte	0x8
	.byte	0xe9
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPCHE"
	.byte	0x8
	.byte	0xea
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPERR"
	.byte	0x8
	.byte	0xeb
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPT12"
	.byte	0x8
	.byte	0xec
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPT13"
	.byte	0x8
	.byte	0xed
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.byte	0xee
	.uaword	0x351
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_INP_Bits"
	.byte	0x8
	.byte	0xef
	.uaword	0x1018
	.uleb128 0xe
	.string	"_Ifx_CCU6_IS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf2
	.uaword	0x124b
	.uleb128 0xf
	.string	"ICC60R"
	.byte	0x8
	.byte	0xf4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC60F"
	.byte	0x8
	.byte	0xf5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC61R"
	.byte	0x8
	.byte	0xf6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC61F"
	.byte	0x8
	.byte	0xf7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC62R"
	.byte	0x8
	.byte	0xf8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC62F"
	.byte	0x8
	.byte	0xf9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T12OM"
	.byte	0x8
	.byte	0xfa
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T12PM"
	.byte	0x8
	.byte	0xfb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13CM"
	.byte	0x8
	.byte	0xfc
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13PM"
	.byte	0x8
	.byte	0xfd
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TRPF"
	.byte	0x8
	.byte	0xfe
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TRPS"
	.byte	0x8
	.byte	0xff
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CHE"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"WHE"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IDLE"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STR"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x104
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IS_Bits"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x10ed
	.uleb128 0x14
	.string	"_Ifx_CCU6_ISR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x108
	.uaword	0x13d8
	.uleb128 0x11
	.string	"RCC60R"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC60F"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC61R"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC61F"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC62R"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC62F"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT12OM"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT12PM"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT13CM"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT13PM"
	.byte	0x8
	.uahalf	0x113
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RTRPF"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x115
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCHE"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RWHE"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RIDLE"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RSTR"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISR_Bits"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x1264
	.uleb128 0x14
	.string	"_Ifx_CCU6_ISS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x1567
	.uleb128 0x11
	.string	"SCC60R"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC60F"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC61R"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC61F"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC62R"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC62F"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST12OM"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST12PM"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST13CM"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST13PM"
	.byte	0x8
	.uahalf	0x129
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STRPF"
	.byte	0x8
	.uahalf	0x12a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWHC"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCHE"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWHE"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SIDLE"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SSTR"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x130
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISS_Bits"
	.byte	0x8
	.uahalf	0x131
	.uaword	0x13f2
	.uleb128 0x14
	.string	"_Ifx_CCU6_KRST0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x134
	.uaword	0x15da
	.uleb128 0x11
	.string	"RST"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RSTSTAT"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x138
	.uaword	0x351
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST0_Bits"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x1581
	.uleb128 0x14
	.string	"_Ifx_CCU6_KRST1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x1639
	.uleb128 0x11
	.string	"RST"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x351
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST1_Bits"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x15f6
	.uleb128 0x14
	.string	"_Ifx_CCU6_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x143
	.uaword	0x169a
	.uleb128 0x11
	.string	"CLR"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x146
	.uaword	0x351
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRSTCLR_Bits"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x1655
	.uleb128 0x14
	.string	"_Ifx_CCU6_KSCSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x1731
	.uleb128 0x11
	.string	"SB0"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SB1"
	.byte	0x8
	.uahalf	0x14d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SB2"
	.byte	0x8
	.uahalf	0x14e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SB3"
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x150
	.uaword	0x351
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KSCSR_Bits"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x16b8
	.uleb128 0x14
	.string	"_Ifx_CCU6_LI_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x154
	.uaword	0x1894
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x156
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CCPOS0EN"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CCPOS1EN"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CCPOS2EN"
	.byte	0x8
	.uahalf	0x159
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CC60INEN"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CC61INEN"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CC62INEN"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CTRAPEN"
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12HREN"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13HREN"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x160
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LBEEN"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"INPLBE"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x163
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_LI_Bits"
	.byte	0x8
	.uahalf	0x164
	.uaword	0x174d
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCFG_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x167
	.uaword	0x1937
	.uleb128 0x11
	.string	"T12"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MCM"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x16c
	.uaword	0x351
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCFG_Bits"
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x18ad
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCMCTR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x172
	.uaword	0x1a0f
	.uleb128 0x11
	.string	"SWSEL"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x175
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWSYN"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x177
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE12U"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE12D"
	.byte	0x8
	.uahalf	0x179
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE13U"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x351
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMCTR_Bits"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x1952
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCMOUT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x1ab9
	.uleb128 0x11
	.string	"MCMP"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x351
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"R"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x183
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EXPH"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CURH"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x186
	.uaword	0x351
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUT_Bits"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x1a2c
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCMOUTS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x1b92
	.uleb128 0x11
	.string	"MCMPS"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x351
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STRMCM"
	.byte	0x8
	.uahalf	0x18e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EXPHS"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CURHS"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x191
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STRHP"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x193
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUTS_Bits"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x1ad6
	.uleb128 0x14
	.string	"_Ifx_CCU6_MODCTR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x197
	.uaword	0x1c5d
	.uleb128 0x11
	.string	"T12MODEN"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x351
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MCMEN"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13MODEN"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x351
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ECT13O"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MODCTR_Bits"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x1bb0
	.uleb128 0x14
	.string	"_Ifx_CCU6_MOSEL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a3
	.uaword	0x1cf7
	.uleb128 0x11
	.string	"TRIG0SEL"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRIG1SEL"
	.byte	0x8
	.uahalf	0x1a6
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRIG2SEL"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_9"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x351
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MOSEL_Bits"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x1c7a
	.uleb128 0x14
	.string	"_Ifx_CCU6_OCS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x1dce
	.uleb128 0x11
	.string	"TGS"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TGB"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TG_P"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x351
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x351
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS_P"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUSSTA"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_30"
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_OCS_Bits"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x1d13
	.uleb128 0x14
	.string	"_Ifx_CCU6_PISEL0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x1ec2
	.uleb128 0x11
	.string	"ISCC60"
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCC61"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCC62"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISTRP"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISPOS0"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISPOS1"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISPOS2"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IST12HR"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL0_Bits"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x1de8
	.uleb128 0x14
	.string	"_Ifx_CCU6_PISEL2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x1f7d
	.uleb128 0x11
	.string	"IST13HR"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCNT12"
	.byte	0x8
	.uahalf	0x1ca
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCNT13"
	.byte	0x8
	.uahalf	0x1cb
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12EXT"
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13EXT"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x351
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL2_Bits"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x1edf
	.uleb128 0x14
	.string	"_Ifx_CCU6_PSLR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x2002
	.uleb128 0x11
	.string	"PSL"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x351
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PSL63"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x351
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PSLR_Bits"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x1f9a
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x2060
	.uleb128 0x11
	.string	"T12CV"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12_Bits"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x201d
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12DTC_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x2142
	.uleb128 0x11
	.string	"DTM"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTE0"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTE1"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTE2"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTR0"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTR1"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTR2"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x351
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12DTC_Bits"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x207a
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12MSEL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x21f8
	.uleb128 0x11
	.string	"MSEL60"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x351
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSEL61"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x351
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSEL62"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x351
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"HSYNC"
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DBYP"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1f7
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12MSEL_Bits"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x215f
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12PR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x225b
	.uleb128 0x11
	.string	"T12PV"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12PR_Bits"
	.byte	0x8
	.uahalf	0x1ff
	.uaword	0x2216
	.uleb128 0x14
	.string	"_Ifx_CCU6_T13_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x202
	.uaword	0x22ba
	.uleb128 0x11
	.string	"T13CV"
	.byte	0x8
	.uahalf	0x204
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x205
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13_Bits"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x2277
	.uleb128 0x14
	.string	"_Ifx_CCU6_T13PR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x209
	.uaword	0x2319
	.uleb128 0x11
	.string	"T13PV"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13PR_Bits"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x22d4
	.uleb128 0x14
	.string	"_Ifx_CCU6_TCTR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x210
	.uaword	0x242d
	.uleb128 0x11
	.string	"T12CLK"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12PRE"
	.byte	0x8
	.uahalf	0x213
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12R"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE12"
	.byte	0x8
	.uahalf	0x215
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CDIR"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CTM"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13CLK"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13PRE"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13R"
	.byte	0x8
	.uahalf	0x21a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE13"
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x351
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR0_Bits"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x2335
	.uleb128 0x14
	.string	"_Ifx_CCU6_TCTR2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x220
	.uaword	0x250c
	.uleb128 0x11
	.string	"T12SSC"
	.byte	0x8
	.uahalf	0x222
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13SSC"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13TEC"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13TED"
	.byte	0x8
	.uahalf	0x225
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x226
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12RSEL"
	.byte	0x8
	.uahalf	0x227
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RSEL"
	.byte	0x8
	.uahalf	0x228
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x229
	.uaword	0x351
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR2_Bits"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x2449
	.uleb128 0x14
	.string	"_Ifx_CCU6_TCTR4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x2689
	.uleb128 0x11
	.string	"T12RR"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12RS"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12RES"
	.byte	0x8
	.uahalf	0x231
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTRES"
	.byte	0x8
	.uahalf	0x232
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x233
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12CNT"
	.byte	0x8
	.uahalf	0x234
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12STR"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12STD"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RR"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RS"
	.byte	0x8
	.uahalf	0x238
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RES"
	.byte	0x8
	.uahalf	0x239
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x23a
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13CNT"
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13STR"
	.byte	0x8
	.uahalf	0x23c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13STD"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR4_Bits"
	.byte	0x8
	.uahalf	0x23f
	.uaword	0x2528
	.uleb128 0x14
	.string	"_Ifx_CCU6_TRPCTR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x242
	.uaword	0x2764
	.uleb128 0x11
	.string	"TRPM0"
	.byte	0x8
	.uahalf	0x244
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPM1"
	.byte	0x8
	.uahalf	0x245
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPM2"
	.byte	0x8
	.uahalf	0x246
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x247
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPEN"
	.byte	0x8
	.uahalf	0x248
	.uaword	0x351
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPEN13"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPPEN"
	.byte	0x8
	.uahalf	0x24a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x24b
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TRPCTR_Bits"
	.byte	0x8
	.uahalf	0x24c
	.uaword	0x26a5
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x254
	.uaword	0x27a9
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x256
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x257
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x258
	.uaword	0x831
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ACCEN0"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x2781
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x25c
	.uaword	0x27e9
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x25e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x25f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x260
	.uaword	0x88d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC63R"
	.byte	0x8
	.uahalf	0x261
	.uaword	0x27c1
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x264
	.uaword	0x2828
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x267
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x268
	.uaword	0x8e9
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC63SR"
	.byte	0x8
	.uahalf	0x269
	.uaword	0x2800
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x2868
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x270
	.uaword	0x944
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC6R"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x2840
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x274
	.uaword	0x28a6
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x276
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x277
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x99e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC6SR"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x287e
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x27c
	.uaword	0x28e5
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x27f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x280
	.uaword	0xa3e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CLC"
	.byte	0x8
	.uahalf	0x281
	.uaword	0x28bd
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x284
	.uaword	0x2922
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x287
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x288
	.uaword	0xb5c
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CMPMODIF"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x28fa
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x2964
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x290
	.uaword	0xcf2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CMPSTAT"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x293c
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x294
	.uaword	0x29a5
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x296
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x298
	.uaword	0xd63
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ID"
	.byte	0x8
	.uahalf	0x299
	.uaword	0x297d
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x29e1
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2a0
	.uaword	0xeec
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IEN"
	.byte	0x8
	.uahalf	0x2a1
	.uaword	0x29b9
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a4
	.uaword	0x2a1e
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2a6
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2a7
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2a8
	.uaword	0xffe
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IMON"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x29f6
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ac
	.uaword	0x2a5c
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2ae
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2af
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x10d4
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_INP"
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x2a34
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x2a99
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2b6
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2b7
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x124b
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IS"
	.byte	0x8
	.uahalf	0x2b9
	.uaword	0x2a71
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2bc
	.uaword	0x2ad5
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2be
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2bf
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2c0
	.uaword	0x13d8
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISR"
	.byte	0x8
	.uahalf	0x2c1
	.uaword	0x2aad
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c4
	.uaword	0x2b12
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2c6
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2c7
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x1567
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISS"
	.byte	0x8
	.uahalf	0x2c9
	.uaword	0x2aea
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2cc
	.uaword	0x2b4f
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2cf
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2d0
	.uaword	0x15da
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST0"
	.byte	0x8
	.uahalf	0x2d1
	.uaword	0x2b27
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x2b8e
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2d6
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2d7
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2d8
	.uaword	0x1639
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST1"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x2b66
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x2bcd
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2de
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2df
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2e0
	.uaword	0x169a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRSTCLR"
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x2ba5
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e4
	.uaword	0x2c0e
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2e6
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2e8
	.uaword	0x1731
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KSCSR"
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x2be6
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ec
	.uaword	0x2c4d
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2ee
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2ef
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x1894
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_LI"
	.byte	0x8
	.uahalf	0x2f1
	.uaword	0x2c25
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x2c89
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x2f8
	.uaword	0x1937
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCFG"
	.byte	0x8
	.uahalf	0x2f9
	.uaword	0x2c61
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fc
	.uaword	0x2cc7
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x2fe
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x300
	.uaword	0x1a0f
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMCTR"
	.byte	0x8
	.uahalf	0x301
	.uaword	0x2c9f
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x304
	.uaword	0x2d07
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x306
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x307
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x308
	.uaword	0x1ab9
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUT"
	.byte	0x8
	.uahalf	0x309
	.uaword	0x2cdf
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x2d47
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x30e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x30f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x310
	.uaword	0x1b92
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUTS"
	.byte	0x8
	.uahalf	0x311
	.uaword	0x2d1f
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x314
	.uaword	0x2d88
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x316
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x317
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x318
	.uaword	0x1c5d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MODCTR"
	.byte	0x8
	.uahalf	0x319
	.uaword	0x2d60
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x31c
	.uaword	0x2dc8
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x31e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x31f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x320
	.uaword	0x1cf7
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MOSEL"
	.byte	0x8
	.uahalf	0x321
	.uaword	0x2da0
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x324
	.uaword	0x2e07
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x326
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x327
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x328
	.uaword	0x1dce
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_OCS"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x2ddf
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x32c
	.uaword	0x2e44
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x32f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x330
	.uaword	0x1ec2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL0"
	.byte	0x8
	.uahalf	0x331
	.uaword	0x2e1c
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x334
	.uaword	0x2e84
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x336
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x337
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x338
	.uaword	0x1f7d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL2"
	.byte	0x8
	.uahalf	0x339
	.uaword	0x2e5c
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x33c
	.uaword	0x2ec4
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x33f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x340
	.uaword	0x2002
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PSLR"
	.byte	0x8
	.uahalf	0x341
	.uaword	0x2e9c
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x344
	.uaword	0x2f02
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x346
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x347
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x348
	.uaword	0x2060
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x2eda
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x2f3f
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x34e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x2142
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12DTC"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x2f17
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x354
	.uaword	0x2f7f
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x356
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x357
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x358
	.uaword	0x21f8
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12MSEL"
	.byte	0x8
	.uahalf	0x359
	.uaword	0x2f57
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x35c
	.uaword	0x2fc0
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x35f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x360
	.uaword	0x225b
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12PR"
	.byte	0x8
	.uahalf	0x361
	.uaword	0x2f98
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x364
	.uaword	0x2fff
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x366
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x367
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x368
	.uaword	0x22ba
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13"
	.byte	0x8
	.uahalf	0x369
	.uaword	0x2fd7
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x36c
	.uaword	0x303c
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x36e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x36f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x370
	.uaword	0x2319
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13PR"
	.byte	0x8
	.uahalf	0x371
	.uaword	0x3014
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x374
	.uaword	0x307b
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x376
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x377
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x378
	.uaword	0x242d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR0"
	.byte	0x8
	.uahalf	0x379
	.uaword	0x3053
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x37c
	.uaword	0x30ba
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x37e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x380
	.uaword	0x250c
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR2"
	.byte	0x8
	.uahalf	0x381
	.uaword	0x3092
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x384
	.uaword	0x30f9
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x387
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x388
	.uaword	0x2689
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR4"
	.byte	0x8
	.uahalf	0x389
	.uaword	0x30d1
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.uahalf	0x38c
	.uaword	0x3138
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.uahalf	0x38e
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.uahalf	0x38f
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.uahalf	0x390
	.uaword	0x2764
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TRPCTR"
	.byte	0x8
	.uahalf	0x391
	.uaword	0x3110
	.uleb128 0x17
	.string	"_Ifx_CCU6"
	.uahalf	0x100
	.byte	0x8
	.uahalf	0x39d
	.uaword	0x34d0
	.uleb128 0x18
	.string	"CLC"
	.byte	0x8
	.uahalf	0x39f
	.uaword	0x28e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"MCFG"
	.byte	0x8
	.uahalf	0x3a0
	.uaword	0x2c89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.string	"ID"
	.byte	0x8
	.uahalf	0x3a1
	.uaword	0x29a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.string	"MOSEL"
	.byte	0x8
	.uahalf	0x3a2
	.uaword	0x2dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.string	"PISEL0"
	.byte	0x8
	.uahalf	0x3a3
	.uaword	0x2e44
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.string	"PISEL2"
	.byte	0x8
	.uahalf	0x3a4
	.uaword	0x2e84
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.string	"reserved_18"
	.byte	0x8
	.uahalf	0x3a5
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.string	"KSCSR"
	.byte	0x8
	.uahalf	0x3a6
	.uaword	0x2c0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.string	"T12"
	.byte	0x8
	.uahalf	0x3a7
	.uaword	0x2f02
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.string	"T12PR"
	.byte	0x8
	.uahalf	0x3a8
	.uaword	0x2fc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.string	"T12DTC"
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x2f3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x18
	.string	"reserved_2C"
	.byte	0x8
	.uahalf	0x3aa
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x18
	.string	"CC6R"
	.byte	0x8
	.uahalf	0x3ab
	.uaword	0x34d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.string	"reserved_3C"
	.byte	0x8
	.uahalf	0x3ac
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.string	"CC6SR"
	.byte	0x8
	.uahalf	0x3ad
	.uaword	0x34e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x18
	.string	"reserved_4C"
	.byte	0x8
	.uahalf	0x3ae
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x18
	.string	"T13"
	.byte	0x8
	.uahalf	0x3af
	.uaword	0x2fff
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x18
	.string	"T13PR"
	.byte	0x8
	.uahalf	0x3b0
	.uaword	0x303c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.string	"CC63R"
	.byte	0x8
	.uahalf	0x3b1
	.uaword	0x27e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.string	"CC63SR"
	.byte	0x8
	.uahalf	0x3b2
	.uaword	0x2828
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x18
	.string	"CMPSTAT"
	.byte	0x8
	.uahalf	0x3b3
	.uaword	0x2964
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x18
	.string	"CMPMODIF"
	.byte	0x8
	.uahalf	0x3b4
	.uaword	0x2922
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x18
	.string	"T12MSEL"
	.byte	0x8
	.uahalf	0x3b5
	.uaword	0x2f7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.string	"reserved_6C"
	.byte	0x8
	.uahalf	0x3b6
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x18
	.string	"TCTR0"
	.byte	0x8
	.uahalf	0x3b7
	.uaword	0x307b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x18
	.string	"TCTR2"
	.byte	0x8
	.uahalf	0x3b8
	.uaword	0x30ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x18
	.string	"TCTR4"
	.byte	0x8
	.uahalf	0x3b9
	.uaword	0x30f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.string	"reserved_7C"
	.byte	0x8
	.uahalf	0x3ba
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x18
	.string	"MODCTR"
	.byte	0x8
	.uahalf	0x3bb
	.uaword	0x2d88
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x18
	.string	"TRPCTR"
	.byte	0x8
	.uahalf	0x3bc
	.uaword	0x3138
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x18
	.string	"PSLR"
	.byte	0x8
	.uahalf	0x3bd
	.uaword	0x2ec4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x18
	.string	"MCMOUTS"
	.byte	0x8
	.uahalf	0x3be
	.uaword	0x2d47
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x18
	.string	"MCMOUT"
	.byte	0x8
	.uahalf	0x3bf
	.uaword	0x2d07
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x18
	.string	"MCMCTR"
	.byte	0x8
	.uahalf	0x3c0
	.uaword	0x2cc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x18
	.string	"IMON"
	.byte	0x8
	.uahalf	0x3c1
	.uaword	0x2a1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x18
	.string	"LI"
	.byte	0x8
	.uahalf	0x3c2
	.uaword	0x2c4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x18
	.string	"IS"
	.byte	0x8
	.uahalf	0x3c3
	.uaword	0x2a99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x18
	.string	"ISS"
	.byte	0x8
	.uahalf	0x3c4
	.uaword	0x2b12
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x18
	.string	"ISR"
	.byte	0x8
	.uahalf	0x3c5
	.uaword	0x2ad5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x18
	.string	"INP"
	.byte	0x8
	.uahalf	0x3c6
	.uaword	0x2a5c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x18
	.string	"IEN"
	.byte	0x8
	.uahalf	0x3c7
	.uaword	0x29e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x18
	.string	"reserved_B4"
	.byte	0x8
	.uahalf	0x3c8
	.uaword	0x3ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x18
	.string	"OCS"
	.byte	0x8
	.uahalf	0x3c9
	.uaword	0x2e07
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x18
	.string	"KRSTCLR"
	.byte	0x8
	.uahalf	0x3ca
	.uaword	0x2bcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x18
	.string	"KRST1"
	.byte	0x8
	.uahalf	0x3cb
	.uaword	0x2b8e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x18
	.string	"KRST0"
	.byte	0x8
	.uahalf	0x3cc
	.uaword	0x2b4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x18
	.string	"reserved_F8"
	.byte	0x8
	.uahalf	0x3cd
	.uaword	0x37d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x3ce
	.uaword	0x27a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x2868
	.uaword	0x34e0
	.uleb128 0x7
	.uaword	0x330
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.uaword	0x28a6
	.uaword	0x34f0
	.uleb128 0x7
	.uaword	0x330
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6"
	.byte	0x8
	.uahalf	0x3cf
	.uaword	0x3501
	.uleb128 0x19
	.uaword	0x3150
	.uleb128 0x8
	.byte	0x1
	.byte	0x9
	.byte	0x58
	.uaword	0x354b
	.uleb128 0x5
	.string	"IfxCcu6_TrigOut_0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_TrigOut_1"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCcu6_TrigOut_2"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_TrigOut"
	.byte	0x9
	.byte	0x5c
	.uaword	0x3506
	.uleb128 0x8
	.byte	0x1
	.byte	0x9
	.byte	0x5f
	.uaword	0x35f5
	.uleb128 0x5
	.string	"IfxCcu6_TrigSel_cout63"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_TrigSel_cc60"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_TrigSel_cc61"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_TrigSel_cc62"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_TrigSel_sr1"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCcu6_TrigSel_sr3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_TrigSel"
	.byte	0x9
	.byte	0x66
	.uaword	0x3562
	.uleb128 0x8
	.byte	0x1
	.byte	0xa
	.byte	0x88
	.uaword	0x366d
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
	.uleb128 0xe
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x44
	.uaword	0x38bf
	.uleb128 0xf
	.string	"EN0"
	.byte	0xb
	.byte	0x46
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xb
	.byte	0x47
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xb
	.byte	0x48
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xb
	.byte	0x49
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xb
	.byte	0x4a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xb
	.byte	0x4b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xb
	.byte	0x4c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xb
	.byte	0x4d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xb
	.byte	0x4e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xb
	.byte	0x4f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xb
	.byte	0x50
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xb
	.byte	0x51
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xb
	.byte	0x52
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xb
	.byte	0x53
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xb
	.byte	0x54
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xb
	.byte	0x55
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN16"
	.byte	0xb
	.byte	0x56
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN17"
	.byte	0xb
	.byte	0x57
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN18"
	.byte	0xb
	.byte	0x58
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN19"
	.byte	0xb
	.byte	0x59
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN20"
	.byte	0xb
	.byte	0x5a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN21"
	.byte	0xb
	.byte	0x5b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN22"
	.byte	0xb
	.byte	0x5c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN23"
	.byte	0xb
	.byte	0x5d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN24"
	.byte	0xb
	.byte	0x5e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN25"
	.byte	0xb
	.byte	0x5f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN26"
	.byte	0xb
	.byte	0x60
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN27"
	.byte	0xb
	.byte	0x61
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN28"
	.byte	0xb
	.byte	0x62
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN29"
	.byte	0xb
	.byte	0x63
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN30"
	.byte	0xb
	.byte	0x64
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN31"
	.byte	0xb
	.byte	0x65
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xb
	.byte	0x66
	.uaword	0x366d
	.uleb128 0xe
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x69
	.uaword	0x3905
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xb
	.byte	0x6b
	.uaword	0x351
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xb
	.byte	0x6c
	.uaword	0x38d8
	.uleb128 0xe
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.uaword	0x3a5e
	.uleb128 0xf
	.string	"EN0"
	.byte	0xb
	.byte	0x71
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xb
	.byte	0x72
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xb
	.byte	0x73
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xb
	.byte	0x74
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xb
	.byte	0x75
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xb
	.byte	0x76
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xb
	.byte	0x77
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xb
	.byte	0x78
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xb
	.byte	0x79
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xb
	.byte	0x7a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xb
	.byte	0x7b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xb
	.byte	0x7c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xb
	.byte	0x7d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xb
	.byte	0x7e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xb
	.byte	0x7f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xb
	.byte	0x80
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0x81
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0xb
	.byte	0x82
	.uaword	0x391e
	.uleb128 0xe
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x85
	.uaword	0x3acc
	.uleb128 0xf
	.string	"MODREV"
	.byte	0xb
	.byte	0x87
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0xb
	.byte	0x88
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODNUMBER"
	.byte	0xb
	.byte	0x89
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0xb
	.byte	0x8a
	.uaword	0x3a74
	.uleb128 0xe
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x8d
	.uaword	0x3c10
	.uleb128 0xf
	.string	"P0"
	.byte	0xb
	.byte	0x8f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P1"
	.byte	0xb
	.byte	0x90
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P2"
	.byte	0xb
	.byte	0x91
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P3"
	.byte	0xb
	.byte	0x92
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P4"
	.byte	0xb
	.byte	0x93
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P5"
	.byte	0xb
	.byte	0x94
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P6"
	.byte	0xb
	.byte	0x95
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P7"
	.byte	0xb
	.byte	0x96
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P8"
	.byte	0xb
	.byte	0x97
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P9"
	.byte	0xb
	.byte	0x98
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P10"
	.byte	0xb
	.byte	0x99
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P11"
	.byte	0xb
	.byte	0x9a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P12"
	.byte	0xb
	.byte	0x9b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P13"
	.byte	0xb
	.byte	0x9c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P14"
	.byte	0xb
	.byte	0x9d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P15"
	.byte	0xb
	.byte	0x9e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0x9f
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0xb
	.byte	0xa0
	.uaword	0x3ae1
	.uleb128 0xe
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa3
	.uaword	0x3cc8
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xb
	.byte	0xa5
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC0"
	.byte	0xb
	.byte	0xa6
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xb
	.byte	0xa7
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC1"
	.byte	0xb
	.byte	0xa8
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0xa9
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC2"
	.byte	0xb
	.byte	0xaa
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xb
	.byte	0xab
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC3"
	.byte	0xb
	.byte	0xac
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xb
	.byte	0xad
	.uaword	0x3c25
	.uleb128 0xe
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb0
	.uaword	0x3d88
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xb
	.byte	0xb2
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC12"
	.byte	0xb
	.byte	0xb3
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xb
	.byte	0xb4
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC13"
	.byte	0xb
	.byte	0xb5
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0xb6
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC14"
	.byte	0xb
	.byte	0xb7
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xb
	.byte	0xb8
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC15"
	.byte	0xb
	.byte	0xb9
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xb
	.byte	0xba
	.uaword	0x3ce0
	.uleb128 0xe
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xbd
	.uaword	0x3e44
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xb
	.byte	0xbf
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC4"
	.byte	0xb
	.byte	0xc0
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xb
	.byte	0xc1
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC5"
	.byte	0xb
	.byte	0xc2
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0xc3
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC6"
	.byte	0xb
	.byte	0xc4
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xb
	.byte	0xc5
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC7"
	.byte	0xb
	.byte	0xc6
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xb
	.byte	0xc7
	.uaword	0x3da1
	.uleb128 0xe
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xca
	.uaword	0x3f01
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xb
	.byte	0xcc
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC8"
	.byte	0xb
	.byte	0xcd
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xb
	.byte	0xce
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC9"
	.byte	0xb
	.byte	0xcf
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0xd0
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC10"
	.byte	0xb
	.byte	0xd1
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xb
	.byte	0xd2
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC11"
	.byte	0xb
	.byte	0xd3
	.uaword	0x351
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xb
	.byte	0xd4
	.uaword	0x3e5c
	.uleb128 0xe
	.string	"_Ifx_P_LPCR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd7
	.uaword	0x4047
	.uleb128 0xf
	.string	"REN_CTRL"
	.byte	0xb
	.byte	0xd9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RX_EN"
	.byte	0xb
	.byte	0xda
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TERM"
	.byte	0xb
	.byte	0xdb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LRXTERM"
	.byte	0xb
	.byte	0xdc
	.uaword	0x351
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LVDSM"
	.byte	0xb
	.byte	0xdd
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PS"
	.byte	0xb
	.byte	0xde
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TEN_CTRL"
	.byte	0xb
	.byte	0xdf
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_EN"
	.byte	0xb
	.byte	0xe0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VDIFFADJ"
	.byte	0xb
	.byte	0xe1
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VOSDYN"
	.byte	0xb
	.byte	0xe2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VOSEXT"
	.byte	0xb
	.byte	0xe3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_PD"
	.byte	0xb
	.byte	0xe4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_PWDPD"
	.byte	0xb
	.byte	0xe5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xb
	.byte	0xe6
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR_Bits"
	.byte	0xb
	.byte	0xe7
	.uaword	0x3f19
	.uleb128 0xe
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xea
	.uaword	0x41af
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xb
	.byte	0xec
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0xb
	.byte	0xed
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0xb
	.byte	0xee
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0xb
	.byte	0xef
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0xb
	.byte	0xf0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xb
	.byte	0xf1
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xb
	.byte	0xf2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xb
	.byte	0xf3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xb
	.byte	0xf4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xb
	.byte	0xf5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xb
	.byte	0xf6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xb
	.byte	0xf7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xb
	.byte	0xf8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0xb
	.byte	0xf9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0xb
	.byte	0xfa
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0xb
	.byte	0xfb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0xb
	.byte	0xfc
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xb
	.byte	0xfd
	.uaword	0x405e
	.uleb128 0x14
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x100
	.uaword	0x4252
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x102
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0xb
	.uahalf	0x103
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0xb
	.uahalf	0x104
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0xb
	.uahalf	0x105
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0xb
	.uahalf	0x106
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x107
	.uaword	0x351
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xb
	.uahalf	0x108
	.uaword	0x41c6
	.uleb128 0x14
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x42ea
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x10d
	.uaword	0x351
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0xb
	.uahalf	0x10f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0xb
	.uahalf	0x110
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0xb
	.uahalf	0x111
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x426b
	.uleb128 0x14
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x115
	.uaword	0x4390
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x117
	.uaword	0x351
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0xb
	.uahalf	0x118
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0xb
	.uahalf	0x119
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0xb
	.uahalf	0x11b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xb
	.uahalf	0x11d
	.uaword	0x4304
	.uleb128 0x14
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x120
	.uaword	0x4437
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x122
	.uaword	0x351
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0xb
	.uahalf	0x124
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0xb
	.uahalf	0x125
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0xb
	.uahalf	0x126
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x127
	.uaword	0x351
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xb
	.uahalf	0x128
	.uaword	0x43a9
	.uleb128 0x14
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x12b
	.uaword	0x46c6
	.uleb128 0x11
	.string	"PS0"
	.byte	0xb
	.uahalf	0x12d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0xb
	.uahalf	0x12e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0xb
	.uahalf	0x12f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0xb
	.uahalf	0x130
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0xb
	.uahalf	0x131
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0xb
	.uahalf	0x132
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0xb
	.uahalf	0x133
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0xb
	.uahalf	0x134
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0xb
	.uahalf	0x135
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0xb
	.uahalf	0x136
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0xb
	.uahalf	0x137
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0xb
	.uahalf	0x138
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0xb
	.uahalf	0x139
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0xb
	.uahalf	0x13a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0xb
	.uahalf	0x13b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0xb
	.uahalf	0x13d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0xb
	.uahalf	0x140
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0xb
	.uahalf	0x141
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0xb
	.uahalf	0x142
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0xb
	.uahalf	0x143
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0xb
	.uahalf	0x144
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0xb
	.uahalf	0x145
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0xb
	.uahalf	0x146
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0xb
	.uahalf	0x147
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0xb
	.uahalf	0x148
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0xb
	.uahalf	0x149
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0xb
	.uahalf	0x14a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0xb
	.uahalf	0x14b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0xb
	.uahalf	0x14c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMR_Bits"
	.byte	0xb
	.uahalf	0x14d
	.uaword	0x4450
	.uleb128 0x14
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x150
	.uaword	0x4830
	.uleb128 0x11
	.string	"PS0"
	.byte	0xb
	.uahalf	0x152
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0xb
	.uahalf	0x153
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0xb
	.uahalf	0x154
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0xb
	.uahalf	0x155
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0xb
	.uahalf	0x156
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0xb
	.uahalf	0x157
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0xb
	.uahalf	0x158
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0xb
	.uahalf	0x159
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0xb
	.uahalf	0x15a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0xb
	.uahalf	0x15b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0xb
	.uahalf	0x15c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0xb
	.uahalf	0x15d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0xb
	.uahalf	0x15e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0xb
	.uahalf	0x15f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0xb
	.uahalf	0x160
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0xb
	.uahalf	0x161
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x162
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xb
	.uahalf	0x163
	.uaword	0x46dd
	.uleb128 0x14
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x166
	.uaword	0x48be
	.uleb128 0x11
	.string	"PS0"
	.byte	0xb
	.uahalf	0x168
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0xb
	.uahalf	0x169
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0xb
	.uahalf	0x16a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0xb
	.uahalf	0x16b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x16c
	.uaword	0x351
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xb
	.uahalf	0x16d
	.uaword	0x4848
	.uleb128 0x14
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x170
	.uaword	0x4964
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x172
	.uaword	0x351
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0xb
	.uahalf	0x173
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0xb
	.uahalf	0x174
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0xb
	.uahalf	0x175
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0xb
	.uahalf	0x176
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x177
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xb
	.uahalf	0x178
	.uaword	0x48d7
	.uleb128 0x14
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x17b
	.uaword	0x4a06
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x351
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0xb
	.uahalf	0x17e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0xb
	.uahalf	0x180
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0xb
	.uahalf	0x181
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x182
	.uaword	0x351
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xb
	.uahalf	0x183
	.uaword	0x497e
	.uleb128 0x14
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x186
	.uaword	0x4aa9
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x188
	.uaword	0x351
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0xb
	.uahalf	0x189
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0xb
	.uahalf	0x18a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0xb
	.uahalf	0x18d
	.uaword	0x351
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xb
	.uahalf	0x18e
	.uaword	0x4a1f
	.uleb128 0x14
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x191
	.uaword	0x4c04
	.uleb128 0x11
	.string	"P0"
	.byte	0xb
	.uahalf	0x193
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P1"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P2"
	.byte	0xb
	.uahalf	0x195
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P3"
	.byte	0xb
	.uahalf	0x196
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P4"
	.byte	0xb
	.uahalf	0x197
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P5"
	.byte	0xb
	.uahalf	0x198
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P6"
	.byte	0xb
	.uahalf	0x199
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P7"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P8"
	.byte	0xb
	.uahalf	0x19b
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P9"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P10"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P11"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P12"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P13"
	.byte	0xb
	.uahalf	0x1a0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P14"
	.byte	0xb
	.uahalf	0x1a1
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P15"
	.byte	0xb
	.uahalf	0x1a2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x1a3
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OUT_Bits"
	.byte	0xb
	.uahalf	0x1a4
	.uaword	0x4ac2
	.uleb128 0x14
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0x4d90
	.uleb128 0x11
	.string	"SEL0"
	.byte	0xb
	.uahalf	0x1a9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL1"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL2"
	.byte	0xb
	.uahalf	0x1ab
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL3"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL4"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL5"
	.byte	0xb
	.uahalf	0x1ae
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL6"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL7"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL8"
	.byte	0xb
	.uahalf	0x1b1
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL9"
	.byte	0xb
	.uahalf	0x1b2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL10"
	.byte	0xb
	.uahalf	0x1b3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL11"
	.byte	0xb
	.uahalf	0x1b4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL12"
	.byte	0xb
	.uahalf	0x1b5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL13"
	.byte	0xb
	.uahalf	0x1b6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL14"
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL15"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x1b9
	.uaword	0x351
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x4c1b
	.uleb128 0x14
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1be
	.uaword	0x4f1c
	.uleb128 0x11
	.string	"PDIS0"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS1"
	.byte	0xb
	.uahalf	0x1c1
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS2"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS3"
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS4"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS5"
	.byte	0xb
	.uahalf	0x1c5
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS6"
	.byte	0xb
	.uahalf	0x1c6
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS7"
	.byte	0xb
	.uahalf	0x1c7
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS8"
	.byte	0xb
	.uahalf	0x1c8
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS9"
	.byte	0xb
	.uahalf	0x1c9
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS10"
	.byte	0xb
	.uahalf	0x1ca
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS11"
	.byte	0xb
	.uahalf	0x1cb
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS12"
	.byte	0xb
	.uahalf	0x1cc
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS13"
	.byte	0xb
	.uahalf	0x1cd
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS14"
	.byte	0xb
	.uahalf	0x1ce
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS15"
	.byte	0xb
	.uahalf	0x1cf
	.uaword	0x351
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x1d0
	.uaword	0x351
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0x4da8
	.uleb128 0x14
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x5070
	.uleb128 0x11
	.string	"PD0"
	.byte	0xb
	.uahalf	0x1d6
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL0"
	.byte	0xb
	.uahalf	0x1d7
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD1"
	.byte	0xb
	.uahalf	0x1d8
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL1"
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD2"
	.byte	0xb
	.uahalf	0x1da
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL2"
	.byte	0xb
	.uahalf	0x1db
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD3"
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL3"
	.byte	0xb
	.uahalf	0x1dd
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD4"
	.byte	0xb
	.uahalf	0x1de
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL4"
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD5"
	.byte	0xb
	.uahalf	0x1e0
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL5"
	.byte	0xb
	.uahalf	0x1e1
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD6"
	.byte	0xb
	.uahalf	0x1e2
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL6"
	.byte	0xb
	.uahalf	0x1e3
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD7"
	.byte	0xb
	.uahalf	0x1e4
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL7"
	.byte	0xb
	.uahalf	0x1e5
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xb
	.uahalf	0x1e6
	.uaword	0x4f35
	.uleb128 0x14
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1e9
	.uaword	0x51cf
	.uleb128 0x11
	.string	"PD8"
	.byte	0xb
	.uahalf	0x1eb
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL8"
	.byte	0xb
	.uahalf	0x1ec
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD9"
	.byte	0xb
	.uahalf	0x1ed
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL9"
	.byte	0xb
	.uahalf	0x1ee
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD10"
	.byte	0xb
	.uahalf	0x1ef
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL10"
	.byte	0xb
	.uahalf	0x1f0
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD11"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL11"
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD12"
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL12"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD13"
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL13"
	.byte	0xb
	.uahalf	0x1f6
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD14"
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL14"
	.byte	0xb
	.uahalf	0x1f8
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD15"
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL15"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0x351
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x5088
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x203
	.uaword	0x520f
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x205
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x206
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x207
	.uaword	0x38bf
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ACCEN0"
	.byte	0xb
	.uahalf	0x208
	.uaword	0x51e7
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x20b
	.uaword	0x524c
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x20d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x20e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x3905
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ACCEN1"
	.byte	0xb
	.uahalf	0x210
	.uaword	0x5224
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x213
	.uaword	0x5289
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x215
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x216
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x217
	.uaword	0x3a5e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ESR"
	.byte	0xb
	.uahalf	0x218
	.uaword	0x5261
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x21b
	.uaword	0x52c3
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x21d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x21e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x21f
	.uaword	0x3acc
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ID"
	.byte	0xb
	.uahalf	0x220
	.uaword	0x529b
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x223
	.uaword	0x52fc
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x225
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x226
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x227
	.uaword	0x3c10
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IN"
	.byte	0xb
	.uahalf	0x228
	.uaword	0x52d4
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x5335
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x22d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x22e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x22f
	.uaword	0x3cc8
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR0"
	.byte	0xb
	.uahalf	0x230
	.uaword	0x530d
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x233
	.uaword	0x5371
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x235
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x236
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x237
	.uaword	0x3d88
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR12"
	.byte	0xb
	.uahalf	0x238
	.uaword	0x5349
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x23b
	.uaword	0x53ae
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x23d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x23e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x23f
	.uaword	0x3e44
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR4"
	.byte	0xb
	.uahalf	0x240
	.uaword	0x5386
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x243
	.uaword	0x53ea
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x245
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x246
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x247
	.uaword	0x3f01
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR8"
	.byte	0xb
	.uahalf	0x248
	.uaword	0x53c2
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x24b
	.uaword	0x5426
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x24d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x24e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x24f
	.uaword	0x4047
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_LPCR"
	.byte	0xb
	.uahalf	0x250
	.uaword	0x53fe
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x253
	.uaword	0x5461
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x255
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x256
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x257
	.uaword	0x41af
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR"
	.byte	0xb
	.uahalf	0x258
	.uaword	0x5439
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x25b
	.uaword	0x549c
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x25d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x25f
	.uaword	0x4252
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR0"
	.byte	0xb
	.uahalf	0x260
	.uaword	0x5474
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x263
	.uaword	0x54d8
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x265
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x266
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x267
	.uaword	0x42ea
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR12"
	.byte	0xb
	.uahalf	0x268
	.uaword	0x54b0
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x26b
	.uaword	0x5515
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x26e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x26f
	.uaword	0x4390
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR4"
	.byte	0xb
	.uahalf	0x270
	.uaword	0x54ed
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x273
	.uaword	0x5551
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x275
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x276
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x277
	.uaword	0x4437
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR8"
	.byte	0xb
	.uahalf	0x278
	.uaword	0x5529
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x558d
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x27d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x27e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x27f
	.uaword	0x46c6
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMR"
	.byte	0xb
	.uahalf	0x280
	.uaword	0x5565
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x283
	.uaword	0x55c7
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x285
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x286
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x287
	.uaword	0x4830
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR"
	.byte	0xb
	.uahalf	0x288
	.uaword	0x559f
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x28b
	.uaword	0x5602
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x28d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x28e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x28f
	.uaword	0x48be
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR0"
	.byte	0xb
	.uahalf	0x290
	.uaword	0x55da
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x293
	.uaword	0x563e
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x295
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x296
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x297
	.uaword	0x4964
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR12"
	.byte	0xb
	.uahalf	0x298
	.uaword	0x5616
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x29b
	.uaword	0x567b
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x29d
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x29e
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x29f
	.uaword	0x4a06
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR4"
	.byte	0xb
	.uahalf	0x2a0
	.uaword	0x5653
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x2a3
	.uaword	0x56b7
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x2a5
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x2a6
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x2a7
	.uaword	0x4aa9
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR8"
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x568f
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ab
	.uaword	0x56f3
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x2ad
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x2ae
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x2af
	.uaword	0x4c04
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OUT"
	.byte	0xb
	.uahalf	0x2b0
	.uaword	0x56cb
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x2b3
	.uaword	0x572d
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x2b5
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x2b6
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x2b7
	.uaword	0x4d90
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PCSR"
	.byte	0xb
	.uahalf	0x2b8
	.uaword	0x5705
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x2bb
	.uaword	0x5768
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x2bd
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x2be
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x2bf
	.uaword	0x4f1c
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDISC"
	.byte	0xb
	.uahalf	0x2c0
	.uaword	0x5740
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x2c3
	.uaword	0x57a4
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x2c5
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x2c6
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x2c7
	.uaword	0x5070
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR0"
	.byte	0xb
	.uahalf	0x2c8
	.uaword	0x577c
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.uahalf	0x2cb
	.uaword	0x57df
	.uleb128 0x16
	.string	"U"
	.byte	0xb
	.uahalf	0x2cd
	.uaword	0x351
	.uleb128 0x16
	.string	"I"
	.byte	0xb
	.uahalf	0x2ce
	.uaword	0x367
	.uleb128 0x16
	.string	"B"
	.byte	0xb
	.uahalf	0x2cf
	.uaword	0x51cf
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR1"
	.byte	0xb
	.uahalf	0x2d0
	.uaword	0x57b7
	.uleb128 0x17
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x5a63
	.uleb128 0x18
	.string	"OUT"
	.byte	0xb
	.uahalf	0x2de
	.uaword	0x56f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"OMR"
	.byte	0xb
	.uahalf	0x2df
	.uaword	0x558d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.string	"ID"
	.byte	0xb
	.uahalf	0x2e0
	.uaword	0x52c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.string	"reserved_C"
	.byte	0xb
	.uahalf	0x2e1
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.string	"IOCR0"
	.byte	0xb
	.uahalf	0x2e2
	.uaword	0x5335
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.string	"IOCR4"
	.byte	0xb
	.uahalf	0x2e3
	.uaword	0x53ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.string	"IOCR8"
	.byte	0xb
	.uahalf	0x2e4
	.uaword	0x53ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.string	"IOCR12"
	.byte	0xb
	.uahalf	0x2e5
	.uaword	0x5371
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x2e6
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.string	"IN"
	.byte	0xb
	.uahalf	0x2e7
	.uaword	0x52fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x2e8
	.uaword	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x18
	.string	"PDR0"
	.byte	0xb
	.uahalf	0x2e9
	.uaword	0x57a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x18
	.string	"PDR1"
	.byte	0xb
	.uahalf	0x2ea
	.uaword	0x57df
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x18
	.string	"reserved_48"
	.byte	0xb
	.uahalf	0x2eb
	.uaword	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x18
	.string	"ESR"
	.byte	0xb
	.uahalf	0x2ec
	.uaword	0x5289
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x18
	.string	"reserved_54"
	.byte	0xb
	.uahalf	0x2ed
	.uaword	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.string	"PDISC"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x5768
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x18
	.string	"PCSR"
	.byte	0xb
	.uahalf	0x2ef
	.uaword	0x572d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x18
	.string	"reserved_68"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.string	"OMSR0"
	.byte	0xb
	.uahalf	0x2f1
	.uaword	0x5602
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x18
	.string	"OMSR4"
	.byte	0xb
	.uahalf	0x2f2
	.uaword	0x567b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x18
	.string	"OMSR8"
	.byte	0xb
	.uahalf	0x2f3
	.uaword	0x56b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.string	"OMSR12"
	.byte	0xb
	.uahalf	0x2f4
	.uaword	0x563e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x18
	.string	"OMCR0"
	.byte	0xb
	.uahalf	0x2f5
	.uaword	0x549c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x18
	.string	"OMCR4"
	.byte	0xb
	.uahalf	0x2f6
	.uaword	0x5515
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x18
	.string	"OMCR8"
	.byte	0xb
	.uahalf	0x2f7
	.uaword	0x5551
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x18
	.string	"OMCR12"
	.byte	0xb
	.uahalf	0x2f8
	.uaword	0x54d8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x18
	.string	"OMSR"
	.byte	0xb
	.uahalf	0x2f9
	.uaword	0x55c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x18
	.string	"OMCR"
	.byte	0xb
	.uahalf	0x2fa
	.uaword	0x5461
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x18
	.string	"reserved_98"
	.byte	0xb
	.uahalf	0x2fb
	.uaword	0x39d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x18
	.string	"LPCR"
	.byte	0xb
	.uahalf	0x2fc
	.uaword	0x5a63
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x18
	.string	"reserved_C0"
	.byte	0xb
	.uahalf	0x2fd
	.uaword	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x18
	.string	"ACCEN1"
	.byte	0xb
	.uahalf	0x2fe
	.uaword	0x524c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x520f
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x5426
	.uaword	0x5a73
	.uleb128 0x7
	.uaword	0x330
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P"
	.byte	0xb
	.uahalf	0x300
	.uaword	0x5a81
	.uleb128 0x19
	.uaword	0x57f2
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5a73
	.uleb128 0x8
	.byte	0x1
	.byte	0xc
	.byte	0x81
	.uaword	0x5b68
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0xc
	.byte	0x8a
	.uaword	0x5a8c
	.uleb128 0x8
	.byte	0x1
	.byte	0xc
	.byte	0x8f
	.uaword	0x5be3
	.uleb128 0x5
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.uleb128 0x5
	.string	"IfxPort_OutputMode_none"
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0xc
	.byte	0x93
	.uaword	0x5b81
	.uleb128 0x8
	.byte	0x1
	.byte	0xc
	.byte	0x9a
	.uaword	0x5da6
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttl3v3Speed1"
	.sleb128 12
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttl3v3Speed2"
	.sleb128 13
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttl3v3Speed3"
	.sleb128 14
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttl3v3Speed4"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0xc
	.byte	0xa7
	.uaword	0x5bfd
	.uleb128 0xb
	.byte	0x8
	.byte	0xc
	.byte	0xf8
	.uaword	0x5dea
	.uleb128 0xd
	.string	"port"
	.byte	0xc
	.byte	0xfa
	.uaword	0x5a86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pinIndex"
	.byte	0xc
	.byte	0xfb
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0xc
	.byte	0xfc
	.uaword	0x5dbf
	.uleb128 0x1b
	.byte	0x1
	.byte	0xd
	.uahalf	0x160
	.uaword	0x5f06
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
	.uleb128 0x9
	.byte	0x4
	.uaword	0x34f0
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0x80
	.uaword	0x5f3f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xe
	.byte	0x82
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xe
	.byte	0x83
	.uaword	0x5dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xe
	.byte	0x84
	.uaword	0x5b68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cc60_Out"
	.byte	0xe
	.byte	0x85
	.uaword	0x5f57
	.uleb128 0x1c
	.uaword	0x5f0c
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0x88
	.uaword	0x5f8f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xe
	.byte	0x8a
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xe
	.byte	0x8b
	.uaword	0x5dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xe
	.byte	0x8c
	.uaword	0x5b68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cc61_Out"
	.byte	0xe
	.byte	0x8d
	.uaword	0x5fa7
	.uleb128 0x1c
	.uaword	0x5f5c
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0x90
	.uaword	0x5fdf
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xe
	.byte	0x92
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xe
	.byte	0x93
	.uaword	0x5dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xe
	.byte	0x94
	.uaword	0x5b68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cc62_Out"
	.byte	0xe
	.byte	0x95
	.uaword	0x5ff7
	.uleb128 0x1c
	.uaword	0x5fac
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0x98
	.uaword	0x602f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xe
	.byte	0x9a
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xe
	.byte	0x9b
	.uaword	0x5dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xe
	.byte	0x9c
	.uaword	0x5b68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cout60_Out"
	.byte	0xe
	.byte	0x9d
	.uaword	0x6049
	.uleb128 0x1c
	.uaword	0x5ffc
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0xa0
	.uaword	0x6081
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xe
	.byte	0xa2
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xe
	.byte	0xa3
	.uaword	0x5dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xe
	.byte	0xa4
	.uaword	0x5b68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cout61_Out"
	.byte	0xe
	.byte	0xa5
	.uaword	0x609b
	.uleb128 0x1c
	.uaword	0x604e
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0xa8
	.uaword	0x60d3
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xe
	.byte	0xaa
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xe
	.byte	0xab
	.uaword	0x5dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xe
	.byte	0xac
	.uaword	0x5b68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cout62_Out"
	.byte	0xe
	.byte	0xad
	.uaword	0x60ed
	.uleb128 0x1c
	.uaword	0x60a0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x71
	.uaword	0x61b2
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cc0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cout0"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cc1"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cout1"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cc2"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cout2"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxCcu6_ChannelOut_cout3"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_ChannelOut"
	.byte	0x2
	.byte	0x79
	.uaword	0x60f2
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0xb6
	.uaword	0x63e3
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_cc60RisingEdge"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_cc60FallingEdge"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_cc61RisingEdge"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_cc61FallingEdge"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_cc62RisingEdge"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_cc62FallingEdge"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_t12OneMatch"
	.sleb128 6
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_t12PeriodMatch"
	.sleb128 7
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_t13CompareMatch"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_t13PeriodMatch"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_trap"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_correctHallEvent"
	.sleb128 12
	.uleb128 0x5
	.string	"IfxCcu6_InterruptSource_wrongHallEvent"
	.sleb128 13
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_InterruptSource"
	.byte	0x2
	.byte	0xca
	.uaword	0x61cc
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0xd0
	.uaword	0x654a
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSelect_noEvent"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSelect_correctHallEvent"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSelect_t13PeriodMatch"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSelect_t12OneMatch"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSelect_t12Channel1CompareMatch"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSelect_t12PeriodMatch"
	.sleb128 5
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0xde
	.uaword	0x65e0
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSync_direct"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSync_t13ZeroMatch"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_MultiChannelSwitchingSync_t12ZeroMatch"
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0xe9
	.uaword	0x6655
	.uleb128 0x5
	.string	"IfxCcu6_ServiceRequest_0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_ServiceRequest_1"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_ServiceRequest_2"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCcu6_ServiceRequest_3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_ServiceRequest"
	.byte	0x2
	.byte	0xee
	.uaword	0x65e0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x12c
	.uaword	0x66c5
	.uleb128 0x5
	.string	"IfxCcu6_T12CountMode_edgeAligned"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_T12CountMode_centerAligned"
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.string	"IfxCcu6_T12CountMode"
	.byte	0x2
	.uahalf	0x131
	.uaword	0x6673
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x151
	.uaword	0x6718
	.uleb128 0x5
	.string	"IfxCcu6_TimerId_t12"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_TimerId_t13"
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.string	"IfxCcu6_TimerId"
	.byte	0x2
	.uahalf	0x154
	.uaword	0x66e2
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x15a
	.uaword	0x684c
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By4"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By8"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By16"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By32"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By64"
	.sleb128 6
	.uleb128 0x5
	.string	"IfxCcu6_TimerInputClock_fcc6By128"
	.sleb128 7
	.byte	0
	.uleb128 0x13
	.string	"IfxCcu6_TimerInputClock"
	.byte	0x2
	.uahalf	0x163
	.uaword	0x6730
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x180
	.uaword	0x68ad
	.uleb128 0x5
	.string	"IfxCcu6_TrapMode_automatic"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCcu6_TrapMode_manual"
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.string	"IfxCcu6_TrapMode"
	.byte	0x2
	.uahalf	0x184
	.uaword	0x686c
	.uleb128 0x8
	.byte	0x1
	.byte	0xf
	.byte	0x56
	.uaword	0x692f
	.uleb128 0x5
	.string	"IfxStdIf_Timer_CountDir_up"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxStdIf_Timer_CountDir_upAndDown"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxStdIf_Timer_CountDir_down"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_CountDir"
	.byte	0xf
	.byte	0x5a
	.uaword	0x68c6
	.uleb128 0x9
	.byte	0x4
	.uaword	0x466
	.uleb128 0xb
	.byte	0x10
	.byte	0x10
	.byte	0xc8
	.uaword	0x6a22
	.uleb128 0xc
	.uaword	.LASF19
	.byte	0x10
	.byte	0xca
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF20
	.byte	0x10
	.byte	0xcb
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF21
	.byte	0x10
	.byte	0xcc
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"emergencyEnabled"
	.byte	0x10
	.byte	0xcd
	.uaword	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.string	"outputMode"
	.byte	0x10
	.byte	0xcf
	.uaword	0x5be3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"outputDriver"
	.byte	0x10
	.byte	0xd0
	.uaword	0x5da6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xd
	.string	"ccxOutputEnabled"
	.byte	0x10
	.byte	0xd1
	.uaword	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"coutxOutputEnabled"
	.byte	0x10
	.byte	0xd2
	.uaword	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.uaword	.LASF22
	.byte	0x10
	.byte	0xd3
	.uaword	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.uaword	.LASF23
	.byte	0x10
	.byte	0xd4
	.uaword	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_PwmHl_Config"
	.byte	0x10
	.byte	0xd5
	.uaword	0x6954
	.uleb128 0xb
	.byte	0x10
	.byte	0x11
	.byte	0x4d
	.uaword	0x6a99
	.uleb128 0xd
	.string	"period"
	.byte	0x11
	.byte	0x4f
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"triggerEnabled"
	.byte	0x11
	.byte	0x50
	.uaword	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"clockFreq"
	.byte	0x11
	.byte	0x51
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"countDir"
	.byte	0x11
	.byte	0x52
	.uaword	0x692f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_TimerWithTrigger_Base"
	.byte	0x11
	.byte	0x53
	.uaword	0x6a3f
	.uleb128 0xb
	.byte	0x14
	.byte	0x11
	.byte	0x59
	.uaword	0x6ae4
	.uleb128 0xd
	.string	"base"
	.byte	0x11
	.byte	0x5b
	.uaword	0x6a99
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF24
	.byte	0x11
	.byte	0x5c
	.uaword	0x5f06
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_TimerWithTrigger"
	.byte	0x11
	.byte	0x5d
	.uaword	0x6abe
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl"
	.byte	0x12
	.byte	0x56
	.uaword	0x6b19
	.uleb128 0xe
	.string	"IfxCcu6_PwmHl_s"
	.byte	0x1c
	.byte	0x12
	.byte	0x8c
	.uaword	0x6b62
	.uleb128 0xd
	.string	"base"
	.byte	0x12
	.byte	0x8e
	.uaword	0x6c31
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"timer"
	.byte	0x12
	.byte	0x8f
	.uaword	0x6d18
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"update"
	.byte	0x12
	.byte	0x90
	.uaword	0x6b62
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl_Update"
	.byte	0x12
	.byte	0x58
	.uaword	0x6b7e
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6b84
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x6b95
	.uleb128 0x1e
	.uaword	0x6b95
	.uleb128 0x1e
	.uaword	0x694e
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6b04
	.uleb128 0xb
	.byte	0x14
	.byte	0x12
	.byte	0x62
	.uaword	0x6c31
	.uleb128 0xc
	.uaword	.LASF19
	.byte	0x12
	.byte	0x64
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF20
	.byte	0x12
	.byte	0x65
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"maxPulse"
	.byte	0x12
	.byte	0x66
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"mode"
	.byte	0x12
	.byte	0x67
	.uaword	0x5c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"setMode"
	.byte	0x12
	.byte	0x68
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.uaword	.LASF22
	.byte	0x12
	.byte	0x69
	.uaword	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.uaword	.LASF23
	.byte	0x12
	.byte	0x6a
	.uaword	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xd
	.string	"inverted"
	.byte	0x12
	.byte	0x6b
	.uaword	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.uaword	.LASF21
	.byte	0x12
	.byte	0x6c
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl_Base"
	.byte	0x12
	.byte	0x6d
	.uaword	0x6b9b
	.uleb128 0xb
	.byte	0x2c
	.byte	0x12
	.byte	0x75
	.uaword	0x6ccd
	.uleb128 0xd
	.string	"base"
	.byte	0x12
	.byte	0x77
	.uaword	0x6a22
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"timer"
	.byte	0x12
	.byte	0x78
	.uaword	0x6ccd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"cc0"
	.byte	0x12
	.byte	0x79
	.uaword	0x6cd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"cc1"
	.byte	0x12
	.byte	0x7a
	.uaword	0x6cde
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"cc2"
	.byte	0x12
	.byte	0x7b
	.uaword	0x6ce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"cout0"
	.byte	0x12
	.byte	0x7c
	.uaword	0x6cea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"cout1"
	.byte	0x12
	.byte	0x7d
	.uaword	0x6cf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"cout2"
	.byte	0x12
	.byte	0x7e
	.uaword	0x6cf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6cd3
	.uleb128 0x1c
	.uaword	0x6ae4
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5f3f
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5f8f
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5fdf
	.uleb128 0x9
	.byte	0x4
	.uaword	0x602f
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6081
	.uleb128 0x9
	.byte	0x4
	.uaword	0x60d3
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl_Config"
	.byte	0x12
	.byte	0x7f
	.uaword	0x6c4b
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6ae4
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x4c
	.uaword	0x6dc6
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_CLOSE"
	.sleb128 0
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_ONGOING"
	.sleb128 1
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_EXIT"
	.sleb128 2
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_EXIT_DELAY"
	.sleb128 3
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_FINSH"
	.sleb128 4
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_RECOVER"
	.sleb128 5
	.uleb128 0x5
	.string	"CCU6_MCU_ASC_OVER_TIME"
	.sleb128 6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x58
	.uaword	0x6e2d
	.uleb128 0x5
	.string	"CCU6_ASC_TYPE_UNDEF"
	.sleb128 0
	.uleb128 0x5
	.string	"CCU6_ASC_TYPE_LOWSIDE"
	.sleb128 1
	.uleb128 0x5
	.string	"CCU6_ASC_TYPE_HIGHSIDE"
	.sleb128 2
	.uleb128 0x5
	.string	"CCU6_ASC_TYPE_ALLOFF"
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x61
	.uaword	0x6e82
	.uleb128 0x5
	.string	"CCU6_PRETEST_STEP_IDLE"
	.sleb128 0
	.uleb128 0x5
	.string	"CCU6_PRETEST_STEP_RUN"
	.sleb128 1
	.uleb128 0x5
	.string	"CCU6_PRETEST_STEP_FINISH"
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x69
	.uaword	0x6f4a
	.uleb128 0x5
	.string	"CCU6_enuP5V_PO_DELAY"
	.sleb128 0
	.uleb128 0x5
	.string	"CCU6_enuP5V_POW_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"CCU6_enuP5V_HS_FLT_ASC"
	.sleb128 2
	.uleb128 0x5
	.string	"CCU6_enuP5V_HS_CLOSE"
	.sleb128 3
	.uleb128 0x5
	.string	"CCU6_enuP5V_LS_FLT_ASC"
	.sleb128 4
	.uleb128 0x5
	.string	"CCU6_enuP5V_LS_CLOSE"
	.sleb128 5
	.uleb128 0x5
	.string	"CCU6_enuP5V_WAIT_REINIT"
	.sleb128 6
	.uleb128 0x5
	.string	"CCU6_enuP5V_REINIT"
	.sleb128 7
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_startTimer"
	.byte	0x2
	.uahalf	0x85e
	.byte	0x1
	.byte	0x3
	.uaword	0x6f9a
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x5f06
	.uleb128 0x21
	.string	"t12"
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x28c
	.uleb128 0x21
	.string	"t13"
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x28c
	.uleb128 0x22
	.string	"tctr4"
	.byte	0x2
	.uahalf	0x860
	.uaword	0x30f9
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_stopTimer"
	.byte	0x2
	.uahalf	0x868
	.byte	0x1
	.byte	0x3
	.uaword	0x6fe9
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x868
	.uaword	0x5f06
	.uleb128 0x21
	.string	"t12"
	.byte	0x2
	.uahalf	0x868
	.uaword	0x28c
	.uleb128 0x21
	.string	"t13"
	.byte	0x2
	.uahalf	0x868
	.uaword	0x28c
	.uleb128 0x22
	.string	"tctr4"
	.byte	0x2
	.uahalf	0x86a
	.uaword	0x30f9
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setT12PeriodValue"
	.byte	0x2
	.uahalf	0x82d
	.byte	0x1
	.byte	0x3
	.uaword	0x7028
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x82d
	.uaword	0x5f06
	.uleb128 0x21
	.string	"value"
	.byte	0x2
	.uahalf	0x82d
	.uaword	0x217
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableShadowTransfer"
	.byte	0x2
	.uahalf	0x645
	.byte	0x1
	.byte	0x3
	.uaword	0x7082
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x645
	.uaword	0x5f06
	.uleb128 0x21
	.string	"t12"
	.byte	0x2
	.uahalf	0x645
	.uaword	0x28c
	.uleb128 0x21
	.string	"t13"
	.byte	0x2
	.uahalf	0x645
	.uaword	0x28c
	.uleb128 0x22
	.string	"tctr4"
	.byte	0x2
	.uahalf	0x647
	.uaword	0x30f9
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setInputClockFrequency"
	.byte	0x2
	.uahalf	0x7d2
	.byte	0x1
	.byte	0x3
	.uaword	0x70f3
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0x5f06
	.uleb128 0x21
	.string	"timer"
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0x6718
	.uleb128 0x21
	.string	"frequency"
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0x684c
	.uleb128 0x22
	.string	"shift"
	.byte	0x2
	.uahalf	0x7d4
	.uaword	0x24b
	.uleb128 0x22
	.string	"mask"
	.byte	0x2
	.uahalf	0x7d5
	.uaword	0x24b
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setT12CountMode"
	.byte	0x2
	.uahalf	0x821
	.byte	0x1
	.byte	0x3
	.uaword	0x712f
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x821
	.uaword	0x5f06
	.uleb128 0x21
	.string	"mode"
	.byte	0x2
	.uahalf	0x821
	.uaword	0x66c5
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setT12CounterValue"
	.byte	0x2
	.uahalf	0x827
	.byte	0x1
	.byte	0x3
	.uaword	0x716f
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x827
	.uaword	0x5f06
	.uleb128 0x21
	.string	"value"
	.byte	0x2
	.uahalf	0x827
	.uaword	0x217
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableInterrupt"
	.byte	0x2
	.uahalf	0x61a
	.byte	0x1
	.byte	0x3
	.uaword	0x71ba
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x61a
	.uaword	0x5f06
	.uleb128 0x21
	.string	"source"
	.byte	0x2
	.uahalf	0x61a
	.uaword	0x63e3
	.uleb128 0x22
	.string	"mask"
	.byte	0x2
	.uahalf	0x61c
	.uaword	0x24b
	.byte	0
	.uleb128 0x23
	.string	"IfxCcu6_GetT12PeriodVal"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uaword	0x71eb
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x82
	.uaword	0x5f06
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"CCU6_vidWait"
	.byte	0x1
	.uahalf	0x32e
	.byte	0x1
	.byte	0x1
	.uaword	0x7229
	.uleb128 0x21
	.string	"time"
	.byte	0x1
	.uahalf	0x32e
	.uaword	0x24b
	.uleb128 0x22
	.string	"localu32Counter"
	.byte	0x1
	.uahalf	0x330
	.uaword	0x7229
	.byte	0
	.uleb128 0x19
	.uaword	0x24b
	.uleb128 0x26
	.string	"IfxCcu6_SetTrapFlg"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.byte	0x1
	.uaword	0x7256
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x87
	.uaword	0x5f06
	.byte	0
	.uleb128 0x26
	.string	"IfxCcu6_ClrTrapFlg"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.byte	0x1
	.uaword	0x727e
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x8c
	.uaword	0x5f06
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableTrap"
	.byte	0x2
	.uahalf	0x663
	.byte	0x1
	.byte	0x3
	.uaword	0x72d6
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x663
	.uaword	0x5f06
	.uleb128 0x21
	.string	"channelOut"
	.byte	0x2
	.uahalf	0x663
	.uaword	0x61b2
	.uleb128 0x22
	.string	"shift"
	.byte	0x2
	.uahalf	0x665
	.uaword	0x24b
	.uleb128 0x22
	.string	"mask"
	.byte	0x2
	.uahalf	0x666
	.uaword	0x24b
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setTrapMode"
	.byte	0x2
	.uahalf	0x851
	.byte	0x1
	.byte	0x3
	.uaword	0x730e
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x851
	.uaword	0x5f06
	.uleb128 0x21
	.string	"mode"
	.byte	0x2
	.uahalf	0x851
	.uaword	0x68ad
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableTrapPin"
	.byte	0x2
	.uahalf	0x66b
	.byte	0x1
	.byte	0x3
	.uaword	0x733b
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x66b
	.uaword	0x5f06
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_disableTrapPin"
	.byte	0x2
	.uahalf	0x5ee
	.byte	0x1
	.byte	0x3
	.uaword	0x7369
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x5ee
	.uaword	0x5f06
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"CCU6_vidTryClearTrap"
	.byte	0x1
	.uahalf	0x3f7
	.byte	0x1
	.byte	0x1
	.uaword	0x73a2
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x6b95
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x3fa
	.uaword	0x5f06
	.byte	0
	.uleb128 0x26
	.string	"CCU6_vidStartTimer"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.uaword	0x73ca
	.uleb128 0x28
	.uaword	.LASF25
	.byte	0x1
	.byte	0x9c
	.uaword	0x6b95
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"CCU6_vidSetPwmHlDuty"
	.byte	0x1
	.uahalf	0x232
	.byte	0x1
	.byte	0x1
	.uaword	0x7432
	.uleb128 0x21
	.string	"f32DutyU"
	.byte	0x1
	.uahalf	0x232
	.uaword	0x273
	.uleb128 0x21
	.string	"f32DutyV"
	.byte	0x1
	.uahalf	0x232
	.uaword	0x273
	.uleb128 0x21
	.string	"f32DutyW"
	.byte	0x1
	.uahalf	0x232
	.uaword	0x273
	.uleb128 0x22
	.string	"u16LocT12PV"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x217
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"CCU6_Init"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB395
	.uaword	.LFE395
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x76d8
	.uleb128 0x2a
	.uaword	.LASF25
	.byte	0x1
	.byte	0xad
	.uaword	0x6b95
	.byte	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x2b
	.uaword	.LASF0
	.byte	0x1
	.byte	0xae
	.uaword	0x5f06
	.uaword	.LLST1
	.uleb128 0x2c
	.string	"config"
	.byte	0x1
	.byte	0xaf
	.uaword	0x6cfc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.uaword	0x6f9a
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xed
	.uaword	0x74bc
	.uleb128 0x2e
	.uaword	0x6fce
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x6fc2
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x6fb6
	.uaword	.LLST2
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x31
	.uaword	0x6fda
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x6fe9
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0xf0
	.uaword	0x74e0
	.uleb128 0x33
	.uaword	0x7019
	.uahalf	0x9c3
	.uleb128 0x2f
	.uaword	0x700d
	.uaword	.LLST4
	.byte	0
	.uleb128 0x32
	.uaword	0x7028
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0xf1
	.uaword	0x751c
	.uleb128 0x2e
	.uaword	0x7067
	.byte	0
	.uleb128 0x2e
	.uaword	0x705b
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x704f
	.uaword	.LLST5
	.uleb128 0x34
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x31
	.uaword	0x7073
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x7082
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xf2
	.uaword	0x7557
	.uleb128 0x2e
	.uaword	0x70c5
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x70b7
	.byte	0
	.uleb128 0x2f
	.uaword	0x70ab
	.uaword	.LLST7
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x35
	.uaword	0x70d7
	.byte	0
	.uleb128 0x35
	.uaword	0x70e5
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x70f3
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0xf4
	.uaword	0x757a
	.uleb128 0x2e
	.uaword	0x7121
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x7115
	.uaword	.LLST8
	.byte	0
	.uleb128 0x32
	.uaword	0x712f
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xf5
	.uaword	0x759d
	.uleb128 0x2e
	.uaword	0x7160
	.byte	0
	.uleb128 0x2f
	.uaword	0x7154
	.uaword	.LLST9
	.byte	0
	.uleb128 0x32
	.uaword	0x716f
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xf7
	.uaword	0x75d0
	.uleb128 0x2e
	.uaword	0x719d
	.byte	0x6
	.uleb128 0x2f
	.uaword	0x7191
	.uaword	.LLST10
	.uleb128 0x34
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x35
	.uaword	0x71ac
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x716f
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0xfa
	.uaword	0x7609
	.uleb128 0x2f
	.uaword	0x719d
	.uaword	.LLST11
	.uleb128 0x2f
	.uaword	0x7191
	.uaword	.LLST12
	.uleb128 0x34
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x31
	.uaword	0x71ac
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x71ba
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x7627
	.uleb128 0x2f
	.uaword	0x71df
	.uaword	.LLST14
	.byte	0
	.uleb128 0x36
	.uaword	0x73ca
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x7668
	.uleb128 0x2f
	.uaword	0x740c
	.uaword	.LLST15
	.uleb128 0x2f
	.uaword	0x73fb
	.uaword	.LLST15
	.uleb128 0x2f
	.uaword	0x73ea
	.uaword	.LLST15
	.uleb128 0x34
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x37
	.uaword	0x741d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL3
	.uaword	0x948e
	.uaword	0x767c
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL14
	.uaword	0x94b4
	.uaword	0x769a
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL15
	.uaword	0x94ea
	.uleb128 0x38
	.uaword	.LVL16
	.uaword	0x9504
	.uaword	0x76c1
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL18
	.uaword	0x9536
	.uleb128 0x39
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"CCU6_vidAlimPowerDelay"
	.byte	0x1
	.uahalf	0x128
	.byte	0x1
	.byte	0x1
	.uaword	0x773c
	.uleb128 0x22
	.string	"u16LocIgbtDrvClkDutyRaw"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x217
	.uleb128 0x22
	.string	"f32LocIgbtDrvClkDutyPhys"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x1a1
	.byte	0
	.uleb128 0x3c
	.uaword	0x76d8
	.uaword	.LFB396
	.uaword	.LFE396
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7774
	.uleb128 0x31
	.uaword	0x76fa
	.uaword	.LLST18
	.uleb128 0x31
	.uaword	0x771a
	.uaword	.LLST19
	.uleb128 0x3d
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x956d
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidExcitationPwmState"
	.byte	0x1
	.uahalf	0x142
	.byte	0x1
	.uaword	.LFB397
	.uaword	.LFE397
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x781e
	.uleb128 0x3f
	.string	"u8ExciPwmState"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x1ec
	.uaword	.LLST20
	.uleb128 0x38
	.uaword	.LVL31
	.uaword	0x95a4
	.uaword	0x77d8
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x40
	.uaword	.LVL32
	.byte	0x1
	.uaword	0x95a4
	.uaword	0x77f2
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xe9
	.byte	0
	.uleb128 0x38
	.uaword	.LVL33
	.uaword	0x95a4
	.uaword	0x7806
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL34
	.byte	0x1
	.uaword	0x95a4
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"CCU6_vidMcuAscExit"
	.byte	0x1
	.uahalf	0x3ce
	.byte	0x1
	.byte	0x1
	.uaword	0x7862
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x3d0
	.uaword	0x6b95
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x3d1
	.uaword	0x5f06
	.uleb128 0x22
	.string	"pslr"
	.byte	0x1
	.uahalf	0x3d2
	.uaword	0x2ec4
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"CCU6_bGetAscRecoverCondition"
	.byte	0x1
	.uahalf	0x50b
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x7993
	.uleb128 0x27
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x50d
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocPwmSttOff"
	.byte	0x1
	.uahalf	0x50e
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocAscEnaPinVal"
	.byte	0x1
	.uahalf	0x50f
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocEmgcyFaultDet"
	.byte	0x1
	.uahalf	0x510
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocIgbtHPinLevel"
	.byte	0x1
	.uahalf	0x511
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocIgbtLPinLevel"
	.byte	0x1
	.uahalf	0x512
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocOvcUPinLevel"
	.byte	0x1
	.uahalf	0x513
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocOvcVPinLevel"
	.byte	0x1
	.uahalf	0x514
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocOvcWPinLevel"
	.byte	0x1
	.uahalf	0x515
	.uaword	0x28c
	.uleb128 0x22
	.string	"bLocDrvClkFault"
	.byte	0x1
	.uahalf	0x516
	.uaword	0x28c
	.uleb128 0x22
	.string	"u8LocFaultLevel"
	.byte	0x1
	.uahalf	0x517
	.uaword	0x1ec
	.byte	0
	.uleb128 0x1f
	.string	"CCU6_vidStopPwmOutput"
	.byte	0x1
	.uahalf	0x421
	.byte	0x1
	.byte	0x1
	.uaword	0x79dc
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x423
	.uaword	0x6b95
	.uleb128 0x22
	.string	"mcmouts"
	.byte	0x1
	.uahalf	0x424
	.uaword	0x2d47
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x425
	.uaword	0x5f06
	.byte	0
	.uleb128 0x1f
	.string	"CCU6_vidStartPwmOutput"
	.byte	0x1
	.uahalf	0x43f
	.byte	0x1
	.byte	0x1
	.uaword	0x7a26
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x441
	.uaword	0x6b95
	.uleb128 0x22
	.string	"mcmouts"
	.byte	0x1
	.uahalf	0x442
	.uaword	0x2d47
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x443
	.uaword	0x5f06
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidMotorStateMng"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	.LFB398
	.uaword	.LFE398
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7de3
	.uleb128 0x42
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x162
	.uaword	0x28c
	.uaword	.LLST21
	.uleb128 0x36
	.uaword	0x7862
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0x7b24
	.uleb128 0x34
	.uaword	.LBB147
	.uaword	.LBE147
	.uleb128 0x31
	.uaword	0x788e
	.uaword	.LLST22
	.uleb128 0x31
	.uaword	0x789a
	.uaword	.LLST23
	.uleb128 0x31
	.uaword	0x78b0
	.uaword	.LLST24
	.uleb128 0x31
	.uaword	0x78c9
	.uaword	.LLST24
	.uleb128 0x31
	.uaword	0x78e3
	.uaword	.LLST26
	.uleb128 0x31
	.uaword	0x78fd
	.uaword	.LLST27
	.uleb128 0x31
	.uaword	0x7917
	.uaword	.LLST28
	.uleb128 0x31
	.uaword	0x7930
	.uaword	.LLST29
	.uleb128 0x31
	.uaword	0x7949
	.uaword	.LLST30
	.uleb128 0x31
	.uaword	0x7962
	.uaword	.LLST24
	.uleb128 0x31
	.uaword	0x797a
	.uaword	.LLST32
	.uleb128 0x38
	.uaword	.LVL38
	.uaword	0x95d9
	.uaword	0x7af5
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL40
	.uaword	0x9605
	.uleb128 0x3a
	.uaword	.LVL42
	.uaword	0x963a
	.uleb128 0x3a
	.uaword	.LVL44
	.uaword	0x966f
	.uleb128 0x3a
	.uaword	.LVL46
	.uaword	0x969e
	.uleb128 0x3a
	.uaword	.LVL48
	.uaword	0x96cd
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7369
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x7bb2
	.uleb128 0x34
	.uaword	.LBB149
	.uaword	.LBE149
	.uleb128 0x31
	.uaword	0x7389
	.uaword	.LLST33
	.uleb128 0x31
	.uaword	0x7395
	.uaword	.LLST34
	.uleb128 0x36
	.uaword	0x7256
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.uahalf	0x3ff
	.uaword	0x7b71
	.uleb128 0x2f
	.uaword	0x7272
	.uaword	.LLST34
	.byte	0
	.uleb128 0x43
	.uaword	0x7028
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.uahalf	0x400
	.uleb128 0x2f
	.uaword	0x7067
	.uaword	.LLST36
	.uleb128 0x2f
	.uaword	0x705b
	.uaword	.LLST37
	.uleb128 0x2f
	.uaword	0x704f
	.uaword	.LLST38
	.uleb128 0x34
	.uaword	.LBB153
	.uaword	.LBE153
	.uleb128 0x31
	.uaword	0x7073
	.uaword	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7993
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.uahalf	0x214
	.uaword	0x7bec
	.uleb128 0x34
	.uaword	.LBB155
	.uaword	.LBE155
	.uleb128 0x31
	.uaword	0x79b3
	.uaword	.LLST40
	.uleb128 0x31
	.uaword	0x79bf
	.uaword	.LLST41
	.uleb128 0x31
	.uaword	0x79cf
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x79dc
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x7c26
	.uleb128 0x34
	.uaword	.LBB157
	.uaword	.LBE157
	.uleb128 0x31
	.uaword	0x79fd
	.uaword	.LLST43
	.uleb128 0x31
	.uaword	0x7a09
	.uaword	.LLST44
	.uleb128 0x31
	.uaword	0x7a19
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x76d8
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x7c66
	.uleb128 0x34
	.uaword	.LBB159
	.uaword	.LBE159
	.uleb128 0x31
	.uaword	0x76fa
	.uaword	.LLST46
	.uleb128 0x31
	.uaword	0x771a
	.uaword	.LLST47
	.uleb128 0x3b
	.uaword	.LVL80
	.uaword	0x956d
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7993
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.uahalf	0x209
	.uaword	0x7ca0
	.uleb128 0x34
	.uaword	.LBB161
	.uaword	.LBE161
	.uleb128 0x31
	.uaword	0x79b3
	.uaword	.LLST48
	.uleb128 0x31
	.uaword	0x79bf
	.uaword	.LLST49
	.uleb128 0x31
	.uaword	0x79cf
	.uaword	.LLST50
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x781e
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.uahalf	0x190
	.uaword	0x7d33
	.uleb128 0x34
	.uaword	.LBB163
	.uaword	.LBE163
	.uleb128 0x31
	.uaword	0x783c
	.uaword	.LLST51
	.uleb128 0x31
	.uaword	0x7848
	.uaword	.LLST52
	.uleb128 0x44
	.uaword	0x7854
	.uleb128 0x36
	.uaword	0x722e
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.uahalf	0x3e7
	.uaword	0x7cf2
	.uleb128 0x2f
	.uaword	0x724a
	.uaword	.LLST53
	.byte	0
	.uleb128 0x43
	.uaword	0x7028
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x1
	.uahalf	0x3e8
	.uleb128 0x2f
	.uaword	0x7067
	.uaword	.LLST54
	.uleb128 0x2f
	.uaword	0x705b
	.uaword	.LLST55
	.uleb128 0x2f
	.uaword	0x704f
	.uaword	.LLST56
	.uleb128 0x34
	.uaword	.LBB167
	.uaword	.LBE167
	.uleb128 0x31
	.uaword	0x7073
	.uaword	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x73a2
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x1
	.uahalf	0x203
	.uaword	0x7d99
	.uleb128 0x34
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x31
	.uaword	0x73be
	.uaword	.LLST58
	.uleb128 0x45
	.uaword	0x6f4a
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x1
	.byte	0x9e
	.uleb128 0x2f
	.uaword	0x6f7f
	.uaword	.LLST59
	.uleb128 0x2f
	.uaword	0x6f73
	.uaword	.LLST59
	.uleb128 0x2f
	.uaword	0x6f67
	.uaword	.LLST61
	.uleb128 0x34
	.uaword	.LBB171
	.uaword	.LBE171
	.uleb128 0x31
	.uaword	0x6f8b
	.uaword	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL36
	.uaword	0x96fc
	.uleb128 0x3a
	.uaword	.LVL58
	.uaword	0x9730
	.uleb128 0x38
	.uaword	.LVL59
	.uaword	0x9766
	.uaword	0x7dbe
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL99
	.uaword	0x9781
	.uleb128 0x3a
	.uaword	.LVL100
	.uaword	0x97b7
	.uleb128 0x3a
	.uaword	.LVL101
	.uaword	0x97f5
	.uleb128 0x3a
	.uaword	.LVL102
	.uaword	0x9833
	.byte	0
	.uleb128 0x3c
	.uaword	0x73ca
	.uaword	.LFB399
	.uaword	.LFE399
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7e1d
	.uleb128 0x2f
	.uaword	0x73ea
	.uaword	.LLST63
	.uleb128 0x2f
	.uaword	0x73fb
	.uaword	.LLST64
	.uleb128 0x2f
	.uaword	0x740c
	.uaword	.LLST65
	.uleb128 0x31
	.uaword	0x741d
	.uaword	.LLST66
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetPwmMinDutyCycle"
	.byte	0x1
	.uahalf	0x27c
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7e67
	.uleb128 0x46
	.string	"f32MinDutyCyc"
	.byte	0x1
	.uahalf	0x27c
	.uaword	0x7e67
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.uaword	0x273
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetPwmMaxDutyCycle"
	.byte	0x1
	.uahalf	0x289
	.byte	0x1
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7eb6
	.uleb128 0x46
	.string	"f32MaxDutyCyc"
	.byte	0x1
	.uahalf	0x289
	.uaword	0x7e67
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetPwmModReq"
	.byte	0x1
	.uahalf	0x296
	.byte	0x1
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7ef6
	.uleb128 0x46
	.string	"u16PwmMod"
	.byte	0x1
	.uahalf	0x296
	.uaword	0x7ef6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.uaword	0x217
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_u16GetPwmModReq"
	.byte	0x1
	.uahalf	0x2a4
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_u8GetPwmState"
	.byte	0x1
	.uahalf	0x2b2
	.byte	0x1
	.uaword	0x1ec
	.uaword	.LFB404
	.uaword	.LFE404
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_u16GetPwmDutyUI"
	.byte	0x1
	.uahalf	0x2c0
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB405
	.uaword	.LFE405
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_u16GetPwmDutyVI"
	.byte	0x1
	.uahalf	0x2ce
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB406
	.uaword	.LFE406
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_u16GetPwmDutyWI"
	.byte	0x1
	.uahalf	0x2dc
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB407
	.uaword	.LFE407
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_u16GetPwmDeadTime"
	.byte	0x1
	.uahalf	0x2ea
	.byte	0x1
	.uaword	0x217
	.uaword	.LFB408
	.uaword	.LFE408
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8035
	.uleb128 0x49
	.string	"u16LocPwmDeadTime"
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0x217
	.byte	0x5
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.uleb128 0x4a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x6b95
	.byte	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetPwmHlPeriod"
	.byte	0x1
	.uahalf	0x2fd
	.byte	0x1
	.uaword	.LFB409
	.uaword	.LFE409
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x807d
	.uleb128 0x46
	.string	"u16LocT12Period"
	.byte	0x1
	.uahalf	0x2fd
	.uaword	0x7ef6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetMotorSpdRdyFlg"
	.byte	0x1
	.uahalf	0x310
	.byte	0x1
	.uaword	.LFB410
	.uaword	.LFE410
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x80c5
	.uleb128 0x46
	.string	"bMotorSpdRdy"
	.byte	0x1
	.uahalf	0x310
	.uaword	0x28c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetClrTrapReq"
	.byte	0x1
	.uahalf	0x31f
	.byte	0x1
	.uaword	.LFB411
	.uaword	.LFE411
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8108
	.uleb128 0x46
	.string	"bClrTrapReq"
	.byte	0x1
	.uahalf	0x31f
	.uaword	0x28c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4b
	.uaword	0x71eb
	.uaword	.LFB412
	.uaword	.LFE412
	.uaword	.LLST67
	.byte	0x1
	.uaword	0x812e
	.uleb128 0x4c
	.uaword	0x7203
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.uaword	0x7210
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.string	"CCU6_vidMcuAscEnter"
	.byte	0x1
	.uahalf	0x342
	.byte	0x1
	.uaword	.LFB413
	.uaword	.LFE413
	.uaword	.LLST68
	.byte	0x1
	.uaword	0x82cc
	.uleb128 0x4e
	.string	"bLocFltPinVal"
	.byte	0x1
	.uahalf	0x344
	.uaword	0x28c
	.uaword	.LLST69
	.uleb128 0x4e
	.string	"pslr"
	.byte	0x1
	.uahalf	0x346
	.uaword	0x2ec4
	.uaword	.LLST70
	.uleb128 0x4a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x347
	.uaword	0x6b95
	.byte	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x4a
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x348
	.uaword	0x5f06
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	0x71eb
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.uahalf	0x37c
	.uaword	0x81d5
	.uleb128 0x2f
	.uaword	0x7203
	.uaword	.LLST71
	.uleb128 0x34
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x37
	.uaword	0x7210
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x6f9a
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.uahalf	0x3ba
	.uaword	0x8218
	.uleb128 0x2f
	.uaword	0x6fce
	.uaword	.LLST72
	.uleb128 0x2f
	.uaword	0x6fc2
	.uaword	.LLST72
	.uleb128 0x2f
	.uaword	0x6fb6
	.uaword	.LLST74
	.uleb128 0x34
	.uaword	.LBB175
	.uaword	.LBE175
	.uleb128 0x31
	.uaword	0x6fda
	.uaword	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7028
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x1
	.uahalf	0x3bd
	.uaword	0x825b
	.uleb128 0x2f
	.uaword	0x7067
	.uaword	.LLST76
	.uleb128 0x2f
	.uaword	0x705b
	.uaword	.LLST77
	.uleb128 0x2f
	.uaword	0x704f
	.uaword	.LLST78
	.uleb128 0x34
	.uaword	.LBB177
	.uaword	.LBE177
	.uleb128 0x31
	.uaword	0x7073
	.uaword	.LLST79
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x6f4a
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x1
	.uahalf	0x3c0
	.uaword	0x829e
	.uleb128 0x2f
	.uaword	0x6f7f
	.uaword	.LLST80
	.uleb128 0x2f
	.uaword	0x6f73
	.uaword	.LLST80
	.uleb128 0x2f
	.uaword	0x6f67
	.uaword	.LLST82
	.uleb128 0x34
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x31
	.uaword	0x6f8b
	.uaword	.LLST83
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL128
	.uaword	0x9605
	.uleb128 0x3a
	.uaword	.LVL130
	.uaword	0x963a
	.uleb128 0x3a
	.uaword	.LVL132
	.uaword	0x966f
	.uleb128 0x3a
	.uaword	.LVL134
	.uaword	0x969e
	.uleb128 0x3a
	.uaword	.LVL136
	.uaword	0x96cd
	.byte	0
	.uleb128 0x3c
	.uaword	0x781e
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x835c
	.uleb128 0x37
	.uaword	0x783c
	.byte	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x31
	.uaword	0x7848
	.uaword	.LLST84
	.uleb128 0x37
	.uaword	0x7854
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.uleb128 0x36
	.uaword	0x722e
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.uahalf	0x3e7
	.uaword	0x8322
	.uleb128 0x2f
	.uaword	0x724a
	.uaword	.LLST85
	.byte	0
	.uleb128 0x43
	.uaword	0x7028
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.uahalf	0x3e8
	.uleb128 0x2e
	.uaword	0x7067
	.byte	0
	.uleb128 0x2e
	.uaword	0x705b
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x704f
	.uaword	.LLST86
	.uleb128 0x34
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x31
	.uaword	0x7073
	.uaword	.LLST87
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x7369
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x83d6
	.uleb128 0x37
	.uaword	0x7389
	.byte	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x37
	.uaword	0x7395
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	0x7256
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x1
	.uahalf	0x3ff
	.uaword	0x83a0
	.uleb128 0x4c
	.uaword	0x7272
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x43
	.uaword	0x7028
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x1
	.uahalf	0x400
	.uleb128 0x2e
	.uaword	0x7067
	.byte	0
	.uleb128 0x2e
	.uaword	0x705b
	.byte	0x1
	.uleb128 0x4c
	.uaword	0x704f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x34
	.uaword	.LBB187
	.uaword	.LBE187
	.uleb128 0x37
	.uaword	0x7073
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSoftTrapTrigger"
	.byte	0x1
	.uahalf	0x40c
	.byte	0x1
	.uaword	.LFB416
	.uaword	.LFE416
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8437
	.uleb128 0x46
	.string	"bEmgcyStopReq"
	.byte	0x1
	.uahalf	0x40c
	.uaword	0x8437
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.uaword	0x722e
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.uahalf	0x412
	.uleb128 0x2f
	.uaword	0x724a
	.uaword	.LLST88
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x28c
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidEnaTrapPinFunc"
	.byte	0x1
	.uahalf	0x45d
	.byte	0x1
	.uaword	.LFB419
	.uaword	.LFE419
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8720
	.uleb128 0x42
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x45f
	.uaword	0x5f06
	.uaword	.LLST89
	.uleb128 0x36
	.uaword	0x727e
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.uahalf	0x463
	.uaword	0x84b4
	.uleb128 0x2e
	.uaword	0x72a7
	.byte	0
	.uleb128 0x2f
	.uaword	0x729b
	.uaword	.LLST89
	.uleb128 0x34
	.uaword	.LBB191
	.uaword	.LBE191
	.uleb128 0x35
	.uaword	0x72ba
	.byte	0x8
	.uleb128 0x4f
	.uaword	0x72c8
	.uahalf	0x100
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x727e
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.uahalf	0x464
	.uaword	0x84ef
	.uleb128 0x2e
	.uaword	0x72a7
	.byte	0x2
	.uleb128 0x2f
	.uaword	0x729b
	.uaword	.LLST91
	.uleb128 0x34
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x35
	.uaword	0x72ba
	.byte	0xa
	.uleb128 0x4f
	.uaword	0x72c8
	.uahalf	0x400
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x727e
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.uahalf	0x465
	.uaword	0x852a
	.uleb128 0x2e
	.uaword	0x72a7
	.byte	0x4
	.uleb128 0x2f
	.uaword	0x729b
	.uaword	.LLST92
	.uleb128 0x34
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x35
	.uaword	0x72ba
	.byte	0xc
	.uleb128 0x4f
	.uaword	0x72c8
	.uahalf	0x1000
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x727e
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.uahalf	0x466
	.uaword	0x8565
	.uleb128 0x2e
	.uaword	0x72a7
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x729b
	.uaword	.LLST93
	.uleb128 0x34
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x35
	.uaword	0x72ba
	.byte	0x9
	.uleb128 0x4f
	.uaword	0x72c8
	.uahalf	0x200
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x727e
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.uahalf	0x467
	.uaword	0x85a0
	.uleb128 0x2e
	.uaword	0x72a7
	.byte	0x3
	.uleb128 0x2f
	.uaword	0x729b
	.uaword	.LLST94
	.uleb128 0x34
	.uaword	.LBB199
	.uaword	.LBE199
	.uleb128 0x35
	.uaword	0x72ba
	.byte	0xb
	.uleb128 0x4f
	.uaword	0x72c8
	.uahalf	0x800
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x727e
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.uahalf	0x468
	.uaword	0x85db
	.uleb128 0x2e
	.uaword	0x72a7
	.byte	0x5
	.uleb128 0x2f
	.uaword	0x729b
	.uaword	.LLST95
	.uleb128 0x34
	.uaword	.LBB201
	.uaword	.LBE201
	.uleb128 0x35
	.uaword	0x72ba
	.byte	0xd
	.uleb128 0x4f
	.uaword	0x72c8
	.uahalf	0x2000
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x72d6
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x1
	.uahalf	0x469
	.uaword	0x85ff
	.uleb128 0x2e
	.uaword	0x7300
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x72f4
	.uaword	.LLST96
	.byte	0
	.uleb128 0x36
	.uaword	0x733b
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.uahalf	0x471
	.uaword	0x861d
	.uleb128 0x2f
	.uaword	0x735c
	.uaword	.LLST97
	.byte	0
	.uleb128 0x50
	.uaword	0x7369
	.uaword	.LBB206
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x474
	.uaword	0x86a7
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.uaword	0x7389
	.uaword	.LLST98
	.uleb128 0x31
	.uaword	0x7395
	.uaword	.LLST99
	.uleb128 0x36
	.uaword	0x7256
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.uahalf	0x3ff
	.uaword	0x8666
	.uleb128 0x2f
	.uaword	0x7272
	.uaword	.LLST99
	.byte	0
	.uleb128 0x43
	.uaword	0x7028
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.uahalf	0x400
	.uleb128 0x2f
	.uaword	0x7067
	.uaword	.LLST101
	.uleb128 0x2f
	.uaword	0x705b
	.uaword	.LLST102
	.uleb128 0x2f
	.uaword	0x704f
	.uaword	.LLST103
	.uleb128 0x34
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x31
	.uaword	0x7073
	.uaword	.LLST104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x716f
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.uahalf	0x476
	.uaword	0x86e1
	.uleb128 0x2f
	.uaword	0x719d
	.uaword	.LLST105
	.uleb128 0x2f
	.uaword	0x7191
	.uaword	.LLST106
	.uleb128 0x34
	.uaword	.LBB215
	.uaword	.LBE215
	.uleb128 0x31
	.uaword	0x71ac
	.uaword	.LLST107
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x730e
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x1
	.uahalf	0x46d
	.uaword	0x86fd
	.uleb128 0x4c
	.uaword	0x732e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	.LVL182
	.uaword	0x94b4
	.uaword	0x8715
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x51
	.uaword	.LVL183
	.byte	0x1
	.uaword	0x9871
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSwitchPwmUpdEvent"
	.byte	0x1
	.uahalf	0x486
	.byte	0x1
	.uaword	.LFB420
	.uaword	.LFE420
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x878c
	.uleb128 0x4e
	.string	"bLocMidPointErrFlg"
	.byte	0x1
	.uahalf	0x488
	.uaword	0x28c
	.uaword	.LLST108
	.uleb128 0x4e
	.string	"u16LocT12CntVal"
	.byte	0x1
	.uahalf	0x489
	.uaword	0x217
	.uaword	.LLST109
	.byte	0
	.uleb128 0x3c
	.uaword	0x7862
	.uaword	.LFB421
	.uaword	.LFE421
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8839
	.uleb128 0x35
	.uaword	0x788e
	.byte	0
	.uleb128 0x31
	.uaword	0x789a
	.uaword	.LLST110
	.uleb128 0x35
	.uaword	0x78b0
	.byte	0
	.uleb128 0x35
	.uaword	0x78c9
	.byte	0
	.uleb128 0x31
	.uaword	0x78e3
	.uaword	.LLST111
	.uleb128 0x31
	.uaword	0x78fd
	.uaword	.LLST112
	.uleb128 0x31
	.uaword	0x7917
	.uaword	.LLST113
	.uleb128 0x31
	.uaword	0x7930
	.uaword	.LLST114
	.uleb128 0x31
	.uaword	0x7949
	.uaword	.LLST115
	.uleb128 0x35
	.uaword	0x7962
	.byte	0
	.uleb128 0x31
	.uaword	0x797a
	.uaword	.LLST116
	.uleb128 0x38
	.uaword	.LVL201
	.uaword	0x95d9
	.uaword	0x880b
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL203
	.uaword	0x9605
	.uleb128 0x3a
	.uaword	.LVL205
	.uaword	0x963a
	.uleb128 0x3a
	.uaword	.LVL207
	.uaword	0x966f
	.uleb128 0x3a
	.uaword	.LVL209
	.uaword	0x969e
	.uleb128 0x3a
	.uaword	.LVL211
	.uaword	0x96cd
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetAscStatus"
	.byte	0x1
	.uahalf	0x54e
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB422
	.uaword	.LFE422
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x887a
	.uleb128 0x22
	.string	"bLocAscSts"
	.byte	0x1
	.uahalf	0x550
	.uaword	0x28c
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetIuvwZeroCompReq"
	.byte	0x1
	.uahalf	0x567
	.byte	0x1
	.uaword	.LFB423
	.uaword	.LFE423
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x88c3
	.uleb128 0x46
	.string	"bIuvwCompReq"
	.byte	0x1
	.uahalf	0x567
	.uaword	0x8437
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetHwFaultIgbtH"
	.byte	0x1
	.uahalf	0x576
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB424
	.uaword	.LFE424
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x892d
	.uleb128 0x42
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x578
	.uaword	0x28c
	.uaword	.LLST117
	.uleb128 0x42
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x579
	.uaword	0x28c
	.uaword	.LLST118
	.uleb128 0x42
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x57a
	.uaword	0x28c
	.uaword	.LLST119
	.uleb128 0x3a
	.uaword	.LVL222
	.uaword	0x9605
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetHwFaultIgbtL"
	.byte	0x1
	.uahalf	0x59e
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB425
	.uaword	.LFE425
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8997
	.uleb128 0x42
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x5a0
	.uaword	0x28c
	.uaword	.LLST120
	.uleb128 0x42
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x5a1
	.uaword	0x28c
	.uaword	.LLST121
	.uleb128 0x42
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x5a2
	.uaword	0x28c
	.uaword	.LLST122
	.uleb128 0x3a
	.uaword	.LVL228
	.uaword	0x963a
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetHwFaultOvcU"
	.byte	0x1
	.uahalf	0x5c6
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB426
	.uaword	.LFE426
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x89f0
	.uleb128 0x42
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x5c8
	.uaword	0x28c
	.uaword	.LLST123
	.uleb128 0x42
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x5c9
	.uaword	0x28c
	.uaword	.LLST124
	.uleb128 0x3a
	.uaword	.LVL235
	.uaword	0x966f
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetHwFaultOvcV"
	.byte	0x1
	.uahalf	0x5ea
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB427
	.uaword	.LFE427
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a49
	.uleb128 0x42
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x5ec
	.uaword	0x28c
	.uaword	.LLST125
	.uleb128 0x42
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x5ed
	.uaword	0x28c
	.uaword	.LLST126
	.uleb128 0x3a
	.uaword	.LVL241
	.uaword	0x969e
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetHwFaultOvcW"
	.byte	0x1
	.uahalf	0x60e
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB428
	.uaword	.LFE428
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8aa2
	.uleb128 0x42
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x610
	.uaword	0x28c
	.uaword	.LLST127
	.uleb128 0x42
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x611
	.uaword	0x28c
	.uaword	.LLST128
	.uleb128 0x3a
	.uaword	.LVL247
	.uaword	0x96cd
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_bGetHwFaultDcOvVolt"
	.byte	0x1
	.uahalf	0x632
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB429
	.uaword	.LFE429
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8ae2
	.uleb128 0x27
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x634
	.uaword	0x28c
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_bGetZeroMatchFlg"
	.byte	0x1
	.uahalf	0x654
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB430
	.uaword	.LFE430
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"CCU6_vidSetHvOverFlg"
	.byte	0x1
	.uahalf	0x662
	.byte	0x1
	.uaword	.LFB431
	.uaword	.LFE431
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8b4d
	.uleb128 0x46
	.string	"bHvOvFlg"
	.byte	0x1
	.uahalf	0x662
	.uaword	0x8437
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"CCU6_bGetPwmRuningFlg"
	.byte	0x1
	.uahalf	0x670
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB432
	.uaword	.LFE432
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"CCU6_vidPwmDrvClkDiag"
	.byte	0x1
	.uahalf	0x67e
	.byte	0x1
	.uaword	.LFB433
	.uaword	.LFE433
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x48
	.byte	0x1
	.string	"CCU6_u8GetIGBTStatus"
	.byte	0x1
	.uahalf	0x6d4
	.byte	0x1
	.uaword	0x1ec
	.uaword	.LFB434
	.uaword	.LFE434
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8be9
	.uleb128 0x4e
	.string	"u8ReturnVal"
	.byte	0x1
	.uahalf	0x6d6
	.uaword	0x1ec
	.uaword	.LLST129
	.byte	0
	.uleb128 0x2c
	.string	"CCU6_udtIfxCcu6PwmHlCfg"
	.byte	0x1
	.byte	0x74
	.uaword	0x6b04
	.byte	0x5
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.uleb128 0x53
	.string	"MAIN_u8IgbtFltConfirmCntC"
	.byte	0x13
	.byte	0x51
	.uaword	0x8c31
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x1ec
	.uleb128 0x53
	.string	"MAIN_bSoftOvCurrPhsUFlg"
	.byte	0x13
	.byte	0x65
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"MAIN_bSoftOvCurrPhsVFlg"
	.byte	0x13
	.byte	0x66
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"MAIN_bSoftOvCurrPhsWFlg"
	.byte	0x13
	.byte	0x67
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"MAIN_u8IgbtHighFltCnt"
	.byte	0x13
	.byte	0x89
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x1ec
	.uleb128 0x53
	.string	"MAIN_u8IgbtLowFltCnt"
	.byte	0x13
	.byte	0x8a
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x4f0
	.uaword	0x8ceb
	.uleb128 0x7
	.uaword	0x330
	.byte	0x3
	.byte	0
	.uleb128 0x53
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xa
	.byte	0xaa
	.uaword	0x8d08
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x8cdb
	.uleb128 0x53
	.string	"CCU6_bDualSmpEnaC"
	.byte	0x14
	.byte	0x38
	.uaword	0x8437
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwOvcFltDetEnaC"
	.byte	0x14
	.byte	0x39
	.uaword	0x8437
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwPinAscEnaC"
	.byte	0x14
	.byte	0x3a
	.uaword	0x8437
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_kf32MidPointDutyHC"
	.byte	0x14
	.byte	0x3d
	.uaword	0x7e67
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_kf32MidPointDutyLC"
	.byte	0x14
	.byte	0x3e
	.uaword	0x7e67
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_ku8AscRecoverCntMaxC"
	.byte	0x14
	.byte	0x3f
	.uaword	0x8c31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_ku8OvcRcvCntMaxC"
	.byte	0x14
	.byte	0x40
	.uaword	0x8c31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_ku8PwmMidPointFaultC"
	.byte	0x14
	.byte	0x41
	.uaword	0x8c31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_ku8PwmMidPotStartDelayC"
	.byte	0x14
	.byte	0x42
	.uaword	0x8c31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bAkdAfterAscReq"
	.byte	0x14
	.byte	0x5a
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bClrTrapReq"
	.byte	0x14
	.byte	0x5b
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwFaultDcOvVolt"
	.byte	0x14
	.byte	0x5c
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwFaultIgbtH"
	.byte	0x14
	.byte	0x5d
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwFaultIgbtL"
	.byte	0x14
	.byte	0x5e
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwFaultOvcU"
	.byte	0x14
	.byte	0x5f
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwFaultOvcV"
	.byte	0x14
	.byte	0x60
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bHwFaultOvcW"
	.byte	0x14
	.byte	0x61
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bIgbtHighSideShort"
	.byte	0x14
	.byte	0x62
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x28c
	.uleb128 0x53
	.string	"CCU6_bIgbtLowSideShort"
	.byte	0x14
	.byte	0x63
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bIsCCU6Start"
	.byte	0x14
	.byte	0x64
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bIuvwCompReq"
	.byte	0x14
	.byte	0x65
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bMotorSpdRdy"
	.byte	0x14
	.byte	0x66
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bP5VDiagReinitCmd"
	.byte	0x14
	.byte	0x67
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bP5VHSFltFlg"
	.byte	0x14
	.byte	0x68
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bP5VLSFltFlg"
	.byte	0x14
	.byte	0x69
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bPwmMidPointU"
	.byte	0x14
	.byte	0x6a
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bPwmMidPointV"
	.byte	0x14
	.byte	0x6b
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bPwmMidPointW"
	.byte	0x14
	.byte	0x6c
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bPwmOnGoingFlg"
	.byte	0x14
	.byte	0x6d
	.uaword	0x8f31
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bT12ZeroMatchFlg"
	.byte	0x14
	.byte	0x6e
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_bTrapTrigger"
	.byte	0x14
	.byte	0x6f
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_f32HighVolPhys"
	.byte	0x14
	.byte	0x70
	.uaword	0x90c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x273
	.uleb128 0x53
	.string	"CCU6_f32PwmDutyPhysUZ"
	.byte	0x14
	.byte	0x71
	.uaword	0x90c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_f32PwmDutyPhysVZ"
	.byte	0x14
	.byte	0x72
	.uaword	0x90c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_f32PwmDutyPhysWZ"
	.byte	0x14
	.byte	0x73
	.uaword	0x90c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x24b
	.uaword	0x9137
	.uleb128 0x7
	.uaword	0x330
	.byte	0x2
	.byte	0
	.uleb128 0x53
	.string	"CCU6_au32PWMOnTime"
	.byte	0x14
	.byte	0x74
	.uaword	0x9127
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u32DrvClkHsDutyRaw"
	.byte	0x14
	.byte	0x75
	.uaword	0x7229
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u32DrvClkHsPerdRaw"
	.byte	0x14
	.byte	0x76
	.uaword	0x7229
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u32DrvClkLsDutyRaw"
	.byte	0x14
	.byte	0x77
	.uaword	0x7229
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u32DrvClkLsPerdRaw"
	.byte	0x14
	.byte	0x78
	.uaword	0x7229
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u32TrapCreq"
	.byte	0x14
	.byte	0x79
	.uaword	0x7229
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8AscRecoverCnt"
	.byte	0x14
	.byte	0x7a
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8OvcRcvCnt"
	.byte	0x14
	.byte	0x7b
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8McuAscSttStep"
	.byte	0x14
	.byte	0x7c
	.uaword	0x1ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8McuAscType"
	.byte	0x14
	.byte	0x7d
	.uaword	0x1ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8P5VHSFltCnt"
	.byte	0x14
	.byte	0x7e
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8P5VLSFltCnt"
	.byte	0x14
	.byte	0x7f
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8P5VPowerMngStt"
	.byte	0x14
	.byte	0x80
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8P5VSelfTstTimCnt"
	.byte	0x14
	.byte	0x81
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8StartMidPotDetCnt"
	.byte	0x14
	.byte	0x82
	.uaword	0x8cb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8PreTestStep"
	.byte	0x14
	.byte	0x83
	.uaword	0x1ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u8PwmState"
	.byte	0x14
	.byte	0x84
	.uaword	0x1ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16AlimPowerOnDelay"
	.byte	0x14
	.byte	0x85
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16HighVolAdc"
	.byte	0x14
	.byte	0x87
	.uaword	0x936f
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x217
	.uleb128 0x53
	.string	"CCU6_u16McuAscSttDelay"
	.byte	0x14
	.byte	0x88
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16P5VHSAdc"
	.byte	0x14
	.byte	0x89
	.uaword	0x936f
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16PowerOnDelay"
	.byte	0x14
	.byte	0x8a
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16PwmMidPointErrCnt"
	.byte	0x14
	.byte	0x8c
	.uaword	0x936f
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16PwmModReq"
	.byte	0x14
	.byte	0x8e
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16T12CntVal"
	.byte	0x14
	.byte	0x8f
	.uaword	0x936f
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_u16T12PeriodVal"
	.byte	0x14
	.byte	0x90
	.uaword	0x936f
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"CCU6_kudtIfxCcu6TimerWithTriggerCfg"
	.byte	0x15
	.byte	0x6
	.uaword	0x6cd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.string	"CCU6_pstrModule"
	.byte	0x1
	.byte	0x75
	.uaword	0x5f06
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCU6_pstrModule
	.uleb128 0x55
	.byte	0x1
	.string	"IfxCcu6_enableModule"
	.byte	0x2
	.uahalf	0x491
	.byte	0x1
	.byte	0x1
	.uaword	0x94b4
	.uleb128 0x1e
	.uaword	0x5f06
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxCcu6_routeInterruptNode"
	.byte	0x2
	.uahalf	0x2bb
	.byte	0x1
	.byte	0x1
	.uaword	0x94ea
	.uleb128 0x1e
	.uaword	0x5f06
	.uleb128 0x1e
	.uaword	0x63e3
	.uleb128 0x1e
	.uaword	0x6655
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.string	"CCU6_vidDisableTrap"
	.byte	0x19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.uleb128 0x55
	.byte	0x1
	.string	"IfxCcu6_connectTrigger"
	.byte	0x2
	.uahalf	0x2b3
	.byte	0x1
	.byte	0x1
	.uaword	0x9536
	.uleb128 0x1e
	.uaword	0x5f06
	.uleb128 0x1e
	.uaword	0x354b
	.uleb128 0x1e
	.uaword	0x35f5
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.string	"IfxCcu6_PwmHl_init"
	.byte	0x12
	.byte	0xaa
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x9562
	.uleb128 0x1e
	.uaword	0x6b95
	.uleb128 0x1e
	.uaword	0x9562
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x9568
	.uleb128 0x1c
	.uaword	0x6cfc
	.uleb128 0x55
	.byte	0x1
	.string	"Pwm_17_GtmCcu6_SetDutyCycle"
	.byte	0x5
	.uahalf	0x208
	.byte	0x1
	.byte	0x1
	.uaword	0x959f
	.uleb128 0x1e
	.uaword	0x959f
	.uleb128 0x1e
	.uaword	0x7ef6
	.byte	0
	.uleb128 0x1c
	.uaword	0x3dd
	.uleb128 0x55
	.byte	0x1
	.string	"Port_SetPinDirection"
	.byte	0x6
	.uahalf	0x1a2
	.byte	0x1
	.byte	0x1
	.uaword	0x95cf
	.uleb128 0x1e
	.uaword	0x95cf
	.uleb128 0x1e
	.uaword	0x95d4
	.byte	0
	.uleb128 0x1c
	.uaword	0x3ff
	.uleb128 0x1c
	.uaword	0x43a
	.uleb128 0x57
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0x16
	.byte	0x5f
	.byte	0x1
	.uaword	0x1ec
	.byte	0x1
	.uaword	0x9605
	.uleb128 0x1e
	.uaword	0x1ec
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1"
	.byte	0x17
	.byte	0x67
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1"
	.byte	0x17
	.byte	0x73
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1"
	.byte	0x17
	.byte	0x5c
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1"
	.byte	0x17
	.byte	0x55
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1"
	.byte	0x17
	.byte	0x5f
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV"
	.byte	0x17
	.byte	0x8e
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HLogged"
	.byte	0x18
	.uahalf	0x306
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x5a
	.byte	0x1
	.string	"FaultClear"
	.byte	0x16
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x9781
	.uleb128 0x1e
	.uaword	0x1ec
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LLogged"
	.byte	0x18
	.uahalf	0x307
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUILogged"
	.byte	0x18
	.uahalf	0x308
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVILogged"
	.byte	0x18
	.uahalf	0x309
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWILogged"
	.byte	0x18
	.uahalf	0x30a
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x56
	.byte	0x1
	.string	"CCU6_vidEnableTrap"
	.byte	0x19
	.byte	0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB395
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE395
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x8
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg+20
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1ba
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE396
	.uahalf	0x20
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1aa
	.byte	0xf7
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x42480000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1ba
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE396
	.uahalf	0x1b
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1aa
	.byte	0xf7
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x42480000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33-1
	.uaword	.LFE397
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL35
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL37
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LFE398
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL37
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL58-1
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL37
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LFE398
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42-1
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44-1
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL37
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL37
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL37
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40-1
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL98
	.uaword	.LFE398
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL59
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL60
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL69
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1ba
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x20
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1aa
	.byte	0xf7
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x42480000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1ba
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1b
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1aa
	.byte	0xf7
	.uleb128 0x1a1
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x42480000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a1
	.byte	0x4
	.uaword	0x46a28e00
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL81
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL87
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL88
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL89
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL89
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL89
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL94
	.uaword	.LVL98
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL95
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL95
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LFE399
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL115
	.uaword	.LFE399
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL103
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL111
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1a1
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LFE399
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL104
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111
	.uaword	.LFE399
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LFB412
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE412
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LFB413
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE413
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL148
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL152
	.uaword	.LFE413
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL138
	.uaword	.LVL140
	.uahalf	0x9
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x8
	.byte	0x45
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL137
	.uaword	.LVL148
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LFE413
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL142
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL142
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL144
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL144
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL144
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL154
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL156
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL157
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL168
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL169
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL170
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL171
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL172
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL173
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL174
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183
	.uaword	.LFE419
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL176
	.uaword	.LVL183
	.uahalf	0x6
	.byte	0x3
	.uaword	CCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL177
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL178
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL178
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL178
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL179
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL180
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL180
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL180
	.uaword	.LVL183
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x400
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL184
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL199
	.uaword	.LFE420
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL200
	.uaword	.LVL213
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL215
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LFE421
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL200
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL205-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL205-1
	.uaword	.LFE421
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL200
	.uaword	.LVL206
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL207-1
	.uaword	.LFE421
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL200
	.uaword	.LVL208
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL209-1
	.uaword	.LFE421
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL200
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL211-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL211-1
	.uaword	.LFE421
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL200
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL212
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL214
	.uaword	.LFE421
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL200
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL203-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL203-1
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL220
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LFE424
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL220
	.uaword	.LVL222
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL226
	.uaword	.LVL231
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LFE425
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL226
	.uaword	.LVL228
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL226
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL234
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LFE426
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL236
	.uaword	.LFE426
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL240
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LFE427
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL242
	.uaword	.LFE427
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL246
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LFE428
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL248
	.uaword	.LFE428
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL255
	.uaword	.LFE434
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x144
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB395
	.uaword	.LFE395-.LFB395
	.uaword	.LFB396
	.uaword	.LFE396-.LFB396
	.uaword	.LFB397
	.uaword	.LFE397-.LFB397
	.uaword	.LFB398
	.uaword	.LFE398-.LFB398
	.uaword	.LFB399
	.uaword	.LFE399-.LFB399
	.uaword	.LFB400
	.uaword	.LFE400-.LFB400
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.uaword	.LFB404
	.uaword	.LFE404-.LFB404
	.uaword	.LFB405
	.uaword	.LFE405-.LFB405
	.uaword	.LFB406
	.uaword	.LFE406-.LFB406
	.uaword	.LFB407
	.uaword	.LFE407-.LFB407
	.uaword	.LFB408
	.uaword	.LFE408-.LFB408
	.uaword	.LFB409
	.uaword	.LFE409-.LFB409
	.uaword	.LFB410
	.uaword	.LFE410-.LFB410
	.uaword	.LFB411
	.uaword	.LFE411-.LFB411
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
	.uaword	.LFB425
	.uaword	.LFE425-.LFB425
	.uaword	.LFB426
	.uaword	.LFE426-.LFB426
	.uaword	.LFB427
	.uaword	.LFE427-.LFB427
	.uaword	.LFB428
	.uaword	.LFE428-.LFB428
	.uaword	.LFB429
	.uaword	.LFE429-.LFB429
	.uaword	.LFB430
	.uaword	.LFE430-.LFB430
	.uaword	.LFB431
	.uaword	.LFE431-.LFB431
	.uaword	.LFB432
	.uaword	.LFE432-.LFB432
	.uaword	.LFB433
	.uaword	.LFE433-.LFB433
	.uaword	.LFB434
	.uaword	.LFE434-.LFB434
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB206
	.uaword	.LBE206
	.uaword	.LBB213
	.uaword	.LBE213
	.uaword	0
	.uaword	0
	.uaword	.LFB395
	.uaword	.LFE395
	.uaword	.LFB396
	.uaword	.LFE396
	.uaword	.LFB397
	.uaword	.LFE397
	.uaword	.LFB398
	.uaword	.LFE398
	.uaword	.LFB399
	.uaword	.LFE399
	.uaword	.LFB400
	.uaword	.LFE400
	.uaword	.LFB401
	.uaword	.LFE401
	.uaword	.LFB402
	.uaword	.LFE402
	.uaword	.LFB403
	.uaword	.LFE403
	.uaword	.LFB404
	.uaword	.LFE404
	.uaword	.LFB405
	.uaword	.LFE405
	.uaword	.LFB406
	.uaword	.LFE406
	.uaword	.LFB407
	.uaword	.LFE407
	.uaword	.LFB408
	.uaword	.LFE408
	.uaword	.LFB409
	.uaword	.LFE409
	.uaword	.LFB410
	.uaword	.LFE410
	.uaword	.LFB411
	.uaword	.LFE411
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
	.uaword	.LFB425
	.uaword	.LFE425
	.uaword	.LFB426
	.uaword	.LFE426
	.uaword	.LFB427
	.uaword	.LFE427
	.uaword	.LFB428
	.uaword	.LFE428
	.uaword	.LFB429
	.uaword	.LFE429
	.uaword	.LFB430
	.uaword	.LFE430
	.uaword	.LFB431
	.uaword	.LFE431
	.uaword	.LFB432
	.uaword	.LFE432
	.uaword	.LFB433
	.uaword	.LFE433
	.uaword	.LFB434
	.uaword	.LFE434
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF21:
	.string	"channelCount"
.LASF12:
	.string	"reserved_6"
.LASF22:
	.string	"ccxActiveState"
.LASF18:
	.string	"select"
.LASF28:
	.string	"bLocHwFaultResult"
.LASF24:
	.string	"ccu6"
.LASF8:
	.string	"reserved_10"
.LASF6:
	.string	"reserved_11"
.LASF14:
	.string	"reserved_12"
.LASF9:
	.string	"reserved_14"
.LASF7:
	.string	"reserved_15"
.LASF1:
	.string	"reserved_16"
.LASF23:
	.string	"coutxActiveState"
.LASF26:
	.string	"bLocAkdEnaFlg"
.LASF16:
	.string	"reserved_20"
.LASF15:
	.string	"reserved_24"
.LASF17:
	.string	"reserved_28"
.LASF29:
	.string	"bLocPinVal"
.LASF11:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF4:
	.string	"reserved_3"
.LASF3:
	.string	"reserved_4"
.LASF5:
	.string	"reserved_7"
.LASF13:
	.string	"reserved_8"
.LASF0:
	.string	"module"
.LASF20:
	.string	"minPulse"
.LASF19:
	.string	"deadtime"
.LASF30:
	.string	"bLocVsiScanRes"
.LASF27:
	.string	"CCU6_Module"
.LASF25:
	.string	"driver"
	.extern	CCU6_bHwOvcFltDetEnaC,STT_OBJECT,1
	.extern	MAIN_u8IgbtFltConfirmCntC,STT_OBJECT,1
	.extern	CCU6_kf32MidPointDutyHC,STT_OBJECT,4
	.extern	CCU6_kf32MidPointDutyLC,STT_OBJECT,4
	.extern	CCU6_ku8PwmMidPotStartDelayC,STT_OBJECT,1
	.extern	CCU6_u16T12CntVal,STT_OBJECT,2
	.extern	CCU6_vidEnableTrap,STT_FUNC,0
	.extern	CCU6_bHwPinAscEnaC,STT_OBJECT,1
	.extern	FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LLogged,STT_FUNC,0
	.extern	CCU6_ku8PwmMidPointFaultC,STT_OBJECT,1
	.extern	CCU6_ku8OvcRcvCntMaxC,STT_OBJECT,1
	.extern	CCU6_ku8AscRecoverCntMaxC,STT_OBJECT,1
	.extern	FaultClear,STT_FUNC,0
	.extern	MAIN_u8IgbtHighFltCnt,STT_OBJECT,1
	.extern	MAIN_u8IgbtLowFltCnt,STT_OBJECT,1
	.extern	MAIN_bSoftOvCurrPhsWFlg,STT_OBJECT,1
	.extern	MAIN_bSoftOvCurrPhsVFlg,STT_OBJECT,1
	.extern	MAIN_bSoftOvCurrPhsUFlg,STT_OBJECT,1
	.extern	FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HLogged,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1,STT_FUNC,0
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV,STT_FUNC,0
	.extern	Port_SetPinDirection,STT_FUNC,0
	.extern	Pwm_17_GtmCcu6_SetDutyCycle,STT_FUNC,0
	.extern	IfxCcu6_PwmHl_init,STT_FUNC,0
	.extern	IfxCcu6_connectTrigger,STT_FUNC,0
	.extern	CCU6_vidDisableTrap,STT_FUNC,0
	.extern	IfxCcu6_routeInterruptNode,STT_FUNC,0
	.extern	CCU6_bDualSmpEnaC,STT_OBJECT,1
	.extern	IfxCcu6_enableModule,STT_FUNC,0
	.extern	CCU6_kudtIfxCcu6TimerWithTriggerCfg,STT_OBJECT,20
	.extern	CCU6_u8StartMidPotDetCnt,STT_OBJECT,1
	.extern	CCU6_u32DrvClkLsDutyRaw,STT_OBJECT,4
	.extern	CCU6_u32DrvClkLsPerdRaw,STT_OBJECT,4
	.extern	CCU6_u32DrvClkHsDutyRaw,STT_OBJECT,4
	.extern	CCU6_u32DrvClkHsPerdRaw,STT_OBJECT,4
	.extern	CCU6_u8P5VSelfTstTimCnt,STT_OBJECT,1
	.extern	CCU6_bP5VDiagReinitCmd,STT_OBJECT,1
	.extern	CCU6_u8P5VPowerMngStt,STT_OBJECT,1
	.extern	CCU6_bP5VLSFltFlg,STT_OBJECT,1
	.extern	CCU6_bP5VHSFltFlg,STT_OBJECT,1
	.extern	CCU6_u8P5VLSFltCnt,STT_OBJECT,1
	.extern	CCU6_u8P5VHSFltCnt,STT_OBJECT,1
	.extern	CCU6_u16P5VHSAdc,STT_OBJECT,2
	.extern	CCU6_f32HighVolPhys,STT_OBJECT,4
	.extern	CCU6_u16HighVolAdc,STT_OBJECT,2
	.extern	CCU6_u8PreTestStep,STT_OBJECT,1
	.extern	CCU6_bIgbtLowSideShort,STT_OBJECT,1
	.extern	CCU6_bIgbtHighSideShort,STT_OBJECT,1
	.extern	CCU6_u16PwmMidPointErrCnt,STT_OBJECT,2
	.extern	CCU6_bPwmMidPointW,STT_OBJECT,1
	.extern	CCU6_bPwmMidPointV,STT_OBJECT,1
	.extern	CCU6_bPwmMidPointU,STT_OBJECT,1
	.extern	CCU6_au32PWMOnTime,STT_OBJECT,12
	.extern	CCU6_f32PwmDutyPhysWZ,STT_OBJECT,4
	.extern	CCU6_f32PwmDutyPhysVZ,STT_OBJECT,4
	.extern	CCU6_u8OvcRcvCnt,STT_OBJECT,1
	.extern	CCU6_u8AscRecoverCnt,STT_OBJECT,1
	.extern	CCU6_f32PwmDutyPhysUZ,STT_OBJECT,4
	.extern	CCU6_bPwmOnGoingFlg,STT_OBJECT,1
	.extern	CCU6_bT12ZeroMatchFlg,STT_OBJECT,1
	.extern	CCU6_u8McuAscType,STT_OBJECT,1
	.extern	CCU6_bHwFaultDcOvVolt,STT_OBJECT,1
	.extern	CCU6_bHwFaultOvcW,STT_OBJECT,1
	.extern	CCU6_bHwFaultOvcV,STT_OBJECT,1
	.extern	CCU6_bHwFaultOvcU,STT_OBJECT,1
	.extern	CCU6_bHwFaultIgbtL,STT_OBJECT,1
	.extern	CCU6_bHwFaultIgbtH,STT_OBJECT,1
	.extern	CCU6_bIuvwCompReq,STT_OBJECT,1
	.extern	CCU6_bAkdAfterAscReq,STT_OBJECT,1
	.extern	CCU6_bClrTrapReq,STT_OBJECT,1
	.extern	CCU6_bTrapTrigger,STT_OBJECT,1
	.extern	CCU6_bIsCCU6Start,STT_OBJECT,1
	.extern	CCU6_bMotorSpdRdy,STT_OBJECT,1
	.extern	CCU6_u8McuAscSttStep,STT_OBJECT,1
	.extern	CCU6_u32TrapCreq,STT_OBJECT,4
	.extern	CCU6_u16McuAscSttDelay,STT_OBJECT,2
	.extern	CCU6_u16AlimPowerOnDelay,STT_OBJECT,2
	.extern	CCU6_u16PowerOnDelay,STT_OBJECT,2
	.extern	CCU6_u16T12PeriodVal,STT_OBJECT,2
	.extern	CCU6_u8PwmState,STT_OBJECT,1
	.extern	CCU6_u16PwmModReq,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
