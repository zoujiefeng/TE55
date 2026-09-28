	.file	"OESM_STA.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.OESM_vidDuringOESM_ST0OnOESM_EV0,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST0OnOESM_EV0
	.type	OESM_vidDuringOESM_ST0OnOESM_EV0, @function
OESM_vidDuringOESM_ST0OnOESM_EV0:
.LFB5:
	.file 1 "bswcdd\\ESM\\OESM\\OESM_STA.c"
	.loc 1 98 0
	.loc 1 99 0
	j	OESM_vidStfStpI
.LVL0:
.LFE5:
	.size	OESM_vidDuringOESM_ST0OnOESM_EV0, .-OESM_vidDuringOESM_ST0OnOESM_EV0
.section .text.OESM_vidDuringOESM_ST0OnOESM_EV1,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST0OnOESM_EV1
	.type	OESM_vidDuringOESM_ST0OnOESM_EV1, @function
OESM_vidDuringOESM_ST0OnOESM_EV1:
.LFB6:
	.loc 1 104 0
	.loc 1 105 0
	j	OESM_vidStfStpI
.LVL1:
.LFE6:
	.size	OESM_vidDuringOESM_ST0OnOESM_EV1, .-OESM_vidDuringOESM_ST0OnOESM_EV1
.section .text.OESM_vidDuringOESM_ST1OnOESM_EV0,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST1OnOESM_EV0
	.type	OESM_vidDuringOESM_ST1OnOESM_EV0, @function
OESM_vidDuringOESM_ST1OnOESM_EV0:
.LFB7:
	.loc 1 111 0
	.loc 1 112 0
	j	OESM_vidStfStpII
.LVL2:
.LFE7:
	.size	OESM_vidDuringOESM_ST1OnOESM_EV0, .-OESM_vidDuringOESM_ST1OnOESM_EV0
.section .text.OESM_vidDuringOESM_ST1OnOESM_EV1,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST1OnOESM_EV1
	.type	OESM_vidDuringOESM_ST1OnOESM_EV1, @function
OESM_vidDuringOESM_ST1OnOESM_EV1:
.LFB8:
	.loc 1 117 0
	.loc 1 118 0
	j	OESM_vidStfStpII
.LVL3:
.LFE8:
	.size	OESM_vidDuringOESM_ST1OnOESM_EV1, .-OESM_vidDuringOESM_ST1OnOESM_EV1
.section .text.OESM_vidDuringOESM_ST2OnOESM_EV0,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST2OnOESM_EV0
	.type	OESM_vidDuringOESM_ST2OnOESM_EV0, @function
OESM_vidDuringOESM_ST2OnOESM_EV0:
.LFB9:
	.loc 1 124 0
	.loc 1 125 0
	j	OESM_vidStfOp
.LVL4:
.LFE9:
	.size	OESM_vidDuringOESM_ST2OnOESM_EV0, .-OESM_vidDuringOESM_ST2OnOESM_EV0
.section .text.OESM_vidDuringOESM_ST2OnOESM_EV1,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST2OnOESM_EV1
	.type	OESM_vidDuringOESM_ST2OnOESM_EV1, @function
OESM_vidDuringOESM_ST2OnOESM_EV1:
.LFB10:
	.loc 1 130 0
	.loc 1 131 0
	j	OESM_vidStfOp
.LVL5:
.LFE10:
	.size	OESM_vidDuringOESM_ST2OnOESM_EV1, .-OESM_vidDuringOESM_ST2OnOESM_EV1
.section .text.OESM_vidDuringOESM_ST3OnOESM_EV0,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST3OnOESM_EV0
	.type	OESM_vidDuringOESM_ST3OnOESM_EV0, @function
OESM_vidDuringOESM_ST3OnOESM_EV0:
.LFB11:
	.loc 1 137 0
	.loc 1 139 0
	movh.a	%a15, hi:OESM_u16PowerLatchTempo
	.loc 1 138 0
	call	OESM_vidStfPwrL
.LVL6:
	.loc 1 139 0
	ld.hu	%d15, [%a15] lo:OESM_u16PowerLatchTempo
	jz	%d15, .L8
	.loc 1 139 0 is_stmt 0 discriminator 1
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
.L8:
	.loc 1 139 0 discriminator 4
	st.h	[%a15] lo:OESM_u16PowerLatchTempo, %d15
	ret
