	.file	"BLDC_GeneFunc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BLDC_vidModuleInit,"ax",@progbits
	.align 1
	.global	BLDC_vidModuleInit
	.type	BLDC_vidModuleInit, @function
BLDC_vidModuleInit:
.LFB0:
	.file 1 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
	.loc 1 85 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	sub.a	%SP, 16
	st.a	[%a14] -12, %a4
	.loc 1 88 0
	ld.w	%d15, [%a14] -12
	jz	%d15, .L2
	.loc 1 90 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.b	%d15, [%a15]0
	st.b	[%a14] -1, %d15
.LVL1:
	.loc 1 92 0
	ld.bu	%d15, [%a14] -1
.LVL2:
	movh	%d2, hi:BLDC_xPwmCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xPwmCtrlVarSet
	mul	%d15, %d15, 12
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.h	[%a15]0, %d2
.LVL3:
	.loc 1 93 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xPwmCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xPwmCtrlVarSet
	mul	%d15, %d15, 12
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15] 3, %d2
	.loc 1 94 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xPwmCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xPwmCtrlVarSet
	mul	%d15, %d15, 12
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15] 2, %d2
	.loc 1 95 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xPwmCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xPwmCtrlVarSet
	mul	%d15, %d15, 12
	add	%d15, %d2
	add	%d15, 4
	mov	%d2, 4
	mov.a	%a15, %d15
	st.b	[%a15]0, %d2
	.loc 1 97 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xHallCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xHallCtrlVarSet
	sh	%d15, 2
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15] 1, %d2
	.loc 1 98 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xHallCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xHallCtrlVarSet
	sh	%d15, 2
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15]0, %d2
	.loc 1 99 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xHallCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xHallCtrlVarSet
	sh	%d15, 2
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15] 2, %d2
	.loc 1 100 0
	ld.bu	%d15, [%a14] -1
	movh	%d2, hi:BLDC_xHallCtrlVarSet
	addi	%d2, %d2, lo:BLDC_xHallCtrlVarSet
	sh	%d15, 2
	add	%d15, %d2
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15] 3, %d2
	j	.L1
.LVL4:
.L2:
	.loc 1 104 0
	ld.w	%d15, [%a14] -12
.LVL5:
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 16
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 8
	mov.a	%a15, %d15
	calli	%a15
.LVL6:
.L1:
	.loc 1 106 0
	ret
.LFE0:
	.size	BLDC_vidModuleInit, .-BLDC_vidModuleInit
.section .text.BLDC_u8GetHallState,"ax",@progbits
	.align 1
	.global	BLDC_u8GetHallState
	.type	BLDC_u8GetHallState, @function
BLDC_u8GetHallState:
.LFB1:
	.loc 1 109 0
.LVL7:
	.loc 1 111 0
	ld.bu	%d15, [%a4]0
	movh.a	%a15, hi:BLDC_xHallCtrlVarSet
	lea	%a15, [%a15] lo:BLDC_xHallCtrlVarSet
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 112 0
	ld.bu	%d2, [%a15]0
	ret
.LFE1:
	.size	BLDC_u8GetHallState, .-BLDC_u8GetHallState
.section .text.BLDC_u8GetCurDirSts,"ax",@progbits
	.align 1
	.global	BLDC_u8GetCurDirSts
	.type	BLDC_u8GetCurDirSts, @function
BLDC_u8GetCurDirSts:
.LFB2:
	.loc 1 115 0
.LVL8:
	.loc 1 117 0
	movh.a	%a15, hi:BLDC_xPwmCtrlVarSet
	mov.d	%d3, %a15
	ld.bu	%d15, [%a4]0
	addi	%d2, %d3, lo:BLDC_xPwmCtrlVarSet
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	.loc 1 118 0
	ld.bu	%d2, [%a15] 3
	ret
.LFE2:
	.size	BLDC_u8GetCurDirSts, .-BLDC_u8GetCurDirSts
.section .text.BLDC_u8GetDutyModeStt,"ax",@progbits
	.align 1
	.global	BLDC_u8GetDutyModeStt
	.type	BLDC_u8GetDutyModeStt, @function
BLDC_u8GetDutyModeStt:
.LFB3:
	.loc 1 121 0
.LVL9:
	.loc 1 123 0
	movh.a	%a15, hi:BLDC_xPwmCtrlVarSet
	mov.d	%d3, %a15
	ld.bu	%d15, [%a4]0
	addi	%d2, %d3, lo:BLDC_xPwmCtrlVarSet
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	.loc 1 124 0
	ld.bu	%d2, [%a15] 4
	ret
.LFE3:
	.size	BLDC_u8GetDutyModeStt, .-BLDC_u8GetDutyModeStt
.section .text.BLDC_u8GetHallStt,"ax",@progbits
	.align 1
	.global	BLDC_u8GetHallStt
	.type	BLDC_u8GetHallStt, @function
BLDC_u8GetHallStt:
.LFB4:
	.loc 1 138 0
.LVL10:
	.loc 1 144 0
	ld.a	%a2, [%a4] 8
	ld.a	%a2, [%a2] 4
	.loc 1 138 0
	mov.aa	%a15, %a4
	.loc 1 144 0
	calli	%a2
.LVL11:
	.loc 1 145 0
	ld.a	%a2, [%a15] 8
	ld.a	%a2, [%a2] 8
	.loc 1 144 0
	mov	%d8, %d2
.LVL12:
	.loc 1 147 0
	sh	%d8, 2
	.loc 1 145 0
	calli	%a2
.LVL13:
	.loc 1 146 0
	ld.a	%a15, [%a15] 8
.LVL14:
	ld.a	%a15, [%a15] 12
	.loc 1 145 0
	mov	%d15, %d2
