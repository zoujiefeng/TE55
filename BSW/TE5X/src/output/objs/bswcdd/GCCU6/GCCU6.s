	.file	"GCCU6.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.GCCU6_Init,"ax",@progbits
	.align 1
	.global	GCCU6_Init
	.type	GCCU6_Init, @function
GCCU6_Init:
.LFB395:
	.file 1 "bswcdd\\GCCU6\\GCCU6.c"
	.loc 1 170 0
	.loc 1 175 0
	movh	%d15, 61440
	movh.a	%a14, hi:GCCU6_pstrModule
	addi	%d15, %d15, 11008
	st.w	[%a14] lo:GCCU6_pstrModule, %d15
	.loc 1 176 0
	movh.a	%a15, hi:GCCU6_u16PwmModReq
	mov	%d15, 0
	st.h	[%a15] lo:GCCU6_u16PwmModReq, %d15
	.loc 1 177 0
	movh.a	%a15, hi:GCCU6_u8PwmState
	.loc 1 179 0
	mov	%d8, 0
	.loc 1 177 0
	st.b	[%a15] lo:GCCU6_u8PwmState, %d15
	.loc 1 178 0
	movh	%d10, hi:GCCU6_u16T12PeriodVal
	.loc 1 182 0
	movh.a	%a15, hi:GCCU6_u16PowerOnDelay
	.loc 1 178 0
	mov.a	%a2, %d10
	.loc 1 182 0
	st.h	[%a15] lo:GCCU6_u16PowerOnDelay, %d8
	.loc 1 183 0
	movh.a	%a15, hi:GCCU6_u16AlimPowerOnDelay
	.loc 1 178 0
	mov	%d9, 2499
	.loc 1 183 0
	st.h	[%a15] lo:GCCU6_u16AlimPowerOnDelay, %d8
	.loc 1 184 0
	movh.a	%a15, hi:GCCU6_u16McuAscSttDelay
	.loc 1 178 0
	st.h	[%a2] lo:GCCU6_u16T12PeriodVal, %d9
	.loc 1 184 0
	st.h	[%a15] lo:GCCU6_u16McuAscSttDelay, %d8
	.loc 1 185 0
	movh.a	%a15, hi:GCCU6_u32TrapCreq
	st.w	[%a15] lo:GCCU6_u32TrapCreq, %d8
	.loc 1 186 0
	movh.a	%a15, hi:GCCU6_u8McuAscSttStep
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
	.loc 1 187 0
	movh.a	%a15, hi:GCCU6_bMotorSpdRdy
	st.b	[%a15] lo:GCCU6_bMotorSpdRdy, %d15
	.loc 1 188 0
	movh.a	%a15, hi:GCCU6_bIsGCCU6Start
	st.b	[%a15] lo:GCCU6_bIsGCCU6Start, %d15
	.loc 1 189 0
	movh.a	%a15, hi:GCCU6_bTrapTrigger
	st.b	[%a15] lo:GCCU6_bTrapTrigger, %d15
	.loc 1 190 0
	movh.a	%a15, hi:GCCU6_bClrTrapReq
	st.b	[%a15] lo:GCCU6_bClrTrapReq, %d15
	.loc 1 191 0
	movh.a	%a15, hi:GCCU6_bAkdAfterAscReq
	st.b	[%a15] lo:GCCU6_bAkdAfterAscReq, %d15
	.loc 1 192 0
	movh.a	%a15, hi:GCCU6_bIuvwCompReq
	st.b	[%a15] lo:GCCU6_bIuvwCompReq, %d15
	.loc 1 193 0
	movh.a	%a15, hi:GCCU6_bHwFaultIgbtH
	st.b	[%a15] lo:GCCU6_bHwFaultIgbtH, %d15
	.loc 1 194 0
	movh.a	%a15, hi:GCCU6_bHwFaultIgbtL
	st.b	[%a15] lo:GCCU6_bHwFaultIgbtL, %d15
	.loc 1 195 0
	movh.a	%a15, hi:GCCU6_bHwFaultOvcU
	st.b	[%a15] lo:GCCU6_bHwFaultOvcU, %d15
	.loc 1 196 0
	movh.a	%a15, hi:GCCU6_bHwFaultOvcV
	st.b	[%a15] lo:GCCU6_bHwFaultOvcV, %d15
	.loc 1 197 0
	movh.a	%a15, hi:GCCU6_bHwFaultOvcW
	st.b	[%a15] lo:GCCU6_bHwFaultOvcW, %d15
	.loc 1 198 0
	movh.a	%a15, hi:GCCU6_bHwFaultDcOvVolt
	st.b	[%a15] lo:GCCU6_bHwFaultDcOvVolt, %d15
	.loc 1 199 0
	movh.a	%a15, hi:GCCU6_u8McuAscType
	st.b	[%a15] lo:GCCU6_u8McuAscType, %d15
	.loc 1 200 0
	movh.a	%a15, hi:GCCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:GCCU6_bT12ZeroMatchFlg, %d15
	.loc 1 201 0
	movh.a	%a15, hi:GCCU6_bPwmOnGoingFlg
	st.b	[%a15] lo:GCCU6_bPwmOnGoingFlg, %d15
	.loc 1 204 0
	movh	%d13, hi:GCCU6_f32PwmDutyPhysUZ
	.loc 1 202 0
	movh.a	%a15, hi:GCCU6_u8AscRecoverCnt
	st.b	[%a15] lo:GCCU6_u8AscRecoverCnt, %d15
	.loc 1 204 0
	mov.a	%a2, %d13
	.loc 1 203 0
	movh.a	%a15, hi:GCCU6_u8OvcRcvCnt
	.loc 1 204 0
	mov	%e2, 0
	.loc 1 203 0
	st.b	[%a15] lo:GCCU6_u8OvcRcvCnt, %d15
	.loc 1 205 0
	movh	%d12, hi:GCCU6_f32PwmDutyPhysVZ
	.loc 1 204 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysUZ, %d3
	.loc 1 205 0
	mov.a	%a2, %d12
	.loc 1 206 0
	movh	%d11, hi:GCCU6_f32PwmDutyPhysWZ
	.loc 1 205 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysVZ, %d3
	.loc 1 206 0
	mov.a	%a2, %d11
	.loc 1 179 0
	movh.a	%a13, hi:GCCU6_au32PWMOnTime
	.loc 1 206 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysWZ, %d3
	.loc 1 179 0
	lea	%a12, [%a13] lo:GCCU6_au32PWMOnTime
	.loc 1 207 0
	movh.a	%a15, hi:GCCU6_bPwmMidPointU
	st.b	[%a15] lo:GCCU6_bPwmMidPointU, %d15
	.loc 1 179 0
	st.w	[%a13] lo:GCCU6_au32PWMOnTime, %d8
	.loc 1 208 0
	movh.a	%a15, hi:GCCU6_bPwmMidPointV
	.loc 1 180 0
	st.w	[%a12] 4, %d8
	.loc 1 181 0
	st.w	[%a12] 8, %d8
	.loc 1 208 0
	st.b	[%a15] lo:GCCU6_bPwmMidPointV, %d15
	.loc 1 209 0
	movh.a	%a15, hi:GCCU6_bPwmMidPointW
	st.b	[%a15] lo:GCCU6_bPwmMidPointW, %d15
	.loc 1 210 0
	movh.a	%a15, hi:GCCU6_u16PwmMidPointErrCnt
	st.h	[%a15] lo:GCCU6_u16PwmMidPointErrCnt, %d8
	.loc 1 211 0
	movh.a	%a15, hi:GCCU6_bIgbtHighSideShort
	st.b	[%a15] lo:GCCU6_bIgbtHighSideShort, %d15
	.loc 1 212 0
	movh.a	%a15, hi:GCCU6_bIgbtLowSideShort
	st.b	[%a15] lo:GCCU6_bIgbtLowSideShort, %d15
	.loc 1 213 0
	movh.a	%a15, hi:GCCU6_u8PreTestStep
	st.b	[%a15] lo:GCCU6_u8PreTestStep, %d15
	.loc 1 214 0
	movh.a	%a15, hi:GCCU6_u16HighVolAdc
	st.h	[%a15] lo:GCCU6_u16HighVolAdc, %d8
	.loc 1 215 0
	movh.a	%a15, hi:GCCU6_f32HighVolPhys
	st.w	[%a15] lo:GCCU6_f32HighVolPhys, %d2
	.loc 1 216 0
	movh.a	%a15, hi:GCCU6_u16P5VHSAdc
	st.h	[%a15] lo:GCCU6_u16P5VHSAdc, %d8
	.loc 1 217 0
	movh.a	%a15, hi:GCCU6_u8P5VHSFltCnt
	st.b	[%a15] lo:GCCU6_u8P5VHSFltCnt, %d15
	.loc 1 218 0
	movh.a	%a15, hi:GCCU6_u8P5VLSFltCnt
	st.b	[%a15] lo:GCCU6_u8P5VLSFltCnt, %d15
	.loc 1 219 0
	movh.a	%a15, hi:GCCU6_bP5VHSFltFlg
	st.b	[%a15] lo:GCCU6_bP5VHSFltFlg, %d15
	.loc 1 220 0
	movh.a	%a15, hi:GCCU6_bP5VLSFltFlg
	st.b	[%a15] lo:GCCU6_bP5VLSFltFlg, %d15
	.loc 1 221 0
	mov	%d3, 1
	movh.a	%a15, hi:GCCU6_u8P5VPowerMngStt
	st.b	[%a15] lo:GCCU6_u8P5VPowerMngStt, %d3
	.loc 1 222 0
	movh.a	%a15, hi:GCCU6_bP5VDiagReinitCmd
	st.b	[%a15] lo:GCCU6_bP5VDiagReinitCmd, %d15
	.loc 1 223 0
	movh.a	%a15, hi:GCCU6_u8P5VSelfTstTimCnt
	st.b	[%a15] lo:GCCU6_u8P5VSelfTstTimCnt, %d15
	.loc 1 224 0
	movh.a	%a15, hi:GCCU6_u32DrvClkHsPerdRaw
	st.w	[%a15] lo:GCCU6_u32DrvClkHsPerdRaw, %d8
	.loc 1 225 0
	movh.a	%a15, hi:GCCU6_u32DrvClkHsDutyRaw
	st.w	[%a15] lo:GCCU6_u32DrvClkHsDutyRaw, %d8
	.loc 1 226 0
	movh.a	%a15, hi:GCCU6_f32DrvClkHsDuty
	st.w	[%a15] lo:GCCU6_f32DrvClkHsDuty, %d2
	.loc 1 227 0
	movh.a	%a15, hi:GCCU6_u32DrvClkLsPerdRaw
	st.w	[%a15] lo:GCCU6_u32DrvClkLsPerdRaw, %d8
	.loc 1 228 0
	movh.a	%a15, hi:GCCU6_u32DrvClkLsDutyRaw
	st.w	[%a15] lo:GCCU6_u32DrvClkLsDutyRaw, %d8
	.loc 1 229 0
	movh.a	%a15, hi:GCCU6_f32DrvClkLsDuty
	st.w	[%a15] lo:GCCU6_f32DrvClkLsDuty, %d2
	.loc 1 230 0
	movh.a	%a15, hi:GCCU6_u8StartMidPotDetCnt
	st.b	[%a15] lo:GCCU6_u8StartMidPotDetCnt, %d15
.LVL0:
	.loc 1 233 0
	movh.a	%a15, hi:GCCU6_kudtIfxCcu6TimerWithTriggerCfg
	.loc 1 170 0
	sub.a	%SP, 48
.LCFI0:
	.loc 1 233 0
	lea	%a15, [%a15] lo:GCCU6_kudtIfxCcu6TimerWithTriggerCfg
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
	movh.a	%a2, hi:GCCU6_bDualSmpEnaC
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
	ld.bu	%d15, [%a2] lo:GCCU6_bDualSmpEnaC
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
	call	GCCU6_vidDisableTrap
.LVL15:
	.loc 1 257 0
	mov.aa	%a4, %a15
	mov	%d4, 3
	mov	%d5, 3
	call	IfxCcu6_connectTrigger
.LVL16:
	.loc 1 280 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
.LVL17:
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	call	IfxGCcu6_PwmHl_init
.LVL18:
	.loc 1 282 0
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL19:
.LBB116:
.LBB117:
	.loc 1 130 0
	ld.hu	%d15, [%a15] 36
.LBE117:
.LBE116:
	.loc 1 282 0
	mov.a	%a15, %d10
.LVL20:
	st.h	[%a15] lo:GCCU6_u16T12PeriodVal, %d15
.LVL21:
.LBB118:
.LBB119:
	.loc 1 508 0
	ld.a	%a15, [%a14] lo:GCCU6_pstrModule
	ld.hu	%d15, [%a15] 36
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL22:
	.loc 1 509 0
	jz	%d15, .L1
	.loc 1 551 0
	mov.a	%a2, %d13
	mov	%e2, 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysUZ, %d3
	.loc 1 552 0
	mov.a	%a2, %d12
	.loc 1 559 0
	st.w	[%a13] lo:GCCU6_au32PWMOnTime, %d15
	.loc 1 552 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysVZ, %d3
	.loc 1 553 0
	mov.a	%a2, %d11
	.loc 1 560 0
	st.w	[%a12] 4, %d15
	.loc 1 553 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysWZ, %d3
.LVL23:
	.loc 1 563 0
	st.h	[%a15] 64, %d15
.LVL24:
	.loc 1 564 0
	st.h	[%a15] 68, %d15
	.loc 1 561 0
	st.w	[%a12] 8, %d15
	.loc 1 565 0
	st.h	[%a15] 72, %d15
.LVL25:
.L1:
	ret
.LBE119:
.LBE118:
.LFE395:
	.size	GCCU6_Init, .-GCCU6_Init
.section .text.GCCU6_vidMotorStateMng,"ax",@progbits
	.align 1
	.global	GCCU6_vidMotorStateMng
	.type	GCCU6_vidMotorStateMng, @function
GCCU6_vidMotorStateMng:
.LFB396:
	.loc 1 297 0
.LVL26:
	.loc 1 300 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV
.LVL27:
	movh.a	%a15, hi:GCCU6_u16HighVolAdc
	st.h	[%a15] lo:GCCU6_u16HighVolAdc, %d2
	.loc 1 301 0
	ld.hu	%d15, [%a15] lo:GCCU6_u16HighVolAdc
	movh	%d2, 15948
	utof	%d15, %d15
	addi	%d2, %d2, -14680
	mul.f	%d15, %d15, %d2
	movh.a	%a15, hi:GCCU6_f32HighVolPhys
	st.w	[%a15] lo:GCCU6_f32HighVolPhys, %d15
	.loc 1 304 0
	movh.a	%a15, hi:GCCU6_u8McuAscSttStep
	ld.bu	%d15, [%a15] lo:GCCU6_u8McuAscSttStep
	jge.u	%d15, 6, .L12
	movh.a	%a2, hi:.L14
	lea	%a2, [%a2] lo:.L14
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L14:
	.code32
	j	.L13
	.code32
	j	.L15
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L18
	.code32
	j	.L19
.L55:
.LVL28:
.LBB144:
.LBB145:
	.loc 1 1277 0
	mov	%d4, 1
	call	DSM_u8GetUnitFaultLevel
.LVL29:
	mov	%d11, %d2
.LVL30:
	.loc 1 1278 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
.LVL31:
	mov	%d8, %d2
.LVL32:
	.loc 1 1279 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
.LVL33:
	mov	%d15, %d2
.LVL34:
	.loc 1 1281 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
.LVL35:
	mov	%d10, %d2
.LVL36:
	.loc 1 1282 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
.LVL37:
	mov	%d9, %d2
.LVL38:
	.loc 1 1283 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
.LVL39:
	.loc 1 1307 0
	and	%d8, %d8, 255
.LVL40:
	.loc 1 1308 0
	and	%d3, %d15, 255
	.loc 1 1307 0
	eq	%d15, %d8, 0
.LVL41:
	.loc 1 1298 0
	movh.a	%a2, hi:GCCU6_u8PwmState
	.loc 1 1307 0
	or.eq	%d15, %d3, 0
	.loc 1 1298 0
	ld.bu	%d4, [%a2] lo:GCCU6_u8PwmState
.LVL42:
	.loc 1 1307 0
	jnz	%d15, .L12
	.loc 1 1309 0
	and	%d10, %d10, 255
.LVL43:
	.loc 1 1310 0
	and	%d9, %d9, 255
.LVL44:
	eq	%d15, %d10, 0
	.loc 1 1311 0
	and	%d2, %d2, 255
.LVL45:
	.loc 1 1310 0
	or.eq	%d15, %d9, 0
	.loc 1 1311 0
	or.eq	%d15, %d2, 0
	jnz	%d15, .L12
	.loc 1 1320 0
	lt.u	%d15, %d11, 5
	and.eq	%d15, %d4, 0
	jz	%d15, .L12
	.loc 1 1323 0
	movh.a	%a2, hi:GCCU6_bClrTrapReq
	ld.bu	%d15, [%a2] lo:GCCU6_bClrTrapReq
	jne	%d15, 1, .L12
.LVL46:
.LBE145:
.LBE144:
	.loc 1 374 0
	ld.bu	%d15, [%a12] lo:GCCU6_u8AscRecoverCnt
	add	%d15, 1
	and	%d15, 255
	st.b	[%a12] lo:GCCU6_u8AscRecoverCnt, %d15
	.loc 1 376 0
	call	FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HLogged
.LVL47:
	jz	%d2, .L54
.L29:
	.loc 1 382 0
	ld.bu	%d15, [%a13] lo:GCCU6_u8OvcRcvCnt
	add	%d15, 1
	and	%d15, 255
	st.b	[%a13] lo:GCCU6_u8OvcRcvCnt, %d15
.L28:
	.loc 1 386 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_bHwFaultDcOvVolt
	st.b	[%a2] lo:GCCU6_bHwFaultDcOvVolt, %d15
	.loc 1 387 0
	movh.a	%a2, hi:GCCU6_bHwFaultIgbtH
	st.b	[%a2] lo:GCCU6_bHwFaultIgbtH, %d15
	.loc 1 388 0
	movh.a	%a2, hi:GCCU6_bHwFaultIgbtL
	st.b	[%a2] lo:GCCU6_bHwFaultIgbtL, %d15
	.loc 1 389 0
	movh.a	%a2, hi:GCCU6_bHwFaultOvcU
	st.b	[%a2] lo:GCCU6_bHwFaultOvcU, %d15
	.loc 1 390 0
	movh.a	%a2, hi:GCCU6_bHwFaultOvcV
	st.b	[%a2] lo:GCCU6_bHwFaultOvcV, %d15
	.loc 1 391 0
	movh.a	%a2, hi:GCCU6_bHwFaultOvcW
	st.b	[%a2] lo:GCCU6_bHwFaultOvcW, %d15
	.loc 1 394 0
	movh.a	%a2, hi:GMAIN_bSoftOvCurrPhsUFlg
	st.b	[%a2] lo:GMAIN_bSoftOvCurrPhsUFlg, %d15
	.loc 1 395 0
	movh.a	%a2, hi:GMAIN_bSoftOvCurrPhsVFlg
	st.b	[%a2] lo:GMAIN_bSoftOvCurrPhsVFlg, %d15
	.loc 1 396 0
	movh.a	%a2, hi:GMAIN_bSoftOvCurrPhsWFlg
	st.b	[%a2] lo:GMAIN_bSoftOvCurrPhsWFlg, %d15
	.loc 1 397 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_u16PwmMidPointErrCnt
	st.h	[%a2] lo:GCCU6_u16PwmMidPointErrCnt, %d15
	.loc 1 398 0
	movh.a	%a2, hi:GCCU6_u8StartMidPotDetCnt
	st.b	[%a2] lo:GCCU6_u8StartMidPotDetCnt, %d15
	.loc 1 399 0
	movh.a	%a2, hi:GMAIN_u8IgbtLowFltCnt
	st.b	[%a2] lo:GMAIN_u8IgbtLowFltCnt, %d15
	.loc 1 403 0
	mov	%d4, 1
	.loc 1 400 0
	movh.a	%a2, hi:GMAIN_u8IgbtHighFltCnt
	st.b	[%a2] lo:GMAIN_u8IgbtHighFltCnt, %d15
	.loc 1 403 0
	call	FaultClear
.LVL48:
.LBB146:
.LBB147:
	.loc 1 993 0
	movh.a	%a2, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a2, [%a2] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a2, [%a2] 20
	ld.a	%a2, [%a2] 16
.LVL49:
.LBB148:
.LBB149:
	.loc 1 140 0
	ld.w	%d15, [%a2] 168
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a2] 168, %d15
.LVL50:
.LBE149:
.LBE148:
.LBB150:
.LBB151:
	.loc 2 1610 0
	mov	%d15, 64
.LVL51:
	.loc 2 1611 0
	st.w	[%a2] 120, %d15
.LBE151:
.LBE150:
.LBE147:
.LBE146:
	.loc 1 406 0
	mov	%d15, 5
.LVL52:
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
.LVL53:
.L12:
	.loc 1 435 0
	movh.a	%a15, hi:GCCU6_u16PwmModReq
	ld.hu	%d15, [%a15] lo:GCCU6_u16PwmModReq
	jge.u	%d15, 8, .L11
	movh.a	%a15, hi:.L32
	lea	%a15, [%a15] lo:.L32
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L32:
	.code32
	j	.L31
	.code32
	j	.L33
	.code32
	j	.L11
	.code32
	j	.L11
	.code32
	j	.L11
	.code32
	j	.L34
	.code32
	j	.L34
	.code32
	j	.L34
.L11:
	ret
.L34:
.LVL54:
.LBB152:
.LBB153:
	.loc 1 1034 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL55:
	.loc 1 1036 0
	ld.w	%d2, [%a15] 140
	.loc 1 1037 0
	and	%d15, %d2, 63
	jz	%d15, .L38
	.loc 1 1039 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_u8StartMidPotDetCnt
	st.b	[%a2] lo:GCCU6_u8StartMidPotDetCnt, %d15
	.loc 1 1041 0
	movh.a	%a2, hi:GCCU6_bPwmOnGoingFlg
	st.b	[%a2] lo:GCCU6_bPwmOnGoingFlg, %d15
	.loc 1 1044 0
	andn	%d2, %d2, ~(-192)
.LVL56:
	.loc 1 1045 0
	st.w	[%a15] 140, %d2
.L38:
.LBE153:
.LBE152:
	.loc 1 475 0
	mov	%d15, 2
	movh.a	%a15, hi:GCCU6_u8PwmState
.LVL57:
	st.b	[%a15] lo:GCCU6_u8PwmState, %d15
	.loc 1 477 0
	ret
.LVL58:
.L33:
.LBB154:
.LBB155:
	.loc 1 1064 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL59:
	.loc 1 1066 0
	ld.w	%d15, [%a15] 140
.LVL60:
	.loc 1 1067 0
	and	%d2, %d15, 63
	jnz	%d2, .L39
	.loc 1 1069 0
	mov	%d3, 63
	insert	%d15, %d15, %d3, 0, 6
	.loc 1 1070 0
	andn	%d15, %d15, ~(-129)
.LVL61:
	.loc 1 1071 0
	st.w	[%a15] 140, %d15
	.loc 1 1074 0
	movh.a	%a15, hi:GCCU6_u8StartMidPotDetCnt
.LVL62:
	st.b	[%a15] lo:GCCU6_u8StartMidPotDetCnt, %d2
	.loc 1 1076 0
	mov	%d15, 1
.LVL63:
	movh.a	%a15, hi:GCCU6_bPwmOnGoingFlg
	st.b	[%a15] lo:GCCU6_bPwmOnGoingFlg, %d15
.LVL64:
.L39:
.LBE155:
.LBE154:
	.loc 1 482 0
	mov	%d15, 1
.LVL65:
	movh.a	%a15, hi:GCCU6_u8PwmState
	st.b	[%a15] lo:GCCU6_u8PwmState, %d15
	.loc 1 484 0
	ret
.LVL66:
.L31:
	.loc 1 440 0
	movh.a	%a15, hi:GCCU6_bIsGCCU6Start
	ld.bu	%d15, [%a15] lo:GCCU6_bIsGCCU6Start
	jnz	%d15, .L35
	.loc 1 443 0
	movh.a	%a2, hi:GCCU6_u8PwmState
	st.b	[%a2] lo:GCCU6_u8PwmState, %d15
	.loc 1 446 0
	movh.a	%a2, hi:GCCU6_u16PowerOnDelay
	ld.hu	%d15, [%a2] lo:GCCU6_u16PowerOnDelay
	ge.u	%d2, %d15, 100
	jnz	%d2, .L36
	.loc 1 448 0
	add	%d15, 1
	st.h	[%a2] lo:GCCU6_u16PowerOnDelay, %d15
	ret
.LVL67:
.L19:
	.loc 1 419 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_u16McuAscSttDelay
	st.h	[%a2] lo:GCCU6_u16McuAscSttDelay, %d15
	.loc 1 421 0
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
	.loc 1 423 0
	j	.L12
.L13:
	.loc 1 308 0
	movh.a	%a15, hi:GCCU6_u16PwmMidPointErrCnt
	movh.a	%a2, hi:GCCU6_ku8PwmMidPointFaultC
	ld.hu	%d15, [%a15] lo:GCCU6_u16PwmMidPointErrCnt
	ld.bu	%d2, [%a2] lo:GCCU6_ku8PwmMidPointFaultC
	jlt.u	%d2, %d15, .L12
	.loc 1 315 0
	movh.a	%a2, hi:GCCU6_bPwmOnGoingFlg
	ld.bu	%d15, [%a2] lo:GCCU6_bPwmOnGoingFlg
	jnz	%d15, .L12
	.loc 1 317 0
	st.h	[%a15] lo:GCCU6_u16PwmMidPointErrCnt, %d15
	j	.L12
.L15:
	.loc 1 327 0
	movh.a	%a2, hi:GCCU6_u16McuAscSttDelay
	ld.hu	%d15, [%a2] lo:GCCU6_u16McuAscSttDelay
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L50
	.loc 1 333 0
	movh.a	%a3, hi:GCCU6_bMotorSpdRdy
	ld.bu	%d15, [%a3] lo:GCCU6_bMotorSpdRdy
	jnz	%d15, .L12
	.loc 1 335 0
	st.h	[%a2] lo:GCCU6_u16McuAscSttDelay, %d15
	.loc 1 336 0
	mov	%d15, 2
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
	j	.L12
