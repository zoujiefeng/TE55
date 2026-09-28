	.file	"BLDC_CapApp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BLDC_bGetHallUndefFlt,"ax",@progbits
	.align 1
	.global	BLDC_bGetHallUndefFlt
	.type	BLDC_bGetHallUndefFlt, @function
BLDC_bGetHallUndefFlt:
.LFB20:
	.file 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
	.loc 1 130 0
	.loc 1 132 0
	movh.a	%a15, hi:BLDC_xHallDetVarSet
	lea	%a15, [%a15] lo:BLDC_xHallDetVarSet
	ld.bu	%d2, [%a15] 1
	ret
.LFE20:
	.size	BLDC_bGetHallUndefFlt, .-BLDC_bGetHallUndefFlt
.section .text.BLDC_bGetHallInvalidFlt,"ax",@progbits
	.align 1
	.global	BLDC_bGetHallInvalidFlt
	.type	BLDC_bGetHallInvalidFlt, @function
BLDC_bGetHallInvalidFlt:
.LFB21:
	.loc 1 135 0
	.loc 1 137 0
	movh.a	%a15, hi:BLDC_xHallDetVarSet
	ld.bu	%d2, [%a15] lo:BLDC_xHallDetVarSet
	ret
.LFE21:
	.size	BLDC_bGetHallInvalidFlt, .-BLDC_bGetHallInvalidFlt
.section .text.BLDC_bGetP5vAD2SOverVolFlt,"ax",@progbits
	.align 1
	.global	BLDC_bGetP5vAD2SOverVolFlt
	.type	BLDC_bGetP5vAD2SOverVolFlt, @function
BLDC_bGetP5vAD2SOverVolFlt:
.LFB22:
	.loc 1 140 0
	.loc 1 142 0
	movh.a	%a15, hi:BLDC_xHallDetVarSet
	lea	%a15, [%a15] lo:BLDC_xHallDetVarSet
	ld.bu	%d2, [%a15] 2
	ret
.LFE22:
	.size	BLDC_bGetP5vAD2SOverVolFlt, .-BLDC_bGetP5vAD2SOverVolFlt
.section .text.BLDC_bGetP5vAD2SUnderVolFlt,"ax",@progbits
	.align 1
	.global	BLDC_bGetP5vAD2SUnderVolFlt
	.type	BLDC_bGetP5vAD2SUnderVolFlt, @function
BLDC_bGetP5vAD2SUnderVolFlt:
.LFB23:
	.loc 1 145 0
	.loc 1 147 0
	movh.a	%a15, hi:BLDC_xHallDetVarSet
	lea	%a15, [%a15] lo:BLDC_xHallDetVarSet
	ld.bu	%d2, [%a15] 3
	ret
.LFE23:
	.size	BLDC_bGetP5vAD2SUnderVolFlt, .-BLDC_bGetP5vAD2SUnderVolFlt
.section .text.BLDC_bGetUvwShortGnd,"ax",@progbits
	.align 1
	.global	BLDC_bGetUvwShortGnd
	.type	BLDC_bGetUvwShortGnd, @function
BLDC_bGetUvwShortGnd:
.LFB24:
	.loc 1 150 0
	.loc 1 152 0
	movh.a	%a15, hi:BLDC_xMidPDetVarSet
	lea	%a15, [%a15] lo:BLDC_xMidPDetVarSet
	ld.bu	%d2, [%a15] 6
	ret
.LFE24:
	.size	BLDC_bGetUvwShortGnd, .-BLDC_bGetUvwShortGnd
.section .text.BLDC_bGetUvwShortVs,"ax",@progbits
	.align 1
	.global	BLDC_bGetUvwShortVs
	.type	BLDC_bGetUvwShortVs, @function
BLDC_bGetUvwShortVs:
.LFB25:
	.loc 1 155 0
	.loc 1 157 0
	movh.a	%a15, hi:BLDC_xMidPDetVarSet
	lea	%a15, [%a15] lo:BLDC_xMidPDetVarSet
	ld.bu	%d2, [%a15] 7
	ret
.LFE25:
	.size	BLDC_bGetUvwShortVs, .-BLDC_bGetUvwShortVs
.section .text.BLDC_vidMotPosPwmMng,"ax",@progbits
	.align 1
	.type	BLDC_vidMotPosPwmMng, @function
BLDC_vidMotPosPwmMng:
.LFB28:
	.loc 1 246 0
.LVL0:
	.loc 1 247 0
	ld.a	%a15, [%a4] 8
	.loc 1 249 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 24
	jz.a	%a15, .L7
	.loc 1 251 0
	movh.a	%a4, hi:BLDC_f32BldcPosDuty
.LVL1:
	movh.a	%a5, hi:BLDC_u32MotPosSigPerd
	movh.a	%a6, hi:BLDC_u32MotPosSigDuty
	lea	%a4, [%a4] lo:BLDC_f32BldcPosDuty
	lea	%a5, [%a5] lo:BLDC_u32MotPosSigPerd
	lea	%a6, [%a6] lo:BLDC_u32MotPosSigDuty
	ji	%a15
.LVL2:
.L7:
	ret
.LFE28:
	.size	BLDC_vidMotPosPwmMng, .-BLDC_vidMotPosPwmMng
.section .text.BLDC_vidGetPosSigPerd,"ax",@progbits
	.align 1
	.type	BLDC_vidGetPosSigPerd, @function
BLDC_vidGetPosSigPerd:
.LFB29:
	.loc 1 256 0
.LVL3:
	.loc 1 257 0
	movh.a	%a15, hi:BLDC_u32MotPosSigPerd
	ld.w	%d15, [%a15] lo:BLDC_u32MotPosSigPerd
	st.w	[%a4]0, %d15
	ret
.LFE29:
	.size	BLDC_vidGetPosSigPerd, .-BLDC_vidGetPosSigPerd
.section .text.BLDC_vidGetPositionDuty,"ax",@progbits
	.align 1
	.type	BLDC_vidGetPositionDuty, @function
BLDC_vidGetPositionDuty:
.LFB30:
	.loc 1 261 0
.LVL4:
	.loc 1 262 0
	movh.a	%a15, hi:BLDC_f32BldcPosDuty
	ld.w	%d15, [%a15] lo:BLDC_f32BldcPosDuty
	st.w	[%a4]0, %d15
	ret
.LFE30:
	.size	BLDC_vidGetPositionDuty, .-BLDC_vidGetPositionDuty
.section .text.BLDC_vidInit,"ax",@progbits
	.align 1
	.type	BLDC_vidInit, @function
BLDC_vidInit:
.LFB26:
	.loc 1 170 0
.LBB16:
.LBB17:
	.loc 1 754 0
	movh.a	%a2, hi:BLDC_xMotorMgrVarSet
	mov	%d2, 0
	lea	%a15, [%a2] lo:BLDC_xMotorMgrVarSet
	.loc 1 756 0
	mov	%d15, 0
	.loc 1 755 0
	st.b	[%a15] 2, %d2
	.loc 1 756 0
	movh.a	%a15, hi:BLDC_f32BldcPosDuty
	.loc 1 757 0
	mov	%d3, 0
	.loc 1 756 0
	st.w	[%a15] lo:BLDC_f32BldcPosDuty, %d15
	.loc 1 757 0
	movh.a	%a15, hi:BLDC_u32MotPosSigPerd
	.loc 1 754 0
	st.h	[%a2] lo:BLDC_xMotorMgrVarSet, %d2
	.loc 1 757 0
	st.w	[%a15] lo:BLDC_u32MotPosSigPerd, %d3
.LBE17:
.LBE16:
.LBB19:
.LBB20:
	.loc 1 847 0
	movh.a	%a2, hi:BLDC_xDtcRptVarSet
.LBE20:
.LBE19:
.LBB23:
.LBB18:
	.loc 1 758 0
	movh.a	%a15, hi:BLDC_u32MotPosSigDuty
	st.w	[%a15] lo:BLDC_u32MotPosSigDuty, %d3