.LVL15:
	.loc 1 147 0
	sh	%d15, 1
	.loc 1 146 0
	calli	%a15
.LVL16:
	.loc 1 147 0
	or	%d15, %d8
	or	%d2, %d15
.LVL17:
	.loc 1 150 0
	and	%d2, %d2, 255
	ret
.LFE4:
	.size	BLDC_u8GetHallStt, .-BLDC_u8GetHallStt
.section .text.BLDC_vidStartRotation,"ax",@progbits
	.align 1
	.global	BLDC_vidStartRotation
	.type	BLDC_vidStartRotation, @function
BLDC_vidStartRotation:
.LFB5:
	.loc 1 165 0
.LVL18:
	.loc 1 173 0
	ld.bu	%d15, [%a4]0
	movh	%d11, hi:BLDC_xHallCtrlVarSet
	addi	%d11, %d11, lo:BLDC_xHallCtrlVarSet
	sh	%d10, %d15, 2
	mov.a	%a2, %d11
	addsc.a	%a12, %a2, %d10, 0
.LBB4:
.LBB5:
	.loc 1 144 0
	ld.a	%a2, [%a4] 8
.LBE5:
.LBE4:
	.loc 1 173 0
	st.b	[%a12] 1, %d4
.LVL19:
.LBB8:
.LBB6:
	.loc 1 144 0
	ld.a	%a2, [%a2] 4
.LBE6:
.LBE8:
	.loc 1 165 0
	mov.aa	%a15, %a4
	mov	%d8, %d4
.LBB9:
.LBB7:
	.loc 1 144 0
	calli	%a2
.LVL20:
	.loc 1 145 0
	ld.a	%a2, [%a15] 8
	ld.a	%a2, [%a2] 8
	.loc 1 144 0
	mov	%d15, %d2
.LVL21:
	.loc 1 147 0
	sh	%d15, 2
	.loc 1 145 0
	calli	%a2
.LVL22:
	.loc 1 146 0
	ld.a	%a2, [%a15] 8
	ld.a	%a2, [%a2] 12
	.loc 1 145 0
	mov	%d9, %d2
.LVL23:
	.loc 1 147 0
	sh	%d9, 1
	.loc 1 146 0
	calli	%a2
.LVL24:
	.loc 1 147 0
	or	%d15, %d9
	or	%d2, %d15
.LVL25:
	.loc 1 149 0
	and	%d15, %d2, 255
.LBE7:
.LBE9:
	.loc 1 177 0
	st.b	[%a12]0, %d15
	.loc 1 179 0
	jnz	%d8, .L9
.LVL26:
	.loc 1 183 0
	jeq	%d15, 3, .L14
.LVL27:
	jeq	%d15, 6, .L15
.LVL28:
	jeq	%d15, 2, .L16
.LVL29:
	jeq	%d15, 5, .L17
.LVL30:
	jeq	%d15, 1, .L18
.LVL31:
	.loc 1 181 0
	mov	%d5, 5
	.loc 1 183 0
	mov	%d2, 5
	jeq	%d15, 4, .L10
.L8:
	ret
.LVL32:
.L9:
	.loc 1 195 0
	jeq	%d15, 5, .L19
.LVL33:
	jeq	%d15, 3, .L20
.LVL34:
	jeq	%d15, 1, .L21
.LVL35:
	jeq	%d15, 6, .L22
.LVL36:
	jeq	%d15, 4, .L23
.LVL37:
	.loc 1 193 0
	mov	%d5, 5
	.loc 1 195 0
	mov	%d2, 5
	jne	%d15, 2, .L8
.LVL38:
.L13:
	.loc 1 198 0
	movh.a	%a2, hi:BLDC_au8BackwardTable
	lea	%a2, [%a2] lo:BLDC_au8BackwardTable
	addsc.a	%a2, %a2, %d2, 2
	ld.bu	%d9, [%a2] 2
.LVL39:
	.loc 1 199 0
	j	.L12
.LVL40:
.L18:
	.loc 1 181 0
	mov	%d5, 4
	.loc 1 183 0
	mov	%d2, 4
.LVL41:
.L10:
	.loc 1 186 0
	movh.a	%a2, hi:BLDC_au8ForwardTable
	lea	%a2, [%a2] lo:BLDC_au8ForwardTable
	addsc.a	%a2, %a2, %d2, 2
	ld.bu	%d9, [%a2] 2
.LVL42:
.L12:
	.loc 1 207 0
	ld.a	%a4, [%a15] 12
	ld.a	%a15, [%a4] 20
.LVL43:
	mov	%d4, %d8
	calli	%a15
.LVL44:
	.loc 1 209 0
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d10, 0
	st.b	[%a15] 2, %d15
	.loc 1 210 0
	st.b	[%a15] 3, %d9
	ret
.LVL45:
.L19:
	.loc 1 195 0
	mov	%d5, 0
	mov	%d2, 0
	j	.L13
.L14:
	.loc 1 183 0
	mov	%d5, 0
	mov	%d2, 0
	j	.L10
.LVL46:
.L20:
	.loc 1 193 0
	mov	%d5, 1
	.loc 1 195 0
	mov	%d2, 1
	j	.L13
.L15:
	.loc 1 181 0
	mov	%d5, 1
	.loc 1 183 0
	mov	%d2, 1
	j	.L10
.LVL47:
.L16:
	.loc 1 181 0
	mov	%d5, 2
	.loc 1 183 0
	mov	%d2, 2
	j	.L10
.L21:
	.loc 1 193 0
	mov	%d5, 2
	.loc 1 195 0
	mov	%d2, 2
	j	.L13
.LVL48:
.L22:
	.loc 1 193 0
	mov	%d5, 3
	.loc 1 195 0
	mov	%d2, 3
	j	.L13
