	.file	"RESBSL.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	RESBSL_vidInit
	.type	RESBSL_vidInit, @function
RESBSL_vidInit:
.LFB19:
	.file 1 "bswcdd\\RES\\RESBSL.c"
	.loc 1 83 0
	.loc 1 84 0
	movh.a	%a15, 61471
	lea	%a15, [%a15] 32
	ld.w	%d15, [%a15]0
	mov	%d0, 995
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	movh.a	%a15, 61471
	lea	%a15, [%a15] 160
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	.loc 1 85 0
	movh.a	%a15, hi:RES_u16VSICkreqPeriodDefC
	ld.hu	%d3, [%a15] lo:RES_u16VSICkreqPeriodDefC
.LVL0:
.LBB6:
.LBB7:
	.loc 1 149 0
	movh.a	%a15, hi:RES_u8SyncDutyPercentC
.LVL1:
	ld.bu	%d7, [%a15] lo:RES_u8SyncDutyPercentC
.LVL2:
	.loc 1 150 0
	movh.a	%a15, hi:RES_u16SyncDelayC
.LVL3:
	ld.hu	%d2, [%a15] lo:RES_u16SyncDelayC
.LVL4:
	.loc 1 160 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDelay
.LVL5:
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDelay
	.loc 1 153 0
	lt.u	%d4, %d2, 16
	min.u	%d15, %d2, %d0
	seln	%d15, %d4, %d15, 15
.LVL6:
	min.u	%d4, %d7, 10
	.loc 1 160 0
	st.w	[%a15]0, %d15
	max.u	%d4, %d4, 3
.LVL7:
	.loc 1 158 0
	movh	%d15, 20972
	mul	%d4, %d3
.LVL8:
	addi	%d15, %d15, -31457
	mul.u	%e4, %d4, %d15
	.loc 1 161 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDuty
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDuty
	.loc 1 158 0
	sh	%d15, %d5, -5
	.loc 1 161 0
	st.w	[%a15]0, %d15
.LVL9:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 1 186 0
	movh.a	%a15, hi:RES_u8SyncDutyPercent2C
	ld.bu	%d6, [%a15] lo:RES_u8SyncDutyPercent2C
.LVL10:
	.loc 1 187 0
	movh.a	%a15, hi:RES_u16SyncDelay2C
.LVL11:
	ld.hu	%d15, [%a15] lo:RES_u16SyncDelay2C
.LVL12:
	.loc 1 197 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDelay2
.LVL13:
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDelay2
	.loc 1 190 0
	lt.u	%d4, %d15, 16
	min.u	%d5, %d15, %d0
	seln	%d5, %d4, %d5, 15
.LVL14:
	min.u	%d4, %d6, 10
	.loc 1 197 0
	st.w	[%a15]0, %d5
	max.u	%d4, %d4, 3
.LVL15:
	.loc 1 195 0
	movh	%d5, 20972
	mul	%d4, %d3
.LVL16:
	addi	%d5, %d5, -31457
	.loc 1 198 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDuty2
	.loc 1 195 0
	mul.u	%e4, %d4, %d5
	.loc 1 198 0
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDuty2
	.loc 1 195 0
	sh	%d4, %d5, -5
	.loc 1 198 0
	st.w	[%a15]0, %d4
.LBE9:
.LBE8:
	.loc 1 100 0
	movh.a	%a15, hi:RES_u16VSICkreqPeriodCalib
	st.h	[%a15] lo:RES_u16VSICkreqPeriodCalib, %d3
	.loc 1 101 0
	movh.a	%a15, hi:RES_u16ExcitDelayC
	ld.h	%d3, [%a15] lo:RES_u16ExcitDelayC