.LFE11:
	.size	OESM_vidDuringOESM_ST3OnOESM_EV0, .-OESM_vidDuringOESM_ST3OnOESM_EV0
.section .text.OESM_vidDuringOESM_ST3OnOESM_EV1,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST3OnOESM_EV1
	.type	OESM_vidDuringOESM_ST3OnOESM_EV1, @function
OESM_vidDuringOESM_ST3OnOESM_EV1:
.LFB12:
	.loc 1 144 0 is_stmt 1
	.loc 1 145 0
	j	OESM_vidStfPwrL
.LVL7:
.LFE12:
	.size	OESM_vidDuringOESM_ST3OnOESM_EV1, .-OESM_vidDuringOESM_ST3OnOESM_EV1
.section .text.OESM_vidDuringOESM_ST4OnOESM_EV0,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST4OnOESM_EV0
	.type	OESM_vidDuringOESM_ST4OnOESM_EV0, @function
OESM_vidDuringOESM_ST4OnOESM_EV0:
.LFB13:
	.loc 1 151 0
	.loc 1 152 0
	j	OESM_vidStfPwrL
.LVL8:
.LFE13:
	.size	OESM_vidDuringOESM_ST4OnOESM_EV0, .-OESM_vidDuringOESM_ST4OnOESM_EV0
.section .text.OESM_vidDuringOESM_ST4OnOESM_EV1,"ax",@progbits
	.align 1
	.global	OESM_vidDuringOESM_ST4OnOESM_EV1
	.type	OESM_vidDuringOESM_ST4OnOESM_EV1, @function
OESM_vidDuringOESM_ST4OnOESM_EV1:
.LFB14:
	.loc 1 157 0
	.loc 1 158 0
	j	OESM_vidStfPwrL
.LVL9:
.LFE14:
	.size	OESM_vidDuringOESM_ST4OnOESM_EV1, .-OESM_vidDuringOESM_ST4OnOESM_EV1
.section .text.OESM_vidEntryOESM_ST0,"ax",@progbits
	.align 1
	.global	OESM_vidEntryOESM_ST0
	.type	OESM_vidEntryOESM_ST0, @function
OESM_vidEntryOESM_ST0:
.LFB0:
	.loc 1 48 0
	.loc 1 49 0
	movh	%d15, hi:OESM_vidFromOESM_ST0OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST0OnOESM_EV0
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 50 0
	movh	%d15, hi:OESM_vidNoAction
	addi	%d15, %d15, lo:OESM_vidNoAction
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 51 0
	movh	%d15, hi:OESM_vidDuringOESM_ST0OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST0OnOESM_EV0
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 52 0
	movh	%d15, hi:OESM_vidDuringOESM_ST0OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST0OnOESM_EV1
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 53 0
	j	OESM_vidInit
.LVL10:
.LFE0:
	.size	OESM_vidEntryOESM_ST0, .-OESM_vidEntryOESM_ST0
.section .text.OESM_vidEntryOESM_ST1,"ax",@progbits
	.align 1
	.global	OESM_vidEntryOESM_ST1
	.type	OESM_vidEntryOESM_ST1, @function
OESM_vidEntryOESM_ST1:
.LFB1:
	.loc 1 58 0
	.loc 1 59 0
	movh	%d15, hi:OESM_vidFromOESM_ST1OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST1OnOESM_EV0
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 60 0
	movh	%d15, hi:OESM_vidFromOESM_ST1OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST1OnOESM_EV1
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 61 0
	movh	%d15, hi:OESM_vidDuringOESM_ST1OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST1OnOESM_EV0
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 62 0
	movh	%d15, hi:OESM_vidDuringOESM_ST1OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST1OnOESM_EV1
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr, %d15
	ret
.LFE1:
	.size	OESM_vidEntryOESM_ST1, .-OESM_vidEntryOESM_ST1
.section .text.OESM_vidEntryOESM_ST2,"ax",@progbits
	.align 1
	.global	OESM_vidEntryOESM_ST2
	.type	OESM_vidEntryOESM_ST2, @function
