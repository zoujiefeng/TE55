	.file	"MAIN_MSG_Auto_Can02.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0
	.type	MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0, @function
MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0:
.LFB0:
	.file 1 "main\\AutoMSG\\MAIN_MSG_Auto_Can02.c"
	.loc 1 23 0
.LVL0:
	.loc 1 26 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can02_Rx01
	jz	%d15, .L2
	.loc 1 26 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L3
.L2:
	.loc 1 26 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L41
.L3:
	.loc 1 128 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd, %d15
	.loc 1 129 0
	movh.a	%a15, hi:MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset
	st.b	[%a15] lo:MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset, %d15
	.loc 1 130 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode, %d15
	.loc 1 131 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num, %d15
	.loc 1 132 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh, %d15
	.loc 1 133 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow, %d15
	.loc 1 134 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq, %d15
	.loc 1 135 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd, %d15
	ret
.L41:
	.loc 1 28 0
	movh.a	%a12, hi:MAIN_MSGu8Can02_Rx01_MC2_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can02_Rx01_MC2_buf
	mov	%d4, 40
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL1:
	.loc 1 30 0
	ld.bu	%d15, [%a12] lo:MAIN_MSGu8Can02_Rx01_MC2_buf
	movh.a	%a2, hi:MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd
	and	%d2, %d15, 1
	st.b	[%a2] lo:MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd, %d2
	.loc 1 40 0
	extr.u	%d2, %d15, 1, 1
	.loc 1 43 0
	movh.a	%a2, hi:MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset
	st.b	[%a2] lo:MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset, %d2
	.loc 1 50 0
	extr.u	%d2, %d15, 2, 2
	.loc 1 53 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode
	.loc 1 50 0
	and	%d3, %d2, 255
	.loc 1 51 0
	jeq	%d2, 3, .L42
	.loc 1 57 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode, %d3
	.loc 1 60 0
	sh	%d15, -4
	.loc 1 61 0
	jlt.u	%d15, 15, .L7
.L44:
	.loc 1 63 0
	mov	%d15, 15
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num, %d15
.L8:
	.loc 1 71 0
	ld.bu	%d4, [%a15] 2
	.loc 1 74 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh
	.loc 1 71 0
	and	%d2, %d4, 15
	sh	%d15, %d2, 8
	ld.bu	%d2, [%a15] 1
	or	%d2, %d15
	.loc 1 72 0
	mov	%d15, 4095
	.loc 1 71 0
	extr.u	%d3, %d2, 0, 16
	.loc 1 72 0
	jne	%d2, %d15, .L10
	.loc 1 74 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh, %d2
.L11:
	.loc 1 82 0
	ld.bu	%d15, [%a15] 3
	.loc 1 83 0
	mov	%d3, 4095
	.loc 1 82 0
	sh	%d2, %d15, 4
	sh	%d15, %d4, -4
	or	%d15, %d2
	extr.u	%d2, %d15, 0, 16
	.loc 1 85 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow
	.loc 1 83 0
	jne	%d15, %d3, .L13
	.loc 1 85 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow, %d15
.L14:
	.loc 1 94 0
	ld.bu	%d3, [%a15] 5
	ld.bu	%d15, [%a15] 4
	sh	%d3, %d3, 8
	or	%d3, %d15
	movh.a	%a2, hi:MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw, %d3
	.loc 1 95 0
	movh	%d2, 17820
	utof	%d3, %d3
	addi	%d2, %d2, 16384
	sub.f	%d3, %d3, %d2
.LVL2:
	.loc 1 96 0
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L36
	.loc 1 98 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq, %d2
.L18:
	.loc 1 111 0
	ld.bu	%d3, [%a15] 7
.LVL3:
	ld.bu	%d15, [%a15] 6
	sh	%d3, %d3, 8
	or	%d3, %d15
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw, %d3
	.loc 1 112 0
	movh	%d2, 18026
	utof	%d3, %d3
	addi	%d2, %d2, 24576
	sub.f	%d3, %d3, %d2
.LVL4:
	.loc 1 113 0
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L43
	.loc 1 117 0
	addih	%d2, %d2, 32768
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	.loc 1 119 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd
	.loc 1 117 0
	jz	%d15, .L39
	.loc 1 119 0
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd, %d2
	ret
.LVL5:
.L42:
	.loc 1 53 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode, %d2
	.loc 1 60 0
	sh	%d15, -4
	.loc 1 61 0
	jge.u	%d15, 15, .L44
.L7:
	.loc 1 67 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num, %d15
	j	.L8
.LVL6:
.L36:
	.loc 1 100 0
	addih	%d2, %d2, 32768
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	.loc 1 102 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq
	.loc 1 100 0
	jz	%d15, .L37
	.loc 1 102 0
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq, %d2
	j	.L18
.LVL7:
.L13:
	.loc 1 89 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow, %d2
	j	.L14
.L10:
	.loc 1 78 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh, %d3
	j	.L11
.LVL8:
.L43:
	.loc 1 115 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd, %d2
	ret
.L39:
	.loc 1 123 0
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd, %d3
	ret
.LVL9:
.L37:
	.loc 1 106 0
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq, %d3
	j	.L18
.LFE0:
	.size	MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0, .-MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0
	.align 1
	.global	MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0
	.type	MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0, @function
MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0:
.LFB1:
	.loc 1 140 0
.LVL10:
	.loc 1 142 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx02
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can02_Rx02
	jz	%d15, .L46
	.loc 1 142 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L47
.L46:
	.loc 1 142 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L78
.L47:
	.loc 1 218 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx02_HCU1_PKB
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx02_HCU1_PKB, %d15
	.loc 1 219 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current, %d15
	.loc 1 220 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current, %d15
	.loc 1 221 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx02_HCU1_BrakePed
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx02_HCU1_BrakePed, %d15
	.loc 1 222 0
	mov	%d2, 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq, %d2
	.loc 1 223 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq, %d15
	ret
