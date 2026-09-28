	.file	"IcuHal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2
	.type	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2, @function
Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2:
.LFB19:
	.file 1 "bswcdd\\IOHAL\\IcuHal\\IcuHal.c"
	.loc 1 30 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 34 0
	mov	%d4, 5
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL1:
	.loc 1 35 0
	ld.w	%d15, [%SP] 4
	.loc 1 41 0
	mov	%d2, 0
	.loc 1 35 0
	jz	%d15, .L2
	.loc 1 37 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL2:
.L2:
	.loc 1 45 0
	ret
.LFE19:
	.size	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2, .-Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2
.section .text.Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2
	.type	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2, @function
Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2:
.LFB20:
	.loc 1 47 0
.LVL3:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 51 0
	mov	%d4, 6
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL4:
	.loc 1 52 0
	ld.w	%d15, [%SP] 4
	.loc 1 58 0
	mov	%d2, 0
	.loc 1 52 0
	jz	%d15, .L7
	.loc 1 54 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL5:
.L7:
	.loc 1 62 0
	ret
.LFE20:
	.size	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2, .-Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2
.section .text.Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2
	.type	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2, @function
Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2:
.LFB21:
	.loc 1 64 0
.LVL6:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 68 0
	mov	%d4, 7
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL7:
	.loc 1 69 0
	ld.w	%d15, [%SP] 4
	.loc 1 75 0
	mov	%d2, 0
	.loc 1 69 0
	jz	%d15, .L11
	.loc 1 71 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL8:
.L11:
	.loc 1 79 0
	ret
.LFE21:
	.size	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2, .-Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2
.section .text.Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS
	.type	Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS, @function
Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS:
.LFB22:
	.loc 1 81 0
.LVL9:
	sub.a	%SP, 8
.LCFI3:
	.loc 1 85 0
	mov	%d4, 8
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL10:
	.loc 1 86 0
	ld.w	%d15, [%SP] 4
	.loc 1 92 0
	mov	%d2, 0
	.loc 1 86 0
	jz	%d15, .L15
	.loc 1 88 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL11:
.L15:
	.loc 1 96 0
	ret
.LFE22:
	.size	Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS, .-Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS
.section .text.Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM
	.type	Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM, @function
Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM:
.LFB23:
	.loc 1 98 0
.LVL12:
	sub.a	%SP, 8
.LCFI4:
	.loc 1 102 0
	mov	%d4, 9
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL13:
	.loc 1 103 0
	ld.w	%d15, [%SP] 4
	.loc 1 109 0
	mov	%d2, 0
	.loc 1 103 0
	jz	%d15, .L19
	.loc 1 105 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL14:
.L19:
	.loc 1 113 0
	ret
.LFE23:
	.size	Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM, .-Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM
.section .text.Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1
	.type	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1, @function
Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1:
.LFB24:
	.loc 1 115 0
.LVL15:
	sub.a	%SP, 8
.LCFI5:
	.loc 1 119 0
	mov	%d4, 10
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL16:
	.loc 1 120 0
	ld.w	%d15, [%SP] 4
	.loc 1 126 0
	mov	%d2, 0
	.loc 1 120 0
	jz	%d15, .L23
	.loc 1 122 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL17:
.L23:
	.loc 1 130 0
	ret
.LFE24:
	.size	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1, .-Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1
.section .text.Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1
	.type	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1, @function
Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1:
.LFB25:
	.loc 1 132 0
.LVL18:
	sub.a	%SP, 8
.LCFI6:
	.loc 1 136 0
	mov	%d4, 11
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL19:
	.loc 1 137 0
	ld.w	%d15, [%SP] 4
	.loc 1 143 0
	mov	%d2, 0
	.loc 1 137 0
	jz	%d15, .L27
	.loc 1 139 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL20:
.L27:
	.loc 1 147 0
	ret
.LFE25:
	.size	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1, .-Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1
.section .text.Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1,"ax",@progbits
	.align 1
	.global	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1
	.type	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1, @function
Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1:
.LFB26:
	.loc 1 149 0