.L16:
.LVL68:
.LBB156:
.LBB157:
	.loc 1 953 0
	movh.a	%a2, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a2, [%a2] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a2, [%a2] 20
	ld.a	%a2, [%a2] 16
.LVL69:
	.loc 1 970 0
	ld.w	%d15, [%a2] 136
	andn	%d15, %d15, ~(-64)
	st.w	[%a2] 136, %d15
.LVL70:
.LBB158:
.LBB159:
	.loc 1 135 0
	ld.w	%d15, [%a2] 164
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a2] 164, %d15
.LVL71:
.LBE159:
.LBE158:
.LBB160:
.LBB161:
	.loc 2 1610 0
	mov	%d15, 64
.LVL72:
	.loc 2 1611 0
	st.w	[%a2] 120, %d15
.LBE161:
.LBE160:
	.loc 1 974 0
	mov	%d15, 0
.LVL73:
	movh.a	%a2, hi:GCCU6_u8McuAscType
.LVL74:
	st.b	[%a2] lo:GCCU6_u8McuAscType, %d15
.LBE157:
.LBE156:
	.loc 1 345 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_u16McuAscSttDelay
	st.h	[%a2] lo:GCCU6_u16McuAscSttDelay, %d15
	.loc 1 346 0
	mov	%d15, 3
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
	.loc 1 348 0
	j	.L12
.LVL75:
.L18:
	.loc 1 367 0
	movh.a	%a12, hi:GCCU6_u8AscRecoverCnt
	movh.a	%a2, hi:GCCU6_ku8AscRecoverCntMaxC
	ld.bu	%d2, [%a12] lo:GCCU6_u8AscRecoverCnt
	ld.bu	%d15, [%a2] lo:GCCU6_ku8AscRecoverCntMaxC
	jge.u	%d2, %d15, .L24
	.loc 1 368 0 discriminator 1
	movh.a	%a13, hi:GCCU6_u8OvcRcvCnt
	movh.a	%a2, hi:GCCU6_ku8OvcRcvCntMaxC
	ld.bu	%d2, [%a13] lo:GCCU6_u8OvcRcvCnt
	.loc 1 367 0 discriminator 1
	ld.bu	%d15, [%a2] lo:GCCU6_ku8OvcRcvCntMaxC
	jlt.u	%d2, %d15, .L55
.L24:
	.loc 1 411 0
	mov	%d15, 6
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
	j	.L12
.L17:
	.loc 1 353 0
	movh.a	%a2, hi:GCCU6_u16McuAscSttDelay
	ld.hu	%d15, [%a2] lo:GCCU6_u16McuAscSttDelay
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L50
	.loc 1 359 0
	mov	%d15, 0
	st.h	[%a2] lo:GCCU6_u16McuAscSttDelay, %d15
	.loc 1 360 0
	mov	%d15, 4
	st.b	[%a15] lo:GCCU6_u8McuAscSttStep, %d15
	j	.L12
.LVL76:
.L35:
.LBB162:
.LBB163:
	.loc 1 1034 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL77:
	.loc 1 1036 0
	ld.w	%d2, [%a15] 140
	.loc 1 1037 0
	and	%d15, %d2, 63
	jz	%d15, .L37
	.loc 1 1039 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_u8StartMidPotDetCnt
	st.b	[%a2] lo:GCCU6_u8StartMidPotDetCnt, %d15
	.loc 1 1041 0
	movh.a	%a2, hi:GCCU6_bPwmOnGoingFlg
	st.b	[%a2] lo:GCCU6_bPwmOnGoingFlg, %d15
	.loc 1 1044 0
	andn	%d2, %d2, ~(-192)
.LVL78:
	.loc 1 1045 0
	st.w	[%a15] 140, %d2
.L37:
.LBE163:
.LBE162:
	.loc 1 465 0
	mov	%d15, 0
	movh.a	%a15, hi:GCCU6_u8PwmState
.LVL79:
	st.b	[%a15] lo:GCCU6_u8PwmState, %d15
	ret
.LVL80:
.L50:
	.loc 1 355 0
	add	%d15, 1
	st.h	[%a2] lo:GCCU6_u16McuAscSttDelay, %d15
	j	.L12
.LVL81:
.L36:
.LBB164:
.LBB165:
	.loc 1 156 0
	movh.a	%a2, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a2, [%a2] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a2, [%a2] 20
	ld.a	%a2, [%a2] 16
.LVL82:
.LBB166:
.LBB167:
	.loc 2 2147 0
	mov	%d15, 514
.LVL83:
	.loc 2 2148 0
	st.w	[%a2] 120, %d15
.LBE167:
.LBE166:
.LBE165:
.LBE164:
	.loc 1 459 0
	mov	%d15, 1
.LVL84:
	st.b	[%a15] lo:GCCU6_bIsGCCU6Start, %d15
	ret
.LVL85:
.L54:
	.loc 1 377 0 discriminator 1
	call	FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LLogged
.LVL86:
	.loc 1 376 0 discriminator 1
	jnz	%d2, .L29
	.loc 1 378 0
	call	FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUILogged
.LVL87:
	.loc 1 377 0
	jnz	%d2, .L29
	.loc 1 379 0
	call	FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVILogged
.LVL88:
	.loc 1 378 0
	jnz	%d2, .L29
	.loc 1 380 0
	call	FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWILogged
.LVL89:
	.loc 1 379 0
	jnz	%d2, .L29
	j	.L28
.LFE396:
	.size	GCCU6_vidMotorStateMng, .-GCCU6_vidMotorStateMng
.section .text.GCCU6_vidSetPwmHlDuty,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetPwmHlDuty
	.type	GCCU6_vidSetPwmHlDuty, @function
GCCU6_vidSetPwmHlDuty:
.LFB397:
	.loc 1 505 0
.LVL90:
	.loc 1 508 0
	movh.a	%a15, hi:GCCU6_pstrModule
	ld.a	%a15, [%a15] lo:GCCU6_pstrModule
	ld.hu	%d15, [%a15] 36
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL91:
	.loc 1 509 0
	jz	%d15, .L56
	.loc 1 511 0
	mov	%d2, 0
	cmp.f	%d3, %d4, %d2
	jnz.t	%d3, 0, .L61
	.loc 1 515 0
	movh	%d3, 16256
	cmp.f	%d7, %d4, %d3
	jz.t	%d7, 2, .L70
	mov	%d1, 0
	.loc 1 517 0
	movh	%d4, 16256
.LVL92:
.L58:
	.loc 1 524 0
	mov	%d2, 0
	cmp.f	%d3, %d5, %d2
	jnz.t	%d3, 0, .L63
.L73:
	.loc 1 528 0
	movh	%d3, 16256
	cmp.f	%d7, %d5, %d3
	jz.t	%d7, 2, .L71
	mov	%d0, 0
	.loc 1 530 0
	movh	%d5, 16256
.LVL93:
.L59:
	.loc 1 537 0
	mov	%d2, 0
	cmp.f	%d3, %d6, %d2
	jnz.t	%d3, 0, .L65
.L74:
	.loc 1 541 0
	movh	%d3, 16256
	cmp.f	%d7, %d6, %d3
	jz.t	%d7, 2, .L72
	mov	%d7, 0
	.loc 1 543 0
	movh	%d6, 16256
.LVL94:
.L60:
	.loc 1 559 0
	utof	%d15, %d15
.LVL95:
	.loc 1 551 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysUZ
	.loc 1 559 0
	mul.f	%d3, %d15, %d1
	.loc 1 560 0
	mul.f	%d2, %d15, %d0
	.loc 1 551 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysUZ, %d4
	.loc 1 559 0
	ftouz	%d3, %d3
	.loc 1 552 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysVZ
	.loc 1 561 0
	mul.f	%d15, %d15, %d7
	.loc 1 552 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysVZ, %d5
	.loc 1 559 0
	movh.a	%a3, hi:GCCU6_au32PWMOnTime
	.loc 1 553 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysWZ
	.loc 1 560 0
	ftouz	%d2, %d2
	.loc 1 553 0
	st.w	[%a2] lo:GCCU6_f32PwmDutyPhysWZ, %d6
.LVL96:
	.loc 1 561 0
	ftouz	%d15, %d15
	.loc 1 559 0
	lea	%a2, [%a3] lo:GCCU6_au32PWMOnTime
	st.w	[%a3] lo:GCCU6_au32PWMOnTime, %d3
	.loc 1 563 0
	extr.u	%d3, %d3, 0, 16
	.loc 1 560 0
	st.w	[%a2] 4, %d2
	.loc 1 564 0
	extr.u	%d2, %d2, 0, 16
	.loc 1 563 0
	st.h	[%a15] 64, %d3
	.loc 1 561 0
	st.w	[%a2] 8, %d15
	.loc 1 565 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 564 0
	st.h	[%a15] 68, %d2
	.loc 1 565 0
	st.h	[%a15] 72, %d15
.LVL97:
.L56:
	ret
.LVL98:
.L61:
	.loc 1 524 0
	mov	%d2, 0
	cmp.f	%d3, %d5, %d2
	movh	%d1, 16256
	.loc 1 513 0
	mov	%d4, 0
.LVL99:
	.loc 1 524 0
	jz.t	%d3, 0, .L73
.LVL100:
.L63:
	.loc 1 537 0
	mov	%d2, 0
	cmp.f	%d3, %d6, %d2
	movh	%d0, 16256
	.loc 1 526 0
	mov	%d5, 0
.LVL101:
	.loc 1 537 0
	jz.t	%d3, 0, .L74
.LVL102:
.L65:
	movh	%d7, 16256
	.loc 1 539 0
	mov	%d6, 0
.LVL103:
	j	.L60
.LVL104:
.L70:
	sub.f	%d1, %d3, %d4
	j	.L58
.L72:
	sub.f	%d7, %d3, %d6
	j	.L60
.L71:
	sub.f	%d0, %d3, %d5
	j	.L59
.LFE397:
	.size	GCCU6_vidSetPwmHlDuty, .-GCCU6_vidSetPwmHlDuty
.section .text.GCCU6_vidExcitationPwmState,"ax",@progbits
	.align 1
	.global	GCCU6_vidExcitationPwmState
	.type	GCCU6_vidExcitationPwmState, @function
GCCU6_vidExcitationPwmState:
.LFB398:
	.loc 1 580 0
.LVL105:
	.loc 1 582 0
	jz	%d4, .L78
	.loc 1 588 0
	jeq	%d4, 1, .L79
	ret
.L78:
	.loc 1 584 0
	mov	%e4, 2
.LVL106:
	call	Port_SetPinDirection
.LVL107:
	.loc 1 585 0
	mov	%e4, 533
	j	Port_SetPinDirection
.LVL108:
.L79:
	.loc 1 590 0
	mov	%d4, 2
.LVL109:
	mov	%d5, 128
	call	Port_SetPinDirection
.LVL110:
	.loc 1 591 0
	mov	%d4, 533
	mov	%d5, 128
	j	Port_SetPinDirection
.LVL111:
.LFE398:
	.size	GCCU6_vidExcitationPwmState, .-GCCU6_vidExcitationPwmState
.section .text.GCCU6_vidSetPwmMinDutyCycle,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetPwmMinDutyCycle
	.type	GCCU6_vidSetPwmMinDutyCycle, @function
GCCU6_vidSetPwmMinDutyCycle:
.LFB399:
	.loc 1 609 0
.LVL112:
	ret
.LFE399:
	.size	GCCU6_vidSetPwmMinDutyCycle, .-GCCU6_vidSetPwmMinDutyCycle
.section .text.GCCU6_vidSetPwmMaxDutyCycle,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetPwmMaxDutyCycle
	.type	GCCU6_vidSetPwmMaxDutyCycle, @function
GCCU6_vidSetPwmMaxDutyCycle:
.LFB400:
	.loc 1 622 0
.LVL113:
	ret
.LFE400:
	.size	GCCU6_vidSetPwmMaxDutyCycle, .-GCCU6_vidSetPwmMaxDutyCycle
.section .text.GCCU6_vidSetPwmModReq,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetPwmModReq
	.type	GCCU6_vidSetPwmModReq, @function
GCCU6_vidSetPwmModReq:
.LFB401:
	.loc 1 635 0
.LVL114:
	.loc 1 636 0
	movh.a	%a15, hi:GCCU6_u16PwmModReq
	st.h	[%a15] lo:GCCU6_u16PwmModReq, %d4
	ret
.LFE401:
	.size	GCCU6_vidSetPwmModReq, .-GCCU6_vidSetPwmModReq
.section .text.GCCU6_u16GetPwmModReq,"ax",@progbits
	.align 1
	.global	GCCU6_u16GetPwmModReq
	.type	GCCU6_u16GetPwmModReq, @function
GCCU6_u16GetPwmModReq:
.LFB402:
	.loc 1 649 0
	.loc 1 651 0
	movh.a	%a15, hi:GCCU6_u16PwmModReq
	ld.hu	%d2, [%a15] lo:GCCU6_u16PwmModReq
	ret
.LFE402:
	.size	GCCU6_u16GetPwmModReq, .-GCCU6_u16GetPwmModReq
.section .text.GCCU6_u8GetPwmState,"ax",@progbits
	.align 1
	.global	GCCU6_u8GetPwmState
	.type	GCCU6_u8GetPwmState, @function
GCCU6_u8GetPwmState:
.LFB403:
	.loc 1 663 0
	.loc 1 665 0
	movh.a	%a15, hi:GCCU6_u8PwmState
	ld.bu	%d2, [%a15] lo:GCCU6_u8PwmState
	ret
.LFE403:
	.size	GCCU6_u8GetPwmState, .-GCCU6_u8GetPwmState
.section .text.GCCU6_u16GetPwmDutyUI,"ax",@progbits
	.align 1
	.global	GCCU6_u16GetPwmDutyUI
	.type	GCCU6_u16GetPwmDutyUI, @function
GCCU6_u16GetPwmDutyUI:
.LFB404:
	.loc 1 677 0
	.loc 1 679 0
	movh.a	%a15, hi:GCCU6_au32PWMOnTime
	ld.hu	%d2, [%a15] lo:GCCU6_au32PWMOnTime
	ret
.LFE404:
	.size	GCCU6_u16GetPwmDutyUI, .-GCCU6_u16GetPwmDutyUI
.section .text.GCCU6_u16GetPwmDutyVI,"ax",@progbits
	.align 1
	.global	GCCU6_u16GetPwmDutyVI
	.type	GCCU6_u16GetPwmDutyVI, @function
GCCU6_u16GetPwmDutyVI:
.LFB405:
	.loc 1 691 0
	.loc 1 693 0
	movh.a	%a15, hi:GCCU6_au32PWMOnTime
	lea	%a15, [%a15] lo:GCCU6_au32PWMOnTime
	ld.hu	%d2, [%a15] 4
	ret
.LFE405:
	.size	GCCU6_u16GetPwmDutyVI, .-GCCU6_u16GetPwmDutyVI
.section .text.GCCU6_u16GetPwmDutyWI,"ax",@progbits
	.align 1
	.global	GCCU6_u16GetPwmDutyWI
	.type	GCCU6_u16GetPwmDutyWI, @function
GCCU6_u16GetPwmDutyWI:
.LFB406:
	.loc 1 705 0
	.loc 1 707 0
	movh.a	%a15, hi:GCCU6_au32PWMOnTime
	lea	%a15, [%a15] lo:GCCU6_au32PWMOnTime
	ld.hu	%d2, [%a15] 8
	ret
.LFE406:
	.size	GCCU6_u16GetPwmDutyWI, .-GCCU6_u16GetPwmDutyWI
.section .text.GCCU6_u16GetPwmDeadTime,"ax",@progbits
	.align 1
	.global	GCCU6_u16GetPwmDeadTime
	.type	GCCU6_u16GetPwmDeadTime, @function
GCCU6_u16GetPwmDeadTime:
.LFB407:
	.loc 1 719 0
.LVL115:
	.loc 1 726 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	ld.hu	%d2, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ret
.LFE407:
	.size	GCCU6_u16GetPwmDeadTime, .-GCCU6_u16GetPwmDeadTime
.section .text.GCCU6_vidSetPwmHlPeriod,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetPwmHlPeriod
	.type	GCCU6_vidSetPwmHlPeriod, @function
GCCU6_vidSetPwmHlPeriod:
.LFB408:
	.loc 1 738 0
.LVL116:
	.loc 1 739 0
	addi	%d15, %d4, -2080
	extr.u	%d15, %d15, 0, 16
	mov	%d2, 22921
	jge.u	%d15, %d2, .L89
	.loc 1 741 0
	movh.a	%a15, hi:GCCU6_u16T12PeriodVal
	st.h	[%a15] lo:GCCU6_u16T12PeriodVal, %d4
	.loc 1 743 0
	movh.a	%a15, hi:GCCU6_pstrModule
	ld.a	%a15, [%a15] lo:GCCU6_pstrModule
	st.h	[%a15] 36, %d4
.L89:
	ret
.LFE408:
	.size	GCCU6_vidSetPwmHlPeriod, .-GCCU6_vidSetPwmHlPeriod
.section .text.GCCU6_vidSetMotorSpdRdyFlg,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetMotorSpdRdyFlg
	.type	GCCU6_vidSetMotorSpdRdyFlg, @function
GCCU6_vidSetMotorSpdRdyFlg:
.LFB409:
	.loc 1 757 0
.LVL117:
	.loc 1 759 0
	movh.a	%a15, hi:GCCU6_bMotorSpdRdy
	st.b	[%a15] lo:GCCU6_bMotorSpdRdy, %d4
	ret
.LFE409:
	.size	GCCU6_vidSetMotorSpdRdyFlg, .-GCCU6_vidSetMotorSpdRdyFlg
.section .text.GCCU6_vidSetClrTrapReq,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetClrTrapReq
	.type	GCCU6_vidSetClrTrapReq, @function
GCCU6_vidSetClrTrapReq:
.LFB410:
	.loc 1 772 0
.LVL118:
	.loc 1 774 0
	movh.a	%a15, hi:GCCU6_bClrTrapReq
	st.b	[%a15] lo:GCCU6_bClrTrapReq, %d4
	ret
.LFE410:
	.size	GCCU6_vidSetClrTrapReq, .-GCCU6_vidSetClrTrapReq
.section .text.GCCU6_vidWait,"ax",@progbits
	.align 1
	.global	GCCU6_vidWait
	.type	GCCU6_vidWait, @function
GCCU6_vidWait:
.LFB411:
	.loc 1 787 0
.LVL119:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 790 0
	st.w	[%SP] 4, %d4
	.loc 1 791 0
	ld.w	%d15, [%SP] 4
	jz	%d15, .L93
.L96:
	.loc 1 793 0
	ld.w	%d15, [%SP] 4
	add	%d15, -1
	st.w	[%SP] 4, %d15
	.loc 1 791 0
	ld.w	%d15, [%SP] 4
	jnz	%d15, .L96
.L93:
	ret
.LFE411:
	.size	GCCU6_vidWait, .-GCCU6_vidWait
.section .text.GCCU6_vidMcuAscEnter,"ax",@progbits
	.align 1
	.global	GCCU6_vidMcuAscEnter
	.type	GCCU6_vidMcuAscEnter, @function
GCCU6_vidMcuAscEnter:
.LFB412:
	.loc 1 807 0
.LVL120:
	.loc 1 815 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	.loc 1 817 0
	movh.a	%a2, hi:GCCU6_bIsGCCU6Start
	.loc 1 815 0
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	.loc 1 817 0
	ld.bu	%d15, [%a2] lo:GCCU6_bIsGCCU6Start
	.loc 1 815 0
	ld.a	%a15, [%a15] 20
	.loc 1 807 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 815 0
	ld.a	%a15, [%a15] 16
.LVL121:
	.loc 1 817 0
	jz	%d15, .L98
	.loc 1 822 0
	mov	%d15, 0
	movh.a	%a2, hi:GCCU6_bPwmOnGoingFlg
	st.b	[%a2] lo:GCCU6_bPwmOnGoingFlg, %d15
	.loc 1 824 0
	movh.a	%a2, hi:GCCU6_u8McuAscSttStep
	ld.bu	%d15, [%a2] lo:GCCU6_u8McuAscSttStep
	jz	%d15, .L140
.L98:
	ret
.L140:
	.loc 1 826 0
	mov	%d15, 1
	st.b	[%a2] lo:GCCU6_u8McuAscSttStep, %d15
	.loc 1 829 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
.LVL122:
	.loc 1 830 0
	and	%d2, %d2, 255
	jnz	%d2, .L102
	.loc 1 832 0
	movh.a	%a2, hi:GCCU6_bHwFaultIgbtH
	st.b	[%a2] lo:GCCU6_bHwFaultIgbtH, %d15
.L102:
.LVL123:
	.loc 1 836 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
.LVL124:
	.loc 1 837 0
	and	%d2, %d2, 255
	jnz	%d2, .L103
	.loc 1 839 0
	mov	%d15, 1
	movh.a	%a2, hi:GCCU6_bHwFaultIgbtL
	st.b	[%a2] lo:GCCU6_bHwFaultIgbtL, %d15
.L103:
.LVL125:
	.loc 1 843 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
.LVL126:
	.loc 1 844 0
	and	%d2, %d2, 255
	jnz	%d2, .L104
	.loc 1 846 0
	mov	%d15, 1
	movh.a	%a2, hi:GCCU6_bHwFaultOvcU
	st.b	[%a2] lo:GCCU6_bHwFaultOvcU, %d15
.L104:
.LVL127:
	.loc 1 850 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
.LVL128:
	.loc 1 851 0
	and	%d2, %d2, 255
	jnz	%d2, .L105
	.loc 1 853 0
	mov	%d15, 1
	movh.a	%a2, hi:GCCU6_bHwFaultOvcV
	st.b	[%a2] lo:GCCU6_bHwFaultOvcV, %d15
.L105:
.LVL129:
	.loc 1 857 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
.LVL130:
	.loc 1 858 0
	and	%d2, %d2, 255
	jz	%d2, .L141
.L106:
.LVL131:
.LBB168:
.LBB169:
	.loc 1 790 0
	mov	%d15, 138
	st.w	[%SP] 4, %d15
	.loc 1 791 0
	ld.w	%d15, [%SP] 4
	jz	%d15, .L110
.L131:
	.loc 1 793 0
	ld.w	%d15, [%SP] 4
	add	%d15, -1
	st.w	[%SP] 4, %d15
	.loc 1 791 0
	ld.w	%d15, [%SP] 4
	jnz	%d15, .L131
.L110:
.LBE169:
.LBE168:
	.loc 1 866 0
	movh.a	%a2, hi:GCCU6_u8McuAscType
	ld.bu	%d15, [%a2] lo:GCCU6_u8McuAscType
	jnz	%d15, .L142
	.loc 1 868 0
	movh.a	%a3, hi:GCCU6_bHwFaultIgbtH
	ld.bu	%d15, [%a3] lo:GCCU6_bHwFaultIgbtH
	jeq	%d15, 1, .L143
	.loc 1 869 0 discriminator 3
	movh.a	%a3, hi:GCCU6_bP5VHSFltFlg
	ld.bu	%d15, [%a3] lo:GCCU6_bP5VHSFltFlg
	.loc 1 868 0 discriminator 3
	jeq	%d15, 1, .L144
.L114:
	.loc 1 873 0
	movh.a	%a3, hi:GCCU6_bHwFaultIgbtL
	ld.bu	%d15, [%a3] lo:GCCU6_bHwFaultIgbtL
	jeq	%d15, 1, .L116
.L122:
	.loc 1 874 0 discriminator 1
	movh.a	%a3, hi:GCCU6_bIgbtHighSideShort
	ld.bu	%d15, [%a3] lo:GCCU6_bIgbtHighSideShort
	.loc 1 873 0 discriminator 1
	jeq	%d15, 1, .L116
	.loc 1 875 0
	movh.a	%a3, hi:GCCU6_bP5VLSFltFlg
	ld.bu	%d15, [%a3] lo:GCCU6_bP5VLSFltFlg
	.loc 1 874 0
	jeq	%d15, 1, .L116
	.loc 1 881 0
	mov	%d15, 1
	st.b	[%a2] lo:GCCU6_u8McuAscType, %d15
.L119:
.LVL132:
	.loc 1 909 0
	ld.w	%d15, [%a15] 136
	mov	%d2, 42
.LVL133:
	insert	%d15, %d15, %d2, 0, 6
	st.w	[%a15] 136, %d15
	j	.L121
.LVL134:
.L142:
	.loc 1 885 0
	jeq	%d15, 2, .L118
	.loc 1 898 0
	jeq	%d15, 1, .L119
.L115:
.LVL135:
	.loc 1 922 0
	ld.w	%d15, [%a15] 136
	andn	%d15, %d15, ~(-64)
	st.w	[%a15] 136, %d15
.LVL136:
.L121:
.LBB170:
.LBB171:
	.loc 2 2157 0
	mov	%d15, 257
.LVL137:
	.loc 2 2158 0
	st.w	[%a15] 120, %d15
.LVL138:
.LBE171:
.LBE170:
.LBB172:
.LBB173:
	.loc 2 1610 0
	mov	%d15, 64
.LVL139:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LVL140:
.LBE173:
.LBE172:
.LBB174:
.LBB175:
	.loc 2 2147 0
	mov	%d15, 514
.LVL141:
	.loc 2 2148 0
	st.w	[%a15] 120, %d15
	ret
.LVL142:
.L141:
.LBE175:
.LBE174:
	.loc 1 860 0
	mov	%d15, 1
	movh.a	%a2, hi:GCCU6_bHwFaultOvcW
	st.b	[%a2] lo:GCCU6_bHwFaultOvcW, %d15
	j	.L106
.LVL143:
.L116:
	.loc 1 877 0
	mov	%d15, 2
	st.b	[%a2] lo:GCCU6_u8McuAscType, %d15
.L118:
.LVL144:
	.loc 1 896 0
	ld.w	%d15, [%a15] 136
	mov	%d2, 21
.LVL145:
	insert	%d15, %d15, %d2, 0, 6
	st.w	[%a15] 136, %d15
	j	.L121
