	.file	"HARD_Ptg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.HARD_vidPtgInit,"ax",@progbits
	.align 1
	.global	HARD_vidPtgInit
	.type	HARD_vidPtgInit, @function
HARD_vidPtgInit:
.LFB0:
	.file 1 "bswcdd\\HARD\\HARD_Ptg.c"
	.loc 1 59 0
	.loc 1 61 0
	mov	%d2, -1
	movh.a	%a15, hi:HARD_u16PtgRefSignalNbPeriode
	.loc 1 62 0
	mov	%d15, 0
	.loc 1 61 0
	st.h	[%a15] lo:HARD_u16PtgRefSignalNbPeriode, %d2
	.loc 1 62 0
	movh.a	%a15, hi:HARD_u16PtgRefSignalTime
	st.h	[%a15] lo:HARD_u16PtgRefSignalTime, %d15
	.loc 1 63 0
	movh.a	%a15, hi:HARD_s16PtgRefSignalValue
	.loc 1 64 0
	mov	%d3, 1
	.loc 1 63 0
	st.h	[%a15] lo:HARD_s16PtgRefSignalValue, %d15
	.loc 1 64 0
	movh.a	%a15, hi:HARD_bPtgSignalsShiftControl
	st.b	[%a15] lo:HARD_bPtgSignalsShiftControl, %d3
	.loc 1 67 0
	movh.a	%a15, hi:HARD_u16PtgUSignalNbPeriode
	st.h	[%a15] lo:HARD_u16PtgUSignalNbPeriode, %d2
	.loc 1 68 0
	movh.a	%a15, hi:HARD_u16PtgUSignalTime
	st.h	[%a15] lo:HARD_u16PtgUSignalTime, %d15
	.loc 1 69 0
	movh.a	%a15, hi:HARD_s16PtgUSignalValue
	st.h	[%a15] lo:HARD_s16PtgUSignalValue, %d15
	.loc 1 70 0
	movh.a	%a15, hi:HARD_bPtgUSignalEnable
	st.b	[%a15] lo:HARD_bPtgUSignalEnable, %d3
	.loc 1 73 0
	movh.a	%a15, hi:HARD_u16PtgVSignalNbPeriode
	st.h	[%a15] lo:HARD_u16PtgVSignalNbPeriode, %d2
	.loc 1 74 0
	movh.a	%a15, hi:HARD_u16PtgVSignalTime
	st.h	[%a15] lo:HARD_u16PtgVSignalTime, %d15
	.loc 1 75 0
	movh.a	%a15, hi:HARD_s16PtgVSignalValue
	st.h	[%a15] lo:HARD_s16PtgVSignalValue, %d15
	.loc 1 76 0
	movh.a	%a15, hi:HARD_bPtgVSignalEnable
	st.b	[%a15] lo:HARD_bPtgVSignalEnable, %d3
	.loc 1 79 0
	movh.a	%a15, hi:HARD_u16PtgWSignalNbPeriode
	st.h	[%a15] lo:HARD_u16PtgWSignalNbPeriode, %d2
	.loc 1 80 0
	movh.a	%a15, hi:HARD_u16PtgWSignalTime
	st.h	[%a15] lo:HARD_u16PtgWSignalTime, %d15
	.loc 1 81 0
	movh.a	%a15, hi:HARD_s16PtgWSignalValue
	st.h	[%a15] lo:HARD_s16PtgWSignalValue, %d15
	.loc 1 82 0
	movh.a	%a15, hi:HARD_bPtgWSignalEnable
	st.b	[%a15] lo:HARD_bPtgWSignalEnable, %d3
	.loc 1 85 0
	mov	%d2, 2
	movh.a	%a15, hi:HARD_PtgModeTest
	st.h	[%a15] lo:HARD_PtgModeTest, %d2
	.loc 1 86 0
	movh.a	%a15, hi:HARD_bPtgEnable
	st.b	[%a15] lo:HARD_bPtgEnable, %d15
	ret
.LFE0:
	.size	HARD_vidPtgInit, .-HARD_vidPtgInit
.section .text.HARD_vidPtgCalculate,"ax",@progbits
	.align 1
	.global	HARD_vidPtgCalculate
	.type	HARD_vidPtgCalculate, @function
HARD_vidPtgCalculate:
.LFB1:
	.loc 1 108 0
.LVL0:
	.loc 1 109 0
	ld.hu	%d15, [%a4]0
	.loc 1 108 0
	ld.a	%a2, [%SP] 8
	.loc 1 109 0
	jz	%d15, .L3
	.loc 1 111 0
	ld.bu	%d2, [%a2]0
	mov.aa	%a13, %a7
	mov.aa	%a15, %a5
	mov.aa	%a12, %a4
	jz	%d2, .L4
	.loc 1 113 0
	ld.a	%a2, [%SP] 4
	ld.h	%d2, [%a6]0
	ld.h	%d15, [%a2]0
.LBB26:
.LBB27:
	.loc 1 149 0
	movh.a	%a2, hi:HARD_PtgModeTest
.LBE27:
.LBE26:
	.loc 1 113 0
	sub	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	st.h	[%a5]0, %d2
.LVL1:
.LBB69:
.LBB66:
	.loc 1 149 0
	ld.hu	%d15, [%a2] lo:HARD_PtgModeTest
	eq	%d3, %d15, 8
	jnz	%d3, .L6
	jlt.u	%d15, 9, .L93
	eq	%d3, %d15, 32
	jnz	%d3, .L11
	ge.u	%d3, %d15, 33
	jz	%d3, .L94
	eq	%d3, %d15, 64
	jnz	%d3, .L14
	eq	%d15, %d15, 128
	jz	%d15, .L5
	ld.hu	%d15, [%a4]0
.LVL2:
.LBB28:
.LBB29:
	.loc 1 714 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d5, [%a2] lo:HARDPTG_s16AmplitudeC
.LVL3:
	.loc 1 716 0
	mov	%d3, 0
	mov	%d4, 0
	jz	%d15, .L41
	j	.L53
.LVL4:
.L3:
.LBE29:
.LBE28:
.LBE66:
.LBE69:
	.loc 1 127 0
	ld.a	%a15, [%SP]0
	.loc 1 125 0
	st.h	[%a5]0, %d15
	.loc 1 126 0
	st.h	[%a7]0, %d15
	.loc 1 125 0
	mov	%d2, 0
	.loc 1 127 0
	st.b	[%a15]0, %d2
	.loc 1 128 0
	ld.a	%a15, [%SP] 4
	st.h	[%a15]0, %d15
	.loc 1 129 0
	st.b	[%a2]0, %d2
	ret
.L4:
.LVL5:
.LBB70:
.LBB67:
	.loc 1 149 0
	movh.a	%a2, hi:HARD_PtgModeTest
.LVL6:
	ld.hu	%d2, [%a2] lo:HARD_PtgModeTest
	eq	%d3, %d2, 8
	jnz	%d3, .L46
	jlt.u	%d2, 9, .L95
	eq	%d3, %d2, 32
	jnz	%d3, .L49
	ge.u	%d3, %d2, 33
	jz	%d3, .L96
	eq	%d3, %d2, 64
	jnz	%d3, .L51
	eq	%d2, %d2, 128
	jz	%d2, .L5
.LBB31:
.LBB30:
	.loc 1 714 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.hu	%d2, [%a5]0
.LVL7:
	ld.h	%d5, [%a2] lo:HARDPTG_s16AmplitudeC
.LVL8:
.L53:
	.loc 1 729 0
	add	%d15, -1
.LVL9:
	.loc 1 714 0
	sh	%d3, %d5, 1
	addi	%d3, %d3, -32767
.LVL10:
	.loc 1 729 0
	extr.u	%d4, %d15, 0, 16
.LVL11:
	mov	%d15, -32767
.LVL12:
	max	%d3, %d3, %d15
.LVL13:
	extr	%d3, %d3, 0, 16
.LVL14:
.L41:
	.loc 1 735 0
	st.h	[%a12]0, %d4
	.loc 1 736 0
	st.h	[%a15]0, %d2
	.loc 1 737 0
	st.h	[%a13]0, %d3
.LVL15:
.L5:
.LBE30:
.LBE31:
.LBE67:
.LBE70:
	.loc 1 121 0
	ld.a	%a2, [%SP]0
	mov	%d15, 1
	st.b	[%a2]0, %d15
	ret
.LVL16:
.L93:
.LBB71:
.LBB68:
	.loc 1 149 0
	jeq	%d15, 2, .L8
	jeq	%d15, 4, .L9
	jne	%d15, 1, .L5
.LBB32:
.LBB33:
	.loc 1 239 0
	movh.a	%a2, hi:HARDPTG_u16PulseDutyCycleC
	ld.hu	%d3, [%a2] lo:HARDPTG_u16PulseDutyCycleC
	ld.hu	%d6, [%a4]0
.LVL17:
	.loc 1 242 0
	sel	%d3, %d3, %d3, 1
.LVL18:
	.loc 1 245 0
	mov	%d5, 0
	mov	%d15, 0
	.loc 1 287 0
	mov	%d4, 0
	.loc 1 245 0
	jz	%d6, .L17
	mov	%d15, %d6
	j	.L56
.LVL19:
.L95:
.LBE33:
.LBE32:
	.loc 1 149 0
	jeq	%d2, 2, .L44
	jeq	%d2, 4, .L24
	jne	%d2, 1, .L5
.LBB36:
.LBB34:
	.loc 1 239 0
	movh.a	%a2, hi:HARDPTG_u16PulseDutyCycleC
	ld.hu	%d3, [%a2] lo:HARDPTG_u16PulseDutyCycleC
	ld.hu	%d2, [%a5]0
.LVL20:
	.loc 1 240 0
	jnz	%d3, .L56
	.loc 1 242 0
	mov	%d3, 1
.LVL21:
.L56:
	.loc 1 249 0
	movh.a	%a2, hi:HARDPTG_u32FrequenceC
	ld.w	%d6, [%a2] lo:HARDPTG_u32FrequenceC
	.loc 1 247 0
	add	%d2, 1
	extr.u	%d4, %d2, 0, 16
.LVL22:
	.loc 1 249 0
	div.u	%e2, %d6, %d3
.LVL23:
	jlt.u	%d2, %d4, .L18
	.loc 1 251 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d2, [%a2] lo:HARDPTG_s16AmplitudeC
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	ld.h	%d3, [%a2] lo:HARDPTG_s16OffsetC
.LVL24:
	sh	%d2, 1
	addi	%d2, %d2, -32768
	add	%d2, %d3