.L78:
	.loc 1 144 0
	movh.a	%a12, hi:MAIN_MSGu8Can02_Rx02_CCVS_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can02_Rx02_CCVS_buf
	mov	%d4, 41
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL11:
	.loc 1 146 0
	ld.bu	%d3, [%a12] lo:MAIN_MSGu8Can02_Rx02_CCVS_buf
	.loc 1 149 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx02_HCU1_PKB
	.loc 1 146 0
	extr.u	%d2, %d3, 2, 2
	and	%d15, %d2, 255
	.loc 1 147 0
	jeq	%d2, 3, .L79
	.loc 1 153 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx02_HCU1_PKB, %d15
.L49:
	.loc 1 157 0
	ld.bu	%d15, [%a15] 1
	.loc 1 160 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current
	.loc 1 157 0
	sh	%d2, %d15, 4
	sh	%d15, %d3, -4
	or	%d15, %d2
	.loc 1 158 0
	mov	%d3, 4095
	.loc 1 157 0
	extr.u	%d2, %d15, 0, 16
	.loc 1 158 0
	jne	%d15, %d3, .L51
	.loc 1 160 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current, %d15
.L52:
	.loc 1 168 0
	ld.bu	%d3, [%a15] 3
	ld.bu	%d2, [%a15] 2
	and	%d15, %d3, 15
	sh	%d15, %d15, 8
	or	%d15, %d2
	.loc 1 169 0
	mov	%d4, 4095
	.loc 1 168 0
	extr.u	%d2, %d15, 0, 16
	.loc 1 171 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current
	.loc 1 169 0
	jne	%d15, %d4, .L54
	.loc 1 171 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current, %d15
.L55:
	.loc 1 178 0
	extr.u	%d15, %d3, 4, 2
	.loc 1 181 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx02_HCU1_BrakePed
	.loc 1 178 0
	and	%d2, %d15, 255
	.loc 1 179 0
	jne	%d15, 3, .L57
	.loc 1 181 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx02_HCU1_BrakePed, %d15
.L58:
	.loc 1 190 0
	ld.bu	%d2, [%a15] 5
	ld.bu	%d15, [%a15] 4
	sh	%d2, %d2, 8
	or	%d2, %d15
	movh.a	%a2, hi:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw, %d2
	.loc 1 191 0
	movh	%d15, 17820
	utof	%d2, %d2
	addi	%d15, %d15, 16384
	sub.f	%d2, %d2, %d15
.LVL12:
	.loc 1 192 0
	mov	%d3, 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L76
	.loc 1 194 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq, %d3
.L62:
	.loc 1 206 0
	ld.bu	%d15, [%a15] 7
	ld.bu	%d2, [%a15] 6
.LVL13:
	sh	%d15, %d15, 8
	or	%d15, %d2
	.loc 1 207 0
	mov	%d2, 5000
	.loc 1 209 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq
	.loc 1 207 0
	jge.u	%d15, %d2, .L80
	.loc 1 213 0
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq, %d15
	.loc 1 211 0
	jz	%d15, .L67
	ret
.LVL14:
.L79:
	.loc 1 149 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx02_HCU1_PKB, %d2
	j	.L49
.L57:
	.loc 1 185 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx02_HCU1_BrakePed, %d2
	j	.L58
.L54:
	.loc 1 175 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current, %d2
	j	.L55
.L51:
	.loc 1 164 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current, %d2
	j	.L52
.LVL15:
.L80:
	.loc 1 209 0
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq, %d2
	ret
.L67:
	ret
.LVL16:
.L76:
	.loc 1 196 0
	movh	%d3, 50588
	addi	%d3, %d3, 16384
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 198 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq
	.loc 1 196 0
	jz	%d15, .L77
	.loc 1 198 0
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq, %d3
	j	.L62
.L77:
	.loc 1 202 0
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq, %d2
	j	.L62
.LFE1:
	.size	MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0, .-MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0
	.align 1
	.global	MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0
	.type	MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0, @function
MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0:
.LFB2:
	.loc 1 228 0
.LVL17:
	.loc 1 231 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx03
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can02_Rx03
	jz	%d15, .L82
	.loc 1 231 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jnz	%d15, .L82
.L83:
	.loc 1 320 0 is_stmt 1
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx03_HCU_GearNum
	mov	%d2, 0
	.loc 1 321 0
	mov	%d15, 0
	.loc 1 320 0
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx03_HCU_GearNum, %d2
	.loc 1 321 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx03_HCU_Targear_State
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx03_HCU_Targear_State, %d15
	.loc 1 322 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State, %d15
	.loc 1 323 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx03_HCU_HandleShift
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx03_HCU_HandleShift, %d15
	.loc 1 324 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal, %d15
	.loc 1 325 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState
	st.b	[%a15] lo:MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState, %d15
	.loc 1 326 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed
.LVL18:
.L123:
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed, %d2
	ret
.LVL19:
.L82:
	.loc 1 231 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jnz	%d15, .L83
	.loc 1 233 0
	movh.a	%a12, hi:MAIN_MSGu8Can02_Rx03_TS1_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can02_Rx03_TS1_buf
	mov	%d4, 42
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL20:
	.loc 1 236 0
	ld.bu	%d2, [%a12] lo:MAIN_MSGu8Can02_Rx03_TS1_buf
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw, %d2
	.loc 1 237 0
	utof	%d2, %d2
	movh	%d15, 17146
	sub.f	%d2, %d2, %d15
.LVL21:
	.loc 1 238 0
	movh	%d3, 17154
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L124
	.loc 1 242 0
	mov	%d3, 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 244 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Rx03_HCU_GearNum
	.loc 1 242 0
	jnz	%d15, .L125
	.loc 1 248 0
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx03_HCU_GearNum, %d2
.L86:
	.loc 1 251 0
	ld.bu	%d2, [%a15] 1