.LVL146:
.L143:
	.loc 1 868 0 discriminator 1
	movh.a	%a3, hi:GCCU6_bHwFaultIgbtL
	ld.bu	%d15, [%a3] lo:GCCU6_bHwFaultIgbtL
	jeq	%d15, 1, .L112
	.loc 1 869 0
	movh.a	%a3, hi:GCCU6_bP5VHSFltFlg
	ld.bu	%d15, [%a3] lo:GCCU6_bP5VHSFltFlg
	.loc 1 868 0
	jne	%d15, 1, .L122
	.loc 1 869 0
	movh.a	%a3, hi:GCCU6_bP5VLSFltFlg
	ld.bu	%d15, [%a3] lo:GCCU6_bP5VLSFltFlg
	jne	%d15, 1, .L122
.L112:
	.loc 1 871 0
	mov	%d15, 3
	st.b	[%a2] lo:GCCU6_u8McuAscType, %d15
	j	.L115
.L144:
	.loc 1 869 0
	movh.a	%a3, hi:GCCU6_bP5VLSFltFlg
	ld.bu	%d15, [%a3] lo:GCCU6_bP5VLSFltFlg
	jne	%d15, 1, .L114
	j	.L112
.LFE412:
	.size	GCCU6_vidMcuAscEnter, .-GCCU6_vidMcuAscEnter
.section .text.GCCU6_vidMcuAscExit,"ax",@progbits
	.align 1
	.global	GCCU6_vidMcuAscExit
	.type	GCCU6_vidMcuAscExit, @function
GCCU6_vidMcuAscExit:
.LFB413:
	.loc 1 947 0
.LVL147:
	.loc 1 953 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	.loc 1 955 0
	movh.a	%a2, hi:GCCU6_u8McuAscSttStep
	.loc 1 953 0
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	.loc 1 955 0
	ld.bu	%d15, [%a2] lo:GCCU6_u8McuAscSttStep
	.loc 1 953 0
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL148:
	.loc 1 955 0
	jeq	%d15, 2, .L147
	ret
.L147:
.LVL149:
	.loc 1 970 0
	ld.w	%d15, [%a15] 136
	andn	%d15, %d15, ~(-64)
	st.w	[%a15] 136, %d15
.LVL150:
.LBB176:
.LBB177:
	.loc 1 135 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 164, %d15
.LVL151:
.LBE177:
.LBE176:
.LBB178:
.LBB179:
	.loc 2 1610 0
	mov	%d15, 64
.LVL152:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LBE179:
.LBE178:
	.loc 1 974 0
	mov	%d15, 0
.LVL153:
	movh.a	%a15, hi:GCCU6_u8McuAscType
.LVL154:
	st.b	[%a15] lo:GCCU6_u8McuAscType, %d15
	ret
.LFE413:
	.size	GCCU6_vidMcuAscExit, .-GCCU6_vidMcuAscExit
.section .text.GCCU6_vidTryClearTrap,"ax",@progbits
	.align 1
	.global	GCCU6_vidTryClearTrap
	.type	GCCU6_vidTryClearTrap, @function
GCCU6_vidTryClearTrap:
.LFB414:
	.loc 1 988 0
.LVL155:
	.loc 1 993 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL156:
.LBB180:
.LBB181:
	.loc 1 140 0
	ld.w	%d15, [%a15] 168
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 168, %d15
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
	ret
.LBE183:
.LBE182:
.LFE414:
	.size	GCCU6_vidTryClearTrap, .-GCCU6_vidTryClearTrap
.section .text.GCCU6_vidSoftTrapTrigger,"ax",@progbits
	.align 1
	.global	GCCU6_vidSoftTrapTrigger
	.type	GCCU6_vidSoftTrapTrigger, @function
GCCU6_vidSoftTrapTrigger:
.LFB415:
	.loc 1 1009 0
.LVL159:
	.loc 1 1010 0
	jnz	%d4, .L149
	.loc 1 1012 0
	movh.a	%a15, hi:GCCU6_u8McuAscSttStep
	ld.bu	%d15, [%a15] lo:GCCU6_u8McuAscSttStep
	jnz	%d15, .L149
	.loc 1 1014 0
	movh.a	%a15, hi:GCCU6_pstrModule
	ld.a	%a15, [%a15] lo:GCCU6_pstrModule
.LVL160:
.LBB184:
.LBB185:
	.loc 1 135 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 164, %d15
.LVL161:
.L149:
	ret
.LBE185:
.LBE184:
.LFE415:
	.size	GCCU6_vidSoftTrapTrigger, .-GCCU6_vidSoftTrapTrigger
.section .text.GCCU6_vidEnaTrapPinFunc,"ax",@progbits
	.align 1
	.global	GCCU6_vidEnaTrapPinFunc
	.type	GCCU6_vidEnaTrapPinFunc, @function
GCCU6_vidEnaTrapPinFunc:
.LFB418:
	.loc 1 1090 0
	.loc 1 1093 0
	movh.a	%a15, hi:GCCU6_kudtIfxCcu6TimerWithTriggerCfg
	lea	%a15, [%a15] lo:GCCU6_kudtIfxCcu6TimerWithTriggerCfg
	ld.a	%a4, [%a15] 16
.LVL162:
	.loc 1 1103 0
	movh.a	%a15, hi:GCCU6_bHwPinAscEnaC
.LBB186:
.LBB187:
	.loc 2 1639 0
	ld.w	%d15, [%a4] 132
	or	%d15, %d15, 256
	st.w	[%a4] 132, %d15
.LVL163:
.LBE187:
.LBE186:
.LBB188:
.LBB189:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a4] 132, %d15
.LVL164:
.LBE189:
.LBE188:
.LBB190:
.LBB191:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 12, 1
	st.w	[%a4] 132, %d15
.LVL165:
.LBE191:
.LBE190:
.LBB192:
.LBB193:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 9, 1
	st.w	[%a4] 132, %d15
.LVL166:
.LBE193:
.LBE192:
.LBB194:
.LBB195:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 11, 1
	st.w	[%a4] 132, %d15
.LVL167:
.LBE195:
.LBE194:
.LBB196:
.LBB197:
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 15, 13, 1
	st.w	[%a4] 132, %d15
.LVL168:
.LBE197:
.LBE196:
.LBB198:
.LBB199:
	.loc 2 2131 0
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a4] 132, %d15
.LBE199:
.LBE198:
	.loc 1 1103 0
	ld.bu	%d15, [%a15] lo:GCCU6_bHwPinAscEnaC
	jnz	%d15, .L154
.LVL169:
.LBB200:
.LBB201:
	.loc 2 1520 0
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 0, 15, 1
	st.w	[%a4] 132, %d15
.LVL170:
.L153:
.LBE201:
.LBE200:
.LBB202:
.LBB203:
	.loc 1 993 0
	movh.a	%a15, hi:GCCU6_udtIfxCcu6PwmHlCfg
	lea	%a15, [%a15] lo:GCCU6_udtIfxCcu6PwmHlCfg
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
.LVL171:
.LBE203:
.LBE202:
	.loc 1 1115 0
	mov	%d4, 10
	mov	%d5, 2
.LBB209:
.LBB208:
.LBB204:
.LBB205:
	.loc 1 140 0
	ld.w	%d15, [%a15] 168
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15] 168, %d15
.LVL172:
.LBE205:
.LBE204:
.LBB206:
.LBB207:
	.loc 2 1610 0
	mov	%d15, 64
.LVL173:
	.loc 2 1611 0
	st.w	[%a15] 120, %d15
.LVL174:
.LBE207:
.LBE206:
.LBE208:
.LBE209:
.LBB210:
.LBB211:
	.loc 2 1565 0
	ld.w	%d15, [%a4] 176
.LVL175:
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a4] 176, %d15
.LBE211:
.LBE210:
	.loc 1 1115 0
	call	IfxCcu6_routeInterruptNode
.LVL176:
	.loc 1 1116 0
	j	GCCU6_vidEnableTrap
.LVL177:
.L154:
.LBB212:
.LBB213:
	.loc 2 1645 0
	ld.w	%d15, [%a4] 132
	insert	%d15, %d15, 1, 15, 1
	st.w	[%a4] 132, %d15
	j	.L153
.LBE213:
.LBE212:
.LFE418:
	.size	GCCU6_vidEnaTrapPinFunc, .-GCCU6_vidEnaTrapPinFunc
.section .text.GCCU6_vidSwitchPwmUpdEvent,"ax",@progbits
	.align 1
	.global	GCCU6_vidSwitchPwmUpdEvent
	.type	GCCU6_vidSwitchPwmUpdEvent, @function
GCCU6_vidSwitchPwmUpdEvent:
.LFB419:
	.loc 1 1131 0
.LVL178:
	.loc 1 1135 0
	movh.a	%a15, hi:GCCU6_bDualSmpEnaC
	ld.bu	%d15, [%a15] lo:GCCU6_bDualSmpEnaC
	jz	%d15, .L156
	.loc 1 1137 0
	movh.a	%a15, hi:GCCU6_pstrModule
	ld.a	%a15, [%a15] lo:GCCU6_pstrModule
	.loc 1 1138 0
	movh.a	%a2, hi:GCCU6_u16T12CntVal
	.loc 1 1137 0
	ld.hu	%d15, [%a15] 32
.LVL179:
	.loc 1 1138 0
	st.h	[%a2] lo:GCCU6_u16T12CntVal, %d15
	.loc 1 1141 0
	ge.u	%d15, %d15, 500
.LVL180:
	jnz	%d15, .L157
	.loc 1 1143 0
	ld.w	%d15, [%a15] 148
	mov	%d2, 1
	insert	%d15, %d15, 5, 0, 3
	st.w	[%a15] 148, %d15
	.loc 1 1144 0
	ld.w	%d15, [%a15] 148
	andn	%d15, %d15, ~(-49)
	st.w	[%a15] 148, %d15
	.loc 1 1145 0
	mov	%d15, 1
	movh.a	%a15, hi:GCCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:GCCU6_bT12ZeroMatchFlg, %d15
	.loc 1 1161 0
	movh.a	%a15, hi:GCCU6_bPwmOnGoingFlg
	ld.bu	%d15, [%a15] lo:GCCU6_bPwmOnGoingFlg
	jz	%d15, .L203
.L159:
	.loc 1 1163 0
	movh.a	%a15, hi:GCCU6_u8StartMidPotDetCnt
	movh.a	%a2, hi:GCCU6_ku8PwmMidPotStartDelayC
	ld.bu	%d3, [%a15] lo:GCCU6_u8StartMidPotDetCnt
	ld.bu	%d15, [%a2] lo:GCCU6_ku8PwmMidPotStartDelayC
	jge.u	%d3, %d15, .L161
	.loc 1 1165 0
	ld.bu	%d3, [%a15] lo:GCCU6_u8StartMidPotDetCnt
	add	%d3, 1
	and	%d3, %d3, 255
	st.b	[%a15] lo:GCCU6_u8StartMidPotDetCnt, %d3
.L161:
	.loc 1 1174 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysUZ
	ld.w	%d3, [%a2] lo:GCCU6_f32PwmDutyPhysUZ
	.loc 1 1172 0
	jz	%d2, .L162
	.loc 1 1174 0
	movh.a	%a2, hi:GCCU6_kf32MidPointDutyLC
	ld.w	%d2, [%a2] lo:GCCU6_kf32MidPointDutyLC
	.loc 1 1160 0
	mov	%d4, 0
	.loc 1 1174 0
	cmp.f	%d3, %d3, %d2
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L163
	.loc 1 1176 0
	movh.a	%a2, hi:GCCU6_bPwmMidPointU
	ld.bu	%d3, [%a2] lo:GCCU6_bPwmMidPointU
	.loc 1 1160 0
	mov	%d4, 0
	.loc 1 1176 0
	jz	%d3, .L163
.LVL181:
	.loc 1 1179 0
	mov	%d3, 1
	movh.a	%a2, hi:GCCU6_bIgbtHighSideShort
	st.b	[%a2] lo:GCCU6_bIgbtHighSideShort, %d3
	.loc 1 1178 0
	mov	%d4, 1
.LVL182:
.L163:
	.loc 1 1183 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysVZ
	ld.w	%d3, [%a2] lo:GCCU6_f32PwmDutyPhysVZ
	cmp.f	%d3, %d2, %d3
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L165
	.loc 1 1185 0
	movh.a	%a2, hi:GCCU6_bPwmMidPointV
	ld.bu	%d3, [%a2] lo:GCCU6_bPwmMidPointV
	jz	%d3, .L165
.LVL183:
	.loc 1 1188 0
	mov	%d3, 1
	movh.a	%a2, hi:GCCU6_bIgbtHighSideShort
	st.b	[%a2] lo:GCCU6_bIgbtHighSideShort, %d3
	.loc 1 1187 0
	mov	%d4, 1
.LVL184:
.L165:
	.loc 1 1192 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysWZ
	ld.w	%d3, [%a2] lo:GCCU6_f32PwmDutyPhysWZ
	cmp.f	%d2, %d2, %d3
	or.t	%d2, %d2,2, %d2,1
	jz	%d2, .L160
	.loc 1 1194 0
	movh.a	%a2, hi:GCCU6_bPwmMidPointW
	ld.bu	%d2, [%a2] lo:GCCU6_bPwmMidPointW
	jz	%d2, .L160
.LVL185:
	.loc 1 1197 0
	mov	%d2, 1
	movh.a	%a2, hi:GCCU6_bIgbtHighSideShort
	st.b	[%a2] lo:GCCU6_bIgbtHighSideShort, %d2
	.loc 1 1196 0
	mov	%d4, 1
	j	.L160
.LVL186:
.L156:
	.loc 1 1156 0
	mov	%d15, 1
	movh.a	%a15, hi:GCCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:GCCU6_bT12ZeroMatchFlg, %d15
	mov	%d2, 1
.L158:
	.loc 1 1161 0
	movh.a	%a15, hi:GCCU6_bPwmOnGoingFlg
	ld.bu	%d15, [%a15] lo:GCCU6_bPwmOnGoingFlg
	jnz	%d15, .L159
.L203:
	movh.a	%a15, hi:GCCU6_ku8PwmMidPotStartDelayC
	ld.bu	%d15, [%a15] lo:GCCU6_ku8PwmMidPotStartDelayC
	.loc 1 1160 0
	mov	%d4, 0
	movh.a	%a15, hi:GCCU6_u8StartMidPotDetCnt
.LVL187:
.L160:
	.loc 1 1232 0
	ld.bu	%d2, [%a15] lo:GCCU6_u8StartMidPotDetCnt
	jlt.u	%d2, %d15, .L155
	.loc 1 1234 0
	movh.a	%a15, hi:GCCU6_f32HighVolPhys
	ld.w	%d15, [%a15] lo:GCCU6_f32HighVolPhys
	movh	%d2, 17274
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L155
	.loc 1 1238 0
	movh.a	%a15, hi:GCCU6_u16PwmMidPointErrCnt
	ld.hu	%d15, [%a15] lo:GCCU6_u16PwmMidPointErrCnt
	.loc 1 1236 0
	jz	%d4, .L175
	.loc 1 1238 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L155
	.loc 1 1240 0
	ld.hu	%d15, [%a15] lo:GCCU6_u16PwmMidPointErrCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:GCCU6_u16PwmMidPointErrCnt, %d15
	ret
.L175:
	.loc 1 1245 0
	jz	%d15, .L155
	.loc 1 1247 0
	ld.hu	%d15, [%a15] lo:GCCU6_u16PwmMidPointErrCnt
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:GCCU6_u16PwmMidPointErrCnt, %d15
.L155:
	ret
.LVL188:
.L157:
	.loc 1 1149 0
	ld.w	%d15, [%a15] 148
	.loc 1 1151 0
	mov	%d2, 0
	.loc 1 1149 0
	insert	%d15, %d15, 3, 0, 3
	st.w	[%a15] 148, %d15
	.loc 1 1150 0
	ld.w	%d15, [%a15] 148
	insert	%d15, %d15, 2, 4, 2
	st.w	[%a15] 148, %d15
	.loc 1 1151 0
	mov	%d15, 0
	movh.a	%a15, hi:GCCU6_bT12ZeroMatchFlg
	st.b	[%a15] lo:GCCU6_bT12ZeroMatchFlg, %d15
	j	.L158
.L162:
	.loc 1 1203 0
	movh.a	%a2, hi:GCCU6_kf32MidPointDutyHC
	ld.w	%d2, [%a2] lo:GCCU6_kf32MidPointDutyHC
	.loc 1 1160 0
	mov	%d4, 0
	.loc 1 1203 0
	cmp.f	%d3, %d3, %d2
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L168
	.loc 1 1205 0
	movh.a	%a2, hi:GCCU6_bPwmMidPointU
	ld.bu	%d3, [%a2] lo:GCCU6_bPwmMidPointU
	.loc 1 1160 0
	mov	%d4, 0
	.loc 1 1205 0
	jnz	%d3, .L168
.LVL189:
	.loc 1 1208 0
	mov	%d3, 1
	movh.a	%a2, hi:GCCU6_bIgbtLowSideShort
	st.b	[%a2] lo:GCCU6_bIgbtLowSideShort, %d3
	.loc 1 1207 0
	mov	%d4, 1
.LVL190:
.L168:
	.loc 1 1212 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysVZ
	ld.w	%d3, [%a2] lo:GCCU6_f32PwmDutyPhysVZ
	cmp.f	%d3, %d2, %d3
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L170
	.loc 1 1214 0
	movh.a	%a2, hi:GCCU6_bPwmMidPointV
	ld.bu	%d3, [%a2] lo:GCCU6_bPwmMidPointV
	jnz	%d3, .L170
.LVL191:
	.loc 1 1217 0
	mov	%d3, 1
	movh.a	%a2, hi:GCCU6_bIgbtLowSideShort
	st.b	[%a2] lo:GCCU6_bIgbtLowSideShort, %d3
	.loc 1 1216 0
	mov	%d4, 1
.LVL192:
.L170:
	.loc 1 1221 0
	movh.a	%a2, hi:GCCU6_f32PwmDutyPhysWZ
	ld.w	%d3, [%a2] lo:GCCU6_f32PwmDutyPhysWZ
	cmp.f	%d2, %d2, %d3
	or.t	%d2, %d2,0, %d2,1
	jz	%d2, .L160
	.loc 1 1223 0
	movh.a	%a2, hi:GCCU6_bPwmMidPointW
	ld.bu	%d2, [%a2] lo:GCCU6_bPwmMidPointW
	jnz	%d2, .L160
.LVL193:
	.loc 1 1226 0
	mov	%d2, 1
	movh.a	%a2, hi:GCCU6_bIgbtLowSideShort
	st.b	[%a2] lo:GCCU6_bIgbtLowSideShort, %d2
	.loc 1 1225 0
	mov	%d4, 1
	j	.L160
.LFE419:
	.size	GCCU6_vidSwitchPwmUpdEvent, .-GCCU6_vidSwitchPwmUpdEvent
.section .text.GCCU6_bGetAscRecoverCondition,"ax",@progbits
	.align 1
	.global	GCCU6_bGetAscRecoverCondition
	.type	GCCU6_bGetAscRecoverCondition, @function
GCCU6_bGetAscRecoverCondition:
.LFB420:
	.loc 1 1264 0
.LVL194:
	.loc 1 1277 0
	mov	%d4, 1
	call	DSM_u8GetUnitFaultLevel
.LVL195:
	mov	%d8, %d2
.LVL196:
	.loc 1 1278 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
.LVL197:
	and	%d10, %d2, 255
.LVL198:
	.loc 1 1279 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
.LVL199:
	and	%d9, %d2, 255
.LVL200:
	.loc 1 1281 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
.LVL201:
	and	%d12, %d2, 255
.LVL202:
	.loc 1 1282 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
.LVL203:
	and	%d11, %d2, 255
.LVL204:
	.loc 1 1283 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
.LVL205:
	.loc 1 1298 0
	movh.a	%a15, hi:GCCU6_u8PwmState
	ld.bu	%d3, [%a15] lo:GCCU6_u8PwmState
	.loc 1 1283 0
	and	%d4, %d2, 255
.LVL206:
	.loc 1 1329 0
	mov	%d15, 0
	.loc 1 1298 0
	jnz	%d3, .L211
.LVL207:
	.loc 1 1307 0
	eq	%d3, %d10, 0
	or.eq	%d3, %d9, 0
	jnz	%d3, .L211
	.loc 1 1310 0
	eq	%d2, %d12, 0
.LVL208:
	or.eq	%d2, %d11, 0
	.loc 1 1311 0
	or.eq	%d2, %d4, 0
	jz	%d2, .L212
.LVL209:
.L211:
	.loc 1 1333 0
	mov	%d2, %d15
	ret
.LVL210:
.L212:
	.loc 1 1323 0
	movh.a	%a15, hi:GCCU6_bClrTrapReq
	ld.bu	%d15, [%a15] lo:GCCU6_bClrTrapReq
	.loc 1 1329 0
	lt.u	%d8, %d8, 5
.LVL211:
	.loc 1 1325 0
	eq	%d15, %d15, 1
	.loc 1 1329 0
	sel	%d15, %d8, %d15, 0
	.loc 1 1333 0
	mov	%d2, %d15
	ret
.LFE420:
	.size	GCCU6_bGetAscRecoverCondition, .-GCCU6_bGetAscRecoverCondition
.section .text.GCCU6_bGetAscStatus,"ax",@progbits
	.align 1
	.global	GCCU6_bGetAscStatus
	.type	GCCU6_bGetAscStatus, @function
GCCU6_bGetAscStatus:
.LFB421:
	.loc 1 1345 0
.LVL212:
	.loc 1 1348 0
	movh.a	%a15, hi:GCCU6_u8McuAscSttStep
	ld.bu	%d2, [%a15] lo:GCCU6_u8McuAscSttStep
	.loc 1 1358 0
	eq	%d2, %d2, 1
	ret
.LFE421:
	.size	GCCU6_bGetAscStatus, .-GCCU6_bGetAscStatus
.section .text.GCCU6_vidSetIuvwZeroCompReq,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetIuvwZeroCompReq
	.type	GCCU6_vidSetIuvwZeroCompReq, @function
GCCU6_vidSetIuvwZeroCompReq:
.LFB422:
	.loc 1 1370 0
.LVL213:
	.loc 1 1372 0
	movh.a	%a15, hi:GCCU6_bIuvwCompReq
	st.b	[%a15] lo:GCCU6_bIuvwCompReq, %d4
	ret
.LFE422:
	.size	GCCU6_vidSetIuvwZeroCompReq, .-GCCU6_vidSetIuvwZeroCompReq
.section .text.GCCU6_bGetHwFaultIgbtH,"ax",@progbits
	.align 1
	.global	GCCU6_bGetHwFaultIgbtH
	.type	GCCU6_bGetHwFaultIgbtH, @function
GCCU6_bGetHwFaultIgbtH:
.LFB423:
	.loc 1 1385 0
.LVL214:
	.loc 1 1390 0
	movh.a	%a15, hi:GMAIN_u8IgbtHighFltCnt
	ld.bu	%d8, [%a15] lo:GMAIN_u8IgbtHighFltCnt
.LVL215:
	.loc 1 1399 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
.LVL216:
	.loc 1 1401 0
	and	%d15, %d2, 255
	.loc 1 1405 0
	mov	%d2, 1
.LVL217:
	.loc 1 1401 0
	jz	%d15, .L216
	.loc 1 1402 0
	movh.a	%a15, hi:GCCU6_bHwFaultIgbtH
	ld.bu	%d3, [%a15] lo:GCCU6_bHwFaultIgbtH
	.loc 1 1405 0
	movh.a	%a15, hi:GMAIN_u8IgbtFltConfirmCntC
	ld.bu	%d15, [%a15] lo:GMAIN_u8IgbtFltConfirmCntC
.LVL218:
	eq	%d2, %d3, 1
	or.ge.u	%d2, %d8, %d15
.LVL219:
.L216:
	.loc 1 1413 0
	ret
.LFE423:
	.size	GCCU6_bGetHwFaultIgbtH, .-GCCU6_bGetHwFaultIgbtH
.section .text.GCCU6_bGetHwFaultIgbtL,"ax",@progbits
	.align 1
	.global	GCCU6_bGetHwFaultIgbtL
	.type	GCCU6_bGetHwFaultIgbtL, @function
GCCU6_bGetHwFaultIgbtL:
.LFB424:
	.loc 1 1425 0
.LVL220:
	.loc 1 1430 0
	movh.a	%a15, hi:GMAIN_u8IgbtLowFltCnt
	ld.bu	%d8, [%a15] lo:GMAIN_u8IgbtLowFltCnt
.LVL221:
	.loc 1 1439 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
.LVL222:
	.loc 1 1441 0
	and	%d15, %d2, 255
	.loc 1 1445 0
	mov	%d2, 1
.LVL223:
	.loc 1 1441 0
	jz	%d15, .L220
	.loc 1 1442 0
	movh.a	%a15, hi:GCCU6_bHwFaultIgbtL
	ld.bu	%d3, [%a15] lo:GCCU6_bHwFaultIgbtL
	.loc 1 1445 0
	movh.a	%a15, hi:GMAIN_u8IgbtFltConfirmCntC
	ld.bu	%d15, [%a15] lo:GMAIN_u8IgbtFltConfirmCntC
.LVL224:
	eq	%d2, %d3, 1
	or.ge.u	%d2, %d8, %d15
.LVL225:
.L220:
	.loc 1 1453 0
	ret
.LFE424:
	.size	GCCU6_bGetHwFaultIgbtL, .-GCCU6_bGetHwFaultIgbtL
.section .text.GCCU6_bGetHwFaultOvcU,"ax",@progbits
	.align 1
	.global	GCCU6_bGetHwFaultOvcU
	.type	GCCU6_bGetHwFaultOvcU, @function
GCCU6_bGetHwFaultOvcU:
.LFB425:
	.loc 1 1465 0
.LVL226:
	.loc 1 1469 0
	movh.a	%a15, hi:GCCU6_bHwOvcFltDetEnaC
	ld.bu	%d15, [%a15] lo:GCCU6_bHwOvcFltDetEnaC
	.loc 1 1485 0
	mov	%d2, 0
	.loc 1 1469 0
	jnz	%d15, .L229
.LVL227:
.L224:
	.loc 1 1489 0
	ret
.LVL228:
.L229:
	.loc 1 1471 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
.LVL229:
	.loc 1 1473 0
	and	%d15, %d2, 255
	.loc 1 1476 0
	mov	%d2, 1
.LVL230:
	.loc 1 1473 0
	jz	%d15, .L224
	.loc 1 1474 0
	movh.a	%a15, hi:GCCU6_bHwFaultOvcU
	ld.bu	%d2, [%a15] lo:GCCU6_bHwFaultOvcU
	.loc 1 1480 0
	eq	%d2, %d2, 1