.L17:
	.loc 1 181 0
	mov	%d5, 3
	.loc 1 183 0
	mov	%d2, 3
	j	.L10
.LVL49:
.L23:
	.loc 1 193 0
	mov	%d5, 4
	.loc 1 195 0
	mov	%d2, 4
	j	.L13
.LFE5:
	.size	BLDC_vidStartRotation, .-BLDC_vidStartRotation
.section .text.BLDC_vidSetPwmBcDuty,"ax",@progbits
	.align 1
	.global	BLDC_vidSetPwmBcDuty
	.type	BLDC_vidSetPwmBcDuty, @function
BLDC_vidSetPwmBcDuty:
.LFB7:
	.loc 1 287 0
.LVL50:
	.loc 1 291 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	.loc 1 293 0
	movh.a	%a12, hi:BLDC_xPwmCtrlVarSet
	.loc 1 291 0
	or.t	%d15, %d15,2, %d15,1
	.loc 1 287 0
	mov.aa	%a15, %a4
	.loc 1 289 0
	ld.bu	%d3, [%a4]0
.LVL51:
	.loc 1 293 0
	lea	%a12, [%a12] lo:BLDC_xPwmCtrlVarSet
	.loc 1 291 0
	jz	%d15, .L43
	.loc 1 293 0
	mul	%d15, %d3, 12
	mov	%d2, 0
	addsc.a	%a2, %a12, %d15, 0
	st.b	[%a2] 3, %d2
.LVL52:
	.loc 1 294 0
	mov	%d2, %d4
	mov	%d4, 0
.LVL53:
.L28:
	.loc 1 302 0
	addsc.a	%a2, %a12, %d15, 0
	ld.bu	%d5, [%a2] 4
	jge.u	%d5, 5, .L29
	movh.a	%a2, hi:.L31
	lea	%a2, [%a2] lo:.L31
	addsc.a	%a2, %a2, %d5, 2
	ji	%a2
	.align 2
	.align 2
.L31:
	.code32
	j	.L44
	.code32
	j	.L32
	.code32
	j	.L33
	.code32
	j	.L34
	.code32
	j	.L35
.L46:
	.loc 1 347 0
	movh.a	%a2, hi:BLDC_xHallCtrlVarSet
	lea	%a2, [%a2] lo:BLDC_xHallCtrlVarSet
	addsc.a	%a2, %a2, %d3, 2
	ld.bu	%d3, [%a2] 1
.LVL54:
	jne	%d3, %d4, .L38
.L29:
	.loc 1 359 0
	addsc.a	%a12, %a12, %d15, 0
	st.b	[%a12] 2, %d4
	.loc 1 361 0
	mov	%d4, 0
	cmp.f	%d15, %d2, %d4
	jnz.t	%d15, 0, .L39
	.loc 1 365 0
	movh	%d15, 16256
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	movh	%d4, 17096
	jz	%d15, .L45
.L39:
.LVL55:
	.loc 1 374 0
	ld.a	%a4, [%a15] 12
.LVL56:
	ld.a	%a15, [%a4] 24
.LVL57:
	ji	%a15
.LVL58:
.L47:
	.loc 1 325 0
	add	%d2, 1
	st.h	[%a2]0, %d2
.LVL59:
.L44:
	.loc 1 326 0
	ld.a	%a4, [%a15] 12
.LVL60:
	ld.a	%a2, [%a4] 16
	calli	%a2
.LVL61:
.L36:
	.loc 1 359 0
	addsc.a	%a12, %a12, %d15, 0
	mov	%d4, 0
.LVL62:
	ld.bu	%d15, [%a12] 3
	st.b	[%a12] 2, %d15
	.loc 1 374 0
	ld.a	%a4, [%a15] 12
	ld.a	%a15, [%a4] 24
.LVL63:
	ji	%a15
.LVL64:
.L43:
	.loc 1 298 0
	mul	%d15, %d3, 12
	mov	%d2, 1
	addsc.a	%a2, %a12, %d15, 0
	st.b	[%a2] 3, %d2
.LVL65:
	.loc 1 299 0
	addih	%d2, %d4, 0x8000
.LVL66:
	mov	%d4, 1
.LVL67:
	j	.L28
.L35:
	.loc 1 346 0
	addsc.a	%a2, %a12, %d15, 0
	ld.bu	%d5, [%a2] 2
	jeq	%d5, %d4, .L46
.LVL68:
.L38:
	.loc 1 349 0
	addsc.a	%a2, %a12, %d15, 0
	mov	%d2, 1
.LVL69:
	st.b	[%a2] 4, %d2
.LVL70:
	j	.L36
.LVL71:
.L32:
	.loc 1 314 0
	addsc.a	%a2, %a12, %d15, 0
	mov	%d2, 0
	st.h	[%a2]0, %d2
	.loc 1 315 0
	mov	%d2, 2
	st.b	[%a2] 4, %d2
	.loc 1 316 0
	j	.L36
.LVL72:
.L33:
	.loc 1 323 0
	addsc.a	%a2, %a12, %d15, 0
	ld.hu	%d2, [%a2]0
	ge.u	%d3, %d2, 100
.LVL73:
	jz	%d3, .L47
	.loc 1 330 0
	mov	%d2, 0
	st.h	[%a2]0, %d2
	.loc 1 331 0
	mov	%d2, 3
	st.b	[%a2] 4, %d2
	j	.L36
.LVL74:
.L34:
	.loc 1 339 0
	mov.aa	%a4, %a15
.LVL75:
	call	BLDC_vidStartRotation
.LVL76:
	.loc 1 340 0
	addsc.a	%a2, %a12, %d15, 0
	mov	%d2, 4
	st.b	[%a2] 4, %d2
	.loc 1 341 0
	j	.L36