.LBE18:
.LBE23:
.LBB24:
.LBB21:
	.loc 1 847 0
	st.h	[%a2] lo:BLDC_xDtcRptVarSet, %d3
	lea	%a15, [%a2] lo:BLDC_xDtcRptVarSet
.LBE21:
.LBE24:
.LBB25:
.LBB26:
	.loc 1 797 0
	movh.a	%a2, hi:BLDC_xMidPDetVarSet
.LBE26:
.LBE25:
.LBB29:
.LBB22:
	.loc 1 850 0
	st.w	[%a15] 4, %d15
	.loc 1 851 0
	st.w	[%a15] 8, %d15
	.loc 1 848 0
	st.b	[%a15] 2, %d2
	.loc 1 849 0
	st.b	[%a15] 3, %d2
.LBE22:
.LBE29:
.LBB30:
.LBB27:
	.loc 1 797 0
	lea	%a15, [%a2] lo:BLDC_xMidPDetVarSet
	st.b	[%a2] lo:BLDC_xMidPDetVarSet, %d2
	.loc 1 798 0
	st.b	[%a15] 1, %d2
	.loc 1 799 0
	st.b	[%a15] 6, %d2
	.loc 1 800 0
	st.b	[%a15] 7, %d2
	.loc 1 801 0
	st.b	[%a15] 2, %d2
	.loc 1 802 0
	st.b	[%a15] 3, %d2
	.loc 1 803 0
	st.b	[%a15] 4, %d2
	.loc 1 804 0
	st.b	[%a15] 5, %d2
	.loc 1 805 0
	st.w	[%a15] 16, %d15
	.loc 1 806 0
	st.w	[%a15] 20, %d15
	.loc 1 807 0
	st.w	[%a15] 24, %d15
	.loc 1 808 0
	st.w	[%a15] 28, %d15
	.loc 1 809 0
	st.b	[%a15] 8, %d2
	.loc 1 810 0
	st.b	[%a15] 9, %d2
	.loc 1 811 0
	st.h	[%a15] 10, %d3
	.loc 1 812 0
	st.h	[%a15] 12, %d3
	.loc 1 813 0
	st.h	[%a15] 14, %d3
	.loc 1 814 0
	st.w	[%a15] 32, %d15
	.loc 1 815 0
	st.w	[%a15] 36, %d15
.LVL5:
	.loc 1 819 0
	st.w	[%a15] 40, %d15
.LVL6:
	st.w	[%a15] 44, %d15
.LVL7:
	st.w	[%a15] 48, %d15
.LVL8:
	st.w	[%a15] 52, %d15
.LVL9:
.LBE27:
.LBE30:
.LBB31:
.LBB32:
	.loc 1 773 0
	movh.a	%a2, hi:BLDC_xHallDetVarSet
.LBE32:
.LBE31:
.LBB34:
.LBB28:
	.loc 1 819 0
	st.w	[%a15] 56, %d15
.LVL10:
	st.w	[%a15] 60, %d15
.LVL11:
	st.w	[%a15] 64, %d15
.LVL12:
	st.w	[%a15] 68, %d15
.LVL13:
	.loc 1 823 0
	st.w	[%a15] 72, %d15
.LVL14:
	st.w	[%a15] 76, %d15
.LVL15:
	st.w	[%a15] 80, %d15
.LVL16:
	st.w	[%a15] 84, %d15
.LVL17:
	st.w	[%a15] 88, %d15
.LVL18:
	st.w	[%a15] 92, %d15
.LVL19:
	st.w	[%a15] 96, %d15
.LVL20:
	st.w	[%a15] 100, %d15
.LVL21:
	.loc 1 827 0
	st.w	[%a15] 104, %d15
.LVL22:
	st.w	[%a15] 108, %d15
.LVL23:
	st.w	[%a15] 112, %d15
.LVL24:
	st.w	[%a15] 116, %d15
.LVL25:
	st.w	[%a15] 120, %d15
.LVL26:
	st.w	[%a15] 124, %d15
.LVL27:
	st.w	[%a15] 128, %d15
.LVL28:
	st.w	[%a15] 132, %d15
.LVL29:
	.loc 1 831 0
	st.w	[%a15] 136, %d15
.LVL30:
	st.w	[%a15] 140, %d15
.LVL31:
	st.w	[%a15] 144, %d15
.LVL32:
	st.w	[%a15] 148, %d15
.LVL33:
	st.w	[%a15] 152, %d15
.LVL34:
	st.w	[%a15] 156, %d15
.LVL35:
	st.w	[%a15] 160, %d15
.LVL36:
	st.w	[%a15] 164, %d15
.LVL37:
.LBE28:
.LBE34:
.LBB35:
.LBB33:
	.loc 1 773 0
	lea	%a15, [%a2] lo:BLDC_xHallDetVarSet
	st.b	[%a15] 8, %d2
	.loc 1 774 0
	st.b	[%a15] 9, %d2
	.loc 1 775 0
	st.b	[%a15] 1, %d2
	.loc 1 776 0
	st.b	[%a2] lo:BLDC_xHallDetVarSet, %d2
	.loc 1 777 0
	st.h	[%a15] 10, %d3
	.loc 1 778 0
	st.w	[%a15] 4, %d15
	.loc 1 779 0
	st.b	[%a15] 2, %d2
	.loc 1 780 0
	st.b	[%a15] 3, %d2
	ret
.LBE33:
.LBE35:
.LFE26:
	.size	BLDC_vidInit, .-BLDC_vidInit
.section .text.BLDC_vidHallDiagMainfunction,"ax",@progbits
	.align 1
	.type	BLDC_vidHallDiagMainfunction, @function
BLDC_vidHallDiagMainfunction:
.LFB31:
	.loc 1 275 0
.LVL38:
	.loc 1 280 0
	movh.a	%a2, hi:BLDC_xHallDetVarSet
	lea	%a15, [%a2] lo:BLDC_xHallDetVarSet
	st.b	[%a15] 8, %d4
	.loc 1 282 0
	add	%d15, %d4, -1
	jge.u	%d15, 6, .L14
	.loc 1 285 0
	mov	%d15, 0
	st.b	[%a15] 1, %d15
	.loc 1 287 0
	ld.bu	%d15, [%a15] 9
	jeq	%d4, %d15, .L15
	.loc 1 289 0
	add	%d15, -1
	and	%d15, 255
.LVL39:
	.loc 1 290 0
	jge.u	%d15, 6, .L16
.LVL40:
	.loc 1 293 0
	movh.a	%a3, hi:BLDC_au8BackwardTable
	sh	%d15, 2
.LVL41:
	lea	%a3, [%a3] lo:BLDC_au8BackwardTable
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 296 0
	ld.bu	%d2, [%a3] 1
	.loc 1 292 0
	movh.a	%a3, hi:BLDC_au8ForwardTable
	lea	%a3, [%a3] lo:BLDC_au8ForwardTable
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 295 0
	ld.bu	%d3, [%a3] 1
	ne	%d15, %d3, %d4
	and.ne	%d15, %d2, %d4
	jz	%d15, .L17
	.loc 1 298 0
	mov	%d15, 1
	st.b	[%a2] lo:BLDC_xHallDetVarSet, %d15
.LVL42:
.L16:
	.loc 1 306 0
	st.b	[%a15] 9, %d4
.LVL43:
.L15:
.LBB38:
.LBB39:
	.loc 1 653 0
	ld.a	%a2, [%a4] 8
	.loc 1 655 0
	ld.a	%a2, [%a2]0
	ld.a	%a2, [%a2] 12
	.loc 1 656 0
	movh	%d15, 17792
	addi	%d15, %d15, -4096
	.loc 1 655 0
	calli	%a2