.LVL17:
	movh.a	%a15, hi:RES_u16ExcitDelayCalib
	st.h	[%a15] lo:RES_u16ExcitDelayCalib, %d3
	.loc 1 102 0
	movh.a	%a15, hi:RES_u16SyncDelayCalib
	st.h	[%a15] lo:RES_u16SyncDelayCalib, %d2
	.loc 1 103 0
	movh.a	%a15, hi:RES_u16SyncDelayCalib2
	st.h	[%a15] lo:RES_u16SyncDelayCalib2, %d15
	.loc 1 104 0
	movh.a	%a15, hi:RES_u8ExcitDutyPercentC
	ld.bu	%d15, [%a15] lo:RES_u8ExcitDutyPercentC
	movh.a	%a15, hi:RES_u8ExcitDutyPercentCalib
	st.b	[%a15] lo:RES_u8ExcitDutyPercentCalib, %d15
	.loc 1 105 0
	movh.a	%a15, hi:RES_u8SyncDutyPercentCalib
	st.b	[%a15] lo:RES_u8SyncDutyPercentCalib, %d7
	.loc 1 106 0
	movh.a	%a15, hi:RES_u8SyncDutyPercentCalib2
	st.b	[%a15] lo:RES_u8SyncDutyPercentCalib2, %d6
	.loc 1 107 0
	movh.a	%a15, hi:RES_bGenerateSyncPosC
	ld.bu	%d15, [%a15] lo:RES_bGenerateSyncPosC
	movh.a	%a15, hi:RES_bGenerateSyncPosCalib
	st.b	[%a15] lo:RES_bGenerateSyncPosCalib, %d15
	ret
.LFE19:
	.size	RESBSL_vidInit, .-RESBSL_vidInit
	.align 1
	.global	RESBSL_vidStopExcitation
	.type	RESBSL_vidStopExcitation, @function
RESBSL_vidStopExcitation:
.LFB20:
	.loc 1 122 0
	.loc 1 123 0
	movh.a	%a15, 61471
	lea	%a15, [%a15] 160
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	ret
.LFE20:
	.size	RESBSL_vidStopExcitation, .-RESBSL_vidStopExcitation
	.align 1
	.global	RESBSL_vidConfig
	.type	RESBSL_vidConfig, @function
RESBSL_vidConfig:
.LFB21:
	.loc 1 139 0
.LVL18:
	.loc 1 150 0
	movh.a	%a15, hi:RES_u16SyncDelayC
	ld.hu	%d15, [%a15] lo:RES_u16SyncDelayC
.LVL19:
	mov	%d2, 995
	.loc 1 153 0
	lt.u	%d3, %d15, 16
	movh.a	%a15, hi:RES_u8SyncDutyPercentC
.LVL20:
	min.u	%d15, %d15, %d2
	seln	%d2, %d3, %d15, 15
.LVL21:
	ld.bu	%d15, [%a15] lo:RES_u8SyncDutyPercentC
	.loc 1 160 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDelay
	min.u	%d15, %d15, 10
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDelay
	max.u	%d15, %d15, 3
.LVL22:
	.loc 1 158 0
	mul	%d4, %d15
.LVL23:
	movh	%d15, 20972
	addi	%d15, %d15, -31457
	.loc 1 160 0
	st.w	[%a15]0, %d2
	.loc 1 158 0
	mul.u	%e4, %d4, %d15
	.loc 1 161 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDuty
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDuty
	.loc 1 158 0
	sh	%d15, %d5, -5
	.loc 1 161 0
	st.w	[%a15]0, %d15
	ret
.LFE21:
	.size	RESBSL_vidConfig, .-RESBSL_vidConfig
	.align 1
	.global	GRESBSL_vidConfig
	.type	GRESBSL_vidConfig, @function
GRESBSL_vidConfig:
.LFB22:
	.loc 1 176 0
.LVL24:
	.loc 1 187 0
	movh.a	%a15, hi:RES_u16SyncDelay2C
	ld.hu	%d15, [%a15] lo:RES_u16SyncDelay2C
.LVL25:
	mov	%d2, 995
	.loc 1 190 0
	lt.u	%d3, %d15, 16
	movh.a	%a15, hi:RES_u8SyncDutyPercent2C
.LVL26:
	min.u	%d15, %d15, %d2
	seln	%d2, %d3, %d15, 15
.LVL27:
	ld.bu	%d15, [%a15] lo:RES_u8SyncDutyPercent2C
	.loc 1 197 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDelay2
	min.u	%d15, %d15, 10
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDelay2
	max.u	%d15, %d15, 3
.LVL28:
	.loc 1 195 0
	mul	%d4, %d15