.LVL77:
.L45:
	.loc 1 374 0
	ld.a	%a4, [%a15] 12
.LVL78:
	ld.a	%a15, [%a4] 24
.LVL79:
	mul.f	%d4, %d2, %d4
.LVL80:
	ji	%a15
.LVL81:
.LFE7:
	.size	BLDC_vidSetPwmBcDuty, .-BLDC_vidSetPwmBcDuty
.section .text.BLDC_vidChgHallPattern,"ax",@progbits
	.align 1
	.global	BLDC_vidChgHallPattern
	.type	BLDC_vidChgHallPattern, @function
BLDC_vidChgHallPattern:
.LFB6:
	.loc 1 226 0
.LVL82:
	.loc 1 234 0
	movh.a	%a15, hi:BLDC_xPwmCtrlVarSet
	mov.d	%d2, %a15
	ld.bu	%d8, [%a4]0
	addi	%d15, %d2, lo:BLDC_xPwmCtrlVarSet
	madd	%d2, %d15, %d8, 12
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 4
	jeq	%d15, 4, .L66
.LVL83:
.L48:
	ret
.LVL84:
.L66:
.LBB12:
.LBB13:
	.loc 1 144 0
	ld.a	%a2, [%a4] 8
	ld.a	%a2, [%a2] 4
	mov.aa	%a15, %a4
.LVL85:
.LBE13:
.LBE12:
	.loc 1 240 0
	movh	%d10, hi:BLDC_xHallCtrlVarSet
.LBB18:
.LBB14:
	.loc 1 144 0
	calli	%a2
.LVL86:
	.loc 1 145 0
	ld.a	%a2, [%a15] 8
	ld.a	%a2, [%a2] 8
	.loc 1 144 0
	mov	%d15, %d2
.LVL87:
.LBE14:
.LBE18:
	.loc 1 240 0
	addi	%d10, %d10, lo:BLDC_xHallCtrlVarSet
.LBB19:
.LBB15:
	.loc 1 145 0
	calli	%a2
.LVL88:
	.loc 1 146 0
	ld.a	%a2, [%a15] 8
	ld.a	%a2, [%a2] 12
	.loc 1 145 0
	mov	%d9, %d2
.LVL89:
	.loc 1 147 0
	sh	%d15, 2
.LVL90:
	.loc 1 146 0
	calli	%a2
.LVL91:
	.loc 1 147 0
	sh	%d9, 1
.LVL92:
.LBE15:
.LBE19:
	.loc 1 240 0
	sh	%d8, 2
.LVL93:
	mov.a	%a3, %d10
.LBB20:
.LBB16:
	.loc 1 147 0
	or	%d15, %d9
.LBE16:
.LBE20:
	.loc 1 240 0
	addsc.a	%a2, %a3, %d8, 0
.LBB21:
.LBB17:
	.loc 1 147 0
	or	%d2, %d15
.LVL94:
	.loc 1 149 0
	and	%d15, %d2, 255
.LBE17:
.LBE21:
	.loc 1 242 0
	ld.bu	%d4, [%a2] 1
	.loc 1 240 0
	st.b	[%a2]0, %d15
	.loc 1 242 0
	jnz	%d4, .L51
.LVL95:
	.loc 1 246 0
	jeq	%d15, 3, .L56
.LVL96:
	jeq	%d15, 6, .L57
.LVL97:
	jeq	%d15, 2, .L58
.LVL98:
	jeq	%d15, 5, .L59
.LVL99:
	jeq	%d15, 1, .L60
.LVL100:
	.loc 1 244 0
	mov	%d5, 5
	.loc 1 246 0
	mov	%d2, 5
	jne	%d15, 4, .L48
.LVL101:
.L52:
	.loc 1 249 0
	movh.a	%a2, hi:BLDC_au8ForwardTable
	lea	%a2, [%a2] lo:BLDC_au8ForwardTable
	addsc.a	%a2, %a2, %d2, 2
	ld.bu	%d9, [%a2] 2
.LVL102:
	.loc 1 250 0
	j	.L54
.LVL103:
.L51:
	.loc 1 258 0
	jeq	%d15, 5, .L61
.LVL104:
	jeq	%d15, 3, .L62
.LVL105:
	jeq	%d15, 1, .L63
.LVL106:
	jeq	%d15, 6, .L64
.LVL107:
	jeq	%d15, 4, .L65
.LVL108:
	.loc 1 256 0
	mov	%d5, 5
	.loc 1 258 0
	mov	%d2, 5
	jne	%d15, 2, .L48
.LVL109:
.L55:
	.loc 1 261 0
	movh.a	%a2, hi:BLDC_au8BackwardTable
	lea	%a2, [%a2] lo:BLDC_au8BackwardTable
	addsc.a	%a2, %a2, %d2, 2
	ld.bu	%d9, [%a2] 2
.LVL110:
.L54:
	.loc 1 269 0
	ld.a	%a4, [%a15] 12
	ld.a	%a15, [%a4] 20
.LVL111:
	calli	%a15
.LVL112:
	.loc 1 271 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d8, 0
	st.b	[%a15] 2, %d15
	.loc 1 272 0
	st.b	[%a15] 3, %d9
	ret
.LVL113:
.L61:
	.loc 1 258 0
	mov	%d5, 0
	mov	%d2, 0
	j	.L55
.L56:
	.loc 1 246 0
	mov	%d5, 0
	mov	%d2, 0
	j	.L52
.LVL114:
.L62:
	.loc 1 256 0
	mov	%d5, 1
	.loc 1 258 0
	mov	%d2, 1
	j	.L55
.L57:
	.loc 1 244 0
	mov	%d5, 1
	.loc 1 246 0
	mov	%d2, 1
	j	.L52