OESM_vidEntryOESM_ST2:
.LFB2:
	.loc 1 67 0
	.loc 1 68 0
	movh	%d15, hi:OESM_vidFromOESM_ST2OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST2OnOESM_EV0
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 69 0
	movh	%d15, hi:OESM_vidFromOESM_ST2OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST2OnOESM_EV1
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 70 0
	movh	%d15, hi:OESM_vidDuringOESM_ST2OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST2OnOESM_EV0
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 71 0
	movh	%d15, hi:OESM_vidDuringOESM_ST2OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST2OnOESM_EV1
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr, %d15
	ret
.LFE2:
	.size	OESM_vidEntryOESM_ST2, .-OESM_vidEntryOESM_ST2
.section .text.OESM_vidEntryOESM_ST3,"ax",@progbits
	.align 1
	.global	OESM_vidEntryOESM_ST3
	.type	OESM_vidEntryOESM_ST3, @function
OESM_vidEntryOESM_ST3:
.LFB3:
	.loc 1 76 0
	.loc 1 77 0
	movh	%d15, hi:OESM_vidFromOESM_ST3OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST3OnOESM_EV0
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 78 0
	movh	%d15, hi:OESM_vidFromOESM_ST3OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST3OnOESM_EV1
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 79 0
	movh	%d15, hi:OESM_vidDuringOESM_ST3OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST3OnOESM_EV0
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 80 0
	movh	%d15, hi:OESM_vidDuringOESM_ST3OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST3OnOESM_EV1
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 81 0
	movh.a	%a15, hi:OESM_u16PowerLatchTempoC
	ld.h	%d15, [%a15] lo:OESM_u16PowerLatchTempoC
	movh.a	%a15, hi:OESM_u16PowerLatchTempo
	st.h	[%a15] lo:OESM_u16PowerLatchTempo, %d15
	ret
.LFE3:
	.size	OESM_vidEntryOESM_ST3, .-OESM_vidEntryOESM_ST3
.section .text.OESM_vidEntryOESM_ST4,"ax",@progbits
	.align 1
	.global	OESM_vidEntryOESM_ST4
	.type	OESM_vidEntryOESM_ST4, @function