.LVL25:
	.loc 1 268 0
	mov.u	%d3, 32768
	mov	%d5, 32767
	jlt	%d2, %d3, .L19
.LVL26:
.L17:
	.loc 1 290 0
	st.h	[%a12]0, %d15
	.loc 1 291 0
	st.h	[%a15]0, %d4
	.loc 1 292 0
	st.h	[%a13]0, %d5
	j	.L5
.LVL27:
.L9:
	ld.hu	%d15, [%a4]0
.L24:
.LVL28:
.LBE34:
.LBE36:
.LBB37:
.LBB38:
	.loc 1 453 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d4, [%a15] lo:HARDPTG_s16OffsetC
	.loc 1 455 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	ld.w	%d3, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 461 0
	movh.a	%a15, hi:HARDPTG_s16SlewRateC
	.loc 1 453 0
	ld.h	%d5, [%a13]0
.LVL29:
	.loc 1 461 0
	ld.h	%d2, [%a15] lo:HARDPTG_s16SlewRateC
	.loc 1 455 0
	jz	%d3, .L26
	.loc 1 457 0
	div.u	%e2, %d2, %d3
.LVL30:
.L26:
	.loc 1 464 0
	mov	%d3, 0
	jz	%d15, .L27
	.loc 1 466 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	.loc 1 453 0
	sub	%d5, %d4
.LVL31:
	.loc 1 466 0
	jltz	%d3, .L97
	.loc 1 481 0
	add	%d2, %d5
.LVL32:
	.loc 1 482 0
	jge	%d3, %d2, .L31
.LVL33:
	.loc 1 485 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L32
	.loc 1 487 0
	add	%d15, -1
.LVL34:
	extr.u	%d15, %d15, 0, 16
.LVL35:
.L32:
	.loc 1 489 0
	addi	%d2, %d4, -32767
.LVL36:
.L31:
	.loc 1 499 0
	mov	%d3, -32768
	jlt	%d2, %d3, .L27
.LVL37:
.L43:
	extr	%d3, %d2, 0, 16
.LVL38:
.L27:
	.loc 1 509 0
	st.h	[%a12]0, %d15
	.loc 1 510 0
	st.h	[%a13]0, %d3
	j	.L5
.LVL39:
.L8:
.LBE38:
.LBE37:
.LBB40:
.LBB41:
	.loc 1 313 0
	ld.hu	%d15, [%a4]0
.LVL40:
	.loc 1 317 0
	mov	%d3, 0
	.loc 1 359 0
	mov	%d8, 0
	.loc 1 317 0
	jz	%d15, .L21
.LVL41:
.L45:
	.loc 1 319 0
	movh.a	%a2, hi:HARDPTG_u32FrequenceC
	ld.w	%d5, [%a2] lo:HARDPTG_u32FrequenceC
	.loc 1 329 0
	mov	%d8, 16384
	mov	%d3, 16384
	.loc 1 319 0
	jz	%d5, .L22
	.loc 1 321 0
	mov.u	%d4, 65535
	div.u	%e4, %d4, %d5
.LVL42:
	.loc 1 322 0
	mov	%d7, 16385
	jge.u	%d4, %d7, .L22
	.loc 1 321 0
	extr.u	%d8, %d4, 0, 16
	mov	%d3, %d4
.LVL43:
.L22:
	.loc 1 332 0
	add	%d4, %d2, %d3
	movh	%d3, 1
	jlt	%d4, %d3, .L23
	.loc 1 334 0
	mov.u	%d3, 65535
	jeq	%d15, %d3, .L23
	.loc 1 336 0
	add	%d15, -1
.LVL44:
	extr.u	%d15, %d15, 0, 16
.LVL45:
.L23:
	.loc 1 339 0
	add	%d2, %d8
.LVL46:
	extr.u	%d8, %d2, 0, 16
.LVL47:
	.loc 1 340 0
	mov	%d4, %d8
	call	MathSinus
.LVL48:
	.loc 1 341 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a2] lo:HARDPTG_s16AmplitudeC
	.loc 1 342 0
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	.loc 1 341 0
	mul	%d2, %d3
.LVL49:
	.loc 1 342 0
	ld.h	%d4, [%a2] lo:HARDPTG_s16OffsetC
	.loc 1 341 0
	sha	%d3, %d2, -15
.LVL50:
	.loc 1 342 0
	add	%d3, %d4
.LVL51:
	sat.h	%d3, %d3
.LVL52:
.L21:
	.loc 1 361 0
	st.h	[%a12]0, %d15
	.loc 1 362 0
	st.h	[%a15]0, %d8
	.loc 1 363 0
	st.h	[%a13]0, %d3
	j	.L5
.LVL53:
.L49:
	ld.hu	%d2, [%a5]0
.L11:
.LVL54:
.LBE41:
.LBE40:
.LBB43:
.LBB44:
	.loc 1 631 0
	movh.a	%a2, hi:HARDPTG_s16HardProfilSimu
	lea	%a2, [%a2] lo:HARDPTG_s16HardProfilSimu
	addsc.a	%a2, %a2, %d2, 1
	.loc 1 632 0
	add	%d2, 1
.LVL55:
	.loc 1 631 0
	ld.h	%d15, [%a2]0
	.loc 1 632 0
	extr.u	%d2, %d2, 0, 16
.LVL56:
	.loc 1 631 0
	st.h	[%a13]0, %d15
	.loc 1 634 0
	lt.u	%d15, %d2, 256
	.loc 1 636 0
	cmovn	%d2, %d15, 0
.LVL57:
	.loc 1 638 0
	st.h	[%a15]0, %d2
	j	.L5
.LVL58:
.L14:
	ld.hu	%d4, [%a4]0
.LVL59:
.LBE44:
.LBE43:
.LBB45:
.LBB46:
	.loc 1 659 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d5, [%a2] lo:HARDPTG_s16AmplitudeC
.LVL60:
	.loc 1 661 0
	mov	%d3, 0
	mov	%d15, 0
	jnz	%d4, .L98
.LVL61:
.L39:
	.loc 1 691 0
	st.h	[%a12]0, %d15
	.loc 1 692 0
	st.h	[%a15]0, %d2
	.loc 1 693 0
	st.h	[%a13]0, %d3
	j	.L5
.LVL62:
.L96:
.LBE46:
.LBE45:
	.loc 1 149 0
	eq	%d2, %d2, 16
	jz	%d2, .L5
.L13:
.LVL63:
.LBB49:
.LBB50:
	.loc 1 604 0
	movh.a	%a15, hi:HARDPTG_s16ContinuousRequestC
	ld.h	%d15, [%a15] lo:HARDPTG_s16ContinuousRequestC
	mov	%d2, -32768
	.loc 1 606 0
	ne	%d2, %d15, %d2
	mov	%d4, -32767
	sel	%d15, %d2, %d15, %d4
.LVL64:
	.loc 1 613 0
	st.h	[%a13]0, %d15
	j	.L5
.LVL65:
.L94:
.LBE50:
.LBE49:
	.loc 1 149 0
	eq	%d15, %d15, 16
	jnz	%d15, .L13
	j	.L5
.L6:
	ld.hu	%d5, [%a4]0
.LVL66:
.LBB51:
.LBB52:
	.loc 1 532 0
	mov	%d4, 0
	mov	%d15, 0
	.loc 1 578 0
	mov	%d3, 0
	.loc 1 532 0
	jnz	%d5, .L99
.LVL67:
.L33:
	.loc 1 580 0
	st.h	[%a12]0, %d15
	.loc 1 581 0
	st.h	[%a15]0, %d3
	.loc 1 582 0
	st.h	[%a13]0, %d4
	j	.L5
.LVL68:
.L51:
.LBE52:
.LBE51:
.LBB57:
.LBB47:
	.loc 1 659 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.hu	%d2, [%a5]0
.LVL69:
	ld.h	%d5, [%a2] lo:HARDPTG_s16AmplitudeC
.LVL70:
.L54:
	.loc 1 663 0
	jz	%d2, .L40
	.loc 1 659 0
	sh	%d3, %d5, 1
	addi	%d3, %d3, -32768
.LVL71:
	mov	%d4, -32767
	.loc 1 676 0
	add	%d2, -1
.LVL72:
	max	%d3, %d3, %d4
.LVL73:
	extr.u	%d2, %d2, 0, 16
.LVL74:
	extr	%d3, %d3, 0, 16
.LVL75:
	j	.L39
.LVL76:
.L46:
	ld.hu	%d2, [%a5]0
.LVL77:
.L55:
.LBE47:
.LBE57:
.LBB58:
.LBB53:
	.loc 1 536 0
	movh.a	%a2, hi:HARDPTG_u32FrequenceC
	.loc 1 534 0
	add	%d2, 1
.LVL78:
	.loc 1 536 0
	ld.w	%d4, [%a2] lo:HARDPTG_u32FrequenceC
	.loc 1 534 0
	extr.u	%d3, %d2, 0, 16
.LVL79:
	.loc 1 536 0
	sh	%d2, %d4, -1
.LVL80:
	.loc 1 538 0
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	.loc 1 536 0
	jlt.u	%d2, %d3, .L34
	.loc 1 538 0
	ld.h	%d4, [%a2] lo:HARDPTG_s16OffsetC
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	sh	%d4, 1
	ld.h	%d2, [%a2] lo:HARDPTG_s16AmplitudeC
	addi	%d4, %d4, -32768
	add	%d4, %d2
.LVL81:
.L35:
	sat.h	%d4, %d4
.LVL82:
	j	.L33
.LVL83:
.L18:
.LBE53:
.LBE58:
.LBB59:
.LBB35:
	.loc 1 255 0
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	ld.h	%d2, [%a2] lo:HARDPTG_s16OffsetC
	addi	%d2, %d2, -32768
.LVL84:
	.loc 1 257 0
	jlt.u	%d4, %d6, .L19
.LVL85:
	.loc 1 261 0
	mov.u	%d3, 65535
.LVL86:
	.loc 1 259 0
	mov	%d4, 0
	.loc 1 261 0
	jeq	%d15, %d3, .L19
	.loc 1 263 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL87:
.L19:
	mov	%d3, -32768
	max	%d5, %d2, %d3
	extr	%d5, %d5, 0, 16
	j	.L17