.LVL22:
	.loc 1 254 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_Targear_State
	.loc 1 251 0
	and	%d15, %d2, 15
	.loc 1 254 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_Targear_State, %d15
	.loc 1 261 0
	sh	%d15, %d2, -6
	.loc 1 262 0
	jlt.u	%d15, 3, .L92
	.loc 1 264 0
	mov	%d15, 3
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State, %d15
.L93:
	.loc 1 271 0
	ld.bu	%d15, [%a15] 3
	sh	%d15, -4
	.loc 1 272 0
	jlt.u	%d15, 15, .L95
	.loc 1 274 0
	mov	%d15, 15
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_HandleShift
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_HandleShift, %d15
.L96:
	.loc 1 281 0
	ld.bu	%d15, [%a15] 4
	sh	%d15, -6
	.loc 1 282 0
	jlt.u	%d15, 3, .L98
	.loc 1 284 0
	mov	%d15, 3
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal, %d15
.L99:
	.loc 1 291 0
	ld.bu	%d15, [%a15] 5
	sh	%d15, -6
	.loc 1 292 0
	jlt.u	%d15, 3, .L101
	.loc 1 294 0
	mov	%d15, 3
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState, %d15
.L102:
	.loc 1 303 0
	ld.bu	%d2, [%a15] 7
	ld.bu	%d15, [%a15] 6
	sh	%d2, %d2, 8
	or	%d2, %d15
	movh.a	%a15, hi:MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw
.LVL23:
	st.h	[%a15] lo:MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw, %d2
	.loc 1 304 0
	utof	%d2, %d2
	movh	%d15, 15872
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL24:
	.loc 1 305 0
	movh	%d4, 17915
	addi	%d4, %d4, -256
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L126
	.loc 1 309 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 311 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed
	.loc 1 309 0
	jz	%d15, .L123
	.loc 1 311 0
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed, %d3
	ret
.LVL25:
.L124:
	.loc 1 240 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Rx03_HCU_GearNum
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx03_HCU_GearNum, %d3
	j	.L86
.LVL26:
.L101:
	.loc 1 298 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState, %d15
	j	.L102
.L98:
	.loc 1 288 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal, %d15
	j	.L99
.L95:
	.loc 1 278 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_HandleShift
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_HandleShift, %d15
	j	.L96
.L92:
	.loc 1 268 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State
	st.b	[%a2] lo:MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State, %d15
	j	.L93
.LVL27:
.L126:
	.loc 1 307 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed
	st.w	[%a15] lo:MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed, %d4
	ret
.LVL28:
.L125:
	.loc 1 244 0
	st.w	[%a2] lo:MAIN_MSGf32Can02_Rx03_HCU_GearNum, %d3
	j	.L86
.LFE2:
	.size	MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0, .-MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0
	.align 1
	.global	MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308
	.type	MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308, @function
MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308:
.LFB3:
	.loc 1 331 0
	.loc 1 333 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx01_MS0_buf
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can02_Tx01_MS0_buf
	.loc 1 344 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current
	.loc 1 333 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx01_MS0_buf, %d15
	.loc 1 340 0
	st.b	[%a4] 7, %d15
.LVL29:
	.loc 1 344 0
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current
	movh	%d15, 17869
	addi	%d15, %d15, -13312
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L128
	.loc 1 348 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L128
.LVL30:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL31:
.L128:
	.loc 1 357 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw
	st.h	[%a2] lo:MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw, %d3
	.loc 1 362 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode
	.loc 1 359 0
	st.b	[%a4] 4, %d5
	.loc 1 360 0
	st.b	[%a4] 5, %d4
	.loc 1 362 0
	jlt.u	%d15, 3, .L129
	.loc 1 364 0
	mov	%d15, 3
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode, %d15
	mov	%d15, 3
.L130:
	.loc 1 375 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed
	movh	%d5, 18026
	addi	%d5, %d5, 24576
	.loc 1 371 0
	st.b	[%a4] 6, %d15
.LVL32:
	.loc 1 375 0
	cmp.f	%d15, %d2, %d5
	or.t	%d15, %d15,2, %d15,1
	mov	%d4, 117
	mov	%d6, 48
	mov	%d3, 30000
	jnz	%d15, .L132
	.loc 1 379 0
	addih	%d15, %d5, 32768
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d4, 0
	mov	%d6, 0
	mov	%d3, 0
	jz	%d15, .L140
.LVL33:
.L132:
	.loc 1 390 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx01_MS0_buf, %d6
	.loc 1 395 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque
	movh	%d5, 17820
	addi	%d5, %d5, 16384
	.loc 1 388 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw
	.loc 1 395 0
	cmp.f	%d15, %d2, %d5
	.loc 1 388 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw, %d3
	.loc 1 391 0
	st.b	[%a4] 1, %d4
.LVL34:
	.loc 1 395 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d4, 39
	mov	%d6, 16
	mov	%d3, 10000
	jnz	%d15, .L133
	.loc 1 399 0
	addih	%d15, %d5, 32768
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d4, 0
	mov	%d6, 0
	mov	%d3, 0
	jnz	%d15, .L133
.LVL35:
	add.f	%d3, %d2, %d5
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d6, %d3, 255
	sh	%d4, %d3, -8
.LVL36:
.L133:
	.loc 1 408 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw
	.loc 1 411 0
	st.b	[%a4] 3, %d4
	.loc 1 413 0
	mov	%d4, 68
	.loc 1 408 0
	st.h	[%a15] lo:MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw, %d3
	.loc 1 410 0
	st.b	[%a4] 2, %d6
	.loc 1 413 0
	j	Com_SendSignal