.LVL29:
	movh	%d15, 20972
	addi	%d15, %d15, -31457
	.loc 1 197 0
	st.w	[%a15]0, %d2
	.loc 1 195 0
	mul.u	%e4, %d4, %d15
	.loc 1 198 0
	movh.a	%a15, hi:MCS_pu32ResGtmSyncPosDuty2
	ld.a	%a15, [%a15] lo:MCS_pu32ResGtmSyncPosDuty2
	.loc 1 195 0
	sh	%d15, %d5, -5
	.loc 1 198 0
	st.w	[%a15]0, %d15
	ret
.LFE22:
	.size	GRESBSL_vidConfig, .-GRESBSL_vidConfig
	.align 1
	.global	RESBSL_vidCheckCalibChange
	.type	RESBSL_vidCheckCalibChange, @function
RESBSL_vidCheckCalibChange:
.LFB23:
	.loc 1 213 0
	.loc 1 219 0
	movh.a	%a15, hi:RES_u16VSICkreqPeriodDefC
	movh.a	%a4, hi:RES_u16VSICkreqPeriodCalib
	ld.hu	%d3, [%a15] lo:RES_u16VSICkreqPeriodDefC
	ld.hu	%d15, [%a4] lo:RES_u16VSICkreqPeriodCalib
	jeq	%d15, %d3, .L30
	movh.a	%a15, hi:RES_u16ExcitDelayC
	ld.hu	%d7, [%a15] lo:RES_u16ExcitDelayC
	movh.a	%a15, hi:RES_u8ExcitDutyPercentC
	ld.bu	%d1, [%a15] lo:RES_u8ExcitDutyPercentC
	movh.a	%a15, hi:RES_u8SyncDutyPercentC
	ld.bu	%d6, [%a15] lo:RES_u8SyncDutyPercentC
	movh.a	%a15, hi:RES_u16SyncDelayC
	ld.hu	%d2, [%a15] lo:RES_u16SyncDelayC
	movh.a	%a15, hi:RES_u16SyncDelay2C
	ld.hu	%d15, [%a15] lo:RES_u16SyncDelay2C
	movh.a	%a15, hi:RES_u16ExcitDelayCalib
.L51:
	movh.a	%a6, hi:RES_u16SyncDelayCalib
.L52:
	movh.a	%a7, hi:RES_u16SyncDelayCalib2
	movh.a	%a12, hi:RES_u8ExcitDutyPercentCalib
	movh.a	%a2, hi:RES_u8SyncDutyPercentCalib
	movh.a	%a5, hi:RES_u8SyncDutyPercent2C
	movh.a	%a3, hi:RES_u8SyncDutyPercentCalib2
.L31:
.LVL30:
.LBB14:
.LBB15:
	.loc 1 160 0
	movh.a	%a13, hi:MCS_pu32ResGtmSyncPosDelay
	ld.a	%a13, [%a13] lo:MCS_pu32ResGtmSyncPosDelay
	mov	%d5, 995
	.loc 1 153 0
	lt.u	%d0, %d2, 16
	min.u	%d4, %d2, %d5
	seln	%d5, %d0, %d4, 15
.LVL31:
	min.u	%d4, %d6, 10
	.loc 1 160 0
	st.w	[%a13]0, %d5
	max.u	%d4, %d4, 3
.LVL32:
	.loc 1 158 0
	movh	%d5, 20972
	mul	%d4, %d3
.LVL33:
	addi	%d5, %d5, -31457
	mul.u	%e4, %d4, %d5
	.loc 1 161 0
	movh.a	%a13, hi:MCS_pu32ResGtmSyncPosDuty
	ld.a	%a13, [%a13] lo:MCS_pu32ResGtmSyncPosDuty
.LBE15:
.LBE14:
.LBB18:
.LBB19:
	.loc 1 186 0
	ld.bu	%d0, [%a5] lo:RES_u8SyncDutyPercent2C
	.loc 1 197 0
	movh.a	%a5, hi:MCS_pu32ResGtmSyncPosDelay2
.LBE19:
.LBE18:
.LBB22:
.LBB16:
	.loc 1 158 0
	sh	%d4, %d5, -5
.LBE16:
.LBE22:
.LBB23:
.LBB20:
	.loc 1 197 0
	ld.a	%a5, [%a5] lo:MCS_pu32ResGtmSyncPosDelay2
	mov	%d5, 995
.LBE20:
.LBE23:
.LBB24:
.LBB17:
	.loc 1 161 0
	st.w	[%a13]0, %d4