.LVL88:
.L34:
.LBE35:
.LBE59:
.LBB60:
.LBB54:
	.loc 1 544 0
	ld.h	%d2, [%a2] lo:HARDPTG_s16OffsetC
	sh	%d2, 1
	.loc 1 542 0
	jge.u	%d3, %d4, .L36
	.loc 1 544 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	addi	%d4, %d2, -32768
	ld.h	%d2, [%a2] lo:HARDPTG_s16AmplitudeC
	sub	%d4, %d2
.LVL89:
	sat.h	%d4, %d4
.LVL90:
	j	.L33
.LVL91:
.L40:
.LBE54:
.LBE60:
.LBB61:
.LBB48:
	.loc 1 680 0
	mov.u	%d4, 65535
	mov	%e2, 0
.LVL92:
	jeq	%d15, %d4, .L39
	.loc 1 682 0
	add	%d15, -1
.LVL93:
	extr.u	%d15, %d15, 0, 16
.LVL94:
	j	.L39
.LVL95:
.L98:
	.loc 1 661 0
	mov	%d15, %d4
	j	.L54
.LVL96:
.L99:
.LBE48:
.LBE61:
.LBB62:
.LBB55:
	.loc 1 532 0
	mov	%d15, %d5
	j	.L55
.LVL97:
.L97:
.LBE55:
.LBE62:
.LBB63:
.LBB39:
	.loc 1 468 0
	sub	%d2, %d5, %d2
.LVL98:
	.loc 1 469 0
	jge	%d2, %d3, .L29
.LVL99:
	.loc 1 472 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L30
	.loc 1 474 0
	add	%d15, -1
.LVL100:
	extr.u	%d15, %d15, 0, 16
.LVL101:
.L30:
	.loc 1 476 0
	addi	%d2, %d4, 32767
.LVL102:
.L29:
	.loc 1 493 0
	mov.u	%d4, 32768
	mov	%d3, 32767
	jge	%d2, %d4, .L27
	j	.L43
.LVL103:
.L36:
.LBE39:
.LBE63:
.LBB64:
.LBB56:
	.loc 1 548 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	addi	%d4, %d2, -32768
	ld.h	%d2, [%a2] lo:HARDPTG_s16AmplitudeC
	.loc 1 550 0
	mov	%d3, 0
.LVL104:
	.loc 1 548 0
	sub	%d4, %d2
.LVL105:
	.loc 1 552 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L35
	.loc 1 554 0
	add	%d15, -1
.LVL106:
	extr.u	%d15, %d15, 0, 16
.LVL107:
	sat.h	%d4, %d4
.LVL108:
	j	.L33
.LVL109:
.L44:
.LBE56:
.LBE64:
.LBB65:
.LBB42:
	.loc 1 314 0
	ld.hu	%d2, [%a15]0
.LVL110:
	j	.L45
.LBE42:
.LBE65:
.LBE68:
.LBE71:
.LFE1:
	.size	HARD_vidPtgCalculate, .-HARD_vidPtgCalculate
.section .text.HARD_vidPtgCallTrigFunc,"ax",@progbits
	.align 1
	.global	HARD_vidPtgCallTrigFunc
	.type	HARD_vidPtgCallTrigFunc, @function
HARD_vidPtgCallTrigFunc:
.LFB2:
	.loc 1 148 0
.LVL111:
	.loc 1 149 0
	movh.a	%a15, hi:HARD_PtgModeTest
	ld.hu	%d15, [%a15] lo:HARD_PtgModeTest
	eq	%d2, %d15, 8
	jnz	%d2, .L102
	jlt.u	%d15, 9, .L162
	eq	%d2, %d15, 32
	jnz	%d2, .L107
	ge.u	%d2, %d15, 33
	jz	%d2, .L163
	eq	%d2, %d15, 64
	jnz	%d2, .L110
	eq	%d15, %d15, 128
	jz	%d15, .L164
.LVL112:
.LBB88:
.LBB89:
	.loc 1 712 0
	ld.hu	%d15, [%a4]0
	.loc 1 711 0
	ld.hu	%d2, [%a5]0
.LVL113:
	.loc 1 716 0
	mov	%d3, 0
	jz	%d15, .L136
	.loc 1 714 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	mov	%d5, -32767
	sh	%d3, 1
	addi	%d3, %d3, -32767
.LVL114:
	.loc 1 729 0
	add	%d15, -1
	max	%d3, %d3, %d5
.LVL115:
	extr.u	%d15, %d15, 0, 16
.LVL116:
	extr	%d3, %d3, 0, 16
.LVL117:
.L136:
	.loc 1 735 0
	st.h	[%a4]0, %d15
	.loc 1 736 0
	st.h	[%a5]0, %d2
	.loc 1 737 0
	st.h	[%a6]0, %d3
	ret
.LVL118:
.L162:
.LBE89:
.LBE88:
	.loc 1 149 0
	jeq	%d15, 2, .L104
	jeq	%d15, 4, .L105
	jeq	%d15, 1, .L165
	ret
.L105:
.LVL119:
.LBB90:
.LBB91:
	.loc 1 453 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d4, [%a15] lo:HARDPTG_s16OffsetC
	.loc 1 455 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	ld.w	%d3, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 461 0
	movh.a	%a15, hi:HARDPTG_s16SlewRateC
	.loc 1 452 0
	ld.hu	%d15, [%a4]0
.LVL120:
	.loc 1 453 0
	ld.h	%d5, [%a6]0
.LVL121:
	.loc 1 461 0
	ld.h	%d2, [%a15] lo:HARDPTG_s16SlewRateC
	.loc 1 455 0
	jz	%d3, .L121
	.loc 1 457 0
	div.u	%e2, %d2, %d3
.LVL122:
.L121:
	.loc 1 464 0
	mov	%d3, 0
	jz	%d15, .L122
	.loc 1 466 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	.loc 1 453 0
	sub	%d5, %d4
.LVL123:
	.loc 1 466 0
	jltz	%d3, .L166
	.loc 1 481 0
	add	%d2, %d5
.LVL124:
	.loc 1 482 0
	jge	%d3, %d2, .L126
.LVL125:
	.loc 1 485 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L127
	.loc 1 487 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL126:
.L127:
	.loc 1 489 0
	addi	%d2, %d4, -32767
.LVL127:
.L126:
	.loc 1 499 0
	mov	%d3, -32768
	jlt	%d2, %d3, .L122
.LVL128:
.L137:
	extr	%d3, %d2, 0, 16
.LVL129:
.L122:
	.loc 1 509 0
	st.h	[%a4]0, %d15
	.loc 1 510 0
	st.h	[%a6]0, %d3
	ret
.LVL130:
.L110:
.LBE91:
.LBE90:
.LBB93:
.LBB94:
	.loc 1 657 0
	ld.hu	%d15, [%a4]0
	.loc 1 656 0
	ld.hu	%d2, [%a5]0
.LVL131:
	.loc 1 661 0
	mov	%d3, 0
	jz	%d15, .L136
	.loc 1 663 0
	jnz	%d2, .L167
	.loc 1 680 0
	mov.u	%d4, 65535
	mov	%d3, %d2
	jeq	%d15, %d4, .L136
	.loc 1 682 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL132:
	j	.L136
.LVL133:
.L163:
.LBE94:
.LBE93:
	.loc 1 149 0
	eq	%d15, %d15, 16
	jz	%d15, .L168
.LVL134:
.LBB96:
.LBB97:
	.loc 1 604 0
	movh.a	%a15, hi:HARDPTG_s16ContinuousRequestC
	ld.h	%d15, [%a15] lo:HARDPTG_s16ContinuousRequestC
	mov	%d2, -32768
	.loc 1 606 0
	ne	%d2, %d15, %d2
	mov	%d3, -32767
	sel	%d15, %d2, %d15, %d3
.LVL135:
	.loc 1 613 0
	st.h	[%a6]0, %d15
	ret
.LVL136:
.L104:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	.loc 1 313 0
	ld.hu	%d15, [%a4]0
	mov.aa	%a13, %a6
	mov.aa	%a15, %a5
	mov.aa	%a12, %a4
.LVL137:
	.loc 1 314 0
	ld.hu	%d4, [%a5]0
.LVL138:
	.loc 1 317 0
	mov	%d2, 0
	.loc 1 359 0
	mov	%d8, 0
	.loc 1 317 0
	jz	%d15, .L117
.LVL139:
	.loc 1 319 0
	movh.a	%a2, hi:HARDPTG_u32FrequenceC
	ld.w	%d3, [%a2] lo:HARDPTG_u32FrequenceC
	.loc 1 329 0
	mov	%d8, 16384
	mov	%d5, 16384
	.loc 1 319 0
	jz	%d3, .L118
	.loc 1 321 0
	mov.u	%d2, 65535
	div.u	%e2, %d2, %d3
.LVL140:
	.loc 1 322 0
	mov	%d7, 16385
	jge.u	%d2, %d7, .L118
	.loc 1 321 0
	extr.u	%d8, %d2, 0, 16
	mov	%d5, %d2
.LVL141:
.L118:
	.loc 1 332 0
	add	%d3, %d4, %d5
	movh	%d2, 1
	jlt	%d3, %d2, .L119
	.loc 1 334 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L119
	.loc 1 336 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL142:
.L119:
	.loc 1 339 0
	add	%d8, %d4
.LVL143:
	extr.u	%d8, %d8, 0, 16
.LVL144:
	.loc 1 340 0
	mov	%d4, %d8
	call	MathSinus
.LVL145:
	.loc 1 341 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a2] lo:HARDPTG_s16AmplitudeC
	.loc 1 342 0
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	.loc 1 341 0
	mul	%d2, %d3
.LVL146:
	.loc 1 342 0
	ld.h	%d3, [%a2] lo:HARDPTG_s16OffsetC
	.loc 1 341 0
	sha	%d2, %d2, -15
.LVL147:
	.loc 1 342 0
	add	%d2, %d3
.LVL148:
	sat.h	%d2, %d2
.LVL149:
.L117:
	.loc 1 361 0
	st.h	[%a12]0, %d15
	.loc 1 362 0
	st.h	[%a15]0, %d8
	.loc 1 363 0
	st.h	[%a13]0, %d2
	ret
.LVL150:
.L165:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	.loc 1 239 0
	movh.a	%a15, hi:HARDPTG_u16PulseDutyCycleC
	ld.hu	%d15, [%a15] lo:HARDPTG_u16PulseDutyCycleC
	.loc 1 235 0
	ld.hu	%d2, [%a4]0
.LVL151:
	.loc 1 236 0
	ld.hu	%d5, [%a5]0