.LVL115:
.L58:
	.loc 1 244 0
	mov	%d5, 2
	.loc 1 246 0
	mov	%d2, 2
	j	.L52
.L63:
	.loc 1 256 0
	mov	%d5, 2
	.loc 1 258 0
	mov	%d2, 2
	j	.L55
.LVL116:
.L59:
	.loc 1 244 0
	mov	%d5, 3
	.loc 1 246 0
	mov	%d2, 3
	j	.L52
.L64:
	.loc 1 256 0
	mov	%d5, 3
	.loc 1 258 0
	mov	%d2, 3
	j	.L55
.LVL117:
.L65:
	.loc 1 256 0
	mov	%d5, 4
	.loc 1 258 0
	mov	%d2, 4
	j	.L55
.L60:
	.loc 1 244 0
	mov	%d5, 4
	.loc 1 246 0
	mov	%d2, 4
	j	.L52
.LFE6:
	.size	BLDC_vidChgHallPattern, .-BLDC_vidChgHallPattern
	.global	BLDC_xGeneModule
.section .rodata.a4.BLDC_xGeneModule,"a",@progbits
	.align 2
	.type	BLDC_xGeneModule, @object
	.size	BLDC_xGeneModule, 44
BLDC_xGeneModule:
	.word	BLDC_xPwmCtrlVarSet
	.word	BLDC_xHallCtrlVarSet
	.word	BLDC_vidDebug
	.word	BLDC_vidModuleInit
	.word	BLDC_u8GetHallStt
	.word	BLDC_vidChgHallPattern
	.word	BLDC_vidSetPwmBcDuty
	.word	BLDC_vidStartRotation
	.word	BLDC_u8GetHallState
	.word	BLDC_u8GetCurDirSts
	.word	BLDC_u8GetDutyModeStt
	.global	BLDC_au8ForwardTable
.section .rodata.a2.BLDC_au8ForwardTable,"a",@progbits
	.align 1
	.type	BLDC_au8ForwardTable, @object
	.size	BLDC_au8ForwardTable, 24
BLDC_au8ForwardTable:
	.byte	1
	.byte	3
	.byte	33
	.zero	1
	.byte	2
	.byte	6
	.byte	24
	.zero	1
	.byte	3
	.byte	2
	.byte	9
	.zero	1
	.byte	4
	.byte	5
	.byte	6
	.zero	1
	.byte	5
	.byte	1
	.byte	36
	.zero	1
	.byte	6
	.byte	4
	.byte	18
	.zero	1
	.global	BLDC_au8BackwardTable
.section .rodata.a2.BLDC_au8BackwardTable,"a",@progbits
	.align 1
	.type	BLDC_au8BackwardTable, @object
	.size	BLDC_au8BackwardTable, 24
BLDC_au8BackwardTable:
	.byte	1
	.byte	5
	.byte	9
	.zero	1
	.byte	2
	.byte	3
	.byte	18
	.zero	1
	.byte	3
	.byte	1
	.byte	24
	.zero	1
	.byte	4
	.byte	6
	.byte	36
	.zero	1
	.byte	5
	.byte	4
	.byte	33
	.zero	1
	.byte	6
	.byte	2
	.byte	6
	.zero	1
.section .bss.a2.BLDC_xHallCtrlVarSet,"aw",@nobits
	.align 1
	.type	BLDC_xHallCtrlVarSet, @object
	.size	BLDC_xHallCtrlVarSet, 8
BLDC_xHallCtrlVarSet:
	.zero	8
.section .bss.a4.BLDC_xPwmCtrlVarSet,"aw",@nobits
	.align 2
	.type	BLDC_xPwmCtrlVarSet, @object
	.size	BLDC_xPwmCtrlVarSet, 24
BLDC_xPwmCtrlVarSet:
	.zero	24
	.global	BLDC_ku16RvsDutyDelayC
.section .rodata.Calib_16.BLDC_ku16RvsDutyDelayC,"a",@progbits
	.align 1
	.type	BLDC_ku16RvsDutyDelayC, @object
	.size	BLDC_ku16RvsDutyDelayC, 2