.LVL44:
	st.h	[%a15] 10, %d2
	.loc 1 656 0
	utof	%d2, %d2
	.loc 1 658 0
	movh.a	%a2, hi:BLDC_kf32P5vAD2SOverVolC
	.loc 1 656 0
	div.f	%d2, %d2, %d15
	movh	%d15, 16672
	mul.f	%d2, %d2, %d15
	.loc 1 658 0
	ld.w	%d15, [%a2] lo:BLDC_kf32P5vAD2SOverVolC
	.loc 1 667 0
	movh.a	%a2, hi:BLDC_kf32P5vAD2SUnderVolC
	.loc 1 658 0
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
	.loc 1 656 0
	st.w	[%a15] 4, %d2
	st.b	[%a15] 2, %d15
	.loc 1 667 0
	ld.w	%d15, [%a2] lo:BLDC_kf32P5vAD2SUnderVolC
	cmp.f	%d2, %d2, %d15
	and	%d2, %d2, 1
	st.b	[%a15] 3, %d2
	ret
.LVL45:
.L14:
.LBE39:
.LBE38:
	.loc 1 311 0
	mov	%d15, 1
	st.b	[%a15] 1, %d15
	j	.L15
.LVL46:
.L17:
	.loc 1 302 0
	st.b	[%a2] lo:BLDC_xHallDetVarSet, %d15
	.loc 1 306 0
	st.b	[%a15] 9, %d4
.LVL47:
	j	.L15
.LFE31:
	.size	BLDC_vidHallDiagMainfunction, .-BLDC_vidHallDiagMainfunction
.section .text.BLDC_vidMotorStateMng,"ax",@progbits
	.align 1
	.type	BLDC_vidMotorStateMng, @function
BLDC_vidMotorStateMng:
.LFB27:
	.loc 1 187 0
.LVL48:
	.loc 1 190 0
	movh.a	%a2, hi:BLDC_xMotorMgrVarSet
	lea	%a12, [%a2] lo:BLDC_xMotorMgrVarSet
	ld.bu	%d15, [%a12] 2
	.loc 1 188 0
	ld.a	%a15, [%a4] 8
	ld.a	%a15, [%a15]0
.LVL49:
	.loc 1 190 0
	jge.u	%d15, 4, .L20
	movh.a	%a3, hi:.L23
	lea	%a3, [%a3] lo:.L23
	addsc.a	%a3, %a3, %d15, 2
	mov.aa	%a13, %a4
	ji	%a3
	.align 2
	.align 2
.L23:
	.code32
	j	.L22
	.code32
	j	.L24
	.code32
	j	.L25
	.code32
	j	.L26
.L24:
	.loc 1 204 0
	ld.h	%d15, [%a2] lo:BLDC_xMotorMgrVarSet
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:BLDC_xMotorMgrVarSet, %d15
	.loc 1 206 0
	jne	%d15, 5, .L27
	.loc 1 208 0
	ld.a	%a4, [%a4] 12
.LVL50:
	ld.a	%a2, [%a4] 8
	calli	%a2
.LVL51:
	.loc 1 210 0
	ld.a	%a15, [%a15] 16
.LVL52:
	calli	%a15
.LVL53:
	movh.a	%a15, hi:BLDC_xMotorMgrVarSet
	ld.hu	%d15, [%a15] lo:BLDC_xMotorMgrVarSet
.L27:
	.loc 1 213 0
	eq	%d15, %d15, 9
	jnz	%d15, .L63
.LVL54:
.L20:
	ret
.LVL55:
.L25:
	.loc 1 222 0
	ld.a	%a15, [%a15] 20
.LVL56:
	movh	%d4, 16256
	.loc 1 229 0
	mov	%d15, 3
	.loc 1 222 0
	calli	%a15
.LVL57:
	.loc 1 224 0
	ld.a	%a15, [%a13] 16
	ld.a	%a15, [%a15] 28
	mov.aa	%a4, %a13
	mov	%d4, 0
	calli	%a15
.LVL58:
	.loc 1 227 0
	ld.a	%a4, [%a13] 12
	ld.a	%a15, [%a4] 12
	mov	%d4, 1
	calli	%a15
.LVL59:
	.loc 1 229 0
	st.b	[%a12] 2, %d15
	.loc 1 230 0
	ret
.LVL60:
.L22:
	.loc 1 194 0
	ld.h	%d15, [%a2] lo:BLDC_xMotorMgrVarSet
	.loc 1 197 0
	ld.a	%a15, [%a15] 20
.LVL61:
	.loc 1 194 0
	add	%d15, 1
	.loc 1 197 0
	movh	%d4, 16077
	.loc 1 194 0
	st.h	[%a2] lo:BLDC_xMotorMgrVarSet, %d15
	.loc 1 197 0
	addi	%d4, %d4, -13107
	.loc 1 199 0
	mov	%d15, 1
	.loc 1 197 0
	calli	%a15
.LVL62:
	.loc 1 199 0
	st.b	[%a12] 2, %d15
	.loc 1 200 0
	ret
.LVL63:
.L26:
.LBB48:
.LBB49:
.LBB50:
.LBB51:
	.loc 1 721 0
	ld.a	%a2, [%a15] 56
	calli	%a2
.LVL64:
	.loc 1 724 0
	ld.a	%a2, [%a15] 4
	.loc 1 721 0
	mov	%d8, %d2
.LVL65:
	.loc 1 724 0
	calli	%a2
.LVL66:
	.loc 1 725 0
	movh	%d3, 15881
	utof	%d2, %d2
.LVL67:
	movh	%d4, 15435
	addi	%d3, %d3, -12688
	addi	%d4, %d4, 10591
	madd.f	%d15, %d3, %d2, %d4
	.loc 1 727 0
	ld.a	%a2, [%a15] 8
	.loc 1 725 0
	movh.a	%a14, hi:BLDC_xDtcRptVarSet
	lea	%a12, [%a14] lo:BLDC_xDtcRptVarSet
	st.w	[%a12] 4, %d15
	.loc 1 727 0
	calli	%a2
.LVL68:
	.loc 1 730 0
	movh.a	%a2, hi:BLDC_kf32LVThdLowC
	ld.w	%d3, [%a12] 4
	ld.w	%d4, [%a2] lo:BLDC_kf32LVThdLowC
	.loc 1 728 0
	mov	%d15, 0
	st.w	[%a12] 8, %d15
	.loc 1 730 0
	cmp.f	%d15, %d3, %d4
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L64
.L29:
	.loc 1 731 0
	mov	%d2, 0
	cmp.f	%d15, %d4, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L65
.L32:
.LBE51:
.LBE50:
	.loc 1 605 0
	ld.a	%a15, [%a15]0
.LVL69:
	calli	%a15
.LVL70:
	st.h	[%a14] lo:BLDC_xDtcRptVarSet, %d2
	movh.a	%a14, hi:BLDC_xMidPDetVarSet
	lea	%a12, [%a14] lo:BLDC_xMidPDetVarSet
.LVL71:
.L47:
.LBE49:
.LBE48:
.LBB59:
.LBB60:
	.loc 1 561 0
	ld.hu	%d2, [%a12] 12
	.loc 1 559 0
	ld.bu	%d8, [%a13]0
.LVL72:
	.loc 1 561 0
	jz	%d2, .L41
	.loc 1 563 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
	.loc 1 565 0
	mov	%d15, 0
	.loc 1 563 0
	st.h	[%a12] 12, %d2
	.loc 1 565 0
	st.b	[%a14] lo:BLDC_xMidPDetVarSet, %d15
	.loc 1 566 0
	st.b	[%a12] 1, %d15
	.loc 1 567 0
	st.b	[%a12] 2, %d15
	.loc 1 568 0
	st.b	[%a12] 3, %d15
	.loc 1 569 0
	st.b	[%a12] 4, %d15
	.loc 1 570 0
	st.b	[%a12] 5, %d15
	.loc 1 571 0
	st.b	[%a12] 8, %d15
	.loc 1 573 0
	jnz	%d2, .L20
	.loc 1 579 0
	ld.a	%a15, [%a13] 16
	.loc 1 575 0
	mov	%d15, 0
	.loc 1 576 0
	st.b	[%a12] 6, %d15
	.loc 1 577 0
	st.b	[%a12] 7, %d15
	.loc 1 579 0
	ld.w	%d15, [%a15]0
	.loc 1 575 0
	st.h	[%a12] 14, %d2
	.loc 1 579 0
	madd	%d2, %d15, %d8, 12
	mov	%d15, 1
	mov.a	%a15, %d2
	st.b	[%a15] 4, %d15