.LVL37:
.L129:
	.loc 1 366 0
	jnz	%d15, .L130
	.loc 1 368 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode, %d15
	j	.L130
.LVL38:
.L140:
	add.f	%d3, %d2, %d5
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d6, %d3, 255
	sh	%d4, %d3, -8
	j	.L132
.LFE3:
	.size	MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308, .-MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308
	.align 1
	.global	MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008
	.type	MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008, @function
MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008:
.LFB4:
	.loc 1 417 0
	.loc 1 430 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current
	movh	%d15, 17838
	addi	%d15, %d15, -29696
	cmp.f	%d15, %d2, %d15
	.loc 1 425 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx02_MS1_buf
	.loc 1 430 0
	or.t	%d15, %d15,2, %d15,1
	.loc 1 425 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can02_Tx02_MS1_buf
.LVL39:
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	.loc 1 430 0
	jnz	%d15, .L142
	.loc 1 434 0
	movh	%d15, 50298
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jz	%d15, .L153
.LVL40:
.L142:
	.loc 1 445 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx02_MS1_buf, %d5
	.loc 1 450 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage
	movh	%d15, 17869
	addi	%d15, %d15, -13312
	.loc 1 443 0
	movh.a	%a2, hi:MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw
	.loc 1 450 0
	cmp.f	%d15, %d2, %d15
	.loc 1 443 0
	st.h	[%a2] lo:MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw, %d3
	.loc 1 446 0
	st.b	[%a4] 1, %d4
.LVL41:
	.loc 1 450 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L143
	.loc 1 454 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L143
.LVL42:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL43:
.L143:
	.loc 1 463 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw
	st.h	[%a15] lo:MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw, %d3
	.loc 1 470 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed
	movh	%d15, 18048
	addi	%d15, %d15, -256
	cmp.f	%d15, %d2, %d15
	.loc 1 465 0
	st.b	[%a4] 2, %d5
	.loc 1 466 0
	st.b	[%a4] 3, %d4
.LVL44:
	.loc 1 470 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L144
	.loc 1 474 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L144
.LVL45:
	movh	%d3, 16512
	mul.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL46:
.L144:
	.loc 1 483 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw
	st.h	[%a15] lo:MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw, %d3
	.loc 1 488 0
	movh.a	%a15, hi:MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque
	ld.hu	%d15, [%a15] lo:MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque
	.loc 1 485 0
	st.b	[%a4] 4, %d5
	.loc 1 486 0
	st.b	[%a4] 5, %d4
	.loc 1 492 0
	jnz	%d15, .L154
	.loc 1 494 0
	st.h	[%a15] lo:MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque, %d15
	mov	%d2, 0
	mov	%d15, 0
	.loc 1 500 0
	mov	%d4, 69
	.loc 1 497 0
	st.b	[%a4] 6, %d2
	.loc 1 498 0
	st.b	[%a4] 7, %d15
	.loc 1 500 0
	j	Com_SendSignal
.LVL47:
.L153:
	movh	%d3, 17530
	add.f	%d3, %d2, %d3
	movh	%d15, 15821
	addi	%d15, %d15, -13107
	div.f	%d3, %d3, %d15
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
	j	.L142
.LVL48:
.L154:
	and	%d2, %d15, 255
	mov	%d4, 69
	sh	%d15, -8
	.loc 1 497 0
	st.b	[%a4] 6, %d2
	.loc 1 498 0
	st.b	[%a4] 7, %d15
	.loc 1 500 0
	j	Com_SendSignal
.LVL49:
.LFE4:
	.size	MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008, .-MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008
	.align 1
	.global	MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108
	.type	MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108, @function
MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108:
.LFB5:
	.loc 1 504 0
	.loc 1 515 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed
	.loc 1 506 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_MS2_buf
	mov	%d15, 0
	.loc 1 515 0
	ld.bu	%d2, [%a2] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed
	.loc 1 506 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_MS2_buf, %d15
	lea	%a4, [%a15] lo:MAIN_MSGu8Can02_Tx03_MS2_buf
	.loc 1 515 0
	jlt.u	%d2, 15, .L156
	.loc 1 517 0
	mov	%d15, 15
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed, %d15
	mov	%d2, %d15
.L157:
	.loc 1 526 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed
	.loc 1 524 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_MS2_buf, %d2
	.loc 1 526 0
	jlt.u	%d15, 15, .L159
	.loc 1 528 0
	mov	%d15, 15
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed, %d15
	mov	%d15, 240
.L160:
	.loc 1 535 0
	or	%d15, %d2
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_MS2_buf, %d15
.LVL50:
	.loc 1 539 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt
	movh	%d15, 17786
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 250
	jnz	%d15, .L162
	.loc 1 543 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L162
.LVL51:
	movh	%d3, 15744
	mul.f	%d2, %d2, %d3
.LVL52:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL53:
.L162:
	.loc 1 552 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw, %d3
	.loc 1 558 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt
	movh	%d15, 17786
	cmp.f	%d15, %d2, %d15
	.loc 1 554 0
	st.b	[%a4] 1, %d3
.LVL54:
	.loc 1 558 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 250
	jnz	%d15, .L163
	.loc 1 562 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L163
.LVL55:
	movh	%d3, 15744
	mul.f	%d2, %d2, %d3
.LVL56:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL57:
.L163:
	.loc 1 571 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw, %d3
	.loc 1 577 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt
	movh	%d15, 17991
	addi	%d15, %d15, 14336
	cmp.f	%d15, %d2, %d15
	.loc 1 573 0
	st.b	[%a4] 2, %d3
.LVL58:
	.loc 1 577 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L164
	.loc 1 581 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L164
.LVL59:
	movh	%d3, 16968
	div.f	%d2, %d2, %d3