OESM_vidEntryOESM_ST4:
.LFB4:
	.loc 1 86 0
	.loc 1 87 0
	movh	%d15, hi:OESM_vidNoAction
	addi	%d15, %d15, lo:OESM_vidNoAction
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 88 0
	movh	%d15, hi:OESM_vidFromOESM_ST4OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidFromOESM_ST4OnOESM_EV1
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV1Ptr, %d15
	.loc 1 89 0
	movh	%d15, hi:OESM_vidDuringOESM_ST4OnOESM_EV0
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST4OnOESM_EV0
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr, %d15
	.loc 1 90 0
	movh	%d15, hi:OESM_vidDuringOESM_ST4OnOESM_EV1
	addi	%d15, %d15, lo:OESM_vidDuringOESM_ST4OnOESM_EV1
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	st.w	[%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr, %d15
	ret
.LFE4:
	.size	OESM_vidEntryOESM_ST4, .-OESM_vidEntryOESM_ST4
.section .text.OESM_vidOnOESM_EV0,"ax",@progbits
	.align 1
	.global	OESM_vidOnOESM_EV0
	.type	OESM_vidOnOESM_EV0, @function
OESM_vidOnOESM_EV0:
.LFB15:
	.loc 1 166 0
	.loc 1 167 0
	movh.a	%a15, hi:OESM_bfOutEventCarrier
	mov	%d15, 0
	st.h	[%a15] lo:OESM_bfOutEventCarrier, %d15
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	ld.a	%a15, [%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV0Ptr
	calli	%a15
.LVL11:
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	ld.a	%a15, [%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV0Ptr
	ji	%a15
.LVL12:
.LFE15:
	.size	OESM_vidOnOESM_EV0, .-OESM_vidOnOESM_EV0
.section .text.OESM_vidOnOESM_EV1,"ax",@progbits
	.align 1
	.global	OESM_vidOnOESM_EV1
	.type	OESM_vidOnOESM_EV1, @function
OESM_vidOnOESM_EV1:
.LFB16:
	.loc 1 170 0
	.loc 1 171 0
	movh.a	%a15, hi:OESM_bfOutEventCarrier
	mov	%d15, 0
	st.h	[%a15] lo:OESM_bfOutEventCarrier, %d15
	movh.a	%a15, hi:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	ld.a	%a15, [%a15] lo:OESM_pfDuringOESM_STF0OnOESM_EV1Ptr
	calli	%a15
.LVL13:
	movh.a	%a15, hi:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	ld.a	%a15, [%a15] lo:OESM_pfTransOESM_STF0OnOESM_EV1Ptr
	ji	%a15
.LVL14:
.LFE16:
	.size	OESM_vidOnOESM_EV1, .-OESM_vidOnOESM_EV1
.section .text.OESM_vidExecOutEvent,"ax",@progbits
	.align 1
	.global	OESM_vidExecOutEvent
	.type	OESM_vidExecOutEvent, @function
OESM_vidExecOutEvent:
.LFB17:
	.loc 1 178 0
.LVL15:
	.loc 1 179 0
	jz.t	%d4, 0, .L24
	.loc 1 181 0
	mov	%d15, 1
	movh.a	%a15, hi:OESM_StpIState
	st.h	[%a15] lo:OESM_StpIState, %d15
.L24:
	.loc 1 183 0
	jz.t	%d4, 1, .L25
	.loc 1 185 0
	mov	%d15, 1
	movh.a	%a15, hi:OESM_StpIINfState
	st.h	[%a15] lo:OESM_StpIINfState, %d15
	movh.a	%a15, hi:OESM_StpIIFtState
	st.h	[%a15] lo:OESM_StpIIFtState, %d15
	movh.a	%a15, hi:OESM_PwrLFtState
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
.L25:
	.loc 1 187 0
	jz.t	%d4, 2, .L26
	.loc 1 189 0
	mov	%d15, 1
	movh.a	%a15, hi:OESM_OpNfState
	st.h	[%a15] lo:OESM_OpNfState, %d15
	movh.a	%a15, hi:OESM_OpFtState
	st.h	[%a15] lo:OESM_OpFtState, %d15
.L26:
	.loc 1 191 0
	jz.t	%d4, 3, .L27
	.loc 1 193 0
	mov	%d15, 1
	movh.a	%a15, hi:OESM_PwrLNfState
	st.h	[%a15] lo:OESM_PwrLNfState, %d15
	movh.a	%a15, hi:OESM_PwrLFtState
	st.h	[%a15] lo:OESM_PwrLFtState, %d15
.L27:
	.loc 1 195 0
	jz.t	%d4, 4, .L23
	.loc 1 197 0
	mov	%d15, 16384
	movh.a	%a15, hi:OESM_PwrLNfState
	st.h	[%a15] lo:OESM_PwrLNfState, %d15
.L23:
	ret
.LFE17:
	.size	OESM_vidExecOutEvent, .-OESM_vidExecOutEvent
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
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
	.file 5 "bswcdd\\ESM\\OESM\\oesm_l.h"
	.file 6 "bswcdd\\ESM\\OESM\\oesm_dat.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8e0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\OESM\\OESM_STA.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1e4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"OSTFSRV_tpfFunctionPointerType"
	.byte	0x3
	.byte	0x20
	.uaword	0x296
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29c
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST0OnOESM_EV0"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2df
	.uleb128 0x7
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x879
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST0OnOESM_EV1"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x320
	.uleb128 0x7
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x879
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST1OnOESM_EV0"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x361
	.uleb128 0x7
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x88f
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST1OnOESM_EV1"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a2
	.uleb128 0x7
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x88f
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST2OnOESM_EV0"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e3
	.uleb128 0x7
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x8a6
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST2OnOESM_EV1"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x424
	.uleb128 0x7
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x8a6
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST3OnOESM_EV0"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x464
	.uleb128 0x8
	.uaword	.LVL6
	.uaword	0x8ba
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST3OnOESM_EV1"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4a5
	.uleb128 0x7
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x8ba
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST4OnOESM_EV0"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4e6
	.uleb128 0x7
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x8ba
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidDuringOESM_ST4OnOESM_EV1"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x527
	.uleb128 0x7
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x8ba
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidEntryOESM_ST0"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x55d
	.uleb128 0x7
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x8d0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"OESM_vidEntryOESM_ST1"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"OESM_vidEntryOESM_ST2"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"OESM_vidEntryOESM_ST3"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"OESM_vidEntryOESM_ST4"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidOnOESM_EV0"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x633
	.uleb128 0xa
	.uaword	.LVL11
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xb
	.uaword	.LVL12
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidOnOESM_EV1"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x66d
	.uleb128 0xa
	.uaword	.LVL13
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xb
	.uaword	.LVL14
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"OESM_vidExecOutEvent"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6ab
	.uleb128 0xc
	.string	"bfCarrier"
	.byte	0x1
	.byte	0xb1
	.uaword	0x1d6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.string	"OESM_OpFtState"
	.byte	0x4
	.byte	0x5e
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_OpNfState"
	.byte	0x4
	.byte	0x5f
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_PwrLFtState"
	.byte	0x4
	.byte	0x60
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_PwrLNfState"
	.byte	0x4
	.byte	0x61
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_StpIIFtState"
	.byte	0x4
	.byte	0x64
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_StpIINfState"
	.byte	0x4
	.byte	0x65
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_StpIState"
	.byte	0x4
	.byte	0x66
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_u16PowerLatchTempoC"
	.byte	0x5
	.byte	0x36
	.uaword	0x77f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1d6
	.uleb128 0xd
	.string	"OESM_u16PowerLatchTempo"
	.byte	0x5
	.byte	0x41
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_bfOutEventCarrier"
	.byte	0x6
	.byte	0xf3
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_pfTransOESM_STF0OnOESM_EV0Ptr"
	.byte	0x6
	.byte	0xfc
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"OESM_pfTransOESM_STF0OnOESM_EV1Ptr"
	.byte	0x6
	.byte	0xfe
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"OESM_pfDuringOESM_STF0OnOESM_EV0Ptr"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"OESM_pfDuringOESM_STF0OnOESM_EV1Ptr"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"OESM_vidStfStpI"
	.byte	0x4
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"OESM_vidStfStpII"
	.byte	0x4
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"OESM_vidStfOp"
	.byte	0x4
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"OESM_vidStfPwrL"
	.byte	0x4
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"OESM_vidInit"
	.byte	0x4
	.byte	0x73
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x10
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0xa4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
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
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LFB14
	.uaword	.LFE14
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
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	OESM_PwrLNfState,STT_OBJECT,2
	.extern	OESM_OpFtState,STT_OBJECT,2
	.extern	OESM_OpNfState,STT_OBJECT,2
	.extern	OESM_PwrLFtState,STT_OBJECT,2
	.extern	OESM_StpIIFtState,STT_OBJECT,2
	.extern	OESM_StpIINfState,STT_OBJECT,2
	.extern	OESM_StpIState,STT_OBJECT,2
	.extern	OESM_bfOutEventCarrier,STT_OBJECT,2
	.extern	OESM_vidFromOESM_ST4OnOESM_EV1,STT_FUNC,0
	.extern	OESM_u16PowerLatchTempoC,STT_OBJECT,2
	.extern	OESM_vidFromOESM_ST3OnOESM_EV1,STT_FUNC,0
	.extern	OESM_vidFromOESM_ST3OnOESM_EV0,STT_FUNC,0
	.extern	OESM_vidFromOESM_ST2OnOESM_EV1,STT_FUNC,0
	.extern	OESM_vidFromOESM_ST2OnOESM_EV0,STT_FUNC,0
	.extern	OESM_vidFromOESM_ST1OnOESM_EV1,STT_FUNC,0
	.extern	OESM_vidFromOESM_ST1OnOESM_EV0,STT_FUNC,0
	.extern	OESM_vidInit,STT_FUNC,0
	.extern	OESM_pfDuringOESM_STF0OnOESM_EV1Ptr,STT_OBJECT,4
	.extern	OESM_pfDuringOESM_STF0OnOESM_EV0Ptr,STT_OBJECT,4
	.extern	OESM_pfTransOESM_STF0OnOESM_EV1Ptr,STT_OBJECT,4
	.extern	OESM_vidNoAction,STT_FUNC,0
	.extern	OESM_pfTransOESM_STF0OnOESM_EV0Ptr,STT_OBJECT,4
	.extern	OESM_vidFromOESM_ST0OnOESM_EV0,STT_FUNC,0
	.extern	OESM_vidStfPwrL,STT_FUNC,0
	.extern	OESM_u16PowerLatchTempo,STT_OBJECT,2
	.extern	OESM_vidStfOp,STT_FUNC,0
	.extern	OESM_vidStfStpII,STT_FUNC,0
	.extern	OESM_vidStfStpI,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