.LVL73:
	ret
.LVL74:
.L64:
.LBE60:
.LBE59:
.LBB67:
.LBB56:
.LBB54:
.LBB52:
	.loc 1 730 0
	movh.a	%a2, hi:BLDC_kf32LVThdHighC
	ld.w	%d15, [%a2] lo:BLDC_kf32LVThdHighC
	cmp.f	%d3, %d3, %d15
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L29
.L31:
	.loc 1 733 0
	jz	%d8, .L32
.LVL75:
.LBE52:
.LBE54:
	.loc 1 605 0
	ld.a	%a2, [%a15]0
	calli	%a2
.LVL76:
	.loc 1 609 0
	movh.a	%a2, hi:BLDC_xHallDetVarSet
	.loc 1 605 0
	st.h	[%a14] lo:BLDC_xDtcRptVarSet, %d2
	.loc 1 609 0
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:BLDC_xHallDetVarSet
	mov.a	%a3, %d15
	ld.bu	%d4, [%a3] 3
	jz	%d4, .L66
.L46:
	.loc 1 615 0
	ld.a	%a2, [%a15] 36
	calli	%a2
.LVL77:
	.loc 1 617 0
	ld.hu	%d15, [%a14] lo:BLDC_xDtcRptVarSet
	mov	%d2, 4051
	jge.u	%d15, %d2, .L67
	.loc 1 622 0
	ge.u	%d15, %d15, 50
	jnz	%d15, .L38
	.loc 1 624 0
	st.b	[%a12] 3, %d15
	.loc 1 625 0
	mov	%d15, 1
	st.b	[%a12] 2, %d15
.L37:
	.loc 1 633 0
	movh.a	%a14, hi:BLDC_xMidPDetVarSet
	ld.bu	%d4, [%a14] lo:BLDC_xMidPDetVarSet
	ld.a	%a2, [%a15] 40
	lea	%a12, [%a14] lo:BLDC_xMidPDetVarSet
	.loc 1 635 0
	jeq	%d4, 1, .L39
	.loc 1 634 0
	ld.bu	%d4, [%a12] 2
	jeq	%d4, 1, .L39
	.loc 1 635 0
	ld.bu	%d4, [%a12] 4
	eq	%d4, %d4, 1
.L39:
	.loc 1 633 0
	calli	%a2
.LVL78:
	.loc 1 636 0
	ld.bu	%d4, [%a12] 1
	ld.a	%a15, [%a15] 44
.LVL79:
	.loc 1 638 0
	jeq	%d4, 1, .L40
	.loc 1 637 0
	ld.bu	%d4, [%a12] 3
	jeq	%d4, 1, .L40
	.loc 1 638 0
	ld.bu	%d4, [%a12] 5
	eq	%d4, %d4, 1
.L40:
	.loc 1 636 0
	calli	%a15
.LVL80:
	j	.L47
.LVL81:
.L63:
.LBE56:
.LBE67:
	.loc 1 215 0
	mov	%d15, 2
	st.b	[%a12] 2, %d15
	ret
.LVL82:
.L41:
.LBB68:
.LBB65:
.LBB61:
.LBB62:
	.loc 1 690 0
	ld.a	%a15, [%a13] 8
	ld.a	%a15, [%a15]0
.LVL83:
	.loc 1 695 0
	ld.a	%a2, [%a15] 48
	calli	%a2
.LVL84:
	jz	%d2, .L43
.LVL85:
.L44:
	.loc 1 698 0
	movh.a	%a15, hi:BLDC_ku16MidPotRcvTimC
	ld.h	%d15, [%a15] lo:BLDC_ku16MidPotRcvTimC
	.loc 1 699 0
	ld.a	%a15, [%a13] 16
	.loc 1 698 0
	st.h	[%a12] 12, %d15
	.loc 1 699 0
	ld.w	%d15, [%a15]0
	madd	%d2, %d15, %d8, 12
	mov	%d15, 0
	mov.a	%a15, %d2
	st.b	[%a15] 4, %d15
	ret
.LVL86:
.L65:
.LBE62:
.LBE61:
.LBE65:
.LBE68:
.LBB69:
.LBB57:
.LBB55:
.LBB53:
	.loc 1 731 0
	movh.a	%a2, hi:BLDC_kf32LVThdHighC
	ld.w	%d15, [%a2] lo:BLDC_kf32LVThdHighC
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L31
	j	.L32
.LVL87:
.L67:
.LBE53:
.LBE55:
	.loc 1 619 0
	mov	%d15, 1
	st.b	[%a12] 3, %d15
	.loc 1 620 0
	mov	%d15, 0
	st.b	[%a12] 2, %d15
	j	.L37
.LVL88:
.L43:
.LBE57:
.LBE69:
.LBB70:
.LBB66:
.LBB64:
.LBB63:
	.loc 1 696 0
	ld.a	%a15, [%a15] 52
.LVL89:
	calli	%a15
.LVL90:
	jnz	%d2, .L44
	ret
.LVL91:
.L66:
.LBE63:
.LBE64:
.LBE66:
.LBE70:
.LBB71:
.LBB58:
	.loc 1 611 0
	ld.a	%a3, [%a15] 28
	ld.bu	%d4, [%a2] lo:BLDC_xHallDetVarSet
	calli	%a3
.LVL92:
	.loc 1 612 0
	ld.a	%a2, [%a15] 32
	mov.a	%a3, %d15
	ld.bu	%d4, [%a3] 1
	calli	%a2
.LVL93:
	mov.a	%a2, %d15
	ld.bu	%d4, [%a2] 3
	j	.L46
.L38:
	.loc 1 629 0
	mov	%d15, 0
	st.b	[%a12] 3, %d15
	.loc 1 630 0
	st.b	[%a12] 2, %d15
	j	.L37
.LBE58:
.LBE71:
.LFE27:
	.size	BLDC_vidMotorStateMng, .-BLDC_vidMotorStateMng
.section .text.BLDC_bPwmIsReady,"ax",@progbits
	.align 1
	.global	BLDC_bPwmIsReady
	.type	BLDC_bPwmIsReady, @function
BLDC_bPwmIsReady:
.LFB19:
	.loc 1 118 0
.LVL94:
	.loc 1 121 0
	movh.a	%a15, hi:BLDC_xMotorMgrVarSet
	lea	%a15, [%a15] lo:BLDC_xMotorMgrVarSet
	ld.bu	%d2, [%a15] 2
	.loc 1 127 0
	eq	%d2, %d2, 3
	ret
.LFE19:
	.size	BLDC_bPwmIsReady, .-BLDC_bPwmIsReady
	.global	BLDC_u32MotPosSigDuty
.section .bss.a4.BLDC_u32MotPosSigDuty,"aw",@nobits
	.align 2
	.type	BLDC_u32MotPosSigDuty, @object
	.size	BLDC_u32MotPosSigDuty, 4
BLDC_u32MotPosSigDuty:
	.zero	4
	.global	BLDC_u32MotPosSigPerd
.section .bss.a4.BLDC_u32MotPosSigPerd,"aw",@nobits
	.align 2
	.type	BLDC_u32MotPosSigPerd, @object
	.size	BLDC_u32MotPosSigPerd, 4
BLDC_u32MotPosSigPerd:
	.zero	4
	.global	BLDC_f32BldcPosDuty
.section .bss.a4.BLDC_f32BldcPosDuty,"aw",@nobits
	.align 2
	.type	BLDC_f32BldcPosDuty, @object
	.size	BLDC_f32BldcPosDuty, 4
BLDC_f32BldcPosDuty:
	.zero	4
.section .bss.a4.BLDC_xDtcRptVarSet,"aw",@nobits
	.align 2
	.type	BLDC_xDtcRptVarSet, @object
	.size	BLDC_xDtcRptVarSet, 12
BLDC_xDtcRptVarSet:
	.zero	12