.LVL60:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL61:
.L164:
	.loc 1 590 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw, %d3
	.loc 1 596 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp
	movh	%d15, 17199
	cmp.f	%d15, %d2, %d15
	.loc 1 592 0
	st.b	[%a4] 3, %d3
.LVL62:
	.loc 1 596 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L165
	.loc 1 600 0
	movh	%d15, 49824
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L186
.LVL63:
.L165:
	.loc 1 609 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw, %d3
	.loc 1 615 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp
	movh	%d15, 17199
	cmp.f	%d15, %d2, %d15
	.loc 1 611 0
	st.b	[%a4] 4, %d3
.LVL64:
	.loc 1 615 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L166
	.loc 1 619 0
	movh	%d15, 49824
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L187
.LVL65:
.L166:
	.loc 1 628 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw, %d3
	.loc 1 632 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction
	.loc 1 630 0
	st.b	[%a4] 5, %d3
	.loc 1 632 0
	jlt.u	%d15, 3, .L167
	.loc 1 634 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction, %d15
	mov	%d15, 3
.L168:
	.loc 1 643 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter
	.loc 1 641 0
	st.b	[%a4] 6, %d15
	.loc 1 643 0
	jlt.u	%d2, 15, .L170
	.loc 1 652 0
	orn	%d15, %d15, ~(-16)
	st.b	[%a4] 6, %d15
	.loc 1 657 0
	mov	%d15, 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter, %d15
.L171:
.LVL66:
	.loc 1 662 0
	movh.a	%a15, hi:MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion
	movh	%d15, 16416
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 250
	jnz	%d15, .L173
	.loc 1 666 0
	movh	%d15, 16256
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 100
	jnz	%d15, .L173
.LVL67:
	movh	%d3, 15396
	addi	%d3, %d3, -10486
	div.f	%d2, %d2, %d3
.LVL68:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL69:
.L173:
	.loc 1 675 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw
	.loc 1 679 0
	mov	%d4, 70
	.loc 1 675 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw, %d3
	.loc 1 677 0
	st.b	[%a4] 7, %d3
	.loc 1 679 0
	j	Com_SendSignal
.LVL70:
.L170:
	.loc 1 647 0
	jnz	%d2, .L172
	.loc 1 654 0
	mov	%d15, 1
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter, %d15
	j	.L171
.L167:
	.loc 1 636 0
	jnz	%d15, .L168
	.loc 1 638 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction, %d15
	j	.L168
.L159:
	.loc 1 530 0
	jnz	%d15, .L188
	.loc 1 532 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed, %d15
	j	.L160
.L156:
	.loc 1 519 0
	jnz	%d2, .L157
	.loc 1 521 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed, %d2
	j	.L157
.LVL71:
.L187:
	movh	%d3, 17056
	add.f	%d2, %d2, %d3
.LVL72:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L166
.LVL73:
.L186:
	movh	%d3, 17056
	add.f	%d2, %d2, %d3
.LVL74:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L165
.LVL75:
.L188:
	sh	%d15, 4
	and	%d15, 255
	j	.L160
.L172:
	.loc 1 652 0
	sh	%d3, %d2, 4
	or	%d15, %d3
	.loc 1 654 0
	add	%d2, 1
	.loc 1 652 0
	st.b	[%a4] 6, %d15
	.loc 1 654 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter, %d2
	j	.L171
.LFE5:
	.size	MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108, .-MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108
	.align 1
	.global	MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208
	.type	MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208, @function
MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208:
.LFB6:
	.loc 1 683 0
	.loc 1 685 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx04_MDM1_buf
	lea	%a4, [%a15] lo:MAIN_MSGu8Can02_Tx04_MDM1_buf
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx04_MDM1_buf, %d15
	.loc 1 694 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx04_MCU_Err_level
	.loc 1 686 0
	st.b	[%a4] 1, %d15
	.loc 1 689 0
	st.b	[%a4] 4, %d15
	.loc 1 690 0
	st.b	[%a4] 5, %d15
	.loc 1 691 0
	st.b	[%a4] 6, %d15
	.loc 1 692 0
	st.b	[%a4] 7, %d15
	.loc 1 694 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can02_Tx04_MCU_Err_level
	jlt.u	%d15, 3, .L190
	.loc 1 696 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx04_MCU_Err_level, %d15
	mov	%d15, 192
.L191:
	.loc 1 705 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx04_MCU_Err_code
	.loc 1 703 0
	st.b	[%a4] 2, %d15
	.loc 1 705 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can02_Tx04_MCU_Err_code
	.loc 1 709 0
	jnz	%d15, .L193
	.loc 1 711 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx04_MCU_Err_code, %d15
.L193:
	.loc 1 716 0
	mov	%d4, 71
	.loc 1 714 0
	st.b	[%a4] 3, %d15
	.loc 1 716 0
	j	Com_SendSignal
.LVL76:
.L190:
	.loc 1 698 0
	jnz	%d15, .L194
	.loc 1 700 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx04_MCU_Err_level, %d15
	j	.L191
.L194:
	sh	%d15, 6
	and	%d15, 255
	j	.L191
.LFE6:
	.size	MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208, .-MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208
	.align 1
	.global	MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309
	.type	MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309, @function
MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309:
.LFB7:
	.loc 1 720 0
	.loc 1 723 0
	movh.a	%a15, hi:MAIN_MSGu8Can02_Tx05_MS3_buf
	.loc 1 733 0
	movh.a	%a2, hi:MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp
	.loc 1 723 0
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can02_Tx05_MS3_buf
	.loc 1 733 0
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp
	.loc 1 723 0
	st.b	[%a4] 1, %d15
	.loc 1 724 0
	st.b	[%a4] 2, %d15
	.loc 1 725 0
	st.b	[%a4] 3, %d15
	.loc 1 726 0
	st.b	[%a4] 4, %d15
	.loc 1 727 0
	st.b	[%a4] 5, %d15
	.loc 1 728 0
	st.b	[%a4] 6, %d15
	.loc 1 729 0
	st.b	[%a4] 7, %d15