.LVL34:
.LBE17:
.LBE24:
.LBB25:
.LBB21:
	.loc 1 190 0
	lt.u	%d8, %d15, 16
	min.u	%d4, %d15, %d5
	seln	%d5, %d8, %d4, 15
.LVL35:
	min.u	%d4, %d0, 10
	.loc 1 197 0
	st.w	[%a5]0, %d5
	max.u	%d4, %d4, 3
.LVL36:
	.loc 1 195 0
	movh	%d5, 20972
	mul	%d4, %d3
.LVL37:
	addi	%d5, %d5, -31457
	.loc 1 198 0
	movh.a	%a5, hi:MCS_pu32ResGtmSyncPosDuty2
	.loc 1 195 0
	mul.u	%e4, %d4, %d5
	.loc 1 198 0
	ld.a	%a5, [%a5] lo:MCS_pu32ResGtmSyncPosDuty2
	.loc 1 195 0
	sh	%d4, %d5, -5
	.loc 1 198 0
	st.w	[%a5]0, %d4
.LVL38:
.L36:
.LBE21:
.LBE25:
	.loc 1 245 0
	movh.a	%a5, hi:RES_bGenerateSyncPosC
	ld.bu	%d4, [%a5] lo:RES_bGenerateSyncPosC
	movh.a	%a5, hi:RES_bGenerateSyncPosCalib
	st.b	[%a5] lo:RES_bGenerateSyncPosCalib, %d4
	.loc 1 246 0
	st.h	[%a15] lo:RES_u16ExcitDelayCalib, %d7
	.loc 1 247 0
	st.b	[%a12] lo:RES_u8ExcitDutyPercentCalib, %d1
	.loc 1 248 0
	st.h	[%a4] lo:RES_u16VSICkreqPeriodCalib, %d3
	.loc 1 249 0
	st.h	[%a6] lo:RES_u16SyncDelayCalib, %d2
	.loc 1 250 0
	st.b	[%a2] lo:RES_u8SyncDutyPercentCalib, %d6
	.loc 1 251 0
	st.h	[%a7] lo:RES_u16SyncDelayCalib2, %d15
	.loc 1 252 0
	st.b	[%a3] lo:RES_u8SyncDutyPercentCalib2, %d0
	ret
.L30:
	.loc 1 220 0
	movh.a	%a15, hi:RES_u16ExcitDelayCalib
	movh.a	%a2, hi:RES_u16ExcitDelayC
	ld.hu	%d4, [%a15] lo:RES_u16ExcitDelayCalib
	ld.hu	%d7, [%a2] lo:RES_u16ExcitDelayC
	jeq	%d4, %d7, .L32
	movh.a	%a2, hi:RES_u8ExcitDutyPercentC
	ld.bu	%d1, [%a2] lo:RES_u8ExcitDutyPercentC
	movh.a	%a2, hi:RES_u8SyncDutyPercentC
	ld.bu	%d6, [%a2] lo:RES_u8SyncDutyPercentC
	movh.a	%a2, hi:RES_u16SyncDelayC
	ld.hu	%d2, [%a2] lo:RES_u16SyncDelayC
	movh.a	%a2, hi:RES_u16SyncDelay2C
	ld.hu	%d15, [%a2] lo:RES_u16SyncDelay2C
	j	.L51