.LVL152:
	.loc 1 242 0
	cmovn	%d15, %d15, 1
.LVL153:
	.loc 1 245 0
	mov	%d4, 0
	.loc 1 287 0
	mov	%d3, 0
	.loc 1 245 0
	jz	%d2, .L113
	.loc 1 249 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	ld.w	%d6, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 247 0
	addi	%d3, %d5, 1
	.loc 1 249 0
	div.u	%e4, %d6, %d15
	.loc 1 247 0
	extr.u	%d3, %d3, 0, 16
.LVL154:
	.loc 1 249 0
	jge.u	%d4, %d3, .L169
	.loc 1 255 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d15, [%a15] lo:HARDPTG_s16OffsetC
.LVL155:
	addi	%d15, %d15, -32768
.LVL156:
	.loc 1 257 0
	jlt.u	%d3, %d6, .L115
.LVL157:
	.loc 1 261 0
	mov.u	%d4, 65535
	.loc 1 259 0
	mov	%d3, 0
	.loc 1 261 0
	jeq	%d2, %d4, .L115
	.loc 1 263 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
.LVL158:
.L115:
	mov	%d5, -32768
	max	%d4, %d15, %d5
	extr	%d4, %d4, 0, 16
.LVL159:
.L113:
	.loc 1 290 0
	st.h	[%a4]0, %d2
	.loc 1 291 0
	st.h	[%a5]0, %d3
	.loc 1 292 0
	st.h	[%a6]0, %d4
	ret
.LVL160:
.L107:
.LBE101:
.LBE100:
.LBB103:
.LBB104:
	.loc 1 629 0
	ld.hu	%d15, [%a5]0
.LVL161:
	.loc 1 631 0
	movh.a	%a15, hi:HARDPTG_s16HardProfilSimu
	lea	%a15, [%a15] lo:HARDPTG_s16HardProfilSimu
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 632 0
	add	%d15, 1
	.loc 1 631 0
	ld.h	%d2, [%a15]0
	.loc 1 632 0
	extr.u	%d15, %d15, 0, 16
.LVL162:
	.loc 1 631 0
	st.h	[%a6]0, %d2
	.loc 1 634 0
	lt.u	%d2, %d15, 256
	.loc 1 636 0
	sel	%d15, %d2, %d15, 0
.LVL163:
	.loc 1 638 0
	st.h	[%a5]0, %d15
	ret
.LVL164:
.L102:
.LBE104:
.LBE103:
.LBB105:
.LBB106:
	.loc 1 528 0
	ld.hu	%d15, [%a4]0
.LVL165:
	.loc 1 529 0
	ld.hu	%d4, [%a5]0
.LVL166:
	.loc 1 578 0
	mov	%e2, 0
	.loc 1 532 0
	jz	%d15, .L136
	.loc 1 536 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	.loc 1 534 0
	addi	%d2, %d4, 1
	.loc 1 536 0
	ld.w	%d4, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 534 0
	extr.u	%d2, %d2, 0, 16
.LVL167:
	.loc 1 536 0
	sh	%d3, %d4, -1
	.loc 1 538 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	.loc 1 536 0
	jge.u	%d3, %d2, .L170
	.loc 1 544 0
	ld.h	%d3, [%a15] lo:HARDPTG_s16OffsetC
	sh	%d3, 1
	.loc 1 542 0
	jge.u	%d2, %d4, .L131
	.loc 1 544 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	addi	%d4, %d3, -32768
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	sub	%d3, %d4, %d3
.LVL168:
.L130:
	sat.h	%d3, %d3
.LVL169:
	j	.L136
.LVL170:
.L170:
	.loc 1 538 0
	ld.h	%d3, [%a15] lo:HARDPTG_s16OffsetC
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	sh	%d3, 1
	ld.h	%d4, [%a15] lo:HARDPTG_s16AmplitudeC
	addi	%d3, %d3, -32768
	add	%d3, %d4
.LVL171:
	sat.h	%d3, %d3
.LVL172:
	j	.L136
.LVL173:
.L169:
.LBE106:
.LBE105:
.LBB108:
.LBB102:
	.loc 1 251 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d15, [%a15] lo:HARDPTG_s16AmplitudeC
.LVL174:
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d4, [%a15] lo:HARDPTG_s16OffsetC
	sh	%d15, 1
	addi	%d15, %d15, -32768
	add	%d15, %d4
.LVL175:
	.loc 1 268 0
	mov.u	%d5, 32768
	mov	%d4, 32767
	jge	%d15, %d5, .L113
	j	.L115
.LVL176:
.L167:
.LBE102:
.LBE108:
.LBB109:
.LBB95:
	.loc 1 659 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	mov	%d4, -32767
	sh	%d3, 1
	addi	%d3, %d3, -32768
.LVL177:
	.loc 1 676 0
	add	%d2, -1
	max	%d3, %d3, %d4
.LVL178:
	extr.u	%d2, %d2, 0, 16
.LVL179:
	extr	%d3, %d3, 0, 16
.LVL180:
	j	.L136
.LVL181:
.L166:
.LBE95:
.LBE109:
.LBB110:
.LBB92:
	.loc 1 468 0
	sub	%d2, %d5, %d2
.LVL182:
	.loc 1 469 0
	jge	%d2, %d3, .L124
.LVL183:
	.loc 1 472 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L125
	.loc 1 474 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL184:
.L125:
	.loc 1 476 0
	addi	%d2, %d4, 32767
.LVL185:
.L124:
	.loc 1 493 0
	mov.u	%d4, 32768
	mov	%d3, 32767
	jge	%d2, %d4, .L122
	j	.L137
.LVL186:
.L164:
	ret
.L168:
	ret
.LVL187:
.L131:
.LBE92:
.LBE110:
.LBB111:
.LBB107:
	.loc 1 548 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d2, [%a15] lo:HARDPTG_s16AmplitudeC
.LVL188:
	addi	%d3, %d3, -32768
	.loc 1 552 0
	mov.u	%d4, 65535
	.loc 1 548 0
	sub	%d3, %d2
.LVL189:
	.loc 1 550 0
	mov	%d2, 0
	.loc 1 552 0
	jeq	%d15, %d4, .L130
	.loc 1 554 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL190:
	sat.h	%d3, %d3
.LVL191:
	j	.L136
.LBE107:
.LBE111:
.LFE2:
	.size	HARD_vidPtgCallTrigFunc, .-HARD_vidPtgCallTrigFunc
.section .text.HARD_vidPtgPulse,"ax",@progbits
	.align 1
	.global	HARD_vidPtgPulse
	.type	HARD_vidPtgPulse, @function
HARD_vidPtgPulse:
.LFB3:
	.loc 1 229 0
.LVL192:
	.loc 1 239 0
	movh.a	%a15, hi:HARDPTG_u16PulseDutyCycleC
	ld.hu	%d15, [%a15] lo:HARDPTG_u16PulseDutyCycleC
	.loc 1 235 0
	ld.hu	%d2, [%a4]0
.LVL193:
	.loc 1 236 0
	ld.hu	%d5, [%a5]0
.LVL194:
	.loc 1 242 0
	cmovn	%d15, %d15, 1
.LVL195:
	mov	%d4, 0
	.loc 1 287 0
	mov	%d3, 0
	.loc 1 245 0
	jz	%d2, .L173
	.loc 1 249 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	ld.w	%d6, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 247 0
	addi	%d3, %d5, 1
	.loc 1 249 0
	div.u	%e4, %d6, %d15
	.loc 1 247 0
	extr.u	%d3, %d3, 0, 16
.LVL196:
	.loc 1 249 0
	jlt.u	%d4, %d3, .L174
	.loc 1 251 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d15, [%a15] lo:HARDPTG_s16AmplitudeC
.LVL197:
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d5, [%a15] lo:HARDPTG_s16OffsetC
	sh	%d15, 1
	addi	%d15, %d15, -32768
	add	%d15, %d5
.LVL198:
	.loc 1 268 0
	mov.u	%d5, 32768
	mov	%d4, 32767
	jlt	%d15, %d5, .L175
.LVL199:
.L173:
	.loc 1 290 0
	st.h	[%a4]0, %d2
	.loc 1 291 0
	st.h	[%a5]0, %d3
	.loc 1 292 0
	st.h	[%a6]0, %d4
	ret
.LVL200:
.L174:
	.loc 1 255 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d15, [%a15] lo:HARDPTG_s16OffsetC
.LVL201:
	addi	%d15, %d15, -32768
.LVL202:
	.loc 1 257 0
	jlt.u	%d3, %d6, .L175
.LVL203:
	.loc 1 261 0
	mov.u	%d4, 65535
	.loc 1 259 0
	mov	%d3, 0
	.loc 1 261 0
	jeq	%d2, %d4, .L175
	.loc 1 263 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
.LVL204:
.L175:
	mov	%d5, -32768
	max	%d4, %d15, %d5
	.loc 1 290 0
	st.h	[%a4]0, %d2
	extr	%d4, %d4, 0, 16
.LVL205:
	.loc 1 291 0
	st.h	[%a5]0, %d3
	.loc 1 292 0
	st.h	[%a6]0, %d4
	ret
.LFE3:
	.size	HARD_vidPtgPulse, .-HARD_vidPtgPulse
.section .text.HARD_vidPtgSinus,"ax",@progbits
	.align 1
	.global	HARD_vidPtgSinus
	.type	HARD_vidPtgSinus, @function
HARD_vidPtgSinus:
.LFB4:
	.loc 1 305 0
.LVL206:
	.loc 1 313 0
	ld.hu	%d15, [%a4]0
.LVL207:
	.loc 1 305 0
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	mov.aa	%a13, %a6
	.loc 1 314 0
	ld.hu	%d4, [%a5]0
.LVL208:
	mov	%d2, 0
	.loc 1 359 0
	mov	%d8, 0
	.loc 1 317 0
	jz	%d15, .L182
	.loc 1 319 0
	movh.a	%a2, hi:HARDPTG_u32FrequenceC
	ld.w	%d2, [%a2] lo:HARDPTG_u32FrequenceC
	.loc 1 329 0
	mov	%d8, 16384
	mov	%d6, 16384
	.loc 1 319 0
	jz	%d2, .L183
	.loc 1 321 0
	mov.u	%d3, 65535
	div.u	%e2, %d3, %d2
.LVL209:
	.loc 1 322 0
	mov	%d7, 16385
	jlt.u	%d2, %d7, .L190