.LVL77:
	.loc 1 733 0
	movh	%d15, 17199
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L196
	.loc 1 737 0
	movh	%d15, 49824
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L196
.LVL78:
	movh	%d3, 17056
	add.f	%d2, %d2, %d3
.LVL79:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL80:
.L196:
	.loc 1 746 0
	movh.a	%a2, hi:MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw
	.loc 1 750 0
	mov	%d4, 72
	.loc 1 746 0
	st.b	[%a2] lo:MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw, %d3
	.loc 1 748 0
	st.b	[%a15] lo:MAIN_MSGu8Can02_Tx05_MS3_buf, %d3
	.loc 1 750 0
	j	Com_SendSignal
.LVL81:
.LFE7:
	.size	MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309, .-MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h"
	.file 5 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 6 "main\\AutoMSG\\MAIN_MSG_Auto_Can02_L.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1603
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\AutoMSG\\MAIN_MSG_Auto_Can02.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
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
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1e2
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
	.uaword	0x20e
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
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x1ad
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1e2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Com_SignalIdType"
	.byte	0x3
	.byte	0x71
	.uaword	0x200
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c9
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x35c
	.uleb128 0x7
	.string	"f32LocMC1_Mor_Tgt_Trq"
	.byte	0x1
	.byte	0x18
	.uaword	0x256
	.uaword	.LLST0
	.uleb128 0x7
	.string	"f32LocMC1_Mor_Tgt_Spd"
	.byte	0x1
	.byte	0x19
	.uaword	0x256
	.uaword	.LLST1
	.uleb128 0x8
	.uaword	.LVL1
	.uaword	0x15b3
	.uleb128 0x9
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3d3
	.uleb128 0x7
	.string	"f32LocHCU1_MCU_LimitLowTrq"
	.byte	0x1
	.byte	0x8d
	.uaword	0x256
	.uaword	.LLST2
	.uleb128 0x8
	.uaword	.LVL11
	.uaword	0x15b3
	.uleb128 0x9
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x466
	.uleb128 0x7
	.string	"f32LocHCU_GearNum"
	.byte	0x1
	.byte	0xe5
	.uaword	0x256
	.uaword	.LLST3
	.uleb128 0x7
	.string	"f32LocHCU_OutputShaftSpeed"
	.byte	0x1
	.byte	0xe6
	.uaword	0x256
	.uaword	.LLST4
	.uleb128 0x8
	.uaword	.LVL20
	.uaword	0x15b3
	.uleb128 0x9
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x50d
	.uleb128 0xb
	.string	"f32LocTS3_Motor_Out_Current"
	.byte	0x1
	.uahalf	0x156
	.uaword	0x256
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x175
	.uaword	0x256
	.uaword	.LLST6
	.uleb128 0xb
	.string	"f32LocTS3_Motor_Torque"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x256
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x15e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5cc
	.uleb128 0xb
	.string	"f32LocTS3_Motor_DC_Current"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x256
	.uaword	.LLST8
	.uleb128 0xb
	.string	"f32LocTS3_Motor_AC_Voltage"
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x256
	.uaword	.LLST9
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x256
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	.LVL47
	.byte	0x1
	.uaword	0x15e1
	.uaword	0x5ba
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.uleb128 0xd
	.uaword	.LVL49
	.byte	0x1
	.uaword	0x15e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108"
	.byte	0x1
	.uahalf	0x1f7
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x70e
	.uleb128 0xb
	.string	"f32LocTS3_Motor_MaxDrviTrqLmt"
	.byte	0x1
	.uahalf	0x219
	.uaword	0x256
	.uaword	.LLST11
	.uleb128 0xb
	.string	"f32LocTS3_Motor_MaxBrkiTrqLmt"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x256
	.uaword	.LLST12
	.uleb128 0xb
	.string	"f32LocTS3_Motor_MotMaxspdLmt"
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x256
	.uaword	.LLST13
	.uleb128 0xb
	.string	"f32LocTS3_Motor_MotTemp"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x256
	.uaword	.LLST14
	.uleb128 0xb
	.string	"f32LocTS3_Motor_MotControllerTemp"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x256
	.uaword	.LLST15
	.uleb128 0xb
	.string	"f32LocTS3_Motor_CanVersion"
	.byte	0x1
	.uahalf	0x294
	.uaword	0x256
	.uaword	.LLST16
	.uleb128 0xd
	.uaword	.LVL70
	.byte	0x1
	.uaword	0x15e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208"
	.byte	0x1
	.uahalf	0x2aa
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x75b
	.uleb128 0xd
	.uaword	.LVL76
	.byte	0x1
	.uaword	0x15e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309"
	.byte	0x1
	.uahalf	0x2cf
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7c9
	.uleb128 0xb
	.string	"f32LocTS3_DC_NTC_Temp"
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x256
	.uaword	.LLST17
	.uleb128 0xd
	.uaword	.LVL81
	.byte	0x1
	.uaword	0x15e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"BSW_bRxTOutFlag_Can02_Rx01"
	.byte	0x4
	.byte	0x12
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"BSW_bRxTOutFlag_Can02_Rx02"
	.byte	0x4
	.byte	0x13
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"BSW_bRxTOutFlag_Can02_Rx03"
	.byte	0x4
	.byte	0x14
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_bMSGRxToutBenchOnC"
	.byte	0x5
	.byte	0x36
	.uaword	0x856
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x26f
	.uleb128 0xf
	.string	"MAIN_bComRxDisableFlgByUds"
	.byte	0x5
	.byte	0x37
	.uaword	0x856
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1d5
	.uaword	0x88f
	.uleb128 0x12
	.uaword	0x2b7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx01_MC2_buf"
	.byte	0x6
	.byte	0x16
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx02_CCVS_buf"
	.byte	0x6
	.byte	0x17
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_TS1_buf"
	.byte	0x6
	.byte	0x18
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx01_MS0_buf"
	.byte	0x6
	.byte	0x19
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx02_MS1_buf"
	.byte	0x6
	.byte	0x1a
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_MS2_buf"
	.byte	0x6
	.byte	0x1b
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx04_MDM1_buf"
	.byte	0x6
	.byte	0x1c
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx05_MS3_buf"
	.byte	0x6
	.byte	0x1d
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw"
	.byte	0x6
	.byte	0x1f
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw"
	.byte	0x6
	.byte	0x20
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw"
	.byte	0x6
	.byte	0x21
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw"
	.byte	0x6
	.byte	0x22
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw"
	.byte	0x6
	.byte	0x23
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw"
	.byte	0x6
	.byte	0x24
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw"
	.byte	0x6
	.byte	0x25
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw"
	.byte	0x6
	.byte	0x26
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw"
	.byte	0x6
	.byte	0x27
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw"
	.byte	0x6
	.byte	0x28
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw"
	.byte	0x6
	.byte	0x29
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw"
	.byte	0x6
	.byte	0x2a
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw"
	.byte	0x6
	.byte	0x2b
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw"
	.byte	0x6
	.byte	0x2d
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw"
	.byte	0x6
	.byte	0x2e
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw"
	.byte	0x6
	.byte	0x30
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd"
	.byte	0x6
	.byte	0x32
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset"
	.byte	0x6
	.byte	0x33
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode"
	.byte	0x6
	.byte	0x34
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num"
	.byte	0x6
	.byte	0x35
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh"
	.byte	0x6
	.byte	0x36
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow"
	.byte	0x6
	.byte	0x37
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq"
	.byte	0x6
	.byte	0x38
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd"
	.byte	0x6
	.byte	0x39
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx02_HCU1_PKB"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current"
	.byte	0x6
	.byte	0x3b
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current"
	.byte	0x6
	.byte	0x3c
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx02_HCU1_BrakePed"
	.byte	0x6
	.byte	0x3d
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq"
	.byte	0x6
	.byte	0x3e
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq"
	.byte	0x6
	.byte	0x3f
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Rx03_HCU_GearNum"
	.byte	0x6
	.byte	0x40
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_HCU_Targear_State"
	.byte	0x6
	.byte	0x41
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State"
	.byte	0x6
	.byte	0x42
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_HCU_HandleShift"
	.byte	0x6
	.byte	0x43
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal"
	.byte	0x6
	.byte	0x44
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState"
	.byte	0x6
	.byte	0x45
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed"
	.byte	0x6
	.byte	0x46
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current"
	.byte	0x6
	.byte	0x47
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode"
	.byte	0x6
	.byte	0x48
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed"
	.byte	0x6
	.byte	0x49
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque"
	.byte	0x6
	.byte	0x4a
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current"
	.byte	0x6
	.byte	0x4b
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage"
	.byte	0x6
	.byte	0x4c
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed"
	.byte	0x6
	.byte	0x4d
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque"
	.byte	0x6
	.byte	0x4e
	.uaword	0x200
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed"
	.byte	0x6
	.byte	0x4f
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed"
	.byte	0x6
	.byte	0x50
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt"
	.byte	0x6
	.byte	0x51
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt"
	.byte	0x6
	.byte	0x52
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt"
	.byte	0x6
	.byte	0x53
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp"
	.byte	0x6
	.byte	0x54
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp"
	.byte	0x6
	.byte	0x55
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction"
	.byte	0x6
	.byte	0x56
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter"
	.byte	0x6
	.byte	0x57
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion"
	.byte	0x6
	.byte	0x58
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx04_MCU_Err_level"
	.byte	0x6
	.byte	0x59
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGu8Can02_Tx04_MCU_Err_code"
	.byte	0x6
	.byte	0x5a
	.uaword	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp"
	.byte	0x6
	.byte	0x5b
	.uaword	0x256
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"Com_ReceiveSignal"
	.byte	0x7
	.uahalf	0x14d
	.byte	0x1
	.uaword	0x1d5
	.byte	0x1
	.uaword	0x15df
	.uleb128 0x14
	.uaword	0x29f
	.uleb128 0x14
	.uaword	0x15df
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x16
	.byte	0x1
	.string	"Com_SendSignal"
	.byte	0x7
	.uahalf	0x106
	.byte	0x1
	.uaword	0x1d5
	.byte	0x1
	.uleb128 0x14
	.uaword	0x29f
	.uleb128 0x14
	.uaword	0x2c3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uaword	.LVL0-.text
	.uaword	.LVL2-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL9-.text
	.uaword	.LFE0-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.text
	.uaword	.LVL4-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL5-.text
	.uaword	.LVL8-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL8-.text
	.uaword	.LVL9-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL9-.text
	.uaword	.LFE0-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10-.text
	.uaword	.LVL12-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14-.text
	.uaword	.LVL15-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL16-.text
	.uaword	.LFE1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-.text
	.uaword	.LVL23-.text
	.uahalf	0x17
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf7
	.uleb128 0x1ad
	.byte	0xf4
	.uleb128 0x1ad
	.byte	0x4
	.uaword	0x42fa0000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL25-.text
	.uaword	.LVL26-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x17
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0xf7
	.uleb128 0x1ad
	.byte	0xf4
	.uleb128 0x1ad
	.byte	0x4
	.uaword	0x42fa0000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL28-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL19-.text
	.uaword	.LVL24-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25-.text
	.uaword	.LVL27-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28-.text
	.uaword	.LFE2-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL38-.text
	.uaword	.LFE3-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL35-.text
	.uaword	.LVL36-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL47-.text
	.uaword	.LVL48-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL42-.text
	.uaword	.LVL43-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL45-.text
	.uaword	.LVL46-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL54-.text
	.uaword	.LVL55-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL62-.text
	.uaword	.LVL63-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL73-.text
	.uaword	.LVL74-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL64-.text
	.uaword	.LVL65-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x1
	.byte	0x52
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
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"f32LocTS3_Motor_Speed"
	.extern	MAIN_MSGu8Can02_Tx05_TS3_DC_NTC_TempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx05_TS3_DC_NTC_Temp,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx05_MS3_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can02_Tx04_MCU_Err_code,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Tx04_MCU_Err_level,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Tx04_MDM1_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_CanVersionRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx03_TS3_Motor_CanVersion,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_LiveCounter,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_MotContrlReqInstruction,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_MotControllerTempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx03_TS3_Motor_MotControllerTemp,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_MotTempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx03_TS3_Motor_MotTemp,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_MotMaxspdLmtRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx03_TS3_Motor_MotMaxspdLmt,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxBrkiTrqLmtRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxBrkiTrqLmt,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_MaxDrviTrqLmtRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Tx03_TS3_Motor_MaxDrviTrqLmt,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKmodefeed,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Tx03_MS2_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can02_Tx03_TS3_Motor_WORKfeed,STT_OBJECT,1
	.extern	MAIN_MSGu16Can02_Tx02_TS3_Motor_Torque,STT_OBJECT,2
	.extern	MAIN_MSGu16Can02_Tx02_TS3_Motor_SpeedRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can02_Tx02_TS3_Motor_Speed,STT_OBJECT,4
	.extern	MAIN_MSGu16Can02_Tx02_TS3_Motor_AC_VoltageRaw,STT_OBJECT,2
	.extern	MAIN_MSGu16Can02_Tx02_TS3_Motor_DC_CurrentRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can02_Tx02_TS3_Motor_AC_Voltage,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx02_MS1_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can02_Tx02_TS3_Motor_DC_Current,STT_OBJECT,4
	.extern	Com_SendSignal,STT_FUNC,0
	.extern	MAIN_MSGu16Can02_Tx01_TS3_Motor_TorqueRaw,STT_OBJECT,2
	.extern	MAIN_MSGu16Can02_Tx01_TS3_Motor_SpeedRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can02_Tx01_TS3_Motor_Torque,STT_OBJECT,4
	.extern	MAIN_MSGf32Can02_Tx01_TS3_Motor_Speed,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx01_TS3_Mor_Con_Mode,STT_OBJECT,1
	.extern	MAIN_MSGu16Can02_Tx01_TS3_Motor_Out_CurrentRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can02_Tx01_TS3_Motor_Out_Current,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Tx01_MS0_buf,STT_OBJECT,8
	.extern	MAIN_MSGu16Can02_Rx03_HCU_OutputShaftSpeedRaw,STT_OBJECT,2
	.extern	MAIN_MSGu8Can02_Rx03_HCU_GearNumRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Rx03_TS1_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can02_Rx03_HCU_OutputShaftSpeed,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Rx03_HCU_PTOWorkState,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Rx03_HCU_SelfLearningSignal,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Rx03_HCU_HandleShift,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Rx03_HCU_Gearshift_State,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Rx03_HCU_Targear_State,STT_OBJECT,1
	.extern	MAIN_MSGf32Can02_Rx03_HCU_GearNum,STT_OBJECT,4
	.extern	BSW_bRxTOutFlag_Can02_Rx03,STT_OBJECT,1
	.extern	MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitLowTrqRaw,STT_OBJECT,2
	.extern	MAIN_MSGu8Can02_Rx02_CCVS_buf,STT_OBJECT,8
	.extern	MAIN_MSGu16Can02_Rx02_HCU1_MCU_LimitHighTrq,STT_OBJECT,2
	.extern	MAIN_MSGf32Can02_Rx02_HCU1_MCU_LimitLowTrq,STT_OBJECT,4
	.extern	MAIN_MSGu8Can02_Rx02_HCU1_BrakePed,STT_OBJECT,1
	.extern	MAIN_MSGu16Can02_Rx02_Allow_Pulse_Charge_Current,STT_OBJECT,2
	.extern	MAIN_MSGu16Can02_Rx02_Allow_Pulse_Discharge_Current,STT_OBJECT,2
	.extern	MAIN_MSGu8Can02_Rx02_HCU1_PKB,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can02_Rx02,STT_OBJECT,1
	.extern	MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_SpdRaw,STT_OBJECT,2
	.extern	MAIN_MSGu16Can02_Rx01_MC1_Mor_Tgt_TrqRaw,STT_OBJECT,2
	.extern	Com_ReceiveSignal,STT_FUNC,0
	.extern	MAIN_MSGu8Can02_Rx01_MC2_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Spd,STT_OBJECT,4
	.extern	MAIN_MSGf32Can02_Rx01_MC1_Mor_Tgt_Trq,STT_OBJECT,4
	.extern	MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitLow,STT_OBJECT,2
	.extern	MAIN_MSGu16Can02_Rx01_MCU1_CycMsg_LimitHigh,STT_OBJECT,2
	.extern	MAIN_MSGu8Can02_Rx01_MCU1_CycMsg_Num,STT_OBJECT,1
	.extern	MAIN_MSGu8Can02_Rx01_TCU3_Mor_Con_Mode,STT_OBJECT,1
	.extern	MAIN_MSGbCan02_Rx01_MCU1_Mor_Fault_Reset,STT_OBJECT,1
	.extern	MAIN_MSGbCan02_Rx01_MCU1_Mor_Cmd,STT_OBJECT,1
	.extern	MAIN_bComRxDisableFlgByUds,STT_OBJECT,1
	.extern	MAIN_bMSGRxToutBenchOnC,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can02_Rx01,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