.L32:
	.loc 1 221 0
	movh.a	%a2, hi:RES_u16SyncDelayC
	movh.a	%a6, hi:RES_u16SyncDelayCalib
	ld.hu	%d2, [%a2] lo:RES_u16SyncDelayC
	movh.a	%a2, hi:RES_u8ExcitDutyPercentC
	ld.bu	%d1, [%a2] lo:RES_u8ExcitDutyPercentC
	ld.hu	%d5, [%a6] lo:RES_u16SyncDelayCalib
	movh.a	%a2, hi:RES_u8SyncDutyPercentC
	ld.bu	%d6, [%a2] lo:RES_u8SyncDutyPercentC
	movh.a	%a2, hi:RES_u16SyncDelay2C
	ld.hu	%d15, [%a2] lo:RES_u16SyncDelay2C
	mov	%d7, %d4
	jne	%d5, %d2, .L52
	.loc 1 222 0
	movh.a	%a7, hi:RES_u16SyncDelayCalib2
	movh.a	%a2, hi:RES_u16SyncDelay2C
	ld.hu	%d2, [%a7] lo:RES_u16SyncDelayCalib2
	ld.hu	%d15, [%a2] lo:RES_u16SyncDelay2C
	jeq	%d2, %d15, .L34
	movh.a	%a2, hi:RES_u8ExcitDutyPercentC
	ld.bu	%d1, [%a2] lo:RES_u8ExcitDutyPercentC
	movh.a	%a2, hi:RES_u8SyncDutyPercentC
	ld.bu	%d6, [%a2] lo:RES_u8SyncDutyPercentC
	mov	%d2, %d5
	mov	%d7, %d4
	movh.a	%a12, hi:RES_u8ExcitDutyPercentCalib
	movh.a	%a2, hi:RES_u8SyncDutyPercentCalib
	movh.a	%a5, hi:RES_u8SyncDutyPercent2C
	movh.a	%a3, hi:RES_u8SyncDutyPercentCalib2
	j	.L31
.L34:
	.loc 1 223 0
	movh.a	%a12, hi:RES_u8ExcitDutyPercentCalib
	movh.a	%a2, hi:RES_u8ExcitDutyPercentC
	ld.bu	%d7, [%a12] lo:RES_u8ExcitDutyPercentCalib
	ld.bu	%d1, [%a2] lo:RES_u8ExcitDutyPercentC
	jeq	%d7, %d1, .L35
	movh.a	%a2, hi:RES_u8SyncDutyPercentC
	ld.bu	%d6, [%a2] lo:RES_u8SyncDutyPercentC
	mov	%d15, %d2
	mov	%d7, %d4
	mov	%d2, %d5
	movh.a	%a2, hi:RES_u8SyncDutyPercentCalib
	movh.a	%a5, hi:RES_u8SyncDutyPercent2C
	movh.a	%a3, hi:RES_u8SyncDutyPercentCalib2
	j	.L31
.L35:
	movh.a	%a3, hi:RES_u8SyncDutyPercentC
	.loc 1 224 0
	movh.a	%a2, hi:RES_u8SyncDutyPercentCalib
	ld.bu	%d6, [%a3] lo:RES_u8SyncDutyPercentC
	ld.bu	%d0, [%a2] lo:RES_u8SyncDutyPercentCalib
	mov	%d15, %d2
	mov	%d1, %d7
	mov	%d2, %d5
	mov	%d7, %d4
	movh.a	%a5, hi:RES_u8SyncDutyPercent2C
	movh.a	%a3, hi:RES_u8SyncDutyPercentCalib2
	jne	%d0, %d6, .L31
	.loc 1 225 0
	ld.bu	%d4, [%a3] lo:RES_u8SyncDutyPercentCalib2
	ld.bu	%d5, [%a5] lo:RES_u8SyncDutyPercent2C
	mov	%d0, %d4
	jne	%d4, %d5, .L31
	j	.L36
.LFE23:
	.size	RESBSL_vidCheckCalibChange, .-RESBSL_vidCheckCalibChange
	.global	RES_u32ExcDelay
.section .bss.a4.RES_u32ExcDelay,"aw",@nobits
	.align 2
	.type	RES_u32ExcDelay, @object
	.size	RES_u32ExcDelay, 4
RES_u32ExcDelay:
	.zero	4
	.global	RES_bGenerateSyncPosCalib
.section .bss.a1.RES_bGenerateSyncPosCalib,"aw",@nobits
	.type	RES_bGenerateSyncPosCalib, @object
	.size	RES_bGenerateSyncPosCalib, 1
RES_bGenerateSyncPosCalib:
	.zero	1
	.global	RES_u8SyncDutyPercentCalib2
.section .bss.a1.RES_u8SyncDutyPercentCalib2,"aw",@nobits
	.type	RES_u8SyncDutyPercentCalib2, @object
	.size	RES_u8SyncDutyPercentCalib2, 1
RES_u8SyncDutyPercentCalib2:
	.zero	1
	.global	RES_u8SyncDutyPercentCalib
.section .bss.a1.RES_u8SyncDutyPercentCalib,"aw",@nobits
	.type	RES_u8SyncDutyPercentCalib, @object
	.size	RES_u8SyncDutyPercentCalib, 1