.LVL231:
	.loc 1 1489 0
	ret
.LFE425:
	.size	GCCU6_bGetHwFaultOvcU, .-GCCU6_bGetHwFaultOvcU
.section .text.GCCU6_bGetHwFaultOvcV,"ax",@progbits
	.align 1
	.global	GCCU6_bGetHwFaultOvcV
	.type	GCCU6_bGetHwFaultOvcV, @function
GCCU6_bGetHwFaultOvcV:
.LFB426:
	.loc 1 1501 0
.LVL232:
	.loc 1 1505 0
	movh.a	%a15, hi:GCCU6_bHwOvcFltDetEnaC
	ld.bu	%d15, [%a15] lo:GCCU6_bHwOvcFltDetEnaC
	.loc 1 1521 0
	mov	%d2, 0
	.loc 1 1505 0
	jnz	%d15, .L236
.LVL233:
.L231:
	.loc 1 1525 0
	ret
.LVL234:
.L236:
	.loc 1 1507 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
.LVL235:
	.loc 1 1509 0
	and	%d15, %d2, 255
	.loc 1 1512 0
	mov	%d2, 1
.LVL236:
	.loc 1 1509 0
	jz	%d15, .L231
	.loc 1 1510 0
	movh.a	%a15, hi:GCCU6_bHwFaultOvcV
	ld.bu	%d2, [%a15] lo:GCCU6_bHwFaultOvcV
	.loc 1 1516 0
	eq	%d2, %d2, 1
.LVL237:
	.loc 1 1525 0
	ret
.LFE426:
	.size	GCCU6_bGetHwFaultOvcV, .-GCCU6_bGetHwFaultOvcV
.section .text.GCCU6_bGetHwFaultOvcW,"ax",@progbits
	.align 1
	.global	GCCU6_bGetHwFaultOvcW
	.type	GCCU6_bGetHwFaultOvcW, @function
GCCU6_bGetHwFaultOvcW:
.LFB427:
	.loc 1 1537 0
.LVL238:
	.loc 1 1541 0
	movh.a	%a15, hi:GCCU6_bHwOvcFltDetEnaC
	ld.bu	%d15, [%a15] lo:GCCU6_bHwOvcFltDetEnaC
	.loc 1 1557 0
	mov	%d2, 0
	.loc 1 1541 0
	jnz	%d15, .L243
.LVL239:
.L238:
	.loc 1 1561 0
	ret
.LVL240:
.L243:
	.loc 1 1543 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
.LVL241:
	.loc 1 1545 0
	and	%d15, %d2, 255
	.loc 1 1548 0
	mov	%d2, 1
.LVL242:
	.loc 1 1545 0
	jz	%d15, .L238
	.loc 1 1546 0
	movh.a	%a15, hi:GCCU6_bHwFaultOvcW
	ld.bu	%d2, [%a15] lo:GCCU6_bHwFaultOvcW
	.loc 1 1552 0
	eq	%d2, %d2, 1
.LVL243:
	.loc 1 1561 0
	ret
.LFE427:
	.size	GCCU6_bGetHwFaultOvcW, .-GCCU6_bGetHwFaultOvcW
.section .text.GCCU6_bGetHwFaultDcOvVolt,"ax",@progbits
	.align 1
	.global	GCCU6_bGetHwFaultDcOvVolt
	.type	GCCU6_bGetHwFaultDcOvVolt, @function
GCCU6_bGetHwFaultDcOvVolt:
.LFB428:
	.loc 1 1573 0
.LVL244:
	.loc 1 1583 0
	movh.a	%a15, hi:GCCU6_bHwFaultDcOvVolt
	ld.bu	%d2, [%a15] lo:GCCU6_bHwFaultDcOvVolt
	.loc 1 1594 0
	eq	%d2, %d2, 1
	ret
.LFE428:
	.size	GCCU6_bGetHwFaultDcOvVolt, .-GCCU6_bGetHwFaultDcOvVolt
.section .text.GCCU6_bGetZeroMatchFlg,"ax",@progbits
	.align 1
	.global	GCCU6_bGetZeroMatchFlg
	.type	GCCU6_bGetZeroMatchFlg, @function
GCCU6_bGetZeroMatchFlg:
.LFB429:
	.loc 1 1606 0
	.loc 1 1608 0
	movh.a	%a15, hi:GCCU6_bT12ZeroMatchFlg
	ld.bu	%d2, [%a15] lo:GCCU6_bT12ZeroMatchFlg
	ret
.LFE429:
	.size	GCCU6_bGetZeroMatchFlg, .-GCCU6_bGetZeroMatchFlg
.section .text.GCCU6_vidSetHvOverFlg,"ax",@progbits
	.align 1
	.global	GCCU6_vidSetHvOverFlg
	.type	GCCU6_vidSetHvOverFlg, @function
GCCU6_vidSetHvOverFlg:
.LFB430:
	.loc 1 1620 0
.LVL245:
	.loc 1 1621 0
	movh.a	%a15, hi:GCCU6_bHwFaultDcOvVolt
	st.b	[%a15] lo:GCCU6_bHwFaultDcOvVolt, %d4
	ret
.LFE430:
	.size	GCCU6_vidSetHvOverFlg, .-GCCU6_vidSetHvOverFlg
.section .text.GCCU6_bGetPwmRuningFlg,"ax",@progbits
	.align 1
	.global	GCCU6_bGetPwmRuningFlg
	.type	GCCU6_bGetPwmRuningFlg, @function
GCCU6_bGetPwmRuningFlg:
.LFB431:
	.loc 1 1634 0
	.loc 1 1636 0
	movh.a	%a15, hi:GCCU6_bPwmOnGoingFlg
	ld.bu	%d2, [%a15] lo:GCCU6_bPwmOnGoingFlg
	ret
.LFE431:
	.size	GCCU6_bGetPwmRuningFlg, .-GCCU6_bGetPwmRuningFlg
.section .text.GCCU6_vidPwmDrvClkDiag,"ax",@progbits
	.align 1
	.global	GCCU6_vidPwmDrvClkDiag
	.type	GCCU6_vidPwmDrvClkDiag, @function
GCCU6_vidPwmDrvClkDiag:
.LFB432:
	.loc 1 1648 0
	ret
.LFE432:
	.size	GCCU6_vidPwmDrvClkDiag, .-GCCU6_vidPwmDrvClkDiag
.section .text.GCCU6_u8GetIGBTStatus,"ax",@progbits
	.align 1
	.global	GCCU6_u8GetIGBTStatus
	.type	GCCU6_u8GetIGBTStatus, @function
GCCU6_u8GetIGBTStatus:
.LFB433:
	.loc 1 1734 0
.LVL246:
	.loc 1 1736 0
	movh.a	%a15, hi:GCCU6_u8McuAscSttStep
	ld.bu	%d15, [%a15] lo:GCCU6_u8McuAscSttStep
	.loc 1 1746 0
	mov	%d2, 0
	.loc 1 1736 0
	jeq	%d15, 1, .L250
	jz	%d15, .L253
	jge.u	%d15, 7, .L253
.LVL247:
	.loc 1 1756 0
	mov	%d2, 3
	.loc 1 1758 0
	ret
.LVL248:
.L253:
	.loc 1 1740 0
	mov	%d2, 2
.L250:
.LVL249:
	.loc 1 1767 0
	ret
.LFE433:
	.size	GCCU6_u8GetIGBTStatus, .-GCCU6_u8GetIGBTStatus
	.global	GCCU6_pstrModule
.section .data.a4.GCCU6_pstrModule,"aw",@progbits
	.align 2
	.type	GCCU6_pstrModule, @object
	.size	GCCU6_pstrModule, 4
GCCU6_pstrModule:
	.word	-268424448
.section .bss.a4.GCCU6_udtIfxCcu6PwmHlCfg,"aw",@nobits
	.align 2
	.type	GCCU6_udtIfxCcu6PwmHlCfg, @object
	.size	GCCU6_udtIfxCcu6PwmHlCfg, 28