BLDC_ku16RvsDutyDelayC:
	.short	100
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
	.byte	0x4
	.uaword	.LCFI0-.LFB0
	.byte	0xd
	.uleb128 0x1e
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
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceCfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1137
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BLDC\\BLDC_GeneFunc.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.byte	0xf
	.uaword	0x242
	.uleb128 0x4
	.string	"eBLDC_DEV_GTM_START_INDEX"
	.sleb128 0
	.uleb128 0x4
	.string	"eBLDC_DEV_GTM_DRV8340_INDEX"
	.sleb128 0
	.uleb128 0x4
	.string	"eBLDC_DEV_GTM_TLE9180_INDEX"
	.sleb128 1
	.uleb128 0x4
	.string	"eBLDC_DEV_GTM_END_INDEX"
	.sleb128 2
	.uleb128 0x4
	.string	"eBLDC_DEV_MAX_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x25e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x28a
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
	.uleb128 0x5
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x2c6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x5
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x1aa
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x25e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x18
	.uaword	0x344
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x14
	.byte	0x3
	.byte	0x3b
	.uaword	0x3bc
	.uleb128 0x8
	.string	"u8DeviceID"
	.byte	0x3
	.byte	0x3c
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ptAppFunc"
	.byte	0x3
	.byte	0x3e
	.uaword	0xb77
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ptHalModule"
	.byte	0x3
	.byte	0x3f
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"ptTimerDrv"
	.byte	0x3
	.byte	0x40
	.uaword	0xa09
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"ptGeneModule"
	.byte	0x3
	.byte	0x41
	.uaword	0xb8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x19
	.uaword	0x3c7
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x2c
	.byte	0x4
	.byte	0x50
	.uaword	0x4df
	.uleb128 0x8
	.string	"PwmCtrlVar"
	.byte	0x4
	.byte	0x51
	.uaword	0x70f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"HallCtrlVar"
	.byte	0x4
	.byte	0x52
	.uaword	0x715
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidDebug"
	.byte	0x4
	.byte	0x54
	.uaword	0x71d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidModuleInit"
	.byte	0x4
	.byte	0x55
	.uaword	0x73f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"u8GetHallState"
	.byte	0x4
	.byte	0x56
	.uaword	0x755
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidChgHallPattern"
	.byte	0x4
	.byte	0x57
	.uaword	0x73f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"vidSetPwmBcDuty"
	.byte	0x4
	.byte	0x58
	.uaword	0x771
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidStartRotation"
	.byte	0x4
	.byte	0x59
	.uaword	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"u8GetHallStt"
	.byte	0x4
	.byte	0x5c
	.uaword	0x755
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"u8GetCurDirSts"
	.byte	0x4
	.byte	0x5d
	.uaword	0x755
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"u8GetDutyModeStt"
	.byte	0x4
	.byte	0x5e
	.uaword	0x755
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.string	"BLDC_DUTY_STATE"
	.byte	0x1
	.byte	0x4
	.byte	0x1c
	.uaword	0x553
	.uleb128 0x4
	.string	"BLDC_DUTY_CLOSE"
	.sleb128 0
	.uleb128 0x4
	.string	"BLDC_DUTY_REVRSE"
	.sleb128 1
	.uleb128 0x4
	.string	"BLDC_DUTY_BRAKE"
	.sleb128 2
	.uleb128 0x4
	.string	"BLDC_DUTY_SWDIR"
	.sleb128 3
	.uleb128 0x4
	.string	"BLDC_DUTY_GOING"
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x38
	.uaword	0x5ad
	.uleb128 0x8
	.string	"BLDC_u8CurHall"
	.byte	0x4
	.byte	0x39
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8ExpHall"
	.byte	0x4
	.byte	0x3a
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"BLDC_u8ExpOutput"
	.byte	0x4
	.byte	0x3b
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x3c
	.uaword	0x553
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0xc
	.byte	0x4
	.byte	0x3f
	.uaword	0x676
	.uleb128 0x8
	.string	"BLDC_u16DutyDelayCnt"
	.byte	0x4
	.byte	0x40
	.uaword	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8PrevDirSts"
	.byte	0x4
	.byte	0x41
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_u8CurDirSts"
	.byte	0x4
	.byte	0x42
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"BLDC_u8DutyModeStt"
	.byte	0x4
	.byte	0x43
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BLDC_u8DutyHoldTicks"
	.byte	0x4
	.byte	0x44
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"BLDC_f32CurCycleDuty"
	.byte	0x4
	.byte	0x45
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0x46
	.uaword	0x5b8
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x49
	.uaword	0x704
	.uleb128 0x8
	.string	"BLDC_u8CurHallStt"
	.byte	0x4
	.byte	0x4a
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8ConfirmDirSts"
	.byte	0x4
	.byte	0x4b
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"BLDC_u8WrCurHallStt"
	.byte	0x4
	.byte	0x4c
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_u8WrExpOutput"
	.byte	0x4
	.byte	0x4d
	.uaword	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x4
	.byte	0x4e
	.uaword	0x681
	.uleb128 0xa
	.byte	0x4
	.uaword	0x676
	.uleb128 0xa
	.byte	0x4
	.uaword	0x704
	.uleb128 0xb
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.uaword	0x71b
	.uleb128 0xc
	.byte	0x1
	.uaword	0x72f
	.uleb128 0xd
	.uaword	0x72f
	.byte	0
	.uleb128 0xe
	.uaword	0x734
	.uleb128 0xa
	.byte	0x4
	.uaword	0x73a
	.uleb128 0xe
	.uaword	0x339
	.uleb128 0xa
	.byte	0x4
	.uaword	0x723
	.uleb128 0xf
	.byte	0x1
	.uaword	0x251
	.uaword	0x755
	.uleb128 0xd
	.uaword	0x72f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x745
	.uleb128 0xc
	.byte	0x1
	.uaword	0x76c
	.uleb128 0xd
	.uaword	0x72f
	.uleb128 0xd
	.uaword	0x76c
	.byte	0
	.uleb128 0xe
	.uaword	0x2f0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x75b
	.uleb128 0xc
	.byte	0x1
	.uaword	0x788
	.uleb128 0xd
	.uaword	0x72f
	.uleb128 0xd
	.uaword	0x788
	.byte	0
	.uleb128 0xe
	.uaword	0x251
	.uleb128 0xa
	.byte	0x4
	.uaword	0x777
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x11
	.uaword	0x79e
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x24
	.byte	0x3
	.byte	0x15
	.uaword	0x88a
	.uleb128 0x8
	.string	"pvCommDrv"
	.byte	0x3
	.byte	0x16
	.uaword	0x9ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pkvCfgHandle"
	.byte	0x3
	.byte	0x17
	.uaword	0x9f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidIntHwInit"
	.byte	0x3
	.byte	0x19
	.uaword	0xa14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidIntTrigEnable"
	.byte	0x3
	.byte	0x1a
	.uaword	0xa2b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidPwmDisable"
	.byte	0x3
	.byte	0x1c
	.uaword	0xa14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidSetPwmOutState"
	.byte	0x3
	.byte	0x1d
	.uaword	0xa47
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"vidSetPwmDuty"
	.byte	0x3
	.byte	0x1e
	.uaword	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidSetPwmFreq"
	.byte	0x3
	.byte	0x1f
	.uaword	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"vidSetSingleChPhase"
	.byte	0x3
	.byte	0x20
	.uaword	0xa7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x12
	.uaword	0x895
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x30
	.byte	0x3
	.byte	0x2a
	.uaword	0x9ef
	.uleb128 0x8
	.string	"vidInit"
	.byte	0x3
	.byte	0x2b
	.uaword	0x71d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"vidMotPosPwmMng"
	.byte	0x3
	.byte	0x2c
	.uaword	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidMotorStateMng"
	.byte	0x3
	.byte	0x2d
	.uaword	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidGetPosSigPerd"
	.byte	0x3
	.byte	0x2e
	.uaword	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidGetPositionDuty"
	.byte	0x3
	.byte	0x2f
	.uaword	0xb4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidHallDiagMainfunction"
	.byte	0x3
	.byte	0x30
	.uaword	0xb65
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"bGetHallUndefFlt"
	.byte	0x3
	.byte	0x33
	.uaword	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"bGetHallInvalidFlt"
	.byte	0x3
	.byte	0x34
	.uaword	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"bGetP5vAD2SOverVolFlt"
	.byte	0x3
	.byte	0x35
	.uaword	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"bGetP5vAD2SUnderVolFlt"
	.byte	0x3
	.byte	0x36
	.uaword	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"bGetUvwShortGnd"
	.byte	0x3
	.byte	0x37
	.uaword	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"bGetUvwShortVs"
	.byte	0x3
	.byte	0x38
	.uaword	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.uaword	0x9f7
	.uleb128 0x11
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa04
	.uleb128 0xd
	.uaword	0xa04
	.byte	0
	.uleb128 0xe
	.uaword	0xa09
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa0f
	.uleb128 0xe
	.uaword	0x793
	.uleb128 0xa
	.byte	0x4
	.uaword	0x9f8
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa2b
	.uleb128 0xd
	.uaword	0xa04
	.uleb128 0xd
	.uaword	0x309
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa1a
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa47
	.uleb128 0xd
	.uaword	0xa04
	.uleb128 0xd
	.uaword	0x251
	.uleb128 0xd
	.uaword	0x251
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa31
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa5e
	.uleb128 0xd
	.uaword	0xa04
	.uleb128 0xd
	.uaword	0x2f0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa4d
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa7a
	.uleb128 0xd
	.uaword	0xa04
	.uleb128 0xd
	.uaword	0x2f0
	.uleb128 0xd
	.uaword	0x251
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa64
	.uleb128 0x7
	.uaword	.LASF7
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uaword	0xaeb
	.uleb128 0x8
	.string	"pvApi"
	.byte	0x3
	.byte	0x24
	.uaword	0x9f1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u16IOReadHall_1"
	.byte	0x3
	.byte	0x25
	.uaword	0xaf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u16IOReadHall_2"
	.byte	0x3
	.byte	0x26
	.uaword	0xaf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"u16IOReadHall_3"
	.byte	0x3
	.byte	0x27
	.uaword	0xaf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.uaword	0x27c
	.uleb128 0xa
	.byte	0x4
	.uaword	0xaeb
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x28
	.uaword	0xa80
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb0e
	.uleb128 0xd
	.uaword	0xb0e
	.byte	0
	.uleb128 0xe
	.uaword	0xb13
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb19
	.uleb128 0xe
	.uaword	0x344
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb02
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb30
	.uleb128 0xd
	.uaword	0xb30
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x2b8
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb24
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb48
	.uleb128 0xd
	.uaword	0xb48
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x2f0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb3c
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb65
	.uleb128 0xd
	.uaword	0xb0e
	.uleb128 0xd
	.uaword	0x788
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb54
	.uleb128 0x12
	.byte	0x1
	.uaword	0x309
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb6b
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb7d
	.uleb128 0xe
	.uaword	0x88a
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb88
	.uleb128 0xe
	.uaword	0xaf7
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb93
	.uleb128 0xe
	.uaword	0x3bc
	.uleb128 0x13
	.byte	0x1
	.string	"BLDC_vidModuleInit"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xbe8
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x1
	.byte	0x54
	.uaword	0xb0e
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x1
	.byte	0x56
	.uaword	0x251
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	.LVL6
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"BLDC_u8GetHallState"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	0x251
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc31
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x1
	.byte	0x6c
	.uaword	0xb0e
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.byte	0x6e
	.uaword	0x251
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"BLDC_u8GetCurDirSts"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x251
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc7a
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x1
	.byte	0x72
	.uaword	0xb0e
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.byte	0x74
	.uaword	0x251
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"BLDC_u8GetDutyModeStt"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	0x251
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcc5
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x1
	.byte	0x78
	.uaword	0xb0e
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.byte	0x7a
	.uaword	0x251
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"BLDC_u8GetHallStt"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x251
	.byte	0x1
	.uaword	0xd3e
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0x89
	.uaword	0xb0e
	.uleb128 0x1c
	.string	"u16LocPos0"
	.byte	0x1
	.byte	0x8b
	.uaword	0x27c
	.uleb128 0x1c
	.string	"u16LocPos1"
	.byte	0x1
	.byte	0x8c
	.uaword	0x27c
	.uleb128 0x1c
	.string	"u16LocPos2"
	.byte	0x1
	.byte	0x8d
	.uaword	0x27c
	.uleb128 0x1c
	.string	"u16LocFirstHall"
	.byte	0x1
	.byte	0x8e
	.uaword	0x27c
	.byte	0
	.uleb128 0x1d
	.uaword	0xcc5
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd85
	.uleb128 0x1e
	.uaword	0xce5
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0xcf0
	.uaword	.LLST4
	.uleb128 0x1f
	.uaword	0xd02
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	0xd14
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	0xd26
	.uleb128 0x16
	.uaword	.LVL16
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"BLDC_vidStartRotation"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe86
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x1
	.byte	0xa4
	.uaword	0xb0e
	.uaword	.LLST7
	.uleb128 0x22
	.string	"u8BldcDir"
	.byte	0x1
	.byte	0xa4
	.uaword	0x788
	.uaword	.LLST8
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x1
	.byte	0xa6
	.uaword	0x251
	.uaword	.LLST9
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0xa7
	.uaword	0x251
	.uleb128 0x24
	.string	"u8LocFirstOutput"
	.byte	0x1
	.byte	0xa8
	.uaword	0x251
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x1
	.byte	0xaa
	.uaword	0x251
	.uaword	.LLST11
	.uleb128 0x24
	.string	"bLocOutIdxFind"
	.byte	0x1
	.byte	0xab
	.uaword	0x309
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	0xcc5
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb0
	.uaword	0xe76
	.uleb128 0x1e
	.uaword	0xce5
	.uaword	.LLST13
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1f
	.uaword	0xcf0
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	0xd02
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	0xd14
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	0xd26
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL44
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"BLDC_vidSetPwmBcDuty"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf40
	.uleb128 0x2a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x11e
	.uaword	0xb0e
	.uaword	.LLST17
	.uleb128 0x2b
	.string	"f32Duty"
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x76c
	.uaword	.LLST18
	.uleb128 0x2c
	.string	"f32LocPwmDuty"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1aa
	.uaword	.LLST19
	.uleb128 0x2d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x121
	.uaword	0x251
	.uaword	.LLST20
	.uleb128 0x2e
	.uaword	.LVL58
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2f
	.uaword	.LVL64
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0xf22
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1aa
	.byte	0x4
	.uaword	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL76
	.uaword	0xd85
	.uaword	0xf36
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL81
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"BLDC_vidChgHallPattern"
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1021
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x1
	.byte	0xe1
	.uaword	0xb0e
	.uaword	.LLST21
	.uleb128 0x24
	.string	"bLocIdxFind"
	.byte	0x1
	.byte	0xe3
	.uaword	0x309
	.uaword	.LLST22
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x1
	.byte	0xe4
	.uaword	0x251
	.uaword	.LLST23
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0xe5
	.uaword	0x251
	.uleb128 0x24
	.string	"u8LocExpOutput"
	.byte	0x1
	.byte	0xe6
	.uaword	0x251
	.uaword	.LLST24
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x1
	.byte	0xe8
	.uaword	0x251
	.uaword	.LLST25
	.uleb128 0x25
	.uaword	0xcc5
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xef
	.uaword	0x1018
	.uleb128 0x1e
	.uaword	0xce5
	.uaword	.LLST26
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1f
	.uaword	0xcf0
	.uaword	.LLST27
	.uleb128 0x1f
	.uaword	0xd02
	.uaword	.LLST28
	.uleb128 0x1f
	.uaword	0xd14
	.uaword	.LLST29
	.uleb128 0x20
	.uaword	0xd26
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL112
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	0x676
	.uaword	0x1031
	.uleb128 0x32
	.uaword	0x1031
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x33
	.string	"BLDC_xPwmCtrlVarSet"
	.byte	0x1
	.byte	0x25
	.uaword	0x1021
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xPwmCtrlVarSet
	.uleb128 0x31
	.uaword	0x704
	.uaword	0x106e
	.uleb128 0x32
	.uaword	0x1031
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.string	"BLDC_xHallCtrlVarSet"
	.byte	0x1
	.byte	0x26
	.uaword	0x105e
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xHallCtrlVarSet
	.uleb128 0x31
	.uaword	0x5ad
	.uaword	0x10a0
	.uleb128 0x32
	.uaword	0x1031
	.byte	0x5
	.byte	0
	.uleb128 0x34
	.string	"BLDC_au8BackwardTable"
	.byte	0x1
	.byte	0x2d
	.uaword	0x10c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_au8BackwardTable
	.uleb128 0xe
	.uaword	0x1090
	.uleb128 0x34
	.string	"BLDC_au8ForwardTable"
	.byte	0x1
	.byte	0x38
	.uaword	0x10ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_au8ForwardTable
	.uleb128 0xe
	.uaword	0x1090
	.uleb128 0x34
	.string	"BLDC_xGeneModule"
	.byte	0x1
	.byte	0x41
	.uaword	0xb93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xGeneModule
	.uleb128 0x34
	.string	"BLDC_ku16RvsDutyDelayC"
	.byte	0x1
	.byte	0x11
	.uaword	0x1135
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_ku16RvsDutyDelayC
	.uleb128 0xe
	.uaword	0x27c
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB0
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -1
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL42
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL23
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL79
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL64
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1aa
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LFE7
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1aa
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL70
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL65
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL74
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86-1
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL85
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL112-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL110
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL84
	.uaword	.LVL86-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL86-1
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL85
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL88-1
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL89
	.uaword	.LVL91-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91-1
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"BLDC_PwmCtrlVarSet"
.LASF9:
	.string	"u8DevID"
.LASF2:
	.string	"BLDC_HallCtrlTable"
.LASF10:
	.string	"u8LocIdx"
.LASF5:
	.string	"BLDC_TimerDriver"
.LASF8:
	.string	"kpktDev"
.LASF1:
	.string	"BLDC_GeneModule"
.LASF4:
	.string	"BLDC_HallCtrlVarSet"
.LASF6:
	.string	"BLDC_AppFunc"
.LASF7:
	.string	"BLDC_HalModule"
.LASF11:
	.string	"u8LocCurHall"
.LASF0:
	.string	"BLDC_Device"
	.extern	BLDC_vidDebug,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