.LVL210:
.L183:
	.loc 1 332 0
	add	%d3, %d4, %d6
	movh	%d2, 1
	jlt	%d3, %d2, .L184
.LVL211:
.L191:
	.loc 1 334 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L184
	.loc 1 336 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL212:
.L184:
	.loc 1 339 0
	add	%d8, %d4
	extr.u	%d8, %d8, 0, 16
.LVL213:
	.loc 1 340 0
	mov	%d4, %d8
	call	MathSinus
.LVL214:
	.loc 1 341 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a2] lo:HARDPTG_s16AmplitudeC
	.loc 1 342 0
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	.loc 1 341 0
	mul	%d2, %d3
.LVL215:
	.loc 1 342 0
	ld.h	%d3, [%a2] lo:HARDPTG_s16OffsetC
	.loc 1 341 0
	sha	%d2, %d2, -15
.LVL216:
	.loc 1 342 0
	add	%d2, %d3
.LVL217:
	sat.h	%d2, %d2
.LVL218:
.L182:
	.loc 1 361 0
	st.h	[%a12]0, %d15
	.loc 1 362 0
	st.h	[%a15]0, %d8
	.loc 1 363 0
	st.h	[%a13]0, %d2
	ret
.LVL219:
.L190:
	mov	%d6, %d2
	.loc 1 321 0
	extr.u	%d8, %d2, 0, 16
	.loc 1 332 0
	add	%d3, %d4, %d6
	movh	%d2, 1
.LVL220:
	jlt	%d3, %d2, .L184
	j	.L191
.LFE4:
	.size	HARD_vidPtgSinus, .-HARD_vidPtgSinus
.section .text.HARD_vidPtgCosinus,"ax",@progbits
	.align 1
	.global	HARD_vidPtgCosinus
	.type	HARD_vidPtgCosinus, @function
HARD_vidPtgCosinus:
.LFB5:
	.loc 1 376 0
.LVL221:
	.loc 1 384 0
	ld.hu	%d15, [%a4]0
.LVL222:
	.loc 1 376 0
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	mov.aa	%a13, %a6
	.loc 1 385 0
	ld.hu	%d4, [%a5]0
.LVL223:
	mov	%d2, 0
	.loc 1 430 0
	mov	%d8, 0
	.loc 1 388 0
	jz	%d15, .L193
	.loc 1 390 0
	movh.a	%a2, hi:HARDPTG_u32FrequenceC
	ld.w	%d2, [%a2] lo:HARDPTG_u32FrequenceC
	.loc 1 400 0
	mov	%d8, 16384
	mov	%d6, 16384
	.loc 1 390 0
	jz	%d2, .L194
	.loc 1 392 0
	mov.u	%d3, 65535
	div.u	%e2, %d3, %d2
.LVL224:
	.loc 1 393 0
	mov	%d7, 16385
	jlt.u	%d2, %d7, .L201
.LVL225:
.L194:
	.loc 1 403 0
	add	%d3, %d4, %d6
	movh	%d2, 1
	jlt	%d3, %d2, .L195
.LVL226:
.L202:
	.loc 1 405 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L195
	.loc 1 407 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL227:
.L195:
	.loc 1 410 0
	add	%d8, %d4
	extr.u	%d8, %d8, 0, 16
.LVL228:
	.loc 1 411 0
	mov	%d4, %d8
	call	MathCosinus
.LVL229:
	.loc 1 412 0
	movh.a	%a2, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a2] lo:HARDPTG_s16AmplitudeC
	.loc 1 413 0
	movh.a	%a2, hi:HARDPTG_s16OffsetC
	.loc 1 412 0
	mul	%d2, %d3
.LVL230:
	.loc 1 413 0
	ld.h	%d3, [%a2] lo:HARDPTG_s16OffsetC
	.loc 1 412 0
	sha	%d2, %d2, -15
.LVL231:
	.loc 1 413 0
	add	%d2, %d3
.LVL232:
	sat.h	%d2, %d2
.LVL233:
.L193:
	.loc 1 432 0
	st.h	[%a12]0, %d15
	.loc 1 433 0
	st.h	[%a15]0, %d8
	.loc 1 434 0
	st.h	[%a13]0, %d2
	ret
.LVL234:
.L201:
	mov	%d6, %d2
	.loc 1 392 0
	extr.u	%d8, %d2, 0, 16
	.loc 1 403 0
	add	%d3, %d4, %d6
	movh	%d2, 1
.LVL235:
	jlt	%d3, %d2, .L195
	j	.L202
.LFE5:
	.size	HARD_vidPtgCosinus, .-HARD_vidPtgCosinus
.section .text.HARD_vidPtgTriangle,"ax",@progbits
	.align 1
	.global	HARD_vidPtgTriangle
	.type	HARD_vidPtgTriangle, @function
HARD_vidPtgTriangle:
.LFB6:
	.loc 1 447 0
.LVL236:
	.loc 1 453 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	ld.h	%d4, [%a15] lo:HARDPTG_s16OffsetC
	.loc 1 455 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	ld.w	%d3, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 461 0
	movh.a	%a15, hi:HARDPTG_s16SlewRateC
	.loc 1 452 0
	ld.hu	%d15, [%a4]0
.LVL237:
	.loc 1 453 0
	ld.h	%d5, [%a5]0
.LVL238:
	.loc 1 461 0
	ld.h	%d2, [%a15] lo:HARDPTG_s16SlewRateC
	.loc 1 455 0
	jz	%d3, .L205
	.loc 1 457 0
	div.u	%e2, %d2, %d3
.LVL239:
.L205:
	mov	%d3, 0
	.loc 1 464 0
	jz	%d15, .L206
	.loc 1 466 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	.loc 1 453 0
	sub	%d5, %d4
.LVL240:
	.loc 1 466 0
	jltz	%d3, .L219
	.loc 1 481 0
	add	%d2, %d5
.LVL241:
	.loc 1 482 0
	jge	%d3, %d2, .L210
.LVL242:
	.loc 1 485 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L211
	.loc 1 487 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL243:
.L211:
	.loc 1 489 0
	addi	%d2, %d4, -32767
.LVL244:
.L210:
	mov	%d3, -32768
	.loc 1 499 0
	jge	%d2, %d3, .L212
.LVL245:
.L206:
	.loc 1 509 0
	st.h	[%a4]0, %d15
	.loc 1 510 0
	st.h	[%a5]0, %d3
	ret
.LVL246:
.L219:
	.loc 1 468 0
	sub	%d2, %d5, %d2
.LVL247:
	.loc 1 469 0
	jge	%d2, %d3, .L208
.LVL248:
	.loc 1 472 0
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L209
	.loc 1 474 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL249:
.L209:
	.loc 1 476 0
	addi	%d2, %d4, 32767
.LVL250:
.L208:
	.loc 1 493 0
	mov.u	%d4, 32768
	mov	%d3, 32767
	jge	%d2, %d4, .L206
.LVL251:
.L212:
	extr	%d3, %d2, 0, 16
.LVL252:
	.loc 1 509 0
	st.h	[%a4]0, %d15
	.loc 1 510 0
	st.h	[%a5]0, %d3
	ret
.LFE6:
	.size	HARD_vidPtgTriangle, .-HARD_vidPtgTriangle
.section .text.HARD_vidPtgSquare,"ax",@progbits
	.align 1
	.global	HARD_vidPtgSquare
	.type	HARD_vidPtgSquare, @function
HARD_vidPtgSquare:
.LFB7:
	.loc 1 523 0
.LVL253:
	.loc 1 528 0
	ld.hu	%d15, [%a4]0
.LVL254:
	.loc 1 529 0
	ld.hu	%d4, [%a5]0
.LVL255:
	.loc 1 578 0
	mov	%e2, 0
	.loc 1 532 0
	jz	%d15, .L221
	.loc 1 536 0
	movh.a	%a15, hi:HARDPTG_u32FrequenceC
	.loc 1 534 0
	addi	%d2, %d4, 1
	.loc 1 536 0
	ld.w	%d4, [%a15] lo:HARDPTG_u32FrequenceC
	.loc 1 534 0
	extr.u	%d2, %d2, 0, 16
.LVL256:
	.loc 1 536 0
	sh	%d3, %d4, -1
	.loc 1 538 0
	movh.a	%a15, hi:HARDPTG_s16OffsetC
	.loc 1 536 0
	jlt.u	%d3, %d2, .L222
	.loc 1 538 0
	ld.h	%d3, [%a15] lo:HARDPTG_s16OffsetC
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	sh	%d3, 1
	ld.h	%d4, [%a15] lo:HARDPTG_s16AmplitudeC
	addi	%d3, %d3, -32768
	add	%d3, %d4
.LVL257:
.L223:
	sat.h	%d3, %d3
.LVL258:
.L221:
	.loc 1 580 0
	st.h	[%a4]0, %d15
	.loc 1 581 0
	st.h	[%a5]0, %d2
	.loc 1 582 0
	st.h	[%a6]0, %d3
	ret
.LVL259:
.L222:
	.loc 1 544 0
	ld.h	%d3, [%a15] lo:HARDPTG_s16OffsetC
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	sh	%d3, 1
	addi	%d3, %d3, -32768
	.loc 1 542 0
	jlt.u	%d2, %d4, .L228
	.loc 1 548 0
	ld.h	%d2, [%a15] lo:HARDPTG_s16AmplitudeC
.LVL260:
	.loc 1 552 0
	mov.u	%d4, 65535
	.loc 1 548 0
	sub	%d3, %d2
.LVL261:
	.loc 1 550 0
	mov	%d2, 0
	.loc 1 552 0
	jeq	%d15, %d4, .L223
	.loc 1 554 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL262:
	sat.h	%d3, %d3
.LVL263:
	j	.L221
.LVL264:
.L228:
	.loc 1 544 0
	ld.h	%d4, [%a15] lo:HARDPTG_s16AmplitudeC
	sub	%d3, %d4
.LVL265:
	sat.h	%d3, %d3
.LVL266:
	j	.L221
.LFE7:
	.size	HARD_vidPtgSquare, .-HARD_vidPtgSquare
.section .text.HARD_vidPtgContinuous,"ax",@progbits
	.align 1
	.global	HARD_vidPtgContinuous
	.type	HARD_vidPtgContinuous, @function
HARD_vidPtgContinuous:
.LFB8:
	.loc 1 595 0