RES_u8SyncDutyPercentCalib:
	.zero	1
	.global	RES_u8ExcitDutyPercentCalib
.section .bss.a1.RES_u8ExcitDutyPercentCalib,"aw",@nobits
	.type	RES_u8ExcitDutyPercentCalib, @object
	.size	RES_u8ExcitDutyPercentCalib, 1
RES_u8ExcitDutyPercentCalib:
	.zero	1
	.global	RES_u16ExcitDelayCalib
.section .bss.a2.RES_u16ExcitDelayCalib,"aw",@nobits
	.align 1
	.type	RES_u16ExcitDelayCalib, @object
	.size	RES_u16ExcitDelayCalib, 2
RES_u16ExcitDelayCalib:
	.zero	2
	.global	RES_u16SyncDelayCalib2
.section .bss.a2.RES_u16SyncDelayCalib2,"aw",@nobits
	.align 1
	.type	RES_u16SyncDelayCalib2, @object
	.size	RES_u16SyncDelayCalib2, 2
RES_u16SyncDelayCalib2:
	.zero	2
	.global	RES_u16SyncDelayCalib
.section .bss.a2.RES_u16SyncDelayCalib,"aw",@nobits
	.align 1
	.type	RES_u16SyncDelayCalib, @object
	.size	RES_u16SyncDelayCalib, 2
RES_u16SyncDelayCalib:
	.zero	2
	.global	RES_u16VSICkreqPeriodCalib
.section .bss.a2.RES_u16VSICkreqPeriodCalib,"aw",@nobits
	.align 1
	.type	RES_u16VSICkreqPeriodCalib, @object
	.size	RES_u16VSICkreqPeriodCalib, 2