.LVL21:
	sub.a	%SP, 8
.LCFI7:
	.loc 1 153 0
	mov	%d4, 12
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL22:
	.loc 1 154 0
	ld.w	%d15, [%SP] 4
	.loc 1 160 0
	mov	%d2, 0
	.loc 1 154 0
	jz	%d15, .L31
	.loc 1 156 0
	ld.w	%d2, [%SP]0
	utof	%d15, %d15
	utof	%d2, %d2
	div.f	%d2, %d2, %d15
.LVL23:
.L31:
	.loc 1 164 0
	ret
.LFE26:
	.size	Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1, .-Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1
.section .text.Icu_vidGetDutyCycle,"ax",@progbits
	.align 1
	.global	Icu_vidGetDutyCycle
	.type	Icu_vidGetDutyCycle, @function
Icu_vidGetDutyCycle:
.LFB27:
	.loc 1 176 0
.LVL24:
	sub.a	%SP, 8
.LCFI8:
.LBB26:
.LBB27:
	.loc 1 34 0
	mov	%d4, 5
	mov.aa	%a4, %SP
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL25:
	.loc 1 35 0
	ld.w	%d2, [%SP] 4
	.loc 1 41 0
	mov	%d15, 0
	.loc 1 35 0
	jz	%d2, .L35
	.loc 1 37 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL26:
.L35:
.LBE27:
.LBE26:
	.loc 1 177 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2
.LBB28:
.LBB29:
	.loc 1 51 0
	mov.aa	%a4, %SP