.LVL267:
	.loc 1 604 0
	movh.a	%a15, hi:HARDPTG_s16ContinuousRequestC
	ld.h	%d15, [%a15] lo:HARDPTG_s16ContinuousRequestC
	mov	%d2, -32768
	.loc 1 606 0
	ne	%d2, %d15, %d2
	mov	%d3, -32767
	sel	%d15, %d2, %d15, %d3
.LVL268:
	.loc 1 613 0
	st.h	[%a4]0, %d15
	ret
.LFE8:
	.size	HARD_vidPtgContinuous, .-HARD_vidPtgContinuous
.section .text.HARD_vidPtgSimu,"ax",@progbits
	.align 1
	.global	HARD_vidPtgSimu
	.type	HARD_vidPtgSimu, @function
HARD_vidPtgSimu:
.LFB9:
	.loc 1 626 0
.LVL269:
	.loc 1 629 0
	ld.hu	%d15, [%a4]0
.LVL270:
	.loc 1 631 0
	movh.a	%a15, hi:HARDPTG_s16HardProfilSimu
	lea	%a15, [%a15] lo:HARDPTG_s16HardProfilSimu
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 632 0
	add	%d15, 1
	.loc 1 631 0
	ld.h	%d2, [%a15]0
	.loc 1 632 0
	extr.u	%d15, %d15, 0, 16
.LVL271:
	.loc 1 631 0
	st.h	[%a5]0, %d2
	.loc 1 634 0
	lt.u	%d2, %d15, 256
	.loc 1 636 0
	sel	%d15, %d2, %d15, 0
.LVL272:
	.loc 1 638 0
	st.h	[%a4]0, %d15
	ret
.LFE9:
	.size	HARD_vidPtgSimu, .-HARD_vidPtgSimu
.section .text.HARD_vidPtgDisjunction,"ax",@progbits
	.align 1
	.global	HARD_vidPtgDisjunction
	.type	HARD_vidPtgDisjunction, @function
HARD_vidPtgDisjunction:
.LFB10:
	.loc 1 651 0
.LVL273:
	.loc 1 657 0
	ld.hu	%d15, [%a4]0
	.loc 1 656 0
	ld.hu	%d2, [%a5]0
.LVL274:
	mov	%d3, 0
	.loc 1 661 0
	jz	%d15, .L235
	.loc 1 663 0
	jnz	%d2, .L240
	.loc 1 680 0
	mov.u	%d4, 65535
	mov	%d3, %d2
	jeq	%d15, %d4, .L235
	.loc 1 682 0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.LVL275:
.L235:
	.loc 1 691 0
	st.h	[%a4]0, %d15
	.loc 1 692 0
	st.h	[%a5]0, %d2
	.loc 1 693 0
	st.h	[%a6]0, %d3
	ret
.LVL276:
.L240:
	.loc 1 659 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	.loc 1 676 0
	add	%d2, -1
	.loc 1 659 0
	sh	%d3, 1
	addi	%d3, %d3, -32768
.LVL277:
	mov	%d4, -32767
	.loc 1 676 0
	extr.u	%d2, %d2, 0, 16
.LVL278:
	max	%d3, %d3, %d4
.LVL279:
	.loc 1 691 0
	st.h	[%a4]0, %d15
.LVL280:
	extr	%d3, %d3, 0, 16
.LVL281:
	.loc 1 692 0
	st.h	[%a5]0, %d2
	.loc 1 693 0
	st.h	[%a6]0, %d3
	ret
.LFE10:
	.size	HARD_vidPtgDisjunction, .-HARD_vidPtgDisjunction
.section .text.HARD_vidPtgFree,"ax",@progbits
	.align 1
	.global	HARD_vidPtgFree
	.type	HARD_vidPtgFree, @function
HARD_vidPtgFree:
.LFB11:
	.loc 1 706 0
.LVL282:
	.loc 1 712 0
	ld.hu	%d15, [%a4]0
	.loc 1 711 0
	ld.hu	%d2, [%a5]0
.LVL283:
	mov	%d3, 0
	.loc 1 716 0
	jz	%d15, .L242
	.loc 1 714 0
	movh.a	%a15, hi:HARDPTG_s16AmplitudeC
	ld.h	%d3, [%a15] lo:HARDPTG_s16AmplitudeC
	mov	%d4, -32767
	sh	%d3, 1
	addi	%d3, %d3, -32767
.LVL284:
	.loc 1 729 0
	add	%d15, -1
	max	%d3, %d3, %d4
.LVL285:
	extr.u	%d15, %d15, 0, 16
.LVL286:
	extr	%d3, %d3, 0, 16
.LVL287:
.L242:
	.loc 1 735 0
	st.h	[%a4]0, %d15
.LVL288:
	.loc 1 736 0
	st.h	[%a5]0, %d2
	.loc 1 737 0
	st.h	[%a6]0, %d3
	ret