RES_u16VSICkreqPeriodCalib:
	.zero	2
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
	.file 5 "bswcdd\\RES\\RES.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\MCS\\MCS.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9eb
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\RES\\RESBSL.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
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
	.uaword	0x1ca
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
	.uaword	0x1f6
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
	.uaword	0x19e
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
	.uaword	0x1ca
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x3
	.byte	0x62
	.uaword	0x19e
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x3
	.byte	0x65
	.uaword	0x20c
	.uleb128 0x4
	.uaword	0x19e
	.uleb128 0x5
	.string	"_Ifx_GTM_MCS_CH_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0xfc9
	.uaword	0x3f2
	.uleb128 0x6
	.string	"EN"
	.byte	0x4
	.uahalf	0xfcb
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IRQ"
	.byte	0x4
	.uahalf	0xfcc
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ERR"
	.byte	0x4
	.uahalf	0xfcd
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_3"
	.byte	0x4
	.uahalf	0xfce
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CY"
	.byte	0x4
	.uahalf	0xfcf
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"Z"
	.byte	0x4
	.uahalf	0xfd0
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"V"
	.byte	0x4
	.uahalf	0xfd1
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"N"
	.byte	0x4
	.uahalf	0xfd2
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CAT"
	.byte	0x4
	.uahalf	0xfd3
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CWT"
	.byte	0x4
	.uahalf	0xfd4
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SAT"
	.byte	0x4
	.uahalf	0xfd5
	.uaword	0x2bb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_11"
	.byte	0x4
	.uahalf	0xfd6
	.uaword	0x2bb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SP_CNT"
	.byte	0x4
	.uahalf	0xfd7
	.uaword	0x2bb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_19"
	.byte	0x4
	.uahalf	0xfd8
	.uaword	0x2bb
	.byte	0x4
	.byte	0xd
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_GTM_MCS_CH_CTRL_Bits"
	.byte	0x4
	.uahalf	0xfd9
	.uaword	0x2c0
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.uahalf	0x1e67
	.uaword	0x43b
	.uleb128 0x9
	.string	"U"
	.byte	0x4
	.uahalf	0x1e69
	.uaword	0x28f
	.uleb128 0x9
	.string	"I"
	.byte	0x4
	.uahalf	0x1e6a
	.uaword	0x2a5
	.uleb128 0x9
	.string	"B"
	.byte	0x4
	.uahalf	0x1e6b
	.uaword	0x3f2
	.byte	0
	.uleb128 0x7
	.string	"Ifx_GTM_MCS_CH_CTRL"
	.byte	0x4
	.uahalf	0x1e6c
	.uaword	0x413
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x1
	.string	"RESBSL_vidConfig"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.byte	0x1
	.uaword	0x4b6
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x1
	.byte	0x8a
	.uaword	0x1e8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8c
	.uaword	0x1e8
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8d
	.uaword	0x1bd
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8e
	.uaword	0x1e8
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8f
	.uaword	0x1e8
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"GRESBSL_vidConfig"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.byte	0x1
	.uaword	0x50a
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x1
	.byte	0xaf
	.uaword	0x1e8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb1
	.uaword	0x1e8
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb2
	.uaword	0x1bd
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb3
	.uaword	0x1e8
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb4
	.uaword	0x1e8
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"RESBSL_vidInit"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5a1
	.uleb128 0xe
	.uaword	0x463
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x55
	.uaword	0x569
	.uleb128 0xf
	.uaword	0x47e
	.uleb128 0x10
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x11
	.uaword	0x489
	.uleb128 0x11
	.uaword	0x494
	.uleb128 0x12
	.uaword	0x49f
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	0x4aa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x4b6
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x56
	.uleb128 0xf
	.uaword	0x4d2
	.uleb128 0x10
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x11
	.uaword	0x4dd
	.uleb128 0x11
	.uaword	0x4e8
	.uleb128 0x12
	.uaword	0x4f3
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0x4fe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"RESBSL_vidStopExcitation"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.uaword	0x463
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x606
	.uleb128 0x16
	.uaword	0x47e
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	0x489
	.uaword	.LLST3
	.uleb128 0x11
	.uaword	0x494
	.uleb128 0x12
	.uaword	0x49f
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	0x4aa
	.byte	0
	.uleb128 0x15
	.uaword	0x4b6
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x641
	.uleb128 0x16
	.uaword	0x4d2
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	0x4dd
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	0x4e8
	.uleb128 0x12
	.uaword	0x4f3
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	0x4fe
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"RESBSL_vidCheckCalibChange"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6f8
	.uleb128 0x17
	.uaword	0x463
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe4
	.uaword	0x6b8
	.uleb128 0x16
	.uaword	0x47e
	.uaword	.LLST8
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x12
	.uaword	0x489
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	0x494
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	0x49f
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	0x4aa
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x4b6
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xe5
	.uleb128 0x16
	.uaword	0x4d2
	.uaword	.LLST13
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x12
	.uaword	0x4dd
	.uaword	.LLST13
	.uleb128 0x11
	.uaword	0x4e8
	.uleb128 0x12
	.uaword	0x4f3
	.uaword	.LLST15
	.uleb128 0x12
	.uaword	0x4fe
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.string	"RES_bGenerateSyncPosC"
	.byte	0x5
	.byte	0x36
	.uaword	0x717
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x25f
	.uleb128 0x1a
	.string	"RES_u8ExcitDutyPercentC"
	.byte	0x5
	.byte	0x3c
	.uaword	0x73d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x1bd
	.uleb128 0x1a
	.string	"RES_u8SyncDutyPercentC"
	.byte	0x5
	.byte	0x3d
	.uaword	0x73d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"RES_u8SyncDutyPercent2C"
	.byte	0x5
	.byte	0x3e
	.uaword	0x73d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"RES_u16ExcitDelayC"
	.byte	0x5
	.byte	0x44
	.uaword	0x79f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x1e8
	.uleb128 0x1a
	.string	"RES_u16SyncDelayC"
	.byte	0x5
	.byte	0x45
	.uaword	0x79f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"RES_u16SyncDelay2C"
	.byte	0x5
	.byte	0x46
	.uaword	0x79f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"RES_u16VSICkreqPeriodDefC"
	.byte	0x5
	.byte	0x47
	.uaword	0x79f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"RES_u16VSICkreqPeriodCalib"
	.byte	0x1
	.byte	0x33
	.uaword	0x1e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16VSICkreqPeriodCalib
	.uleb128 0x1c
	.string	"RES_u16SyncDelayCalib"
	.byte	0x1
	.byte	0x34
	.uaword	0x1e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16SyncDelayCalib
	.uleb128 0x1c
	.string	"RES_u16SyncDelayCalib2"
	.byte	0x1
	.byte	0x35
	.uaword	0x1e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16SyncDelayCalib2
	.uleb128 0x1c
	.string	"RES_u16ExcitDelayCalib"
	.byte	0x1
	.byte	0x36
	.uaword	0x1e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16ExcitDelayCalib
	.uleb128 0x1c
	.string	"RES_u8ExcitDutyPercentCalib"
	.byte	0x1
	.byte	0x37
	.uaword	0x1bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u8ExcitDutyPercentCalib
	.uleb128 0x1c
	.string	"RES_u8SyncDutyPercentCalib"
	.byte	0x1
	.byte	0x38
	.uaword	0x1bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u8SyncDutyPercentCalib
	.uleb128 0x1c
	.string	"RES_u8SyncDutyPercentCalib2"
	.byte	0x1
	.byte	0x39
	.uaword	0x1bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u8SyncDutyPercentCalib2
	.uleb128 0x1c
	.string	"RES_bGenerateSyncPosCalib"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_bGenerateSyncPosCalib
	.uleb128 0x1a
	.string	"MCS_pu32ResGtmSyncPosDelay"
	.byte	0x6
	.byte	0x31
	.uaword	0x95e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x4
	.uaword	0x224
	.uleb128 0x1a
	.string	"MCS_pu32ResGtmSyncPosDuty"
	.byte	0x6
	.byte	0x32
	.uaword	0x95e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"MCS_pu32ResGtmSyncPosDelay2"
	.byte	0x6
	.byte	0x33
	.uaword	0x95e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"MCS_pu32ResGtmSyncPosDuty2"
	.byte	0x6
	.byte	0x34
	.uaword	0x95e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"RES_u32ExcDelay"
	.byte	0x1
	.byte	0x46
	.uaword	0x224
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u32ExcDelay
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL8-.text
	.uaword	.LVL17-.text
	.uahalf	0x35
	.byte	0x77
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL15-.text
	.uaword	.LVL16-.text
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x35
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL18-.text
	.uaword	.LVL23-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-.text
	.uaword	.LFE21-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL18-.text
	.uaword	.LVL23-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL22-.text
	.uaword	.LVL23-.text
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL24-.text
	.uaword	.LVL29-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-.text
	.uaword	.LFE22-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL24-.text
	.uaword	.LVL29-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL30-.text
	.uaword	.LVL38-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30-.text
	.uaword	.LVL32-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LVL38-.text
	.uahalf	0x35
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34-.text
	.uaword	.LVL38-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL36-.text
	.uaword	.LVL37-.text
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x35
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x19e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB14-.Ltext0
	.uaword	.LBE14-.Ltext0
	.uaword	.LBB22-.Ltext0
	.uaword	.LBE22-.Ltext0
	.uaword	.LBB24-.Ltext0
	.uaword	.LBE24-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB18-.Ltext0
	.uaword	.LBE18-.Ltext0
	.uaword	.LBB23-.Ltext0
	.uaword	.LBE23-.Ltext0
	.uaword	.LBB25-.Ltext0
	.uaword	.LBE25-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"u8LocSyncDutyPercent"
.LASF3:
	.string	"u16LocSyncDelayVal"
.LASF0:
	.string	"u16LocCkreqPeriod"
.LASF2:
	.string	"u16LocSyncDutyVal"
.LASF4:
	.string	"CkreqPeriod"
	.extern	RES_bGenerateSyncPosC,STT_OBJECT,1
	.extern	RES_u8ExcitDutyPercentC,STT_OBJECT,1
	.extern	RES_u16ExcitDelayC,STT_OBJECT,2
	.extern	MCS_pu32ResGtmSyncPosDuty2,STT_OBJECT,4
	.extern	MCS_pu32ResGtmSyncPosDelay2,STT_OBJECT,4
	.extern	RES_u16SyncDelay2C,STT_OBJECT,2
	.extern	RES_u8SyncDutyPercent2C,STT_OBJECT,1
	.extern	MCS_pu32ResGtmSyncPosDuty,STT_OBJECT,4
	.extern	MCS_pu32ResGtmSyncPosDelay,STT_OBJECT,4
	.extern	RES_u16SyncDelayC,STT_OBJECT,2
	.extern	RES_u8SyncDutyPercentC,STT_OBJECT,1
	.extern	RES_u16VSICkreqPeriodDefC,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