.section .bss.a4.BLDC_xMidPDetVarSet,"aw",@nobits
	.align 2
	.type	BLDC_xMidPDetVarSet, @object
	.size	BLDC_xMidPDetVarSet, 168
BLDC_xMidPDetVarSet:
	.zero	168
.section .bss.a4.BLDC_xHallDetVarSet,"aw",@nobits
	.align 2
	.type	BLDC_xHallDetVarSet, @object
	.size	BLDC_xHallDetVarSet, 12
BLDC_xHallDetVarSet:
	.zero	12
.section .bss.a2.BLDC_xMotorMgrVarSet,"aw",@nobits
	.align 1
	.type	BLDC_xMotorMgrVarSet, @object
	.size	BLDC_xMotorMgrVarSet, 4
BLDC_xMotorMgrVarSet:
	.zero	4
	.global	BLDC_xCapAswFunc
.section .rodata.a4.BLDC_xCapAswFunc,"a",@progbits
	.align 2
	.type	BLDC_xCapAswFunc, @object
	.size	BLDC_xCapAswFunc, 48
BLDC_xCapAswFunc:
	.word	BLDC_vidInit
	.word	BLDC_vidMotPosPwmMng
	.word	BLDC_vidMotorStateMng
	.word	BLDC_vidGetPosSigPerd
	.word	BLDC_vidGetPositionDuty
	.word	BLDC_vidHallDiagMainfunction
	.word	BLDC_bGetHallUndefFlt
	.word	BLDC_bGetHallInvalidFlt
	.word	BLDC_bGetP5vAD2SOverVolFlt
	.word	BLDC_bGetP5vAD2SUnderVolFlt
	.word	BLDC_bGetUvwShortGnd
	.word	BLDC_bGetUvwShortVs
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h"
	.file 5 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapDataType.h"
	.file 6 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceCfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1cb9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1e0
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
	.uaword	0x20c
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
	.uaword	0x248
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
	.uaword	0x1bb
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1e0
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
	.byte	0x7
	.byte	0xf
	.uaword	0x34a
	.uleb128 0x5
	.string	"eBLDC_DEV_GTM_START_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eBLDC_DEV_GTM_DRV8340_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eBLDC_DEV_GTM_TLE9180_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eBLDC_DEV_GTM_END_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eBLDC_DEV_MAX_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x18
	.uaword	0x355
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x14
	.byte	0x3
	.byte	0x3b
	.uaword	0x3cd
	.uleb128 0x8
	.string	"u8DeviceID"
	.byte	0x3
	.byte	0x3c
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ptAppFunc"
	.byte	0x3
	.byte	0x3e
	.uaword	0xb88
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ptHalModule"
	.byte	0x3
	.byte	0x3f
	.uaword	0xb93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"ptTimerDrv"
	.byte	0x3
	.byte	0x40
	.uaword	0xa1a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"ptGeneModule"
	.byte	0x3
	.byte	0x41
	.uaword	0xb9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x19
	.uaword	0x3d8
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x2c
	.byte	0x4
	.byte	0x50
	.uaword	0x4f0
	.uleb128 0x8
	.string	"PwmCtrlVar"
	.byte	0x4
	.byte	0x51
	.uaword	0x720
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"HallCtrlVar"
	.byte	0x4
	.byte	0x52
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidDebug"
	.byte	0x4
	.byte	0x54
	.uaword	0x72e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidModuleInit"
	.byte	0x4
	.byte	0x55
	.uaword	0x750
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"u8GetHallState"
	.byte	0x4
	.byte	0x56
	.uaword	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidChgHallPattern"
	.byte	0x4
	.byte	0x57
	.uaword	0x750
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"vidSetPwmBcDuty"
	.byte	0x4
	.byte	0x58
	.uaword	0x782
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidStartRotation"
	.byte	0x4
	.byte	0x59
	.uaword	0x79e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"u8GetHallStt"
	.byte	0x4
	.byte	0x5c
	.uaword	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"u8GetCurDirSts"
	.byte	0x4
	.byte	0x5d
	.uaword	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"u8GetDutyModeStt"
	.byte	0x4
	.byte	0x5e
	.uaword	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.string	"BLDC_DUTY_STATE"
	.byte	0x1
	.byte	0x4
	.byte	0x1c
	.uaword	0x564
	.uleb128 0x5
	.string	"BLDC_DUTY_CLOSE"
	.sleb128 0
	.uleb128 0x5
	.string	"BLDC_DUTY_REVRSE"
	.sleb128 1
	.uleb128 0x5
	.string	"BLDC_DUTY_BRAKE"
	.sleb128 2
	.uleb128 0x5
	.string	"BLDC_DUTY_SWDIR"
	.sleb128 3
	.uleb128 0x5
	.string	"BLDC_DUTY_GOING"
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x38
	.uaword	0x5be
	.uleb128 0x8
	.string	"BLDC_u8CurHall"
	.byte	0x4
	.byte	0x39
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8ExpHall"
	.byte	0x4
	.byte	0x3a
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"BLDC_u8ExpOutput"
	.byte	0x4
	.byte	0x3b
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x3c
	.uaword	0x564
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0xc
	.byte	0x4
	.byte	0x3f
	.uaword	0x687
	.uleb128 0x8
	.string	"BLDC_u16DutyDelayCnt"
	.byte	0x4
	.byte	0x40
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8PrevDirSts"
	.byte	0x4
	.byte	0x41
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_u8CurDirSts"
	.byte	0x4
	.byte	0x42
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"BLDC_u8DutyModeStt"
	.byte	0x4
	.byte	0x43
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BLDC_u8DutyHoldTicks"
	.byte	0x4
	.byte	0x44
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"BLDC_f32CurCycleDuty"
	.byte	0x4
	.byte	0x45
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0x46
	.uaword	0x5c9
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x49
	.uaword	0x715
	.uleb128 0x8
	.string	"BLDC_u8CurHallStt"
	.byte	0x4
	.byte	0x4a
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8ConfirmDirSts"
	.byte	0x4
	.byte	0x4b
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"BLDC_u8WrCurHallStt"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_u8WrExpOutput"
	.byte	0x4
	.byte	0x4d
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x4
	.byte	0x4e
	.uaword	0x692
	.uleb128 0xa
	.byte	0x4
	.uaword	0x687
	.uleb128 0xa
	.byte	0x4
	.uaword	0x715
	.uleb128 0xb
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.uaword	0x72c
	.uleb128 0xc
	.byte	0x1
	.uaword	0x740
	.uleb128 0xd
	.uaword	0x740
	.byte	0
	.uleb128 0xe
	.uaword	0x745
	.uleb128 0xa
	.byte	0x4
	.uaword	0x74b
	.uleb128 0xe
	.uaword	0x34a
	.uleb128 0xa
	.byte	0x4
	.uaword	0x734
	.uleb128 0xf
	.byte	0x1
	.uaword	0x1d3
	.uaword	0x766
	.uleb128 0xd
	.uaword	0x740
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x756
	.uleb128 0xc
	.byte	0x1
	.uaword	0x77d
	.uleb128 0xd
	.uaword	0x740
	.uleb128 0xd
	.uaword	0x77d
	.byte	0
	.uleb128 0xe
	.uaword	0x272
	.uleb128 0xa
	.byte	0x4
	.uaword	0x76c
	.uleb128 0xc
	.byte	0x1
	.uaword	0x799
	.uleb128 0xd
	.uaword	0x740
	.uleb128 0xd
	.uaword	0x799
	.byte	0
	.uleb128 0xe
	.uaword	0x1d3
	.uleb128 0xa
	.byte	0x4
	.uaword	0x788
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x11
	.uaword	0x7af
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x24
	.byte	0x3
	.byte	0x15
	.uaword	0x89b
	.uleb128 0x8
	.string	"pvCommDrv"
	.byte	0x3
	.byte	0x16
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pkvCfgHandle"
	.byte	0x3
	.byte	0x17
	.uaword	0xa02
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidIntHwInit"
	.byte	0x3
	.byte	0x19
	.uaword	0xa25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidIntTrigEnable"
	.byte	0x3
	.byte	0x1a
	.uaword	0xa3c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidPwmDisable"
	.byte	0x3
	.byte	0x1c
	.uaword	0xa25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidSetPwmOutState"
	.byte	0x3
	.byte	0x1d
	.uaword	0xa58
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"vidSetPwmDuty"
	.byte	0x3
	.byte	0x1e
	.uaword	0xa6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidSetPwmFreq"
	.byte	0x3
	.byte	0x1f
	.uaword	0xa6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"vidSetSingleChPhase"
	.byte	0x3
	.byte	0x20
	.uaword	0xa8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x12
	.uaword	0x8a6
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x30
	.byte	0x3
	.byte	0x2a
	.uaword	0xa00
	.uleb128 0x8
	.string	"vidInit"
	.byte	0x3
	.byte	0x2b
	.uaword	0x72e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"vidMotPosPwmMng"
	.byte	0x3
	.byte	0x2c
	.uaword	0xb2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"vidMotorStateMng"
	.byte	0x3
	.byte	0x2d
	.uaword	0xb2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidGetPosSigPerd"
	.byte	0x3
	.byte	0x2e
	.uaword	0xb47
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidGetPositionDuty"
	.byte	0x3
	.byte	0x2f
	.uaword	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidHallDiagMainfunction"
	.byte	0x3
	.byte	0x30
	.uaword	0xb76
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"bGetHallUndefFlt"
	.byte	0x3
	.byte	0x33
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"bGetHallInvalidFlt"
	.byte	0x3
	.byte	0x34
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"bGetP5vAD2SOverVolFlt"
	.byte	0x3
	.byte	0x35
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"bGetP5vAD2SUnderVolFlt"
	.byte	0x3
	.byte	0x36
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"bGetUvwShortGnd"
	.byte	0x3
	.byte	0x37
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"bGetUvwShortVs"
	.byte	0x3
	.byte	0x38
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa08
	.uleb128 0x11
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa15
	.uleb128 0xd
	.uaword	0xa15
	.byte	0
	.uleb128 0xe
	.uaword	0xa1a
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa20
	.uleb128 0xe
	.uaword	0x7a4
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa09
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa3c
	.uleb128 0xd
	.uaword	0xa15
	.uleb128 0xd
	.uaword	0x28b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa2b
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa58
	.uleb128 0xd
	.uaword	0xa15
	.uleb128 0xd
	.uaword	0x1d3
	.uleb128 0xd
	.uaword	0x1d3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa42
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa6f
	.uleb128 0xd
	.uaword	0xa15
	.uleb128 0xd
	.uaword	0x272
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa5e
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa8b
	.uleb128 0xd
	.uaword	0xa15
	.uleb128 0xd
	.uaword	0x272
	.uleb128 0xd
	.uaword	0x1d3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xa75
	.uleb128 0x7
	.uaword	.LASF7
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uaword	0xafc
	.uleb128 0x8
	.string	"pvApi"
	.byte	0x3
	.byte	0x24
	.uaword	0xa02
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u16IOReadHall_1"
	.byte	0x3
	.byte	0x25
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u16IOReadHall_2"
	.byte	0x3
	.byte	0x26
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"u16IOReadHall_3"
	.byte	0x3
	.byte	0x27
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.uaword	0x1fe
	.uleb128 0xa
	.byte	0x4
	.uaword	0xafc
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x28
	.uaword	0xa91
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb1f
	.uleb128 0xd
	.uaword	0xb1f
	.byte	0
	.uleb128 0xe
	.uaword	0xb24
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb2a
	.uleb128 0xe
	.uaword	0x355
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb13
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb41
	.uleb128 0xd
	.uaword	0xb41
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x23a
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb35
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb59
	.uleb128 0xd
	.uaword	0xb59
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x272
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb4d
	.uleb128 0xc
	.byte	0x1
	.uaword	0xb76
	.uleb128 0xd
	.uaword	0xb1f
	.uleb128 0xd
	.uaword	0x799
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb65
	.uleb128 0x12
	.byte	0x1
	.uaword	0x28b
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb7c
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb8e
	.uleb128 0xe
	.uaword	0x89b
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb99
	.uleb128 0xe
	.uaword	0xb08
	.uleb128 0xa
	.byte	0x4
	.uaword	0xba4
	.uleb128 0xe
	.uaword	0x3cd
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.uaword	0xbf2
	.uleb128 0x8
	.string	"BLDC_u16PowerOnDelay"
	.byte	0x5
	.byte	0x1f
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_u8MotorMgrSts"
	.byte	0x5
	.byte	0x20
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x5
	.byte	0x21
	.uaword	0xba9
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0xc
	.byte	0x5
	.byte	0x24
	.uaword	0xcb1
	.uleb128 0x8
	.string	"BLDC_u16OilPressureRaw"
	.byte	0x5
	.byte	0x25
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_bOilPressShortGndFlt"
	.byte	0x5
	.byte	0x26
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_bOilPressShortVccFlt"
	.byte	0x5
	.byte	0x27
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"BLDC_f32BatteryVoltage"
	.byte	0x5
	.byte	0x28
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BLDC_f32BkpVoltage"
	.byte	0x5
	.byte	0x29
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x5
	.byte	0x2a
	.uaword	0xbfd
	.uleb128 0x7
	.uaword	.LASF10
	.byte	0xc
	.byte	0x5
	.byte	0x2d
	.uaword	0xdc2
	.uleb128 0x8
	.string	"BLDC_bHallInvalidFlt"
	.byte	0x5
	.byte	0x2e
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_bHallUndefFlt"
	.byte	0x5
	.byte	0x2f
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"BLDC_bP5vAD2SOverVolFlt"
	.byte	0x5
	.byte	0x30
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_bP5vAD2SUnderVolFlt"
	.byte	0x5
	.byte	0x31
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"BLDC_f32P5vAD2SPhys"
	.byte	0x5
	.byte	0x32
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BLDC_u8DiagHallStt"
	.byte	0x5
	.byte	0x33
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"BLDC_u8DiagHallSttPre"
	.byte	0x5
	.byte	0x34
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"BLDC_u16P5vAD2SRaw"
	.byte	0x5
	.byte	0x35
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x5
	.byte	0x36
	.uaword	0xcbc
	.uleb128 0x7
	.uaword	.LASF11
	.byte	0xa8
	.byte	0x5
	.byte	0x39
	.uaword	0x1093
	.uleb128 0x8
	.string	"BLDC_bUShortGnd"
	.byte	0x5
	.byte	0x3a
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BLDC_bUShortVs"
	.byte	0x5
	.byte	0x3b
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"BLDC_bVShortGnd"
	.byte	0x5
	.byte	0x3c
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"BLDC_bVShortVs"
	.byte	0x5
	.byte	0x3d
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"BLDC_bWShortGnd"
	.byte	0x5
	.byte	0x3e
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BLDC_bWShortVs"
	.byte	0x5
	.byte	0x3f
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"BLDC_bUvwShortGnd"
	.byte	0x5
	.byte	0x40
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"BLDC_bUvwShortVs"
	.byte	0x5
	.byte	0x41
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.string	"BLDC_u8PfbDutyCnt"
	.byte	0x5
	.byte	0x42
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"BLDC_u8WrExpOutputLast"
	.byte	0x5
	.byte	0x43
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"BLDC_u16TgtDutyRisingDelay"
	.byte	0x5
	.byte	0x44
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"BLDC_u16ShortRecoveryCnt"
	.byte	0x5
	.byte	0x45
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"BLDC_u16ShortConfirmCnt"
	.byte	0x5
	.byte	0x46
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"BLDC_f32TgtDutyPhysSum"
	.byte	0x5
	.byte	0x47
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"BLDC_f32Pfb1DutyPhysSum"
	.byte	0x5
	.byte	0x48
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"BLDC_f32Pfb2DutyPhysSum"
	.byte	0x5
	.byte	0x49
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"BLDC_f32Pfb3DutyPhysSum"
	.byte	0x5
	.byte	0x4a
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"BLDC_f32PrevTgtDuty"
	.byte	0x5
	.byte	0x4b
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"BLDC_f32TgtDutyDeltVal"
	.byte	0x5
	.byte	0x4c
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"BLDC_f32Pfb1DutyPhys"
	.byte	0x5
	.byte	0x4d
	.uaword	0x1093
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"BLDC_f32Pfb2DutyPhys"
	.byte	0x5
	.byte	0x4e
	.uaword	0x1093
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"BLDC_f32Pfb3DutyPhys"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1093
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"BLDC_f32TgtDutyPhys"
	.byte	0x5
	.byte	0x50
	.uaword	0x1093
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x13
	.uaword	0x272
	.uaword	0x10a3
	.uleb128 0x14
	.uaword	0x10a3
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x5
	.byte	0x51
	.uaword	0xdcd
	.uleb128 0x7
	.uaword	.LASF12
	.byte	0x3c
	.byte	0x5
	.byte	0x73
	.uaword	0x129a
	.uleb128 0x8
	.string	"u16ADReadOilPressure"
	.byte	0x5
	.byte	0x75
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u16ADRead12VBattery"
	.byte	0x5
	.byte	0x76
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u16ADRead12VBackup"
	.byte	0x5
	.byte	0x77
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"u16ADReadP5VAD2S"
	.byte	0x5
	.byte	0x78
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidStartPosSample"
	.byte	0x5
	.byte	0x7a
	.uaword	0x72e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidBusKeyConfig"
	.byte	0x5
	.byte	0x7b
	.uaword	0x12a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"bGetMotPosDuty"
	.byte	0x5
	.byte	0x7c
	.uaword	0x12c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"vidSetHallInvalidState"
	.byte	0x5
	.byte	0x80
	.uaword	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"vidSetHallUndefinedState"
	.byte	0x5
	.byte	0x81
	.uaword	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"vidSetHallSupplyLowState"
	.byte	0x5
	.byte	0x82
	.uaword	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"vidSetPhaseShortGndState"
	.byte	0x5
	.byte	0x83
	.uaword	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"vidSetPhaseShortVccState"
	.byte	0x5
	.byte	0x84
	.uaword	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"u16ReadHallUndefineLogged"
	.byte	0x5
	.byte	0x86
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"u16ReadHallSupplyLowLogged"
	.byte	0x5
	.byte	0x87
	.uaword	0xb02
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"bGetReadyState"
	.byte	0x5
	.byte	0x89
	.uaword	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x12a6
	.uleb128 0xd
	.uaword	0x272
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x129a
	.uleb128 0xf
	.byte	0x1
	.uaword	0x28b
	.uaword	0x12c6
	.uleb128 0xd
	.uaword	0xb59
	.uleb128 0xd
	.uaword	0xb41
	.uleb128 0xd
	.uaword	0xb41
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x12ac
	.uleb128 0xc
	.byte	0x1
	.uaword	0x12d8
	.uleb128 0xd
	.uaword	0x28b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x12cc
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x5
	.byte	0x8a
	.uaword	0x10ba
	.uleb128 0x9
	.string	"BLDC_MGR_STATE"
	.byte	0x1
	.byte	0x1
	.byte	0x11
	.uaword	0x1363
	.uleb128 0x5
	.string	"BLDC_MGR_SW_INIT_STATE"
	.sleb128 0
	.uleb128 0x5
	.string	"BLDC_MGR_HW_INIT_STATE"
	.sleb128 1
	.uleb128 0x5
	.string	"BLDC_MGR_READY_STATE"
	.sleb128 2
	.uleb128 0x5
	.string	"BLDC_MGR_RUNNING_STATE"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.string	"BLDC_vidAd2sVolDet"
	.byte	0x1
	.uahalf	0x28b
	.byte	0x1
	.byte	0x1
	.uaword	0x1399
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x28b
	.uaword	0xb1f
	.uleb128 0x17
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x1399
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x139f
	.uleb128 0xe
	.uaword	0x12de
	.uleb128 0x18
	.string	"BLDC_bFaultRptConditionCheck"
	.byte	0x1
	.uahalf	0x2c9
	.byte	0x1
	.uaword	0x28b
	.byte	0x1
	.uaword	0x1421
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0xb1f
	.uleb128 0x19
	.string	"bBswReadySts"
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x28b
	.uleb128 0x19
	.string	"bRetVal"
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x28b
	.uleb128 0x19
	.string	"u16LocAdVal"
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0x1fe
	.uleb128 0x17
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1399
	.byte	0
	.uleb128 0x15
	.string	"BLDC_vidDtcReportMainFunction"
	.byte	0x1
	.uahalf	0x256
	.byte	0x1
	.byte	0x1
	.uaword	0x147a
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x256
	.uaword	0xb1f
	.uleb128 0x19
	.string	"bCheckCondition"
	.byte	0x1
	.uahalf	0x258
	.uaword	0x28b
	.uleb128 0x17
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x259
	.uaword	0x1399
	.byte	0
	.uleb128 0x1a
	.string	"BLDC_vidMotorMgrVarInit"
	.byte	0x1
	.uahalf	0x2f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"BLDC_vidDtcRptVarInit"
	.byte	0x1
	.uahalf	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"BLDC_vidHallDetVarInit"
	.byte	0x1
	.uahalf	0x303
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BLDC_bGetHallUndefFlt"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BLDC_bGetHallInvalidFlt"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BLDC_bGetP5vAD2SOverVolFlt"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BLDC_bGetP5vAD2SUnderVolFlt"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BLDC_bGetUvwShortGnd"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BLDC_bGetUvwShortVs"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1c
	.string	"BLDC_vidMotPosPwmMng"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x164a
	.uleb128 0x1d
	.uaword	.LASF13
	.byte	0x1
	.byte	0xf5
	.uaword	0xb1f
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x1
	.byte	0xf7
	.uaword	0x1399
	.uaword	.LLST1
	.uleb128 0x1f
	.uaword	.LVL2
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_u32MotPosSigDuty
	.uleb128 0x20
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_u32MotPosSigPerd
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_f32BldcPosDuty
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"BLDC_vidGetPosSigPerd"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x168d
	.uleb128 0x21
	.string	"pu32PosSigPerd"
	.byte	0x1
	.byte	0xff
	.uaword	0xb41
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x22
	.string	"BLDC_vidGetPositionDuty"
	.byte	0x1
	.uahalf	0x104
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x16d1
	.uleb128 0x23
	.string	"pf32PosDuty"
	.byte	0x1
	.uahalf	0x104
	.uaword	0xb59
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.string	"BLDC_vidMidPDetVarInit"
	.byte	0x1
	.uahalf	0x319
	.byte	0x1
	.byte	0x1
	.uaword	0x1703
	.uleb128 0x19
	.string	"u8Index"
	.byte	0x1
	.uahalf	0x31b
	.uaword	0x1d3
	.byte	0
	.uleb128 0x1c
	.string	"BLDC_vidInit"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1775
	.uleb128 0x24
	.uaword	0x147a
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xab
	.uleb128 0x24
	.uaword	0x1498
	.uaword	.LBB19
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xac
	.uleb128 0x25
	.uaword	0x16d1
	.uaword	.LBB25
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xad
	.uaword	0x1765
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x27
	.uaword	0x16f2
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x14b4
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xae
	.byte	0
	.uleb128 0x28
	.string	"BLDC_vidHallDiagMainfunction"
	.byte	0x1
	.uahalf	0x112
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x185f
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x112
	.uaword	0xb1f
	.uaword	.LLST3
	.uleb128 0x2a
	.string	"u8CurHallStt"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x799
	.uaword	.LLST4
	.uleb128 0x2b
	.string	"u8LocPreHallSttIdx"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x1d3
	.uaword	.LLST5
	.uleb128 0x2b
	.string	"u8LocExpForwdHallStt"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x1d3
	.uaword	.LLST6
	.uleb128 0x2b
	.string	"u8LocExpBacwdHallStt"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x1d3
	.uaword	.LLST6
	.uleb128 0x2c
	.uaword	0x1363
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x13a
	.uleb128 0x2d
	.uaword	0x1380
	.uaword	.LLST8
	.uleb128 0x2e
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x27
	.uaword	0x138c
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"BLDC_bMidPointFaultClear"
	.byte	0x1
	.uahalf	0x22b
	.byte	0x1
	.byte	0x1
	.uaword	0x189f
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x22b
	.uaword	0xb1f
	.uleb128 0x19
	.string	"u8DevID"
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x1d3
	.byte	0
	.uleb128 0x15
	.string	"BLDC_vidHallFaultCheck"
	.byte	0x1
	.uahalf	0x2af
	.byte	0x1
	.byte	0x1
	.uaword	0x18e9
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x2af
	.uaword	0xb1f
	.uleb128 0x19
	.string	"u8DevID"
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x1d3
	.uleb128 0x17
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0x1399
	.byte	0
	.uleb128 0x2f
	.string	"BLDC_vidMotorStateMng"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a6c
	.uleb128 0x1d
	.uaword	.LASF13
	.byte	0x1
	.byte	0xba
	.uaword	0xb1f
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x1
	.byte	0xbc
	.uaword	0x1399
	.uaword	.LLST11
	.uleb128 0x25
	.uaword	0x1421
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xea
	.uaword	0x19b2
	.uleb128 0x2d
	.uaword	0x1449
	.uaword	.LLST12
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x30
	.uaword	0x1455
	.uleb128 0x27
	.uaword	0x146d
	.uaword	.LLST13
	.uleb128 0x31
	.uaword	0x13a4
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x19a8
	.uleb128 0x2d
	.uaword	0x13cf
	.uaword	.LLST12
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x27
	.uaword	0x13db
	.uaword	.LLST15
	.uleb128 0x27
	.uaword	0x13f0
	.uaword	.LLST16
	.uleb128 0x27
	.uaword	0x1400
	.uaword	.LLST17
	.uleb128 0x27
	.uaword	0x1414
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL70
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x185f
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xeb
	.uaword	0x1a18
	.uleb128 0x2d
	.uaword	0x1882
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xb8
	.uleb128 0x27
	.uaword	0x188e
	.uaword	.LLST20
	.uleb128 0x33
	.uaword	0x189f
	.uaword	.LBB61
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x248
	.uleb128 0x2d
	.uaword	0x18c0
	.uaword	.LLST21
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x27
	.uaword	0x18cc
	.uaword	.LLST22
	.uleb128 0x27
	.uaword	0x18dc
	.uaword	.LLST23
	.uleb128 0x32
	.uaword	.LVL90
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL53
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x34
	.uaword	.LVL57
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1a39
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1bb
	.byte	0x4
	.uaword	0x3f800000
	.byte	0
	.uleb128 0x34
	.uaword	.LVL58
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1a51
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL59
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1a63
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL62
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"BLDC_bPwmIsReady"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ab5
	.uleb128 0x36
	.string	"bPwmIsReady"
	.byte	0x1
	.byte	0x77
	.uaword	0x28b
	.byte	0xa
	.byte	0x3
	.uaword	BLDC_xMotorMgrVarSet+2
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x29
	.byte	0x9f
	.byte	0
	.uleb128 0x36
	.string	"BLDC_xMotorMgrVarSet"
	.byte	0x1
	.byte	0x6a
	.uaword	0xbf2
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xMotorMgrVarSet
	.uleb128 0x36
	.string	"BLDC_xHallDetVarSet"
	.byte	0x1
	.byte	0x6b
	.uaword	0xdc2
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xHallDetVarSet
	.uleb128 0x36
	.string	"BLDC_xMidPDetVarSet"
	.byte	0x1
	.byte	0x6c
	.uaword	0x10af
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xMidPDetVarSet
	.uleb128 0x36
	.string	"BLDC_xDtcRptVarSet"
	.byte	0x1
	.byte	0x6d
	.uaword	0xcb1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xDtcRptVarSet
	.uleb128 0x13
	.uaword	0x5be
	.uaword	0x1b49
	.uleb128 0x14
	.uaword	0x10a3
	.byte	0x5
	.byte	0
	.uleb128 0x37
	.string	"BLDC_au8BackwardTable"
	.byte	0x4
	.byte	0x64
	.uaword	0x1b68
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1b39
	.uleb128 0x37
	.string	"BLDC_au8ForwardTable"
	.byte	0x4
	.byte	0x65
	.uaword	0x1b8b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1b39
	.uleb128 0x37
	.string	"BLDC_ku16MidPotRcvTimC"
	.byte	0x6
	.byte	0x22
	.uaword	0x1bb0
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1fe
	.uleb128 0x37
	.string	"BLDC_kf32LVThdHighC"
	.byte	0x6
	.byte	0x2a
	.uaword	0x77d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"BLDC_kf32LVThdLowC"
	.byte	0x6
	.byte	0x2b
	.uaword	0x77d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"BLDC_kf32P5vAD2SOverVolC"
	.byte	0x6
	.byte	0x2c
	.uaword	0x77d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"BLDC_kf32P5vAD2SUnderVolC"
	.byte	0x6
	.byte	0x2d
	.uaword	0x77d
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"BLDC_xCapAswFunc"
	.byte	0x1
	.byte	0x57
	.uaword	0xb8e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_xCapAswFunc
	.uleb128 0x38
	.string	"BLDC_f32BldcPosDuty"
	.byte	0x1
	.byte	0x6e
	.uaword	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_f32BldcPosDuty
	.uleb128 0x38
	.string	"BLDC_u32MotPosSigPerd"
	.byte	0x1
	.byte	0x6f
	.uaword	0x23a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_u32MotPosSigPerd
	.uleb128 0x38
	.string	"BLDC_u32MotPosSigDuty"
	.byte	0x1
	.byte	0x70
	.uaword	0x23a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_u32MotPosSigDuty
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x36
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.uaword	.LVL2
	.uaword	.LFE28
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL38
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44-1
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL38
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44-1
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0xd
	.byte	0x3
	.uaword	BLDC_xHallDetVarSet+9
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0xd
	.byte	0x3
	.uaword	BLDC_xHallDetVarSet+9
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44-1
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL60
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-1
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL64-1
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL74
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL91
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL64-1
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL82
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL74
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL91
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL65
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66-1
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL74
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL91
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL63
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL82
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL82
	.uaword	.LVL84-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	.LVL84-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL82
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL83
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0
	.uaword	0
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
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"BLDC_GeneModule"
.LASF9:
	.string	"BLDC_tDtcRptVarSet"