.LFE11:
	.size	HARD_vidPtgFree, .-HARD_vidPtgFree
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
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\HARD\\HARD.h"
	.file 4 "bswcdd\\HARD\\HARD_L.h"
	.file 5 "bswcdd\\HARD\\HARD_Tab.h"
	.file 6 "bswcdd\\HARD\\MATH_TRI.H"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x12be
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\HARD\\HARD_Ptg.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x140
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x56
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1ee
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x212
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
	.uaword	0x238
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
	.uaword	0x1b4
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
	.string	"HARD_vidPtgContinuous"
	.byte	0x1
	.uahalf	0x252
	.byte	0x1
	.byte	0x1
	.uaword	0x2e9
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x252
	.uaword	0x2e9
	.uleb128 0x6
	.string	"s16LocalValue"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x1c5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c5
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidPtgSimu"
	.byte	0x1
	.uahalf	0x271
	.byte	0x1
	.byte	0x1
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x271
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x271
	.uaword	0x2e9
	.uleb128 0x6
	.string	"u16LocalValue"
	.byte	0x1
	.uahalf	0x273
	.uaword	0x1e0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1e0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidPtgFree"
	.byte	0x1
	.uahalf	0x2c1
	.byte	0x1
	.byte	0x1
	.uaword	0x3a3
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x2e9
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0x204
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0x1e0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"HARD_vidPtgInit"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"HARD_vidPtgCallTrigFunc"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.uaword	0x408
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x1
	.byte	0x90
	.uaword	0x339
	.uleb128 0xb
	.uaword	.LASF7
	.byte	0x1
	.byte	0x91
	.uaword	0x339
	.uleb128 0xb
	.uaword	.LASF8
	.byte	0x1
	.byte	0x92
	.uaword	0x2e9
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"HARD_vidPtgPulse"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.byte	0x1
	.uaword	0x484
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.byte	0xe4
	.uaword	0x339
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe4
	.uaword	0x339
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe4
	.uaword	0x2e9
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x1
	.byte	0xe6
	.uaword	0x1e0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe7
	.uaword	0x1e0
	.uleb128 0xd
	.string	"u16LocalPulseDutyCycle"
	.byte	0x1
	.byte	0xe8
	.uaword	0x1e0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.byte	0xe9
	.uaword	0x204
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidPtgSinus"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.byte	0x1
	.uaword	0x501
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x130
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x130
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x130
	.uaword	0x2e9
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x132
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x133
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x134
	.uaword	0x204
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x136
	.uaword	0x1c5
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x137
	.uaword	0x1e0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidPtgTriangle"
	.byte	0x1
	.uahalf	0x1be
	.byte	0x1
	.byte	0x1
	.uaword	0x56a
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x2e9
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0x204
	.uleb128 0x6
	.string	"s32LocalSlewRate"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x204
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidPtgSquare"
	.byte	0x1
	.uahalf	0x20a
	.byte	0x1
	.byte	0x1
	.uaword	0x5d0
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x2e9
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x20c
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x20d
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x204
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidPtgDisjunction"
	.byte	0x1
	.uahalf	0x28a
	.byte	0x1
	.byte	0x1
	.uaword	0x645
	.uleb128 0xe
	.string	"pu16Nbrequest"
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x339
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x2e9
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x28c
	.uaword	0x204
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x1e0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x1e0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"HARD_vidPtgCalculate"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x98b
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x1
	.byte	0x64
	.uaword	0x339
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x1
	.byte	0x65
	.uaword	0x339
	.uaword	.LLST1
	.uleb128 0x11
	.string	"p_u16RefTime"
	.byte	0x1
	.byte	0x66
	.uaword	0x339
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x1
	.byte	0x67
	.uaword	0x2e9
	.uaword	.LLST3
	.uleb128 0x12
	.string	"p_bEnable"
	.byte	0x1
	.byte	0x68
	.uaword	0x98b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"p_u16Shift"
	.byte	0x1
	.byte	0x69
	.uaword	0x339
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"p_bShiftControl"
	.byte	0x1
	.byte	0x6a
	.uaword	0x98b
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	0x3c4
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x74
	.uleb128 0x14
	.uaword	0x3fc
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	0x3f1
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	0x3e6
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	0x33f
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xd2
	.uaword	0x772
	.uleb128 0x14
	.uaword	0x372
	.uaword	.LLST8
	.uleb128 0x14
	.uaword	0x366
	.uaword	.LLST9
	.uleb128 0x14
	.uaword	0x35a
	.uaword	.LLST10
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x17
	.uaword	0x37e
	.uaword	.LLST11
	.uleb128 0x17
	.uaword	0x38a
	.uaword	.LLST12
	.uleb128 0x17
	.uaword	0x396
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x408
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x98
	.uaword	0x7cb
	.uleb128 0x14
	.uaword	0x439
	.uaword	.LLST14
	.uleb128 0x14
	.uaword	0x42e
	.uaword	.LLST15
	.uleb128 0x14
	.uaword	0x423
	.uaword	.LLST16
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x17
	.uaword	0x444
	.uaword	.LLST17
	.uleb128 0x17
	.uaword	0x44f
	.uaword	.LLST18
	.uleb128 0x17
	.uaword	0x45a
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	0x478
	.uaword	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x501
	.uaword	.LBB37
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xb0
	.uaword	0x812
	.uleb128 0x14
	.uaword	0x52c
	.uaword	.LLST21
	.uleb128 0x14
	.uaword	0x520
	.uaword	.LLST22
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x17
	.uaword	0x538
	.uaword	.LLST23
	.uleb128 0x17
	.uaword	0x544
	.uaword	.LLST24
	.uleb128 0x17
	.uaword	0x550
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x484
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xa0
	.uaword	0x884
	.uleb128 0x14
	.uaword	0x4b8
	.uaword	.LLST26
	.uleb128 0x14
	.uaword	0x4ac
	.uaword	.LLST27
	.uleb128 0x14
	.uaword	0x4a0
	.uaword	.LLST28
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x17
	.uaword	0x4c4
	.uaword	.LLST29
	.uleb128 0x17
	.uaword	0x4d0
	.uaword	.LLST30
	.uleb128 0x17
	.uaword	0x4dc
	.uaword	.LLST31
	.uleb128 0x17
	.uaword	0x4e8
	.uaword	.LLST32
	.uleb128 0x17
	.uaword	0x4f4
	.uaword	.LLST33
	.uleb128 0x18
	.uaword	.LVL48
	.uaword	0x1287
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2ef
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.byte	0xc3
	.uaword	0x8bd
	.uleb128 0x14
	.uaword	0x316
	.uaword	.LLST34
	.uleb128 0x14
	.uaword	0x30a
	.uaword	.LLST35
	.uleb128 0x1b
	.uaword	.LBB44
	.uaword	.LBE44
	.uleb128 0x17
	.uaword	0x322
	.uaword	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x5d0
	.uaword	.LBB45
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xca
	.uaword	0x90d
	.uleb128 0x14
	.uaword	0x614
	.uaword	.LLST37
	.uleb128 0x14
	.uaword	0x608
	.uaword	.LLST38
	.uleb128 0x14
	.uaword	0x5f2
	.uaword	.LLST39
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x17
	.uaword	0x620
	.uaword	.LLST40
	.uleb128 0x17
	.uaword	0x62c
	.uaword	.LLST41
	.uleb128 0x17
	.uaword	0x638
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2a5
	.uaword	.LBB49
	.uaword	.LBE49
	.byte	0x1
	.byte	0xbf
	.uaword	0x93d
	.uleb128 0x14
	.uaword	0x2c6
	.uaword	.LLST43
	.uleb128 0x1b
	.uaword	.LBB50
	.uaword	.LBE50
	.uleb128 0x17
	.uaword	0x2d2
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x56a
	.uaword	.LBB51
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xb7
	.uleb128 0x14
	.uaword	0x59f
	.uaword	.LLST45
	.uleb128 0x14
	.uaword	0x593
	.uaword	.LLST46
	.uleb128 0x14
	.uaword	0x587
	.uaword	.LLST47
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x17
	.uaword	0x5ab
	.uaword	.LLST48
	.uleb128 0x17
	.uaword	0x5b7
	.uaword	.LLST49
	.uleb128 0x17
	.uaword	0x5c3
	.uaword	.LLST50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x275
	.uleb128 0x1c
	.uaword	0x3c4
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc31
	.uleb128 0x14
	.uaword	0x3e6
	.uaword	.LLST51
	.uleb128 0x14
	.uaword	0x3f1
	.uaword	.LLST52
	.uleb128 0x14
	.uaword	0x3fc
	.uaword	.LLST53
	.uleb128 0x1a
	.uaword	0x33f
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.byte	0xd2
	.uaword	0xa15
	.uleb128 0x14
	.uaword	0x372
	.uaword	.LLST54
	.uleb128 0x14
	.uaword	0x366
	.uaword	.LLST55
	.uleb128 0x14
	.uaword	0x35a
	.uaword	.LLST56
	.uleb128 0x1b
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x17
	.uaword	0x37e
	.uaword	.LLST57
	.uleb128 0x17
	.uaword	0x38a
	.uaword	.LLST58
	.uleb128 0x17
	.uaword	0x396
	.uaword	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x501
	.uaword	.LBB90
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xb0
	.uaword	0xa5c
	.uleb128 0x14
	.uaword	0x52c
	.uaword	.LLST60
	.uleb128 0x14
	.uaword	0x520
	.uaword	.LLST61
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x17
	.uaword	0x538
	.uaword	.LLST62
	.uleb128 0x17
	.uaword	0x544
	.uaword	.LLST63
	.uleb128 0x17
	.uaword	0x550
	.uaword	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x5d0
	.uaword	.LBB93
	.uaword	.Ldebug_ranges0+0xf8
	.byte	0x1
	.byte	0xca
	.uaword	0xaac
	.uleb128 0x14
	.uaword	0x614
	.uaword	.LLST65
	.uleb128 0x14
	.uaword	0x608
	.uaword	.LLST66
	.uleb128 0x14
	.uaword	0x5f2
	.uaword	.LLST67
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x17
	.uaword	0x620
	.uaword	.LLST68
	.uleb128 0x17
	.uaword	0x62c
	.uaword	.LLST69
	.uleb128 0x17
	.uaword	0x638
	.uaword	.LLST70
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2a5
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.byte	0xbf
	.uaword	0xadc
	.uleb128 0x14
	.uaword	0x2c6
	.uaword	.LLST71
	.uleb128 0x1b
	.uaword	.LBB97
	.uaword	.LBE97
	.uleb128 0x17
	.uaword	0x2d2
	.uaword	.LLST72
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x484
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0xa0
	.uaword	0xb52
	.uleb128 0x14
	.uaword	0x4b8
	.uaword	.LLST73
	.uleb128 0x14
	.uaword	0x4ac
	.uaword	.LLST74
	.uleb128 0x14
	.uaword	0x4a0
	.uaword	.LLST75
	.uleb128 0x1b
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x17
	.uaword	0x4c4
	.uaword	.LLST76
	.uleb128 0x17
	.uaword	0x4d0
	.uaword	.LLST77
	.uleb128 0x17
	.uaword	0x4dc
	.uaword	.LLST78
	.uleb128 0x17
	.uaword	0x4e8
	.uaword	.LLST79
	.uleb128 0x17
	.uaword	0x4f4
	.uaword	.LLST80
	.uleb128 0x18
	.uaword	.LVL145
	.uaword	0x1287
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x408
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x98
	.uaword	0xbab
	.uleb128 0x14
	.uaword	0x439
	.uaword	.LLST81
	.uleb128 0x14
	.uaword	0x42e
	.uaword	.LLST82
	.uleb128 0x14
	.uaword	0x423
	.uaword	.LLST83
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x110
	.uleb128 0x17
	.uaword	0x444
	.uaword	.LLST84
	.uleb128 0x17
	.uaword	0x44f
	.uaword	.LLST85
	.uleb128 0x17
	.uaword	0x45a
	.uaword	.LLST86
	.uleb128 0x17
	.uaword	0x478
	.uaword	.LLST87
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2ef
	.uaword	.LBB103
	.uaword	.LBE103
	.byte	0x1
	.byte	0xc3
	.uaword	0xbe4
	.uleb128 0x14
	.uaword	0x316
	.uaword	.LLST88
	.uleb128 0x14
	.uaword	0x30a
	.uaword	.LLST89
	.uleb128 0x1b
	.uaword	.LBB104
	.uaword	.LBE104
	.uleb128 0x17
	.uaword	0x322
	.uaword	.LLST90
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x56a
	.uaword	.LBB105
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0xb7
	.uleb128 0x14
	.uaword	0x59f
	.uaword	.LLST91
	.uleb128 0x14
	.uaword	0x593
	.uaword	.LLST92
	.uleb128 0x14
	.uaword	0x587
	.uaword	.LLST93
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x128
	.uleb128 0x17
	.uaword	0x5ab
	.uaword	.LLST94
	.uleb128 0x17
	.uaword	0x5b7
	.uaword	.LLST95
	.uleb128 0x17
	.uaword	0x5c3
	.uaword	.LLST96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x408
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc80
	.uleb128 0x1d
	.uaword	0x423
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x42e
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	0x439
	.byte	0x1
	.byte	0x66
	.uleb128 0x17
	.uaword	0x444
	.uaword	.LLST97
	.uleb128 0x17
	.uaword	0x44f
	.uaword	.LLST98
	.uleb128 0x17
	.uaword	0x45a
	.uaword	.LLST99
	.uleb128 0x17
	.uaword	0x478
	.uaword	.LLST100
	.byte	0
	.uleb128 0x1c
	.uaword	0x484
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcee
	.uleb128 0x14
	.uaword	0x4a0
	.uaword	.LLST101
	.uleb128 0x14
	.uaword	0x4ac
	.uaword	.LLST102
	.uleb128 0x14
	.uaword	0x4b8
	.uaword	.LLST103
	.uleb128 0x17
	.uaword	0x4c4
	.uaword	.LLST104
	.uleb128 0x17
	.uaword	0x4d0
	.uaword	.LLST105
	.uleb128 0x17
	.uaword	0x4dc
	.uaword	.LLST106
	.uleb128 0x17
	.uaword	0x4e8
	.uaword	.LLST107
	.uleb128 0x17
	.uaword	0x4f4
	.uaword	.LLST108
	.uleb128 0x18
	.uaword	.LVL214
	.uaword	0x1287
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"HARD_vidPtgCosinus"
	.byte	0x1
	.uahalf	0x177
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xda8
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x177
	.uaword	0x339
	.uaword	.LLST109
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x177
	.uaword	0x339
	.uaword	.LLST110
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x177
	.uaword	0x2e9
	.uaword	.LLST111
	.uleb128 0x20
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x179
	.uaword	0x1e0
	.uaword	.LLST112
	.uleb128 0x20
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x1e0
	.uaword	.LLST113
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x204
	.uaword	.LLST114
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x1c5
	.uaword	.LLST115
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x1e0
	.uaword	.LLST116
	.uleb128 0x18
	.uaword	.LVL229
	.uaword	0x12a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x501
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xde7
	.uleb128 0x1d
	.uaword	0x520
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x52c
	.byte	0x1
	.byte	0x65
	.uleb128 0x17
	.uaword	0x538
	.uaword	.LLST117
	.uleb128 0x17
	.uaword	0x544
	.uaword	.LLST118
	.uleb128 0x17
	.uaword	0x550
	.uaword	.LLST119
	.byte	0
	.uleb128 0x1c
	.uaword	0x56a
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe2d
	.uleb128 0x1d
	.uaword	0x587
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x593
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	0x59f
	.byte	0x1
	.byte	0x66
	.uleb128 0x17
	.uaword	0x5ab
	.uaword	.LLST120
	.uleb128 0x17
	.uaword	0x5b7
	.uaword	.LLST121
	.uleb128 0x17
	.uaword	0x5c3
	.uaword	.LLST122
	.byte	0
	.uleb128 0x1c
	.uaword	0x2a5
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe51
	.uleb128 0x1d
	.uaword	0x2c6
	.byte	0x1
	.byte	0x64
	.uleb128 0x21
	.uaword	0x2d2
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x1c
	.uaword	0x2ef
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe7e
	.uleb128 0x1d
	.uaword	0x30a
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x316
	.byte	0x1
	.byte	0x65
	.uleb128 0x17
	.uaword	0x322
	.uaword	.LLST123
	.byte	0
	.uleb128 0x1c
	.uaword	0x5d0
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xec4
	.uleb128 0x1d
	.uaword	0x5f2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x608
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	0x614
	.byte	0x1
	.byte	0x66
	.uleb128 0x17
	.uaword	0x620
	.uaword	.LLST124
	.uleb128 0x17
	.uaword	0x62c
	.uaword	.LLST125
	.uleb128 0x17
	.uaword	0x638
	.uaword	.LLST126
	.byte	0
	.uleb128 0x1c
	.uaword	0x33f
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf0a
	.uleb128 0x1d
	.uaword	0x35a
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x366
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	0x372
	.byte	0x1
	.byte	0x66
	.uleb128 0x17
	.uaword	0x37e
	.uaword	.LLST127
	.uleb128 0x17
	.uaword	0x38a
	.uaword	.LLST128
	.uleb128 0x17
	.uaword	0x396
	.uaword	.LLST129
	.byte	0
	.uleb128 0x22
	.string	"HARDPTG_u32FrequenceC"
	.byte	0x3
	.byte	0x5a
	.uaword	0xf29
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.uaword	0x22a
	.uleb128 0x22
	.string	"HARDPTG_s16AmplitudeC"
	.byte	0x3
	.byte	0x60
	.uaword	0xf4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.uaword	0x1c5
	.uleb128 0x22
	.string	"HARDPTG_s16ContinuousRequestC"
	.byte	0x3
	.byte	0x61
	.uaword	0xf4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"HARDPTG_s16OffsetC"
	.byte	0x3
	.byte	0x62
	.uaword	0xf4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"HARDPTG_s16SlewRateC"
	.byte	0x3
	.byte	0x63
	.uaword	0xf4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"HARDPTG_u16PulseDutyCycleC"
	.byte	0x3
	.byte	0x64
	.uaword	0xfd7
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.uaword	0x1e0
	.uleb128 0x22
	.string	"HARD_PtgModeTest"
	.byte	0x3
	.byte	0x70
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_bPtgEnable"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_bPtgSignalsShiftControl"
	.byte	0x3
	.uahalf	0x15b
	.uaword	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_bPtgUSignalEnable"
	.byte	0x3
	.uahalf	0x15c
	.uaword	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_bPtgVSignalEnable"
	.byte	0x3
	.uahalf	0x15d
	.uaword	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_bPtgWSignalEnable"
	.byte	0x3
	.uahalf	0x15e
	.uaword	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_s16PtgRefSignalValue"
	.byte	0x3
	.uahalf	0x166
	.uaword	0x1c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_s16PtgUSignalValue"
	.byte	0x3
	.uahalf	0x167
	.uaword	0x1c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_s16PtgVSignalValue"
	.byte	0x3
	.uahalf	0x168
	.uaword	0x1c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_s16PtgWSignalValue"
	.byte	0x3
	.uahalf	0x169
	.uaword	0x1c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgRefSignalTime"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgUSignalNbPeriode"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgUSignalTime"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgVSignalNbPeriode"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgVSignalTime"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgWSignalNbPeriode"
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"HARD_u16PtgWSignalTime"
	.byte	0x3
	.uahalf	0x170
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"HARD_u16PtgRefSignalNbPeriode"
	.byte	0x4
	.byte	0x42
	.uaword	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x1c5
	.uaword	0x1253
	.uleb128 0x26
	.uaword	0x1253
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x22
	.string	"HARDPTG_s16HardProfilSimu"
	.byte	0x5
	.byte	0x38
	.uaword	0x1282
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.uaword	0x1243
	.uleb128 0x27
	.byte	0x1
	.string	"MathSinus"
	.byte	0x6
	.byte	0x3d
	.byte	0x1
	.uaword	0x1c5
	.byte	0x1
	.uaword	0x12a5
	.uleb128 0x28
	.uaword	0x1e0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"MathCosinus"
	.byte	0x6
	.byte	0x3e
	.byte	0x1
	.uaword	0x1c5
	.byte	0x1
	.uleb128 0x28
	.uaword	0x1e0
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
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
	.uaword	.LVL0
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL6
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL5
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL16
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL53
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.uahalf	0x7fff
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.uahalf	0x7fff
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL83
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL83
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL83
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL83
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL28
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL97
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL28
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x10
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x10
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL99
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL39
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL109
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL39
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL109
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL39
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL109
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL40
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL110
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL109
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL40
	.uaword	.LVL48-1
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL110
	.uaword	.LFE1
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL91
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL91
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL91
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.uahalf	0x8000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.uahalf	0x8000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x15
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.uahalf	0x8000
	.byte	0x1c
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL96
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.uahalf	0x8000
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL77
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL103
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL103
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL103
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL77
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL81
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x9
	.byte	0x87
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL111
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL145-1
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL150
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL111
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL145-1
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL150
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL111
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL145-1
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL150
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL112
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL112
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL112
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL113
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL113
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL116
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL119
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL181
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL119
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL181
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL120
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL181
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL184
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x10
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x10
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL183
	.uaword	.LVL185
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL130
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL176
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL130
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL176
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL130
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL176
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL131
	.uaword	.LVL133
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL176
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL179
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL176
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL139
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL145-1
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL139
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL145-1
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL139
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL145-1
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL139
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL144
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL139
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL142
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x9
	.byte	0x8d
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL145-1
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL141
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL150
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL173
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL150
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL173
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL150
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL173
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL152
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL154
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL173
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL151
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL153
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL152
	.uaword	.LVL156
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL173
	.uaword	.LVL175
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL160
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL160
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL164
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL187
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL164
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL187
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL164
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL187
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL167
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0xb
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL190
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL187
	.uaword	.LVL190
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL190
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL166
	.uaword	.LVL168
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL196
	.uaword	.LVL203
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL193
	.uaword	.LVL199
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL200
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL204
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL195
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL194
	.uaword	.LVL198
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL200
	.uaword	.LVL202
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL206
	.uaword	.LVL214-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL214-1
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL219
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL206
	.uaword	.LVL214-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL214-1
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL219
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL206
	.uaword	.LVL214-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL214-1
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL219
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL208
	.uaword	.LVL213
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL213
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL219
	.uaword	.LFE4
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL207
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL212
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL219
	.uaword	.LFE4
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL208
	.uaword	.LVL214-1
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL219
	.uaword	.LFE4
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL220
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL221
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL229-1
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL234
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL221
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL229-1
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL234
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL221
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL229-1
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL234
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL223
	.uaword	.LVL228
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL228
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL234
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL222
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL227
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL234
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL223
	.uaword	.LVL229-1
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL234
	.uaword	.LFE5
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL237
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL243
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL246
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL249
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL238
	.uaword	.LVL240
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x10
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x10
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL248
	.uaword	.LVL250
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL252
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL239
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL255
	.uaword	.LVL256
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL256
	.uaword	.LVL260
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0xb
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL262
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL264
	.uaword	.LVL265
	.uahalf	0xb
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL265
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL254
	.uaword	.LVL257
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL257
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL259
	.uaword	.LVL262
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL262
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL264
	.uaword	.LVL265
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL265
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL255
	.uaword	.LVL257
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL263
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL264
	.uaword	.LVL265
	.uahalf	0x9
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL271
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL277
	.uaword	.LVL279
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL279
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL276
	.uaword	.LVL278
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL278
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL276
	.uaword	.LVL280
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL280
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL284
	.uaword	.LVL285
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xb
	.uahalf	0x8001
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL283
	.uaword	.LVL288
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL288
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL283
	.uaword	.LVL286
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL286
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
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
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0
	.uaword	0
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	0
	.uaword	0
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	0
	.uaword	0
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	.LBB111
	.uaword	.LBE111
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
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"s32LocalConsigne"
.LASF9:
	.string	"s32LocalValue"