.LBE29:
.LBE28:
	.loc 1 177 0
	st.w	[%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2, %d15
.LVL27:
.LBB31:
.LBB30:
	.loc 1 51 0
	mov	%d4, 6
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL28:
	.loc 1 52 0
	ld.w	%d2, [%SP] 4
	.loc 1 58 0
	mov	%d15, 0
.LVL29:
	.loc 1 52 0
	jz	%d2, .L36
	.loc 1 54 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL30:
.L36:
.LBE30:
.LBE31:
	.loc 1 178 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2
.LBB32:
.LBB33:
	.loc 1 68 0
	mov.aa	%a4, %SP
.LBE33:
.LBE32:
	.loc 1 178 0
	st.w	[%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2, %d15
.LVL31:
.LBB35:
.LBB34:
	.loc 1 68 0
	mov	%d4, 7
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL32:
	.loc 1 69 0
	ld.w	%d2, [%SP] 4
	.loc 1 75 0
	mov	%d15, 0
.LVL33:
	.loc 1 69 0
	jz	%d2, .L37
	.loc 1 71 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL34:
.L37:
.LBE34:
.LBE35:
	.loc 1 179 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2
.LBB36:
.LBB37:
	.loc 1 85 0
	mov.aa	%a4, %SP
.LBE37:
.LBE36:
	.loc 1 179 0
	st.w	[%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2, %d15
.LVL35:
.LBB39:
.LBB38:
	.loc 1 85 0
	mov	%d4, 8
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL36:
	.loc 1 86 0
	ld.w	%d2, [%SP] 4
	.loc 1 92 0
	mov	%d15, 0
.LVL37:
	.loc 1 86 0
	jz	%d2, .L38
	.loc 1 88 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL38:
.L38:
.LBE38:
.LBE39:
	.loc 1 180 0
	movh.a	%a15, hi:Icu_f32Cycle_AN_VOL_DCLINK_EPS
.LBB40:
.LBB41:
	.loc 1 102 0
	mov.aa	%a4, %SP
.LBE41:
.LBE40:
	.loc 1 180 0
	st.w	[%a15] lo:Icu_f32Cycle_AN_VOL_DCLINK_EPS, %d15
.LVL39:
.LBB43:
.LBB42:
	.loc 1 102 0
	mov	%d4, 9
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL40:
	.loc 1 103 0
	ld.w	%d2, [%SP] 4
	.loc 1 109 0
	mov	%d15, 0
.LVL41:
	.loc 1 103 0
	jz	%d2, .L39
	.loc 1 105 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL42:
.L39:
.LBE42:
.LBE43:
	.loc 1 181 0
	movh.a	%a15, hi:Icu_f32Cycle_AN_VOL_DCLINK_ACM
.LBB44:
.LBB45:
	.loc 1 119 0
	mov.aa	%a4, %SP
.LBE45:
.LBE44:
	.loc 1 181 0
	st.w	[%a15] lo:Icu_f32Cycle_AN_VOL_DCLINK_ACM, %d15
.LVL43:
.LBB47:
.LBB46:
	.loc 1 119 0
	mov	%d4, 10
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL44:
	.loc 1 120 0
	ld.w	%d2, [%SP] 4
	.loc 1 126 0
	mov	%d15, 0
.LVL45:
	.loc 1 120 0
	jz	%d2, .L40
	.loc 1 122 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL46:
.L40:
.LBE46:
.LBE47:
	.loc 1 182 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1
.LBB48:
.LBB49:
	.loc 1 136 0
	mov.aa	%a4, %SP
.LBE49:
.LBE48:
	.loc 1 182 0
	st.w	[%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1, %d15
.LVL47:
.LBB51:
.LBB50:
	.loc 1 136 0
	mov	%d4, 11
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL48:
	.loc 1 137 0
	ld.w	%d2, [%SP] 4
	.loc 1 143 0
	mov	%d15, 0
.LVL49:
	.loc 1 137 0
	jz	%d2, .L41
	.loc 1 139 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL50:
.L41:
.LBE50:
.LBE51:
	.loc 1 183 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1
.LBB52:
.LBB53:
	.loc 1 153 0
	mov.aa	%a4, %SP
.LBE53:
.LBE52:
	.loc 1 183 0
	st.w	[%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1, %d15
.LVL51:
.LBB55:
.LBB54:
	.loc 1 153 0
	mov	%d4, 12
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL52:
	.loc 1 154 0
	ld.w	%d2, [%SP] 4
	.loc 1 160 0
	mov	%d15, 0
.LVL53:
	.loc 1 154 0
	jz	%d2, .L42
	.loc 1 156 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL54:
.L42:
.LBE54:
.LBE55:
	.loc 1 184 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1
.LBB56:
.LBB57:
	.loc 1 197 0
	mov.aa	%a4, %SP
.LBE57:
.LBE56:
	.loc 1 184 0
	st.w	[%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1, %d15
.LVL55:
.LBB59:
.LBB58:
	.loc 1 197 0
	mov	%d4, 13
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL56:
	.loc 1 198 0
	ld.w	%d2, [%SP] 4
	.loc 1 204 0
	mov	%d15, 0
.LVL57:
	.loc 1 198 0
	jz	%d2, .L43
	.loc 1 200 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL58:
.L43:
.LBE58:
.LBE59:
	.loc 1 186 0
	movh.a	%a15, hi:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W
.LBB60:
.LBB61:
	.loc 1 197 0
	mov.aa	%a4, %SP
.LBE61:
.LBE60:
	.loc 1 186 0
	st.w	[%a15] lo:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W, %d15
.LVL59:
.LBB63:
.LBB62:
	.loc 1 197 0
	mov	%d4, 14
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL60:
	.loc 1 198 0
	ld.w	%d2, [%SP] 4
	.loc 1 204 0
	mov	%d15, 0
.LVL61:
	.loc 1 198 0
	jz	%d2, .L44
	.loc 1 200 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL62:
.L44:
.LBE62:
.LBE63:
	.loc 1 187 0
	movh.a	%a15, hi:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V
.LBB64:
.LBB65:
	.loc 1 197 0
	mov.aa	%a4, %SP
.LBE65:
.LBE64:
	.loc 1 187 0
	st.w	[%a15] lo:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V, %d15
.LVL63:
.LBB67:
.LBB66:
	.loc 1 197 0
	mov	%d4, 15
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL64:
	.loc 1 198 0
	ld.w	%d2, [%SP] 4
	.loc 1 204 0
	mov	%d15, 0
.LVL65:
	.loc 1 198 0
	jz	%d2, .L45
	.loc 1 200 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL66:
.L45:
.LBE66:
.LBE67:
	.loc 1 188 0
	movh.a	%a15, hi:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W
.LBB68:
.LBB69:
	.loc 1 197 0
	mov.aa	%a4, %SP
.LBE69:
.LBE68:
	.loc 1 188 0
	st.w	[%a15] lo:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W, %d15
.LVL67:
.LBB71:
.LBB70:
	.loc 1 197 0
	mov	%d4, 16
	call	Icu_17_TimerIp_GetDutyCycleValues
.LVL68:
	.loc 1 198 0
	ld.w	%d2, [%SP] 4
	.loc 1 204 0
	mov	%d15, 0
.LVL69:
	.loc 1 198 0
	jz	%d2, .L46
	.loc 1 200 0
	ld.w	%d15, [%SP]0
	utof	%d2, %d2
	utof	%d15, %d15
	div.f	%d15, %d15, %d2
.LVL70:
.L46:
.LBE70:
.LBE71:
	.loc 1 189 0
	movh.a	%a15, hi:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V
	st.w	[%a15] lo:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V, %d15
	ret
.LFE27:
	.size	Icu_vidGetDutyCycle, .-Icu_vidGetDutyCycle
	.global	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V
.section .bss.a4.Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V, @object
	.size	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V, 4
Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V:
	.zero	4
	.global	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W
.section .bss.a4.Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W, @object
	.size	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W, 4
Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W:
	.zero	4
	.global	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V
.section .bss.a4.Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V, @object
	.size	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V, 4
Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V:
	.zero	4
	.global	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W
.section .bss.a4.Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W, @object
	.size	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W, 4
Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W:
	.zero	4
	.global	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1
.section .bss.a4.Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1, @object
	.size	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1, 4
Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1:
	.zero	4
	.global	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1
.section .bss.a4.Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1, @object
	.size	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1, 4
Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1:
	.zero	4
	.global	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1
.section .bss.a4.Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1, @object
	.size	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1, 4
Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1:
	.zero	4
	.global	Icu_f32Cycle_AN_VOL_DCLINK_ACM
.section .bss.a4.Icu_f32Cycle_AN_VOL_DCLINK_ACM,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_AN_VOL_DCLINK_ACM, @object
	.size	Icu_f32Cycle_AN_VOL_DCLINK_ACM, 4
Icu_f32Cycle_AN_VOL_DCLINK_ACM:
	.zero	4
	.global	Icu_f32Cycle_AN_VOL_DCLINK_EPS
.section .bss.a4.Icu_f32Cycle_AN_VOL_DCLINK_EPS,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_AN_VOL_DCLINK_EPS, @object
	.size	Icu_f32Cycle_AN_VOL_DCLINK_EPS, 4
Icu_f32Cycle_AN_VOL_DCLINK_EPS:
	.zero	4
	.global	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2
.section .bss.a4.Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2, @object
	.size	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2, 4
Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2:
	.zero	4
	.global	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2
.section .bss.a4.Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2, @object
	.size	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2, 4
Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2:
	.zero	4
	.global	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2
.section .bss.a4.Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2,"aw",@nobits
	.align 2
	.type	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2, @object
	.size	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2, 4
Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2:
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.byte	0x4
	.uaword	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xda0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\IOHAL\\IcuHal\\IcuHal.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x108
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
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x221
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
	.uaword	0x25a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"Icu_17_TimerIp_ChannelType"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0x1ba
	.uleb128 0x4
	.string	"Icu_17_TimerIp_ValueType"
	.byte	0x3
	.uahalf	0x14a
	.uaword	0x213
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.uahalf	0x150
	.uaword	0x308
	.uleb128 0x6
	.string	"ActiveTime"
	.byte	0x3
	.uahalf	0x153
	.uaword	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"PeriodTime"
	.byte	0x3
	.uahalf	0x155
	.uaword	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.string	"Icu_17_TimerIp_DutyCycleType"
	.byte	0x3
	.uahalf	0x156
	.uaword	0x2d2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x388
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1f
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x20
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x339
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x3c5
	.uleb128 0xa
	.uaword	0x371
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x37c
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LVL1
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x414
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x30
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x31
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x3c5
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LLST2
	.byte	0x1
	.uaword	0x451
	.uleb128 0xa
	.uaword	0x3fd
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x408
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	.LVL4
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x4a0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x41
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x42
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x451
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LLST4
	.byte	0x1
	.uaword	0x4dd
	.uleb128 0xa
	.uaword	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x494
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	.LVL7
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x52a
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x52
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x53
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x4dd
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST6
	.byte	0x1
	.uaword	0x567
	.uleb128 0xa
	.uaword	0x513
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x51e
	.uaword	.LLST7
	.uleb128 0xc
	.uaword	.LVL10
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x5b4
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x63
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x64
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x567
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LLST8
	.byte	0x1
	.uaword	0x5f1
	.uleb128 0xa
	.uaword	0x59d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x5a8
	.uaword	.LLST9
	.uleb128 0xc
	.uaword	.LVL13
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x640
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x74
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x75
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x5f1
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST10
	.byte	0x1
	.uaword	0x67d
	.uleb128 0xa
	.uaword	0x629
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x634
	.uaword	.LLST11
	.uleb128 0xc
	.uaword	.LVL16
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x6cc
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x85
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x86
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x67d
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LLST12
	.byte	0x1
	.uaword	0x709
	.uleb128 0xa
	.uaword	0x6b5
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x6c0
	.uaword	.LLST13
	.uleb128 0xc
	.uaword	.LVL19
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x758
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x96
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x97
	.uaword	0x24b
	.byte	0
	.uleb128 0x9
	.uaword	0x709
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LLST14
	.byte	0x1
	.uaword	0x795
	.uleb128 0xa
	.uaword	0x741
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x74c
	.uaword	.LLST15
	.uleb128 0xc
	.uaword	.LVL22
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Icu_f32CalcChannelCycle"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0x7e0
	.uleb128 0xf
	.string	"Channel"
	.byte	0x1
	.byte	0xc0
	.uaword	0x7e0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc2
	.uaword	0x308
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc3
	.uaword	0x24b
	.byte	0
	.uleb128 0x10
	.uaword	0x28e
	.uleb128 0x11
	.byte	0x1
	.string	"Icu_vidGetDutyCycle"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LLST16
	.byte	0x1
	.uaword	0xb28
	.uleb128 0x12
	.uaword	0x339
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.byte	0xb1
	.uaword	0x853
	.uleb128 0x13
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0xa
	.uaword	0x371
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x37c
	.uaword	.LLST17
	.uleb128 0xc
	.uaword	.LVL25
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x3c5
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb2
	.uaword	0x893
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xa
	.uaword	0x3fd
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x408
	.uaword	.LLST18
	.uleb128 0xc
	.uaword	.LVL28
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x451
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xb3
	.uaword	0x8d3
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0xa
	.uaword	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x494
	.uaword	.LLST19
	.uleb128 0xc
	.uaword	.LVL32
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x4dd
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xb4
	.uaword	0x913
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0xa
	.uaword	0x513
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x51e
	.uaword	.LLST20
	.uleb128 0xc
	.uaword	.LVL36
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x567
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xb5
	.uaword	0x953
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0xa
	.uaword	0x59d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x5a8
	.uaword	.LLST21
	.uleb128 0xc
	.uaword	.LVL40
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x5f1
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xb6
	.uaword	0x993
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0xa
	.uaword	0x629
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x634
	.uaword	.LLST22
	.uleb128 0xc
	.uaword	.LVL44
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x67d
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xb7
	.uaword	0x9d3
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0xa
	.uaword	0x6b5
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x6c0
	.uaword	.LLST23
	.uleb128 0xc
	.uaword	.LVL48
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x709
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xb8
	.uaword	0xa13
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0xa
	.uaword	0x741
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x74c
	.uaword	.LLST24
	.uleb128 0xc
	.uaword	.LVL52
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x795
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xba
	.uaword	0xa59
	.uleb128 0x16
	.uaword	0x7ba
	.byte	0xd
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0xa
	.uaword	0x7c9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x7d4
	.uaword	.LLST25
	.uleb128 0xc
	.uaword	.LVL56
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x795
	.uaword	.LBB60
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0xbb
	.uaword	0xa9f
	.uleb128 0x16
	.uaword	0x7ba
	.byte	0xe
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0xa
	.uaword	0x7c9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x7d4
	.uaword	.LLST26
	.uleb128 0xc
	.uaword	.LVL60
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x795
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0xbc
	.uaword	0xae5
	.uleb128 0x16
	.uaword	0x7ba
	.byte	0xf
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0xa
	.uaword	0x7c9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x7d4
	.uaword	.LLST27
	.uleb128 0xc
	.uaword	.LVL64
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x795
	.uaword	.LBB68
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0xbd
	.uleb128 0x16
	.uaword	0x7ba
	.byte	0x10
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0xf0
	.uleb128 0xa
	.uaword	0x7c9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.uaword	0x7d4
	.uaword	.LLST28
	.uleb128 0xc
	.uaword	.LVL68
	.uaword	0xd60
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2"
	.byte	0x1
	.byte	0x4
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2"
	.byte	0x1
	.byte	0x5
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2"
	.byte	0x1
	.byte	0x6
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2
	.uleb128 0x18
	.string	"Icu_f32Cycle_AN_VOL_DCLINK_EPS"
	.byte	0x1
	.byte	0x7
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_AN_VOL_DCLINK_EPS
	.uleb128 0x18
	.string	"Icu_f32Cycle_AN_VOL_DCLINK_ACM"
	.byte	0x1
	.byte	0x8
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_AN_VOL_DCLINK_ACM
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1"
	.byte	0x1
	.byte	0x9
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1"
	.byte	0x1
	.byte	0xa
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1"
	.byte	0x1
	.byte	0xb
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W"
	.byte	0x1
	.byte	0xd
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V"
	.byte	0x1
	.byte	0xe
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W"
	.byte	0x1
	.byte	0xf
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W
	.uleb128 0x18
	.string	"Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V"
	.byte	0x1
	.byte	0x10
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V
	.uleb128 0x19
	.byte	0x1
	.string	"Icu_17_TimerIp_GetDutyCycleValues"
	.byte	0x3
	.uahalf	0x58d
	.byte	0x1
	.byte	0x1
	.uaword	0xd98
	.uleb128 0x1a
	.uaword	0x7e0
	.uleb128 0x1a
	.uaword	0xd98
	.byte	0
	.uleb128 0x10
	.uaword	0xd9d
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x308
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
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB19
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL2
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB20
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL5
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB21
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL8
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB22
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL11
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LFB23
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL14
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB24
	.uaword	.LCFI5
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI5
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL17
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LFB25
	.uaword	.LCFI6
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI6
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL20
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LFB26
	.uaword	.LCFI7
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI7
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
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
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LFB27
	.uaword	.LCFI8
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI8
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL42
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL63
	.uaword	.LVL66
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL67
	.uaword	.LVL70
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL70
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x5c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0
	.uaword	0
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"strLocPeriodAndActiveTime"
.LASF1:
	.string	"f32LocDutyCycle"
	.extern	Icu_17_TimerIp_GetDutyCycleValues,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