.LASF11:
	.string	"BLDC_tMidPDetVarSet"
.LASF10:
	.string	"BLDC_tHallDetVarSet"
.LASF13:
	.string	"kpktDev"
.LASF4:
	.string	"BLDC_HallCtrlVarSet"
.LASF2:
	.string	"BLDC_HallCtrlTable"
.LASF12:
	.string	"BLDC_HalApi"
.LASF3:
	.string	"BLDC_PwmCtrlVarSet"
.LASF0:
	.string	"BLDC_Device"
.LASF7:
	.string	"BLDC_HalModule"
.LASF14:
	.string	"pktHalApi"
.LASF5:
	.string	"BLDC_TimerDriver"
.LASF8:
	.string	"BLDC_tMotorMgrVarSet"
.LASF6:
	.string	"BLDC_AppFunc"
	.extern	BLDC_ku16MidPotRcvTimC,STT_OBJECT,2
	.extern	BLDC_kf32LVThdHighC,STT_OBJECT,4
	.extern	BLDC_kf32LVThdLowC,STT_OBJECT,4
	.extern	BLDC_kf32P5vAD2SUnderVolC,STT_OBJECT,4
	.extern	BLDC_kf32P5vAD2SOverVolC,STT_OBJECT,4
	.extern	BLDC_au8ForwardTable,STT_OBJECT,24
	.extern	BLDC_au8BackwardTable,STT_OBJECT,24
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