.LASF7:
	.string	"p_u16Time"
.LASF2:
	.string	"pu16NbRequest"
.LASF1:
	.string	"pu16Time"
.LASF4:
	.string	"u16LocalTime"
.LASF5:
	.string	"u16LocalNbRequest"
.LASF6:
	.string	"p_u16NbPeriode"
.LASF10:
	.string	"s16LocalSinus"
.LASF11:
	.string	"u16LocalRatio"
.LASF0:
	.string	"ps16Value"
.LASF8:
	.string	"p_s16Value"
	.extern	MathCosinus,STT_FUNC,0
	.extern	HARDPTG_s16ContinuousRequestC,STT_OBJECT,2
	.extern	HARDPTG_s16HardProfilSimu,STT_OBJECT,512
	.extern	MathSinus,STT_FUNC,0
	.extern	HARDPTG_s16SlewRateC,STT_OBJECT,2
	.extern	HARDPTG_s16OffsetC,STT_OBJECT,2
	.extern	HARDPTG_u32FrequenceC,STT_OBJECT,4
	.extern	HARDPTG_u16PulseDutyCycleC,STT_OBJECT,2
	.extern	HARDPTG_s16AmplitudeC,STT_OBJECT,2
	.extern	HARD_bPtgEnable,STT_OBJECT,1
	.extern	HARD_PtgModeTest,STT_OBJECT,2
	.extern	HARD_bPtgWSignalEnable,STT_OBJECT,1
	.extern	HARD_s16PtgWSignalValue,STT_OBJECT,2
	.extern	HARD_u16PtgWSignalTime,STT_OBJECT,2
	.extern	HARD_u16PtgWSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_bPtgVSignalEnable,STT_OBJECT,1
	.extern	HARD_s16PtgVSignalValue,STT_OBJECT,2
	.extern	HARD_u16PtgVSignalTime,STT_OBJECT,2
	.extern	HARD_u16PtgVSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_bPtgUSignalEnable,STT_OBJECT,1
	.extern	HARD_s16PtgUSignalValue,STT_OBJECT,2
	.extern	HARD_u16PtgUSignalTime,STT_OBJECT,2
	.extern	HARD_u16PtgUSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_bPtgSignalsShiftControl,STT_OBJECT,1
	.extern	HARD_s16PtgRefSignalValue,STT_OBJECT,2
	.extern	HARD_u16PtgRefSignalTime,STT_OBJECT,2
	.extern	HARD_u16PtgRefSignalNbPeriode,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