GCCU6_udtIfxCcu6PwmHlCfg:
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
	.byte	0x4
	.uaword	.LCFI1-.LFB411
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.byte	0x4
	.uaword	.LCFI2-.LFB412
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
	.uaword	.LFB418
	.uaword	.LFE418-.LFB418
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 5 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_regdef.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCcu6_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
	.file 11 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Port\\Std\\IfxPort.h"
	.file 12 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 13 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_PinMap\\IfxCcu6_PinMap.h"
	.file 14 ".\\output\\inc/..\\..\\Integration\\Infineon\\Service\\CpuGeneric\\StdIf\\IfxStdIf_Timer.h"
	.file 15 ".\\output\\inc/..\\..\\Integration\\Infineon\\Service\\CpuGeneric\\StdIf\\IfxStdIf_PwmHl.h"
	.file 16 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Ccu6\\TimerWithTrigger\\IfxCcu6_TimerWithTrigger.h"
	.file 17 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Ccu6\\PwmHl\\IfxCcu6_PwmHl.h"
	.file 18 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_L.h"
	.file 19 "bswcdd\\GCCU6\\GCCU6_L.h"
	.file 20 "bswcdd\\GCCU6\\GCCU6_Cfg.h"
	.file 21 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 22 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 23 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
	.file 24 ".\\output\\inc/..\\..\\bswcdd\\CCU6\\CCU6_Hal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9827
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\GCCU6\\GCCU6.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1d5
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
	.uaword	0x201
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x225
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
	.uaword	0x24b
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
	.uaword	0x1a3
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1d5
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
	.byte	0x15
	.byte	0x2b
	.uaword	0x332
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
	.uaword	0x1d5
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x4
	.byte	0x62
	.uaword	0x24b
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x4
	.byte	0x65
	.uaword	0x225
	.uleb128 0x6
	.uaword	0x33e
	.uaword	0x38f
	.uleb128 0x7
	.uaword	0x332
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x33e
	.uaword	0x39f
	.uleb128 0x7
	.uaword	0x332
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.uaword	0x33e
	.uaword	0x3af
	.uleb128 0x7
	.uaword	0x332
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.uaword	0x33e
	.uaword	0x3bf
	.uleb128 0x7
	.uaword	0x332
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.uaword	0x33e
	.uaword	0x3cf
	.uleb128 0x7
	.uaword	0x332
	.byte	0x37
	.byte	0
	.uleb128 0x6
	.uaword	0x33e
	.uaword	0x3df
	.uleb128 0x7
	.uaword	0x332
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"Port_PinType"
	.byte	0x5
	.byte	0xa4
	.uaword	0x1f3
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xaa
	.uaword	0x41a
	.uleb128 0x5
	.string	"PORT_PIN_IN"
	.sleb128 0
	.uleb128 0x5
	.string	"PORT_PIN_OUT"
	.sleb128 128
	.byte	0
	.uleb128 0x3
	.string	"Port_PinDirectionType"
	.byte	0x5
	.byte	0xad
	.uaword	0x3f3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x4
	.uaword	0x445
	.uleb128 0xa
	.uleb128 0x3
	.string	"Ifx_TimerValue"
	.byte	0x6
	.byte	0x65
	.uaword	0x23d
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x72
	.uaword	0x492
	.uleb128 0x5
	.string	"Ifx_ActiveState_low"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_ActiveState_high"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ActiveState"
	.byte	0x6
	.byte	0x75
	.uaword	0x45c
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0x8c
	.uaword	0x4d0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.byte	0x8e
	.uaword	0x43f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"index"
	.byte	0x6
	.byte	0x8f
	.uaword	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x90
	.uaword	0x4a9
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xb0
	.uaword	0x5a8
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
	.byte	0x6
	.byte	0xb8
	.uaword	0x4ea
	.uleb128 0xe
	.string	"_Ifx_CCU6_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x44
	.uaword	0x811
	.uleb128 0xf
	.string	"EN0"
	.byte	0x7
	.byte	0x46
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0x7
	.byte	0x47
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0x7
	.byte	0x48
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0x7
	.byte	0x49
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0x7
	.byte	0x4a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0x7
	.byte	0x4b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0x7
	.byte	0x4c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0x7
	.byte	0x4d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0x7
	.byte	0x4e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0x7
	.byte	0x4f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0x7
	.byte	0x50
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0x7
	.byte	0x51
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0x7
	.byte	0x52
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0x7
	.byte	0x53
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0x7
	.byte	0x54
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0x7
	.byte	0x55
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN16"
	.byte	0x7
	.byte	0x56
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN17"
	.byte	0x7
	.byte	0x57
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN18"
	.byte	0x7
	.byte	0x58
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN19"
	.byte	0x7
	.byte	0x59
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN20"
	.byte	0x7
	.byte	0x5a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN21"
	.byte	0x7
	.byte	0x5b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN22"
	.byte	0x7
	.byte	0x5c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN23"
	.byte	0x7
	.byte	0x5d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN24"
	.byte	0x7
	.byte	0x5e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN25"
	.byte	0x7
	.byte	0x5f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN26"
	.byte	0x7
	.byte	0x60
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN27"
	.byte	0x7
	.byte	0x61
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN28"
	.byte	0x7
	.byte	0x62
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN29"
	.byte	0x7
	.byte	0x63
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN30"
	.byte	0x7
	.byte	0x64
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN31"
	.byte	0x7
	.byte	0x65
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_ACCEN0_Bits"
	.byte	0x7
	.byte	0x66
	.uaword	0x5bc
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC63R_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x69
	.uaword	0x86d
	.uleb128 0xf
	.string	"CCV"
	.byte	0x7
	.byte	0x6b
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0x6c
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC63R_Bits"
	.byte	0x7
	.byte	0x6d
	.uaword	0x82d
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC63SR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x70
	.uaword	0x8c9
	.uleb128 0xf
	.string	"CCS"
	.byte	0x7
	.byte	0x72
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0x73
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC63SR_Bits"
	.byte	0x7
	.byte	0x74
	.uaword	0x888
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC6R_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x77
	.uaword	0x924
	.uleb128 0xf
	.string	"CCV"
	.byte	0x7
	.byte	0x79
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0x7a
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC6R_Bits"
	.byte	0x7
	.byte	0x7b
	.uaword	0x8e5
	.uleb128 0xe
	.string	"_Ifx_CCU6_CC6SR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x7e
	.uaword	0x97e
	.uleb128 0xf
	.string	"CCS"
	.byte	0x7
	.byte	0x80
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0x81
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CC6SR_Bits"
	.byte	0x7
	.byte	0x82
	.uaword	0x93e
	.uleb128 0xe
	.string	"_Ifx_CCU6_CLC_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x85
	.uaword	0xa1e
	.uleb128 0xf
	.string	"DISR"
	.byte	0x7
	.byte	0x87
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DISS"
	.byte	0x7
	.byte	0x88
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x7
	.byte	0x89
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EDIS"
	.byte	0x7
	.byte	0x8a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x7
	.byte	0x8b
	.uaword	0x353
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0x8c
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CLC_Bits"
	.byte	0x7
	.byte	0x8d
	.uaword	0x999
	.uleb128 0xe
	.string	"_Ifx_CCU6_CMPMODIF_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x90
	.uaword	0xb3c
	.uleb128 0xf
	.string	"MCC60S"
	.byte	0x7
	.byte	0x92
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC61S"
	.byte	0x7
	.byte	0x93
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC62S"
	.byte	0x7
	.byte	0x94
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x7
	.byte	0x95
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC63S"
	.byte	0x7
	.byte	0x96
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x7
	.byte	0x97
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC60R"
	.byte	0x7
	.byte	0x98
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC61R"
	.byte	0x7
	.byte	0x99
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC62R"
	.byte	0x7
	.byte	0x9a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x7
	.byte	0x9b
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MCC63R"
	.byte	0x7
	.byte	0x9c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x7
	.byte	0x9d
	.uaword	0x353
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CMPMODIF_Bits"
	.byte	0x7
	.byte	0x9e
	.uaword	0xa37
	.uleb128 0xe
	.string	"_Ifx_CCU6_CMPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa1
	.uaword	0xcd2
	.uleb128 0xf
	.string	"CC60ST"
	.byte	0x7
	.byte	0xa3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC61ST"
	.byte	0x7
	.byte	0xa4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC62ST"
	.byte	0x7
	.byte	0xa5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS60"
	.byte	0x7
	.byte	0xa6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS61"
	.byte	0x7
	.byte	0xa7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS62"
	.byte	0x7
	.byte	0xa8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC63ST"
	.byte	0x7
	.byte	0xa9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x7
	.byte	0xaa
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC60PS"
	.byte	0x7
	.byte	0xab
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT60PS"
	.byte	0x7
	.byte	0xac
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC61PS"
	.byte	0x7
	.byte	0xad
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT61PS"
	.byte	0x7
	.byte	0xae
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC62PS"
	.byte	0x7
	.byte	0xaf
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT62PS"
	.byte	0x7
	.byte	0xb0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"COUT63PS"
	.byte	0x7
	.byte	0xb1
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13IM"
	.byte	0x7
	.byte	0xb2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0xb3
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_CMPSTAT_Bits"
	.byte	0x7
	.byte	0xb4
	.uaword	0xb5a
	.uleb128 0xe
	.string	"_Ifx_CCU6_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb7
	.uaword	0xd43
	.uleb128 0xf
	.string	"MODREV"
	.byte	0x7
	.byte	0xb9
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODNUM"
	.byte	0x7
	.byte	0xba
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0xbb
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_ID_Bits"
	.byte	0x7
	.byte	0xbc
	.uaword	0xcef
	.uleb128 0xe
	.string	"_Ifx_CCU6_IEN_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.uaword	0xecc
	.uleb128 0xf
	.string	"ENCC60R"
	.byte	0x7
	.byte	0xc1
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC60F"
	.byte	0x7
	.byte	0xc2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC61R"
	.byte	0x7
	.byte	0xc3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC61F"
	.byte	0x7
	.byte	0xc4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC62R"
	.byte	0x7
	.byte	0xc5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCC62F"
	.byte	0x7
	.byte	0xc6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT12OM"
	.byte	0x7
	.byte	0xc7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT12PM"
	.byte	0x7
	.byte	0xc8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT13CM"
	.byte	0x7
	.byte	0xc9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENT13PM"
	.byte	0x7
	.byte	0xca
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENTRPF"
	.byte	0x7
	.byte	0xcb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x7
	.byte	0xcc
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENCHE"
	.byte	0x7
	.byte	0xcd
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENWHE"
	.byte	0x7
	.byte	0xce
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENIDLE"
	.byte	0x7
	.byte	0xcf
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ENSTR"
	.byte	0x7
	.byte	0xd0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x7
	.byte	0xd1
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_IEN_Bits"
	.byte	0x7
	.byte	0xd2
	.uaword	0xd5b
	.uleb128 0xe
	.string	"_Ifx_CCU6_IMON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd5
	.uaword	0xfde
	.uleb128 0xf
	.string	"LBE"
	.byte	0x7
	.byte	0xd7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS0I"
	.byte	0x7
	.byte	0xd8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS1I"
	.byte	0x7
	.byte	0xd9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CCPOS2I"
	.byte	0x7
	.byte	0xda
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC60INI"
	.byte	0x7
	.byte	0xdb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC61INI"
	.byte	0x7
	.byte	0xdc
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CC62INI"
	.byte	0x7
	.byte	0xdd
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CTRAPI"
	.byte	0x7
	.byte	0xde
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T12HRI"
	.byte	0x7
	.byte	0xdf
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13HRI"
	.byte	0x7
	.byte	0xe0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0xe1
	.uaword	0x353
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_IMON_Bits"
	.byte	0x7
	.byte	0xe2
	.uaword	0xee5
	.uleb128 0xe
	.string	"_Ifx_CCU6_INP_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe5
	.uaword	0x10b4
	.uleb128 0xf
	.string	"INPCC60"
	.byte	0x7
	.byte	0xe7
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPCC61"
	.byte	0x7
	.byte	0xe8
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPCC62"
	.byte	0x7
	.byte	0xe9
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPCHE"
	.byte	0x7
	.byte	0xea
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPERR"
	.byte	0x7
	.byte	0xeb
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPT12"
	.byte	0x7
	.byte	0xec
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INPT13"
	.byte	0x7
	.byte	0xed
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x7
	.byte	0xee
	.uaword	0x353
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CCU6_INP_Bits"
	.byte	0x7
	.byte	0xef
	.uaword	0xff8
	.uleb128 0xe
	.string	"_Ifx_CCU6_IS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf2
	.uaword	0x122b
	.uleb128 0xf
	.string	"ICC60R"
	.byte	0x7
	.byte	0xf4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC60F"
	.byte	0x7
	.byte	0xf5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC61R"
	.byte	0x7
	.byte	0xf6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC61F"
	.byte	0x7
	.byte	0xf7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC62R"
	.byte	0x7
	.byte	0xf8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"ICC62F"
	.byte	0x7
	.byte	0xf9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T12OM"
	.byte	0x7
	.byte	0xfa
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T12PM"
	.byte	0x7
	.byte	0xfb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13CM"
	.byte	0x7
	.byte	0xfc
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T13PM"
	.byte	0x7
	.byte	0xfd
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TRPF"
	.byte	0x7
	.byte	0xfe
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TRPS"
	.byte	0x7
	.byte	0xff
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CHE"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"WHE"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IDLE"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STR"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x104
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IS_Bits"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x10cd
	.uleb128 0x14
	.string	"_Ifx_CCU6_ISR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x108
	.uaword	0x13b8
	.uleb128 0x11
	.string	"RCC60R"
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC60F"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC61R"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC61F"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC62R"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCC62F"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT12OM"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT12PM"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT13CM"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RT13PM"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RTRPF"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x115
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RCHE"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RWHE"
	.byte	0x7
	.uahalf	0x117
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RIDLE"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RSTR"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISR_Bits"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x1244
	.uleb128 0x14
	.string	"_Ifx_CCU6_ISS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x1547
	.uleb128 0x11
	.string	"SCC60R"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC60F"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC61R"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC61F"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC62R"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCC62F"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST12OM"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST12PM"
	.byte	0x7
	.uahalf	0x127
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST13CM"
	.byte	0x7
	.uahalf	0x128
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ST13PM"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STRPF"
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWHC"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCHE"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWHE"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SIDLE"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SSTR"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x130
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISS_Bits"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x13d2
	.uleb128 0x14
	.string	"_Ifx_CCU6_KRST0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x134
	.uaword	0x15ba
	.uleb128 0x11
	.string	"RST"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x138
	.uaword	0x353
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST0_Bits"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1561
	.uleb128 0x14
	.string	"_Ifx_CCU6_KRST1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x1619
	.uleb128 0x11
	.string	"RST"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x353
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST1_Bits"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x15d6
	.uleb128 0x14
	.string	"_Ifx_CCU6_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x143
	.uaword	0x167a
	.uleb128 0x11
	.string	"CLR"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x146
	.uaword	0x353
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRSTCLR_Bits"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1635
	.uleb128 0x14
	.string	"_Ifx_CCU6_KSCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x1711
	.uleb128 0x11
	.string	"SB0"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SB1"
	.byte	0x7
	.uahalf	0x14d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SB2"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SB3"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x150
	.uaword	0x353
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KSCSR_Bits"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x1698
	.uleb128 0x14
	.string	"_Ifx_CCU6_LI_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x154
	.uaword	0x1874
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x156
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CCPOS0EN"
	.byte	0x7
	.uahalf	0x157
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CCPOS1EN"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CCPOS2EN"
	.byte	0x7
	.uahalf	0x159
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CC60INEN"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CC61INEN"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CC62INEN"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CTRAPEN"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12HREN"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13HREN"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x160
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LBEEN"
	.byte	0x7
	.uahalf	0x161
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"INPLBE"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x163
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_LI_Bits"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x172d
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x167
	.uaword	0x1917
	.uleb128 0x11
	.string	"T12"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13"
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MCM"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x353
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCFG_Bits"
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x188d
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCMCTR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x172
	.uaword	0x19ef
	.uleb128 0x11
	.string	"SWSEL"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x175
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWSYN"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x177
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE12U"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE12D"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE13U"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x353
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMCTR_Bits"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x1932
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCMOUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x1a99
	.uleb128 0x11
	.string	"MCMP"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x353
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"R"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x183
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EXPH"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CURH"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x186
	.uaword	0x353
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUT_Bits"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x1a0c
	.uleb128 0x14
	.string	"_Ifx_CCU6_MCMOUTS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x1b72
	.uleb128 0x11
	.string	"MCMPS"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x353
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STRMCM"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EXPHS"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CURHS"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x191
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STRHP"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x193
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUTS_Bits"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1ab6
	.uleb128 0x14
	.string	"_Ifx_CCU6_MODCTR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x197
	.uaword	0x1c3d
	.uleb128 0x11
	.string	"T12MODEN"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x353
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MCMEN"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13MODEN"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x353
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ECT13O"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MODCTR_Bits"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x1b90
	.uleb128 0x14
	.string	"_Ifx_CCU6_MOSEL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x1cd7
	.uleb128 0x11
	.string	"TRIG0SEL"
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRIG1SEL"
	.byte	0x7
	.uahalf	0x1a6
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRIG2SEL"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_9"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x353
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MOSEL_Bits"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x1c5a
	.uleb128 0x14
	.string	"_Ifx_CCU6_OCS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x1dae
	.uleb128 0x11
	.string	"TGS"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TGB"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TG_P"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x353
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x353
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS_P"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUSSTA"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_30"
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_OCS_Bits"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x1cf3
	.uleb128 0x14
	.string	"_Ifx_CCU6_PISEL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1ea2
	.uleb128 0x11
	.string	"ISCC60"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCC61"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCC62"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISTRP"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISPOS0"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISPOS1"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISPOS2"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IST12HR"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL0_Bits"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x1dc8
	.uleb128 0x14
	.string	"_Ifx_CCU6_PISEL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x1f5d
	.uleb128 0x11
	.string	"IST13HR"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCNT12"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ISCNT13"
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12EXT"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13EXT"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x353
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL2_Bits"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x1ebf
	.uleb128 0x14
	.string	"_Ifx_CCU6_PSLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x1fe2
	.uleb128 0x11
	.string	"PSL"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x353
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PSL63"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x353
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PSLR_Bits"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x1f7a
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x2040
	.uleb128 0x11
	.string	"T12CV"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12_Bits"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x1ffd
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12DTC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x2122
	.uleb128 0x11
	.string	"DTM"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTE0"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTE1"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTE2"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTR0"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTR1"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTR2"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x353
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12DTC_Bits"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x205a
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12MSEL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x21d8
	.uleb128 0x11
	.string	"MSEL60"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x353
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSEL61"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x353
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSEL62"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x353
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"HSYNC"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DBYP"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12MSEL_Bits"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x213f
	.uleb128 0x14
	.string	"_Ifx_CCU6_T12PR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x223b
	.uleb128 0x11
	.string	"T12PV"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12PR_Bits"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x21f6
	.uleb128 0x14
	.string	"_Ifx_CCU6_T13_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x202
	.uaword	0x229a
	.uleb128 0x11
	.string	"T13CV"
	.byte	0x7
	.uahalf	0x204
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x205
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13_Bits"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x2257
	.uleb128 0x14
	.string	"_Ifx_CCU6_T13PR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x209
	.uaword	0x22f9
	.uleb128 0x11
	.string	"T13PV"
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13PR_Bits"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x22b4
	.uleb128 0x14
	.string	"_Ifx_CCU6_TCTR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x210
	.uaword	0x240d
	.uleb128 0x11
	.string	"T12CLK"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12PRE"
	.byte	0x7
	.uahalf	0x213
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12R"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE12"
	.byte	0x7
	.uahalf	0x215
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CDIR"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CTM"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13CLK"
	.byte	0x7
	.uahalf	0x218
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13PRE"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13R"
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STE13"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x353
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR0_Bits"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x2315
	.uleb128 0x14
	.string	"_Ifx_CCU6_TCTR2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x220
	.uaword	0x24ec
	.uleb128 0x11
	.string	"T12SSC"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13SSC"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13TEC"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13TED"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x226
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12RSEL"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RSEL"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x229
	.uaword	0x353
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR2_Bits"
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x2429
	.uleb128 0x14
	.string	"_Ifx_CCU6_TCTR4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x2669
	.uleb128 0x11
	.string	"T12RR"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12RS"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12RES"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DTRES"
	.byte	0x7
	.uahalf	0x232
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x233
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12CNT"
	.byte	0x7
	.uahalf	0x234
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12STR"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T12STD"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RR"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RS"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13RES"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x23a
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13CNT"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13STR"
	.byte	0x7
	.uahalf	0x23c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T13STD"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR4_Bits"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x2508
	.uleb128 0x14
	.string	"_Ifx_CCU6_TRPCTR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x242
	.uaword	0x2744
	.uleb128 0x11
	.string	"TRPM0"
	.byte	0x7
	.uahalf	0x244
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPM1"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPM2"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x247
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPEN"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x353
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPEN13"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRPPEN"
	.byte	0x7
	.uahalf	0x24a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TRPCTR_Bits"
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x2685
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x254
	.uaword	0x2789
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x811
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ACCEN0"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x2761
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x27c9
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x86d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC63R"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x27a1
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2808
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x268
	.uaword	0x8c9
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC63SR"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x27e0
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x2848
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x270
	.uaword	0x924
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC6R"
	.byte	0x7
	.uahalf	0x271
	.uaword	0x2820
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x274
	.uaword	0x2886
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x97e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CC6SR"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x285e
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x28c5
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x280
	.uaword	0xa1e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CLC"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x289d
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x284
	.uaword	0x2902
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x288
	.uaword	0xb3c
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CMPMODIF"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x28da
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x2944
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x290
	.uaword	0xcd2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_CMPSTAT"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x291c
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x294
	.uaword	0x2985
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x298
	.uaword	0xd43
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ID"
	.byte	0x7
	.uahalf	0x299
	.uaword	0x295d
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x29c1
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0xecc
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IEN"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x2999
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x29fe
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0xfde
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IMON"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x29d6
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x2a3c
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x10b4
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_INP"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x2a14
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x2a79
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x122b
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_IS"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x2a51
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x2ab5
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x13b8
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISR"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x2a8d
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x2af2
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x1547
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_ISS"
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0x2aca
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x2b2f
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x15ba
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST0"
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x2b07
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x2b6e
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x1619
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRST1"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x2b46
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x2bad
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x167a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KRSTCLR"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x2b85
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x2bee
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x1711
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_KSCSR"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x2bc6
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x2c2d
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x1874
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_LI"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0x2c05
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x2c69
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x1917
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCFG"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2c41
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2ca7
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x19ef
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMCTR"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x2c7f
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x304
	.uaword	0x2ce7
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x306
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x1a99
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUT"
	.byte	0x7
	.uahalf	0x309
	.uaword	0x2cbf
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x2d27
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x310
	.uaword	0x1b72
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MCMOUTS"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x2cff
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x314
	.uaword	0x2d68
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x316
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x317
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x1c3d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MODCTR"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x2d40
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x2da8
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x1cd7
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_MOSEL"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x2d80
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x324
	.uaword	0x2de7
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x326
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x327
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x328
	.uaword	0x1dae
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_OCS"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x2dbf
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x32c
	.uaword	0x2e24
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x32f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1ea2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL0"
	.byte	0x7
	.uahalf	0x331
	.uaword	0x2dfc
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x334
	.uaword	0x2e64
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x337
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x1f5d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PISEL2"
	.byte	0x7
	.uahalf	0x339
	.uaword	0x2e3c
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x2ea4
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x1fe2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_PSLR"
	.byte	0x7
	.uahalf	0x341
	.uaword	0x2e7c
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x344
	.uaword	0x2ee2
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x346
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x348
	.uaword	0x2040
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x2eba
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x2f1f
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x2122
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12DTC"
	.byte	0x7
	.uahalf	0x351
	.uaword	0x2ef7
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x354
	.uaword	0x2f5f
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x357
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x21d8
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12MSEL"
	.byte	0x7
	.uahalf	0x359
	.uaword	0x2f37
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x2fa0
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x223b
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T12PR"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x2f78
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x364
	.uaword	0x2fdf
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x366
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x368
	.uaword	0x229a
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x2fb7
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x301c
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x22f9
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_T13PR"
	.byte	0x7
	.uahalf	0x371
	.uaword	0x2ff4
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x374
	.uaword	0x305b
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x376
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x240d
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR0"
	.byte	0x7
	.uahalf	0x379
	.uaword	0x3033
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x309a
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x37e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x24ec
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR2"
	.byte	0x7
	.uahalf	0x381
	.uaword	0x3072
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x384
	.uaword	0x30d9
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x387
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x2669
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TCTR4"
	.byte	0x7
	.uahalf	0x389
	.uaword	0x30b1
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.uahalf	0x38c
	.uaword	0x3118
	.uleb128 0x16
	.string	"U"
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x2744
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6_TRPCTR"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x30f0
	.uleb128 0x17
	.string	"_Ifx_CCU6"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x34b0
	.uleb128 0x18
	.string	"CLC"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x28c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"MCFG"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x2c69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.string	"ID"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x2985
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.string	"MOSEL"
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x2da8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.string	"PISEL0"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x2e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.string	"PISEL2"
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x2e64
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.string	"reserved_18"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.string	"KSCSR"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x2bee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.string	"T12"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x2ee2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.string	"T12PR"
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x2fa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.string	"T12DTC"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x2f1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x18
	.string	"reserved_2C"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x18
	.string	"CC6R"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x34b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.string	"reserved_3C"
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.string	"CC6SR"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x34c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x18
	.string	"reserved_4C"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x18
	.string	"T13"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x2fdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x18
	.string	"T13PR"
	.byte	0x7
	.uahalf	0x3b0
	.uaword	0x301c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.string	"CC63R"
	.byte	0x7
	.uahalf	0x3b1
	.uaword	0x27c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.string	"CC63SR"
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x2808
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x18
	.string	"CMPSTAT"
	.byte	0x7
	.uahalf	0x3b3
	.uaword	0x2944
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x18
	.string	"CMPMODIF"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x2902
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x18
	.string	"T12MSEL"
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x2f5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.string	"reserved_6C"
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x18
	.string	"TCTR0"
	.byte	0x7
	.uahalf	0x3b7
	.uaword	0x305b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x18
	.string	"TCTR2"
	.byte	0x7
	.uahalf	0x3b8
	.uaword	0x309a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x18
	.string	"TCTR4"
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x30d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.string	"reserved_7C"
	.byte	0x7
	.uahalf	0x3ba
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x18
	.string	"MODCTR"
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x2d68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x18
	.string	"TRPCTR"
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x3118
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x18
	.string	"PSLR"
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x2ea4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x18
	.string	"MCMOUTS"
	.byte	0x7
	.uahalf	0x3be
	.uaword	0x2d27
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x18
	.string	"MCMOUT"
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x2ce7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x18
	.string	"MCMCTR"
	.byte	0x7
	.uahalf	0x3c0
	.uaword	0x2ca7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x18
	.string	"IMON"
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x29fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x18
	.string	"LI"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x2c2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x18
	.string	"IS"
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x2a79
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x18
	.string	"ISS"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x2af2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x18
	.string	"ISR"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x2ab5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x18
	.string	"INP"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x2a3c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x18
	.string	"IEN"
	.byte	0x7
	.uahalf	0x3c7
	.uaword	0x29c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x18
	.string	"reserved_B4"
	.byte	0x7
	.uahalf	0x3c8
	.uaword	0x3af
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x18
	.string	"OCS"
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x2de7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x18
	.string	"KRSTCLR"
	.byte	0x7
	.uahalf	0x3ca
	.uaword	0x2bad
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x18
	.string	"KRST1"
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x2b6e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x18
	.string	"KRST0"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x2b2f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x18
	.string	"reserved_F8"
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x37f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x3ce
	.uaword	0x2789
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x2848
	.uaword	0x34c0
	.uleb128 0x7
	.uaword	0x332
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.uaword	0x2886
	.uaword	0x34d0
	.uleb128 0x7
	.uaword	0x332
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.string	"Ifx_CCU6"
	.byte	0x7
	.uahalf	0x3cf
	.uaword	0x34e1
	.uleb128 0x19
	.uaword	0x3130
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.byte	0x58
	.uaword	0x352b
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
	.byte	0x8
	.byte	0x5c
	.uaword	0x34e6
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.byte	0x5f
	.uaword	0x35d5
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
	.byte	0x8
	.byte	0x66
	.uaword	0x3542
	.uleb128 0x8
	.byte	0x1
	.byte	0x9
	.byte	0x88
	.uaword	0x364d
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
	.byte	0xa
	.byte	0x44
	.uaword	0x389f
	.uleb128 0xf
	.string	"EN0"
	.byte	0xa
	.byte	0x46
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
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
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xa
	.byte	0x66
	.uaword	0x364d
	.uleb128 0xe
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x69
	.uaword	0x38e5
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xa
	.byte	0x6b
	.uaword	0x353
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xa
	.byte	0x6c
	.uaword	0x38b8
	.uleb128 0xe
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6f
	.uaword	0x3a3e
	.uleb128 0xf
	.string	"EN0"
	.byte	0xa
	.byte	0x71
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xa
	.byte	0x72
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xa
	.byte	0x73
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xa
	.byte	0x74
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xa
	.byte	0x75
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xa
	.byte	0x76
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xa
	.byte	0x77
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xa
	.byte	0x78
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xa
	.byte	0x79
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xa
	.byte	0x7a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xa
	.byte	0x7b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xa
	.byte	0x7c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xa
	.byte	0x7d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xa
	.byte	0x7e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xa
	.byte	0x7f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xa
	.byte	0x80
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0x81
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0xa
	.byte	0x82
	.uaword	0x38fe
	.uleb128 0xe
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x85
	.uaword	0x3aac
	.uleb128 0xf
	.string	"MODREV"
	.byte	0xa
	.byte	0x87
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0xa
	.byte	0x88
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODNUMBER"
	.byte	0xa
	.byte	0x89
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0xa
	.byte	0x8a
	.uaword	0x3a54
	.uleb128 0xe
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x8d
	.uaword	0x3bf0
	.uleb128 0xf
	.string	"P0"
	.byte	0xa
	.byte	0x8f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P1"
	.byte	0xa
	.byte	0x90
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P2"
	.byte	0xa
	.byte	0x91
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P3"
	.byte	0xa
	.byte	0x92
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P4"
	.byte	0xa
	.byte	0x93
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P5"
	.byte	0xa
	.byte	0x94
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P6"
	.byte	0xa
	.byte	0x95
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P7"
	.byte	0xa
	.byte	0x96
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P8"
	.byte	0xa
	.byte	0x97
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P9"
	.byte	0xa
	.byte	0x98
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P10"
	.byte	0xa
	.byte	0x99
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P11"
	.byte	0xa
	.byte	0x9a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P12"
	.byte	0xa
	.byte	0x9b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P13"
	.byte	0xa
	.byte	0x9c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P14"
	.byte	0xa
	.byte	0x9d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P15"
	.byte	0xa
	.byte	0x9e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0x9f
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0xa
	.byte	0xa0
	.uaword	0x3ac1
	.uleb128 0xe
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa3
	.uaword	0x3ca8
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xa
	.byte	0xa5
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC0"
	.byte	0xa
	.byte	0xa6
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xa
	.byte	0xa7
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC1"
	.byte	0xa
	.byte	0xa8
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0xa9
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC2"
	.byte	0xa
	.byte	0xaa
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xa
	.byte	0xab
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC3"
	.byte	0xa
	.byte	0xac
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xa
	.byte	0xad
	.uaword	0x3c05
	.uleb128 0xe
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb0
	.uaword	0x3d68
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xa
	.byte	0xb2
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC12"
	.byte	0xa
	.byte	0xb3
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xa
	.byte	0xb4
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC13"
	.byte	0xa
	.byte	0xb5
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0xb6
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC14"
	.byte	0xa
	.byte	0xb7
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xa
	.byte	0xb8
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC15"
	.byte	0xa
	.byte	0xb9
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xa
	.byte	0xba
	.uaword	0x3cc0
	.uleb128 0xe
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xbd
	.uaword	0x3e24
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xa
	.byte	0xbf
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC4"
	.byte	0xa
	.byte	0xc0
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xa
	.byte	0xc1
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC5"
	.byte	0xa
	.byte	0xc2
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0xc3
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC6"
	.byte	0xa
	.byte	0xc4
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xa
	.byte	0xc5
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC7"
	.byte	0xa
	.byte	0xc6
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xa
	.byte	0xc7
	.uaword	0x3d81
	.uleb128 0xe
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xca
	.uaword	0x3ee1
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xa
	.byte	0xcc
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC8"
	.byte	0xa
	.byte	0xcd
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0xa
	.byte	0xce
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC9"
	.byte	0xa
	.byte	0xcf
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0xd0
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC10"
	.byte	0xa
	.byte	0xd1
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0xa
	.byte	0xd2
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC11"
	.byte	0xa
	.byte	0xd3
	.uaword	0x353
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xa
	.byte	0xd4
	.uaword	0x3e3c
	.uleb128 0xe
	.string	"_Ifx_P_LPCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd7
	.uaword	0x4027
	.uleb128 0xf
	.string	"REN_CTRL"
	.byte	0xa
	.byte	0xd9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RX_EN"
	.byte	0xa
	.byte	0xda
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TERM"
	.byte	0xa
	.byte	0xdb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LRXTERM"
	.byte	0xa
	.byte	0xdc
	.uaword	0x353
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LVDSM"
	.byte	0xa
	.byte	0xdd
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PS"
	.byte	0xa
	.byte	0xde
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TEN_CTRL"
	.byte	0xa
	.byte	0xdf
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_EN"
	.byte	0xa
	.byte	0xe0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VDIFFADJ"
	.byte	0xa
	.byte	0xe1
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VOSDYN"
	.byte	0xa
	.byte	0xe2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VOSEXT"
	.byte	0xa
	.byte	0xe3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_PD"
	.byte	0xa
	.byte	0xe4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_PWDPD"
	.byte	0xa
	.byte	0xe5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xa
	.byte	0xe6
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR_Bits"
	.byte	0xa
	.byte	0xe7
	.uaword	0x3ef9
	.uleb128 0xe
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xea
	.uaword	0x418f
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0xa
	.byte	0xec
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0xa
	.byte	0xed
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0xa
	.byte	0xee
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0xa
	.byte	0xef
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0xa
	.byte	0xf0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xa
	.byte	0xf1
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xa
	.byte	0xf2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xa
	.byte	0xf3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xa
	.byte	0xf4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xa
	.byte	0xf5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xa
	.byte	0xf6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xa
	.byte	0xf7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xa
	.byte	0xf8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0xa
	.byte	0xf9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0xa
	.byte	0xfa
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0xa
	.byte	0xfb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0xa
	.byte	0xfc
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xa
	.byte	0xfd
	.uaword	0x403e
	.uleb128 0x14
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x100
	.uaword	0x4232
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x102
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0xa
	.uahalf	0x103
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0xa
	.uahalf	0x104
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0xa
	.uahalf	0x105
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0xa
	.uahalf	0x106
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF16
	.byte	0xa
	.uahalf	0x107
	.uaword	0x353
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xa
	.uahalf	0x108
	.uaword	0x41a6
	.uleb128 0x14
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x42ca
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x10d
	.uaword	0x353
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0xa
	.uahalf	0x10e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0xa
	.uahalf	0x111
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xa
	.uahalf	0x112
	.uaword	0x424b
	.uleb128 0x14
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x115
	.uaword	0x4370
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x117
	.uaword	0x353
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0xa
	.uahalf	0x118
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0xa
	.uahalf	0x119
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0xa
	.uahalf	0x11a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0xa
	.uahalf	0x11b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF15
	.byte	0xa
	.uahalf	0x11c
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xa
	.uahalf	0x11d
	.uaword	0x42e4
	.uleb128 0x14
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x120
	.uaword	0x4417
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x122
	.uaword	0x353
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0xa
	.uahalf	0x123
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0xa
	.uahalf	0x124
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0xa
	.uahalf	0x125
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0xa
	.uahalf	0x126
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x127
	.uaword	0x353
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x4389
	.uleb128 0x14
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x12b
	.uaword	0x46a6
	.uleb128 0x11
	.string	"PS0"
	.byte	0xa
	.uahalf	0x12d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0xa
	.uahalf	0x12e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0xa
	.uahalf	0x12f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0xa
	.uahalf	0x131
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0xa
	.uahalf	0x132
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0xa
	.uahalf	0x133
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0xa
	.uahalf	0x134
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0xa
	.uahalf	0x135
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0xa
	.uahalf	0x136
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0xa
	.uahalf	0x13b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0xa
	.uahalf	0x13c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0xa
	.uahalf	0x140
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0xa
	.uahalf	0x141
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0xa
	.uahalf	0x142
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0xa
	.uahalf	0x143
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0xa
	.uahalf	0x144
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0xa
	.uahalf	0x145
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0xa
	.uahalf	0x146
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0xa
	.uahalf	0x14b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0xa
	.uahalf	0x14c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMR_Bits"
	.byte	0xa
	.uahalf	0x14d
	.uaword	0x4430
	.uleb128 0x14
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x150
	.uaword	0x4810
	.uleb128 0x11
	.string	"PS0"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0xa
	.uahalf	0x153
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0xa
	.uahalf	0x154
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0xa
	.uahalf	0x155
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0xa
	.uahalf	0x156
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0xa
	.uahalf	0x158
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0xa
	.uahalf	0x159
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0xa
	.uahalf	0x15b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0xa
	.uahalf	0x15c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0xa
	.uahalf	0x15d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0xa
	.uahalf	0x15e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0xa
	.uahalf	0x161
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x162
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xa
	.uahalf	0x163
	.uaword	0x46bd
	.uleb128 0x14
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x166
	.uaword	0x489e
	.uleb128 0x11
	.string	"PS0"
	.byte	0xa
	.uahalf	0x168
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0xa
	.uahalf	0x169
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0xa
	.uahalf	0x16b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x16c
	.uaword	0x353
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xa
	.uahalf	0x16d
	.uaword	0x4828
	.uleb128 0x14
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x170
	.uaword	0x4944
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x172
	.uaword	0x353
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0xa
	.uahalf	0x173
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0xa
	.uahalf	0x174
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0xa
	.uahalf	0x175
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0xa
	.uahalf	0x176
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x177
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x48b7
	.uleb128 0x14
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x17b
	.uaword	0x49e6
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x353
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0xa
	.uahalf	0x17e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0xa
	.uahalf	0x181
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0xa
	.uahalf	0x182
	.uaword	0x353
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xa
	.uahalf	0x183
	.uaword	0x495e
	.uleb128 0x14
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x186
	.uaword	0x4a89
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x188
	.uaword	0x353
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0xa
	.uahalf	0x189
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0xa
	.uahalf	0x18b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0xa
	.uahalf	0x18c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x353
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xa
	.uahalf	0x18e
	.uaword	0x49ff
	.uleb128 0x14
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x191
	.uaword	0x4be4
	.uleb128 0x11
	.string	"P0"
	.byte	0xa
	.uahalf	0x193
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P1"
	.byte	0xa
	.uahalf	0x194
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P2"
	.byte	0xa
	.uahalf	0x195
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P3"
	.byte	0xa
	.uahalf	0x196
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P4"
	.byte	0xa
	.uahalf	0x197
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P5"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P6"
	.byte	0xa
	.uahalf	0x199
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P7"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P8"
	.byte	0xa
	.uahalf	0x19b
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P9"
	.byte	0xa
	.uahalf	0x19c
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P10"
	.byte	0xa
	.uahalf	0x19d
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P11"
	.byte	0xa
	.uahalf	0x19e
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P12"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P13"
	.byte	0xa
	.uahalf	0x1a0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P14"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P15"
	.byte	0xa
	.uahalf	0x1a2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x1a3
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OUT_Bits"
	.byte	0xa
	.uahalf	0x1a4
	.uaword	0x4aa2
	.uleb128 0x14
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x4d70
	.uleb128 0x11
	.string	"SEL0"
	.byte	0xa
	.uahalf	0x1a9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL1"
	.byte	0xa
	.uahalf	0x1aa
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL2"
	.byte	0xa
	.uahalf	0x1ab
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL3"
	.byte	0xa
	.uahalf	0x1ac
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL4"
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL5"
	.byte	0xa
	.uahalf	0x1ae
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL6"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL7"
	.byte	0xa
	.uahalf	0x1b0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL8"
	.byte	0xa
	.uahalf	0x1b1
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL9"
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL10"
	.byte	0xa
	.uahalf	0x1b3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL11"
	.byte	0xa
	.uahalf	0x1b4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL12"
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL13"
	.byte	0xa
	.uahalf	0x1b6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL14"
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL15"
	.byte	0xa
	.uahalf	0x1b8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x353
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xa
	.uahalf	0x1bb
	.uaword	0x4bfb
	.uleb128 0x14
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1be
	.uaword	0x4efc
	.uleb128 0x11
	.string	"PDIS0"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS1"
	.byte	0xa
	.uahalf	0x1c1
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS2"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS3"
	.byte	0xa
	.uahalf	0x1c3
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS4"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS5"
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS6"
	.byte	0xa
	.uahalf	0x1c6
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS7"
	.byte	0xa
	.uahalf	0x1c7
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS8"
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS9"
	.byte	0xa
	.uahalf	0x1c9
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS10"
	.byte	0xa
	.uahalf	0x1ca
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS11"
	.byte	0xa
	.uahalf	0x1cb
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS12"
	.byte	0xa
	.uahalf	0x1cc
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS13"
	.byte	0xa
	.uahalf	0x1cd
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS14"
	.byte	0xa
	.uahalf	0x1ce
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS15"
	.byte	0xa
	.uahalf	0x1cf
	.uaword	0x353
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x1d0
	.uaword	0x353
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xa
	.uahalf	0x1d1
	.uaword	0x4d88
	.uleb128 0x14
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1d4
	.uaword	0x5050
	.uleb128 0x11
	.string	"PD0"
	.byte	0xa
	.uahalf	0x1d6
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL0"
	.byte	0xa
	.uahalf	0x1d7
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD1"
	.byte	0xa
	.uahalf	0x1d8
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL1"
	.byte	0xa
	.uahalf	0x1d9
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD2"
	.byte	0xa
	.uahalf	0x1da
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL2"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD3"
	.byte	0xa
	.uahalf	0x1dc
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL3"
	.byte	0xa
	.uahalf	0x1dd
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD4"
	.byte	0xa
	.uahalf	0x1de
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL4"
	.byte	0xa
	.uahalf	0x1df
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD5"
	.byte	0xa
	.uahalf	0x1e0
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL5"
	.byte	0xa
	.uahalf	0x1e1
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD6"
	.byte	0xa
	.uahalf	0x1e2
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL6"
	.byte	0xa
	.uahalf	0x1e3
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD7"
	.byte	0xa
	.uahalf	0x1e4
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL7"
	.byte	0xa
	.uahalf	0x1e5
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xa
	.uahalf	0x1e6
	.uaword	0x4f15
	.uleb128 0x14
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1e9
	.uaword	0x51af
	.uleb128 0x11
	.string	"PD8"
	.byte	0xa
	.uahalf	0x1eb
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL8"
	.byte	0xa
	.uahalf	0x1ec
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD9"
	.byte	0xa
	.uahalf	0x1ed
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL9"
	.byte	0xa
	.uahalf	0x1ee
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD10"
	.byte	0xa
	.uahalf	0x1ef
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL10"
	.byte	0xa
	.uahalf	0x1f0
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD11"
	.byte	0xa
	.uahalf	0x1f1
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL11"
	.byte	0xa
	.uahalf	0x1f2
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD12"
	.byte	0xa
	.uahalf	0x1f3
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL12"
	.byte	0xa
	.uahalf	0x1f4
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD13"
	.byte	0xa
	.uahalf	0x1f5
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL13"
	.byte	0xa
	.uahalf	0x1f6
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD14"
	.byte	0xa
	.uahalf	0x1f7
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL14"
	.byte	0xa
	.uahalf	0x1f8
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD15"
	.byte	0xa
	.uahalf	0x1f9
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL15"
	.byte	0xa
	.uahalf	0x1fa
	.uaword	0x353
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xa
	.uahalf	0x1fb
	.uaword	0x5068
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x203
	.uaword	0x51ef
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x205
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x206
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x207
	.uaword	0x389f
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ACCEN0"
	.byte	0xa
	.uahalf	0x208
	.uaword	0x51c7
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x20b
	.uaword	0x522c
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x20d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x20e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x20f
	.uaword	0x38e5
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ACCEN1"
	.byte	0xa
	.uahalf	0x210
	.uaword	0x5204
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x213
	.uaword	0x5269
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x215
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x216
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x217
	.uaword	0x3a3e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ESR"
	.byte	0xa
	.uahalf	0x218
	.uaword	0x5241
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x21b
	.uaword	0x52a3
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x21d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x21e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x21f
	.uaword	0x3aac
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_ID"
	.byte	0xa
	.uahalf	0x220
	.uaword	0x527b
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x223
	.uaword	0x52dc
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x225
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x226
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x227
	.uaword	0x3bf0
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IN"
	.byte	0xa
	.uahalf	0x228
	.uaword	0x52b4
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x22b
	.uaword	0x5315
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x22d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x22e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x22f
	.uaword	0x3ca8
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR0"
	.byte	0xa
	.uahalf	0x230
	.uaword	0x52ed
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x233
	.uaword	0x5351
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x235
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x236
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x237
	.uaword	0x3d68
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR12"
	.byte	0xa
	.uahalf	0x238
	.uaword	0x5329
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x23b
	.uaword	0x538e
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x23d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x23e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x23f
	.uaword	0x3e24
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR4"
	.byte	0xa
	.uahalf	0x240
	.uaword	0x5366
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x243
	.uaword	0x53ca
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x245
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x246
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x247
	.uaword	0x3ee1
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_IOCR8"
	.byte	0xa
	.uahalf	0x248
	.uaword	0x53a2
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x24b
	.uaword	0x5406
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x24d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x24e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x24f
	.uaword	0x4027
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_LPCR"
	.byte	0xa
	.uahalf	0x250
	.uaword	0x53de
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x253
	.uaword	0x5441
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x255
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x256
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x257
	.uaword	0x418f
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR"
	.byte	0xa
	.uahalf	0x258
	.uaword	0x5419
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x25b
	.uaword	0x547c
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x25d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x25e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x25f
	.uaword	0x4232
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR0"
	.byte	0xa
	.uahalf	0x260
	.uaword	0x5454
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x263
	.uaword	0x54b8
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x265
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x266
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x267
	.uaword	0x42ca
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR12"
	.byte	0xa
	.uahalf	0x268
	.uaword	0x5490
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x26b
	.uaword	0x54f5
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x26d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x26e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x26f
	.uaword	0x4370
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR4"
	.byte	0xa
	.uahalf	0x270
	.uaword	0x54cd
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x273
	.uaword	0x5531
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x275
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x276
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x277
	.uaword	0x4417
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMCR8"
	.byte	0xa
	.uahalf	0x278
	.uaword	0x5509
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x27b
	.uaword	0x556d
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x27d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x27e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x27f
	.uaword	0x46a6
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMR"
	.byte	0xa
	.uahalf	0x280
	.uaword	0x5545
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x283
	.uaword	0x55a7
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x285
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x286
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x287
	.uaword	0x4810
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR"
	.byte	0xa
	.uahalf	0x288
	.uaword	0x557f
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x28b
	.uaword	0x55e2
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x28d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x28e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x28f
	.uaword	0x489e
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR0"
	.byte	0xa
	.uahalf	0x290
	.uaword	0x55ba
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x293
	.uaword	0x561e
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x295
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x296
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x297
	.uaword	0x4944
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR12"
	.byte	0xa
	.uahalf	0x298
	.uaword	0x55f6
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x29b
	.uaword	0x565b
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x29d
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x29e
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x29f
	.uaword	0x49e6
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR4"
	.byte	0xa
	.uahalf	0x2a0
	.uaword	0x5633
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x2a3
	.uaword	0x5697
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x2a5
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x2a6
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x2a7
	.uaword	0x4a89
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OMSR8"
	.byte	0xa
	.uahalf	0x2a8
	.uaword	0x566f
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x2ab
	.uaword	0x56d3
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x2ad
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x2ae
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x2af
	.uaword	0x4be4
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_OUT"
	.byte	0xa
	.uahalf	0x2b0
	.uaword	0x56ab
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x2b3
	.uaword	0x570d
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x2b5
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x2b6
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x2b7
	.uaword	0x4d70
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PCSR"
	.byte	0xa
	.uahalf	0x2b8
	.uaword	0x56e5
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x2bb
	.uaword	0x5748
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x2bd
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x2be
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x2bf
	.uaword	0x4efc
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDISC"
	.byte	0xa
	.uahalf	0x2c0
	.uaword	0x5720
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x2c3
	.uaword	0x5784
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x2c5
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x2c6
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x2c7
	.uaword	0x5050
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR0"
	.byte	0xa
	.uahalf	0x2c8
	.uaword	0x575c
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.uahalf	0x2cb
	.uaword	0x57bf
	.uleb128 0x16
	.string	"U"
	.byte	0xa
	.uahalf	0x2cd
	.uaword	0x353
	.uleb128 0x16
	.string	"I"
	.byte	0xa
	.uahalf	0x2ce
	.uaword	0x369
	.uleb128 0x16
	.string	"B"
	.byte	0xa
	.uahalf	0x2cf
	.uaword	0x51af
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P_PDR1"
	.byte	0xa
	.uahalf	0x2d0
	.uaword	0x5797
	.uleb128 0x17
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xa
	.uahalf	0x2dc
	.uaword	0x5a43
	.uleb128 0x18
	.string	"OUT"
	.byte	0xa
	.uahalf	0x2de
	.uaword	0x56d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"OMR"
	.byte	0xa
	.uahalf	0x2df
	.uaword	0x556d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.string	"ID"
	.byte	0xa
	.uahalf	0x2e0
	.uaword	0x52a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.string	"reserved_C"
	.byte	0xa
	.uahalf	0x2e1
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.string	"IOCR0"
	.byte	0xa
	.uahalf	0x2e2
	.uaword	0x5315
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.string	"IOCR4"
	.byte	0xa
	.uahalf	0x2e3
	.uaword	0x538e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.string	"IOCR8"
	.byte	0xa
	.uahalf	0x2e4
	.uaword	0x53ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.string	"IOCR12"
	.byte	0xa
	.uahalf	0x2e5
	.uaword	0x5351
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.uaword	.LASF16
	.byte	0xa
	.uahalf	0x2e6
	.uaword	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.string	"IN"
	.byte	0xa
	.uahalf	0x2e7
	.uaword	0x52dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x2e8
	.uaword	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x18
	.string	"PDR0"
	.byte	0xa
	.uahalf	0x2e9
	.uaword	0x5784
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x18
	.string	"PDR1"
	.byte	0xa
	.uahalf	0x2ea
	.uaword	0x57bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x18
	.string	"reserved_48"
	.byte	0xa
	.uahalf	0x2eb
	.uaword	0x39f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x18
	.string	"ESR"
	.byte	0xa
	.uahalf	0x2ec
	.uaword	0x5269
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x18
	.string	"reserved_54"
	.byte	0xa
	.uahalf	0x2ed
	.uaword	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.string	"PDISC"
	.byte	0xa
	.uahalf	0x2ee
	.uaword	0x5748
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x18
	.string	"PCSR"
	.byte	0xa
	.uahalf	0x2ef
	.uaword	0x570d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x18
	.string	"reserved_68"
	.byte	0xa
	.uahalf	0x2f0
	.uaword	0x39f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.string	"OMSR0"
	.byte	0xa
	.uahalf	0x2f1
	.uaword	0x55e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x18
	.string	"OMSR4"
	.byte	0xa
	.uahalf	0x2f2
	.uaword	0x565b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x18
	.string	"OMSR8"
	.byte	0xa
	.uahalf	0x2f3
	.uaword	0x5697
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.string	"OMSR12"
	.byte	0xa
	.uahalf	0x2f4
	.uaword	0x561e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x18
	.string	"OMCR0"
	.byte	0xa
	.uahalf	0x2f5
	.uaword	0x547c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x18
	.string	"OMCR4"
	.byte	0xa
	.uahalf	0x2f6
	.uaword	0x54f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x18
	.string	"OMCR8"
	.byte	0xa
	.uahalf	0x2f7
	.uaword	0x5531
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x18
	.string	"OMCR12"
	.byte	0xa
	.uahalf	0x2f8
	.uaword	0x54b8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x18
	.string	"OMSR"
	.byte	0xa
	.uahalf	0x2f9
	.uaword	0x55a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x18
	.string	"OMCR"
	.byte	0xa
	.uahalf	0x2fa
	.uaword	0x5441
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x18
	.string	"reserved_98"
	.byte	0xa
	.uahalf	0x2fb
	.uaword	0x39f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x18
	.string	"LPCR"
	.byte	0xa
	.uahalf	0x2fc
	.uaword	0x5a43
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x18
	.string	"reserved_C0"
	.byte	0xa
	.uahalf	0x2fd
	.uaword	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x18
	.string	"ACCEN1"
	.byte	0xa
	.uahalf	0x2fe
	.uaword	0x522c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0xa
	.uahalf	0x2ff
	.uaword	0x51ef
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x5406
	.uaword	0x5a53
	.uleb128 0x7
	.uaword	0x332
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.string	"Ifx_P"
	.byte	0xa
	.uahalf	0x300
	.uaword	0x5a61
	.uleb128 0x19
	.uaword	0x57d2
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5a53
	.uleb128 0x8
	.byte	0x1
	.byte	0xb
	.byte	0x81
	.uaword	0x5b48
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
	.byte	0xb
	.byte	0x8a
	.uaword	0x5a6c
	.uleb128 0x8
	.byte	0x1
	.byte	0xb
	.byte	0x8f
	.uaword	0x5bc3
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
	.byte	0xb
	.byte	0x93
	.uaword	0x5b61
	.uleb128 0x8
	.byte	0x1
	.byte	0xb
	.byte	0x9a
	.uaword	0x5d86
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
	.byte	0xb
	.byte	0xa7
	.uaword	0x5bdd
	.uleb128 0xb
	.byte	0x8
	.byte	0xb
	.byte	0xf8
	.uaword	0x5dca
	.uleb128 0xd
	.string	"port"
	.byte	0xb
	.byte	0xfa
	.uaword	0x5a66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pinIndex"
	.byte	0xb
	.byte	0xfb
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0xb
	.byte	0xfc
	.uaword	0x5d9f
	.uleb128 0x1b
	.byte	0x1
	.byte	0xc
	.uahalf	0x160
	.uaword	0x5ee6
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
	.uaword	0x34d0
	.uleb128 0xb
	.byte	0x10
	.byte	0xd
	.byte	0x80
	.uaword	0x5f1f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xd
	.byte	0x82
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xd
	.byte	0x83
	.uaword	0x5dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xd
	.byte	0x84
	.uaword	0x5b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cc60_Out"
	.byte	0xd
	.byte	0x85
	.uaword	0x5f37
	.uleb128 0x1c
	.uaword	0x5eec
	.uleb128 0xb
	.byte	0x10
	.byte	0xd
	.byte	0x88
	.uaword	0x5f6f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xd
	.byte	0x8a
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xd
	.byte	0x8b
	.uaword	0x5dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xd
	.byte	0x8c
	.uaword	0x5b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cc61_Out"
	.byte	0xd
	.byte	0x8d
	.uaword	0x5f87
	.uleb128 0x1c
	.uaword	0x5f3c
	.uleb128 0xb
	.byte	0x10
	.byte	0xd
	.byte	0x90
	.uaword	0x5fbf
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xd
	.byte	0x92
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xd
	.byte	0x93
	.uaword	0x5dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xd
	.byte	0x94
	.uaword	0x5b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cc62_Out"
	.byte	0xd
	.byte	0x95
	.uaword	0x5fd7
	.uleb128 0x1c
	.uaword	0x5f8c
	.uleb128 0xb
	.byte	0x10
	.byte	0xd
	.byte	0x98
	.uaword	0x600f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xd
	.byte	0x9a
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xd
	.byte	0x9b
	.uaword	0x5dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xd
	.byte	0x9c
	.uaword	0x5b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cout60_Out"
	.byte	0xd
	.byte	0x9d
	.uaword	0x6029
	.uleb128 0x1c
	.uaword	0x5fdc
	.uleb128 0xb
	.byte	0x10
	.byte	0xd
	.byte	0xa0
	.uaword	0x6061
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xd
	.byte	0xa2
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xd
	.byte	0xa3
	.uaword	0x5dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xd
	.byte	0xa4
	.uaword	0x5b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cout61_Out"
	.byte	0xd
	.byte	0xa5
	.uaword	0x607b
	.uleb128 0x1c
	.uaword	0x602e
	.uleb128 0xb
	.byte	0x10
	.byte	0xd
	.byte	0xa8
	.uaword	0x60b3
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xd
	.byte	0xaa
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"pin"
	.byte	0xd
	.byte	0xab
	.uaword	0x5dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF18
	.byte	0xd
	.byte	0xac
	.uaword	0x5b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_Cout62_Out"
	.byte	0xd
	.byte	0xad
	.uaword	0x60cd
	.uleb128 0x1c
	.uaword	0x6080
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x71
	.uaword	0x6192
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
	.uaword	0x60d2
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0xb6
	.uaword	0x63c3
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
	.uaword	0x61ac
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0xd0
	.uaword	0x652a
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
	.uaword	0x65c0
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
	.uaword	0x6635
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
	.uaword	0x65c0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x12c
	.uaword	0x66a5
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
	.uaword	0x6653
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x151
	.uaword	0x66f8
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
	.uaword	0x66c2
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x15a
	.uaword	0x682c
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
	.uaword	0x6710
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.uahalf	0x180
	.uaword	0x688d
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
	.uaword	0x684c
	.uleb128 0x8
	.byte	0x1
	.byte	0xe
	.byte	0x56
	.uaword	0x690f
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
	.byte	0xe
	.byte	0x5a
	.uaword	0x68a6
	.uleb128 0x9
	.byte	0x4
	.uaword	0x446
	.uleb128 0xb
	.byte	0x10
	.byte	0xf
	.byte	0xc8
	.uaword	0x6a02
	.uleb128 0xc
	.uaword	.LASF19
	.byte	0xf
	.byte	0xca
	.uaword	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF20
	.byte	0xf
	.byte	0xcb
	.uaword	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.uaword	.LASF21
	.byte	0xf
	.byte	0xcc
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"emergencyEnabled"
	.byte	0xf
	.byte	0xcd
	.uaword	0x28e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.string	"outputMode"
	.byte	0xf
	.byte	0xcf
	.uaword	0x5bc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"outputDriver"
	.byte	0xf
	.byte	0xd0
	.uaword	0x5d86
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xd
	.string	"ccxOutputEnabled"
	.byte	0xf
	.byte	0xd1
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"coutxOutputEnabled"
	.byte	0xf
	.byte	0xd2
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.uaword	.LASF22
	.byte	0xf
	.byte	0xd3
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.uaword	.LASF23
	.byte	0xf
	.byte	0xd4
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_PwmHl_Config"
	.byte	0xf
	.byte	0xd5
	.uaword	0x6934
	.uleb128 0xb
	.byte	0x10
	.byte	0x10
	.byte	0x4d
	.uaword	0x6a79
	.uleb128 0xd
	.string	"period"
	.byte	0x10
	.byte	0x4f
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"triggerEnabled"
	.byte	0x10
	.byte	0x50
	.uaword	0x28e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"clockFreq"
	.byte	0x10
	.byte	0x51
	.uaword	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"countDir"
	.byte	0x10
	.byte	0x52
	.uaword	0x690f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_TimerWithTrigger_Base"
	.byte	0x10
	.byte	0x53
	.uaword	0x6a1f
	.uleb128 0xb
	.byte	0x14
	.byte	0x10
	.byte	0x59
	.uaword	0x6ac4
	.uleb128 0xd
	.string	"base"
	.byte	0x10
	.byte	0x5b
	.uaword	0x6a79
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF24
	.byte	0x10
	.byte	0x5c
	.uaword	0x5ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_TimerWithTrigger"
	.byte	0x10
	.byte	0x5d
	.uaword	0x6a9e
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl"
	.byte	0x11
	.byte	0x56
	.uaword	0x6af9
	.uleb128 0xe
	.string	"IfxCcu6_PwmHl_s"
	.byte	0x1c
	.byte	0x11
	.byte	0x8c
	.uaword	0x6b42
	.uleb128 0xd
	.string	"base"
	.byte	0x11
	.byte	0x8e
	.uaword	0x6c11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"timer"
	.byte	0x11
	.byte	0x8f
	.uaword	0x6cf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"update"
	.byte	0x11
	.byte	0x90
	.uaword	0x6b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl_Update"
	.byte	0x11
	.byte	0x58
	.uaword	0x6b5e
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6b64
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x6b75
	.uleb128 0x1e
	.uaword	0x6b75
	.uleb128 0x1e
	.uaword	0x692e
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6ae4
	.uleb128 0xb
	.byte	0x14
	.byte	0x11
	.byte	0x62
	.uaword	0x6c11
	.uleb128 0xc
	.uaword	.LASF19
	.byte	0x11
	.byte	0x64
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF20
	.byte	0x11
	.byte	0x65
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"maxPulse"
	.byte	0x11
	.byte	0x66
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"mode"
	.byte	0x11
	.byte	0x67
	.uaword	0x5a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"setMode"
	.byte	0x11
	.byte	0x68
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.uaword	.LASF22
	.byte	0x11
	.byte	0x69
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.uaword	.LASF23
	.byte	0x11
	.byte	0x6a
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xd
	.string	"inverted"
	.byte	0x11
	.byte	0x6b
	.uaword	0x28e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.uaword	.LASF21
	.byte	0x11
	.byte	0x6c
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl_Base"
	.byte	0x11
	.byte	0x6d
	.uaword	0x6b7b
	.uleb128 0xb
	.byte	0x2c
	.byte	0x11
	.byte	0x75
	.uaword	0x6cad
	.uleb128 0xd
	.string	"base"
	.byte	0x11
	.byte	0x77
	.uaword	0x6a02
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"timer"
	.byte	0x11
	.byte	0x78
	.uaword	0x6cad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"cc0"
	.byte	0x11
	.byte	0x79
	.uaword	0x6cb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"cc1"
	.byte	0x11
	.byte	0x7a
	.uaword	0x6cbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"cc2"
	.byte	0x11
	.byte	0x7b
	.uaword	0x6cc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"cout0"
	.byte	0x11
	.byte	0x7c
	.uaword	0x6cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"cout1"
	.byte	0x11
	.byte	0x7d
	.uaword	0x6cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"cout2"
	.byte	0x11
	.byte	0x7e
	.uaword	0x6cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6cb3
	.uleb128 0x1c
	.uaword	0x6ac4
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5f1f
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5f6f
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5fbf
	.uleb128 0x9
	.byte	0x4
	.uaword	0x600f
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6061
	.uleb128 0x9
	.byte	0x4
	.uaword	0x60b3
	.uleb128 0x3
	.string	"IfxCcu6_PwmHl_Config"
	.byte	0x11
	.byte	0x7f
	.uaword	0x6c2b
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6ac4
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x4b
	.uaword	0x6dad
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_CLOSE"
	.sleb128 0
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_ONGOING"
	.sleb128 1
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_EXIT"
	.sleb128 2
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_EXIT_DELAY"
	.sleb128 3
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_FINSH"
	.sleb128 4
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_RECOVER"
	.sleb128 5
	.uleb128 0x5
	.string	"GCCU6_MCU_ASC_OVER_TIME"
	.sleb128 6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uaword	0x6e18
	.uleb128 0x5
	.string	"GCCU6_ASC_TYPE_UNDEF"
	.sleb128 0
	.uleb128 0x5
	.string	"GCCU6_ASC_TYPE_LOWSIDE"
	.sleb128 1
	.uleb128 0x5
	.string	"GCCU6_ASC_TYPE_HIGHSIDE"
	.sleb128 2
	.uleb128 0x5
	.string	"GCCU6_ASC_TYPE_ALLOFF"
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x60
	.uaword	0x6e70
	.uleb128 0x5
	.string	"GCCU6_PRETEST_STEP_IDLE"
	.sleb128 0
	.uleb128 0x5
	.string	"GCCU6_PRETEST_STEP_RUN"
	.sleb128 1
	.uleb128 0x5
	.string	"GCCU6_PRETEST_STEP_FINISH"
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x68
	.uaword	0x6f40
	.uleb128 0x5
	.string	"GCCU6_enuP5V_PO_DELAY"
	.sleb128 0
	.uleb128 0x5
	.string	"GCCU6_enuP5V_POW_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"GCCU6_enuP5V_HS_FLT_ASC"
	.sleb128 2
	.uleb128 0x5
	.string	"GCCU6_enuP5V_HS_CLOSE"
	.sleb128 3
	.uleb128 0x5
	.string	"GCCU6_enuP5V_LS_FLT_ASC"
	.sleb128 4
	.uleb128 0x5
	.string	"GCCU6_enuP5V_LS_CLOSE"
	.sleb128 5
	.uleb128 0x5
	.string	"GCCU6_enuP5V_WAIT_REINIT"
	.sleb128 6
	.uleb128 0x5
	.string	"GCCU6_enuP5V_REINIT"
	.sleb128 7
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_startTimer"
	.byte	0x2
	.uahalf	0x85e
	.byte	0x1
	.byte	0x3
	.uaword	0x6f90
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"t12"
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x28e
	.uleb128 0x21
	.string	"t13"
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x28e
	.uleb128 0x22
	.string	"tctr4"
	.byte	0x2
	.uahalf	0x860
	.uaword	0x30d9
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_stopTimer"
	.byte	0x2
	.uahalf	0x868
	.byte	0x1
	.byte	0x3
	.uaword	0x6fdf
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x868
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"t12"
	.byte	0x2
	.uahalf	0x868
	.uaword	0x28e
	.uleb128 0x21
	.string	"t13"
	.byte	0x2
	.uahalf	0x868
	.uaword	0x28e
	.uleb128 0x22
	.string	"tctr4"
	.byte	0x2
	.uahalf	0x86a
	.uaword	0x30d9
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setT12PeriodValue"
	.byte	0x2
	.uahalf	0x82d
	.byte	0x1
	.byte	0x3
	.uaword	0x701e
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x82d
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"value"
	.byte	0x2
	.uahalf	0x82d
	.uaword	0x1f3
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableShadowTransfer"
	.byte	0x2
	.uahalf	0x645
	.byte	0x1
	.byte	0x3
	.uaword	0x7078
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x645
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"t12"
	.byte	0x2
	.uahalf	0x645
	.uaword	0x28e
	.uleb128 0x21
	.string	"t13"
	.byte	0x2
	.uahalf	0x645
	.uaword	0x28e
	.uleb128 0x22
	.string	"tctr4"
	.byte	0x2
	.uahalf	0x647
	.uaword	0x30d9
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setInputClockFrequency"
	.byte	0x2
	.uahalf	0x7d2
	.byte	0x1
	.byte	0x3
	.uaword	0x70e9
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"timer"
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0x66f8
	.uleb128 0x21
	.string	"frequency"
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0x682c
	.uleb128 0x22
	.string	"shift"
	.byte	0x2
	.uahalf	0x7d4
	.uaword	0x23d
	.uleb128 0x22
	.string	"mask"
	.byte	0x2
	.uahalf	0x7d5
	.uaword	0x23d
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setT12CountMode"
	.byte	0x2
	.uahalf	0x821
	.byte	0x1
	.byte	0x3
	.uaword	0x7125
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x821
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"mode"
	.byte	0x2
	.uahalf	0x821
	.uaword	0x66a5
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setT12CounterValue"
	.byte	0x2
	.uahalf	0x827
	.byte	0x1
	.byte	0x3
	.uaword	0x7165
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x827
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"value"
	.byte	0x2
	.uahalf	0x827
	.uaword	0x1f3
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableInterrupt"
	.byte	0x2
	.uahalf	0x61a
	.byte	0x1
	.byte	0x3
	.uaword	0x71b0
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x61a
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"source"
	.byte	0x2
	.uahalf	0x61a
	.uaword	0x63c3
	.uleb128 0x22
	.string	"mask"
	.byte	0x2
	.uahalf	0x61c
	.uaword	0x23d
	.byte	0
	.uleb128 0x23
	.string	"IfxCcu6_GetT12PeriodVal"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uaword	0x71e1
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x80
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"GCCU6_vidWait"
	.byte	0x1
	.uahalf	0x312
	.byte	0x1
	.byte	0x1
	.uaword	0x7220
	.uleb128 0x21
	.string	"time"
	.byte	0x1
	.uahalf	0x312
	.uaword	0x23d
	.uleb128 0x22
	.string	"localu32Counter"
	.byte	0x1
	.uahalf	0x314
	.uaword	0x7220
	.byte	0
	.uleb128 0x19
	.uaword	0x23d
	.uleb128 0x26
	.string	"IfxCcu6_SetTrapFlg"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.byte	0x1
	.uaword	0x724d
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x85
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x26
	.string	"IfxCcu6_ClrTrapFlg"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.byte	0x1
	.uaword	0x7275
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x8a
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableTrap"
	.byte	0x2
	.uahalf	0x663
	.byte	0x1
	.byte	0x3
	.uaword	0x72cd
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x663
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"channelOut"
	.byte	0x2
	.uahalf	0x663
	.uaword	0x6192
	.uleb128 0x22
	.string	"shift"
	.byte	0x2
	.uahalf	0x665
	.uaword	0x23d
	.uleb128 0x22
	.string	"mask"
	.byte	0x2
	.uahalf	0x666
	.uaword	0x23d
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_setTrapMode"
	.byte	0x2
	.uahalf	0x851
	.byte	0x1
	.byte	0x3
	.uaword	0x7305
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x851
	.uaword	0x5ee6
	.uleb128 0x21
	.string	"mode"
	.byte	0x2
	.uahalf	0x851
	.uaword	0x688d
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_enableTrapPin"
	.byte	0x2
	.uahalf	0x66b
	.byte	0x1
	.byte	0x3
	.uaword	0x7332
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x66b
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x1f
	.string	"IfxCcu6_disableTrapPin"
	.byte	0x2
	.uahalf	0x5ee
	.byte	0x1
	.byte	0x3
	.uaword	0x7360
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x5ee
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"GCCU6_vidTryClearTrap"
	.byte	0x1
	.uahalf	0x3db
	.byte	0x1
	.byte	0x1
	.uaword	0x739a
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x6b75
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x3de
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x26
	.string	"GCCU6_vidStartTimer"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.byte	0x1
	.uaword	0x73c3
	.uleb128 0x28
	.uaword	.LASF25
	.byte	0x1
	.byte	0x9a
	.uaword	0x6b75
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"GCCU6_vidSetPwmHlDuty"
	.byte	0x1
	.uahalf	0x1f8
	.byte	0x1
	.byte	0x1
	.uaword	0x742c
	.uleb128 0x21
	.string	"f32DutyU"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x275
	.uleb128 0x21
	.string	"f32DutyV"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x275
	.uleb128 0x21
	.string	"f32DutyW"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x275
	.uleb128 0x22
	.string	"u16LocT12PV"
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x1f3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"GCCU6_Init"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB395
	.uaword	.LFE395
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x76d3
	.uleb128 0x2a
	.uaword	.LASF25
	.byte	0x1
	.byte	0xab
	.uaword	0x6b75
	.byte	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x2b
	.uaword	.LASF0
	.byte	0x1
	.byte	0xac
	.uaword	0x5ee6
	.uaword	.LLST1
	.uleb128 0x2c
	.string	"config"
	.byte	0x1
	.byte	0xad
	.uaword	0x6cdc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.uaword	0x6f90
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xed
	.uaword	0x74b7
	.uleb128 0x2e
	.uaword	0x6fc4
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x6fb8
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x6fac
	.uaword	.LLST2
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x31
	.uaword	0x6fd0
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x6fdf
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0xf0
	.uaword	0x74db
	.uleb128 0x33
	.uaword	0x700f
	.uahalf	0x9c3
	.uleb128 0x2f
	.uaword	0x7003
	.uaword	.LLST4
	.byte	0
	.uleb128 0x32
	.uaword	0x701e
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0xf1
	.uaword	0x7517
	.uleb128 0x2e
	.uaword	0x705d
	.byte	0
	.uleb128 0x2e
	.uaword	0x7051
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x7045
	.uaword	.LLST5
	.uleb128 0x34
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x31
	.uaword	0x7069
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x7078
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xf2
	.uaword	0x7552
	.uleb128 0x2e
	.uaword	0x70bb
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x70ad
	.byte	0
	.uleb128 0x2f
	.uaword	0x70a1
	.uaword	.LLST7
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x35
	.uaword	0x70cd
	.byte	0
	.uleb128 0x35
	.uaword	0x70db
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x70e9
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0xf4
	.uaword	0x7575
	.uleb128 0x2e
	.uaword	0x7117
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x710b
	.uaword	.LLST8
	.byte	0
	.uleb128 0x32
	.uaword	0x7125
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xf5
	.uaword	0x7598
	.uleb128 0x2e
	.uaword	0x7156
	.byte	0
	.uleb128 0x2f
	.uaword	0x714a
	.uaword	.LLST9
	.byte	0
	.uleb128 0x32
	.uaword	0x7165
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xf7
	.uaword	0x75cb
	.uleb128 0x2e
	.uaword	0x7193
	.byte	0x6
	.uleb128 0x2f
	.uaword	0x7187
	.uaword	.LLST10
	.uleb128 0x34
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x35
	.uaword	0x71a2
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x7165
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0xfa
	.uaword	0x7604
	.uleb128 0x2f
	.uaword	0x7193
	.uaword	.LLST11
	.uleb128 0x2f
	.uaword	0x7187
	.uaword	.LLST12
	.uleb128 0x34
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x31
	.uaword	0x71a2
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x71b0
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x7622
	.uleb128 0x2f
	.uaword	0x71d5
	.uaword	.LLST14
	.byte	0
	.uleb128 0x36
	.uaword	0x73c3
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x7663
	.uleb128 0x2f
	.uaword	0x7406
	.uaword	.LLST15
	.uleb128 0x2f
	.uaword	0x73f5
	.uaword	.LLST15
	.uleb128 0x2f
	.uaword	0x73e4
	.uaword	.LLST15
	.uleb128 0x34
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x37
	.uaword	0x7417
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL3
	.uaword	0x945d
	.uaword	0x7677
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL14
	.uaword	0x9483
	.uaword	0x7695
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
	.uaword	0x94b9
	.uleb128 0x38
	.uaword	.LVL16
	.uaword	0x94d4
	.uaword	0x76bc
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL18
	.uaword	0x9506
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
	.string	"GCCU6_vidMcuAscExit"
	.byte	0x1
	.uahalf	0x3b2
	.byte	0x1
	.byte	0x1
	.uaword	0x7718
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x3b4
	.uaword	0x6b75
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x3b5
	.uaword	0x5ee6
	.uleb128 0x22
	.string	"pslr"
	.byte	0x1
	.uahalf	0x3b6
	.uaword	0x2ea4
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"GCCU6_bGetAscRecoverCondition"
	.byte	0x1
	.uahalf	0x4ef
	.byte	0x1
	.uaword	0x28e
	.byte	0x1
	.uaword	0x784a
	.uleb128 0x27
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x4f1
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocPwmSttOff"
	.byte	0x1
	.uahalf	0x4f2
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocAscEnaPinVal"
	.byte	0x1
	.uahalf	0x4f3
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocEmgcyFaultDet"
	.byte	0x1
	.uahalf	0x4f4
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocIgbtHPinLevel"
	.byte	0x1
	.uahalf	0x4f5
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocIgbtLPinLevel"
	.byte	0x1
	.uahalf	0x4f6
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocOvcUPinLevel"
	.byte	0x1
	.uahalf	0x4f7
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocOvcVPinLevel"
	.byte	0x1
	.uahalf	0x4f8
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocOvcWPinLevel"
	.byte	0x1
	.uahalf	0x4f9
	.uaword	0x28e
	.uleb128 0x22
	.string	"bLocDrvClkFault"
	.byte	0x1
	.uahalf	0x4fa
	.uaword	0x28e
	.uleb128 0x22
	.string	"u8LocFaultLevel"
	.byte	0x1
	.uahalf	0x4fb
	.uaword	0x1c8
	.byte	0
	.uleb128 0x1f
	.string	"GCCU6_vidStopPwmOutput"
	.byte	0x1
	.uahalf	0x405
	.byte	0x1
	.byte	0x1
	.uaword	0x7894
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x407
	.uaword	0x6b75
	.uleb128 0x22
	.string	"mcmouts"
	.byte	0x1
	.uahalf	0x408
	.uaword	0x2d27
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x409
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x1f
	.string	"GCCU6_vidStartPwmOutput"
	.byte	0x1
	.uahalf	0x423
	.byte	0x1
	.byte	0x1
	.uaword	0x78df
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x425
	.uaword	0x6b75
	.uleb128 0x22
	.string	"mcmouts"
	.byte	0x1
	.uahalf	0x426
	.uaword	0x2d27
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x427
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidMotorStateMng"
	.byte	0x1
	.uahalf	0x128
	.byte	0x1
	.uaword	.LFB396
	.uaword	.LFE396
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7c5d
	.uleb128 0x3e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x28e
	.uaword	.LLST18
	.uleb128 0x36
	.uaword	0x7718
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.uahalf	0x172
	.uaword	0x79de
	.uleb128 0x34
	.uaword	.LBB145
	.uaword	.LBE145
	.uleb128 0x31
	.uaword	0x7745
	.uaword	.LLST19
	.uleb128 0x31
	.uaword	0x7751
	.uaword	.LLST20
	.uleb128 0x31
	.uaword	0x7767
	.uaword	.LLST21
	.uleb128 0x31
	.uaword	0x7780
	.uaword	.LLST21
	.uleb128 0x31
	.uaword	0x779a
	.uaword	.LLST23
	.uleb128 0x31
	.uaword	0x77b4
	.uaword	.LLST24
	.uleb128 0x31
	.uaword	0x77ce
	.uaword	.LLST25
	.uleb128 0x31
	.uaword	0x77e7
	.uaword	.LLST26
	.uleb128 0x31
	.uaword	0x7800
	.uaword	.LLST27
	.uleb128 0x31
	.uaword	0x7819
	.uaword	.LLST21
	.uleb128 0x31
	.uaword	0x7831
	.uaword	.LLST29
	.uleb128 0x38
	.uaword	.LVL29
	.uaword	0x953e
	.uaword	0x79af
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL31
	.uaword	0x956a
	.uleb128 0x3a
	.uaword	.LVL33
	.uaword	0x959f
	.uleb128 0x3a
	.uaword	.LVL35
	.uaword	0x95d4
	.uleb128 0x3a
	.uaword	.LVL37
	.uaword	0x9603
	.uleb128 0x3a
	.uaword	.LVL39
	.uaword	0x9632
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7360
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.uahalf	0x195
	.uaword	0x7a6c
	.uleb128 0x34
	.uaword	.LBB147
	.uaword	.LBE147
	.uleb128 0x31
	.uaword	0x7381
	.uaword	.LLST30
	.uleb128 0x31
	.uaword	0x738d
	.uaword	.LLST31
	.uleb128 0x36
	.uaword	0x724d
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x7a2b
	.uleb128 0x2f
	.uaword	0x7269
	.uaword	.LLST31
	.byte	0
	.uleb128 0x3f
	.uaword	0x701e
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.uahalf	0x3e4
	.uleb128 0x2f
	.uaword	0x705d
	.uaword	.LLST33
	.uleb128 0x2f
	.uaword	0x7051
	.uaword	.LLST34
	.uleb128 0x2f
	.uaword	0x7045
	.uaword	.LLST35
	.uleb128 0x34
	.uaword	.LBB151
	.uaword	.LBE151
	.uleb128 0x31
	.uaword	0x7069
	.uaword	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x784a
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x7aa6
	.uleb128 0x34
	.uaword	.LBB153
	.uaword	.LBE153
	.uleb128 0x31
	.uaword	0x786b
	.uaword	.LLST37
	.uleb128 0x31
	.uaword	0x7877
	.uaword	.LLST38
	.uleb128 0x31
	.uaword	0x7887
	.uaword	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7894
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x7ae0
	.uleb128 0x34
	.uaword	.LBB155
	.uaword	.LBE155
	.uleb128 0x31
	.uaword	0x78b6
	.uaword	.LLST40
	.uleb128 0x31
	.uaword	0x78c2
	.uaword	.LLST41
	.uleb128 0x31
	.uaword	0x78d2
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x76d3
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.uahalf	0x158
	.uaword	0x7b73
	.uleb128 0x34
	.uaword	.LBB157
	.uaword	.LBE157
	.uleb128 0x31
	.uaword	0x76f2
	.uaword	.LLST43
	.uleb128 0x31
	.uaword	0x76fe
	.uaword	.LLST44
	.uleb128 0x40
	.uaword	0x770a
	.uleb128 0x36
	.uaword	0x7225
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x3cb
	.uaword	0x7b32
	.uleb128 0x2f
	.uaword	0x7241
	.uaword	.LLST45
	.byte	0
	.uleb128 0x3f
	.uaword	0x701e
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.uahalf	0x3cc
	.uleb128 0x2f
	.uaword	0x705d
	.uaword	.LLST46
	.uleb128 0x2f
	.uaword	0x7051
	.uaword	.LLST47
	.uleb128 0x2f
	.uaword	0x7045
	.uaword	.LLST48
	.uleb128 0x34
	.uaword	.LBB161
	.uaword	.LBE161
	.uleb128 0x31
	.uaword	0x7069
	.uaword	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x784a
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x7bad
	.uleb128 0x34
	.uaword	.LBB163
	.uaword	.LBE163
	.uleb128 0x31
	.uaword	0x786b
	.uaword	.LLST50
	.uleb128 0x31
	.uaword	0x7877
	.uaword	.LLST51
	.uleb128 0x31
	.uaword	0x7887
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x739a
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x7c13
	.uleb128 0x34
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x31
	.uaword	0x73b7
	.uaword	.LLST53
	.uleb128 0x41
	.uaword	0x6f40
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x1
	.byte	0x9c
	.uleb128 0x2f
	.uaword	0x6f75
	.uaword	.LLST54
	.uleb128 0x2f
	.uaword	0x6f69
	.uaword	.LLST54
	.uleb128 0x2f
	.uaword	0x6f5d
	.uaword	.LLST56
	.uleb128 0x34
	.uaword	.LBB167
	.uaword	.LBE167
	.uleb128 0x31
	.uaword	0x6f81
	.uaword	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL27
	.uaword	0x9661
	.uleb128 0x3a
	.uaword	.LVL47
	.uaword	0x9695
	.uleb128 0x38
	.uaword	.LVL48
	.uaword	0x96cc
	.uaword	0x7c38
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL86
	.uaword	0x96e7
	.uleb128 0x3a
	.uaword	.LVL87
	.uaword	0x971e
	.uleb128 0x3a
	.uaword	.LVL88
	.uaword	0x975d
	.uleb128 0x3a
	.uaword	.LVL89
	.uaword	0x979c
	.byte	0
	.uleb128 0x42
	.uaword	0x73c3
	.uaword	.LFB397
	.uaword	.LFE397
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7c97
	.uleb128 0x2f
	.uaword	0x73e4
	.uaword	.LLST58
	.uleb128 0x2f
	.uaword	0x73f5
	.uaword	.LLST59
	.uleb128 0x2f
	.uaword	0x7406
	.uaword	.LLST60
	.uleb128 0x31
	.uaword	0x7417
	.uaword	.LLST61
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidExcitationPwmState"
	.byte	0x1
	.uahalf	0x243
	.byte	0x1
	.uaword	.LFB398
	.uaword	.LFE398
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7d4a
	.uleb128 0x43
	.string	"u8ExciPwmStateG"
	.byte	0x1
	.uahalf	0x243
	.uaword	0x1c8
	.uaword	.LLST62
	.uleb128 0x38
	.uaword	.LVL107
	.uaword	0x97db
	.uaword	0x7cfd
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x44
	.uaword	.LVL108
	.byte	0x1
	.uaword	0x97db
	.uaword	0x7d18
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x215
	.byte	0
	.uleb128 0x38
	.uaword	.LVL110
	.uaword	0x97db
	.uaword	0x7d31
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x45
	.uaword	.LVL111
	.byte	0x1
	.uaword	0x97db
	.uleb128 0x39
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x215
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetPwmMinDutyCycle"
	.byte	0x1
	.uahalf	0x260
	.byte	0x1
	.uaword	.LFB399
	.uaword	.LFE399
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7d95
	.uleb128 0x46
	.string	"f32MinDutyCyc"
	.byte	0x1
	.uahalf	0x260
	.uaword	0x7d95
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.uaword	0x275
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetPwmMaxDutyCycle"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7de5
	.uleb128 0x46
	.string	"f32MaxDutyCyc"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x7d95
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetPwmModReq"
	.byte	0x1
	.uahalf	0x27a
	.byte	0x1
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7e26
	.uleb128 0x46
	.string	"u16PwmMod"
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x7e26
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.uaword	0x1f3
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_u16GetPwmModReq"
	.byte	0x1
	.uahalf	0x288
	.byte	0x1
	.uaword	0x1f3
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_u8GetPwmState"
	.byte	0x1
	.uahalf	0x296
	.byte	0x1
	.uaword	0x1c8
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_u16GetPwmDutyUI"
	.byte	0x1
	.uahalf	0x2a4
	.byte	0x1
	.uaword	0x1f3
	.uaword	.LFB404
	.uaword	.LFE404
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_u16GetPwmDutyVI"
	.byte	0x1
	.uahalf	0x2b2
	.byte	0x1
	.uaword	0x1f3
	.uaword	.LFB405
	.uaword	.LFE405
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_u16GetPwmDutyWI"
	.byte	0x1
	.uahalf	0x2c0
	.byte	0x1
	.uaword	0x1f3
	.uaword	.LFB406
	.uaword	.LFE406
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_u16GetPwmDeadTime"
	.byte	0x1
	.uahalf	0x2ce
	.byte	0x1
	.uaword	0x1f3
	.uaword	.LFB407
	.uaword	.LFE407
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7f6b
	.uleb128 0x49
	.string	"u16LocPwmDeadTime"
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0x1f3
	.byte	0x5
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.uleb128 0x4a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x6b75
	.byte	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetPwmHlPeriod"
	.byte	0x1
	.uahalf	0x2e1
	.byte	0x1
	.uaword	.LFB408
	.uaword	.LFE408
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7fb4
	.uleb128 0x46
	.string	"u16LocT12Period"
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x7e26
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetMotorSpdRdyFlg"
	.byte	0x1
	.uahalf	0x2f4
	.byte	0x1
	.uaword	.LFB409
	.uaword	.LFE409
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7ffd
	.uleb128 0x46
	.string	"bMotorSpdRdy"
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0x28e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetClrTrapReq"
	.byte	0x1
	.uahalf	0x303
	.byte	0x1
	.uaword	.LFB410
	.uaword	.LFE410
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8041
	.uleb128 0x46
	.string	"bClrTrapReq"
	.byte	0x1
	.uahalf	0x303
	.uaword	0x28e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4b
	.uaword	0x71e1
	.uaword	.LFB411
	.uaword	.LFE411
	.uaword	.LLST63
	.byte	0x1
	.uaword	0x8067
	.uleb128 0x4c
	.uaword	0x71fa
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.uaword	0x7207
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.string	"GCCU6_vidMcuAscEnter"
	.byte	0x1
	.uahalf	0x326
	.byte	0x1
	.uaword	.LFB412
	.uaword	.LFE412
	.uaword	.LLST64
	.byte	0x1
	.uaword	0x8206
	.uleb128 0x4e
	.string	"bLocFltPinVal"
	.byte	0x1
	.uahalf	0x328
	.uaword	0x28e
	.uaword	.LLST65
	.uleb128 0x4e
	.string	"pslr"
	.byte	0x1
	.uahalf	0x32a
	.uaword	0x2ea4
	.uaword	.LLST66
	.uleb128 0x4a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x32b
	.uaword	0x6b75
	.byte	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x4a
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x32c
	.uaword	0x5ee6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	0x71e1
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x1
	.uahalf	0x360
	.uaword	0x810f
	.uleb128 0x2f
	.uaword	0x71fa
	.uaword	.LLST67
	.uleb128 0x34
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x37
	.uaword	0x7207
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x6f90
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x1
	.uahalf	0x39e
	.uaword	0x8152
	.uleb128 0x2f
	.uaword	0x6fc4
	.uaword	.LLST68
	.uleb128 0x2f
	.uaword	0x6fb8
	.uaword	.LLST68
	.uleb128 0x2f
	.uaword	0x6fac
	.uaword	.LLST70
	.uleb128 0x34
	.uaword	.LBB171
	.uaword	.LBE171
	.uleb128 0x31
	.uaword	0x6fd0
	.uaword	.LLST71
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x701e
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x8195
	.uleb128 0x2f
	.uaword	0x705d
	.uaword	.LLST72
	.uleb128 0x2f
	.uaword	0x7051
	.uaword	.LLST73
	.uleb128 0x2f
	.uaword	0x7045
	.uaword	.LLST74
	.uleb128 0x34
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x31
	.uaword	0x7069
	.uaword	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x6f40
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.uahalf	0x3a4
	.uaword	0x81d8
	.uleb128 0x2f
	.uaword	0x6f75
	.uaword	.LLST76
	.uleb128 0x2f
	.uaword	0x6f69
	.uaword	.LLST76
	.uleb128 0x2f
	.uaword	0x6f5d
	.uaword	.LLST78
	.uleb128 0x34
	.uaword	.LBB175
	.uaword	.LBE175
	.uleb128 0x31
	.uaword	0x6f81
	.uaword	.LLST79
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL122
	.uaword	0x956a
	.uleb128 0x3a
	.uaword	.LVL124
	.uaword	0x959f
	.uleb128 0x3a
	.uaword	.LVL126
	.uaword	0x95d4
	.uleb128 0x3a
	.uaword	.LVL128
	.uaword	0x9603
	.uleb128 0x3a
	.uaword	.LVL130
	.uaword	0x9632
	.byte	0
	.uleb128 0x42
	.uaword	0x76d3
	.uaword	.LFB413
	.uaword	.LFE413
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8296
	.uleb128 0x37
	.uaword	0x76f2
	.byte	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x31
	.uaword	0x76fe
	.uaword	.LLST80
	.uleb128 0x37
	.uaword	0x770a
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
	.uaword	0x7225
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x1
	.uahalf	0x3cb
	.uaword	0x825c
	.uleb128 0x2f
	.uaword	0x7241
	.uaword	.LLST81
	.byte	0
	.uleb128 0x3f
	.uaword	0x701e
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x1
	.uahalf	0x3cc
	.uleb128 0x2e
	.uaword	0x705d
	.byte	0
	.uleb128 0x2e
	.uaword	0x7051
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x7045
	.uaword	.LLST82
	.uleb128 0x34
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x31
	.uaword	0x7069
	.uaword	.LLST83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.uaword	0x7360
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8310
	.uleb128 0x37
	.uaword	0x7381
	.byte	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uleb128 0x37
	.uaword	0x738d
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	0x724d
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x82da
	.uleb128 0x4c
	.uaword	0x7269
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3f
	.uaword	0x701e
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.uahalf	0x3e4
	.uleb128 0x2e
	.uaword	0x705d
	.byte	0
	.uleb128 0x2e
	.uaword	0x7051
	.byte	0x1
	.uleb128 0x4c
	.uaword	0x7045
	.byte	0x1
	.byte	0x6f
	.uleb128 0x34
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x37
	.uaword	0x7069
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSoftTrapTrigger"
	.byte	0x1
	.uahalf	0x3f0
	.byte	0x1
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8372
	.uleb128 0x46
	.string	"bEmgcyStopReq"
	.byte	0x1
	.uahalf	0x3f0
	.uaword	0x8372
	.byte	0x1
	.byte	0x54
	.uleb128 0x3f
	.uaword	0x7225
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x1
	.uahalf	0x3f6
	.uleb128 0x2f
	.uaword	0x7241
	.uaword	.LLST84
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x28e
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidEnaTrapPinFunc"
	.byte	0x1
	.uahalf	0x441
	.byte	0x1
	.uaword	.LFB418
	.uaword	.LFE418
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x865c
	.uleb128 0x3e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x443
	.uaword	0x5ee6
	.uaword	.LLST85
	.uleb128 0x36
	.uaword	0x7275
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x1
	.uahalf	0x447
	.uaword	0x83f0
	.uleb128 0x2e
	.uaword	0x729e
	.byte	0
	.uleb128 0x2f
	.uaword	0x7292
	.uaword	.LLST85
	.uleb128 0x34
	.uaword	.LBB187
	.uaword	.LBE187
	.uleb128 0x35
	.uaword	0x72b1
	.byte	0x8
	.uleb128 0x4f
	.uaword	0x72bf
	.uahalf	0x100
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7275
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.uahalf	0x448
	.uaword	0x842b
	.uleb128 0x2e
	.uaword	0x729e
	.byte	0x2
	.uleb128 0x2f
	.uaword	0x7292
	.uaword	.LLST87
	.uleb128 0x34
	.uaword	.LBB189
	.uaword	.LBE189
	.uleb128 0x35
	.uaword	0x72b1
	.byte	0xa
	.uleb128 0x4f
	.uaword	0x72bf
	.uahalf	0x400
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7275
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.uahalf	0x449
	.uaword	0x8466
	.uleb128 0x2e
	.uaword	0x729e
	.byte	0x4
	.uleb128 0x2f
	.uaword	0x7292
	.uaword	.LLST88
	.uleb128 0x34
	.uaword	.LBB191
	.uaword	.LBE191
	.uleb128 0x35
	.uaword	0x72b1
	.byte	0xc
	.uleb128 0x4f
	.uaword	0x72bf
	.uahalf	0x1000
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7275
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.uahalf	0x44a
	.uaword	0x84a1
	.uleb128 0x2e
	.uaword	0x729e
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x7292
	.uaword	.LLST89
	.uleb128 0x34
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x35
	.uaword	0x72b1
	.byte	0x9
	.uleb128 0x4f
	.uaword	0x72bf
	.uahalf	0x200
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7275
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.uahalf	0x44b
	.uaword	0x84dc
	.uleb128 0x2e
	.uaword	0x729e
	.byte	0x3
	.uleb128 0x2f
	.uaword	0x7292
	.uaword	.LLST90
	.uleb128 0x34
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x35
	.uaword	0x72b1
	.byte	0xb
	.uleb128 0x4f
	.uaword	0x72bf
	.uahalf	0x800
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7275
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.uahalf	0x44c
	.uaword	0x8517
	.uleb128 0x2e
	.uaword	0x729e
	.byte	0x5
	.uleb128 0x2f
	.uaword	0x7292
	.uaword	.LLST91
	.uleb128 0x34
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x35
	.uaword	0x72b1
	.byte	0xd
	.uleb128 0x4f
	.uaword	0x72bf
	.uahalf	0x2000
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x72cd
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.uahalf	0x44d
	.uaword	0x853b
	.uleb128 0x2e
	.uaword	0x72f7
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x72eb
	.uaword	.LLST92
	.byte	0
	.uleb128 0x36
	.uaword	0x7332
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.uahalf	0x455
	.uaword	0x8559
	.uleb128 0x2f
	.uaword	0x7353
	.uaword	.LLST93
	.byte	0
	.uleb128 0x50
	.uaword	0x7360
	.uaword	.LBB202
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x458
	.uaword	0x85e3
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.uaword	0x7381
	.uaword	.LLST94
	.uleb128 0x31
	.uaword	0x738d
	.uaword	.LLST95
	.uleb128 0x36
	.uaword	0x724d
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x85a2
	.uleb128 0x2f
	.uaword	0x7269
	.uaword	.LLST95
	.byte	0
	.uleb128 0x3f
	.uaword	0x701e
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.uahalf	0x3e4
	.uleb128 0x2f
	.uaword	0x705d
	.uaword	.LLST97
	.uleb128 0x2f
	.uaword	0x7051
	.uaword	.LLST98
	.uleb128 0x2f
	.uaword	0x7045
	.uaword	.LLST99
	.uleb128 0x34
	.uaword	.LBB207
	.uaword	.LBE207
	.uleb128 0x31
	.uaword	0x7069
	.uaword	.LLST100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7165
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.uahalf	0x45a
	.uaword	0x861d
	.uleb128 0x2f
	.uaword	0x7193
	.uaword	.LLST101
	.uleb128 0x2f
	.uaword	0x7187
	.uaword	.LLST102
	.uleb128 0x34
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x31
	.uaword	0x71a2
	.uaword	.LLST103
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x7305
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x1
	.uahalf	0x451
	.uaword	0x8639
	.uleb128 0x4c
	.uaword	0x7325
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	.LVL176
	.uaword	0x9483
	.uaword	0x8651
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
	.uaword	.LVL177
	.byte	0x1
	.uaword	0x9810
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSwitchPwmUpdEvent"
	.byte	0x1
	.uahalf	0x46a
	.byte	0x1
	.uaword	.LFB419
	.uaword	.LFE419
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x86c9
	.uleb128 0x4e
	.string	"bLocMidPointErrFlg"
	.byte	0x1
	.uahalf	0x46c
	.uaword	0x28e
	.uaword	.LLST104
	.uleb128 0x4e
	.string	"u16LocT12CntVal"
	.byte	0x1
	.uahalf	0x46d
	.uaword	0x1f3
	.uaword	.LLST105
	.byte	0
	.uleb128 0x42
	.uaword	0x7718
	.uaword	.LFB420
	.uaword	.LFE420
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8776
	.uleb128 0x35
	.uaword	0x7745
	.byte	0
	.uleb128 0x31
	.uaword	0x7751
	.uaword	.LLST106
	.uleb128 0x35
	.uaword	0x7767
	.byte	0
	.uleb128 0x35
	.uaword	0x7780
	.byte	0
	.uleb128 0x31
	.uaword	0x779a
	.uaword	.LLST107
	.uleb128 0x31
	.uaword	0x77b4
	.uaword	.LLST108
	.uleb128 0x31
	.uaword	0x77ce
	.uaword	.LLST109
	.uleb128 0x31
	.uaword	0x77e7
	.uaword	.LLST110
	.uleb128 0x31
	.uaword	0x7800
	.uaword	.LLST111
	.uleb128 0x35
	.uaword	0x7819
	.byte	0
	.uleb128 0x31
	.uaword	0x7831
	.uaword	.LLST112
	.uleb128 0x38
	.uaword	.LVL195
	.uaword	0x953e
	.uaword	0x8748
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL197
	.uaword	0x956a
	.uleb128 0x3a
	.uaword	.LVL199
	.uaword	0x959f
	.uleb128 0x3a
	.uaword	.LVL201
	.uaword	0x95d4
	.uleb128 0x3a
	.uaword	.LVL203
	.uaword	0x9603
	.uleb128 0x3a
	.uaword	.LVL205
	.uaword	0x9632
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetAscStatus"
	.byte	0x1
	.uahalf	0x540
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB421
	.uaword	.LFE421
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x87b8
	.uleb128 0x22
	.string	"bLocAscSts"
	.byte	0x1
	.uahalf	0x542
	.uaword	0x28e
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetIuvwZeroCompReq"
	.byte	0x1
	.uahalf	0x559
	.byte	0x1
	.uaword	.LFB422
	.uaword	.LFE422
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8802
	.uleb128 0x46
	.string	"bIuvwCompReq"
	.byte	0x1
	.uahalf	0x559
	.uaword	0x8372
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetHwFaultIgbtH"
	.byte	0x1
	.uahalf	0x568
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB423
	.uaword	.LFE423
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x886d
	.uleb128 0x3e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x56a
	.uaword	0x28e
	.uaword	.LLST113
	.uleb128 0x3e
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x56b
	.uaword	0x28e
	.uaword	.LLST114
	.uleb128 0x3e
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x56c
	.uaword	0x28e
	.uaword	.LLST115
	.uleb128 0x3a
	.uaword	.LVL216
	.uaword	0x956a
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetHwFaultIgbtL"
	.byte	0x1
	.uahalf	0x590
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB424
	.uaword	.LFE424
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x88d8
	.uleb128 0x3e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x592
	.uaword	0x28e
	.uaword	.LLST116
	.uleb128 0x3e
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x593
	.uaword	0x28e
	.uaword	.LLST117
	.uleb128 0x3e
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x594
	.uaword	0x28e
	.uaword	.LLST118
	.uleb128 0x3a
	.uaword	.LVL222
	.uaword	0x959f
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetHwFaultOvcU"
	.byte	0x1
	.uahalf	0x5b8
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB425
	.uaword	.LFE425
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8932
	.uleb128 0x3e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x5ba
	.uaword	0x28e
	.uaword	.LLST119
	.uleb128 0x3e
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x5bb
	.uaword	0x28e
	.uaword	.LLST120
	.uleb128 0x3a
	.uaword	.LVL229
	.uaword	0x95d4
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetHwFaultOvcV"
	.byte	0x1
	.uahalf	0x5dc
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB426
	.uaword	.LFE426
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x898c
	.uleb128 0x3e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x5de
	.uaword	0x28e
	.uaword	.LLST121
	.uleb128 0x3e
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x5df
	.uaword	0x28e
	.uaword	.LLST122
	.uleb128 0x3a
	.uaword	.LVL235
	.uaword	0x9603
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetHwFaultOvcW"
	.byte	0x1
	.uahalf	0x600
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB427
	.uaword	.LFE427
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x89e6
	.uleb128 0x3e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x602
	.uaword	0x28e
	.uaword	.LLST123
	.uleb128 0x3e
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x603
	.uaword	0x28e
	.uaword	.LLST124
	.uleb128 0x3a
	.uaword	.LVL241
	.uaword	0x9632
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_bGetHwFaultDcOvVolt"
	.byte	0x1
	.uahalf	0x624
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB428
	.uaword	.LFE428
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a27
	.uleb128 0x27
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x626
	.uaword	0x28e
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_bGetZeroMatchFlg"
	.byte	0x1
	.uahalf	0x645
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB429
	.uaword	.LFE429
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"GCCU6_vidSetHvOverFlg"
	.byte	0x1
	.uahalf	0x653
	.byte	0x1
	.uaword	.LFB430
	.uaword	.LFE430
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a94
	.uleb128 0x46
	.string	"bHvOvFlg"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x8372
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"GCCU6_bGetPwmRuningFlg"
	.byte	0x1
	.uahalf	0x661
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB431
	.uaword	.LFE431
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"GCCU6_vidPwmDrvClkDiag"
	.byte	0x1
	.uahalf	0x66f
	.byte	0x1
	.uaword	.LFB432
	.uaword	.LFE432
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x48
	.byte	0x1
	.string	"GCCU6_u8GetIGBTStatus"
	.byte	0x1
	.uahalf	0x6c5
	.byte	0x1
	.uaword	0x1c8
	.uaword	.LFB433
	.uaword	.LFE433
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8b33
	.uleb128 0x4e
	.string	"u8ReturnVal"
	.byte	0x1
	.uahalf	0x6c7
	.uaword	0x1c8
	.uaword	.LLST125
	.byte	0
	.uleb128 0x2c
	.string	"GCCU6_udtIfxCcu6PwmHlCfg"
	.byte	0x1
	.byte	0x73
	.uaword	0x6ae4
	.byte	0x5
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.uleb128 0x53
	.string	"GMAIN_u8IgbtFltConfirmCntC"
	.byte	0x12
	.byte	0x48
	.uaword	0x8b7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x1c8
	.uleb128 0x53
	.string	"GMAIN_bSoftOvCurrPhsUFlg"
	.byte	0x12
	.byte	0x5c
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GMAIN_bSoftOvCurrPhsVFlg"
	.byte	0x12
	.byte	0x5d
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GMAIN_bSoftOvCurrPhsWFlg"
	.byte	0x12
	.byte	0x5e
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GMAIN_u8IgbtHighFltCnt"
	.byte	0x12
	.byte	0x7b
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x1c8
	.uleb128 0x53
	.string	"GMAIN_u8IgbtLowFltCnt"
	.byte	0x12
	.byte	0x7c
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x4d0
	.uaword	0x8c3c
	.uleb128 0x7
	.uaword	0x332
	.byte	0x3
	.byte	0
	.uleb128 0x53
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xaa
	.uaword	0x8c59
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x8c2c
	.uleb128 0x53
	.string	"GCCU6_bDualSmpEnaC"
	.byte	0x13
	.byte	0x38
	.uaword	0x8372
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwOvcFltDetEnaC"
	.byte	0x13
	.byte	0x39
	.uaword	0x8372
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwPinAscEnaC"
	.byte	0x13
	.byte	0x3a
	.uaword	0x8372
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_kf32MidPointDutyHC"
	.byte	0x13
	.byte	0x3d
	.uaword	0x7d95
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_kf32MidPointDutyLC"
	.byte	0x13
	.byte	0x3e
	.uaword	0x7d95
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_ku8AscRecoverCntMaxC"
	.byte	0x13
	.byte	0x3f
	.uaword	0x8b7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_ku8OvcRcvCntMaxC"
	.byte	0x13
	.byte	0x40
	.uaword	0x8b7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_ku8PwmMidPointFaultC"
	.byte	0x13
	.byte	0x41
	.uaword	0x8b7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_ku8PwmMidPotStartDelayC"
	.byte	0x13
	.byte	0x42
	.uaword	0x8b7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bAkdAfterAscReq"
	.byte	0x13
	.byte	0x5a
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bClrTrapReq"
	.byte	0x13
	.byte	0x5b
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwFaultDcOvVolt"
	.byte	0x13
	.byte	0x5c
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwFaultIgbtH"
	.byte	0x13
	.byte	0x5d
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwFaultIgbtL"
	.byte	0x13
	.byte	0x5e
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwFaultOvcU"
	.byte	0x13
	.byte	0x5f
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwFaultOvcV"
	.byte	0x13
	.byte	0x60
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bHwFaultOvcW"
	.byte	0x13
	.byte	0x61
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bIgbtHighSideShort"
	.byte	0x13
	.byte	0x62
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x28e
	.uleb128 0x53
	.string	"GCCU6_bIgbtLowSideShort"
	.byte	0x13
	.byte	0x63
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bIsGCCU6Start"
	.byte	0x13
	.byte	0x64
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bIuvwCompReq"
	.byte	0x13
	.byte	0x65
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bMotorSpdRdy"
	.byte	0x13
	.byte	0x66
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bP5VDiagReinitCmd"
	.byte	0x13
	.byte	0x67
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bP5VHSFltFlg"
	.byte	0x13
	.byte	0x68
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bP5VLSFltFlg"
	.byte	0x13
	.byte	0x69
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bPwmMidPointU"
	.byte	0x13
	.byte	0x6a
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bPwmMidPointV"
	.byte	0x13
	.byte	0x6b
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bPwmMidPointW"
	.byte	0x13
	.byte	0x6c
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bPwmOnGoingFlg"
	.byte	0x13
	.byte	0x6d
	.uaword	0x8e94
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bT12ZeroMatchFlg"
	.byte	0x13
	.byte	0x6e
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_bTrapTrigger"
	.byte	0x13
	.byte	0x6f
	.uaword	0x28e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_f32DrvClkHsDuty"
	.byte	0x13
	.byte	0x70
	.uaword	0x9038
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x275
	.uleb128 0x53
	.string	"GCCU6_f32DrvClkLsDuty"
	.byte	0x13
	.byte	0x71
	.uaword	0x9038
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_f32HighVolPhys"
	.byte	0x13
	.byte	0x72
	.uaword	0x9038
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_f32PwmDutyPhysUZ"
	.byte	0x13
	.byte	0x73
	.uaword	0x9038
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_f32PwmDutyPhysVZ"
	.byte	0x13
	.byte	0x74
	.uaword	0x9038
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_f32PwmDutyPhysWZ"
	.byte	0x13
	.byte	0x75
	.uaword	0x9038
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x23d
	.uaword	0x90ea
	.uleb128 0x7
	.uaword	0x332
	.byte	0x2
	.byte	0
	.uleb128 0x53
	.string	"GCCU6_au32PWMOnTime"
	.byte	0x13
	.byte	0x76
	.uaword	0x90da
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u32DrvClkHsDutyRaw"
	.byte	0x13
	.byte	0x77
	.uaword	0x7220
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u32DrvClkHsPerdRaw"
	.byte	0x13
	.byte	0x78
	.uaword	0x7220
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u32DrvClkLsDutyRaw"
	.byte	0x13
	.byte	0x79
	.uaword	0x7220
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u32DrvClkLsPerdRaw"
	.byte	0x13
	.byte	0x7a
	.uaword	0x7220
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u32TrapCreq"
	.byte	0x13
	.byte	0x7b
	.uaword	0x7220
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8AscRecoverCnt"
	.byte	0x13
	.byte	0x7c
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8OvcRcvCnt"
	.byte	0x13
	.byte	0x7d
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8McuAscSttStep"
	.byte	0x13
	.byte	0x7e
	.uaword	0x1c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8McuAscType"
	.byte	0x13
	.byte	0x7f
	.uaword	0x1c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8P5VHSFltCnt"
	.byte	0x13
	.byte	0x80
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8P5VLSFltCnt"
	.byte	0x13
	.byte	0x81
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8P5VPowerMngStt"
	.byte	0x13
	.byte	0x82
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8P5VSelfTstTimCnt"
	.byte	0x13
	.byte	0x83
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8StartMidPotDetCnt"
	.byte	0x13
	.byte	0x84
	.uaword	0x8c08
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8PreTestStep"
	.byte	0x13
	.byte	0x85
	.uaword	0x1c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u8PwmState"
	.byte	0x13
	.byte	0x86
	.uaword	0x1c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16AlimPowerOnDelay"
	.byte	0x13
	.byte	0x87
	.uaword	0x1f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16HighVolAdc"
	.byte	0x13
	.byte	0x89
	.uaword	0x9335
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x1f3
	.uleb128 0x53
	.string	"GCCU6_u16McuAscSttDelay"
	.byte	0x13
	.byte	0x8a
	.uaword	0x1f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16P5VHSAdc"
	.byte	0x13
	.byte	0x8b
	.uaword	0x9335
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16PowerOnDelay"
	.byte	0x13
	.byte	0x8c
	.uaword	0x1f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16PwmMidPointErrCnt"
	.byte	0x13
	.byte	0x8e
	.uaword	0x9335
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16PwmModReq"
	.byte	0x13
	.byte	0x90
	.uaword	0x1f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16T12CntVal"
	.byte	0x13
	.byte	0x91
	.uaword	0x9335
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_u16T12PeriodVal"
	.byte	0x13
	.byte	0x92
	.uaword	0x9335
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"GCCU6_kudtIfxCcu6TimerWithTriggerCfg"
	.byte	0x14
	.byte	0x6
	.uaword	0x6cb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.string	"GCCU6_pstrModule"
	.byte	0x1
	.byte	0x74
	.uaword	0x5ee6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GCCU6_pstrModule
	.uleb128 0x55
	.byte	0x1
	.string	"IfxCcu6_enableModule"
	.byte	0x2
	.uahalf	0x491
	.byte	0x1
	.byte	0x1
	.uaword	0x9483
	.uleb128 0x1e
	.uaword	0x5ee6
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxCcu6_routeInterruptNode"
	.byte	0x2
	.uahalf	0x2bb
	.byte	0x1
	.byte	0x1
	.uaword	0x94b9
	.uleb128 0x1e
	.uaword	0x5ee6
	.uleb128 0x1e
	.uaword	0x63c3
	.uleb128 0x1e
	.uaword	0x6635
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.string	"GCCU6_vidDisableTrap"
	.byte	0x18
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.uleb128 0x55
	.byte	0x1
	.string	"IfxCcu6_connectTrigger"
	.byte	0x2
	.uahalf	0x2b3
	.byte	0x1
	.byte	0x1
	.uaword	0x9506
	.uleb128 0x1e
	.uaword	0x5ee6
	.uleb128 0x1e
	.uaword	0x352b
	.uleb128 0x1e
	.uaword	0x35d5
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.string	"IfxGCcu6_PwmHl_init"
	.byte	0x11
	.byte	0xab
	.byte	0x1
	.uaword	0x28e
	.byte	0x1
	.uaword	0x9533
	.uleb128 0x1e
	.uaword	0x6b75
	.uleb128 0x1e
	.uaword	0x9533
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x9539
	.uleb128 0x1c
	.uaword	0x6cdc
	.uleb128 0x57
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0x15
	.byte	0x5f
	.byte	0x1
	.uaword	0x1c8
	.byte	0x1
	.uaword	0x956a
	.uleb128 0x1e
	.uaword	0x1c8
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2"
	.byte	0x16
	.byte	0x75
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2"
	.byte	0x16
	.byte	0x74
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2"
	.byte	0x16
	.byte	0x4f
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2"
	.byte	0x16
	.byte	0x48
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2"
	.byte	0x16
	.byte	0x39
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV"
	.byte	0x16
	.byte	0x8e
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HLogged"
	.byte	0x17
	.uahalf	0x33a
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x5a
	.byte	0x1
	.string	"FaultClear"
	.byte	0x15
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x96e7
	.uleb128 0x1e
	.uaword	0x1c8
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LLogged"
	.byte	0x17
	.uahalf	0x33b
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUILogged"
	.byte	0x17
	.uahalf	0x33c
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVILogged"
	.byte	0x17
	.uahalf	0x33d
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWILogged"
	.byte	0x17
	.uahalf	0x33e
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uleb128 0x55
	.byte	0x1
	.string	"Port_SetPinDirection"
	.byte	0x5
	.uahalf	0x1a2
	.byte	0x1
	.byte	0x1
	.uaword	0x9806
	.uleb128 0x1e
	.uaword	0x9806
	.uleb128 0x1e
	.uaword	0x980b
	.byte	0
	.uleb128 0x1c
	.uaword	0x3df
	.uleb128 0x1c
	.uaword	0x41a
	.uleb128 0x56
	.byte	0x1
	.string	"GCCU6_vidEnableTrap"
	.byte	0x18
	.byte	0x7
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg+20
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
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL28
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE396
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL28
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL47-1
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
.LLST21:
	.uaword	.LVL28
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE396
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL28
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35-1
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL28
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37-1
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL28
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39-1
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL28
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL85
	.uaword	.LFE396
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL58
	.uaword	.LVL66
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL68
	.uaword	.LVL75
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL69
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL70
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL71
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL71
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL76
	.uaword	.LVL80
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL81
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL92
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL100
	.uaword	.LFE397
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL90
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102
	.uaword	.LFE397
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL90
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL98
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1a3
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LFE397
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL91
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LFE397
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109
	.uaword	.LFE398
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LFB411
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE411
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LFB412
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE412
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127
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
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL142
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL146
	.uaword	.LFE412
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL132
	.uaword	.LVL134
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
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.uaword	.LVL144
	.uaword	.LVL146
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
.LLST67:
	.uaword	.LVL131
	.uaword	.LVL142
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LFE412
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL136
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL136
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL138
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL138
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL138
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL139
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL148
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL150
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL151
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL162
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL163
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL164
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL165
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL166
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL167
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL168
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL177
	.uaword	.LFE418
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL170
	.uaword	.LVL177
	.uahalf	0x6
	.byte	0x3
	.uaword	GCCU6_udtIfxCcu6PwmHlCfg
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL171
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL172
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL172
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL172
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL173
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL174
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL174
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL174
	.uaword	.LVL177
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x400
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL178
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL193
	.uaword	.LFE419
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL194
	.uaword	.LVL207
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL209
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE420
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL194
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL199-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL199-1
	.uaword	.LFE420
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL194
	.uaword	.LVL200
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL200
	.uaword	.LVL201-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL201-1
	.uaword	.LFE420
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL194
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL203-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL203-1
	.uaword	.LFE420
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL194
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL205-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL205-1
	.uaword	.LFE420
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL194
	.uaword	.LVL206
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL208
	.uaword	.LFE420
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL196
	.uaword	.LVL197-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL197-1
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL214
	.uaword	.LVL219
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL219
	.uaword	.LFE423
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL214
	.uaword	.LVL216
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST116:
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
.LLST117:
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
.LLST118:
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL226
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL228
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
.LLST120:
	.uaword	.LVL226
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL230
	.uaword	.LFE425
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST121:
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
.LLST122:
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
.LLST123:
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
.LLST124:
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
.LLST125:
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL248
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LFE433
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x13c
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
	.uaword	.LBB202
	.uaword	.LBE202
	.uaword	.LBB209
	.uaword	.LBE209
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
	.extern	GCCU6_bHwOvcFltDetEnaC,STT_OBJECT,1
	.extern	GMAIN_u8IgbtFltConfirmCntC,STT_OBJECT,1
	.extern	GCCU6_kf32MidPointDutyHC,STT_OBJECT,4
	.extern	GCCU6_kf32MidPointDutyLC,STT_OBJECT,4
	.extern	GCCU6_ku8PwmMidPotStartDelayC,STT_OBJECT,1
	.extern	GCCU6_u16T12CntVal,STT_OBJECT,2
	.extern	GCCU6_vidEnableTrap,STT_FUNC,0
	.extern	GCCU6_bHwPinAscEnaC,STT_OBJECT,1
	.extern	Port_SetPinDirection,STT_FUNC,0
	.extern	FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LLogged,STT_FUNC,0
	.extern	GCCU6_ku8OvcRcvCntMaxC,STT_OBJECT,1
	.extern	GCCU6_ku8AscRecoverCntMaxC,STT_OBJECT,1
	.extern	GCCU6_ku8PwmMidPointFaultC,STT_OBJECT,1
	.extern	FaultClear,STT_FUNC,0
	.extern	GMAIN_u8IgbtHighFltCnt,STT_OBJECT,1
	.extern	GMAIN_u8IgbtLowFltCnt,STT_OBJECT,1
	.extern	GMAIN_bSoftOvCurrPhsWFlg,STT_OBJECT,1
	.extern	GMAIN_bSoftOvCurrPhsVFlg,STT_OBJECT,1
	.extern	GMAIN_bSoftOvCurrPhsUFlg,STT_OBJECT,1
	.extern	FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HLogged,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2,STT_FUNC,0
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV,STT_FUNC,0
	.extern	IfxGCcu6_PwmHl_init,STT_FUNC,0
	.extern	IfxCcu6_connectTrigger,STT_FUNC,0
	.extern	GCCU6_vidDisableTrap,STT_FUNC,0
	.extern	IfxCcu6_routeInterruptNode,STT_FUNC,0
	.extern	GCCU6_bDualSmpEnaC,STT_OBJECT,1
	.extern	IfxCcu6_enableModule,STT_FUNC,0
	.extern	GCCU6_kudtIfxCcu6TimerWithTriggerCfg,STT_OBJECT,20
	.extern	GCCU6_u8StartMidPotDetCnt,STT_OBJECT,1
	.extern	GCCU6_f32DrvClkLsDuty,STT_OBJECT,4
	.extern	GCCU6_u32DrvClkLsDutyRaw,STT_OBJECT,4
	.extern	GCCU6_u32DrvClkLsPerdRaw,STT_OBJECT,4
	.extern	GCCU6_f32DrvClkHsDuty,STT_OBJECT,4
	.extern	GCCU6_u32DrvClkHsDutyRaw,STT_OBJECT,4
	.extern	GCCU6_u32DrvClkHsPerdRaw,STT_OBJECT,4
	.extern	GCCU6_u8P5VSelfTstTimCnt,STT_OBJECT,1
	.extern	GCCU6_bP5VDiagReinitCmd,STT_OBJECT,1
	.extern	GCCU6_u8P5VPowerMngStt,STT_OBJECT,1
	.extern	GCCU6_bP5VLSFltFlg,STT_OBJECT,1
	.extern	GCCU6_bP5VHSFltFlg,STT_OBJECT,1
	.extern	GCCU6_u8P5VLSFltCnt,STT_OBJECT,1
	.extern	GCCU6_u8P5VHSFltCnt,STT_OBJECT,1
	.extern	GCCU6_u16P5VHSAdc,STT_OBJECT,2
	.extern	GCCU6_f32HighVolPhys,STT_OBJECT,4
	.extern	GCCU6_u16HighVolAdc,STT_OBJECT,2
	.extern	GCCU6_u8PreTestStep,STT_OBJECT,1
	.extern	GCCU6_bIgbtLowSideShort,STT_OBJECT,1
	.extern	GCCU6_bIgbtHighSideShort,STT_OBJECT,1
	.extern	GCCU6_u16PwmMidPointErrCnt,STT_OBJECT,2
	.extern	GCCU6_bPwmMidPointW,STT_OBJECT,1
	.extern	GCCU6_bPwmMidPointV,STT_OBJECT,1
	.extern	GCCU6_bPwmMidPointU,STT_OBJECT,1
	.extern	GCCU6_au32PWMOnTime,STT_OBJECT,12
	.extern	GCCU6_f32PwmDutyPhysWZ,STT_OBJECT,4
	.extern	GCCU6_f32PwmDutyPhysVZ,STT_OBJECT,4
	.extern	GCCU6_u8OvcRcvCnt,STT_OBJECT,1
	.extern	GCCU6_u8AscRecoverCnt,STT_OBJECT,1
	.extern	GCCU6_f32PwmDutyPhysUZ,STT_OBJECT,4
	.extern	GCCU6_bPwmOnGoingFlg,STT_OBJECT,1
	.extern	GCCU6_bT12ZeroMatchFlg,STT_OBJECT,1
	.extern	GCCU6_u8McuAscType,STT_OBJECT,1
	.extern	GCCU6_bHwFaultDcOvVolt,STT_OBJECT,1
	.extern	GCCU6_bHwFaultOvcW,STT_OBJECT,1
	.extern	GCCU6_bHwFaultOvcV,STT_OBJECT,1
	.extern	GCCU6_bHwFaultOvcU,STT_OBJECT,1
	.extern	GCCU6_bHwFaultIgbtL,STT_OBJECT,1
	.extern	GCCU6_bHwFaultIgbtH,STT_OBJECT,1
	.extern	GCCU6_bIuvwCompReq,STT_OBJECT,1
	.extern	GCCU6_bAkdAfterAscReq,STT_OBJECT,1
	.extern	GCCU6_bClrTrapReq,STT_OBJECT,1
	.extern	GCCU6_bTrapTrigger,STT_OBJECT,1
	.extern	GCCU6_bIsGCCU6Start,STT_OBJECT,1
	.extern	GCCU6_bMotorSpdRdy,STT_OBJECT,1
	.extern	GCCU6_u8McuAscSttStep,STT_OBJECT,1
	.extern	GCCU6_u32TrapCreq,STT_OBJECT,4
	.extern	GCCU6_u16McuAscSttDelay,STT_OBJECT,2
	.extern	GCCU6_u16AlimPowerOnDelay,STT_OBJECT,2
	.extern	GCCU6_u16PowerOnDelay,STT_OBJECT,2
	.extern	GCCU6_u16T12PeriodVal,STT_OBJECT,2
	.extern	GCCU6_u8PwmState,STT_OBJECT,1
	.extern	GCCU6_u16PwmModReq,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
